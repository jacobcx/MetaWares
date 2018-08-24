#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Ea.c"
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
# static FUNC(void,EA_CODE) EaSetCurrentBlock
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\Ea\\ssc\\make\\..\\src\\Ea.c"
        .d2line         1085,27
#$$ld
.L721:

#$$bf	EaSetCurrentBlock,interprocedural

# Regs written: r0,r1,r3,r4,r5,r6,r11,r31,lr
	.d2_cfa_start __cie
EaSetCurrentBlock:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r11,r3		# cblock=r11 cblock=r3
	mr		r11,r4		# lgth=r11 lgth=r4
	mr		r5,r5		# dtr=r5 dtr=r5
	mr		r11,r6		# wa=r11 wa=r6
.Llo3:
	mr		r6,r7		# rn=r6 rn=r7
.Llo4:
	mr		r6,r8		# vdity=r6 vdity=r8
	mr		r6,r9		# btw=r6 btw=r9
	mr		r6,r10		# sts=r6 sts=r10
	lbz		r6,43(r1)		# DevIdx=r6
	.d2prologue_end
# (
#    VAR(uint16,AUTOMATIC) cblock,
#    VAR(uint16,AUTOMATIC) lgth,
#    P2VAR(uint8,AUTOMATIC,EA_APPL_DATA) dtr,
#    VAR(uint32,AUTOMATIC) wa,
#    VAR(uint8,AUTOMATIC) rn,
#    VAR(uint8,AUTOMATIC) vdity,
#    VAR(uint8,AUTOMATIC) btw,
#    VAR(uint8,AUTOMATIC) sts,
#    VAR(uint8,AUTOMATIC) DevIdx
# )
# {
#    current_block.block_nb = cblock;
	.d2line		1098
.Llo5:
	lis		r31,current_block@ha
	e_add16i		r31,r31,current_block@l
	sth		r3,0(r31)		# cblock=r3
#    current_block.read_length = lgth;
	.d2line		1099
	lis		r3,(current_block+2)@ha		# cblock=r3
	sth		r4,(current_block+2)@l(r3)		# cblock=r3 lgth=r4
#    current_block.dataptr = dtr;
	.d2line		1100
	lis		r3,(current_block+4)@ha		# cblock=r3
	stw		r5,(current_block+4)@l(r3)		# cblock=r3 dtr=r5
#    current_block.write_amounts = wa;
	.d2line		1101
	lis		r3,(current_block+8)@ha		# cblock=r3
	stw		r11,(current_block+8)@l(r3)		# cblock=r3 wa=r11
#    current_block.retry_number = rn;
	.d2line		1102
	lis		r3,(current_block+12)@ha		# cblock=r3
	stb		r7,(current_block+12)@l(r3)		# cblock=r3 rn=r7
#    current_block.status = sts;
	.d2line		1103
	lis		r3,(current_block+15)@ha		# cblock=r3
	stb		r10,(current_block+15)@l(r3)		# cblock=r3 sts=r10
#    current_block.validity = vdity;
	.d2line		1104
	lis		r3,(current_block+13)@ha		# cblock=r3
	stb		r8,(current_block+13)@l(r3)		# cblock=r3 vdity=r8
#    current_block.block_to_write = btw;
	.d2line		1105
	lis		r3,(current_block+14)@ha		# cblock=r3
	stb		r9,(current_block+14)@l(r3)		# cblock=r3 btw=r9
#    current_block.block_found = FALSE;
	.d2line		1106
	diab.li		r4,0		# lgth=r4
	lis		r3,(current_block+16)@ha		# cblock=r3
	stb		r4,(current_block+16)@l(r3)		# cblock=r3 lgth=r4
#    current_block.block_to_write_found = NO_BLOCK;
	.d2line		1107
	lis		r3,(current_block+17)@ha		# cblock=r3
	stb		r4,(current_block+17)@l(r3)		# cblock=r3 lgth=r4
#    current_block.device_index = DevIdx;
	.d2line		1108
	lis		r3,(current_block+18)@ha		# cblock=r3
	stb		r6,(current_block+18)@l(r3)		# cblock=r3 DevIdx=r6
# }
	.d2line		1109
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo2:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L722:
	.type		EaSetCurrentBlock,@function
	.size		EaSetCurrentBlock,.-EaSetCurrentBlock
# Number of nodes = 75

# Allocations for EaSetCurrentBlock
#	?a4		cblock
#	?a5		lgth
#	?a6		dtr
#	?a7		wa
#	?a8		rn
#	?a9		vdity
#	?a10		btw
#	?a11		sts
#	?a12		DevIdx
# static FUNC(uint16, EA_CODE) EaSingleBlock_Length(void)
	.align		1
	.section	.text_vle
        .d2line         1116,30
#$$ld
.L743:

#$$bf	EaSingleBlock_Length,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.d2_cfa_start __cie
EaSingleBlock_Length:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    uint16 DataIndex_Written = EA_VIRTUAL_PAGE_SIZE - LIGHT_ADMIN_DATALENGTH;
	.d2line		1118
	diab.li		r3,63		# DataIndex_Written=r3
#    uint16 DataIndex_ToWrite = EA_BlockDescriptor[Ea_MgmtBlockIndex].EA_BLOCK_SIZE - DataIndex_Written;
	.d2line		1119
	lis		r4,(EA_BlockDescriptor+2)@ha
	e_add16i		r4,r4,(EA_BlockDescriptor+2)@l
	lis		r3,Ea_MgmtBlockIndex@ha		# DataIndex_Written=r3
.Llo6:
	lhz		r3,Ea_MgmtBlockIndex@l(r3)		# DataIndex_Written=r3 DataIndex_Written=r3
	e_mulli		r3,r3,10		# DataIndex_Written=r3 DataIndex_Written=r3
	lhzx		r3,r4,r3		# DataIndex_Written=r3
	diab.li		r4,65473
	se_add		r3,r4		# DataIndex_Written=r3 DataIndex_Written=r3
.Llo7:
	mr		r3,r3		# DataIndex_ToWrite=r3 DataIndex_ToWrite=r3
#    uint16 DataIndex_CanWrite = (uint16)((uint16)(DataIndex_ToWrite / EA_VIRTUAL_PAGE_SIZE) * EA_VIRTUAL_PAGE_SIZE);
	.d2line		1120
	rlwinm		r3,r3,26,22,31		# DataIndex_ToWrite=r3 DataIndex_ToWrite=r3
	se_slwi		r3,6		# DataIndex_ToWrite=r3 DataIndex_ToWrite=r3
.Llo8:
	mr		r3,r3		# DataIndex_CanWrite=r3 DataIndex_CanWrite=r3
#    return DataIndex_CanWrite;
	.d2line		1121
	rlwinm		r3,r3,0,16,31		# DataIndex_CanWrite=r3 DataIndex_CanWrite=r3
# }
	.d2line		1122
	.d2epilogue_begin
.Llo9:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L744:
	.type		EaSingleBlock_Length,@function
	.size		EaSingleBlock_Length,.-EaSingleBlock_Length
# Number of nodes = 28

# Allocations for EaSingleBlock_Length
#	?a4		DataIndex_Written
#	?a5		DataIndex_ToWrite
#	?a6		DataIndex_CanWrite
# static FUNC(uint32, EA_CODE) Eeprom_Address(void)
	.align		1
	.section	.text_vle
        .d2line         1233,30
#$$ld
.L754:

#$$bf	Eeprom_Address,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.d2_cfa_start __cie
Eeprom_Address:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     return (((uint32)EA_BlockDescriptor[Ea_MgmtBlockIndex].EA_PHYSICAL_BLOCK_NUMBER - (uint32)ONE_BLOCK_NUMBER) * (uint32)EA_VIRTUAL_PAGE_SIZE);
	.d2line		1235
	lis		r4,(EA_BlockDescriptor+6)@ha
	e_add16i		r4,r4,(EA_BlockDescriptor+6)@l
	lis		r3,Ea_MgmtBlockIndex@ha
	lhz		r3,Ea_MgmtBlockIndex@l(r3)
	e_mulli		r3,r3,10
	lhzx		r3,r4,r3
	rlwinm		r3,r3,6,10,25
	diab.addi		r3,r3,-64
# }
	.d2line		1236
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L755:
	.type		Eeprom_Address,@function
	.size		Eeprom_Address,.-Eeprom_Address
# Number of nodes = 16

# Allocations for Eeprom_Address
# static FUNC(Std_ReturnType, EA_CODE) CheckBlockNumber
	.align		1
	.section	.text_vle
        .d2line         1238,38
#$$ld
.L759:

#$$bf	CheckBlockNumber,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.d2_cfa_start __cie
CheckBlockNumber:
.Llo10:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Block_number=r3 Block_number=r3
	mr		r4,r4		# Block_index=r4 Block_index=r4
	.d2prologue_end
# (
#    VAR(uint16, AUTOMATIC) Block_number,
#    P2VAR(uint16, AUTOMATIC, EA_APPL_DATA) Block_index
# )
# {
#    Std_ReturnType result = E_NOT_OK;
	.d2line		1244
	diab.li		r5,1		# result=r5
#    VAR(uint16, AUTOMATIC) index;
# 
#    for(index = ZERO_INDEX; index < EA_TOTAL_BLOCK_NUMBERS; index++)
	.d2line		1247
.Llo12:
	diab.li		r6,0		# index=r6
.L185:
.Llo14:
	rlwinm		r0,r6,0,16,31		# index=r6
	se_cmpi		r0,3
	bc		0,0,.L189	# ge
#    {
#       if(EA_BlockDescriptor[index].EA_BLOCK_NUMBER == Block_number)
	.d2line		1249
	lis		r7,EA_BlockDescriptor@ha
	e_add16i		r7,r7,EA_BlockDescriptor@l
	rlwinm		r0,r6,0,16,31		# index=r6
	e_mulli		r0,r0,10
	lhzx		r0,r7,r0
	rlwinm		r7,r3,0,16,31		# Block_number=r3
	se_cmp		r0,r7
	bc		0,2,.L188	# ne
#       {
#          *Block_index = index;
	.d2line		1251
	sth		r6,0(r4)		# Block_index=r4 index=r6
#          result = E_OK;
	.d2line		1252
	diab.li		r5,0		# result=r5
	b		.L189
.L188:
#          break;
#       }
#    }
	.d2line		1255
	diab.addi		r0,r6,1		# index=r6
	se_addi		r6,1		# index=r6 index=r6
	b		.L185
.L189:
#    return (result);
	.d2line		1256
.Llo11:
	rlwinm		r3,r5,0,24,31		# Block_number=r3 result=r5
# }
	.d2line		1257
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo13:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L760:
	.type		CheckBlockNumber,@function
	.size		CheckBlockNumber,.-CheckBlockNumber
# Number of nodes = 35

# Allocations for CheckBlockNumber
#	?a4		Block_number
#	?a5		Block_index
#	?a6		result
#	?a7		index
# static FUNC(Std_ReturnType, EA_CODE) CheckStsBusyInternalMgmtOp
	.align		1
	.section	.text_vle
        .d2line         1259,38
#$$ld
.L772:

#$$bf	CheckStsBusyInternalMgmtOp,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.d2_cfa_start __cie
CheckStsBusyInternalMgmtOp:
.Llo15:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Stscheck=r0 Stscheck=r3
	.d2prologue_end
# (
#    VAR(MemIf_StatusType,AUTOMATIC) Stscheck,
#    VAR(uint16,AUTOMATIC) Blknum
# )
# {
#    Std_ReturnType result_busy_IntMOP = E_OK;
	.d2line		1265
	diab.li		r3,0		# result_busy_IntMOP=r3
# 
#    if(sub_state == EA_S_OP_IN_PROGRESS)
	.d2line		1267
.Llo16:
	lis		r4,sub_state@ha
	lwz		r4,sub_state@l(r4)
	se_cmpi		r4,7
	bc		0,2,.L194	# ne
#    {
#       if(((Stscheck != MEMIF_IDLE) && (Stscheck != MEMIF_UNINIT))
	.d2line		1269
.Llo17:
	se_cmpi		r0,1		# Stscheck=r0
	bc		1,2,.L194	# eq
	se_cmpi		r0,0		# Stscheck=r0
# #if (EA_DEV_ERROR_DETECT==STD_ON)
#         && (prev_blk_no == Blknum)
# #endif
#       ){
#          result_busy_IntMOP = E_NOT_OK;
	.d2line		1274
	diab.li		r0,1		# Stscheck=r0
	isel		r3,r3,r0,2		# result_busy_IntMOP=r3 result_busy_IntMOP=r3 Stscheck=r0
.L194:
#       }
#    }
# 
#    return (result_busy_IntMOP);
	.d2line		1278
.Llo18:
	rlwinm		r3,r3,0,24,31		# result_busy_IntMOP=r3 result_busy_IntMOP=r3
# }
	.d2line		1279
	.d2epilogue_begin
.Llo19:
	lwz		r0,20(r1)		# Stscheck=r0
	mtspr		lr,r0		# Stscheck=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L773:
	.type		CheckStsBusyInternalMgmtOp,@function
	.size		CheckStsBusyInternalMgmtOp,.-CheckStsBusyInternalMgmtOp
# Number of nodes = 17

# Allocations for CheckStsBusyInternalMgmtOp
#	?a4		Stscheck
#	not allocated	Blknum
#	?a5		result_busy_IntMOP
# static FUNC(Std_ReturnType, EA_CODE) CheckBlockOffset
	.align		1
	.section	.text_vle
        .d2line         1280,38
#$$ld
.L782:

#$$bf	CheckBlockOffset,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.d2_cfa_start __cie
CheckBlockOffset:
.Llo20:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# BlockNum=r3 BlockNum=r3
	mr		r7,r4		# offset=r7 offset=r4
	.d2prologue_end
# (
#    VAR(uint16,AUTOMATIC)   BlockNum,
#    VAR(uint16,AUTOMATIC)   offset
# )
# {
#    Std_ReturnType result = E_NOT_OK;
	.d2line		1286
	diab.li		r4,1		# result=r4
#    VAR(uint16, AUTOMATIC) block_index;
# 
#    for(block_index = ZERO_INDEX; block_index < EA_TOTAL_BLOCK_NUMBERS; block_index++)
	.d2line		1289
.Llo22:
	diab.li		r5,0		# block_index=r5
.L198:
.Llo23:
	rlwinm		r0,r5,0,16,31		# block_index=r5
	se_cmpi		r0,3
	bc		0,0,.L203	# ge
#    {
#       if(EA_BlockDescriptor[block_index].EA_BLOCK_NUMBER == BlockNum)
	.d2line		1291
	lis		r6,EA_BlockDescriptor@ha
	e_add16i		r6,r6,EA_BlockDescriptor@l
	rlwinm		r0,r5,0,16,31		# block_index=r5
	e_mulli		r0,r0,10
	lhzx		r0,r6,r0
	rlwinm		r6,r3,0,16,31		# BlockNum=r3
	se_cmp		r0,r6
	bc		0,2,.L201	# ne
#       {
#          if(EA_BlockDescriptor[block_index].EA_BLOCK_SIZE > offset)
	.d2line		1293
	lis		r6,(EA_BlockDescriptor+2)@ha
	e_add16i		r6,r6,(EA_BlockDescriptor+2)@l
	rlwinm		r0,r5,0,16,31		# block_index=r5
	e_mulli		r0,r0,10
	lhzx		r0,r6,r0
	rlwinm		r6,r7,0,16,31		# offset=r7
	se_cmp		r0,r6
	bc		0,1,.L201	# le
#          {
#             result = E_OK;
	.d2line		1295
	diab.li		r4,0		# result=r4
	b		.L203
.L201:
#             break;
#          }
#       }
#    }
	.d2line		1299
	diab.addi		r0,r5,1		# block_index=r5
	se_addi		r5,1		# block_index=r5 block_index=r5
	b		.L198
.L203:
#    return (result);
	.d2line		1300
.Llo21:
	rlwinm		r3,r4,0,24,31		# BlockNum=r3 result=r4
# }
	.d2line		1301
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo24:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L783:
	.type		CheckBlockOffset,@function
	.size		CheckBlockOffset,.-CheckBlockOffset
# Number of nodes = 45

# Allocations for CheckBlockOffset
#	?a4		BlockNum
#	?a5		offset
#	?a6		result
#	?a7		block_index
# static FUNC(Std_ReturnType, EA_CODE) CheckBlockLength
	.align		1
	.section	.text_vle
        .d2line         1303,38
#$$ld
.L793:

#$$bf	CheckBlockLength,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,cr0,lr
	.d2_cfa_start __cie
CheckBlockLength:
.Llo25:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# BlkNo=r3 BlkNo=r3
	mr		r4,r4		# BlkOff=r4 BlkOff=r4
	mr		r0,r5		# BlkLen=r0 BlkLen=r5
	.d2prologue_end
# (
#    VAR(uint16, AUTOMATIC) BlkNo,
#    VAR(uint16, AUTOMATIC) BlkOff,
#    VAR(uint16,AUTOMATIC)  BlkLen
# )
# {
#    Std_ReturnType result = E_NOT_OK;
	.d2line		1310
	diab.li		r5,1		# result=r5
#    VAR(uint16, AUTOMATIC) block_index;
# 
#    for(block_index = ZERO_INDEX; block_index < EA_TOTAL_BLOCK_NUMBERS; block_index++)
	.d2line		1313
.Llo27:
	diab.li		r6,0		# block_index=r6
.L208:
.Llo28:
	rlwinm		r31,r6,0,16,31		# block_index=r6
	se_cmpi		r31,3
	bc		0,0,.L213	# ge
#    {
#       if(EA_BlockDescriptor[block_index].EA_BLOCK_NUMBER == BlkNo)
	.d2line		1315
	lis		r7,EA_BlockDescriptor@ha
	e_add16i		r7,r7,EA_BlockDescriptor@l
	rlwinm		r31,r6,0,16,31		# block_index=r6
	e_mulli		r31,r31,10
	lhzx		r7,r7,r31
	rlwinm		r31,r3,0,16,31		# BlkNo=r3
	se_cmp		r7,r31
	bc		0,2,.L211	# ne
#       {
#          if((BlkLen + BlkOff) <= EA_BlockDescriptor[block_index].EA_BLOCK_SIZE)
	.d2line		1317
	rlwinm		r7,r0,0,16,31		# BlkLen=r0
	rlwinm		r30,r4,0,16,31		# BlkOff=r4
	se_add		r30,r7
	lis		r7,(EA_BlockDescriptor+2)@ha
	e_add16i		r7,r7,(EA_BlockDescriptor+2)@l
	rlwinm		r31,r6,0,16,31		# block_index=r6
	e_mulli		r31,r31,10
	lhzx		r7,r7,r31
	se_cmp		r30,r7
	bc		1,1,.L211	# gt
#          {
#             result = E_OK;
	.d2line		1319
	diab.li		r5,0		# result=r5
	b		.L213
.L211:
#             break;
#          }
#       }
#    }
	.d2line		1323
	diab.addi		r31,r6,1		# block_index=r6
	se_addi		r6,1		# block_index=r6 block_index=r6
	b		.L208
.L213:
#    return (result);
	.d2line		1324
.Llo26:
	rlwinm		r3,r5,0,24,31		# BlkNo=r3 result=r5
# }
	.d2line		1325
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# BlkLen=r0
	mtspr		lr,r0		# BlkLen=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo29:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L794:
	.type		CheckBlockLength,@function
	.size		CheckBlockLength,.-CheckBlockLength
# Number of nodes = 48

# Allocations for CheckBlockLength
#	?a4		BlkNo
#	?a5		BlkOff
#	?a6		BlkLen
#	?a7		result
#	?a8		block_index
# static FUNC(void, EA_CODE) Ea_R_Read_Done(void)
	.align		1
	.section	.text_vle
        .d2line         1682,28
#$$ld
.L805:

#$$bf	Ea_R_Read_Done,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Ea_R_Read_Done:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    SetAdminValidity(EA_VALID);
	.d2line		1684
	diab.li		r5,50
	lis		r3,EA_ManagementBlock@ha
	e_add16i		r3,r3,EA_ManagementBlock@l
	lis		r4,Ea_MgmtBlockIndex@ha
	lhz		r0,Ea_MgmtBlockIndex@l(r4)
	rlwinm		r0,r0,1,15,30
	stbx		r5,r3,r0
#    SetAdminValidityCounter(GetValidityCounter(Ea_AdminData));
	.d2line		1685
	lis		r3,Ea_AdminData@ha
	lbz		r0,Ea_AdminData@l(r3)
	lis		r3,(EA_ManagementBlock+1)@ha
	e_add16i		r3,r3,(EA_ManagementBlock+1)@l
	lhz		r4,Ea_MgmtBlockIndex@l(r4)
	rlwinm		r4,r4,1,15,30
	stbx		r0,r3,r4
# #if (STD_OFF == EA_OPT_SINGLE_BLOCK)
#    if (ONE_BLOCK_NUMBER != EaBlockAmounts())
#    {
#       SetAdminBlockStatus(EA_CONSISTENT);
#       /* after succesful read processing I fill up management data */
#       SetAdminBlockToWrite(GetBlockToWrite());
#       SetAdminWriteNumbers(GetWriteAmounts());
#    }
# #endif
#    SetEaJobResult(MEMIF_JOB_OK);
	.d2line		1695
	diab.li		r0,0
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)
#    DbgSetEaJobResult(MEMIF_JOB_OK);
	.d2line		1696
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)
#    EaSetMainState(EA_IDLE);
	.d2line		1697
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)
#    EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		1698
	diab.li		r0,1
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)
#    Call_JobEndCallback();
	.d2line		1699
	lis		r3,(EA_General+4)@ha
	lwz		r0,(EA_General+4)@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L316	# eq
	lis		r3,(EA_General+4)@ha
	lwz		r0,(EA_General+4)@l(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L316:
# }
	.d2line		1700
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
.L806:
	.type		Ea_R_Read_Done,@function
	.size		Ea_R_Read_Done,.-Ea_R_Read_Done
# Number of nodes = 53

# Allocations for Ea_R_Read_Done
# static FUNC(void, EA_CODE) Ea_R_TotalDataLength(void)
	.align		1
	.section	.text_vle
        .d2line         1492,28
#$$ld
.L810:

#$$bf	Ea_R_TotalDataLength,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Ea_R_TotalDataLength:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /* function to read the block length for valid blocks after management data is loaded */
#    uint16 AdmindataLength, counter;
#    boolean SingleBlockFlag = TRUE;
	.d2line		1496
	diab.li		r7,1		# SingleBlockFlag=r7
# 
#    EaSetMemIfStatus(MEMIF_BUSY);
	.d2line		1498
.Llo37:
	diab.li		r0,2
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)
#    Ea_AdminDataReadPending = FALSE;
	.d2line		1499
	diab.li		r0,0
	lis		r3,Ea_AdminDataReadPending@ha
	e_add16i		r3,r3,Ea_AdminDataReadPending@l
	stb		r0,0(r3)
# 
# #if ( STD_OFF == EA_OPT_SINGLE_BLOCK)
#    if (ONE_BLOCK_NUMBER != EaBlockAmounts())
#    {
#       AdmindataLength = ADMIN_DATALENGTH;
#       SingleBlockFlag = FALSE;
#    }
#    else
#    {
#       AdmindataLength = LIGHT_ADMIN_DATALENGTH;
#    }
# #else
#    AdmindataLength = LIGHT_ADMIN_DATALENGTH;
	.d2line		1512
	diab.li		r5,1
# #endif
# 
#    /* If Block is of type single block then Read shall be completed in 1 cycle */
#    if(CheckBlockSizeIsOneCycle && (TRUE == SingleBlockFlag))
	.d2line		1516
.Llo30:
	lis		r3,(EA_BlockDescriptor+2)@ha
	e_add16i		r3,r3,(EA_BlockDescriptor+2)@l
	lis		r4,Ea_MgmtBlockIndex@ha
	lhz		r0,Ea_MgmtBlockIndex@l(r4)
	e_mulli		r0,r0,10
	lhzx		r3,r3,r0
	se_addi		r3,2
	rlwinm		r3,r3,0,16,31
	cmpi		0,0,r3,64
	bc		1,1,.L283	# gt
#    {
#       for (counter = Ea_CurrentReadBlockOffset; counter <= current_block.read_length; counter++)
	.d2line		1518
	lis		r3,Ea_CurrentReadBlockOffset@ha
	lhz		r3,Ea_CurrentReadBlockOffset@l(r3)
	mr		r3,r3		# counter=r3 counter=r3
.L284:
.Llo38:
	rlwinm		r0,r3,0,16,31		# counter=r3
	lis		r4,(current_block+2)@ha
	lhz		r4,(current_block+2)@l(r4)
	se_cmp		r0,r4
	bc		1,1,.L286	# gt
#       {
#          current_block.dataptr[counter - Ea_CurrentReadBlockOffset] = Storage_Buffer[counter + AdmindataLength];
	.d2line		1520
	lis		r4,Storage_Buffer@ha
	e_add16i		r4,r4,Storage_Buffer@l
	rlwinm		r0,r3,0,16,31		# counter=r3
	se_add		r4,r0
	rlwinm		r7,r5,0,16,31		# SingleBlockFlag=r7 AdmindataLength=r5
.Llo39:
	lbzx		r7,r4,r7		# SingleBlockFlag=r7
	lis		r4,(current_block+4)@ha
	lwz		r4,(current_block+4)@l(r4)
	lis		r6,Ea_CurrentReadBlockOffset@ha
	lhz		r6,Ea_CurrentReadBlockOffset@l(r6)
	subf		r6,r6,r0
	stbx		r7,r4,r6		# SingleBlockFlag=r7
#       }
	.d2line		1521
	diab.addi		r0,r3,1		# counter=r3
	se_addi		r3,1		# counter=r3 counter=r3
	b		.L284
.L286:
#       Ea_R_Read_Done();
	.d2line		1522
.Llo31:
	bl		Ea_R_Read_Done
	b		.L281
.L283:
#    }
#    /* If read length is less than 1 virtual page size then also the read shall be completed in 1 read cycle*/
#    else if ((EA_VIRTUAL_PAGE_SIZE > current_block.read_length) && (0U == Ea_CurrentReadBlockOffset) && (TRUE == SingleBlockFlag))
	.d2line		1525
.Llo32:
	lis		r3,(current_block+2)@ha
	lhz		r0,(current_block+2)@l(r3)
	cmpi		0,0,r0,64
	bc		0,0,.L288	# ge
	lis		r3,Ea_CurrentReadBlockOffset@ha
	lhz		r0,Ea_CurrentReadBlockOffset@l(r3)
	e_cmphl16i	r0,0
	bc		0,2,.L288	# ne
	rlwinm		r7,r7,0,24,31		# SingleBlockFlag=r7 SingleBlockFlag=r7
	se_cmpi		r7,1		# SingleBlockFlag=r7
	bc		0,2,.L288	# ne
#    {
#       for (counter = AdmindataLength; counter <= current_block.read_length; counter++)
	.d2line		1527
.Llo40:
	mr		r3,r5		# counter=r3 counter=r5
.L289:
	rlwinm		r0,r3,0,16,31		# counter=r3
	lis		r4,(current_block+2)@ha
	lhz		r4,(current_block+2)@l(r4)
	se_cmp		r0,r4
	bc		1,1,.L291	# gt
#       {
#          current_block.dataptr[counter - AdmindataLength] = Storage_Buffer[counter];
	.d2line		1529
	lis		r4,Storage_Buffer@ha
	e_add16i		r4,r4,Storage_Buffer@l
	rlwinm		r0,r3,0,16,31		# counter=r3
	lbzux		r6,r4,r0
	lis		r4,(current_block+4)@ha
	lwz		r4,(current_block+4)@l(r4)
	rlwinm		r7,r5,0,16,31		# SingleBlockFlag=r7 AdmindataLength=r5
.Llo41:
	subf		r7,r7,r0		# SingleBlockFlag=r7 SingleBlockFlag=r7
.Llo42:
	stbx		r6,r4,r7
#       }
	.d2line		1530
	diab.addi		r0,r3,1		# counter=r3
	se_addi		r3,1		# counter=r3 counter=r3
	b		.L289
.L291:
#       Ea_R_Read_Done();
	.d2line		1531
.Llo33:
	bl		Ea_R_Read_Done
	b		.L281
.L288:
	.section	.text_vle
.L820:
#    }
#    else
#    {
#       /* Reading of the data is initialised with proper offset*/
#       uint32 Read_Address;
#       Ea_SubStateMachineType Nextstate;
# #if ( STD_OFF == EA_OPT_SINGLE_BLOCK)
#       if (ONE_BLOCK_NUMBER != EaBlockAmounts())
#       {
#          Read_Address = Eeprom_ReadAddress() + (uint32)Ea_CurrentReadBlockOffset + (uint32)AdmindataLength;
#          Nextstate = EA_S_OP_IN_PROGRESS;
#       }
#       else
#       {
#          Read_Address = Eeprom_Address() + (uint32)Ea_CurrentReadBlockOffset + (uint32)AdmindataLength;
#          Nextstate = EA_S_R_SINGLE_BLOCK;
#       }
# #else
#       Read_Address = Eeprom_Address() + Ea_CurrentReadBlockOffset + AdmindataLength;
	.d2line		1550
	bl		Eeprom_Address
	lis		r4,Ea_CurrentReadBlockOffset@ha
	lhz		r0,Ea_CurrentReadBlockOffset@l(r4)
	se_add		r3,r0
.Llo34:
	rlwinm		r5,r5,0,16,31		# AdmindataLength=r5 AdmindataLength=r5
.Llo36:
	se_add		r3,r5		# AdmindataLength=r5
#       Nextstate = EA_S_R_SINGLE_BLOCK;
	.d2line		1551
.Llo43:
	diab.li		r31,4		# Nextstate=r31
# #endif
#       if (E_OK == (*Ea_ReadFctPtr[GetDeviceIndex()])(Read_Address, current_block.dataptr, (uint32)current_block.read_length))
	.d2line		1553
.Llo45:
	lis		r5,Ea_ReadFctPtr@ha		# AdmindataLength=r5
	e_add16i		r5,r5,Ea_ReadFctPtr@l		# AdmindataLength=r5 AdmindataLength=r5
	lis		r4,(current_block+18)@ha
	lbz		r0,(current_block+18)@l(r4)
	rlwinm		r0,r0,2,22,29
	lwzx		r0,r5,r0		# AdmindataLength=r5
	mtspr		ctr,r0
	lis		r4,(current_block+2)@ha
	lhz		r5,(current_block+2)@l(r4)		# AdmindataLength=r5
.Llo35:
	lis		r4,(current_block+4)@ha
	lwz		r4,(current_block+4)@l(r4)
	mr		r0,r3		# Read_Address=r0 Read_Address=r3
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo44:
	e_andi.		r3,r3,255
	bc		0,2,.L293	# ne
#       {
#          EaSetSubState(Nextstate);
	.d2line		1555
	lis		r3,sub_state@ha
	e_add16i		r3,r3,sub_state@l
	stw		r31,0(r3)		# Nextstate=r31
#          EaSetMainState(EA_READ);
	.d2line		1556
	diab.li		r4,1
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r4,0(r3)
#          SetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		1557
	diab.li		r0,2
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)
#          DbgSetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		1558
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)
#          Ea_ReadTotalLengthInProgress = TRUE;
	.d2line		1559
	lis		r3,Ea_ReadTotalLengthInProgress@ha
	e_add16i		r3,r3,Ea_ReadTotalLengthInProgress@l
	stb		r4,0(r3)
	b		.L281
.L293:
#       }
#       else
#       {
#          SetEaJobResult(MEMIF_JOB_FAILED);
	.d2line		1563
	diab.li		r0,1
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)
#          DbgSetEaJobResult(MEMIF_JOB_FAILED);
	.d2line		1564
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)
#          Ea_AdminDataReadPending =  FALSE;
	.d2line		1565
	diab.li		r0,0
	lis		r3,Ea_AdminDataReadPending@ha
	e_add16i		r3,r3,Ea_AdminDataReadPending@l
	stb		r0,0(r3)
#          Call_JobErrorCallback();
	.d2line		1566
	lis		r3,EA_General@ha
	lwz		r0,EA_General@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L296	# eq
.Llo46:
	lis		r3,EA_General@ha
	lwz		r0,EA_General@l(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L296:
#          EaSetMainState(EA_IDLE);
	.d2line		1567
	diab.li		r0,0
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)
#          EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		1568
	diab.li		r0,1
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)
	.section	.text_vle
.L821:
.L281:
#       }
#    }
# }
	.d2line		1571
	.d2epilogue_begin
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
.L811:
	.type		Ea_R_TotalDataLength,@function
	.size		Ea_R_TotalDataLength,.-Ea_R_TotalDataLength
# Number of nodes = 212

# Allocations for Ea_R_TotalDataLength
#	?a4		AdmindataLength
#	?a5		counter
#	?a6		SingleBlockFlag
#	?a7		Read_Address
#	?a8		Nextstate
# static FUNC(void, EA_CODE) Ea_R_Single_Block(void)
	.align		1
	.section	.text_vle
        .d2line         1357,28
#$$ld
.L832:

#$$bf	Ea_R_Single_Block,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Ea_R_Single_Block:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    uint32 Read_Address;
# #if (STD_ON == EA_POLLING_MODE)
#    VAR(MemIf_StatusType,AUTOMATIC) eep_stat;
# #endif
#    VAR(MemIf_JobResultType, AUTOMATIC) eep_jobresult;
# 
# #if (STD_ON == EA_POLLING_MODE)
#    eep_stat = (*Ea_GetStatusFctPtr[GetDeviceIndex()])();
# #endif
#    eep_jobresult = (*Ea_GetJobResultFctPtr[GetDeviceIndex()])();
	.d2line		1368
	lis		r4,Ea_GetJobResultFctPtr@ha
	e_add16i		r4,r4,Ea_GetJobResultFctPtr@l
	lis		r3,(current_block+18)@ha
	lbz		r0,(current_block+18)@l(r3)
	rlwinm		r0,r0,2,22,29
	lwzx		r0,r4,r0
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo49:
	mr		r0,r3		# eep_jobresult=r0 eep_jobresult=r3
# 
# #if (STD_ON == EA_POLLING_MODE)
#    if (MEMIF_IDLE == eep_stat)
# #else
#    if (MEMIF_IDLE == memif_status)
	.d2line		1373
	lis		r3,memif_status@ha
.Llo50:
	lwz		r3,memif_status@l(r3)
.Llo51:
	se_cmpi		r3,1
	bc		0,2,.L229	# ne
# #endif
#    {
#       if (MEMIF_JOB_OK == eep_jobresult)
	.d2line		1376
	se_cmpi		r0,0		# eep_jobresult=r0
	bc		0,2,.L231	# ne
#       {
#          /* after correct read operation, management information is checked
#           * In case of only one block no consistency info is stored
#           * because of the extra overhead and only one byte management
#           * information is stored.
#           * The block is considered Inconsistent in case of Single Block only
#           *  When no data has been written into the block.
#           */
#          if(Ea_AdminDataReadPending == TRUE)
	.d2line		1385
.Llo52:
	lis		r3,Ea_AdminDataReadPending@ha
	lbz		r0,Ea_AdminDataReadPending@l(r3)		# eep_jobresult=r0
.Llo53:
	se_cmpi		r0,1		# eep_jobresult=r0
	bc		0,2,.L232	# ne
#          {
#             /* condition when no data is present on the EEPROM*/
#             if (Storage_Buffer[0] == EA_INCONSISTENT)
	.d2line		1388
.Llo54:
	lis		r3,Storage_Buffer@ha
	lbz		r0,Storage_Buffer@l(r3)		# eep_jobresult=r0
.Llo55:
	cmpi		0,0,r0,255		# eep_jobresult=r0
	bc		0,2,.L233	# ne
#             {
#                SetEaJobResult(MEMIF_BLOCK_INCONSISTENT);
	.d2line		1390
.Llo56:
	diab.li		r0,4		# eep_jobresult=r0
.Llo57:
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)		# eep_jobresult=r0
#                DbgSetEaJobResult(MEMIF_BLOCK_INCONSISTENT);
	.d2line		1391
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)		# eep_jobresult=r0
#                SetAdminValidity(EA_UNINIT);
	.d2line		1392
	diab.li		r0,49		# eep_jobresult=r0
	lis		r3,EA_ManagementBlock@ha
	e_add16i		r3,r3,EA_ManagementBlock@l
	lis		r4,Ea_MgmtBlockIndex@ha
	lhz		r4,Ea_MgmtBlockIndex@l(r4)
	rlwinm		r4,r4,1,15,30
	stbx		r0,r3,r4		# eep_jobresult=r0
#                Call_JobErrorCallback();
	.d2line		1393
	lis		r3,EA_General@ha
	lwz		r0,EA_General@l(r3)		# eep_jobresult=r0
	se_cmpi		r0,0		# eep_jobresult=r0
	bc		1,2,.L235	# eq
.Llo58:
	lis		r3,EA_General@ha
	lwz		r0,EA_General@l(r3)		# eep_jobresult=r0
	mtspr		ctr,r0		# eep_jobresult=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L235:
#                EaSetMainState(EA_IDLE);
	.d2line		1394
	diab.li		r0,0		# eep_jobresult=r0
.Llo59:
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)		# eep_jobresult=r0
	b		.L229
.L233:
	.section	.text_vle
.L841:
#             }
#             else
#             {
#                uint16 counter, ReadBlock_offset;
#                EaSetMemIfStatus(MEMIF_BUSY);
	.d2line		1399
.Llo60:
	diab.li		r0,2		# eep_jobresult=r0
.Llo61:
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)		# eep_jobresult=r0
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)		# eep_jobresult=r0
#                /* Block read shall be completed in 1 read operation for read length less than 1 virtual page*/
#                if ((ZERO_INDEX == Ea_CurrentReadBlockOffset) && (current_block.read_length < EA_VIRTUAL_PAGE_SIZE))
	.d2line		1401
	lis		r3,Ea_CurrentReadBlockOffset@ha
	lhz		r0,Ea_CurrentReadBlockOffset@l(r3)		# eep_jobresult=r0
	se_cmpi		r0,0		# eep_jobresult=r0
	bc		0,2,.L238	# ne
.Llo62:
	lis		r3,(current_block+2)@ha
	lhz		r0,(current_block+2)@l(r3)		# eep_jobresult=r0
.Llo63:
	cmpi		0,0,r0,64		# eep_jobresult=r0
	bc		0,0,.L238	# ge
#                {
#                   for (counter = ZERO_INDEX; counter < current_block.read_length; counter++)
	.d2line		1403
.Llo64:
	diab.li		r3,0		# counter=r3
.L239:
.Llo93:
	rlwinm		r0,r3,0,16,31		# eep_jobresult=r0 counter=r3
.Llo65:
	lis		r4,(current_block+2)@ha
	lhz		r4,(current_block+2)@l(r4)
	se_cmp		r0,r4		# eep_jobresult=r0
	bc		0,0,.L238	# ge
#                   {
#                      current_block.dataptr[counter] = Storage_Buffer[counter + (uint16)ONE_BLOCK_NUMBER];
	.d2line		1405
.Llo66:
	lis		r4,(Storage_Buffer+1)@ha
	e_add16i		r4,r4,(Storage_Buffer+1)@l
	rlwinm		r0,r3,0,16,31		# eep_jobresult=r0 counter=r3
	lbzux		r5,r4,r0
	lis		r4,(current_block+4)@ha
	lwz		r4,(current_block+4)@l(r4)
	stbx		r5,r4,r0
#                   }
	.d2line		1406
	diab.addi		r0,r3,1		# eep_jobresult=r0 counter=r3
	se_addi		r3,1		# counter=r3 counter=r3
	b		.L239
.L238:
#                }
# 
#                /* Second admin data area is read */
#                ReadBlock_offset = EaTotalBlockSize() - LIGHT_ADMIN_DATALENGTH;
	.d2line		1410
.Llo94:
	lis		r4,(EA_BlockDescriptor+2)@ha
	e_add16i		r4,r4,(EA_BlockDescriptor+2)@l
	lis		r3,Ea_MgmtBlockIndex@ha		# counter=r3
.Llo95:
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# eep_jobresult=r0 counter=r3
.Llo67:
	e_mulli		r0,r0,10		# eep_jobresult=r0 eep_jobresult=r0
.Llo68:
	lhzx		r5,r4,r0		# ReadBlock_offset=r5
.Llo101:
	se_addi		r5,1		# ReadBlock_offset=r5 ReadBlock_offset=r5
	mr		r5,r5		# ReadBlock_offset=r5 ReadBlock_offset=r5
#                Read_Address = Eeprom_Address() + ReadBlock_offset;
	.d2line		1411
	bl		Eeprom_Address
	rlwinm		r5,r5,0,16,31		# ReadBlock_offset=r5 ReadBlock_offset=r5
	se_add		r3,r5		# counter=r3 counter=r3 ReadBlock_offset=r5
# 
#                if(E_OK == (*Ea_ReadFctPtr[GetDeviceIndex()])(Read_Address, Ea_AdminData, (uint32)LIGHT_ADMIN_DATALENGTH))
	.d2line		1413
.Llo47:
	lis		r5,Ea_ReadFctPtr@ha		# ReadBlock_offset=r5
	e_add16i		r5,r5,Ea_ReadFctPtr@l		# ReadBlock_offset=r5 ReadBlock_offset=r5
	lis		r4,(current_block+18)@ha
	lbz		r0,(current_block+18)@l(r4)		# eep_jobresult=r0
.Llo69:
	rlwinm		r0,r0,2,22,29		# eep_jobresult=r0 eep_jobresult=r0
	lwzx		r0,r5,r0		# eep_jobresult=r0 ReadBlock_offset=r5
.Llo70:
	mtspr		ctr,r0		# eep_jobresult=ctr
	lis		r4,Ea_AdminData@ha
	e_add16i		r4,r4,Ea_AdminData@l
	mr		r0,r3		# Read_Address=r0 Read_Address=r3
	diab.li		r5,1		# ReadBlock_offset=r5
.Llo102:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo48:
	e_andi.		r3,r3,255		# counter=r3 counter=r3
.Llo96:
	bc		0,2,.L242	# ne
#                {
#                   EaSetSubState(EA_S_R_SINGLE_BLOCK);
	.d2line		1415
	diab.li		r0,4		# counter=r0
.Llo97:
	lis		r3,sub_state@ha		# counter=r3
	e_add16i		r3,r3,sub_state@l		# counter=r3 counter=r3
	stw		r0,0(r3)		# counter=r3 counter=r0
#                   EaSetMainState(EA_READ);
	.d2line		1416
	diab.li		r0,1		# counter=r0
	lis		r3,main_state@ha		# counter=r3
	e_add16i		r3,r3,main_state@l		# counter=r3 counter=r3
	stw		r0,0(r3)		# counter=r3 counter=r0
#                   SetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		1417
	diab.li		r0,2		# counter=r0
	lis		r3,ea_jobresult@ha		# counter=r3
	e_add16i		r3,r3,ea_jobresult@l		# counter=r3 counter=r3
	stw		r0,0(r3)		# counter=r3 counter=r0
#                   DbgSetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		1418
	lis		r3,Ea_JobResultDbg@ha		# counter=r3
	e_add16i		r3,r3,Ea_JobResultDbg@l		# counter=r3 counter=r3
	stb		r0,0(r3)		# counter=r3 counter=r0
#                   Ea_AdminDataReadPending =  FALSE;
	.d2line		1419
	diab.li		r0,0		# counter=r0
	lis		r3,Ea_AdminDataReadPending@ha		# counter=r3
	e_add16i		r3,r3,Ea_AdminDataReadPending@l		# counter=r3 counter=r3
	stb		r0,0(r3)		# counter=r3 counter=r0
	b		.L229
.L242:
#                }
#                else
#                {
#                   EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		1423
.Llo98:
	diab.li		r0,1		# counter=r0
.Llo99:
	lis		r3,memif_status@ha		# counter=r3
	e_add16i		r3,r3,memif_status@l		# counter=r3 counter=r3
	stw		r0,0(r3)		# counter=r3 counter=r0
	lis		r3,Ea_MemifStatusDbg@ha		# counter=r3
	e_add16i		r3,r3,Ea_MemifStatusDbg@l		# counter=r3 counter=r3
	stw		r0,0(r3)		# counter=r3 counter=r0
	.section	.text_vle
.L842:
.Llo100:
	b		.L229
.L232:
#                }
#             }
#          }
#          else if (FALSE == Ea_ReadTotalLengthInProgress)
	.d2line		1427
	lis		r3,Ea_ReadTotalLengthInProgress@ha
	lbz		r0,Ea_ReadTotalLengthInProgress@l(r3)		# eep_jobresult=r0
.Llo71:
	se_cmpi		r0,0		# eep_jobresult=r0
	bc		0,2,.L246	# ne
#          {
#             /* condition when no data is present on the EEPROM*/
#             if (Storage_Buffer[0] == EA_INCONSISTENT)
	.d2line		1430
.Llo72:
	lis		r3,Storage_Buffer@ha
	lbz		r0,Storage_Buffer@l(r3)		# eep_jobresult=r0
.Llo73:
	cmpi		0,0,r0,255		# eep_jobresult=r0
	bc		0,2,.L247	# ne
#             {
#                SetEaJobResult(MEMIF_BLOCK_INCONSISTENT);
	.d2line		1432
.Llo74:
	diab.li		r0,4		# eep_jobresult=r0
.Llo75:
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)		# eep_jobresult=r0
#                DbgSetEaJobResult(MEMIF_BLOCK_INCONSISTENT);
	.d2line		1433
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)		# eep_jobresult=r0
#                SetAdminValidity(EA_UNINIT);
	.d2line		1434
	diab.li		r0,49		# eep_jobresult=r0
	lis		r3,EA_ManagementBlock@ha
	e_add16i		r3,r3,EA_ManagementBlock@l
	lis		r4,Ea_MgmtBlockIndex@ha
	lhz		r4,Ea_MgmtBlockIndex@l(r4)
	rlwinm		r4,r4,1,15,30
	stbx		r0,r3,r4		# eep_jobresult=r0
#                Call_JobErrorCallback();
	.d2line		1435
	lis		r3,EA_General@ha
	lwz		r0,EA_General@l(r3)		# eep_jobresult=r0
	se_cmpi		r0,0		# eep_jobresult=r0
	bc		1,2,.L249	# eq
.Llo76:
	lis		r3,EA_General@ha
	lwz		r0,EA_General@l(r3)		# eep_jobresult=r0
	mtspr		ctr,r0		# eep_jobresult=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L249:
#                EaSetMainState(EA_IDLE);
	.d2line		1436
	diab.li		r0,0		# eep_jobresult=r0
.Llo77:
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)		# eep_jobresult=r0
	b		.L229
.L247:
	.section	.text_vle
.L849:
#             }
#             else
#             {
#                boolean present_validity;
#                /* validity of the admin data areas is checked */
#                if (CheckBlockSizeIsOneCycle)
	.d2line		1442
.Llo78:
	lis		r4,(EA_BlockDescriptor+2)@ha
	e_add16i		r4,r4,(EA_BlockDescriptor+2)@l
	lis		r3,Ea_MgmtBlockIndex@ha
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# eep_jobresult=r0
.Llo79:
	e_mulli		r0,r0,10		# eep_jobresult=r0 eep_jobresult=r0
.Llo80:
	lhzx		r3,r4,r0
	se_addi		r3,2
	rlwinm		r3,r3,0,16,31
	cmpi		0,0,r3,64
	bc		1,1,.L251	# gt
#                {
#                   present_validity = (Storage_Buffer[0] == Storage_Buffer[EaTotalBlockSize() - LIGHT_ADMIN_DATALENGTH]);
	.d2line		1444
	lis		r3,Storage_Buffer@ha
	lbz		r0,Storage_Buffer@l(r3)		# eep_jobresult=r0
.Llo81:
	lis		r3,(Storage_Buffer-1)@ha
	e_add16i		r3,r3,(Storage_Buffer-1)@l
	lis		r4,(EA_BlockDescriptor+2)@ha
	e_add16i		r4,r4,(EA_BlockDescriptor+2)@l
	lis		r5,Ea_MgmtBlockIndex@ha
	lhz		r5,Ea_MgmtBlockIndex@l(r5)
	e_mulli		r5,r5,10
	lhzx		r4,r4,r5
	se_addi		r4,2
	rlwinm		r4,r4,0,16,31
	lbzx		r3,r3,r4
	subf		r0,r0,r3		# eep_jobresult=r0 eep_jobresult=r0
	cntlzw		r0,r0		# eep_jobresult=r0 eep_jobresult=r0
.Llo103:
	diab.srwi		r0,5		# eep_jobresult=r0
	mr		r0,r0		# present_validity=r0 present_validity=r0
.Llo82:
	b		.L252
.L251:
#                }
#                else
#                {
#                   present_validity = (Storage_Buffer[0] == GetValidityCounter(Ea_AdminData));
	.d2line		1448
.Llo104:
	lis		r3,Storage_Buffer@ha
	lbz		r0,Storage_Buffer@l(r3)		# eep_jobresult=r0
.Llo83:
	lis		r3,Ea_AdminData@ha
	lbz		r3,Ea_AdminData@l(r3)
	subf		r0,r0,r3		# eep_jobresult=r0 eep_jobresult=r0
	cntlzw		r0,r0		# eep_jobresult=r0 eep_jobresult=r0
.Llo105:
	diab.srwi		r0,5		# eep_jobresult=r0
	mr		r0,r0		# present_validity=r0 present_validity=r0
.L252:
#                }
# 
#                if(TRUE == present_validity)
	.d2line		1451
.Llo84:
	rlwinm		r0,r0,0,24,31		# present_validity=r0 present_validity=r0
	se_cmpi		r0,1		# present_validity=r0
	bc		0,2,.L253	# ne
#                {
#                   /* If validity is true then the data is read from the block*/
#                   Ea_R_TotalDataLength();
	.d2line		1454
.Llo106:
	bl		Ea_R_TotalDataLength
	b		.L229
.L253:
#                }
#                else
#                {
#                   SetAdminValidity(EA_INVALID);
	.d2line		1458
	diab.li		r5,51
	lis		r3,EA_ManagementBlock@ha
	e_add16i		r3,r3,EA_ManagementBlock@l
	lis		r4,Ea_MgmtBlockIndex@ha
	lhz		r0,Ea_MgmtBlockIndex@l(r4)		# present_validity=r0
.Llo107:
	rlwinm		r0,r0,1,15,30		# present_validity=r0 present_validity=r0
.Llo108:
	stbx		r5,r3,r0
#                   SetAdminValidity(EA_INVALID);
	.d2line		1459
	lhz		r0,Ea_MgmtBlockIndex@l(r4)		# present_validity=r0
.Llo109:
	rlwinm		r0,r0,1,15,30		# present_validity=r0 present_validity=r0
.Llo110:
	stbx		r5,r3,r0
#                   SetEaJobResult(MEMIF_BLOCK_INVALID);
	.d2line		1460
	diab.li		r0,5		# present_validity=r0
.Llo111:
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)		# present_validity=r0
#                   DbgSetEaJobResult(MEMIF_BLOCK_INVALID);
	.d2line		1461
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)		# present_validity=r0
#                   Call_JobErrorCallback();
	.d2line		1462
	lis		r3,EA_General@ha
	lwz		r0,EA_General@l(r3)		# present_validity=r0
	se_cmpi		r0,0		# present_validity=r0
	bc		1,2,.L256	# eq
.Llo112:
	lis		r3,EA_General@ha
	lwz		r0,EA_General@l(r3)		# present_validity=r0
	mtspr		ctr,r0		# present_validity=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L256:
#                   EaSetMainState(EA_IDLE);
	.d2line		1463
	diab.li		r0,0		# present_validity=r0
.Llo113:
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)		# present_validity=r0
	.section	.text_vle
.L850:
.Llo114:
	b		.L229
.L246:
#                }
#             }
#          }
#          else
#          {
#             Ea_ReadTotalLengthInProgress = FALSE;
	.d2line		1469
	diab.li		r0,0		# eep_jobresult=r0
.Llo85:
	lis		r3,Ea_ReadTotalLengthInProgress@ha
	e_add16i		r3,r3,Ea_ReadTotalLengthInProgress@l
	stb		r0,0(r3)		# eep_jobresult=r0
#             SetEaJobResult(MEMIF_JOB_OK);
	.d2line		1470
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)		# eep_jobresult=r0
#             DbgSetEaJobResult(MEMIF_JOB_OK);
	.d2line		1471
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)		# eep_jobresult=r0
#             SetAdminValidity(EA_VALID);
	.d2line		1472
	diab.li		r0,50		# eep_jobresult=r0
	lis		r3,EA_ManagementBlock@ha
	e_add16i		r3,r3,EA_ManagementBlock@l
	lis		r4,Ea_MgmtBlockIndex@ha
	lhz		r4,Ea_MgmtBlockIndex@l(r4)
	rlwinm		r4,r4,1,15,30
	stbx		r0,r3,r4		# eep_jobresult=r0
#             Call_JobEndCallback();
	.d2line		1473
	lis		r3,(EA_General+4)@ha
	lwz		r0,(EA_General+4)@l(r3)		# eep_jobresult=r0
	se_cmpi		r0,0		# eep_jobresult=r0
	bc		1,2,.L259	# eq
.Llo86:
	lis		r3,(EA_General+4)@ha
	lwz		r0,(EA_General+4)@l(r3)		# eep_jobresult=r0
	mtspr		ctr,r0		# eep_jobresult=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L259:
#             EaSetMainState(EA_IDLE);
	.d2line		1474
	diab.li		r0,0		# eep_jobresult=r0
.Llo87:
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)		# eep_jobresult=r0
	b		.L229
.L231:
#          }
#       }
#       else
#       {
#          SetEaJobResult(MEMIF_JOB_FAILED);
	.d2line		1479
.Llo88:
	diab.li		r0,1		# eep_jobresult=r0
.Llo89:
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)		# eep_jobresult=r0
#          DbgSetEaJobResult(MEMIF_JOB_FAILED);
	.d2line		1480
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)		# eep_jobresult=r0
#          Ea_AdminDataReadPending =  FALSE;
	.d2line		1481
	diab.li		r0,0		# eep_jobresult=r0
	lis		r3,Ea_AdminDataReadPending@ha
	e_add16i		r3,r3,Ea_AdminDataReadPending@l
	stb		r0,0(r3)		# eep_jobresult=r0
#          Call_JobErrorCallback();
	.d2line		1482
	lis		r3,EA_General@ha
	lwz		r0,EA_General@l(r3)		# eep_jobresult=r0
	se_cmpi		r0,0		# eep_jobresult=r0
	bc		1,2,.L262	# eq
.Llo90:
	lis		r3,EA_General@ha
	lwz		r0,EA_General@l(r3)		# eep_jobresult=r0
	mtspr		ctr,r0		# eep_jobresult=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L262:
#          EaSetMainState(EA_IDLE);
	.d2line		1483
	diab.li		r0,0		# eep_jobresult=r0
.Llo91:
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)		# eep_jobresult=r0
.L229:
#       }
#    }
#    else
#    {
#       /* keep state */
#    }
# }
	.d2line		1490
	.d2epilogue_begin
.Llo92:
	lwz		r0,20(r1)		# eep_jobresult=r0
	mtspr		lr,r0		# eep_jobresult=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L833:
	.type		Ea_R_Single_Block,@function
	.size		Ea_R_Single_Block,.-Ea_R_Single_Block
# Number of nodes = 382

# Allocations for Ea_R_Single_Block
#	?a4		Read_Address
#	?a5		eep_jobresult
#	?a6		counter
#	?a7		ReadBlock_offset
#	?a8		present_validity
# static FUNC(void, EA_CODE) Ea_R_No_Process(void)
	.align		1
	.section	.text_vle
        .d2line         1573,28
#$$ld
.L857:

#$$bf	Ea_R_No_Process,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Ea_R_No_Process:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    if (EA_INVALID == GetValidity())
	.d2line		1575
	lis		r3,(current_block+13)@ha
	lbz		r0,(current_block+13)@l(r3)
	cmpi		0,0,r0,51
	bc		0,2,.L308	# ne
#    {
#       SetEaJobResult(MEMIF_BLOCK_INVALID);
	.d2line		1577
	diab.li		r0,5
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)
#       DbgSetEaJobResult(MEMIF_BLOCK_INVALID);
	.d2line		1578
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)
	b		.L309
.L308:
#    }
#    else
#    {
#       SetEaJobResult(MEMIF_BLOCK_INCONSISTENT);
	.d2line		1582
	diab.li		r0,4
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)
#       DbgSetEaJobResult(MEMIF_BLOCK_INCONSISTENT);
	.d2line		1583
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)
.L309:
#    }
#    EaSetMainState(EA_IDLE);
	.d2line		1585
	diab.li		r0,0
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)
#    EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		1586
	diab.li		r0,1
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)
#    Call_JobErrorCallback();
	.d2line		1587
	lis		r3,EA_General@ha
	lwz		r0,EA_General@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L307	# eq
	lis		r3,EA_General@ha
	lwz		r0,EA_General@l(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L307:
# }
	.d2line		1588
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
.L858:
	.type		Ea_R_No_Process,@function
	.size		Ea_R_No_Process,.-Ea_R_No_Process
# Number of nodes = 40

# Allocations for Ea_R_No_Process
# static FUNC(void, EA_CODE) Ea_Op_In_Progress(void)
	.align		1
	.section	.text_vle
        .d2line         2317,28
#$$ld
.L862:

#$$bf	Ea_Op_In_Progress,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Ea_Op_In_Progress:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if (STD_OFF == EA_OPT_SINGLE_BLOCK)
#    VAR(uint32, AUTOMATIC) WriteAddress;
#    VAR(uint32, AUTOMATIC) ReadAddress;
# #endif
#    /* auxliary variable to store data from lowey layer */
# #if (STD_ON == EA_POLLING_MODE)
#    VAR(MemIf_StatusType, AUTOMATIC)    eep_stat;
# #endif
#    VAR(MemIf_JobResultType, AUTOMATIC) eep_jobresult;
# #if (STD_ON == EA_POLLING_MODE)
#    eep_stat = (*Ea_GetStatusFctPtr[GetDeviceIndex()])();
# #endif
#    eep_jobresult = (*Ea_GetJobResultFctPtr[GetDeviceIndex()])();
	.d2line		2331
	lis		r4,Ea_GetJobResultFctPtr@ha
	e_add16i		r4,r4,Ea_GetJobResultFctPtr@l
	lis		r3,(current_block+18)@ha
	lbz		r0,(current_block+18)@l(r3)
	rlwinm		r0,r0,2,22,29
	lwzx		r0,r4,r0
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo115:
	mr		r31,r3		# eep_jobresult=r31 eep_jobresult=r3
# #if (EA_DEV_ERROR_DETECT == STD_ON)
#    prev_blk_no = current_block.block_nb;
# #endif
# #if (STD_ON == EA_POLLING_MODE)
#    if (MEMIF_IDLE == eep_stat)
# #else
#    if (MEMIF_IDLE == memif_status)
	.d2line		2338
	lis		r3,memif_status@ha
.Llo116:
	lwz		r0,memif_status@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L451	# ne
# #endif
#    {
#       if (MEMIF_JOB_OK == eep_jobresult)
	.d2line		2341
.Llo117:
	se_cmpi		r31,0		# eep_jobresult=r31
	bc		0,2,.L453	# ne
#       {
# #if (STD_OFF == EA_OPT_SINGLE_BLOCK)
#          EaSetMemIfStatus(MEMIF_BUSY);
# 
#          if(Ea_AdminDatawriteStatus == EA_DATA_INVALIDATED)
#          {
#             /* Write data for blocks with size greater than 2 virtual pages */
#             uint16 Write_length = EaBlock_Length();
# 
#             WriteAddress = Eeprom_WriteAddress() + (uint32)EA_VIRTUAL_PAGE_SIZE;
# 
#             if (E_OK == (*Ea_WriteFctPtr[GetDeviceIndex()])(WriteAddress, GetDataPtrMultiBlock(), (uint32)Write_length))
#             {
#                Ea_AdminDataWritePending = TRUE;
#                SetStateService(TRUE);
#                SetServiceFunction(&Ea_W_Processing_Error, &Ea_W_Write_Done, NULL_PTR);
#                EaSetSubState(EA_S_OP_IN_PROGRESS);
#                EaSetMainState(EA_WRITE);
#                SetEaJobResult(MEMIF_JOB_PENDING);
#                DbgSetEaJobResult(MEMIF_JOB_PENDING);
#                Ea_AdminDatawriteStatus = EA_DATA_VALIDATED;
#             }
#             else
#             {
#                EaSetMemIfStatus(MEMIF_IDLE);
#             }
#          }
#          else
#          {
#             if(Ea_AdminDataWritePending == TRUE)
#             {
#                /* Second Admin data area is written*/
#                uint16 counter, index = ZERO_INDEX;
#                uint16 WriteBlock_offset = EaBlock_Length() + EA_VIRTUAL_PAGE_SIZE;
# 
#                for(counter = WriteBlock_offset - ADMIN_DATALENGTH; counter < EaBlockSize(); counter++)
#                {
#                   Storage_Buffer[index] = current_block.dataptr[counter];
#                   index++;
#                }
#                WriteAddress = Eeprom_WriteAddress() + (uint32)WriteBlock_offset;
# 
#                for(counter = ZERO_INDEX; counter < ADMIN_DATALENGTH; counter++)
#                {
#                   Storage_Buffer[index] = Ea_AdminData[counter];
#                   index++;
#                }
# 
#                if(E_OK == (*Ea_WriteFctPtr[GetDeviceIndex()])(WriteAddress, Storage_Buffer, (uint32)index))
#                {
#                   SetStateService(TRUE);
#                   SetServiceFunction(&Ea_W_Processing_Error, &Ea_W_Write_Done, NULL_PTR);
#                   EaSetSubState(EA_S_OP_IN_PROGRESS);
#                   EaSetMainState(EA_WRITE);
#                   SetEaJobResult(MEMIF_JOB_PENDING);
#                   DbgSetEaJobResult(MEMIF_JOB_PENDING);
#                   Ea_AdminDataWritePending = FALSE;
#                }
#                else
#                {
#                   EaSetMemIfStatus(MEMIF_IDLE);
#                }
#             }
#             else if (Ea_AdminDataReadPending == TRUE)
#             {
#                /* Second Admin data area read is requested */
#                uint16 ReadBlock_offset = EaTotalBlockSize() - ADMIN_DATALENGTH;
# 
#                ReadAddress = Eeprom_ReadAddress() + (uint32)ReadBlock_offset;
# 
#                if(E_OK == (*Ea_ReadFctPtr[GetDeviceIndex()])(ReadAddress, Ea_AdminData, (uint32)ADMIN_DATALENGTH))
#                {
#                   SetStateService(FALSE);
#                   /* PRQA S 715 ++
#                    * Nesting of control structures (statements) exceeds 15
#                    * - program is non-conforming.This implies from
#                    * structure of algorithm.
#                    */
#                   EaSetSubState(EA_S_OP_IN_PROGRESS);
#                   /* PRQA S 715 -- */
#                   EaSetMainState(EA_READ);
#                   SetEaJobResult(MEMIF_JOB_PENDING);
#                   DbgSetEaJobResult(MEMIF_JOB_PENDING);
#                   Ea_AdminDataReadPending = FALSE;
#                }
#                else
#                {
#                   EaSetMemIfStatus(MEMIF_IDLE);
#                }
#             }
#             else
#             {
#                EaSetMemIfStatus(MEMIF_IDLE);
#                (*substateptr.service_function[DONE_OP])();
#             }
#          }
# #else
#          (*substateptr.service_function[DONE_OP])();
	.d2line		2439
	lis		r3,(substateptr+12)@ha
	lwz		r0,(substateptr+12)@l(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L453:
# #endif
#       }
#       if (MEMIF_JOB_FAILED == eep_jobresult)
	.d2line		2442
	se_cmpi		r31,1		# eep_jobresult=r31
	bc		0,2,.L451	# ne
#       {
#          if (TRUE == substateptr.act)
	.d2line		2444
.Llo118:
	lis		r3,substateptr@ha
	lbz		r0,substateptr@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L455	# ne
#          {
#             /* if error occur during write operation block must be marked
#              * inconsistent */
#             SetBlockStatus(EA_INCONSISTENT);
	.d2line		2448
	diab.li		r0,255
	lis		r3,(current_block+15)@ha
	stb		r0,(current_block+15)@l(r3)
.L455:
#          }
#          (*substateptr.service_function[PROCESSING_ERROR])();
	.d2line		2450
	lis		r3,(substateptr+8)@ha
	lwz		r0,(substateptr+8)@l(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
#          Ea_AdminDataWritePending = FALSE;
	.d2line		2451
	diab.li		r0,0
	lis		r3,Ea_AdminDataWritePending@ha
	e_add16i		r3,r3,Ea_AdminDataWritePending@l
	stb		r0,0(r3)
#          Ea_AdminDataReadPending = FALSE;
	.d2line		2452
	lis		r3,Ea_AdminDataReadPending@ha
	e_add16i		r3,r3,Ea_AdminDataReadPending@l
	stb		r0,0(r3)
.L451:
#       }
#    }
# }
	.d2line		2455
	.d2epilogue_begin
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
.L863:
	.type		Ea_Op_In_Progress,@function
	.size		Ea_Op_In_Progress,.-Ea_Op_In_Progress
# Number of nodes = 58

# Allocations for Ea_Op_In_Progress
#	?a4		eep_jobresult
# static FUNC(void, EA_CODE) Ea_Read_Processing(void)
	.align		1
	.section	.text_vle
        .d2line         1327,28
#$$ld
.L869:

#$$bf	Ea_Read_Processing,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Ea_Read_Processing:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /* sub state machine for read processing */
#    switch (sub_state)
	.d2line		1330
	lis		r3,sub_state@ha
	lwz		r6,sub_state@l(r3)
	se_cmpi		r6,3
	bc		1,2,.L220	# eq
	se_cmpi		r6,4
	bc		1,2,.L221	# eq
	se_cmpi		r6,7
	bc		1,2,.L218	# eq
	b		.L222
.L218:
#    {
#    case EA_S_OP_IN_PROGRESS:
#       {
#          Ea_Op_In_Progress();
	.d2line		1334
	bl		Ea_Op_In_Progress
	b		.L217
.L220:
#          break;
#       }
#    case EA_S_R_NO_PROCESS:
#       {
#          Ea_R_No_Process();
	.d2line		1339
	bl		Ea_R_No_Process
	b		.L217
.L221:
#          break;
#       }
#    case EA_S_R_SINGLE_BLOCK:
#       {
#          /* logical block containg only one data block */
#          Ea_R_Single_Block();
	.d2line		1345
	bl		Ea_R_Single_Block
	b		.L217
.L222:
#          break;
#       }
#    default:
#       {
#          EaSetMainState(EA_IDLE);
	.d2line		1350
	diab.li		r0,0
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)
#          EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		1351
	diab.li		r0,1
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)
.L217:
#          break;
#       }
#    }
# }
	.d2line		1355
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
.L870:
	.type		Ea_Read_Processing,@function
	.size		Ea_Read_Processing,.-Ea_Read_Processing
# Number of nodes = 21

# Allocations for Ea_Read_Processing
# static FUNC(void, EA_CODE) Ea_R_Processing_Error(void)
	.align		1
	.section	.text_vle
        .d2line         1702,28
#$$ld
.L874:

#$$bf	Ea_R_Processing_Error,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Ea_R_Processing_Error:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /* auxliary variabless */
#    VAR(MemIf_JobResultType, AUTOMATIC) eep_jobresult;
# 
#    eep_jobresult = (*Ea_GetJobResultFctPtr[GetDeviceIndex()])();
	.d2line		1707
	lis		r4,Ea_GetJobResultFctPtr@ha
	e_add16i		r4,r4,Ea_GetJobResultFctPtr@l
	lis		r3,(current_block+18)@ha
	lbz		r0,(current_block+18)@l(r3)
	rlwinm		r0,r0,2,22,29
	lwzx		r0,r4,r0
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo119:
	mr		r3,r3		# eep_jobresult=r3 eep_jobresult=r3
#    if (MEMIF_JOB_FAILED == eep_jobresult)
	.d2line		1708
	se_cmpi		r3,1		# eep_jobresult=r3
	bc		0,2,.L322	# ne
#    {
#       /* if lower layer set failed job result we set ea job result the same */
#       SetEaJobResult(MEMIF_JOB_FAILED);
	.d2line		1711
.Llo120:
	diab.li		r0,1
	lis		r3,ea_jobresult@ha		# eep_jobresult=r3
.Llo121:
	e_add16i		r3,r3,ea_jobresult@l		# eep_jobresult=r3 eep_jobresult=r3
	stw		r0,0(r3)		# eep_jobresult=r3
#       DbgSetEaJobResult(MEMIF_JOB_FAILED);
	.d2line		1712
	lis		r3,Ea_JobResultDbg@ha		# eep_jobresult=r3
	e_add16i		r3,r3,Ea_JobResultDbg@l		# eep_jobresult=r3 eep_jobresult=r3
	stb		r0,0(r3)		# eep_jobresult=r3
	b		.L323
.L322:
#    }
#    else
#    {
# #if (STD_OFF == EA_OPT_SINGLE_BLOCK)
#       if (EA_INCONSISTENT == GetBlockStatus())
#       {
#          /* if read block was inconsistent - no correct block was find*/
#          SetEaJobResult(MEMIF_BLOCK_INCONSISTENT);
#          DbgSetEaJobResult(MEMIF_BLOCK_INCONSISTENT);
#          SetAdminBlockStatus(EA_INCONSISTENT);
#       }
#       else
#       {
#          /* if read block was invalid but was consistent */
#          SetAdminValidity(EA_INVALID);
#          SetAdminValidityCounter(GetValidityCounter(Ea_AdminData));
#          SetAdminBlockToWrite(GetBlockToWrite());
#          SetAdminWriteNumbers(GetWriteAmounts());
#          SetEaJobResult(MEMIF_BLOCK_INVALID);
#          DbgSetEaJobResult(MEMIF_BLOCK_INVALID);
#       }
# #else
#       SetAdminValidity(EA_INVALID);
	.d2line		1735
.Llo122:
	diab.li		r5,51
	lis		r3,EA_ManagementBlock@ha		# eep_jobresult=r3
.Llo123:
	e_add16i		r3,r3,EA_ManagementBlock@l		# eep_jobresult=r3 eep_jobresult=r3
	lis		r4,Ea_MgmtBlockIndex@ha
	lhz		r0,Ea_MgmtBlockIndex@l(r4)
	rlwinm		r0,r0,1,15,30
	stbx		r5,r3,r0		# eep_jobresult=r3
#       SetAdminValidityCounter(GetValidityCounter(Ea_AdminData));
	.d2line		1736
	lis		r3,Ea_AdminData@ha		# eep_jobresult=r3
	lbz		r0,Ea_AdminData@l(r3)		# eep_jobresult=r3
	lis		r3,(EA_ManagementBlock+1)@ha		# eep_jobresult=r3
	e_add16i		r3,r3,(EA_ManagementBlock+1)@l		# eep_jobresult=r3 eep_jobresult=r3
	lhz		r4,Ea_MgmtBlockIndex@l(r4)
	rlwinm		r4,r4,1,15,30
	stbx		r0,r3,r4		# eep_jobresult=r3
#       SetEaJobResult(MEMIF_BLOCK_INVALID);
	.d2line		1737
	diab.li		r0,5
	lis		r3,ea_jobresult@ha		# eep_jobresult=r3
	e_add16i		r3,r3,ea_jobresult@l		# eep_jobresult=r3 eep_jobresult=r3
	stw		r0,0(r3)		# eep_jobresult=r3
#       DbgSetEaJobResult(MEMIF_BLOCK_INVALID);
	.d2line		1738
	lis		r3,Ea_JobResultDbg@ha		# eep_jobresult=r3
	e_add16i		r3,r3,Ea_JobResultDbg@l		# eep_jobresult=r3 eep_jobresult=r3
	stb		r0,0(r3)		# eep_jobresult=r3
.L323:
# #endif
#    }
#    EaSetMainState(EA_IDLE);
	.d2line		1741
.Llo124:
	diab.li		r0,0
	lis		r3,main_state@ha		# eep_jobresult=r3
.Llo125:
	e_add16i		r3,r3,main_state@l		# eep_jobresult=r3 eep_jobresult=r3
	stw		r0,0(r3)		# eep_jobresult=r3
#    EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		1742
	diab.li		r0,1
	lis		r3,memif_status@ha		# eep_jobresult=r3
	e_add16i		r3,r3,memif_status@l		# eep_jobresult=r3 eep_jobresult=r3
	stw		r0,0(r3)		# eep_jobresult=r3
	lis		r3,Ea_MemifStatusDbg@ha		# eep_jobresult=r3
	e_add16i		r3,r3,Ea_MemifStatusDbg@l		# eep_jobresult=r3 eep_jobresult=r3
	stw		r0,0(r3)		# eep_jobresult=r3
#    Call_JobErrorCallback();
	.d2line		1743
	lis		r3,EA_General@ha		# eep_jobresult=r3
	lwz		r0,EA_General@l(r3)		# eep_jobresult=r3
	se_cmpi		r0,0
	bc		1,2,.L321	# eq
.Llo126:
	lis		r3,EA_General@ha		# eep_jobresult=r3
.Llo127:
	lwz		r0,EA_General@l(r3)		# eep_jobresult=r3
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L321:
# }
	.d2line		1744
	.d2epilogue_begin
.Llo128:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L875:
	.type		Ea_R_Processing_Error,@function
	.size		Ea_R_Processing_Error,.-Ea_R_Processing_Error
# Number of nodes = 75

# Allocations for Ea_R_Processing_Error
#	?a4		eep_jobresult
# static FUNC(void, EA_CODE) Ea_Single_Block(void)
	.align		1
	.section	.text_vle
        .d2line         2172,28
#$$ld
.L881:

#$$bf	Ea_Single_Block,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Ea_Single_Block:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(uint32,AUTOMATIC) WriteAddress;
# #if (STD_ON == EA_POLLING_MODE)
#    VAR(MemIf_StatusType, AUTOMATIC) eep_stat;
# #endif
#    VAR(MemIf_JobResultType, AUTOMATIC) eep_jobresult;
# #if (STD_ON == EA_POLLING_MODE)
#    eep_stat = (*Ea_GetStatusFctPtr[GetDeviceIndex()])();
# #endif
#    eep_jobresult=(*Ea_GetJobResultFctPtr[GetDeviceIndex()])();
	.d2line		2182
	lis		r4,Ea_GetJobResultFctPtr@ha
	e_add16i		r4,r4,Ea_GetJobResultFctPtr@l
	lis		r3,(current_block+18)@ha
	lbz		r0,(current_block+18)@l(r3)
	rlwinm		r0,r0,2,22,29
	lwzx		r0,r4,r0
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo147:
	mr		r0,r3		# eep_jobresult=r0 eep_jobresult=r3
# 
# #if (STD_ON == EA_POLLING_MODE)
#    if (MEMIF_IDLE == eep_stat)
# #else
#    if (MEMIF_IDLE == memif_status)
	.d2line		2187
	lis		r3,memif_status@ha
.Llo148:
	lwz		r3,memif_status@l(r3)
.Llo149:
	se_cmpi		r3,1
	bc		0,2,.L395	# ne
# #endif
#    {
#       if (MEMIF_JOB_OK == eep_jobresult)
	.d2line		2190
	se_cmpi		r0,0		# eep_jobresult=r0
	bc		0,2,.L397	# ne
	.section	.text_vle
.L888:
#       {
#          uint16 Write_length;
# 
#          EaSetMemIfStatus(MEMIF_BUSY);
	.d2line		2194
.Llo150:
	diab.li		r0,2		# eep_jobresult=r0
.Llo151:
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)		# eep_jobresult=r0
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)		# eep_jobresult=r0
# 
#          if(EA_DATA_INVALIDATED == Ea_AdminDatawriteStatus)
	.d2line		2196
	lis		r3,Ea_AdminDatawriteStatus@ha
	lwz		r0,Ea_AdminDatawriteStatus@l(r3)		# eep_jobresult=r0
	se_cmpi		r0,1		# eep_jobresult=r0
	bc		0,2,.L399	# ne
#          {
#             /* Write data into EEPROM for blocks with size greater than 2 Virtual pages*/
#             WriteAddress = Eeprom_Address() + EA_VIRTUAL_PAGE_SIZE;
	.d2line		2199
.Llo152:
	bl		Eeprom_Address
.Llo129:
	diab.addi		r6,r3,64		# WriteAddress=r6 WriteAddress=r3
#             Write_length = EaSingleBlock_Length();
	.d2line		2200
	bl		EaSingleBlock_Length
.Llo130:
	mr		r5,r3		# Write_length=r5 Write_length=r3
# 
#             if (E_OK == (*Ea_WriteFctPtr[GetDeviceIndex()])(WriteAddress, GetDataPtrSingleBlock(), (uint32)Write_length))
	.d2line		2202
	lis		r4,Ea_WriteFctPtr@ha
	e_add16i		r4,r4,Ea_WriteFctPtr@l
	lis		r3,(current_block+18)@ha		# WriteAddress=r3
.Llo131:
	lbz		r0,(current_block+18)@l(r3)		# eep_jobresult=r0 WriteAddress=r3
.Llo153:
	rlwinm		r0,r0,2,22,29		# eep_jobresult=r0 eep_jobresult=r0
	lwzx		r0,r4,r0		# eep_jobresult=r0
.Llo154:
	mtspr		ctr,r0		# eep_jobresult=ctr
	lis		r3,(current_block+4)@ha		# WriteAddress=r3
	lwz		r4,(current_block+4)@l(r3)		# WriteAddress=r3
	diab.addi		r4,r4,63
.Llo208:
	rlwinm		r5,r5,0,16,31		# Write_length=r5 Write_length=r5
.Llo209:
	mr		r3,r6		# WriteAddress=r3 WriteAddress=r6
.Llo132:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo133:
	e_andi.		r3,r3,255		# WriteAddress=r3 WriteAddress=r3
.Llo134:
	bc		0,2,.L400	# ne
#             {
#                Ea_AdminDataWritePending = TRUE;
	.d2line		2204
	diab.li		r0,1		# eep_jobresult=r0
.Llo155:
	lis		r3,Ea_AdminDataWritePending@ha		# WriteAddress=r3
.Llo135:
	e_add16i		r3,r3,Ea_AdminDataWritePending@l		# WriteAddress=r3 WriteAddress=r3
	stb		r0,0(r3)		# WriteAddress=r3 eep_jobresult=r0
#                EaSetSubState(EA_S_W_SINGLE_BLOCK);
	.d2line		2205
	diab.li		r0,5		# eep_jobresult=r0
	lis		r3,sub_state@ha		# WriteAddress=r3
	e_add16i		r3,r3,sub_state@l		# WriteAddress=r3 WriteAddress=r3
	stw		r0,0(r3)		# WriteAddress=r3 eep_jobresult=r0
#                EaSetMainState(EA_WRITE);
	.d2line		2206
	diab.li		r0,2		# eep_jobresult=r0
	lis		r3,main_state@ha		# WriteAddress=r3
	e_add16i		r3,r3,main_state@l		# WriteAddress=r3 WriteAddress=r3
	stw		r0,0(r3)		# WriteAddress=r3 eep_jobresult=r0
#                SetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		2207
	lis		r3,ea_jobresult@ha		# WriteAddress=r3
	e_add16i		r3,r3,ea_jobresult@l		# WriteAddress=r3 WriteAddress=r3
	stw		r0,0(r3)		# WriteAddress=r3 eep_jobresult=r0
#                DbgSetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		2208
	lis		r3,Ea_JobResultDbg@ha		# WriteAddress=r3
	e_add16i		r3,r3,Ea_JobResultDbg@l		# WriteAddress=r3 WriteAddress=r3
	stb		r0,0(r3)		# WriteAddress=r3 eep_jobresult=r0
#                Ea_AdminDatawriteStatus = EA_DATA_VALIDATED;
	.d2line		2209
	lis		r3,Ea_AdminDatawriteStatus@ha		# WriteAddress=r3
	e_add16i		r3,r3,Ea_AdminDatawriteStatus@l		# WriteAddress=r3 WriteAddress=r3
	stw		r0,0(r3)		# WriteAddress=r3 eep_jobresult=r0
	b		.L395
.L400:
#             }
#             else
#             {
#                EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		2213
.Llo136:
	diab.li		r0,1		# eep_jobresult=r0
.Llo156:
	lis		r3,memif_status@ha		# WriteAddress=r3
.Llo137:
	e_add16i		r3,r3,memif_status@l		# WriteAddress=r3 WriteAddress=r3
	stw		r0,0(r3)		# WriteAddress=r3 eep_jobresult=r0
	lis		r3,Ea_MemifStatusDbg@ha		# WriteAddress=r3
	e_add16i		r3,r3,Ea_MemifStatusDbg@l		# WriteAddress=r3 WriteAddress=r3
	stw		r0,0(r3)		# WriteAddress=r3 eep_jobresult=r0
	b		.L395
.L399:
#             }
#          }
#          else if (Ea_AdminDataReadPending == TRUE)
	.d2line		2216
.Llo138:
	lis		r3,Ea_AdminDataReadPending@ha
	lbz		r0,Ea_AdminDataReadPending@l(r3)		# eep_jobresult=r0
.Llo157:
	se_cmpi		r0,1		# eep_jobresult=r0
	bc		0,2,.L404	# ne
#          {
#             /* Read second Admin data area */
#             Ea_AdminDataReadPending = FALSE;
	.d2line		2219
.Llo158:
	diab.li		r0,0		# eep_jobresult=r0
.Llo159:
	lis		r3,Ea_AdminDataReadPending@ha
	e_add16i		r3,r3,Ea_AdminDataReadPending@l
	stb		r0,0(r3)		# eep_jobresult=r0
#             IncValidityCounterInternalData(Ea_AdminData);
	.d2line		2220
	lis		r3,Ea_AdminData@ha
	lbz		r0,Ea_AdminData@l(r3)		# eep_jobresult=r0
	cmpi		0,0,r0,254		# eep_jobresult=r0
	bc		0,2,.L430	# ne
.Llo160:
	diab.li		r0,0		# eep_jobresult=r0
.Llo161:
	b		.L431
.L430:
.Llo162:
	lis		r3,Ea_AdminData@ha
	lbz		r3,Ea_AdminData@l(r3)
	diab.addi		r0,r3,1		# eep_jobresult=r0
.L431:
.Llo163:
	lis		r3,Ea_AdminData@ha
	e_add16i		r3,r3,Ea_AdminData@l
	stb		r0,0(r3)		# eep_jobresult=r0
#             Storage_Buffer[0] = GetValidityCounter(Ea_AdminData);
	.d2line		2221
	lis		r3,Ea_AdminData@ha
	lbz		r0,Ea_AdminData@l(r3)		# eep_jobresult=r0
	lis		r3,Storage_Buffer@ha
	e_add16i		r3,r3,Storage_Buffer@l
	stb		r0,0(r3)		# eep_jobresult=r0
#             WriteAddress = Eeprom_Address();
	.d2line		2222
	bl		Eeprom_Address
.Llo139:
	mr		r3,r3		# WriteAddress=r3 WriteAddress=r3
# 
#             if (CheckBlockSizeIsOneCycle)
	.d2line		2224
	lis		r5,(EA_BlockDescriptor+2)@ha
	e_add16i		r5,r5,(EA_BlockDescriptor+2)@l
	lis		r4,Ea_MgmtBlockIndex@ha
	lhz		r0,Ea_MgmtBlockIndex@l(r4)		# eep_jobresult=r0
.Llo164:
	e_mulli		r0,r0,10		# eep_jobresult=r0 eep_jobresult=r0
.Llo165:
	lhzx		r4,r5,r0
	se_addi		r4,2
	rlwinm		r4,r4,0,16,31
	cmpi		0,0,r4,64
	bc		1,1,.L405	# gt
#             {
#                Storage_Buffer[EaBlockSize() + LIGHT_ADMIN_DATALENGTH] = GetValidityCounter(Ea_AdminData);
	.d2line		2226
	lis		r4,Ea_AdminData@ha
	lbz		r7,Ea_AdminData@l(r4)
	lis		r6,(Storage_Buffer+1)@ha
	e_add16i		r6,r6,(Storage_Buffer+1)@l
	lis		r4,(EA_BlockDescriptor+2)@ha
	e_add16i		r4,r4,(EA_BlockDescriptor+2)@l
	lis		r5,Ea_MgmtBlockIndex@ha
	lhz		r0,Ea_MgmtBlockIndex@l(r5)		# eep_jobresult=r0
.Llo166:
	e_mulli		r0,r0,10		# eep_jobresult=r0 eep_jobresult=r0
	lhzx		r0,r4,r0		# eep_jobresult=r0
.Llo167:
	stbx		r7,r6,r0
#                Write_length = EaTotalBlockSize();
	.d2line		2227
	lhz		r0,Ea_MgmtBlockIndex@l(r5)		# eep_jobresult=r0
.Llo168:
	e_mulli		r0,r0,10		# eep_jobresult=r0 eep_jobresult=r0
.Llo169:
	lhzx		r5,r4,r0
	se_addi		r5,2
.Llo210:
	mr		r5,r5		# Write_length=r5 Write_length=r5
	b		.L406
.L405:
#             }
#             else
#             {
#                Write_length = EA_VIRTUAL_PAGE_SIZE;
	.d2line		2231
.Llo211:
	diab.li		r5,64		# Write_length=r5
.L406:
#             }
# 
#             if(E_OK == (*Ea_WriteFctPtr[GetDeviceIndex()])(WriteAddress, Storage_Buffer, (uint32)Write_length))
	.d2line		2234
.Llo140:
	lis		r6,Ea_WriteFctPtr@ha
	e_add16i		r6,r6,Ea_WriteFctPtr@l
	lis		r4,(current_block+18)@ha
	lbz		r0,(current_block+18)@l(r4)		# eep_jobresult=r0
.Llo170:
	rlwinm		r0,r0,2,22,29		# eep_jobresult=r0 eep_jobresult=r0
	lwzx		r0,r6,r0		# eep_jobresult=r0
.Llo171:
	mtspr		ctr,r0		# eep_jobresult=ctr
	lis		r4,Storage_Buffer@ha
	e_add16i		r4,r4,Storage_Buffer@l
	rlwinm		r5,r5,0,16,31		# Write_length=r5 Write_length=r5
.Llo141:
	mr		r3,r3		# WriteAddress=r3 WriteAddress=r3
.Llo142:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
	e_andi.		r3,r3,255
	bc		0,2,.L407	# ne
#             {
#                if(CheckBlockSizeIsOneCycle)
	.d2line		2236
	lis		r4,(EA_BlockDescriptor+2)@ha
	e_add16i		r4,r4,(EA_BlockDescriptor+2)@l
	lis		r3,Ea_MgmtBlockIndex@ha
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# eep_jobresult=r0
.Llo172:
	e_mulli		r0,r0,10		# eep_jobresult=r0 eep_jobresult=r0
.Llo173:
	lhzx		r3,r4,r0
	se_addi		r3,2
	rlwinm		r3,r3,0,16,31
	cmpi		0,0,r3,64
	bc		1,1,.L408	# gt
#                {
#                   Ea_AdminDatawriteStatus = EA_DATA_VALIDATED;
	.d2line		2238
	diab.li		r0,2		# eep_jobresult=r0
.Llo174:
	lis		r3,Ea_AdminDatawriteStatus@ha
	e_add16i		r3,r3,Ea_AdminDatawriteStatus@l
	stw		r0,0(r3)		# eep_jobresult=r0
	b		.L409
.L408:
#                }
#                else if(CheckBlockSizeIsTwoCycle)
	.d2line		2240
.Llo175:
	lis		r4,(EA_BlockDescriptor+2)@ha
	e_add16i		r4,r4,(EA_BlockDescriptor+2)@l
	lis		r3,Ea_MgmtBlockIndex@ha
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# eep_jobresult=r0
.Llo176:
	e_mulli		r0,r0,10		# eep_jobresult=r0 eep_jobresult=r0
.Llo177:
	lhzx		r3,r4,r0
	se_addi		r3,2
	rlwinm		r3,r3,0,16,31
	cmpi		0,0,r3,128
	bc		1,1,.L410	# gt
#                {
#                   Ea_AdminDataWritePending = TRUE;
	.d2line		2242
	diab.li		r0,1		# eep_jobresult=r0
.Llo178:
	lis		r3,Ea_AdminDataWritePending@ha
	e_add16i		r3,r3,Ea_AdminDataWritePending@l
	stb		r0,0(r3)		# eep_jobresult=r0
	b		.L409
.L410:
#                }
#                else
#                {
#                   Ea_AdminDatawriteStatus = EA_DATA_INVALIDATED;
	.d2line		2246
.Llo179:
	diab.li		r0,1		# eep_jobresult=r0
.Llo180:
	lis		r3,Ea_AdminDatawriteStatus@ha
	e_add16i		r3,r3,Ea_AdminDatawriteStatus@l
	stw		r0,0(r3)		# eep_jobresult=r0
.L409:
#                }
# 
#                EaSetSubState(EA_S_W_SINGLE_BLOCK);
	.d2line		2249
.Llo181:
	diab.li		r0,5		# eep_jobresult=r0
.Llo182:
	lis		r3,sub_state@ha
	e_add16i		r3,r3,sub_state@l
	stw		r0,0(r3)		# eep_jobresult=r0
#                EaSetMainState(EA_WRITE);
	.d2line		2250
	diab.li		r0,2		# eep_jobresult=r0
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)		# eep_jobresult=r0
#                SetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		2251
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)		# eep_jobresult=r0
#                DbgSetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		2252
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)		# eep_jobresult=r0
	b		.L395
.L407:
#             }
#             else
#             {
#                EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		2256
.Llo183:
	diab.li		r0,1		# eep_jobresult=r0
.Llo184:
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)		# eep_jobresult=r0
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)		# eep_jobresult=r0
	b		.L395
.L404:
#             }
#          }
#          else
#          {
#             if(Ea_AdminDataWritePending == TRUE)
	.d2line		2261
.Llo185:
	lis		r3,Ea_AdminDataWritePending@ha
	lbz		r0,Ea_AdminDataWritePending@l(r3)		# eep_jobresult=r0
.Llo186:
	se_cmpi		r0,1		# eep_jobresult=r0
	bc		0,2,.L415	# ne
	.section	.text_vle
.L894:
#             {
#                /* Second Admin data area is written to block */
#                uint16 counter, index = ZERO_INDEX;
	.d2line		2264
.Llo187:
	diab.li		r5,0		# index=r5
#                uint16 WriteBlock_offset = EaSingleBlock_Length() + EA_VIRTUAL_PAGE_SIZE;
	.d2line		2265
.Llo215:
	bl		EaSingleBlock_Length
	diab.addi		r6,r3,64		# WriteBlock_offset=r6
# 
#                WriteAddress = Eeprom_Address() + WriteBlock_offset;
	.d2line		2267
.Llo217:
	bl		Eeprom_Address
	rlwinm		r0,r6,0,16,31		# eep_jobresult=r0 WriteBlock_offset=r6
.Llo188:
	se_add		r3,r0		# eep_jobresult=r0
.Llo143:
	mr		r3,r3		# WriteAddress=r3 WriteAddress=r3
# 
#                for(counter = WriteBlock_offset - LIGHT_ADMIN_DATALENGTH; counter < EA_BlockDescriptor[Ea_MgmtBlockIndex].EA_BLOCK_SIZE; counter++)
	.d2line		2269
	diab.li		r4,65535
	se_add		r4,r6		# WriteBlock_offset=r6
.Llo212:
	mr		r4,r4		# counter=r4 counter=r4
.L416:
.Llo189:
	rlwinm		r0,r4,0,16,31		# eep_jobresult=r0 counter=r4
.Llo190:
	lis		r6,(EA_BlockDescriptor+2)@ha		# WriteBlock_offset=r6
.Llo218:
	e_add16i		r6,r6,(EA_BlockDescriptor+2)@l		# WriteBlock_offset=r6 WriteBlock_offset=r6
	lis		r7,Ea_MgmtBlockIndex@ha
	lhz		r7,Ea_MgmtBlockIndex@l(r7)
	e_mulli		r7,r7,10
	lhzx		r6,r6,r7		# WriteBlock_offset=r6 WriteBlock_offset=r6
	se_cmp		r0,r6		# eep_jobresult=r0 WriteBlock_offset=r6
	bc		0,0,.L418	# ge
#                {
#                   Storage_Buffer[index] = current_block.dataptr[counter];
	.d2line		2271
.Llo191:
	lis		r6,(current_block+4)@ha		# WriteBlock_offset=r6
.Llo219:
	lwz		r6,(current_block+4)@l(r6)		# WriteBlock_offset=r6 WriteBlock_offset=r6
	rlwinm		r0,r4,0,16,31		# eep_jobresult=r0 counter=r4
	lbzx		r7,r6,r0		# WriteBlock_offset=r6
	lis		r6,Storage_Buffer@ha		# WriteBlock_offset=r6
	e_add16i		r6,r6,Storage_Buffer@l		# WriteBlock_offset=r6 WriteBlock_offset=r6
	rlwinm		r0,r5,0,16,31		# eep_jobresult=r0 index=r5
	stbx		r7,r6,r0		# WriteBlock_offset=r6
#                   index++;
	.d2line		2272
	diab.addi		r0,r5,1		# eep_jobresult=r0 index=r5
	se_addi		r5,1		# index=r5 index=r5
#                }
	.d2line		2273
	diab.addi		r0,r4,1		# eep_jobresult=r0 counter=r4
	se_addi		r4,1		# counter=r4 counter=r4
	b		.L416
.L418:
#                Storage_Buffer[index] = GetValidityCounter(Ea_AdminData);
	.d2line		2274
.Llo144:
	lis		r4,Ea_AdminData@ha		# counter=r4
.Llo213:
	lbz		r0,Ea_AdminData@l(r4)		# eep_jobresult=r0 counter=r4
.Llo192:
	lis		r4,Storage_Buffer@ha		# counter=r4
	e_add16i		r4,r4,Storage_Buffer@l		# counter=r4 counter=r4
	rlwinm		r6,r5,0,16,31		# WriteBlock_offset=r6 index=r5
	stbx		r0,r4,r6		# counter=r4 eep_jobresult=r0
#                index++;
	.d2line		2275
	se_addi		r5,1		# index=r5 index=r5
	.d2line		2277
	rlwinm		r5,r5,0,16,31		# index=r5 index=r5
# 
#                if(E_OK == (*Ea_WriteFctPtr[GetDeviceIndex()])(WriteAddress, Storage_Buffer, (uint32)index))
.Llo216:
	lis		r7,Ea_WriteFctPtr@ha
	e_add16i		r7,r7,Ea_WriteFctPtr@l
	lis		r6,(current_block+18)@ha		# WriteBlock_offset=r6
.Llo220:
	lbz		r0,(current_block+18)@l(r6)		# eep_jobresult=r0 WriteBlock_offset=r6
	rlwinm		r0,r0,2,22,29		# eep_jobresult=r0 eep_jobresult=r0
	lwzx		r0,r7,r0		# eep_jobresult=r0
.Llo193:
	mtspr		ctr,r0		# eep_jobresult=ctr
.Llo145:
	mr		r3,r3		# WriteAddress=r3 WriteAddress=r3
.Llo146:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo214:
	e_andi.		r3,r3,255
	bc		0,2,.L419	# ne
#                {
#                   EaSetSubState(EA_S_W_SINGLE_BLOCK);
	.d2line		2279
	diab.li		r0,5		# eep_jobresult=r0
.Llo194:
	lis		r3,sub_state@ha
	e_add16i		r3,r3,sub_state@l
	stw		r0,0(r3)		# eep_jobresult=r0
#                   EaSetMainState(EA_WRITE);
	.d2line		2280
	diab.li		r0,2		# eep_jobresult=r0
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)		# eep_jobresult=r0
#                   SetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		2281
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)		# eep_jobresult=r0
#                   DbgSetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		2282
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)		# eep_jobresult=r0
#                   Ea_AdminDataWritePending = FALSE;
	.d2line		2283
	diab.li		r0,0		# eep_jobresult=r0
	lis		r3,Ea_AdminDataWritePending@ha
	e_add16i		r3,r3,Ea_AdminDataWritePending@l
	stb		r0,0(r3)		# eep_jobresult=r0
	b		.L395
.L419:
#                }
#                else
#                {
#                   EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		2287
.Llo195:
	diab.li		r0,1		# eep_jobresult=r0
.Llo196:
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)		# eep_jobresult=r0
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)		# eep_jobresult=r0
	.section	.text_vle
.L895:
.Llo197:
	b		.L395
.L415:
#                }
#             }
#             else
#             {
#                SetEaJobResult(MEMIF_JOB_OK);
	.d2line		2292
	diab.li		r0,0		# eep_jobresult=r0
.Llo198:
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)		# eep_jobresult=r0
#                DbgSetEaJobResult(MEMIF_JOB_OK);
	.d2line		2293
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)		# eep_jobresult=r0
#                SetAdminValidity(EA_VALID);
	.d2line		2294
	diab.li		r5,50
	lis		r3,EA_ManagementBlock@ha
	e_add16i		r3,r3,EA_ManagementBlock@l
	lis		r4,Ea_MgmtBlockIndex@ha
	lhz		r0,Ea_MgmtBlockIndex@l(r4)		# eep_jobresult=r0
	rlwinm		r0,r0,1,15,30		# eep_jobresult=r0 eep_jobresult=r0
.Llo199:
	stbx		r5,r3,r0
#                SetAdminValidityCounter(GetValidityCounter(Ea_AdminData));
	.d2line		2295
	lis		r3,Ea_AdminData@ha
	lbz		r0,Ea_AdminData@l(r3)		# eep_jobresult=r0
.Llo200:
	lis		r3,(EA_ManagementBlock+1)@ha
	e_add16i		r3,r3,(EA_ManagementBlock+1)@l
	lhz		r4,Ea_MgmtBlockIndex@l(r4)
	rlwinm		r4,r4,1,15,30
	stbx		r0,r3,r4		# eep_jobresult=r0
#                Call_JobEndCallback();
	.d2line		2296
	lis		r3,(EA_General+4)@ha
	lwz		r0,(EA_General+4)@l(r3)		# eep_jobresult=r0
	se_cmpi		r0,0		# eep_jobresult=r0
	bc		1,2,.L424	# eq
.Llo201:
	lis		r3,(EA_General+4)@ha
	lwz		r0,(EA_General+4)@l(r3)		# eep_jobresult=r0
	mtspr		ctr,r0		# eep_jobresult=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L424:
#                EaSetMainState(EA_IDLE);
	.d2line		2297
	diab.li		r0,0		# eep_jobresult=r0
.Llo202:
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)		# eep_jobresult=r0
#                EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		2298
	diab.li		r0,1		# eep_jobresult=r0
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)		# eep_jobresult=r0
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)		# eep_jobresult=r0
	.section	.text_vle
.L889:
.Llo203:
	b		.L395
.L397:
#             }
#          }
#       }
#       else
#       {
#          SetEaJobResult(MEMIF_JOB_FAILED);
	.d2line		2304
	diab.li		r0,1		# eep_jobresult=r0
.Llo204:
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)		# eep_jobresult=r0
#          DbgSetEaJobResult(MEMIF_JOB_FAILED);
	.d2line		2305
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)		# eep_jobresult=r0
#          Ea_AdminDataWritePending = FALSE;
	.d2line		2306
	diab.li		r0,0		# eep_jobresult=r0
	lis		r3,Ea_AdminDataWritePending@ha
	e_add16i		r3,r3,Ea_AdminDataWritePending@l
	stb		r0,0(r3)		# eep_jobresult=r0
#          Call_JobErrorCallback();
	.d2line		2307
	lis		r3,EA_General@ha
	lwz		r0,EA_General@l(r3)		# eep_jobresult=r0
	se_cmpi		r0,0		# eep_jobresult=r0
	bc		1,2,.L428	# eq
.Llo205:
	lis		r3,EA_General@ha
	lwz		r0,EA_General@l(r3)		# eep_jobresult=r0
	mtspr		ctr,r0		# eep_jobresult=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L428:
#          EaSetMainState(EA_IDLE);
	.d2line		2308
	diab.li		r0,0		# eep_jobresult=r0
.Llo206:
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)		# eep_jobresult=r0
.L395:
#       }
#    }
#    else
#    {
#       /* keep state */
#    }
# }
	.d2line		2315
	.d2epilogue_begin
.Llo207:
	lwz		r0,20(r1)		# eep_jobresult=r0
	mtspr		lr,r0		# eep_jobresult=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L882:
	.type		Ea_Single_Block,@function
	.size		Ea_Single_Block,.-Ea_Single_Block
# Number of nodes = 474

# Allocations for Ea_Single_Block
#	?a4		$$10
#	?a5		WriteAddress
#	?a6		eep_jobresult
#	?a7		Write_length
#	?a8		counter
#	?a9		index
#	?a10		WriteBlock_offset
# static FUNC(void, EA_CODE) Ea_Write_Processing(void)
	.align		1
	.section	.text_vle
        .d2line         1746,28
#$$ld
.L906:

#$$bf	Ea_Write_Processing,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Ea_Write_Processing:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /* sub state machine for write processing */
#    switch (sub_state)
	.d2line		1749
	lis		r3,sub_state@ha
	lwz		r0,sub_state@l(r3)
	se_cmpi		r0,5
	bc		0,2,.L333	# ne
#    {
# #if (EA_OPT_SINGLE_BLOCK == STD_OFF)
#    case EA_S_OP_IN_PROGRESS:
#       {
#          Ea_Op_In_Progress();
#          break;
#       }
# #endif
#    case EA_S_W_SINGLE_BLOCK:
#       {
#          Ea_Single_Block();
	.d2line		1760
	bl		Ea_Single_Block
	b		.L330
.L333:
#          break;
#       }
#    default:
#       {
#          EaSetMainState(EA_IDLE);
	.d2line		1765
	diab.li		r0,0
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)
#          EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		1766
	diab.li		r0,1
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)
.L330:
#          break;
#       }
#    }
# }
	.d2line		1770
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
.L907:
	.type		Ea_Write_Processing,@function
	.size		Ea_Write_Processing,.-Ea_Write_Processing
# Number of nodes = 16

# Allocations for Ea_Write_Processing
# static FUNC(void, EA_CODE) Ea_Ib_Single_Block(void)
	.align		1
	.section	.text_vle
        .d2line         1925,28
#$$ld
.L911:

#$$bf	Ea_Ib_Single_Block,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Ea_Ib_Single_Block:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if (STD_ON == EA_POLLING_MODE)
#    VAR(MemIf_StatusType, AUTOMATIC) eep_stat;
# #endif
#    VAR(MemIf_JobResultType, AUTOMATIC) eep_jobresult;
# #if (STD_ON == EA_POLLING_MODE)
#    eep_stat = (*Ea_GetStatusFctPtr[GetDeviceIndex()])();
# #endif
#    eep_jobresult = (*Ea_GetJobResultFctPtr[GetDeviceIndex()])();
	.d2line		1934
	lis		r4,Ea_GetJobResultFctPtr@ha
	e_add16i		r4,r4,Ea_GetJobResultFctPtr@l
	lis		r3,(current_block+18)@ha
	lbz		r0,(current_block+18)@l(r3)
	rlwinm		r0,r0,2,22,29
	lwzx		r0,r4,r0
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo221:
	mr		r0,r3		# eep_jobresult=r0 eep_jobresult=r3
# 
# #if (STD_ON == EA_POLLING_MODE)
#    if (MEMIF_IDLE == eep_stat)
# #else
#    if (MEMIF_IDLE == memif_status)
	.d2line		1939
	lis		r3,memif_status@ha
.Llo222:
	lwz		r3,memif_status@l(r3)
.Llo223:
	se_cmpi		r3,1
	bc		0,2,.L347	# ne
# #endif
#    {
#       if (MEMIF_JOB_OK == eep_jobresult)
	.d2line		1942
	se_cmpi		r0,0		# eep_jobresult=r0
	bc		0,2,.L349	# ne
#       {
#          if (TRUE == Ea_AdminDataReadPending)
	.d2line		1944
.Llo224:
	lis		r3,Ea_AdminDataReadPending@ha
	lbz		r0,Ea_AdminDataReadPending@l(r3)		# eep_jobresult=r0
.Llo225:
	se_cmpi		r0,1		# eep_jobresult=r0
	bc		0,2,.L350	# ne
	.section	.text_vle
.L916:
#          {
#             /* Single Block second Admin data is read*/
#             uint16 ReadBlock_offset;
#             uint32 Read_Address;
# 
#             EaSetMemIfStatus(MEMIF_BUSY);
	.d2line		1950
.Llo226:
	diab.li		r0,2		# eep_jobresult=r0
.Llo227:
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)		# eep_jobresult=r0
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)		# eep_jobresult=r0
# 
#             ReadBlock_offset = EaTotalBlockSize() - LIGHT_ADMIN_DATALENGTH;
	.d2line		1952
	lis		r4,(EA_BlockDescriptor+2)@ha
	e_add16i		r4,r4,(EA_BlockDescriptor+2)@l
	lis		r3,Ea_MgmtBlockIndex@ha
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# eep_jobresult=r0
	e_mulli		r0,r0,10		# eep_jobresult=r0 eep_jobresult=r0
.Llo228:
	lhzx		r5,r4,r0		# ReadBlock_offset=r5
.Llo263:
	se_addi		r5,1		# ReadBlock_offset=r5 ReadBlock_offset=r5
	mr		r5,r5		# ReadBlock_offset=r5 ReadBlock_offset=r5
#             Read_Address = Eeprom_Address() + (uint32)ReadBlock_offset;
	.d2line		1953
	bl		Eeprom_Address
	rlwinm		r5,r5,0,16,31		# ReadBlock_offset=r5 ReadBlock_offset=r5
	se_add		r3,r5		# ReadBlock_offset=r5
# 
#             if(E_OK == (*Ea_ReadFctPtr[GetDeviceIndex()])(Read_Address, Ea_AdminData, (uint32)LIGHT_ADMIN_DATALENGTH))
	.d2line		1955
.Llo266:
	lis		r5,Ea_ReadFctPtr@ha		# ReadBlock_offset=r5
	e_add16i		r5,r5,Ea_ReadFctPtr@l		# ReadBlock_offset=r5 ReadBlock_offset=r5
	lis		r4,(current_block+18)@ha
	lbz		r0,(current_block+18)@l(r4)		# eep_jobresult=r0
.Llo229:
	rlwinm		r0,r0,2,22,29		# eep_jobresult=r0 eep_jobresult=r0
	lwzx		r0,r5,r0		# eep_jobresult=r0 ReadBlock_offset=r5
.Llo230:
	mtspr		ctr,r0		# eep_jobresult=ctr
	lis		r4,Ea_AdminData@ha
	e_add16i		r4,r4,Ea_AdminData@l
	mr		r0,r3		# Read_Address=r0 Read_Address=r3
	diab.li		r5,1		# ReadBlock_offset=r5
.Llo264:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo267:
	e_andi.		r3,r3,255
	bc		0,2,.L352	# ne
#             {
#                EaSetSubState(EA_S_IB_SINGLE_BLOCK);
	.d2line		1957
	diab.li		r4,1
	lis		r3,sub_state@ha
	e_add16i		r3,r3,sub_state@l
	stw		r4,0(r3)
#                EaSetMainState(EA_INVALIDATE);
	.d2line		1958
	diab.li		r0,4		# eep_jobresult=r0
.Llo231:
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)		# eep_jobresult=r0
#                Ea_AdminDataWritePending = TRUE;
	.d2line		1959
	lis		r3,Ea_AdminDataWritePending@ha
	e_add16i		r3,r3,Ea_AdminDataWritePending@l
	stb		r4,0(r3)
#                Ea_AdminDataReadPending = FALSE;
	.d2line		1960
	diab.li		r5,0		# ReadBlock_offset=r5
.Llo265:
	lis		r3,Ea_AdminDataReadPending@ha
	e_add16i		r3,r3,Ea_AdminDataReadPending@l
	stb		r5,0(r3)		# ReadBlock_offset=r5
#                SetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		1961
	diab.li		r0,2		# eep_jobresult=r0
	lis		r4,ea_jobresult@ha
	e_add16i		r4,r4,ea_jobresult@l
	stw		r0,0(r4)		# eep_jobresult=r0
#                DbgSetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		1962
	lis		r4,Ea_JobResultDbg@ha
	e_add16i		r4,r4,Ea_JobResultDbg@l
	stb		r0,0(r4)		# eep_jobresult=r0
#                Ea_AdminDataReadPending =  FALSE;
	.d2line		1963
	stb		r5,0(r3)		# ReadBlock_offset=r5
	b		.L347
.L352:
#             }
#             else
#             {
#                EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		1967
.Llo232:
	diab.li		r0,1		# eep_jobresult=r0
.Llo233:
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)		# eep_jobresult=r0
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)		# eep_jobresult=r0
	.section	.text_vle
.L917:
.Llo234:
	b		.L347
.L350:
#             }
#          }
#          else if (TRUE == Ea_AdminDataWritePending)
	.d2line		1970
	lis		r3,Ea_AdminDataWritePending@ha
	lbz		r0,Ea_AdminDataWritePending@l(r3)		# eep_jobresult=r0
.Llo235:
	se_cmpi		r0,1		# eep_jobresult=r0
	bc		0,2,.L356	# ne
#          {
#             /*Incremented Admin data is updated to invalidate block*/
#             Ea_AdminDataWritePending = FALSE;
	.d2line		1973
.Llo236:
	diab.li		r0,0		# eep_jobresult=r0
.Llo237:
	lis		r3,Ea_AdminDataWritePending@ha
	e_add16i		r3,r3,Ea_AdminDataWritePending@l
	stb		r0,0(r3)		# eep_jobresult=r0
#             if ((admin_buffer[0] == Ea_AdminData[0]) || (EA_INCONSISTENT == admin_buffer[0]))
	.d2line		1974
	lis		r3,admin_buffer@ha
	lbz		r0,admin_buffer@l(r3)		# eep_jobresult=r0
	lis		r3,Ea_AdminData@ha
	lbz		r3,Ea_AdminData@l(r3)
	se_cmp		r0,r3		# eep_jobresult=r0
	bc		1,2,.L369	# eq
.Llo238:
	lis		r3,admin_buffer@ha
	lbz		r0,admin_buffer@l(r3)		# eep_jobresult=r0
.Llo239:
	cmpi		0,0,r0,255		# eep_jobresult=r0
	bc		0,2,.L347	# ne
.L369:
	.section	.text_vle
.L924:
#             {
#                uint32 WriteAddress;
# 
#                EaSetMemIfStatus(MEMIF_BUSY);
	.d2line		1978
.Llo240:
	diab.li		r0,2		# eep_jobresult=r0
.Llo241:
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)		# eep_jobresult=r0
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)		# eep_jobresult=r0
# 
#                IncValidityCounterInternalData(Ea_AdminData);
	.d2line		1980
	lis		r3,Ea_AdminData@ha
	lbz		r0,Ea_AdminData@l(r3)		# eep_jobresult=r0
	cmpi		0,0,r0,254		# eep_jobresult=r0
	bc		0,2,.L370	# ne
.Llo242:
	diab.li		r0,0		# eep_jobresult=r0
.Llo243:
	b		.L371
.L370:
.Llo244:
	lis		r3,Ea_AdminData@ha
	lbz		r3,Ea_AdminData@l(r3)
	diab.addi		r0,r3,1		# eep_jobresult=r0
.L371:
.Llo245:
	lis		r3,Ea_AdminData@ha
	e_add16i		r3,r3,Ea_AdminData@l
	stb		r0,0(r3)		# eep_jobresult=r0
#                WriteAddress = Eeprom_Address();
	.d2line		1981
	bl		Eeprom_Address
# 
#                if (E_OK == (*Ea_WriteFctPtr[GetDeviceIndex()])(WriteAddress, Ea_AdminData, (uint32)LIGHT_ADMIN_DATALENGTH))
	.d2line		1983
.Llo246:
	lis		r5,Ea_WriteFctPtr@ha
	e_add16i		r5,r5,Ea_WriteFctPtr@l
	lis		r4,(current_block+18)@ha
	lbz		r0,(current_block+18)@l(r4)		# eep_jobresult=r0
.Llo247:
	rlwinm		r0,r0,2,22,29		# eep_jobresult=r0 eep_jobresult=r0
	lwzx		r0,r5,r0		# eep_jobresult=r0
.Llo248:
	mtspr		ctr,r0		# eep_jobresult=ctr
	lis		r4,Ea_AdminData@ha
	e_add16i		r4,r4,Ea_AdminData@l
	mr		r0,r3		# WriteAddress=r0 WriteAddress=r3
	diab.li		r5,1
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo268:
	e_andi.		r3,r3,255
	bc		0,2,.L359	# ne
#                {
#                   EaSetSubState(EA_S_IB_SINGLE_BLOCK);
	.d2line		1985
	diab.li		r0,1		# eep_jobresult=r0
.Llo249:
	lis		r3,sub_state@ha
	e_add16i		r3,r3,sub_state@l
	stw		r0,0(r3)		# eep_jobresult=r0
#                   EaSetMainState(EA_INVALIDATE);
	.d2line		1986
	diab.li		r0,4		# eep_jobresult=r0
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)		# eep_jobresult=r0
#                   SetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		1987
	diab.li		r0,2		# eep_jobresult=r0
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)		# eep_jobresult=r0
#                   DbgSetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		1988
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)		# eep_jobresult=r0
	b		.L347
.L359:
#                }
#                else
#                {
#                   EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		1992
.Llo250:
	diab.li		r0,1		# eep_jobresult=r0
.Llo251:
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)		# eep_jobresult=r0
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)		# eep_jobresult=r0
	.section	.text_vle
.L925:
.Llo252:
	b		.L347
.L356:
#                }
#             }
#          }
#          else
#          {
#             SetEaJobResult(MEMIF_JOB_OK);
	.d2line		1998
	diab.li		r0,0		# eep_jobresult=r0
.Llo253:
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)		# eep_jobresult=r0
#             DbgSetEaJobResult(MEMIF_JOB_OK);
	.d2line		1999
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)		# eep_jobresult=r0
#             SetAdminValidity(EA_INVALID);
	.d2line		2000
	diab.li		r5,51
	lis		r3,EA_ManagementBlock@ha
	e_add16i		r3,r3,EA_ManagementBlock@l
	lis		r4,Ea_MgmtBlockIndex@ha
	lhz		r0,Ea_MgmtBlockIndex@l(r4)		# eep_jobresult=r0
	rlwinm		r0,r0,1,15,30		# eep_jobresult=r0 eep_jobresult=r0
.Llo254:
	stbx		r5,r3,r0
#             SetAdminValidityCounter(GetValidityCounter(Ea_AdminData));
	.d2line		2001
	lis		r3,Ea_AdminData@ha
	lbz		r0,Ea_AdminData@l(r3)		# eep_jobresult=r0
.Llo255:
	lis		r3,(EA_ManagementBlock+1)@ha
	e_add16i		r3,r3,(EA_ManagementBlock+1)@l
	lhz		r4,Ea_MgmtBlockIndex@l(r4)
	rlwinm		r4,r4,1,15,30
	stbx		r0,r3,r4		# eep_jobresult=r0
#             Call_JobEndCallback();
	.d2line		2002
	lis		r3,(EA_General+4)@ha
	lwz		r0,(EA_General+4)@l(r3)		# eep_jobresult=r0
	se_cmpi		r0,0		# eep_jobresult=r0
	bc		1,2,.L364	# eq
.Llo256:
	lis		r3,(EA_General+4)@ha
	lwz		r0,(EA_General+4)@l(r3)		# eep_jobresult=r0
	mtspr		ctr,r0		# eep_jobresult=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L364:
#             EaSetMainState(EA_IDLE);
	.d2line		2003
	diab.li		r0,0		# eep_jobresult=r0
.Llo257:
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)		# eep_jobresult=r0
	b		.L347
.L349:
#          }
#       }
#       else
#       {
#          SetEaJobResult(MEMIF_JOB_FAILED);
	.d2line		2008
.Llo258:
	diab.li		r0,1		# eep_jobresult=r0
.Llo259:
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)		# eep_jobresult=r0
#          DbgSetEaJobResult(MEMIF_JOB_FAILED);
	.d2line		2009
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)		# eep_jobresult=r0
#          Call_JobErrorCallback();
	.d2line		2010
	lis		r3,EA_General@ha
	lwz		r0,EA_General@l(r3)		# eep_jobresult=r0
	se_cmpi		r0,0		# eep_jobresult=r0
	bc		1,2,.L367	# eq
.Llo260:
	lis		r3,EA_General@ha
	lwz		r0,EA_General@l(r3)		# eep_jobresult=r0
	mtspr		ctr,r0		# eep_jobresult=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L367:
#          EaSetMainState(EA_IDLE);
	.d2line		2011
	diab.li		r0,0		# eep_jobresult=r0
.Llo261:
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)		# eep_jobresult=r0
.L347:
#       }
#    }
#    else
#    {
#       /* keep state */
#    }
# }
	.d2line		2018
	.d2epilogue_begin
.Llo262:
	lwz		r0,20(r1)		# eep_jobresult=r0
	mtspr		lr,r0		# eep_jobresult=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L912:
	.type		Ea_Ib_Single_Block,@function
	.size		Ea_Ib_Single_Block,.-Ea_Ib_Single_Block
# Number of nodes = 272

# Allocations for Ea_Ib_Single_Block
#	?a4		$$9
#	?a5		eep_jobresult
#	?a6		ReadBlock_offset
#	?a7		Read_Address
#	?a8		WriteAddress
# static FUNC(void, EA_CODE) Ea_Ib_No_Process(void)
	.align		1
	.section	.text_vle
        .d2line         2020,28
#$$ld
.L932:

#$$bf	Ea_Ib_No_Process,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Ea_Ib_No_Process:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    EaSetMainState(EA_IDLE);
	.d2line		2022
	diab.li		r4,0
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r4,0(r3)
#    EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		2023
	diab.li		r0,1
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)
#    SetEaJobResult(MEMIF_JOB_OK);
	.d2line		2024
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r4,0(r3)
#    DbgSetEaJobResult(MEMIF_JOB_OK);
	.d2line		2025
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r4,0(r3)
#    Call_JobEndCallback();
	.d2line		2026
	lis		r3,(EA_General+4)@ha
	lwz		r0,(EA_General+4)@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L383	# eq
	lis		r3,(EA_General+4)@ha
	lwz		r0,(EA_General+4)@l(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L383:
# }
	.d2line		2027
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
.L933:
	.type		Ea_Ib_No_Process,@function
	.size		Ea_Ib_No_Process,.-Ea_Ib_No_Process
# Number of nodes = 29

# Allocations for Ea_Ib_No_Process
# static FUNC(void, EA_CODE) Ea_InvalidateBlock_Processing(void)
	.align		1
	.section	.text_vle
        .d2line         1894,28
#$$ld
.L937:

#$$bf	Ea_InvalidateBlock_Processing,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Ea_InvalidateBlock_Processing:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /* sub state machine for invalidate block processing */
#    switch (sub_state)
	.d2line		1897
	lis		r3,sub_state@ha
	lwz		r6,sub_state@l(r3)
	se_cmpi		r6,0
	bc		1,2,.L338	# eq
	se_cmpi		r6,1
	bc		1,2,.L340	# eq
	b		.L341
.L338:
#    {
#    case EA_S_IB_NO_PROCESS:
#       {
#          Ea_Ib_No_Process();
	.d2line		1901
	bl		Ea_Ib_No_Process
	b		.L337
.L340:
#          break;
#       }
# #if (EA_OPT_SINGLE_BLOCK == STD_OFF)
#    case EA_S_OP_IN_PROGRESS:
#       {
#          Ea_Op_In_Progress();
#          break;
#       }
# #endif
#    case EA_S_IB_SINGLE_BLOCK:
#       {
#          Ea_Ib_Single_Block();
	.d2line		1913
	bl		Ea_Ib_Single_Block
	b		.L337
.L341:
#          break;
#       }
#    default:
#       {
#          EaSetMainState(EA_IDLE);
	.d2line		1918
	diab.li		r0,0
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)
#          EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		1919
	diab.li		r0,1
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)
.L337:
#          break;
#       }
#    }
# }
	.d2line		1923
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
.L938:
	.type		Ea_InvalidateBlock_Processing,@function
	.size		Ea_InvalidateBlock_Processing,.-Ea_InvalidateBlock_Processing
# Number of nodes = 18

# Allocations for Ea_InvalidateBlock_Processing
# static FUNC(void, EA_CODE) Ea_EraseImmediateData_Processing(void)
	.align		1
	.section	.text_vle
        .d2line         2090,28
#$$ld
.L942:

#$$bf	Ea_EraseImmediateData_Processing,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Ea_EraseImmediateData_Processing:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /* sub state machine for erase immediate data processing */
#    switch (sub_state)
	.d2line		2093
	lis		r3,sub_state@ha
	lwz		r0,sub_state@l(r3)
	se_cmpi		r0,6
	bc		0,2,.L391	# ne
#    {
#    case EA_S_EID_SINGLE_BLOCK:
#       {
#          Ea_Single_Block();
	.d2line		2097
	bl		Ea_Single_Block
	b		.L388
.L391:
#          break;
#       }
# #if (EA_OPT_SINGLE_BLOCK == STD_OFF)
#    case EA_S_OP_IN_PROGRESS:
#       {
#          Ea_Op_In_Progress();
#          break;
#       }
# #endif
#    default:
#       {
#          EaSetMainState(EA_IDLE);
	.d2line		2109
	diab.li		r0,0
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)
#          EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		2110
	diab.li		r0,1
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)
.L388:
#          break;
#       }
#    }
# }
	.d2line		2114
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
.L943:
	.type		Ea_EraseImmediateData_Processing,@function
	.size		Ea_EraseImmediateData_Processing,.-Ea_EraseImmediateData_Processing
# Number of nodes = 16

# Allocations for Ea_EraseImmediateData_Processing
# FUNC(Std_ReturnType, EA_CODE) Ea_ConsistencyCheck(void)
	.align		2
	.section	.text_vle
        .d2line         3729,31
#$$ld
.L947:

#$$bf	Ea_ConsistencyCheck,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		Ea_ConsistencyCheck
	.d2_cfa_start __cie
Ea_ConsistencyCheck:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo269:
	stw		r0,20(r1)		# retVal=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Std_ReturnType retVal;
# 
#    if (EA_PC_HASH_VALUE == Ea_LTtoPCHashValue)
	.d2line		3733
	lis		r3,Ea_LTtoPCHashValue@ha		# retVal=r3
	lwz		r0,Ea_LTtoPCHashValue@l(r3)		# retVal=r0 retVal=r3
	e_lis		r3,41019		# retVal=r3
	e_or2i		r3,59320		# retVal=r3
	se_cmpl		r0,r3		# retVal=r0 retVal=r3
#    {
#       retVal = E_OK;
	.d2line		3735
	isel		r3,0,r0,2		# retVal=r3 retVal=r0
.L715:
#    }
#    else
#    {
#       retVal = E_NOT_OK;
	.d2line		3739
.Llo270:
	diab.li		r0,1		# retVal=r0
.Llo271:
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3 retVal=r0
.L716:
#    }
# 
#    return retVal;
	.d2line		3742
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		3743
	.d2epilogue_begin
.Llo272:
	lwz		r0,20(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L948:
	.type		Ea_ConsistencyCheck,@function
	.size		Ea_ConsistencyCheck,.-Ea_ConsistencyCheck
# Number of nodes = 12

# Allocations for Ea_ConsistencyCheck
#	?a4		retVal
# FUNC(void, EA_CODE) Ea_Init(void)
	.align		2
	.section	.text_vle
        .d2line         2600,21
#$$ld
.L954:

#$$bf	Ea_Init,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r9,r10,r11,cr0,lr
	.globl		Ea_Init
	.d2_cfa_start __cie
Ea_Init:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(uint16, AUTOMATIC) index; /* auxliary variable
#                                   * initailize main state */
# 
#    DbgSetEaJobResult(MEMIF_JOB_OK);
	.d2line		2605
	diab.li		r3,0
	lis		r4,Ea_JobResultDbg@ha
	e_add16i		r4,r4,Ea_JobResultDbg@l
	stb		r3,0(r4)
#    /* initialization of current block to process */
#    EaSetCurrentBlock((uint16)NO_BLOCK, ZERO_LENGTH, NULL_PTR, ZERO_WRITES, \
	.d2line		2607
	stw		r3,8(r1)
	diab.li		r4,0
	diab.li		r5,0
	diab.li		r6,0
	diab.li		r7,2
	mr		r8,r3
	diab.li		r9,1
	diab.li		r10,49
	bl		EaSetCurrentBlock
#                      INITIAL_RETRY_AMOUNT, (uint8)ZERO_WRITES, \
#                      INITIAL_BLOCK_TOWRITE, EA_UNINIT, DEVICE_INDEX_ZERO);
#    if (E_OK == Ea_ConsistencyCheck())
	.d2line		2610
	bl		Ea_ConsistencyCheck
	e_andi.		r3,r3,255
	bc		0,2,.L460	# ne
#    {
#       EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		2612
	diab.li		r0,1
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)
# 
#       EaSetSubState(EA_S_IB_NO_PROCESS);
	.d2line		2614
	diab.li		r5,0
	lis		r3,sub_state@ha
	e_add16i		r3,r3,sub_state@l
	stw		r5,0(r3)
#       Ea_MgmtBlockIndex = 0U;
	.d2line		2615
	lis		r3,Ea_MgmtBlockIndex@ha
	e_add16i		r3,r3,Ea_MgmtBlockIndex@l
	sth		r5,0(r3)
#       Ea_CurrentReadBlockOffset = 0U;
	.d2line		2616
	lis		r3,Ea_CurrentReadBlockOffset@ha
	e_add16i		r3,r3,Ea_CurrentReadBlockOffset@l
	sth		r5,0(r3)
# 
#       SetValidity(0U);
	.d2line		2618
	lis		r3,(current_block+13)@ha
	stb		r5,(current_block+13)@l(r3)
#       SetBlockStatus(0U);
	.d2line		2619
	lis		r3,(current_block+15)@ha
	stb		r5,(current_block+15)@l(r3)
#       SetWriteAmounts(0U);
	.d2line		2620
	lis		r3,(current_block+8)@ha
	stw		r5,(current_block+8)@l(r3)
#       SetBlockToWrite(0U);
	.d2line		2621
	lis		r3,(current_block+14)@ha
	stb		r5,(current_block+14)@l(r3)
#       SetBlockFound(FALSE, 0U);
	.d2line		2622
	lis		r3,(current_block+16)@ha
	stb		r5,(current_block+16)@l(r3)
	lis		r3,(current_block+17)@ha
	stb		r5,(current_block+17)@l(r3)
# 
#       current_block.block_nb = 0U;
	.d2line		2624
	lis		r3,current_block@ha
	e_add16i		r3,r3,current_block@l
	sth		r5,0(r3)
#       current_block.read_length = 0U;
	.d2line		2625
	lis		r3,(current_block+2)@ha
	sth		r5,(current_block+2)@l(r3)
#       current_block.dataptr = NULL_PTR;
	.d2line		2626
	lis		r3,(current_block+4)@ha
	stw		r5,(current_block+4)@l(r3)
#       current_block.retry_number = 0U;
	.d2line		2627
	lis		r3,(current_block+12)@ha
	stb		r5,(current_block+12)@l(r3)
#       current_block.device_index = 0U;
	.d2line		2628
	lis		r3,(current_block+18)@ha
	stb		r5,(current_block+18)@l(r3)
# 
# #if (EA_DEV_ERROR_DETECT == STD_ON)
#       prev_blk_no = 0;
# #endif
# 
#       for (index = 0U; index < (sizeof(Storage_Buffer) / sizeof(Storage_Buffer[0])); index++)
	.d2line		2634
	diab.li		r3,0
.L463:
.Llo273:
	rlwinm		r5,r3,0,16,31		# index=r3
	cmpli		0,0,r5,64
	bc		0,0,.L465	# ge
#       {
#          Storage_Buffer[index] = 0U;
	.d2line		2636
	diab.li		r0,0
	lis		r4,Storage_Buffer@ha
	e_add16i		r4,r4,Storage_Buffer@l
	rlwinm		r5,r3,0,16,31		# index=r3
	stbx		r0,r4,r5
#       }
	.d2line		2637
	diab.addi		r5,r3,1		# index=r3
	se_addi		r3,1		# index=r3 index=r3
	b		.L463
.L465:
#       /* initialization of management data for all blocks */
#       for (index = (uint16)EA_FIRST_BLOCK; index < EA_TOTAL_BLOCK_NUMBERS; index++)
	.d2line		2639
.Llo274:
	diab.li		r3,0		# index=r3
.L466:
.Llo275:
	rlwinm		r0,r3,0,16,31		# index=r3
	se_cmpi		r0,3
	bc		0,0,.L468	# ge
#       {
# #if (EA_OPT_SINGLE_BLOCK == STD_OFF)
#          EA_ManagementBlock[index].status = EA_UNINIT;
#          EA_ManagementBlock[index].block_to_write=INITIAL_BLOCK_TOWRITE;
#          EA_ManagementBlock[index].write_amounts = ZERO_WRITES;
# #endif
#          EA_ManagementBlock[index].validity = EA_UNINIT;
	.d2line		2646
	diab.li		r5,49
	lis		r4,EA_ManagementBlock@ha
	e_add16i		r4,r4,EA_ManagementBlock@l
	rlwinm		r0,r3,1,15,30		# index=r3
	stbux		r5,r4,r0
#          EA_ManagementBlock[index].validity_counter = EA_UNINIT;
	.d2line		2647
	lis		r4,(EA_ManagementBlock+1)@ha
	e_add16i		r4,r4,(EA_ManagementBlock+1)@l
	stbx		r5,r4,r0
#       }
	.d2line		2648
	diab.addi		r0,r3,1		# index=r3
	se_addi		r3,1		# index=r3 index=r3
	b		.L466
.L468:
#       Ea_InitDone = TRUE;
	.d2line		2649
.Llo276:
	diab.li		r0,1
	lis		r3,Ea_InitDone@ha		# index=r3
.Llo277:
	e_add16i		r3,r3,Ea_InitDone@l		# index=r3 index=r3
	stb		r0,0(r3)		# index=r3
#       Ea_AdminDatawriteStatus = EA_ADMIN_DATA_INITIAL;
	.d2line		2650
	diab.li		r0,0
	lis		r3,Ea_AdminDatawriteStatus@ha		# index=r3
	e_add16i		r3,r3,Ea_AdminDatawriteStatus@l		# index=r3 index=r3
	stw		r0,0(r3)		# index=r3
#       EaSetMainState(EA_IDLE);
	.d2line		2651
	lis		r3,main_state@ha		# index=r3
	e_add16i		r3,r3,main_state@l		# index=r3 index=r3
	stw		r0,0(r3)		# index=r3
	b		.L459
.L460:
#    }
#    else
#    {
#       Ea_InitDone = FALSE;
	.d2line		2655
.Llo278:
	diab.li		r0,0
	lis		r3,Ea_InitDone@ha
	e_add16i		r3,r3,Ea_InitDone@l
	stb		r0,0(r3)
.L459:
#       EA_ASSERT_DET(EA_INIT_ID, EA_E_INIT_FAILED);
#    }
# }
	.d2line		2658
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
.L955:
	.type		Ea_Init,@function
	.size		Ea_Init,.-Ea_Init
# Number of nodes = 181

# Allocations for Ea_Init
#	?a4		index
# FUNC(void, EA_CODE) Ea_SetMode
	.align		2
	.section	.text_vle
        .d2line         2661,21
#$$ld
.L961:

#$$bf	Ea_SetMode,interprocedural,rasave,nostackparams
	.globl		Ea_SetMode
	.d2_cfa_start __cie
Ea_SetMode:
.Llo279:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Mode=r0 Mode=r3
	.d2prologue_end
# (
#    VAR(MemIf_ModeType, AUTOMATIC) Mode
# )
# {
#    VAR(MemIf_StatusType, AUTOMATIC) mod_state;
# 
#    #if (STD_ON == EA_POLLING_MODE)
#    mod_state = (*Ea_GetStatusFctPtr[GetDeviceIndex()])();
#    #else
#    mod_state = memif_status;
	.d2line		2671
	lis		r3,memif_status@ha
.Llo280:
	lwz		r4,memif_status@l(r3)
.Llo283:
	mr		r4,r4		# mod_state=r4 mod_state=r4
#    #endif
# 
#    if(FALSE == Ea_InitDone)
	.d2line		2674
	lis		r3,Ea_InitDone@ha
	lbz		r3,Ea_InitDone@l(r3)
	se_cmpi		r3,0
	bc		1,2,.L476	# eq
#    {
#       EA_ASSERT_DET(EA_SETMODE_ID, EA_E_UNINIT);
#    }
#    else if(MEMIF_UNINIT == mod_state)
	.d2line		2678
.Llo281:
	se_cmpi		r4,0		# mod_state=r4
	bc		1,2,.L476	# eq
#    {
#       EA_ASSERT_DET(EA_SETMODE_ID, EA_E_UNINIT);
#    }
#    else if(MEMIF_BUSY == mod_state)
	.d2line		2682
	se_cmpi		r4,2		# mod_state=r4
	bc		1,2,.L476	# eq
#    {
#       EA_ASSERT_DET(EA_SETMODE_ID, EA_E_BUSY);
#    }
#    else if(MEMIF_BUSY_INTERNAL == mod_state)
	.d2line		2686
	se_cmpi		r4,3		# mod_state=r4
	bc		1,2,.L476	# eq
#    {
#       EA_ASSERT_DET(EA_SETMODE_ID, EA_E_BUSY_INTERNAL);
#    }
#    else
#    {
#       /* Request just passed to lower layer */
#       (*Ea_SetModeFctPtr[GetDeviceIndex()])(Mode);
	.d2line		2693
.Llo284:
	lis		r3,Ea_SetModeFctPtr@ha
	e_add16i		r3,r3,Ea_SetModeFctPtr@l
	lis		r4,(current_block+18)@ha		# mod_state=r4
.Llo285:
	lbz		r4,(current_block+18)@l(r4)		# mod_state=r4 mod_state=r4
	rlwinm		r4,r4,2,22,29		# mod_state=r4 mod_state=r4
.Llo286:
	lwzx		r3,r3,r4
	mtspr		ctr,r3
	mr		r3,r0		# Mode=r3 Mode=r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L476:
#    }
# }
	.d2line		2695
	.d2epilogue_begin
.Llo282:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L962:
	.type		Ea_SetMode,@function
	.size		Ea_SetMode,.-Ea_SetMode
# Number of nodes = 32

# Allocations for Ea_SetMode
#	?a4		Mode
#	?a5		mod_state
# FUNC(Std_ReturnType, EA_CODE) Ea_Read
	.align		2
	.section	.text_vle
        .d2line         2700,31
#$$ld
.L971:

#$$bf	Ea_Read,interprocedural,rasave,nostackparams
	.globl		Ea_Read
	.d2_cfa_start __cie
Ea_Read:
.Llo287:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# BlockNumber=r31 BlockNumber=r3
	mr		r30,r4		# BlockOffset=r30 BlockOffset=r4
	mr		r29,r5		# DataBufferPtr=r29 DataBufferPtr=r5
	mr		r28,r6		# Length=r28 Length=r6
	.d2prologue_end
# (
#    VAR(uint16, AUTOMATIC) BlockNumber,
#    VAR(uint16, AUTOMATIC) BlockOffset,
#    P2VAR(uint8, AUTOMATIC,EA_APPL_DATA) DataBufferPtr,
#    VAR(uint16, AUTOMATIC) Length
# )
# {
#    VAR(uint32,AUTOMATIC) ReadAddress;
#    VAR(Std_ReturnType, AUTOMATIC) result = E_NOT_OK;
	.d2line		2709
	diab.li		r27,1		# result=r27
#    VAR(MemIf_StatusType, AUTOMATIC) mod_state;
#    VAR(uint16, AUTOMATIC) block_index;
#    Ea_AdminDataReadPending = FALSE;
	.d2line		2712
.Llo310:
	diab.li		r0,0
	lis		r3,Ea_AdminDataReadPending@ha
.Llo288:
	e_add16i		r3,r3,Ea_AdminDataReadPending@l
	stb		r0,0(r3)
# 
#    #if (STD_ON == EA_POLLING_MODE)
#    mod_state = (*Ea_GetStatusFctPtr[EaDevice_Index()])();
#    #else
#    mod_state = memif_status;
	.d2line		2717
	lis		r3,memif_status@ha
	lwz		r26,memif_status@l(r3)
.Llo321:
	mr		r26,r26		# mod_state=r26 mod_state=r26
#    #endif
# 
#    if(FALSE == Ea_InitDone)
	.d2line		2720
	lis		r3,Ea_InitDone@ha
	lbz		r0,Ea_InitDone@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L488	# eq
#    {
#       EA_ASSERT_DET(EA_READ_ID, EA_E_UNINIT);
#    }
#    else if(MEMIF_UNINIT == mod_state)
	.d2line		2724
.Llo289:
	se_cmpi		r26,0		# mod_state=r26
.Llo295:
	bc		1,2,.L488	# eq
#    {
#       EA_ASSERT_DET(EA_READ_ID, EA_E_UNINIT);
#    }
#    else if(MEMIF_BUSY == mod_state)
	.d2line		2728
	se_cmpi		r26,2		# mod_state=r26
	bc		1,2,.L488	# eq
#    {
#       EA_ASSERT_DET(EA_READ_ID, EA_E_BUSY);
#    }
#    else if(NULL_PTR == DataBufferPtr)
	.d2line		2732
	se_cmpi		r29,0		# DataBufferPtr=r29
	bc		1,2,.L488	# eq
#    {
#       EA_ASSERT_DET(EA_READ_ID, EA_E_INVALID_DATA_POINTER);
#    }
#    else if(E_NOT_OK == CheckStsBusyInternalMgmtOp(mod_state, BlockNumber))
	.d2line		2736
	mr		r4,r31		# BlockNumber=r4 BlockNumber=r31
	mr		r3,r26		# mod_state=r3 mod_state=r26
	bl		CheckStsBusyInternalMgmtOp
	rlwinm		r3,r3,0,24,31		# mod_state=r3 mod_state=r3
	se_cmpi		r3,1		# mod_state=r3
	bc		1,2,.L488	# eq
#    {
#       EA_ASSERT_DET(EA_READ_ID, EA_E_BUSY_INTERNAL);
#    }
#    else if(E_NOT_OK == CheckBlockNumber(BlockNumber, &block_index))
	.d2line		2740
	diab.addi		r4,r1,12
	mr		r3,r31		# BlockNumber=r3 BlockNumber=r31
	bl		CheckBlockNumber
	rlwinm		r3,r3,0,24,31		# mod_state=r3 mod_state=r3
	se_cmpi		r3,1		# mod_state=r3
	bc		1,2,.L488	# eq
#    {
#       EA_ASSERT_DET(EA_READ_ID, EA_E_INVALID_BLOCK_NO);
#    }
#    else if(E_NOT_OK == CheckBlockOffset(BlockNumber, BlockOffset))
	.d2line		2744
	mr		r3,r31		# BlockNumber=r3 BlockNumber=r31
	mr		r4,r30		# BlockOffset=r4 BlockOffset=r30
	bl		CheckBlockOffset
	rlwinm		r3,r3,0,24,31		# mod_state=r3 mod_state=r3
	se_cmpi		r3,1		# mod_state=r3
	bc		1,2,.L488	# eq
#    {
#       EA_ASSERT_DET(EA_READ_ID, EA_E_INVALID_BLOCK_OFS);
#    }
#    else if(E_NOT_OK == CheckBlockLength(BlockNumber, BlockOffset, Length))
	.d2line		2748
	mr		r3,r31		# BlockNumber=r3 BlockNumber=r31
	mr		r4,r30		# BlockOffset=r4 BlockOffset=r30
	mr		r5,r28		# Length=r5 Length=r28
	bl		CheckBlockLength
	rlwinm		r3,r3,0,24,31		# mod_state=r3 mod_state=r3
	se_cmpi		r3,1		# mod_state=r3
	bc		1,2,.L488	# eq
#    {
#       EA_ASSERT_DET(EA_READ_ID, EA_E_INVALID_BLOCK_LEN);
#    }
#    else
#    {
#       SchM_Enter_Ea_EaStateChange();
	.d2line		2754
	bl		SchM_Enter_Ea_EaStateChange
#       Ea_MgmtBlockIndex = block_index;
	.d2line		2755
	lhz		r0,12(r1)
	lis		r3,Ea_MgmtBlockIndex@ha		# mod_state=r3
	e_add16i		r3,r3,Ea_MgmtBlockIndex@l		# mod_state=r3 mod_state=r3
	sth		r0,0(r3)		# mod_state=r3
#       Ea_CurrentReadBlockOffset = BlockOffset;
	.d2line		2756
	lis		r3,Ea_CurrentReadBlockOffset@ha		# mod_state=r3
	e_add16i		r3,r3,Ea_CurrentReadBlockOffset@l		# mod_state=r3 mod_state=r3
	sth		r30,0(r3)		# mod_state=r3 BlockOffset=r30
#       /* PRQA S 3358 ++ */
#       /* during ongoing request new will be rejected */
#       if ((EA_IDLE == main_state) || (mod_state == MEMIF_IDLE))
	.d2line		2759
	lis		r3,main_state@ha		# mod_state=r3
	lwz		r0,main_state@l(r3)		# mod_state=r3
	se_cmpi		r0,0
	bc		1,2,.L522	# eq
	se_cmpi		r26,1		# mod_state=r26
	bc		0,2,.L503	# ne
.L522:
#       {
#          /* Check if Read is performed after reset Or initial state*/
#          result = CheckAdminDataValidity();
	.d2line		2762
	lis		r4,EA_ManagementBlock@ha
	e_add16i		r4,r4,EA_ManagementBlock@l
	lis		r3,Ea_MgmtBlockIndex@ha		# mod_state=r3
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# mod_state=r3
	rlwinm		r0,r0,1,15,30
	lbzx		r0,r4,r0
	cmpi		0,0,r0,49
	diab.li		r3,1		# mod_state=r3
	isel		r3,r3,r0,2		# mod_state=r3 mod_state=r3
.L523:
.Llo311:
	diab.li		r0,0
.Llo322:
	isel		r27,r3,r0,2		# result=r27 mod_state=r3
.L524:
.Llo312:
	mr		r27,r27		# result=r27 result=r27
#          if (E_NOT_OK == result)
	.d2line		2763
	rlwinm		r3,r27,0,24,31		# mod_state=r3 result=r27
.Llo323:
	se_cmpi		r3,1		# mod_state=r3
	bc		0,2,.L504	# ne
	.section	.text_vle
.L985:
#          {
# #if (EA_OPT_SINGLE_BLOCK == STD_OFF)
#             if (EA_SINGLE_BLOCK == EaBlockAmounts())
#             {
# #endif
#                /* Read Single Block with Mangaement data not available*/
#                uint16 ReadLength;
#                EaSetMemIfStatus(MEMIF_BUSY);
	.d2line		2771
.Llo313:
	diab.li		r7,2
	lis		r3,memif_status@ha		# mod_state=r3
.Llo324:
	e_add16i		r3,r3,memif_status@l		# mod_state=r3 mod_state=r3
	stw		r7,0(r3)		# mod_state=r3
	lis		r3,Ea_MemifStatusDbg@ha		# mod_state=r3
	e_add16i		r3,r3,Ea_MemifStatusDbg@l		# mod_state=r3 mod_state=r3
	stw		r7,0(r3)		# mod_state=r3
#                EaSetCurrentBlock(BlockNumber, Length, DataBufferPtr, ZERO_WRITES, \
	.d2line		2772
	lis		r4,(EA_BlockDescriptor+4)@ha
	e_add16i		r4,r4,(EA_BlockDescriptor+4)@l
	lis		r3,Ea_MgmtBlockIndex@ha		# mod_state=r3
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# mod_state=r3
	e_mulli		r0,r0,10
	lbzx		r0,r4,r0
	stb		r0,11(r1)
	mr		r3,r31		# BlockNumber=r3 BlockNumber=r31
.Llo325:
	mr		r4,r28		# Length=r4 Length=r28
	mr		r5,r29		# DataBufferPtr=r5 DataBufferPtr=r29
	diab.li		r6,0
	diab.li		r8,51
	diab.li		r9,1
	diab.li		r10,10
	bl		EaSetCurrentBlock
#                                  INITIAL_RETRY_AMOUNT, EA_INVALID, \
#                                  INITIAL_BLOCK_TOWRITE, EA_CONSISTENT,EaDevice_Index());
#                ReadAddress = Eeprom_Address();
	.d2line		2775
	bl		Eeprom_Address
.Llo306:
	mr		r3,r3		# ReadAddress=r3 ReadAddress=r3
#                if (CheckBlockSizeIsOneCycle)
	.d2line		2776
	lis		r5,(EA_BlockDescriptor+2)@ha		# DataBufferPtr=r5
	e_add16i		r5,r5,(EA_BlockDescriptor+2)@l		# DataBufferPtr=r5 DataBufferPtr=r5
	lis		r4,Ea_MgmtBlockIndex@ha
	lhz		r0,Ea_MgmtBlockIndex@l(r4)
	e_mulli		r0,r0,10
	lhzx		r4,r5,r0		# DataBufferPtr=r5
	se_addi		r4,2
	rlwinm		r4,r4,0,16,31
	cmpi		0,0,r4,64
	bc		1,1,.L506	# gt
#                {
#                 /*
#                  * If total block size is 1 virtual block then entire block length is read
#                  * to avoid multiple read cycles for small blocks
#                  */
#                   ReadLength = EaTotalBlockSize();
	.d2line		2782
.Llo290:
	lis		r5,(EA_BlockDescriptor+2)@ha		# DataBufferPtr=r5
.Llo302:
	e_add16i		r5,r5,(EA_BlockDescriptor+2)@l		# DataBufferPtr=r5 DataBufferPtr=r5
	lis		r4,Ea_MgmtBlockIndex@ha
	lhz		r0,Ea_MgmtBlockIndex@l(r4)
	e_mulli		r0,r0,10
	lhzx		r5,r5,r0		# DataBufferPtr=r5 DataBufferPtr=r5
	se_addi		r5,2		# DataBufferPtr=r5 DataBufferPtr=r5
.Llo303:
	mr		r5,r5		# ReadLength=r5 ReadLength=r5
	b		.L507
.L506:
#                }
#                else if ((Length < EA_VIRTUAL_PAGE_SIZE) && (0 == BlockOffset))
	.d2line		2784
.Llo337:
	rlwinm		r4,r28,0,16,31		# Length=r28
	cmpi		0,0,r4,64
	bc		0,0,.L508	# ge
	rlwinm		r30,r30,0,16,31		# BlockOffset=r30 BlockOffset=r30
	se_cmpi		r30,0		# BlockOffset=r30
	bc		0,2,.L508	# ne
#                {
#                   /* If length is within 1 virtual page size then the Data is read within one read cycle*/
#                   ReadLength = Length + LIGHT_ADMIN_DATALENGTH;
	.d2line		2787
.Llo296:
	diab.addi		r5,r28,1		# DataBufferPtr=r5 Length=r28
	addi		r5,r28,1		# DataBufferPtr=r5 Length=r28
.Llo338:
	b		.L507
.L508:
#                }
#                else
#                {
#                   /* Only the Admin data is read to check validity */
#                   ReadLength = LIGHT_ADMIN_DATALENGTH;
	.d2line		2792
.Llo297:
	diab.li		r5,1		# ReadLength=r5
.L507:
#                }
# 
#                result = (*Ea_ReadFctPtr[GetDeviceIndex()])(ReadAddress, Storage_Buffer, (uint32)ReadLength);
	.d2line		2795
.Llo298:
	lis		r6,Ea_ReadFctPtr@ha
	e_add16i		r6,r6,Ea_ReadFctPtr@l
	lis		r4,(current_block+18)@ha
	lbz		r0,(current_block+18)@l(r4)
	rlwinm		r0,r0,2,22,29
	lwzx		r0,r6,r0
	mtspr		ctr,r0
	lis		r4,Storage_Buffer@ha
	e_add16i		r4,r4,Storage_Buffer@l
	rlwinm		r5,r5,0,16,31		# ReadLength=r5 ReadLength=r5
.Llo307:
	mr		r3,r3		# ReadAddress=r3 ReadAddress=r3
.Llo308:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo314:
	mr		r27,r3		# result=r27 result=r3
#                if (E_OK == result)
	.d2line		2796
	rlwinm		r3,r3,0,24,31		# result=r3 result=r3
	se_cmpi		r3,0		# result=r3
	bc		0,2,.L510	# ne
#                {
#                   if(!CheckBlockSizeIsOneCycle)
	.d2line		2798
.Llo315:
	lis		r4,(EA_BlockDescriptor+2)@ha
.Llo316:
	e_add16i		r4,r4,(EA_BlockDescriptor+2)@l
	lis		r3,Ea_MgmtBlockIndex@ha		# result=r3
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# result=r3
	e_mulli		r0,r0,10
	lhzx		r3,r4,r0		# result=r3
	se_addi		r3,2		# result=r3 result=r3
	rlwinm		r3,r3,0,16,31		# result=r3 result=r3
	cmpi		0,0,r3,64		# result=r3
	bc		0,1,.L511	# le
#                   {
#                      /*
#                       * For blocks larger than 1 virtual page size we need to read the second admin section
#                       * through a different read call
#                       */
#                      Ea_AdminDataReadPending = TRUE;
	.d2line		2804
	diab.li		r0,1
	lis		r3,Ea_AdminDataReadPending@ha		# result=r3
	e_add16i		r3,r3,Ea_AdminDataReadPending@l		# result=r3 result=r3
	stb		r0,0(r3)		# result=r3
.L511:
#                   }
#                   EaSetSubState(EA_S_R_SINGLE_BLOCK);
	.d2line		2806
	diab.li		r0,4
	lis		r3,sub_state@ha		# result=r3
	e_add16i		r3,r3,sub_state@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3
#                   EaSetMainState(EA_READ);
	.d2line		2807
	diab.li		r0,1
	lis		r3,main_state@ha		# result=r3
	e_add16i		r3,r3,main_state@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3
#                   SetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		2808
	diab.li		r0,2
	lis		r3,ea_jobresult@ha		# result=r3
	e_add16i		r3,r3,ea_jobresult@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3
#                   DbgSetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		2809
	lis		r3,Ea_JobResultDbg@ha		# result=r3
	e_add16i		r3,r3,Ea_JobResultDbg@l		# result=r3 result=r3
	stb		r0,0(r3)		# result=r3
	b		.L503
.L510:
#                }
#                else
#                {
#                   EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		2813
	diab.li		r0,1
	lis		r3,memif_status@ha		# result=r3
	e_add16i		r3,r3,memif_status@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3
	lis		r3,Ea_MemifStatusDbg@ha		# result=r3
	e_add16i		r3,r3,Ea_MemifStatusDbg@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3
	.section	.text_vle
.L986:
	b		.L503
.L504:
#                }
# #if (EA_OPT_SINGLE_BLOCK == STD_OFF)
#             }
#             else
#             {
#                /* Multi Block Read operation with Management Data not available */
#                EaSetMemIfStatus(MEMIF_BUSY);
#                EaSetCurrentBlock(BlockNumber, Length, DataBufferPtr, ZERO_WRITES, \
#                                  INITIAL_RETRY_AMOUNT, EA_INVALID, \
#                                  INITIAL_BLOCK_TOWRITE, EA_CONSISTENT,EaDevice_Index());
#                ReadAddress = Eeprom_ReadAddress();
#                /* First Section Admin data is read */
#                result = (*Ea_ReadFctPtr[GetDeviceIndex()])(ReadAddress, admin_buffer, (uint32)ADMIN_DATALENGTH);
#                if (E_OK == result)
#                {
#                   SetStateService(FALSE);
#                   /* PRQA S 715 ++
#                    * Nesting of control structures (statements) exceeds 15
#                    * - program is non-conforming.This implies from
#                    * structure of algorithm.
#                    */
#                   SetServiceFunction(&Ea_R_Processing_Error, &Ea_R_Read_Verification, NULL_PTR);
#                   EaSetSubState(EA_S_OP_IN_PROGRESS);
#                   /* PRQA S 715 -- */
#                   EaSetMainState(EA_READ);
#                   SetEaJobResult(MEMIF_JOB_PENDING);
#                   DbgSetEaJobResult(MEMIF_JOB_PENDING);
#                }
#                else
#                {
#                   EaSetMemIfStatus(MEMIF_IDLE);
#                }
# 
#             }
# #endif /* end of (EA_OPT_SINGLE_BLOCK == STD_OFF) */
#          }
#          /* Read when Management Data is available*/
#          else
#          {
#             if (EA_INVALID == GetAdminValidity())
	.d2line		2853
.Llo291:
	lis		r4,EA_ManagementBlock@ha
	e_add16i		r4,r4,EA_ManagementBlock@l
	lis		r3,Ea_MgmtBlockIndex@ha		# mod_state=r3
.Llo326:
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# mod_state=r3
	rlwinm		r0,r0,1,15,30
	lbzx		r0,r4,r0
	cmpi		0,0,r0,51
	bc		0,2,.L515	# ne
#             {
#                SetValidity(EA_INVALID);
	.d2line		2855
.Llo299:
	diab.li		r0,51
	lis		r3,(current_block+13)@ha		# mod_state=r3
.Llo327:
	stb		r0,(current_block+13)@l(r3)		# mod_state=r3
#                SetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		2856
	diab.li		r0,2
	lis		r3,ea_jobresult@ha		# mod_state=r3
	e_add16i		r3,r3,ea_jobresult@l		# mod_state=r3 mod_state=r3
	stw		r0,0(r3)		# mod_state=r3
#                DbgSetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		2857
	lis		r3,Ea_JobResultDbg@ha		# mod_state=r3
	e_add16i		r3,r3,Ea_JobResultDbg@l		# mod_state=r3 mod_state=r3
	stb		r0,0(r3)		# mod_state=r3
#                EaSetSubState(EA_S_R_NO_PROCESS);
	.d2line		2858
	diab.li		r0,3
	lis		r3,sub_state@ha		# mod_state=r3
	e_add16i		r3,r3,sub_state@l		# mod_state=r3 mod_state=r3
	stw		r0,0(r3)		# mod_state=r3
#                EaSetMainState(EA_READ);
	.d2line		2859
	diab.li		r0,1
	lis		r3,main_state@ha		# mod_state=r3
	e_add16i		r3,r3,main_state@l		# mod_state=r3 mod_state=r3
	stw		r0,0(r3)		# mod_state=r3
	b		.L503
.L515:
#             }
# #if (STD_OFF == EA_OPT_SINGLE_BLOCK)
#             else if (EA_INCONSISTENT == GetAdminBlockStatus())
#             {
#                SetValidity(EA_VALID);
#                SetEaJobResult(MEMIF_JOB_PENDING);
#                DbgSetEaJobResult(MEMIF_JOB_PENDING);
#                EaSetSubState(EA_S_R_NO_PROCESS);
#                EaSetMainState(EA_READ);
#             }
# #endif
#             else
#             {
#                EaSetMemIfStatus(MEMIF_BUSY);
	.d2line		2873
.Llo328:
	diab.li		r7,2
	lis		r3,memif_status@ha		# mod_state=r3
.Llo329:
	e_add16i		r3,r3,memif_status@l		# mod_state=r3 mod_state=r3
	stw		r7,0(r3)		# mod_state=r3
	lis		r3,Ea_MemifStatusDbg@ha		# mod_state=r3
	e_add16i		r3,r3,Ea_MemifStatusDbg@l		# mod_state=r3 mod_state=r3
	stw		r7,0(r3)		# mod_state=r3
# #if (STD_OFF == EA_OPT_SINGLE_BLOCK)
#                if(ONE_BLOCK_NUMBER != EaBlockAmounts())
#                {
#                   EaSetCurrentBlock(BlockNumber, Length, DataBufferPtr, \
#                                     GetAdminWriteNumbers(), \
#                                     INITIAL_RETRY_AMOUNT, EA_VALID, \
#                                     GetAdminBlockToWrite(), EA_CONSISTENT,EaDevice_Index());
#                }
#                else
#                {
# #endif
#                EaSetCurrentBlock(BlockNumber, Length, DataBufferPtr, ZERO_WRITES, \
	.d2line		2885
	lis		r4,(EA_BlockDescriptor+4)@ha		# DataBufferPtr=r4
	e_add16i		r4,r4,(EA_BlockDescriptor+4)@l		# DataBufferPtr=r4 DataBufferPtr=r4
	lis		r3,Ea_MgmtBlockIndex@ha		# mod_state=r3
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# mod_state=r0 mod_state=r3
	e_mulli		r0,r0,10		# mod_state=r0 mod_state=r0
	lbzx		r0,r4,r0		# mod_state=r0 DataBufferPtr=r4
	stb		r0,11(r1)		# mod_state=r0
	mr		r3,r31		# BlockNumber=r3 BlockNumber=r31
.Llo330:
	mr		r4,r28		# Length=r4 Length=r28
.Llo331:
	mr		r5,r29		# DataBufferPtr=r5 DataBufferPtr=r29
	diab.li		r6,0
	diab.li		r8,51
	diab.li		r9,1
	diab.li		r10,10
	bl		EaSetCurrentBlock
#                                  INITIAL_RETRY_AMOUNT, EA_INVALID, \
#                                  INITIAL_BLOCK_TOWRITE, EA_CONSISTENT,EaDevice_Index());
# #if (STD_OFF == EA_OPT_SINGLE_BLOCK)
#                }
#                if (ONE_BLOCK_NUMBER == EaBlockAmounts())
#                {
#                   ReadAddress = Eeprom_Address() + (uint32)LIGHT_ADMIN_DATALENGTH;
#                }
#                else
#                {
#                   ReadAddress = Eeprom_ReadAddress() + (uint32)ADMIN_DATALENGTH;
#                }
# #else
#                ReadAddress = Eeprom_Address() + (uint32)LIGHT_ADMIN_DATALENGTH;
	.d2line		2899
.Llo332:
	bl		Eeprom_Address
.Llo333:
	se_addi		r3,1		# mod_state=r3 mod_state=r3
# #endif
#                /* The entire data is read directly into the Data_Ptr if the block is valid*/
#                result = (*Ea_ReadFctPtr[GetDeviceIndex()])(ReadAddress, DataBufferPtr, (uint32)Length);
	.d2line		2902
.Llo309:
	lis		r5,Ea_ReadFctPtr@ha		# DataBufferPtr=r5
	e_add16i		r5,r5,Ea_ReadFctPtr@l		# DataBufferPtr=r5 DataBufferPtr=r5
	lis		r4,(current_block+18)@ha		# Length=r4
	lbz		r0,(current_block+18)@l(r4)		# mod_state=r0 Length=r4
.Llo334:
	rlwinm		r0,r0,2,22,29		# mod_state=r0 mod_state=r0
	lwzx		r0,r5,r0		# mod_state=r0 DataBufferPtr=r5
.Llo335:
	mtspr		ctr,r0		# mod_state=ctr
	rlwinm		r5,r28,0,16,31		# DataBufferPtr=r5 Length=r28
	mr		r0,r3		# ReadAddress=r0 ReadAddress=r3
	mr		r4,r29		# DataBufferPtr=r4 DataBufferPtr=r29
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo292:
	mr		r27,r3		# result=r27 result=r3
#                if (E_OK == result)
	.d2line		2903
.Llo317:
	rlwinm		r3,r3,0,24,31		# result=r3 result=r3
	se_cmpi		r3,0		# result=r3
	bc		0,2,.L518	# ne
#                {
#                   SetStateService(FALSE);
	.d2line		2905
.Llo318:
	diab.li		r0,0		# mod_state=r0
.Llo319:
	lis		r3,substateptr@ha		# result=r3
	e_add16i		r3,r3,substateptr@l		# result=r3 result=r3
	stb		r0,0(r3)		# result=r3 mod_state=r0
#                   SetServiceFunction(&Ea_R_Processing_Error, &Ea_R_Read_Done, NULL_PTR);
	.d2line		2906
	lis		r3,Ea_R_Processing_Error@ha		# result=r3
	e_add16i		r3,r3,Ea_R_Processing_Error@l		# result=r3 result=r3
	lis		r4,(substateptr+8)@ha		# DataBufferPtr=r4
.Llo304:
	stw		r3,(substateptr+8)@l(r4)		# DataBufferPtr=r4 result=r3
	lis		r3,Ea_R_Read_Done@ha		# result=r3
	e_add16i		r3,r3,Ea_R_Read_Done@l		# result=r3 result=r3
	lis		r4,(substateptr+12)@ha		# DataBufferPtr=r4
	stw		r3,(substateptr+12)@l(r4)		# DataBufferPtr=r4 result=r3
	lis		r3,(substateptr+4)@ha		# result=r3
	stw		r0,(substateptr+4)@l(r3)		# result=r3 mod_state=r0
#                   EaSetSubState(EA_S_OP_IN_PROGRESS);
	.d2line		2907
	diab.li		r0,7		# mod_state=r0
	lis		r3,sub_state@ha		# result=r3
	e_add16i		r3,r3,sub_state@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
#                   EaSetMainState(EA_READ);
	.d2line		2908
	diab.li		r0,1		# mod_state=r0
	lis		r3,main_state@ha		# result=r3
	e_add16i		r3,r3,main_state@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
#                   SetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		2909
	diab.li		r0,2		# mod_state=r0
	lis		r3,ea_jobresult@ha		# result=r3
	e_add16i		r3,r3,ea_jobresult@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
#                   DbgSetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		2910
	lis		r3,Ea_JobResultDbg@ha		# result=r3
	e_add16i		r3,r3,Ea_JobResultDbg@l		# result=r3 result=r3
	stb		r0,0(r3)		# result=r3 mod_state=r0
	b		.L503
.L518:
#                }
#                else
#                {
#                   EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		2914
.Llo305:
	diab.li		r0,1		# mod_state=r0
.Llo336:
	lis		r3,memif_status@ha		# result=r3
	e_add16i		r3,r3,memif_status@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
	lis		r3,Ea_MemifStatusDbg@ha		# result=r3
	e_add16i		r3,r3,Ea_MemifStatusDbg@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
.L503:
#                }
#             }
#          }
#       }
#       SchM_Exit_Ea_EaStateChange();
	.d2line		2919
.Llo293:
	bl		SchM_Exit_Ea_EaStateChange
.L488:
#    }
#    /* PRQA S 3358 -- */
#    return result;
	.d2line		2922
.Llo294:
	rlwinm		r3,r27,0,24,31		# mod_state=r3 result=r27
# }
	.d2line		2923
	.d2epilogue_begin
.Llo300:
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
.Llo320:
	lwz		r0,52(r1)		# mod_state=r0
	mtspr		lr,r0		# mod_state=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo301:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L972:
	.type		Ea_Read,@function
	.size		Ea_Read,.-Ea_Read
# Number of nodes = 415

# Allocations for Ea_Read
#	?a4		BlockNumber
#	?a5		BlockOffset
#	?a6		DataBufferPtr
#	?a7		Length
#	?a8		$$11
#	?a9		ReadAddress
#	?a10		result
#	?a11		mod_state
#	SP,12		block_index
#	?a12		ReadLength
# FUNC(Std_ReturnType, EA_CODE) Ea_Write
	.align		2
	.section	.text_vle
        .d2line         2926,31
#$$ld
.L993:

#$$bf	Ea_Write,interprocedural,rasave,nostackparams
	.globl		Ea_Write
	.d2_cfa_start __cie
Ea_Write:
.Llo339:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# BlockNumber=r31 BlockNumber=r3
	mr		r28,r4		# DataBufferPtr=r28 DataBufferPtr=r4
	.d2prologue_end
# (
#    VAR(uint16, AUTOMATIC) BlockNumber,
#    P2VAR(uint8, AUTOMATIC, EA_APPL_DATA) DataBufferPtr
# )
# {
#    VAR(uint32,AUTOMATIC) WriteAddress;
#    VAR(uint32,AUTOMATIC) ReadAddress;
#    VAR(uint16,AUTOMATIC) Length;
#    VAR(MemIf_StatusType, AUTOMATIC) mod_state;
#    VAR(Std_ReturnType, AUTOMATIC) result = E_NOT_OK;
	.d2line		2936
	diab.li		r29,1		# result=r29
#    VAR(uint16, AUTOMATIC) block_index;
# 
#    #if (STD_ON == EA_POLLING_MODE)
#    mod_state = (*Ea_GetStatusFctPtr[EaDevice_Index()])();
#    #else
#    mod_state = memif_status;
	.d2line		2942
.Llo373:
	lis		r3,memif_status@ha
.Llo340:
	lwz		r30,memif_status@l(r3)
.Llo360:
	mr		r30,r30		# mod_state=r30 mod_state=r30
#    #endif
# 
#    if(FALSE == Ea_InitDone)
	.d2line		2945
	lis		r3,Ea_InitDone@ha
	lbz		r0,Ea_InitDone@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L540	# eq
#    {
#       EA_ASSERT_DET(EA_WRITE_ID, EA_E_UNINIT);
#    }
#    else if(MEMIF_UNINIT == mod_state)
	.d2line		2949
.Llo341:
	se_cmpi		r30,0		# mod_state=r30
.Llo345:
	bc		1,2,.L540	# eq
#    {
#       EA_ASSERT_DET(EA_WRITE_ID, EA_E_UNINIT);
#    }
#    else if(MEMIF_BUSY == mod_state)
	.d2line		2953
	se_cmpi		r30,2		# mod_state=r30
	bc		1,2,.L540	# eq
#    {
#       EA_ASSERT_DET(EA_WRITE_ID, EA_E_BUSY);
#    }
#    else if(NULL_PTR == DataBufferPtr)
	.d2line		2957
	se_cmpi		r28,0		# DataBufferPtr=r28
	bc		1,2,.L540	# eq
#    {
#       EA_ASSERT_DET(EA_WRITE_ID, EA_E_INVALID_DATA_POINTER);
#    }
#    else if(E_NOT_OK == CheckStsBusyInternalMgmtOp(mod_state, BlockNumber))
	.d2line		2961
	mr		r4,r31		# BlockNumber=r4 BlockNumber=r31
	mr		r3,r30		# mod_state=r3 mod_state=r30
	bl		CheckStsBusyInternalMgmtOp
	rlwinm		r3,r3,0,24,31		# mod_state=r3 mod_state=r3
	se_cmpi		r3,1		# mod_state=r3
	bc		1,2,.L540	# eq
#    {
#       EA_ASSERT_DET(EA_WRITE_ID, EA_E_BUSY_INTERNAL);
#    }
#    else if(E_NOT_OK == CheckBlockNumber(BlockNumber, &block_index))
	.d2line		2965
	diab.addi		r4,r1,12
	mr		r3,r31		# BlockNumber=r3 BlockNumber=r31
	bl		CheckBlockNumber
	rlwinm		r3,r3,0,24,31		# mod_state=r3 mod_state=r3
	se_cmpi		r3,1		# mod_state=r3
	bc		1,2,.L540	# eq
#    {
#       EA_ASSERT_DET(EA_WRITE_ID, EA_E_INVALID_BLOCK_NO);
#    }
#    else
#    {
#       SchM_Enter_Ea_EaStateChange();
	.d2line		2971
	bl		SchM_Enter_Ea_EaStateChange
#       Ea_MgmtBlockIndex = block_index;
	.d2line		2972
	lhz		r0,12(r1)
	lis		r3,Ea_MgmtBlockIndex@ha		# mod_state=r3
	e_add16i		r3,r3,Ea_MgmtBlockIndex@l		# mod_state=r3 mod_state=r3
	sth		r0,0(r3)		# mod_state=r3
#       /* PRQA S 3358 ++ */
#       /* during ongoing request new will be rejected */
#       if ((EA_IDLE == main_state) || (mod_state == MEMIF_IDLE) || ((mod_state == MEMIF_BUSY_INTERNAL) && (TRUE == EaImmediateData())))
	.d2line		2975
	lis		r3,main_state@ha		# mod_state=r3
	lwz		r0,main_state@l(r3)		# mod_state=r3
	se_cmpi		r0,0
	bc		1,2,.L574	# eq
	se_cmpi		r30,1		# mod_state=r30
	bc		1,2,.L574	# eq
	se_cmpi		r30,3		# mod_state=r30
	bc		0,2,.L551	# ne
.Llo361:
	lis		r4,(EA_BlockDescriptor+9)@ha
	e_add16i		r4,r4,(EA_BlockDescriptor+9)@l
	lis		r3,Ea_MgmtBlockIndex@ha		# mod_state=r3
.Llo362:
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# mod_state=r3
	e_mulli		r0,r0,10
	lbzx		r0,r4,r0
	se_cmpi		r0,1
	bc		0,2,.L551	# ne
.L574:
	.section	.text_vle
.L1009:
#       {
#          VAR(uint16,AUTOMATIC) counter;
# 
#          EaSetMemIfStatus(MEMIF_BUSY);
	.d2line		2979
.Llo363:
	diab.li		r0,2
	lis		r3,memif_status@ha		# mod_state=r3
.Llo364:
	e_add16i		r3,r3,memif_status@l		# mod_state=r3 mod_state=r3
	stw		r0,0(r3)		# mod_state=r3
	lis		r3,Ea_MemifStatusDbg@ha		# mod_state=r3
	e_add16i		r3,r3,Ea_MemifStatusDbg@l		# mod_state=r3 mod_state=r3
	stw		r0,0(r3)		# mod_state=r3
# #if (EA_OPT_SINGLE_BLOCK == STD_OFF)
#          if (EA_SINGLE_BLOCK == EaBlockAmounts())
#          {
# #endif
#          /* Single Block Write operation*/
#          WriteAddress = Eeprom_Address();
	.d2line		2985
	bl		Eeprom_Address
.Llo348:
	mr		r3,r3		# WriteAddress=r3 WriteAddress=r3
# /* PRQA S 0492 ++
#  * Array subscripting required for storing 1 virtual page from data pointer
#  * along with admin data
#  */
#          if (CheckBlockSizeIsOneCycle)
	.d2line		2990
	lis		r5,(EA_BlockDescriptor+2)@ha
	e_add16i		r5,r5,(EA_BlockDescriptor+2)@l
	lis		r4,Ea_MgmtBlockIndex@ha
	lhz		r0,Ea_MgmtBlockIndex@l(r4)
	e_mulli		r0,r0,10
	lhzx		r4,r5,r0
	se_addi		r4,2
	rlwinm		r4,r4,0,16,31
	cmpi		0,0,r4,64
	bc		1,1,.L553	# gt
#          {
#             /*
#              * If block size smaller than 1 virtual page size then the entire block
#              * is written in one Write call by copying the data and the admin fields into a buffer
#              */
#             for (counter = LIGHT_ADMIN_DATALENGTH; counter <= EaBlockSize(); counter++)
	.d2line		2996
	diab.li		r4,1		# counter=r4
.L554:
.Llo383:
	rlwinm		r0,r4,0,16,31		# counter=r4
	lis		r5,(EA_BlockDescriptor+2)@ha
	e_add16i		r5,r5,(EA_BlockDescriptor+2)@l
	lis		r6,Ea_MgmtBlockIndex@ha
	lhz		r6,Ea_MgmtBlockIndex@l(r6)
	e_mulli		r6,r6,10
	lhzx		r5,r5,r6
	se_cmp		r0,r5
	bc		1,1,.L556	# gt
#             {
#                Storage_Buffer[counter] = DataBufferPtr[counter - LIGHT_ADMIN_DATALENGTH];
	.d2line		2998
	rlwinm		r0,r4,0,16,31		# counter=r4
	add		r5,r0,r28		# DataBufferPtr=r28
	lbz		r6,-1(r5)
	lis		r5,Storage_Buffer@ha
	e_add16i		r5,r5,Storage_Buffer@l
	stbx		r6,r5,r0
#             }
	.d2line		2999
	diab.addi		r0,r4,1		# counter=r4
	se_addi		r4,1		# counter=r4 counter=r4
	b		.L554
.L556:
#             Length = EaTotalBlockSize();
	.d2line		3000
.Llo384:
	lis		r5,(EA_BlockDescriptor+2)@ha
	e_add16i		r5,r5,(EA_BlockDescriptor+2)@l
	lis		r4,Ea_MgmtBlockIndex@ha		# counter=r4
.Llo385:
	lhz		r0,Ea_MgmtBlockIndex@l(r4)		# counter=r4
	e_mulli		r0,r0,10
	lhzx		r5,r5,r0
	se_addi		r5,2
.Llo354:
	mr		r5,r5		# Length=r5 Length=r5
	b		.L557
.L553:
#          }
#          else
#          {
#             /* Else the data is stored after the First Admin data section */
#             for (counter = LIGHT_ADMIN_DATALENGTH; counter < EA_VIRTUAL_PAGE_SIZE; counter++)
	.d2line		3005
.Llo355:
	diab.li		r4,1		# counter=r4
.L558:
.Llo386:
	rlwinm		r0,r4,0,16,31		# counter=r4
	cmpi		0,0,r0,64
	bc		0,0,.L560	# ge
#             {
#                Storage_Buffer[counter] = DataBufferPtr[counter-LIGHT_ADMIN_DATALENGTH];
	.d2line		3007
	rlwinm		r0,r4,0,16,31		# counter=r4
	add		r5,r0,r28		# DataBufferPtr=r28
	lbz		r6,-1(r5)
	lis		r5,Storage_Buffer@ha
	e_add16i		r5,r5,Storage_Buffer@l
	stbx		r6,r5,r0
#             }
	.d2line		3008
	diab.addi		r0,r4,1		# counter=r4
	se_addi		r4,1		# counter=r4 counter=r4
	b		.L558
.L560:
#             Length = EA_VIRTUAL_PAGE_SIZE;
	.d2line		3009
	diab.li		r5,64		# Length=r5
.L557:
#          }
# /* PRQA S 0492 -- */
#          result = CheckAdminDataValidity();
	.d2line		3012
.Llo356:
	lis		r6,EA_ManagementBlock@ha
	e_add16i		r6,r6,EA_ManagementBlock@l
	lis		r4,Ea_MgmtBlockIndex@ha		# counter=r4
.Llo387:
	lhz		r0,Ea_MgmtBlockIndex@l(r4)		# counter=r4
	rlwinm		r0,r0,1,15,30
	lbzx		r0,r6,r0
	cmpi		0,0,r0,49
	diab.li		r4,1		# counter=r4
	isel		r4,r4,r0,2		# counter=r4 counter=r4
.L575:
	diab.li		r0,0
	isel		r0,r4,r0,2		# counter=r4
.L576:
.Llo374:
	mr		r4,r0		# result=r4 result=r0
#          if (E_OK == result)
	.d2line		3013
	e_andi.		r0,r0,255
.Llo375:
	bc		0,2,.L561	# ne
#          {
#             /* Write Single block when the mangement data is available*/
#             IncValidityCounter(Ea_AdminData);
	.d2line		3016
	lis		r6,(EA_ManagementBlock+1)@ha
	e_add16i		r6,r6,(EA_ManagementBlock+1)@l
	lis		r4,Ea_MgmtBlockIndex@ha		# counter=r4
.Llo388:
	lhz		r0,Ea_MgmtBlockIndex@l(r4)		# counter=r4
	rlwinm		r0,r0,1,15,30
	lbzx		r0,r6,r0
	cmpi		0,0,r0,254
	bc		0,2,.L577	# ne
.Llo389:
	diab.li		r0,0
	b		.L578
.L577:
	lis		r6,(EA_ManagementBlock+1)@ha
	e_add16i		r6,r6,(EA_ManagementBlock+1)@l
	lis		r4,Ea_MgmtBlockIndex@ha		# counter=r4
.Llo390:
	lhz		r0,Ea_MgmtBlockIndex@l(r4)		# counter=r4
	rlwinm		r0,r0,1,15,30
	lbzx		r4,r6,r0		# counter=r4
	diab.addi		r0,r4,1		# counter=r4
.L578:
.Llo391:
	lis		r4,Ea_AdminData@ha		# counter=r4
.Llo392:
	e_add16i		r4,r4,Ea_AdminData@l		# counter=r4 counter=r4
	stb		r0,0(r4)		# counter=r4
#             Storage_Buffer[0] = GetValidityCounter(Ea_AdminData);
	.d2line		3017
	lis		r4,Ea_AdminData@ha		# counter=r4
	lbz		r0,Ea_AdminData@l(r4)		# counter=r4
	lis		r4,Storage_Buffer@ha		# counter=r4
	e_add16i		r4,r4,Storage_Buffer@l		# counter=r4 counter=r4
	stb		r0,0(r4)		# counter=r4
#             if (CheckBlockSizeIsOneCycle)
	.d2line		3018
	lis		r6,(EA_BlockDescriptor+2)@ha
	e_add16i		r6,r6,(EA_BlockDescriptor+2)@l
	lis		r4,Ea_MgmtBlockIndex@ha		# counter=r4
	lhz		r0,Ea_MgmtBlockIndex@l(r4)		# counter=r4
	e_mulli		r0,r0,10
	lhzx		r4,r6,r0		# counter=r4
	se_addi		r4,2		# counter=r4 counter=r4
	rlwinm		r4,r4,0,16,31		# counter=r4 counter=r4
	cmpi		0,0,r4,64		# counter=r4
	bc		1,1,.L562	# gt
#             {
#                /* Second admin data field stored for Blocks with size less than 1 virtual page*/
#                Storage_Buffer[EaBlockSize() + LIGHT_ADMIN_DATALENGTH] = GetValidityCounter(Ea_AdminData);
	.d2line		3021
.Llo393:
	lis		r4,Ea_AdminData@ha		# counter=r4
.Llo394:
	lbz		r0,Ea_AdminData@l(r4)		# counter=r4
	lis		r4,(Storage_Buffer+1)@ha		# counter=r4
	e_add16i		r4,r4,(Storage_Buffer+1)@l		# counter=r4 counter=r4
	lis		r6,(EA_BlockDescriptor+2)@ha
	e_add16i		r6,r6,(EA_BlockDescriptor+2)@l
	lis		r7,Ea_MgmtBlockIndex@ha
	lhz		r7,Ea_MgmtBlockIndex@l(r7)
	e_mulli		r7,r7,10
	lhzx		r6,r6,r7
	stbx		r0,r4,r6		# counter=r4
.L562:
#             }
#             /*
#              * The Write function shall be called for address starting at the begining of a physical EEPROM page
#              * and shall always have the length of 1 virtual page size or less
#              */
#             result = (*Ea_WriteFctPtr[GetDeviceIndex()])(WriteAddress, Storage_Buffer, (uint32)Length);
	.d2line		3027
.Llo349:
	lis		r6,Ea_WriteFctPtr@ha
	e_add16i		r6,r6,Ea_WriteFctPtr@l
	lis		r4,(current_block+18)@ha		# counter=r4
.Llo395:
	lbz		r0,(current_block+18)@l(r4)		# counter=r4
	rlwinm		r0,r0,2,22,29
	lwzx		r0,r6,r0
	mtspr		ctr,r0
	lis		r4,Storage_Buffer@ha		# counter=r4
	e_add16i		r4,r4,Storage_Buffer@l		# counter=r4 counter=r4
.Llo357:
	rlwinm		r5,r5,0,16,31		# Length=r5 Length=r5
.Llo350:
	mr		r3,r3		# WriteAddress=r3 WriteAddress=r3
.Llo351:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo376:
	mr		r29,r3		# result=r29 result=r3
#             if(E_OK == result)
	.d2line		3028
	rlwinm		r3,r3,0,24,31		# result=r3 result=r3
	se_cmpi		r3,0		# result=r3
	bc		0,2,.L563	# ne
#             {
#                EaSetCurrentBlock(BlockNumber, ZERO_LENGTH, DataBufferPtr, \
	.d2line		3030
.Llo377:
	lis		r4,(EA_BlockDescriptor+4)@ha		# counter=r4
.Llo378:
	e_add16i		r4,r4,(EA_BlockDescriptor+4)@l		# counter=r4 counter=r4
	lis		r3,Ea_MgmtBlockIndex@ha		# result=r3
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# result=r3
	e_mulli		r0,r0,10
	lbzx		r0,r4,r0		# counter=r4
	stb		r0,11(r1)
	mr		r3,r31		# BlockNumber=r3 BlockNumber=r31
	mr		r5,r28		# DataBufferPtr=r5 DataBufferPtr=r28
	diab.li		r4,0		# counter=r4
.Llo396:
	diab.li		r6,0
	diab.li		r7,2
	diab.li		r8,51
	diab.li		r9,1
	diab.li		r10,10
	bl		EaSetCurrentBlock
#                                  ZERO_WRITES, INITIAL_RETRY_AMOUNT, EA_INVALID, \
#                                  INITIAL_BLOCK_TOWRITE, EA_CONSISTENT,EaDevice_Index());
#                if(CheckBlockSizeIsOneCycle)
	.d2line		3033
	lis		r4,(EA_BlockDescriptor+2)@ha		# counter=r4
.Llo397:
	e_add16i		r4,r4,(EA_BlockDescriptor+2)@l		# counter=r4 counter=r4
	lis		r3,Ea_MgmtBlockIndex@ha		# result=r3
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# result=r3
	e_mulli		r0,r0,10
	lhzx		r3,r4,r0		# result=r3 counter=r4
	se_addi		r3,2		# result=r3 result=r3
	rlwinm		r3,r3,0,16,31		# result=r3 result=r3
	cmpi		0,0,r3,64		# result=r3
	bc		1,1,.L564	# gt
#                {
#                   /* If size is less than 1 virtual page Size, Write is completed in 1 write cycle*/
#                   Ea_AdminDatawriteStatus = EA_DATA_VALIDATED;
	.d2line		3036
.Llo342:
	diab.li		r0,2
	lis		r3,Ea_AdminDatawriteStatus@ha		# result=r3
	e_add16i		r3,r3,Ea_AdminDatawriteStatus@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3
	b		.L565
.L564:
#                }
#                else if(CheckBlockSizeIsTwoCycle)
	.d2line		3038
	lis		r4,(EA_BlockDescriptor+2)@ha		# counter=r4
.Llo398:
	e_add16i		r4,r4,(EA_BlockDescriptor+2)@l		# counter=r4 counter=r4
	lis		r3,Ea_MgmtBlockIndex@ha		# result=r3
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# result=r3
	e_mulli		r0,r0,10
	lhzx		r3,r4,r0		# result=r3 counter=r4
	se_addi		r3,2		# result=r3 result=r3
	rlwinm		r3,r3,0,16,31		# result=r3 result=r3
	cmpi		0,0,r3,128		# result=r3
	bc		1,1,.L566	# gt
#                {
#                   /* If size is within 2 virtual pages then write can be completed in 2 write cycles*/
#                      Ea_AdminDataWritePending = TRUE;
	.d2line		3041
.Llo399:
	diab.li		r0,1
	lis		r3,Ea_AdminDataWritePending@ha		# result=r3
	e_add16i		r3,r3,Ea_AdminDataWritePending@l		# result=r3 result=r3
	stb		r0,0(r3)		# result=r3
	b		.L565
.L566:
#                }
#                else
#                {
#                   /* 3 write cycles shall be needed.*/
#                   Ea_AdminDatawriteStatus = EA_DATA_INVALIDATED;
	.d2line		3046
	diab.li		r0,1
	lis		r3,Ea_AdminDatawriteStatus@ha		# result=r3
	e_add16i		r3,r3,Ea_AdminDatawriteStatus@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3
.L565:
#                }
# 
#                EaSetSubState(EA_S_W_SINGLE_BLOCK);
	.d2line		3049
	diab.li		r0,5
	lis		r3,sub_state@ha		# result=r3
	e_add16i		r3,r3,sub_state@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3
#                EaSetMainState(EA_WRITE);
	.d2line		3050
	diab.li		r0,2
	lis		r3,main_state@ha		# result=r3
	e_add16i		r3,r3,main_state@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3
#                SetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		3051
	lis		r3,ea_jobresult@ha		# result=r3
	e_add16i		r3,r3,ea_jobresult@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3
#                DbgSetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		3052
	lis		r3,Ea_JobResultDbg@ha		# result=r3
	e_add16i		r3,r3,Ea_JobResultDbg@l		# result=r3 result=r3
	stb		r0,0(r3)		# result=r3
	b		.L551
.L563:
#             }
#             else
#             {
#                EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		3056
.Llo343:
	diab.li		r0,1
	lis		r3,memif_status@ha		# result=r3
	e_add16i		r3,r3,memif_status@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3
	lis		r3,Ea_MemifStatusDbg@ha		# result=r3
	e_add16i		r3,r3,Ea_MemifStatusDbg@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3
	b		.L551
.L561:
#             }
#          }
#          else
#          {
#              /* Write Single block when the mangement data is not available, Reading the Admin data counter is needed*/
#             ReadAddress = Eeprom_Address();
	.d2line		3062
.Llo379:
	bl		Eeprom_Address
#             result = (*Ea_ReadFctPtr[GetDeviceIndex()])(ReadAddress, Ea_AdminData, (uint32)LIGHT_ADMIN_DATALENGTH);
	.d2line		3063
.Llo352:
	lis		r5,Ea_ReadFctPtr@ha		# Length=r5
.Llo358:
	e_add16i		r5,r5,Ea_ReadFctPtr@l		# Length=r5 Length=r5
	lis		r4,(current_block+18)@ha		# counter=r4
.Llo400:
	lbz		r0,(current_block+18)@l(r4)		# mod_state=r0 counter=r4
.Llo365:
	rlwinm		r0,r0,2,22,29		# mod_state=r0 mod_state=r0
	lwzx		r0,r5,r0		# mod_state=r0 Length=r5
.Llo366:
	mtspr		ctr,r0		# mod_state=ctr
	lis		r4,Ea_AdminData@ha		# counter=r4
	e_add16i		r4,r4,Ea_AdminData@l		# counter=r4 counter=r4
.Llo401:
	mr		r0,r3		# ReadAddress=r0 ReadAddress=r3
	diab.li		r5,1		# Length=r5
.Llo359:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo353:
	mr		r29,r3		# result=r29 result=r3
#             {
#                if(E_OK == result)
	.d2line		3065
	rlwinm		r3,r3,0,24,31		# result=r3 result=r3
	se_cmpi		r3,0		# result=r3
	bc		0,2,.L571	# ne
#                {
#                   EaSetCurrentBlock(BlockNumber, ZERO_LENGTH, DataBufferPtr, \
	.d2line		3067
.Llo380:
	lis		r4,(EA_BlockDescriptor+4)@ha		# counter=r4
.Llo381:
	e_add16i		r4,r4,(EA_BlockDescriptor+4)@l		# counter=r4 counter=r4
	lis		r3,Ea_MgmtBlockIndex@ha		# result=r3
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# mod_state=r0 result=r3
.Llo367:
	e_mulli		r0,r0,10		# mod_state=r0 mod_state=r0
	lbzx		r0,r4,r0		# mod_state=r0 counter=r4
	stb		r0,11(r1)		# mod_state=r0
	mr		r3,r31		# BlockNumber=r3 BlockNumber=r31
	mr		r5,r28		# DataBufferPtr=r5 DataBufferPtr=r28
	diab.li		r4,0		# counter=r4
.Llo402:
	diab.li		r6,0
	diab.li		r7,2
	diab.li		r8,51
	diab.li		r9,1
	diab.li		r10,10
	bl		EaSetCurrentBlock
#                                     ZERO_WRITES, INITIAL_RETRY_AMOUNT, EA_INVALID, \
#                                     INITIAL_BLOCK_TOWRITE, EA_CONSISTENT,EaDevice_Index());
#                   Ea_AdminDataReadPending = TRUE;
	.d2line		3070
.Llo368:
	diab.li		r0,1		# mod_state=r0
.Llo369:
	lis		r3,Ea_AdminDataReadPending@ha		# result=r3
	e_add16i		r3,r3,Ea_AdminDataReadPending@l		# result=r3 result=r3
	stb		r0,0(r3)		# result=r3 mod_state=r0
#                   EaSetSubState(EA_S_W_SINGLE_BLOCK);
	.d2line		3071
	diab.li		r0,5		# mod_state=r0
	lis		r3,sub_state@ha		# result=r3
	e_add16i		r3,r3,sub_state@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
#                   EaSetMainState(EA_WRITE);
	.d2line		3072
	diab.li		r0,2		# mod_state=r0
	lis		r3,main_state@ha		# result=r3
	e_add16i		r3,r3,main_state@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
#                   SetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		3073
	lis		r3,ea_jobresult@ha		# result=r3
	e_add16i		r3,r3,ea_jobresult@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
#                   DbgSetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		3074
	lis		r3,Ea_JobResultDbg@ha		# result=r3
	e_add16i		r3,r3,Ea_JobResultDbg@l		# result=r3 result=r3
	stb		r0,0(r3)		# result=r3 mod_state=r0
	b		.L551
.L571:
#                }
#                else
#                {
#                   EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		3078
.Llo370:
	diab.li		r0,1		# mod_state=r0
.Llo371:
	lis		r3,memif_status@ha		# result=r3
	e_add16i		r3,r3,memif_status@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
	lis		r3,Ea_MemifStatusDbg@ha		# result=r3
	e_add16i		r3,r3,Ea_MemifStatusDbg@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
	.section	.text_vle
.L1010:
.L551:
#                }
#             }
#          }
# #if (EA_OPT_SINGLE_BLOCK == STD_OFF)
#       }
#       else
#       {
# /* PRQA S 0492 ++
#  * Array subscripting required for storing 1 virtual page from data pointer
#  * along with admin data
#  */
#          /* multiblock Write*/
#          if (CheckBlockSizeIsOneCycle)
#          {
#             /*
#              * If block size smaller than 1 virtual page size then the entire block
#              * is written in one Write call by copying the data and the admin fields into a buffer
#              */
#             for (counter = ZERO_INDEX; counter < EaBlockSize(); counter++)
#             {
#                Storage_Buffer[counter + ADMIN_DATALENGTH] = DataBufferPtr[counter];
#             }
#          }
#          else
#          {
#             /* Else the data is stored after the First Admin data section */
#             for (counter = ZERO_INDEX; counter < (uint16)(EA_VIRTUAL_PAGE_SIZE - ADMIN_DATALENGTH); counter++)
#             {
#                Storage_Buffer[counter + ADMIN_DATALENGTH] = DataBufferPtr[counter];
#             }
#          }
# /* PRQA S 0492 -- */
#          result = CheckAdminDataValidity();
#          if (E_OK == result)
#          {
#             /* Write block when the mangement data is available*/
#             uint16 dataLength;
# 
#             EaSetCurrentBlock(BlockNumber, ZERO_LENGTH, DataBufferPtr, \
#                               GetAdminWriteNumbers(), \
#                               INITIAL_RETRY_AMOUNT, EA_VALID, \
#                               GetAdminBlockToWrite(), \
#                               EA_CONSISTENT,EaDevice_Index());
# 
#             IncAdminValidityCounter();
#             UpdateCurrentData(Ea_AdminData);
#             WriteAddress = Eeprom_WriteAddress();
#             for (counter = ZERO_INDEX; counter < ADMIN_DATALENGTH; counter++)
#             {
#                /* admin data stored in buffer*/
#                Storage_Buffer[counter] = Ea_AdminData[counter];
#             }
# 
#             if (CheckBlockSizeIsOneCycle || (CheckBlockSizeIsTwoCycle && (TRUE == AdminDataOverflow())))
#             {
#                 /* Second admin data field stored for Blocks with size less than 1 virtual page or admin data overflow occurs*/
#                for (counter = ZERO_INDEX; counter < ADMIN_DATALENGTH; counter++)
#                {
#                   Storage_Buffer[counter + ADMIN_DATALENGTH + EaBlockSize()] = Ea_AdminData[counter];
#                }
#                dataLength = EaTotalBlockSize();
#             }
#             else
#             {
#                dataLength = EA_VIRTUAL_PAGE_SIZE;
#             }
#             /*
#              * The Write function shall be called
#              * for address starting at the begining of a physical EEPROM page always.
#              */
#             result = (*Ea_WriteFctPtr[GetDeviceIndex()])(WriteAddress, Storage_Buffer, (uint32)dataLength);
#             if(E_OK == result)
#             {
#                if (CheckBlockSizeIsOneCycle || (CheckBlockSizeIsTwoCycle && (TRUE == AdminDataOverflow())))
#                {
#                    /* If size is less than 1 virtual page Size, Write is completed in 1 write cycle*/
#                   Ea_AdminDatawriteStatus = EA_DATA_VALIDATED;
#                }
#                else if (CheckBlockSizeIsTwoCycle)
#                {
#                   /*
#                   * If size is less than 2 virtual page Size
#                   * Write is completed in 2 write cycles
#                   */
#                   Ea_AdminDataWritePending = TRUE;
#                }
#                else
#                {
#                   if (0 == EaBlock_Length())
#                    {
#                       /*
#                        * if only Admin data overflows to the next page then
#                        *  Write is completed in 2 write cycles
#                        */
#                       Ea_AdminDataWritePending = TRUE;
#                    }
#                    else
#                    {
#                      /* 3 write cycles shall be essential */
#                      Ea_AdminDatawriteStatus = EA_DATA_INVALIDATED;
#                    }
#                }
# 
#                SetStateService(TRUE);
#                SetServiceFunction(&Ea_W_Processing_Error, &Ea_W_Write_Done, NULL_PTR);
#                EaSetSubState(EA_S_OP_IN_PROGRESS);
#                EaSetMainState(EA_WRITE);
#                SetEaJobResult(MEMIF_JOB_PENDING);
#                DbgSetEaJobResult(MEMIF_JOB_PENDING);
#             }
#             else
#             {
#                EaSetMemIfStatus(MEMIF_IDLE);
#             }
#          }
#          else
#          {
#             /* Reading Admin data area of the correct block is needed, Hence block search is initiated*/
#             EaSetCurrentBlock(BlockNumber, ZERO_LENGTH, DataBufferPtr, \
#                               ZERO_WRITES, INITIAL_RETRY_AMOUNT, EA_INVALID, \
#                               INITIAL_BLOCK_TOWRITE, EA_CONSISTENT,EaDevice_Index());
#             ReadAddress = Eeprom_ReadAddress();
#             result = (*Ea_ReadFctPtr[GetDeviceIndex()])(ReadAddress, admin_buffer, (uint32)ADMIN_DATALENGTH);
#             if (E_OK == result)
#             {
#                SetStateService(FALSE);
#                SetServiceFunction(&Ea_W_Processing_Error, &Ea_Read_Verification, &Ea_W_Write);
#                /* transition to next state */
#                EaSetSubState(EA_S_OP_IN_PROGRESS);
#                EaSetMainState(EA_WRITE);
#                SetEaJobResult(MEMIF_JOB_PENDING);
#                DbgSetEaJobResult(MEMIF_JOB_PENDING);
#             }
#             else
#             {
#                EaSetMemIfStatus(MEMIF_IDLE);
#             }
#          }
#       }
# #endif
#       }
#       SchM_Exit_Ea_EaStateChange();
	.d2line		3220
.Llo372:
	bl		SchM_Exit_Ea_EaStateChange
.L540:
#    }
#    /* PRQA S 3358 -- */
#    return result;
	.d2line		3223
.Llo344:
	rlwinm		r3,r29,0,24,31		# mod_state=r3 result=r29
# }
	.d2line		3224
	.d2epilogue_begin
.Llo346:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo382:
	lwz		r0,36(r1)		# mod_state=r0
	mtspr		lr,r0		# mod_state=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo347:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L994:
	.type		Ea_Write,@function
	.size		Ea_Write,.-Ea_Write
# Number of nodes = 480

# Allocations for Ea_Write
#	?a4		BlockNumber
#	?a5		DataBufferPtr
#	?a6		$$13
#	?a7		$$12
#	?a8		WriteAddress
#	?a9		ReadAddress
#	?a10		Length
#	?a11		mod_state
#	?a12		result
#	SP,12		block_index
#	?a13		counter
# FUNC(void, EA_CODE) Ea_Cancel(void)
	.align		2
	.section	.text_vle
        .d2line         3226,21
#$$ld
.L1017:

#$$bf	Ea_Cancel,interprocedural,rasave,nostackparams
	.globl		Ea_Cancel
	.d2_cfa_start __cie
Ea_Cancel:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(MemIf_StatusType, AUTOMATIC) mod_state;
# 
#    #if (STD_ON == EA_POLLING_MODE)
#    mod_state = (*Ea_GetStatusFctPtr[GetDeviceIndex()])();
#    #else
#    mod_state = memif_status;
	.d2line		3233
	lis		r3,memif_status@ha
	lwz		r0,memif_status@l(r3)
.Llo403:
	mr		r0,r0		# mod_state=r0 mod_state=r0
#    #endif
# 
#    /* PRQA S 3358 ++ */
#    if(FALSE == Ea_InitDone)
	.d2line		3237
	lis		r3,Ea_InitDone@ha
	lbz		r3,Ea_InitDone@l(r3)
	se_cmpi		r3,0
	bc		1,2,.L599	# eq
#    {
#       EA_ASSERT_DET(EA_CANCEL_ID, EA_E_UNINIT);
#    }
#    else if(MEMIF_UNINIT == mod_state)
	.d2line		3241
	se_cmpi		r0,0		# mod_state=r0
	bc		1,2,.L599	# eq
#    {
#       EA_ASSERT_DET(EA_CANCEL_ID, EA_E_UNINIT);
#    }
#    else if(MEMIF_BUSY != mod_state)
	.d2line		3245
	se_cmpi		r0,2		# mod_state=r0
	bc		0,2,.L599	# ne
#    {
#       EA_ASSERT_DET(EA_CANCEL_ID, EA_E_INVALID_CANCEL);
#    }
#    else
#    {
#       SchM_Enter_Ea_EaStateChange();
	.d2line		3251
.Llo404:
	bl		SchM_Enter_Ea_EaStateChange
#       Ea_AdminDataReadPending = FALSE;
	.d2line		3252
	diab.li		r4,0
	lis		r3,Ea_AdminDataReadPending@ha
	e_add16i		r3,r3,Ea_AdminDataReadPending@l
	stb		r4,0(r3)
#       Ea_AdminDataWritePending = FALSE;
	.d2line		3253
	lis		r3,Ea_AdminDataWritePending@ha
	e_add16i		r3,r3,Ea_AdminDataWritePending@l
	stb		r4,0(r3)
#       EaSetMemIfStatus(MEMIF_BUSY);
	.d2line		3254
	diab.li		r0,2		# mod_state=r0
.Llo405:
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r0,0(r3)		# mod_state=r0
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r0,0(r3)		# mod_state=r0
#       EaSetMainState(EA_IDLE);
	.d2line		3255
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r4,0(r3)
#       SetEaJobResult(MEMIF_JOB_CANCELED);
	.d2line		3256
	diab.li		r0,3		# mod_state=r0
	lis		r3,ea_jobresult@ha
	e_add16i		r3,r3,ea_jobresult@l
	stw		r0,0(r3)		# mod_state=r0
#       DbgSetEaJobResult(MEMIF_JOB_CANCELED);
	.d2line		3257
	lis		r3,Ea_JobResultDbg@ha
	e_add16i		r3,r3,Ea_JobResultDbg@l
	stb		r0,0(r3)		# mod_state=r0
#       (*Ea_CancelFctPtr[GetDeviceIndex()])();
	.d2line		3258
	lis		r4,Ea_CancelFctPtr@ha
	e_add16i		r4,r4,Ea_CancelFctPtr@l
	lis		r3,(current_block+18)@ha
	lbz		r0,(current_block+18)@l(r3)		# mod_state=r0
	rlwinm		r0,r0,2,22,29		# mod_state=r0 mod_state=r0
	lwzx		r0,r4,r0		# mod_state=r0
.Llo406:
	mtspr		ctr,r0		# mod_state=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
#       Call_JobEndCallback();
	.d2line		3259
	lis		r3,(EA_General+4)@ha
	lwz		r0,(EA_General+4)@l(r3)		# mod_state=r0
.Llo407:
	se_cmpi		r0,0		# mod_state=r0
	bc		1,2,.L608	# eq
.Llo408:
	lis		r3,(EA_General+4)@ha
	lwz		r0,(EA_General+4)@l(r3)		# mod_state=r0
	mtspr		ctr,r0		# mod_state=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L608:
#       SchM_Exit_Ea_EaStateChange();
	.d2line		3260
	bl		SchM_Exit_Ea_EaStateChange
.L599:
#    }
#    /* PRQA S 3358 -- */
# }
	.d2line		3263
	.d2epilogue_begin
	lwz		r0,20(r1)		# mod_state=r0
	mtspr		lr,r0		# mod_state=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1018:
	.type		Ea_Cancel,@function
	.size		Ea_Cancel,.-Ea_Cancel
# Number of nodes = 66

# Allocations for Ea_Cancel
#	?a4		mod_state
# FUNC(MemIf_StatusType, EA_CODE) Ea_GetStatus(void)
	.align		2
	.section	.text_vle
        .d2line         3265,33
#$$ld
.L1024:

#$$bf	Ea_GetStatus,interprocedural,rasave,nostackparams
	.globl		Ea_GetStatus
	.d2_cfa_start __cie
Ea_GetStatus:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /* auxliary variable */
#    VAR(MemIf_StatusType, AUTOMATIC) result;
# 
#    if(TRUE == Ea_InitDone)
	.d2line		3270
	lis		r3,Ea_InitDone@ha
	lbz		r0,Ea_InitDone@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L612	# ne
#    {
#       /* status taken while processing a request from upper layer */
#       SchM_Enter_Ea_EaStateChange();
	.d2line		3273
	bl		SchM_Enter_Ea_EaStateChange
# 
#       if (EA_IDLE == main_state)
	.d2line		3275
	lis		r3,main_state@ha
	lwz		r0,main_state@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L613	# ne
#       {
#          result = MEMIF_IDLE;
	.d2line		3277
	diab.li		r31,1		# result=r31
.Llo409:
	b		.L617
.L613:
#       }
#       else if((EA_READ == main_state) || (EA_WRITE == main_state) || (EA_INVALIDATE == main_state) || (EA_ERASE_IMMEDIATE_DATA == main_state))
	.d2line		3279
.Llo410:
	lis		r3,main_state@ha
	lwz		r0,main_state@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L618	# eq
	lis		r3,main_state@ha
	lwz		r0,main_state@l(r3)
	se_cmpi		r0,2
	bc		1,2,.L618	# eq
	lis		r3,main_state@ha
	lwz		r0,main_state@l(r3)
	se_cmpi		r0,4
	bc		1,2,.L618	# eq
	lis		r3,main_state@ha
	lwz		r0,main_state@l(r3)
	se_cmpi		r0,5
	bc		0,2,.L615	# ne
.L618:
#       {
#          result = MEMIF_BUSY;
	.d2line		3281
	diab.li		r31,2		# result=r31
.Llo411:
	b		.L617
.L615:
#       }
#       else
#       {
#          result = MEMIF_BUSY_INTERNAL;
	.d2line		3285
.Llo412:
	diab.li		r31,3		# result=r31
.Llo413:
	b		.L617
.L612:
#       }
#    }
#    else
#    {
#       result = MEMIF_UNINIT;
	.d2line		3290
.Llo414:
	diab.li		r31,0		# result=r31
.L617:
#    }
#    SchM_Exit_Ea_EaStateChange();
	.d2line		3292
.Llo415:
	bl		SchM_Exit_Ea_EaStateChange
#    return result;
	.d2line		3293
	mr		r3,r31		# result=r3 result=r31
# }
	.d2line		3294
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo416:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1025:
	.type		Ea_GetStatus,@function
	.size		Ea_GetStatus,.-Ea_GetStatus
# Number of nodes = 40

# Allocations for Ea_GetStatus
#	?a4		result
# FUNC(MemIf_JobResultType, EA_CODE) Ea_GetJobResult(void)
	.align		2
	.section	.text_vle
        .d2line         3296,36
#$$ld
.L1031:

#$$bf	Ea_GetJobResult,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.globl		Ea_GetJobResult
	.d2_cfa_start __cie
Ea_GetJobResult:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(MemIf_JobResultType,AUTOMATIC) result = MEMIF_JOB_FAILED;
	.d2line		3298
	diab.li		r3,1		# result=r3
#    VAR(MemIf_StatusType, AUTOMATIC) mod_state;
# 
#    #if (STD_ON == EA_POLLING_MODE)
#    mod_state = (*Ea_GetStatusFctPtr[GetDeviceIndex()])();
#    #else
#    mod_state = memif_status;
	.d2line		3304
.Llo417:
	lis		r4,memif_status@ha
	lwz		r0,memif_status@l(r4)
.Llo419:
	mr		r0,r0		# mod_state=r0 mod_state=r0
#    #endif
# 
#    /* PRQA S 3358 ++ */
#    if(FALSE == Ea_InitDone)
	.d2line		3308
	lis		r4,Ea_InitDone@ha
	lbz		r4,Ea_InitDone@l(r4)
	se_cmpi		r4,0
	bc		1,2,.L626	# eq
#    {
#       EA_ASSERT_DET(EA_GETJOBRESULT_ID, EA_E_UNINIT);
#    }
#    else if(MEMIF_UNINIT == mod_state)
	.d2line		3312
	se_cmpi		r0,0		# mod_state=r0
	bc		1,2,.L626	# eq
#    {
#       EA_ASSERT_DET(EA_GETJOBRESULT_ID, EA_E_UNINIT);
#    }
#    else
#    {
#       result=GetEaJobResult();
	.d2line		3318
.Llo420:
	lis		r3,ea_jobresult@ha		# result=r3
	lwz		r3,ea_jobresult@l(r3)		# result=r3 result=r3
	mr		r3,r3		# result=r3 result=r3
.L626:
#    }
#    /* PRQA S 3358 -- */
#    /* as a result local jobresult state is returned */
#    return result;
	.d2line		3322
	mr		r3,r3		# result=r3 result=r3
# }
	.d2line		3323
	.d2epilogue_begin
.Llo418:
	lwz		r0,20(r1)		# mod_state=r0
	mtspr		lr,r0		# mod_state=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1032:
	.type		Ea_GetJobResult,@function
	.size		Ea_GetJobResult,.-Ea_GetJobResult
# Number of nodes = 18

# Allocations for Ea_GetJobResult
#	?a4		result
#	?a5		mod_state
# FUNC(Std_ReturnType,EA_CODE) Ea_InvalidateBlock
	.align		2
	.section	.text_vle
        .d2line         3325,30
#$$ld
.L1040:

#$$bf	Ea_InvalidateBlock,interprocedural,rasave,nostackparams
	.globl		Ea_InvalidateBlock
	.d2_cfa_start __cie
Ea_InvalidateBlock:
.Llo421:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# BlockNumber=r31 BlockNumber=r3
	.d2prologue_end
# (
#    VAR(uint16, AUTOMATIC) BlockNumber
# )
# {
#    VAR(Std_ReturnType, AUTOMATIC) result = E_NOT_OK;
	.d2line		3330
	diab.li		r30,1		# result=r30
#    VAR(uint32,AUTOMATIC) WriteAddress;
#    VAR(uint32,AUTOMATIC) ReadAddress;
#    VAR(MemIf_StatusType, AUTOMATIC) mod_state;
#    VAR(uint16, AUTOMATIC) block_index;
# 
#    #if (STD_ON == EA_POLLING_MODE)
#    mod_state = (*Ea_GetStatusFctPtr[EaDevice_Index()])();
#    #else
#    mod_state = memif_status;
	.d2line		3339
	lis		r3,memif_status@ha
.Llo422:
	lwz		r0,memif_status@l(r3)
.Llo442:
	mr		r0,r0		# mod_state=r0 mod_state=r0
#    #endif
# 
#    if(FALSE == Ea_InitDone)
	.d2line		3342
	lis		r3,Ea_InitDone@ha
	lbz		r3,Ea_InitDone@l(r3)
	se_cmpi		r3,0
	bc		1,2,.L632	# eq
#    {
#       EA_ASSERT_DET(EA_INVALIDATE_DATA_ID, EA_E_UNINIT);
#    }
#    else if(MEMIF_UNINIT == mod_state)
	.d2line		3346
.Llo423:
	se_cmpi		r0,0		# mod_state=r0
	bc		1,2,.L632	# eq
#    {
#       EA_ASSERT_DET(EA_INVALIDATE_DATA_ID, EA_E_UNINIT);
#    }
#    else if(MEMIF_BUSY == mod_state)
	.d2line		3350
	se_cmpi		r0,2		# mod_state=r0
	bc		1,2,.L632	# eq
#    {
#       EA_ASSERT_DET(EA_INVALIDATE_DATA_ID, EA_E_BUSY);
#    }
#    else if(MEMIF_BUSY_INTERNAL == mod_state)
	.d2line		3354
	se_cmpi		r0,3		# mod_state=r0
	bc		1,2,.L632	# eq
#    {
#       EA_ASSERT_DET(EA_INVALIDATE_DATA_ID, EA_E_BUSY_INTERNAL);
#    }
#    else if(E_NOT_OK == CheckStsBusyInternalMgmtOp(mod_state, BlockNumber))
	.d2line		3358
	mr		r4,r31		# BlockNumber=r4 BlockNumber=r31
	mr		r3,r0		# mod_state=r3 mod_state=r0
	bl		CheckStsBusyInternalMgmtOp
.Llo443:
	rlwinm		r3,r3,0,24,31		# mod_state=r3 mod_state=r3
.Llo444:
	se_cmpi		r3,1		# mod_state=r3
	bc		1,2,.L632	# eq
#    {
#       EA_ASSERT_DET(EA_INVALIDATE_DATA_ID, EA_E_BUSY_INTERNAL);
#    }
#    else if(E_NOT_OK == CheckBlockNumber(BlockNumber, &block_index))
	.d2line		3362
.Llo445:
	diab.addi		r4,r1,12
	mr		r3,r31		# BlockNumber=r3 BlockNumber=r31
	bl		CheckBlockNumber
.Llo446:
	rlwinm		r3,r3,0,24,31		# mod_state=r3 mod_state=r3
	se_cmpi		r3,1		# mod_state=r3
	bc		1,2,.L632	# eq
#    {
#       EA_ASSERT_DET(EA_INVALIDATE_DATA_ID, EA_E_INVALID_BLOCK_NO);
#    }
#    else
#    {
#       SchM_Enter_Ea_EaStateChange();
	.d2line		3368
.Llo447:
	bl		SchM_Enter_Ea_EaStateChange
#       Ea_MgmtBlockIndex = block_index;
	.d2line		3369
	lhz		r0,12(r1)		# mod_state=r0
.Llo448:
	lis		r3,Ea_MgmtBlockIndex@ha		# mod_state=r3
	e_add16i		r3,r3,Ea_MgmtBlockIndex@l		# mod_state=r3 mod_state=r3
	sth		r0,0(r3)		# mod_state=r3 mod_state=r0
#       /* PRQA S 3358 ++ */
#       if (EA_IDLE == main_state)
	.d2line		3371
	lis		r3,main_state@ha		# mod_state=r3
	lwz		r0,main_state@l(r3)		# mod_state=r0 mod_state=r3
	se_cmpi		r0,0		# mod_state=r0
	bc		0,2,.L643	# ne
#       {
# #if (EA_OPT_SINGLE_BLOCK == STD_OFF)
#          if (EA_SINGLE_BLOCK == EaBlockAmounts())
#          {
# #endif
#          result = CheckAdminDataValidity();
	.d2line		3377
.Llo449:
	lis		r4,EA_ManagementBlock@ha
	e_add16i		r4,r4,EA_ManagementBlock@l
	lis		r3,Ea_MgmtBlockIndex@ha		# mod_state=r3
.Llo450:
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# mod_state=r0 mod_state=r3
	rlwinm		r0,r0,1,15,30		# mod_state=r0 mod_state=r0
	lbzx		r0,r4,r0		# mod_state=r0
	cmpi		0,0,r0,49		# mod_state=r0
	diab.li		r3,1		# mod_state=r3
.Llo451:
	isel		r3,r3,r0,2		# mod_state=r3 mod_state=r3 mod_state=r0
.L656:
.Llo429:
	diab.li		r0,0		# mod_state=r0
	isel		r3,r3,r0,2		# mod_state=r3 mod_state=r3 mod_state=r0
.L657:
.Llo430:
	mr		r30,r3		# result=r30 result=r3
#          if(E_OK == result)
	.d2line		3378
	e_andi.		r0,r3,255		# mod_state=r0 mod_state=r3
	bc		0,2,.L644	# ne
#          {
#             /* Invalidate Single Block with Management data available*/
#             if (EA_INVALID == GetAdminValidity())
	.d2line		3381
.Llo431:
	lis		r4,EA_ManagementBlock@ha
.Llo432:
	e_add16i		r4,r4,EA_ManagementBlock@l
	lis		r3,Ea_MgmtBlockIndex@ha		# mod_state=r3
.Llo452:
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# mod_state=r0 mod_state=r3
	rlwinm		r0,r0,1,15,30		# mod_state=r0 mod_state=r0
	lbzx		r0,r4,r0		# mod_state=r0
	cmpi		0,0,r0,51		# mod_state=r0
	bc		0,2,.L645	# ne
#             {
#                EaSetSubState(EA_S_IB_NO_PROCESS);
	.d2line		3383
.Llo453:
	diab.li		r0,0		# mod_state=r0
.Llo454:
	lis		r3,sub_state@ha		# mod_state=r3
	e_add16i		r3,r3,sub_state@l		# mod_state=r3 mod_state=r3
	stw		r0,0(r3)		# mod_state=r3 mod_state=r0
#                EaSetMainState(EA_INVALIDATE);
	.d2line		3384
	diab.li		r0,4		# mod_state=r0
	lis		r3,main_state@ha		# mod_state=r3
	e_add16i		r3,r3,main_state@l		# mod_state=r3 mod_state=r3
	stw		r0,0(r3)		# mod_state=r3 mod_state=r0
#                SetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		3385
	diab.li		r0,2		# mod_state=r0
	lis		r3,ea_jobresult@ha		# mod_state=r3
	e_add16i		r3,r3,ea_jobresult@l		# mod_state=r3 mod_state=r3
	stw		r0,0(r3)		# mod_state=r3 mod_state=r0
#                DbgSetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		3386
	lis		r3,Ea_JobResultDbg@ha		# mod_state=r3
	e_add16i		r3,r3,Ea_JobResultDbg@l		# mod_state=r3 mod_state=r3
	stb		r0,0(r3)		# mod_state=r3 mod_state=r0
	b		.L643
.L645:
#             }
#             else
#             {
#                EaSetMemIfStatus(MEMIF_BUSY);
	.d2line		3390
.Llo455:
	diab.li		r7,2
	lis		r3,memif_status@ha		# mod_state=r3
.Llo456:
	e_add16i		r3,r3,memif_status@l		# mod_state=r3 mod_state=r3
	stw		r7,0(r3)		# mod_state=r3
	lis		r3,Ea_MemifStatusDbg@ha		# mod_state=r3
	e_add16i		r3,r3,Ea_MemifStatusDbg@l		# mod_state=r3 mod_state=r3
	stw		r7,0(r3)		# mod_state=r3
#                EaSetCurrentBlock(BlockNumber, ZERO_LENGTH,NULL_PTR, \
	.d2line		3391
	lis		r4,(EA_BlockDescriptor+4)@ha
	e_add16i		r4,r4,(EA_BlockDescriptor+4)@l
	lis		r3,Ea_MgmtBlockIndex@ha		# mod_state=r3
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# mod_state=r0 mod_state=r3
	e_mulli		r0,r0,10		# mod_state=r0 mod_state=r0
	lbzx		r0,r4,r0		# mod_state=r0
	stb		r0,11(r1)		# mod_state=r0
	mr		r3,r31		# BlockNumber=r3 BlockNumber=r31
.Llo457:
	diab.li		r4,0
.Llo458:
	diab.li		r5,0
	diab.li		r6,0
	diab.li		r8,50
	diab.li		r9,1
	diab.li		r10,10
	bl		EaSetCurrentBlock
#                                  ZERO_WRITES, INITIAL_RETRY_AMOUNT, \
#                                  EA_VALID, INITIAL_BLOCK_TOWRITE, \
#                                  EA_CONSISTENT,EaDevice_Index());
#                IncValidityCounter(Ea_AdminData);
	.d2line		3395
.Llo459:
	lis		r4,(EA_ManagementBlock+1)@ha
	e_add16i		r4,r4,(EA_ManagementBlock+1)@l
	lis		r3,Ea_MgmtBlockIndex@ha		# mod_state=r3
.Llo460:
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# mod_state=r0 mod_state=r3
	rlwinm		r0,r0,1,15,30		# mod_state=r0 mod_state=r0
	lbzx		r0,r4,r0		# mod_state=r0
	cmpi		0,0,r0,254		# mod_state=r0
	bc		0,2,.L658	# ne
.Llo424:
	diab.li		r0,0		# mod_state=r0
.Llo461:
	b		.L659
.L658:
.Llo462:
	lis		r4,(EA_ManagementBlock+1)@ha
	e_add16i		r4,r4,(EA_ManagementBlock+1)@l
	lis		r3,Ea_MgmtBlockIndex@ha		# mod_state=r3
.Llo463:
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# mod_state=r0 mod_state=r3
	rlwinm		r0,r0,1,15,30		# mod_state=r0 mod_state=r0
	lbzx		r3,r4,r0		# mod_state=r3
	diab.addi		r0,r3,1		# mod_state=r0 mod_state=r3
.L659:
.Llo464:
	lis		r3,Ea_AdminData@ha		# mod_state=r3
.Llo465:
	e_add16i		r3,r3,Ea_AdminData@l		# mod_state=r3 mod_state=r3
	stb		r0,0(r3)		# mod_state=r3 mod_state=r0
#                WriteAddress = Eeprom_Address();
	.d2line		3396
	bl		Eeprom_Address
#                /*
#                 * Invalidation of block is done by incrementing the Validity counter
#                 * in the First admin field making the two admin section unequal
#                 */
#                result = (*Ea_WriteFctPtr[GetDeviceIndex()])(WriteAddress, Ea_AdminData, (uint32)LIGHT_ADMIN_DATALENGTH);
	.d2line		3401
.Llo440:
	lis		r5,Ea_WriteFctPtr@ha
	e_add16i		r5,r5,Ea_WriteFctPtr@l
	lis		r4,(current_block+18)@ha
	lbz		r0,(current_block+18)@l(r4)		# mod_state=r0
.Llo466:
	rlwinm		r0,r0,2,22,29		# mod_state=r0 mod_state=r0
	lwzx		r0,r5,r0		# mod_state=r0
.Llo467:
	mtspr		ctr,r0		# mod_state=ctr
	lis		r4,Ea_AdminData@ha
	e_add16i		r4,r4,Ea_AdminData@l
	mr		r0,r3		# WriteAddress=r0 WriteAddress=r3
	diab.li		r5,1
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo433:
	mr		r30,r3		# result=r30 result=r3
#                if (E_OK == result)
	.d2line		3402
	rlwinm		r3,r3,0,24,31		# result=r3 result=r3
	se_cmpi		r3,0		# result=r3
	bc		0,2,.L648	# ne
#                {
#                   EaSetSubState(EA_S_IB_SINGLE_BLOCK);
	.d2line		3404
.Llo434:
	diab.li		r0,1		# mod_state=r0
.Llo435:
	lis		r3,sub_state@ha		# result=r3
	e_add16i		r3,r3,sub_state@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
#                   EaSetMainState(EA_INVALIDATE);
	.d2line		3405
	diab.li		r0,4		# mod_state=r0
	lis		r3,main_state@ha		# result=r3
	e_add16i		r3,r3,main_state@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
#                   SetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		3406
	diab.li		r0,2		# mod_state=r0
	lis		r3,ea_jobresult@ha		# result=r3
	e_add16i		r3,r3,ea_jobresult@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
#                   DbgSetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		3407
	lis		r3,Ea_JobResultDbg@ha		# result=r3
	e_add16i		r3,r3,Ea_JobResultDbg@l		# result=r3 result=r3
	stb		r0,0(r3)		# result=r3 mod_state=r0
	b		.L643
.L648:
#                }
#                else
#                {
#                   EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		3411
.Llo468:
	diab.li		r0,1		# mod_state=r0
.Llo469:
	lis		r3,memif_status@ha		# result=r3
	e_add16i		r3,r3,memif_status@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
	lis		r3,Ea_MemifStatusDbg@ha		# result=r3
	e_add16i		r3,r3,Ea_MemifStatusDbg@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
	b		.L643
.L644:
#                }
#             }
#          }
#          else
#          {
#             EaSetMemIfStatus(MEMIF_BUSY);
	.d2line		3417
.Llo425:
	diab.li		r7,2
	lis		r3,memif_status@ha		# mod_state=r3
.Llo470:
	e_add16i		r3,r3,memif_status@l		# mod_state=r3 mod_state=r3
	stw		r7,0(r3)		# mod_state=r3
	lis		r3,Ea_MemifStatusDbg@ha		# mod_state=r3
	e_add16i		r3,r3,Ea_MemifStatusDbg@l		# mod_state=r3 mod_state=r3
	stw		r7,0(r3)		# mod_state=r3
#             /* Invalidation for Block with uninitialised management data*/
#             EaSetCurrentBlock(BlockNumber, ZERO_LENGTH, NULL_PTR, ZERO_WRITES, \
	.d2line		3419
	lis		r4,(EA_BlockDescriptor+4)@ha
	e_add16i		r4,r4,(EA_BlockDescriptor+4)@l
	lis		r3,Ea_MgmtBlockIndex@ha		# mod_state=r3
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# mod_state=r0 mod_state=r3
	e_mulli		r0,r0,10		# mod_state=r0 mod_state=r0
	lbzx		r0,r4,r0		# mod_state=r0
	stb		r0,11(r1)		# mod_state=r0
	mr		r3,r31		# BlockNumber=r3 BlockNumber=r31
.Llo471:
	diab.li		r4,0
.Llo472:
	diab.li		r5,0
	diab.li		r6,0
	diab.li		r8,51
	diab.li		r9,1
	diab.li		r10,10
	bl		EaSetCurrentBlock
#                               INITIAL_RETRY_AMOUNT, EA_INVALID, \
#                               INITIAL_BLOCK_TOWRITE, EA_CONSISTENT,EaDevice_Index());
#             /* Read Block is initiated to determine the status of the Block and also to read the Admin Field*/
#             ReadAddress = Eeprom_Address();
	.d2line		3423
.Llo473:
	bl		Eeprom_Address
# 
#             result = (*Ea_ReadFctPtr[GetDeviceIndex()])(ReadAddress, admin_buffer, (uint32)LIGHT_ADMIN_DATALENGTH);
	.d2line		3425
.Llo441:
	lis		r5,Ea_ReadFctPtr@ha
	e_add16i		r5,r5,Ea_ReadFctPtr@l
	lis		r4,(current_block+18)@ha
	lbz		r0,(current_block+18)@l(r4)		# mod_state=r0
.Llo474:
	rlwinm		r0,r0,2,22,29		# mod_state=r0 mod_state=r0
	lwzx		r0,r5,r0		# mod_state=r0
.Llo475:
	mtspr		ctr,r0		# mod_state=ctr
	lis		r4,admin_buffer@ha
	e_add16i		r4,r4,admin_buffer@l
	mr		r0,r3		# ReadAddress=r0 ReadAddress=r3
	diab.li		r5,1
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x38 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo426:
	mr		r30,r3		# result=r30 result=r3
#             if (E_OK == result)
	.d2line		3426
.Llo436:
	rlwinm		r3,r3,0,24,31		# result=r3 result=r3
	se_cmpi		r3,0		# result=r3
	bc		0,2,.L653	# ne
#             {
#                Ea_AdminDataReadPending = TRUE;
	.d2line		3428
.Llo437:
	diab.li		r4,1
.Llo438:
	lis		r3,Ea_AdminDataReadPending@ha		# result=r3
	e_add16i		r3,r3,Ea_AdminDataReadPending@l		# result=r3 result=r3
	stb		r4,0(r3)		# result=r3
#                SetStateService(FALSE);
	.d2line		3429
	diab.li		r0,0		# mod_state=r0
.Llo476:
	lis		r3,substateptr@ha		# result=r3
	e_add16i		r3,r3,substateptr@l		# result=r3 result=r3
	stb		r0,0(r3)		# result=r3 mod_state=r0
#                EaSetSubState(EA_S_IB_SINGLE_BLOCK);
	.d2line		3430
	lis		r3,sub_state@ha		# result=r3
	e_add16i		r3,r3,sub_state@l		# result=r3 result=r3
	stw		r4,0(r3)		# result=r3
#                EaSetMainState(EA_INVALIDATE);
	.d2line		3431
	diab.li		r0,4		# mod_state=r0
	lis		r3,main_state@ha		# result=r3
	e_add16i		r3,r3,main_state@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
#                SetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		3432
	diab.li		r0,2		# mod_state=r0
	lis		r3,ea_jobresult@ha		# result=r3
	e_add16i		r3,r3,ea_jobresult@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
#                DbgSetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		3433
	lis		r3,Ea_JobResultDbg@ha		# result=r3
	e_add16i		r3,r3,Ea_JobResultDbg@l		# result=r3 result=r3
	stb		r0,0(r3)		# result=r3 mod_state=r0
	b		.L643
.L653:
#             }
#             else
#             {
#                EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		3437
.Llo477:
	diab.li		r0,1		# mod_state=r0
.Llo478:
	lis		r3,memif_status@ha		# result=r3
	e_add16i		r3,r3,memif_status@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
	lis		r3,Ea_MemifStatusDbg@ha		# result=r3
	e_add16i		r3,r3,Ea_MemifStatusDbg@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
.L643:
#             }
#          }
# #if (EA_OPT_SINGLE_BLOCK == STD_OFF)
#       }
#       else
#       {
#          result = CheckAdminDataValidity();
#          if (E_OK == result)
#          {
#              /* Invalidate Block with Management data available*/
#             if (EA_INVALID == GetAdminValidity())
#             {
#                EaSetSubState(EA_S_IB_NO_PROCESS);
#                EaSetMainState(EA_INVALIDATE);
#                SetEaJobResult(MEMIF_JOB_PENDING);
#                DbgSetEaJobResult(MEMIF_JOB_PENDING);
#             }
#             else
#             {
#                EaSetMemIfStatus(MEMIF_BUSY);
#                EaSetCurrentBlock(BlockNumber, ZERO_LENGTH, NULL_PTR, \
#                                  GetAdminWriteNumbers(), \
#                                  INITIAL_RETRY_AMOUNT,
#                                  EA_INVALID, \
#                                  GetAdminBlockToWrite(), \
#                                  EA_INCONSISTENT,EaDevice_Index());
#                IncValidityCounter(Ea_AdminData);
#                InvalidateAdminBufData();
#                SetStateService(TRUE);
#                SetServiceFunction(&Ea_Ib_Processing_Error, &Ea_Ib_Write_Done, NULL_PTR);
#                /*
#                 * Invalidation of block is done by incrementing the Validity counter
#                 * in the First admin field making the two admin section unequal
#                 */
#                WriteAddress = Eeprom_WriteAddress();
# 
#                result = (*Ea_WriteFctPtr[GetDeviceIndex()])(WriteAddress, admin_buffer, (uint32)ADMIN_DATALENGTH);
#                if (E_OK == result)
#                {
#                   EaSetSubState(EA_S_OP_IN_PROGRESS);
#                   EaSetMainState(EA_INVALIDATE);
#                   SetEaJobResult(MEMIF_JOB_PENDING);
#                   DbgSetEaJobResult(MEMIF_JOB_PENDING);
#                }
#                else
#                {
#                   EaSetMemIfStatus(MEMIF_IDLE);
#                }
#             }
#          }
#          else
#          {
#             EaSetMemIfStatus(MEMIF_BUSY);
#             /* Invalidation for Block with uninitialised management data*/
#             EaSetCurrentBlock(BlockNumber, ZERO_LENGTH, NULL_PTR, ZERO_WRITES, \
#                               INITIAL_RETRY_AMOUNT, EA_INVALID, \
#                               INITIAL_BLOCK_TOWRITE, EA_CONSISTENT,EaDevice_Index());
#              /*
#               * Read Block is initiated to determine the status of the Block and also to read the Admin Field.
#               * Additionally The correct block to read needs to be located.
#               */
#             ReadAddress = Eeprom_ReadAddress();
# 
#             result = (*Ea_ReadFctPtr[GetDeviceIndex()])(ReadAddress, admin_buffer, (uint32)ADMIN_DATALENGTH);
#             if (E_OK == result)
#             {
#                Ea_AdminDataReadPending = TRUE;
#                SetStateService(FALSE);
#                SetServiceFunction(&Ea_Ib_Processing_Error, &Ea_Read_Verification, &Ea_Ib_Write_Admin_Data);
#                EaSetSubState(EA_S_OP_IN_PROGRESS);
#                EaSetMainState(EA_INVALIDATE);
#                SetEaJobResult(MEMIF_JOB_PENDING);
#                DbgSetEaJobResult(MEMIF_JOB_PENDING);
#             }
#             else
#             {
#                EaSetMemIfStatus(MEMIF_IDLE);
#             }
#          }
#       }
# #endif
#       }
#       SchM_Exit_Ea_EaStateChange();
	.d2line		3520
.Llo427:
	bl		SchM_Exit_Ea_EaStateChange
.L632:
#    }
#    /* PRQA S 3358 -- */
#    return result;
	.d2line		3523
.Llo428:
	rlwinm		r3,r30,0,24,31		# mod_state=r3 result=r30
# }
	.d2line		3524
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo439:
	lwz		r0,36(r1)		# mod_state=r0
	mtspr		lr,r0		# mod_state=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1041:
	.type		Ea_InvalidateBlock,@function
	.size		Ea_InvalidateBlock,.-Ea_InvalidateBlock
# Number of nodes = 320

# Allocations for Ea_InvalidateBlock
#	?a4		BlockNumber
#	?a5		$$15
#	?a6		$$14
#	?a7		result
#	?a8		WriteAddress
#	?a9		ReadAddress
#	?a10		mod_state
#	SP,12		block_index
# FUNC(Std_ReturnType, EA_CODE) Ea_EraseImmediateBlock
	.align		2
	.section	.text_vle
        .d2line         3526,31
#$$ld
.L1055:

#$$bf	Ea_EraseImmediateBlock,interprocedural,rasave,nostackparams
	.globl		Ea_EraseImmediateBlock
	.d2_cfa_start __cie
Ea_EraseImmediateBlock:
.Llo479:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r30,r3		# BlockNumber=r30 BlockNumber=r3
	.d2prologue_end
# (
#    VAR(uint16, AUTOMATIC) BlockNumber
# )
# {
#    VAR(Std_ReturnType, AUTOMATIC) result = E_NOT_OK;
	.d2line		3531
	diab.li		r31,1		# result=r31
#    VAR(MemIf_StatusType, AUTOMATIC) mod_state;
# #if (EA_OPT_SINGLE_BLOCK == STD_OFF)
#    VAR(uint32,AUTOMATIC) ReadAddress;
# #endif
#    VAR(uint32,AUTOMATIC) EraseAddress;
#    VAR(uint16,AUTOMATIC) block_index;
# 
#    #if (STD_ON == EA_POLLING_MODE)
#    mod_state = ((*Ea_GetStatusFctPtr[EaDevice_Index()])());
#    #else
#    mod_state = memif_status;
	.d2line		3542
.Llo485:
	lis		r3,memif_status@ha
.Llo480:
	lwz		r0,memif_status@l(r3)
.Llo490:
	mr		r0,r0		# mod_state=r0 mod_state=r0
#    #endif
#    /* PRQA S 3358 ++ */
#    if(FALSE == Ea_InitDone)
	.d2line		3545
	lis		r3,Ea_InitDone@ha
	lbz		r3,Ea_InitDone@l(r3)
	se_cmpi		r3,0
	bc		1,2,.L672	# eq
#    {
#       EA_ASSERT_DET(EA_ERASE_IMMEDIATE_DATA_ID, EA_E_UNINIT);
#    }
#    else if(MEMIF_UNINIT == mod_state)
	.d2line		3549
.Llo481:
	se_cmpi		r0,0		# mod_state=r0
	bc		1,2,.L672	# eq
#    {
#       EA_ASSERT_DET(EA_ERASE_IMMEDIATE_DATA_ID, EA_E_UNINIT);
#    }
#    else if(MEMIF_BUSY == mod_state)
	.d2line		3553
	se_cmpi		r0,2		# mod_state=r0
	bc		1,2,.L672	# eq
#    {
#       EA_ASSERT_DET(EA_ERASE_IMMEDIATE_DATA_ID, EA_E_BUSY);
#    }
#    else if(E_NOT_OK == CheckStsBusyInternalMgmtOp(mod_state, BlockNumber))
	.d2line		3557
	mr		r4,r30		# BlockNumber=r4 BlockNumber=r30
	mr		r3,r0		# mod_state=r3 mod_state=r0
	bl		CheckStsBusyInternalMgmtOp
.Llo491:
	rlwinm		r3,r3,0,24,31		# mod_state=r3 mod_state=r3
.Llo492:
	se_cmpi		r3,1		# mod_state=r3
	bc		1,2,.L672	# eq
#    {
#       EA_ASSERT_DET(EA_ERASE_IMMEDIATE_DATA_ID, EA_E_BUSY_INTERNAL);
#    }
#    else if(E_NOT_OK == CheckBlockNumber(BlockNumber, &block_index))
	.d2line		3561
.Llo493:
	diab.addi		r4,r1,12
	mr		r3,r30		# BlockNumber=r3 BlockNumber=r30
	bl		CheckBlockNumber
.Llo494:
	rlwinm		r3,r3,0,24,31		# mod_state=r3 mod_state=r3
	se_cmpi		r3,1		# mod_state=r3
	bc		1,2,.L672	# eq
#    {
#       EA_ASSERT_DET(EA_ERASE_IMMEDIATE_DATA_ID, EA_E_INVALID_BLOCK_NO);
#    }
#    else if(FALSE == EaImmediateDataByBlockIndex(block_index))
	.d2line		3565
.Llo495:
	lis		r3,(EA_BlockDescriptor+9)@ha		# mod_state=r3
.Llo496:
	e_add16i		r3,r3,(EA_BlockDescriptor+9)@l		# mod_state=r3 mod_state=r3
	lhz		r0,12(r1)		# mod_state=r0
	e_mulli		r0,r0,10		# mod_state=r0 mod_state=r0
	lbzx		r0,r3,r0		# mod_state=r0 mod_state=r3
	se_cmpi		r0,0		# mod_state=r0
	bc		1,2,.L672	# eq
#    {
#       EA_ASSERT_DET(EA_ERASE_IMMEDIATE_DATA_ID, EA_E_INVALID_BLOCK_NO);
#    }
#    else
#    {
#       SchM_Enter_Ea_EaStateChange();
	.d2line		3571
.Llo497:
	bl		SchM_Enter_Ea_EaStateChange
#       Ea_MgmtBlockIndex = block_index;
	.d2line		3572
	lhz		r0,12(r1)		# mod_state=r0
.Llo498:
	lis		r3,Ea_MgmtBlockIndex@ha		# mod_state=r3
	e_add16i		r3,r3,Ea_MgmtBlockIndex@l		# mod_state=r3 mod_state=r3
	sth		r0,0(r3)		# mod_state=r3 mod_state=r0
#       if (EA_IDLE == main_state)
	.d2line		3573
	lis		r3,main_state@ha		# mod_state=r3
	lwz		r0,main_state@l(r3)		# mod_state=r0 mod_state=r3
	se_cmpi		r0,0		# mod_state=r0
	bc		0,2,.L683	# ne
#       {
#          EaSetMemIfStatus(MEMIF_BUSY);
	.d2line		3575
.Llo499:
	diab.li		r7,2
	lis		r3,memif_status@ha		# mod_state=r3
.Llo500:
	e_add16i		r3,r3,memif_status@l		# mod_state=r3 mod_state=r3
	stw		r7,0(r3)		# mod_state=r3
	lis		r3,Ea_MemifStatusDbg@ha		# mod_state=r3
	e_add16i		r3,r3,Ea_MemifStatusDbg@l		# mod_state=r3 mod_state=r3
	stw		r7,0(r3)		# mod_state=r3
# #if (EA_OPT_SINGLE_BLOCK == STD_OFF)
#          if (EA_SINGLE_BLOCK == EaBlockAmounts())
#          {
# #endif
#          EaSetCurrentBlock(BlockNumber, ZERO_LENGTH,NULL_PTR, \
	.d2line		3580
	lis		r4,(EA_BlockDescriptor+4)@ha
	e_add16i		r4,r4,(EA_BlockDescriptor+4)@l
	lis		r3,Ea_MgmtBlockIndex@ha		# mod_state=r3
	lhz		r0,Ea_MgmtBlockIndex@l(r3)		# mod_state=r0 mod_state=r3
	e_mulli		r0,r0,10		# mod_state=r0 mod_state=r0
	lbzx		r0,r4,r0		# mod_state=r0
	stb		r0,11(r1)		# mod_state=r0
	mr		r3,r30		# BlockNumber=r3 BlockNumber=r30
.Llo501:
	diab.li		r4,0
.Llo502:
	diab.li		r5,0
	diab.li		r6,0
	diab.li		r8,51
	diab.li		r9,1
	diab.li		r10,10
	bl		EaSetCurrentBlock
#                            ZERO_WRITES, INITIAL_RETRY_AMOUNT, EA_INVALID, \
#                            INITIAL_BLOCK_TOWRITE, EA_CONSISTENT,EaDevice_Index());
#          EraseAddress = Eeprom_Address();
	.d2line		3583
.Llo503:
	bl		Eeprom_Address
#          result = (*Ea_EraseFctPtr[GetDeviceIndex()])(EraseAddress, (uint32)EaTotalBlockSize());
	.d2line		3584
.Llo510:
	lis		r5,Ea_EraseFctPtr@ha
	e_add16i		r5,r5,Ea_EraseFctPtr@l
	lis		r4,(current_block+18)@ha
	lbz		r0,(current_block+18)@l(r4)		# mod_state=r0
.Llo504:
	rlwinm		r0,r0,2,22,29		# mod_state=r0 mod_state=r0
	lwzx		r0,r5,r0		# mod_state=r0
.Llo505:
	mtspr		ctr,r0		# mod_state=ctr
	lis		r5,(EA_BlockDescriptor+2)@ha
	e_add16i		r5,r5,(EA_BlockDescriptor+2)@l
	lis		r4,Ea_MgmtBlockIndex@ha
	lhz		r0,Ea_MgmtBlockIndex@l(r4)		# mod_state=r0
.Llo506:
	e_mulli		r0,r0,10		# mod_state=r0 mod_state=r0
.Llo507:
	lhzx		r4,r5,r0
	se_addi		r4,2
	rlwinm		r4,r4,0,16,31
	mr		r0,r3		# EraseAddress=r0 EraseAddress=r3
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo482:
	mr		r31,r3		# result=r31 result=r3
#          if (E_OK == result)
	.d2line		3585
.Llo486:
	rlwinm		r3,r3,0,24,31		# result=r3 result=r3
	se_cmpi		r3,0		# result=r3
	bc		0,2,.L685	# ne
#          {
#             EaSetSubState(EA_S_EID_SINGLE_BLOCK);
	.d2line		3587
.Llo487:
	diab.li		r0,6		# mod_state=r0
.Llo488:
	lis		r3,sub_state@ha		# result=r3
	e_add16i		r3,r3,sub_state@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
#             EaSetMainState(EA_ERASE_IMMEDIATE_DATA);
	.d2line		3588
	diab.li		r0,5		# mod_state=r0
	lis		r3,main_state@ha		# result=r3
	e_add16i		r3,r3,main_state@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
#             SetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		3589
	diab.li		r0,2		# mod_state=r0
	lis		r3,ea_jobresult@ha		# result=r3
	e_add16i		r3,r3,ea_jobresult@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
#             DbgSetEaJobResult(MEMIF_JOB_PENDING);
	.d2line		3590
	lis		r3,Ea_JobResultDbg@ha		# result=r3
	e_add16i		r3,r3,Ea_JobResultDbg@l		# result=r3 result=r3
	stb		r0,0(r3)		# result=r3 mod_state=r0
	b		.L683
.L685:
#          }
#          else
#          {
#             EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		3594
.Llo508:
	diab.li		r0,1		# mod_state=r0
.Llo509:
	lis		r3,memif_status@ha		# result=r3
	e_add16i		r3,r3,memif_status@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
	lis		r3,Ea_MemifStatusDbg@ha		# result=r3
	e_add16i		r3,r3,Ea_MemifStatusDbg@l		# result=r3 result=r3
	stw		r0,0(r3)		# result=r3 mod_state=r0
.L683:
#          }
# #if (EA_OPT_SINGLE_BLOCK == STD_OFF)
#       }
#       else
#       {
#          result=CheckAdminDataValidity();
#          if (E_OK == result)
#          {
#             EaSetCurrentBlock(BlockNumber, ZERO_LENGTH, NULL_PTR, \
#                               GetAdminWriteNumbers(), \
#                               INITIAL_RETRY_AMOUNT, EA_VALID, \
#                               GetAdminBlockToWrite(), \
#                               EA_CONSISTENT,EaDevice_Index());
#             EraseAddress = Eeprom_WriteAddress();
#             result = (*Ea_EraseFctPtr[GetDeviceIndex()])(EraseAddress, (uint32)EaTotalBlockSize());
#             if (E_OK == result)
#             {
#                SetStateService(TRUE);
#                SetServiceFunction(&Ea_Eid_Processing_Error, &Ea_Eid_Erase_Done, NULL_PTR);
#                EaSetSubState(EA_S_OP_IN_PROGRESS);
#                EaSetMainState(EA_ERASE_IMMEDIATE_DATA);
#                SetEaJobResult(MEMIF_JOB_PENDING);
#                DbgSetEaJobResult(MEMIF_JOB_PENDING);
#             }
#             else
#             {
#                EaSetMemIfStatus(MEMIF_IDLE);
#             }
#          }
#          else
#          {
#             EaSetCurrentBlock(BlockNumber, ZERO_LENGTH,NULL_PTR, \
#                               ZERO_WRITES, INITIAL_RETRY_AMOUNT, \
#                               EA_INVALID, INITIAL_BLOCK_TOWRITE, \
#                               EA_CONSISTENT, EaDevice_Index());
#             ReadAddress = Eeprom_ReadAddress();
#             result = (*Ea_ReadFctPtr[GetDeviceIndex()])(ReadAddress, admin_buffer, (uint32)ADMIN_DATALENGTH);
#             if (E_OK == result)
#             {
#                SetStateService(FALSE);
#                SetServiceFunction(&Ea_Eid_Processing_Error, &Ea_Read_Verification, &Ea_Eid_Read_Done);
#                EaSetSubState(EA_S_OP_IN_PROGRESS);
#                SetEaJobResult(MEMIF_JOB_PENDING);
#                DbgSetEaJobResult(MEMIF_JOB_PENDING);
#                EaSetMainState(EA_ERASE_IMMEDIATE_DATA);
#             }
#             else
#             {
#                EaSetMemIfStatus(MEMIF_IDLE);
#             }
#          }
#       }
# #endif
#       }
#       SchM_Exit_Ea_EaStateChange();
	.d2line		3649
.Llo483:
	bl		SchM_Exit_Ea_EaStateChange
.L672:
#    }
#    /* PRQA S 3358 -- */
#    return result;
	.d2line		3652
.Llo484:
	rlwinm		r3,r31,0,24,31		# mod_state=r3 result=r31
# }
	.d2line		3653
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo489:
	lwz		r0,36(r1)		# mod_state=r0
	mtspr		lr,r0		# mod_state=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1056:
	.type		Ea_EraseImmediateBlock,@function
	.size		Ea_EraseImmediateBlock,.-Ea_EraseImmediateBlock
# Number of nodes = 158

# Allocations for Ea_EraseImmediateBlock
#	?a4		BlockNumber
#	?a5		result
#	?a6		mod_state
#	?a7		EraseAddress
#	SP,12		block_index
# FUNC(void, EA_CODE) Ea_MainFunction(void)
	.align		2
	.section	.text_vle
        .d2line         3655,21
#$$ld
.L1069:

#$$bf	Ea_MainFunction,interprocedural,rasave,nostackparams
	.globl		Ea_MainFunction
	.d2_cfa_start __cie
Ea_MainFunction:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     if(TRUE == Ea_InitDone)
	.d2line		3657
	lis		r3,Ea_InitDone@ha
	lbz		r0,Ea_InitDone@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L691	# ne
#     {
#         /* processing of main state machine */
#         switch (main_state)
	.d2line		3660
	lis		r3,main_state@ha
	lwz		r6,main_state@l(r3)
	se_cmpi		r6,2
	bc		1,1,.L1072	# gt
	bc		1,2,.L696	# eq
	se_cmpi		r6,0
	bc		1,2,.L691	# eq
	se_cmpi		r6,1
	bc		1,2,.L695	# eq
	b		.L699
.L1072:
	se_cmpi		r6,4
	bc		1,2,.L697	# eq
	se_cmpi		r6,5
	bc		1,2,.L698	# eq
	b		.L699
.L695:
#         {
#         case EA_IDLE:
#            {
#               break;
#            }
#         case EA_READ:
#            {
#               Ea_Read_Processing();
	.d2line		3668
	bl		Ea_Read_Processing
	b		.L691
.L696:
#               break;
#            }
#         case EA_WRITE:
#            {
#               Ea_Write_Processing();
	.d2line		3673
	bl		Ea_Write_Processing
	b		.L691
.L697:
#               break;
#            }
#         case EA_INVALIDATE:
#            {
#               Ea_InvalidateBlock_Processing();
	.d2line		3678
	bl		Ea_InvalidateBlock_Processing
	b		.L691
.L698:
#               break;
#            }
#         case EA_ERASE_IMMEDIATE_DATA:
#            {
#               Ea_EraseImmediateData_Processing();
	.d2line		3683
	bl		Ea_EraseImmediateData_Processing
	b		.L691
.L699:
#               break;
#            }
#         default:
#            {
#               main_state = EA_IDLE;
	.d2line		3688
	diab.li		r0,0
	lis		r3,main_state@ha
	e_add16i		r3,r3,main_state@l
	stw		r0,0(r3)
.L691:
#               break;
#            }
#         }
#     }
# }
	.d2line		3693
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
.L1070:
	.type		Ea_MainFunction,@function
	.size		Ea_MainFunction,.-Ea_MainFunction
# Number of nodes = 23

# Allocations for Ea_MainFunction
# FUNC(void, EA_CODE) Ea_GetVersionInfo
	.align		2
	.section	.text_vle
        .d2line         3697,21
#$$ld
.L1075:

#$$bf	Ea_GetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		Ea_GetVersionInfo
	.d2_cfa_start __cie
Ea_GetVersionInfo:
.Llo511:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr.		r3,r3		# VersionInfoPtr=?a4 VersionInfoPtr=r3
	.d2prologue_end
# (
#    P2VAR(Std_VersionInfoType, AUTOMATIC, EA_VAR) VersionInfoPtr
# )
# {
#    if(NULL_PTR == VersionInfoPtr)
	.d2line		3702
	bc		1,2,.L706	# eq
#    {
#       EA_ASSERT_DET(EA_GETVERSION_INFO_ID, EA_E_INVALID_DATA_POINTER);
#    }
#    else
#    {
#       VersionInfoPtr->vendorID = EA_VENDOR_ID ;
	.d2line		3708
	diab.li		r0,31
	sth		r0,0(r3)		# VersionInfoPtr=r3
#       VersionInfoPtr->moduleID = (uint8)EA_MODULE_ID ;
	.d2line		3709
	diab.li		r0,40
	sth		r0,2(r3)		# VersionInfoPtr=r3
#       VersionInfoPtr->sw_major_version = EA_SW_MAJOR_VERSION;
	.d2line		3710
	diab.li		r0,7
	stb		r0,4(r3)		# VersionInfoPtr=r3
#       VersionInfoPtr->sw_minor_version = EA_SW_MINOR_VERSION;
	.d2line		3711
	diab.li		r0,2
	stb		r0,5(r3)		# VersionInfoPtr=r3
#       VersionInfoPtr->sw_patch_version = EA_SW_PATCH_VERSION;
	.d2line		3712
	diab.li		r0,0
	stb		r0,6(r3)		# VersionInfoPtr=r3
.L706:
#    }
# }
	.d2line		3714
	.d2epilogue_begin
.Llo512:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1076:
	.type		Ea_GetVersionInfo,@function
	.size		Ea_GetVersionInfo,.-Ea_GetVersionInfo
# Number of nodes = 31

# Allocations for Ea_GetVersionInfo
#	?a4		VersionInfoPtr
# FUNC(void, EA_CODE) Ea_JobEndNotification(void)
	.align		2
	.section	.text_vle
        .d2line         3718,21
#$$ld
.L1084:

#$$bf	Ea_JobEndNotification,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Ea_JobEndNotification
	.d2_cfa_start __cie
Ea_JobEndNotification:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		3720
	diab.li		r4,1
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r4,0(r3)
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r4,0(r3)
# }
	.d2line		3721
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
.L1085:
	.type		Ea_JobEndNotification,@function
	.size		Ea_JobEndNotification,.-Ea_JobEndNotification
# Number of nodes = 6

# Allocations for Ea_JobEndNotification
# FUNC(void, EA_CODE) Ea_JobErrorNotification(void)
	.align		2
	.section	.text_vle
        .d2line         3723,21
#$$ld
.L1089:

#$$bf	Ea_JobErrorNotification,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Ea_JobErrorNotification
	.d2_cfa_start __cie
Ea_JobErrorNotification:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    EaSetMemIfStatus(MEMIF_IDLE);
	.d2line		3725
	diab.li		r4,1
	lis		r3,memif_status@ha
	e_add16i		r3,r3,memif_status@l
	stw		r4,0(r3)
	lis		r3,Ea_MemifStatusDbg@ha
	e_add16i		r3,r3,Ea_MemifStatusDbg@l
	stw		r4,0(r3)
# }
	.d2line		3726
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
.L1090:
	.type		Ea_JobErrorNotification,@function
	.size		Ea_JobErrorNotification,.-Ea_JobErrorNotification
# Number of nodes = 6

# Allocations for Ea_JobErrorNotification

# Allocations for module
	.section	.text_vle
	.0byte		.L1092
	.section	.text_vle
#$$ld
.L5:
.L1215:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\MemIf\\ssc\\make\\..\\inc\\MemIf_Types.h"
.L1210:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L1147:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\Ea_Lcfg.h"
.L1096:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\Ea\\ssc\\make\\..\\inc\\Ea_Types.h"
.L1093:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\Ea\\ssc\\make\\..\\inc\\Ea.h"
.L723:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\Ea\\ssc\\make\\..\\src\\Ea.c"
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
	.uleb128	39
	.uleb128	12
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
	.uleb128	6
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
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	12
	.uleb128	52
	.byte		0x0
	.uleb128	63
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
	.uleb128	2
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
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
	.uleb128	14
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
	.uleb128	15
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
	.uleb128	16
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
	.uleb128	17
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
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
	.uleb128	19
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
	.uleb128	20
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	24
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	25
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	26
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	27
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\Ea\\ssc\\make\\..\\src\\Ea.c"
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
.L724:
	.sleb128	2
	.4byte		.L720-.L2
	.byte		"EaSetCurrentBlock"
	.byte		0
	.4byte		.L723
	.uleb128	1085
	.uleb128	27
	.byte		0x1
	.4byte		.L721
	.4byte		.L722
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L723
	.uleb128	1085
	.uleb128	27
	.byte		"cblock"
	.byte		0
	.4byte		.L725
	.4byte		.L727
	.sleb128	3
	.4byte		.L723
	.uleb128	1085
	.uleb128	27
	.byte		"lgth"
	.byte		0
	.4byte		.L725
	.4byte		.L728
	.sleb128	3
	.4byte		.L723
	.uleb128	1085
	.uleb128	27
	.byte		"dtr"
	.byte		0
	.4byte		.L729
	.4byte		.L732
	.sleb128	3
	.4byte		.L723
	.uleb128	1085
	.uleb128	27
	.byte		"wa"
	.byte		0
	.4byte		.L733
	.4byte		.L735
	.sleb128	3
	.4byte		.L723
	.uleb128	1085
	.uleb128	27
	.byte		"rn"
	.byte		0
	.4byte		.L730
	.4byte		.L736
	.sleb128	3
	.4byte		.L723
	.uleb128	1085
	.uleb128	27
	.byte		"vdity"
	.byte		0
	.4byte		.L730
	.4byte		.L737
	.sleb128	3
	.4byte		.L723
	.uleb128	1085
	.uleb128	27
	.byte		"btw"
	.byte		0
	.4byte		.L730
	.4byte		.L738
	.sleb128	3
	.4byte		.L723
	.uleb128	1085
	.uleb128	27
	.byte		"sts"
	.byte		0
	.4byte		.L730
	.4byte		.L739
	.sleb128	3
	.4byte		.L723
	.uleb128	1085
	.uleb128	27
	.byte		"DevIdx"
	.byte		0
	.4byte		.L730
	.4byte		.L740
	.section	.debug_info,,n
	.sleb128	0
.L720:
	.section	.debug_info,,n
.L745:
	.sleb128	4
	.4byte		.L742-.L2
	.byte		"EaSingleBlock_Length"
	.byte		0
	.4byte		.L723
	.uleb128	1116
	.uleb128	30
	.4byte		.L725
	.byte		0x1
	.4byte		.L743
	.4byte		.L744
	.section	.debug_info,,n
.L746:
	.sleb128	5
	.4byte		.L723
	.uleb128	1118
	.uleb128	11
	.byte		"DataIndex_Written"
	.byte		0
	.4byte		.L725
	.4byte		.L747
.L748:
	.sleb128	5
	.4byte		.L723
	.uleb128	1119
	.uleb128	11
	.byte		"DataIndex_ToWrite"
	.byte		0
	.4byte		.L725
	.4byte		.L749
.L750:
	.sleb128	5
	.4byte		.L723
	.uleb128	1120
	.uleb128	11
	.byte		"DataIndex_CanWrite"
	.byte		0
	.4byte		.L725
	.4byte		.L751
	.section	.debug_info,,n
	.sleb128	0
.L742:
	.section	.debug_info,,n
.L756:
	.sleb128	4
	.4byte		.L753-.L2
	.byte		"Eeprom_Address"
	.byte		0
	.4byte		.L723
	.uleb128	1233
	.uleb128	30
	.4byte		.L733
	.byte		0x1
	.4byte		.L754
	.4byte		.L755
	.section	.debug_info,,n
	.sleb128	0
.L753:
	.section	.debug_info,,n
.L762:
	.sleb128	4
	.4byte		.L758-.L2
	.byte		"CheckBlockNumber"
	.byte		0
	.4byte		.L723
	.uleb128	1238
	.uleb128	38
	.4byte		.L761
	.byte		0x1
	.4byte		.L759
	.4byte		.L760
	.sleb128	3
	.4byte		.L723
	.uleb128	1238
	.uleb128	38
	.byte		"Block_number"
	.byte		0
	.4byte		.L725
	.4byte		.L763
	.sleb128	3
	.4byte		.L723
	.uleb128	1238
	.uleb128	38
	.byte		"Block_index"
	.byte		0
	.4byte		.L764
	.4byte		.L765
.L766:
	.sleb128	5
	.4byte		.L723
	.uleb128	1244
	.uleb128	19
	.byte		"result"
	.byte		0
	.4byte		.L761
	.4byte		.L767
.L768:
	.sleb128	5
	.4byte		.L723
	.uleb128	1245
	.uleb128	27
	.byte		"index"
	.byte		0
	.4byte		.L725
	.4byte		.L769
	.section	.debug_info,,n
	.sleb128	0
.L758:
	.section	.debug_info,,n
.L774:
	.sleb128	4
	.4byte		.L771-.L2
	.byte		"CheckStsBusyInternalMgmtOp"
	.byte		0
	.4byte		.L723
	.uleb128	1259
	.uleb128	38
	.4byte		.L761
	.byte		0x1
	.4byte		.L772
	.4byte		.L773
	.sleb128	3
	.4byte		.L723
	.uleb128	1259
	.uleb128	38
	.byte		"Stscheck"
	.byte		0
	.4byte		.L775
	.4byte		.L777
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L723
	.uleb128	1259
	.uleb128	38
	.byte		"Blknum"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x90
	.uleb128	4
.L778:
	.sleb128	5
	.4byte		.L723
	.uleb128	1265
	.uleb128	19
	.byte		"result_busy_IntMOP"
	.byte		0
	.4byte		.L761
	.4byte		.L779
	.section	.debug_info,,n
	.sleb128	0
.L771:
	.section	.debug_info,,n
.L784:
	.sleb128	4
	.4byte		.L781-.L2
	.byte		"CheckBlockOffset"
	.byte		0
	.4byte		.L723
	.uleb128	1280
	.uleb128	38
	.4byte		.L761
	.byte		0x1
	.4byte		.L782
	.4byte		.L783
	.sleb128	3
	.4byte		.L723
	.uleb128	1280
	.uleb128	38
	.byte		"BlockNum"
	.byte		0
	.4byte		.L725
	.4byte		.L785
	.sleb128	3
	.4byte		.L723
	.uleb128	1280
	.uleb128	38
	.byte		"offset"
	.byte		0
	.4byte		.L725
	.4byte		.L786
.L787:
	.sleb128	5
	.4byte		.L723
	.uleb128	1286
	.uleb128	19
	.byte		"result"
	.byte		0
	.4byte		.L761
	.4byte		.L788
.L789:
	.sleb128	5
	.4byte		.L723
	.uleb128	1287
	.uleb128	27
	.byte		"block_index"
	.byte		0
	.4byte		.L725
	.4byte		.L790
	.section	.debug_info,,n
	.sleb128	0
.L781:
	.section	.debug_info,,n
.L795:
	.sleb128	4
	.4byte		.L792-.L2
	.byte		"CheckBlockLength"
	.byte		0
	.4byte		.L723
	.uleb128	1303
	.uleb128	38
	.4byte		.L761
	.byte		0x1
	.4byte		.L793
	.4byte		.L794
	.sleb128	3
	.4byte		.L723
	.uleb128	1303
	.uleb128	38
	.byte		"BlkNo"
	.byte		0
	.4byte		.L725
	.4byte		.L796
	.sleb128	3
	.4byte		.L723
	.uleb128	1303
	.uleb128	38
	.byte		"BlkOff"
	.byte		0
	.4byte		.L725
	.4byte		.L797
	.sleb128	3
	.4byte		.L723
	.uleb128	1303
	.uleb128	38
	.byte		"BlkLen"
	.byte		0
	.4byte		.L725
	.4byte		.L798
.L799:
	.sleb128	5
	.4byte		.L723
	.uleb128	1310
	.uleb128	19
	.byte		"result"
	.byte		0
	.4byte		.L761
	.4byte		.L800
.L801:
	.sleb128	5
	.4byte		.L723
	.uleb128	1311
	.uleb128	27
	.byte		"block_index"
	.byte		0
	.4byte		.L725
	.4byte		.L802
	.section	.debug_info,,n
	.sleb128	0
.L792:
	.section	.debug_info,,n
.L807:
	.sleb128	2
	.4byte		.L804-.L2
	.byte		"Ea_R_Read_Done"
	.byte		0
	.4byte		.L723
	.uleb128	1682
	.uleb128	28
	.byte		0x1
	.4byte		.L805
	.4byte		.L806
	.section	.debug_info,,n
	.sleb128	0
.L804:
	.section	.debug_info,,n
.L812:
	.sleb128	2
	.4byte		.L809-.L2
	.byte		"Ea_R_TotalDataLength"
	.byte		0
	.4byte		.L723
	.uleb128	1492
	.uleb128	28
	.byte		0x1
	.4byte		.L810
	.4byte		.L811
.L813:
	.sleb128	5
	.4byte		.L723
	.uleb128	1495
	.uleb128	11
	.byte		"AdmindataLength"
	.byte		0
	.4byte		.L725
	.4byte		.L814
.L815:
	.sleb128	5
	.4byte		.L723
	.uleb128	1495
	.uleb128	28
	.byte		"counter"
	.byte		0
	.4byte		.L725
	.4byte		.L816
.L817:
	.sleb128	5
	.4byte		.L723
	.uleb128	1496
	.uleb128	12
	.byte		"SingleBlockFlag"
	.byte		0
	.4byte		.L818
	.4byte		.L819
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L823
	.4byte		.L820
	.4byte		.L821
.L824:
	.sleb128	5
	.4byte		.L723
	.uleb128	1536
	.uleb128	14
	.byte		"Read_Address"
	.byte		0
	.4byte		.L733
	.4byte		.L825
.L826:
	.sleb128	5
	.4byte		.L723
	.uleb128	1537
	.uleb128	30
	.byte		"Nextstate"
	.byte		0
	.4byte		.L827
	.4byte		.L829
	.section	.debug_info,,n
	.sleb128	0
.L823:
	.section	.debug_info,,n
	.sleb128	0
.L809:
	.section	.debug_info,,n
.L834:
	.sleb128	2
	.4byte		.L831-.L2
	.byte		"Ea_R_Single_Block"
	.byte		0
	.4byte		.L723
	.uleb128	1357
	.uleb128	28
	.byte		0x1
	.4byte		.L832
	.4byte		.L833
.L835:
	.sleb128	5
	.4byte		.L723
	.uleb128	1359
	.uleb128	11
	.byte		"Read_Address"
	.byte		0
	.4byte		.L733
	.4byte		.L836
.L837:
	.sleb128	5
	.4byte		.L723
	.uleb128	1363
	.uleb128	40
	.byte		"eep_jobresult"
	.byte		0
	.4byte		.L838
	.4byte		.L840
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L844
	.4byte		.L841
	.4byte		.L842
.L845:
	.sleb128	5
	.4byte		.L723
	.uleb128	1398
	.uleb128	23
	.byte		"counter"
	.byte		0
	.4byte		.L725
	.4byte		.L846
.L847:
	.sleb128	5
	.4byte		.L723
	.uleb128	1398
	.uleb128	32
	.byte		"ReadBlock_offset"
	.byte		0
	.4byte		.L725
	.4byte		.L848
	.section	.debug_info,,n
	.sleb128	0
.L844:
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L852
	.4byte		.L849
	.4byte		.L850
.L853:
	.sleb128	5
	.4byte		.L723
	.uleb128	1440
	.uleb128	24
	.byte		"present_validity"
	.byte		0
	.4byte		.L818
	.4byte		.L854
	.section	.debug_info,,n
	.sleb128	0
.L852:
	.section	.debug_info,,n
	.sleb128	0
.L831:
	.section	.debug_info,,n
.L859:
	.sleb128	2
	.4byte		.L856-.L2
	.byte		"Ea_R_No_Process"
	.byte		0
	.4byte		.L723
	.uleb128	1573
	.uleb128	28
	.byte		0x1
	.4byte		.L857
	.4byte		.L858
	.section	.debug_info,,n
	.sleb128	0
.L856:
	.section	.debug_info,,n
.L864:
	.sleb128	2
	.4byte		.L861-.L2
	.byte		"Ea_Op_In_Progress"
	.byte		0
	.4byte		.L723
	.uleb128	2317
	.uleb128	28
	.byte		0x1
	.4byte		.L862
	.4byte		.L863
.L865:
	.sleb128	5
	.4byte		.L723
	.uleb128	2327
	.uleb128	40
	.byte		"eep_jobresult"
	.byte		0
	.4byte		.L838
	.4byte		.L866
	.section	.debug_info,,n
	.sleb128	0
.L861:
	.section	.debug_info,,n
.L871:
	.sleb128	2
	.4byte		.L868-.L2
	.byte		"Ea_Read_Processing"
	.byte		0
	.4byte		.L723
	.uleb128	1327
	.uleb128	28
	.byte		0x1
	.4byte		.L869
	.4byte		.L870
	.section	.debug_info,,n
	.sleb128	0
.L868:
	.section	.debug_info,,n
.L876:
	.sleb128	2
	.4byte		.L873-.L2
	.byte		"Ea_R_Processing_Error"
	.byte		0
	.4byte		.L723
	.uleb128	1702
	.uleb128	28
	.byte		0x1
	.4byte		.L874
	.4byte		.L875
.L877:
	.sleb128	5
	.4byte		.L723
	.uleb128	1705
	.uleb128	40
	.byte		"eep_jobresult"
	.byte		0
	.4byte		.L838
	.4byte		.L878
	.section	.debug_info,,n
	.sleb128	0
.L873:
	.section	.debug_info,,n
.L883:
	.sleb128	2
	.4byte		.L880-.L2
	.byte		"Ea_Single_Block"
	.byte		0
	.4byte		.L723
	.uleb128	2172
	.uleb128	28
	.byte		0x1
	.4byte		.L881
	.4byte		.L882
.L884:
	.sleb128	5
	.4byte		.L723
	.uleb128	2174
	.uleb128	26
	.byte		"WriteAddress"
	.byte		0
	.4byte		.L733
	.4byte		.L885
.L886:
	.sleb128	5
	.4byte		.L723
	.uleb128	2178
	.uleb128	40
	.byte		"eep_jobresult"
	.byte		0
	.4byte		.L838
	.4byte		.L887
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L891
	.4byte		.L888
	.4byte		.L889
.L892:
	.sleb128	5
	.4byte		.L723
	.uleb128	2192
	.uleb128	17
	.byte		"Write_length"
	.byte		0
	.4byte		.L725
	.4byte		.L893
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L897
	.4byte		.L894
	.4byte		.L895
.L898:
	.sleb128	5
	.4byte		.L723
	.uleb128	2264
	.uleb128	23
	.byte		"counter"
	.byte		0
	.4byte		.L725
	.4byte		.L899
.L900:
	.sleb128	5
	.4byte		.L723
	.uleb128	2264
	.uleb128	32
	.byte		"index"
	.byte		0
	.4byte		.L725
	.4byte		.L901
.L902:
	.sleb128	5
	.4byte		.L723
	.uleb128	2265
	.uleb128	23
	.byte		"WriteBlock_offset"
	.byte		0
	.4byte		.L725
	.4byte		.L903
	.section	.debug_info,,n
	.sleb128	0
.L897:
	.section	.debug_info,,n
	.sleb128	0
.L891:
	.section	.debug_info,,n
	.sleb128	0
.L880:
	.section	.debug_info,,n
.L908:
	.sleb128	2
	.4byte		.L905-.L2
	.byte		"Ea_Write_Processing"
	.byte		0
	.4byte		.L723
	.uleb128	1746
	.uleb128	28
	.byte		0x1
	.4byte		.L906
	.4byte		.L907
	.section	.debug_info,,n
	.sleb128	0
.L905:
	.section	.debug_info,,n
.L913:
	.sleb128	2
	.4byte		.L910-.L2
	.byte		"Ea_Ib_Single_Block"
	.byte		0
	.4byte		.L723
	.uleb128	1925
	.uleb128	28
	.byte		0x1
	.4byte		.L911
	.4byte		.L912
.L914:
	.sleb128	5
	.4byte		.L723
	.uleb128	1930
	.uleb128	40
	.byte		"eep_jobresult"
	.byte		0
	.4byte		.L838
	.4byte		.L915
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L919
	.4byte		.L916
	.4byte		.L917
.L920:
	.sleb128	5
	.4byte		.L723
	.uleb128	1947
	.uleb128	20
	.byte		"ReadBlock_offset"
	.byte		0
	.4byte		.L725
	.4byte		.L921
.L922:
	.sleb128	5
	.4byte		.L723
	.uleb128	1948
	.uleb128	20
	.byte		"Read_Address"
	.byte		0
	.4byte		.L733
	.4byte		.L923
	.section	.debug_info,,n
	.sleb128	0
.L919:
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L927
	.4byte		.L924
	.4byte		.L925
.L928:
	.sleb128	5
	.4byte		.L723
	.uleb128	1976
	.uleb128	23
	.byte		"WriteAddress"
	.byte		0
	.4byte		.L733
	.4byte		.L929
	.section	.debug_info,,n
	.sleb128	0
.L927:
	.section	.debug_info,,n
	.sleb128	0
.L910:
	.section	.debug_info,,n
.L934:
	.sleb128	2
	.4byte		.L931-.L2
	.byte		"Ea_Ib_No_Process"
	.byte		0
	.4byte		.L723
	.uleb128	2020
	.uleb128	28
	.byte		0x1
	.4byte		.L932
	.4byte		.L933
	.section	.debug_info,,n
	.sleb128	0
.L931:
	.section	.debug_info,,n
.L939:
	.sleb128	2
	.4byte		.L936-.L2
	.byte		"Ea_InvalidateBlock_Processing"
	.byte		0
	.4byte		.L723
	.uleb128	1894
	.uleb128	28
	.byte		0x1
	.4byte		.L937
	.4byte		.L938
	.section	.debug_info,,n
	.sleb128	0
.L936:
	.section	.debug_info,,n
.L944:
	.sleb128	2
	.4byte		.L941-.L2
	.byte		"Ea_EraseImmediateData_Processing"
	.byte		0
	.4byte		.L723
	.uleb128	2090
	.uleb128	28
	.byte		0x1
	.4byte		.L942
	.4byte		.L943
	.section	.debug_info,,n
	.sleb128	0
.L941:
	.section	.debug_info,,n
.L949:
	.sleb128	8
	.4byte		.L946-.L2
	.byte		"Ea_ConsistencyCheck"
	.byte		0
	.4byte		.L723
	.uleb128	3729
	.uleb128	31
	.4byte		.L761
	.byte		0x1
	.byte		0x1
	.4byte		.L947
	.4byte		.L948
.L950:
	.sleb128	5
	.4byte		.L723
	.uleb128	3731
	.uleb128	19
	.byte		"retVal"
	.byte		0
	.4byte		.L761
	.4byte		.L951
	.section	.debug_info,,n
	.sleb128	0
.L946:
	.section	.debug_info,,n
.L956:
	.sleb128	9
	.4byte		.L953-.L2
	.byte		"Ea_Init"
	.byte		0
	.4byte		.L723
	.uleb128	2600
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L954
	.4byte		.L955
.L957:
	.sleb128	5
	.4byte		.L723
	.uleb128	2602
	.uleb128	27
	.byte		"index"
	.byte		0
	.4byte		.L725
	.4byte		.L958
	.section	.debug_info,,n
	.sleb128	0
.L953:
	.section	.debug_info,,n
.L963:
	.sleb128	9
	.4byte		.L960-.L2
	.byte		"Ea_SetMode"
	.byte		0
	.4byte		.L723
	.uleb128	2661
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L961
	.4byte		.L962
	.sleb128	3
	.4byte		.L723
	.uleb128	2661
	.uleb128	21
	.byte		"Mode"
	.byte		0
	.4byte		.L964
	.4byte		.L966
.L967:
	.sleb128	5
	.4byte		.L723
	.uleb128	2666
	.uleb128	37
	.byte		"mod_state"
	.byte		0
	.4byte		.L775
	.4byte		.L968
	.section	.debug_info,,n
	.sleb128	0
.L960:
	.section	.debug_info,,n
.L973:
	.sleb128	8
	.4byte		.L970-.L2
	.byte		"Ea_Read"
	.byte		0
	.4byte		.L723
	.uleb128	2700
	.uleb128	31
	.4byte		.L761
	.byte		0x1
	.byte		0x1
	.4byte		.L971
	.4byte		.L972
	.sleb128	3
	.4byte		.L723
	.uleb128	2700
	.uleb128	31
	.byte		"BlockNumber"
	.byte		0
	.4byte		.L725
	.4byte		.L974
	.sleb128	3
	.4byte		.L723
	.uleb128	2700
	.uleb128	31
	.byte		"BlockOffset"
	.byte		0
	.4byte		.L725
	.4byte		.L975
	.sleb128	3
	.4byte		.L723
	.uleb128	2700
	.uleb128	31
	.byte		"DataBufferPtr"
	.byte		0
	.4byte		.L729
	.4byte		.L976
	.sleb128	3
	.4byte		.L723
	.uleb128	2700
	.uleb128	31
	.byte		"Length"
	.byte		0
	.4byte		.L725
	.4byte		.L977
.L978:
	.sleb128	5
	.4byte		.L723
	.uleb128	2708
	.uleb128	26
	.byte		"ReadAddress"
	.byte		0
	.4byte		.L733
	.4byte		.L979
.L980:
	.sleb128	5
	.4byte		.L723
	.uleb128	2709
	.uleb128	35
	.byte		"result"
	.byte		0
	.4byte		.L761
	.4byte		.L981
.L982:
	.sleb128	5
	.4byte		.L723
	.uleb128	2710
	.uleb128	37
	.byte		"mod_state"
	.byte		0
	.4byte		.L775
	.4byte		.L983
	.section	.debug_info,,n
.L984:
	.sleb128	10
	.4byte		.L723
	.uleb128	2711
	.uleb128	27
	.byte		"block_index"
	.byte		0
	.4byte		.L725
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L988
	.4byte		.L985
	.4byte		.L986
.L989:
	.sleb128	5
	.4byte		.L723
	.uleb128	2770
	.uleb128	23
	.byte		"ReadLength"
	.byte		0
	.4byte		.L725
	.4byte		.L990
	.section	.debug_info,,n
	.sleb128	0
.L988:
	.section	.debug_info,,n
	.sleb128	0
.L970:
	.section	.debug_info,,n
.L995:
	.sleb128	8
	.4byte		.L992-.L2
	.byte		"Ea_Write"
	.byte		0
	.4byte		.L723
	.uleb128	2926
	.uleb128	31
	.4byte		.L761
	.byte		0x1
	.byte		0x1
	.4byte		.L993
	.4byte		.L994
	.sleb128	3
	.4byte		.L723
	.uleb128	2926
	.uleb128	31
	.byte		"BlockNumber"
	.byte		0
	.4byte		.L725
	.4byte		.L996
	.sleb128	3
	.4byte		.L723
	.uleb128	2926
	.uleb128	31
	.byte		"DataBufferPtr"
	.byte		0
	.4byte		.L729
	.4byte		.L997
.L998:
	.sleb128	5
	.4byte		.L723
	.uleb128	2932
	.uleb128	26
	.byte		"WriteAddress"
	.byte		0
	.4byte		.L733
	.4byte		.L999
.L1000:
	.sleb128	5
	.4byte		.L723
	.uleb128	2933
	.uleb128	26
	.byte		"ReadAddress"
	.byte		0
	.4byte		.L733
	.4byte		.L1001
.L1002:
	.sleb128	5
	.4byte		.L723
	.uleb128	2934
	.uleb128	26
	.byte		"Length"
	.byte		0
	.4byte		.L725
	.4byte		.L1003
.L1004:
	.sleb128	5
	.4byte		.L723
	.uleb128	2935
	.uleb128	37
	.byte		"mod_state"
	.byte		0
	.4byte		.L775
	.4byte		.L1005
.L1006:
	.sleb128	5
	.4byte		.L723
	.uleb128	2936
	.uleb128	35
	.byte		"result"
	.byte		0
	.4byte		.L761
	.4byte		.L1007
.L1008:
	.sleb128	10
	.4byte		.L723
	.uleb128	2937
	.uleb128	27
	.byte		"block_index"
	.byte		0
	.4byte		.L725
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L1012
	.4byte		.L1009
	.4byte		.L1010
.L1013:
	.sleb128	5
	.4byte		.L723
	.uleb128	2977
	.uleb128	32
	.byte		"counter"
	.byte		0
	.4byte		.L725
	.4byte		.L1014
	.section	.debug_info,,n
	.sleb128	0
.L1012:
	.section	.debug_info,,n
	.sleb128	0
.L992:
	.section	.debug_info,,n
.L1019:
	.sleb128	9
	.4byte		.L1016-.L2
	.byte		"Ea_Cancel"
	.byte		0
	.4byte		.L723
	.uleb128	3226
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L1017
	.4byte		.L1018
.L1020:
	.sleb128	5
	.4byte		.L723
	.uleb128	3228
	.uleb128	37
	.byte		"mod_state"
	.byte		0
	.4byte		.L775
	.4byte		.L1021
	.section	.debug_info,,n
	.sleb128	0
.L1016:
	.section	.debug_info,,n
.L1026:
	.sleb128	8
	.4byte		.L1023-.L2
	.byte		"Ea_GetStatus"
	.byte		0
	.4byte		.L723
	.uleb128	3265
	.uleb128	33
	.4byte		.L775
	.byte		0x1
	.byte		0x1
	.4byte		.L1024
	.4byte		.L1025
.L1027:
	.sleb128	5
	.4byte		.L723
	.uleb128	3268
	.uleb128	37
	.byte		"result"
	.byte		0
	.4byte		.L775
	.4byte		.L1028
	.section	.debug_info,,n
	.sleb128	0
.L1023:
	.section	.debug_info,,n
.L1033:
	.sleb128	8
	.4byte		.L1030-.L2
	.byte		"Ea_GetJobResult"
	.byte		0
	.4byte		.L723
	.uleb128	3296
	.uleb128	36
	.4byte		.L838
	.byte		0x1
	.byte		0x1
	.4byte		.L1031
	.4byte		.L1032
.L1034:
	.sleb128	5
	.4byte		.L723
	.uleb128	3298
	.uleb128	39
	.byte		"result"
	.byte		0
	.4byte		.L838
	.4byte		.L1035
.L1036:
	.sleb128	5
	.4byte		.L723
	.uleb128	3299
	.uleb128	37
	.byte		"mod_state"
	.byte		0
	.4byte		.L775
	.4byte		.L1037
	.section	.debug_info,,n
	.sleb128	0
.L1030:
	.section	.debug_info,,n
.L1042:
	.sleb128	8
	.4byte		.L1039-.L2
	.byte		"Ea_InvalidateBlock"
	.byte		0
	.4byte		.L723
	.uleb128	3325
	.uleb128	30
	.4byte		.L761
	.byte		0x1
	.byte		0x1
	.4byte		.L1040
	.4byte		.L1041
	.sleb128	3
	.4byte		.L723
	.uleb128	3325
	.uleb128	30
	.byte		"BlockNumber"
	.byte		0
	.4byte		.L725
	.4byte		.L1043
.L1044:
	.sleb128	5
	.4byte		.L723
	.uleb128	3330
	.uleb128	35
	.byte		"result"
	.byte		0
	.4byte		.L761
	.4byte		.L1045
.L1046:
	.sleb128	5
	.4byte		.L723
	.uleb128	3331
	.uleb128	26
	.byte		"WriteAddress"
	.byte		0
	.4byte		.L733
	.4byte		.L1047
.L1048:
	.sleb128	5
	.4byte		.L723
	.uleb128	3332
	.uleb128	26
	.byte		"ReadAddress"
	.byte		0
	.4byte		.L733
	.4byte		.L1049
.L1050:
	.sleb128	5
	.4byte		.L723
	.uleb128	3333
	.uleb128	37
	.byte		"mod_state"
	.byte		0
	.4byte		.L775
	.4byte		.L1051
.L1052:
	.sleb128	10
	.4byte		.L723
	.uleb128	3334
	.uleb128	27
	.byte		"block_index"
	.byte		0
	.4byte		.L725
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
	.section	.debug_info,,n
	.sleb128	0
.L1039:
	.section	.debug_info,,n
.L1057:
	.sleb128	8
	.4byte		.L1054-.L2
	.byte		"Ea_EraseImmediateBlock"
	.byte		0
	.4byte		.L723
	.uleb128	3526
	.uleb128	31
	.4byte		.L761
	.byte		0x1
	.byte		0x1
	.4byte		.L1055
	.4byte		.L1056
	.sleb128	3
	.4byte		.L723
	.uleb128	3526
	.uleb128	31
	.byte		"BlockNumber"
	.byte		0
	.4byte		.L725
	.4byte		.L1058
.L1059:
	.sleb128	5
	.4byte		.L723
	.uleb128	3531
	.uleb128	35
	.byte		"result"
	.byte		0
	.4byte		.L761
	.4byte		.L1060
.L1061:
	.sleb128	5
	.4byte		.L723
	.uleb128	3532
	.uleb128	37
	.byte		"mod_state"
	.byte		0
	.4byte		.L775
	.4byte		.L1062
.L1063:
	.sleb128	5
	.4byte		.L723
	.uleb128	3536
	.uleb128	26
	.byte		"EraseAddress"
	.byte		0
	.4byte		.L733
	.4byte		.L1064
.L1065:
	.sleb128	10
	.4byte		.L723
	.uleb128	3537
	.uleb128	26
	.byte		"block_index"
	.byte		0
	.4byte		.L725
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
	.section	.debug_info,,n
	.sleb128	0
.L1054:
	.section	.debug_info,,n
.L1071:
	.sleb128	9
	.4byte		.L1068-.L2
	.byte		"Ea_MainFunction"
	.byte		0
	.4byte		.L723
	.uleb128	3655
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L1069
	.4byte		.L1070
	.section	.debug_info,,n
	.sleb128	0
.L1068:
	.section	.debug_info,,n
.L1077:
	.sleb128	9
	.4byte		.L1074-.L2
	.byte		"Ea_GetVersionInfo"
	.byte		0
	.4byte		.L723
	.uleb128	3697
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L1075
	.4byte		.L1076
	.sleb128	3
	.4byte		.L723
	.uleb128	3697
	.uleb128	21
	.byte		"VersionInfoPtr"
	.byte		0
	.4byte		.L1078
	.4byte		.L1081
	.section	.debug_info,,n
	.sleb128	0
.L1074:
	.section	.debug_info,,n
.L1086:
	.sleb128	9
	.4byte		.L1083-.L2
	.byte		"Ea_JobEndNotification"
	.byte		0
	.4byte		.L723
	.uleb128	3718
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L1084
	.4byte		.L1085
	.section	.debug_info,,n
	.sleb128	0
.L1083:
	.section	.debug_info,,n
.L1091:
	.sleb128	9
	.4byte		.L1088-.L2
	.byte		"Ea_JobErrorNotification"
	.byte		0
	.4byte		.L723
	.uleb128	3723
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L1089
	.4byte		.L1090
	.section	.debug_info,,n
	.sleb128	0
.L1088:
	.section	.debug_info,,n
.L1092:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1093
	.uleb128	257
	.uleb128	32
	.byte		"Ea_LTtoPCHashValue"
	.byte		0
	.4byte		.L1094
	.section	.debug_info,,n
.L1095:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1096
	.uleb128	315
	.uleb128	45
	.byte		"Ea_SetModeFctPtr"
	.byte		0
	.4byte		.L1097
.L1104:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1096
	.uleb128	320
	.uleb128	42
	.byte		"Ea_ReadFctPtr"
	.byte		0
	.4byte		.L1105
.L1112:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1096
	.uleb128	325
	.uleb128	43
	.byte		"Ea_WriteFctPtr"
	.byte		0
	.4byte		.L1113
.L1122:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1096
	.uleb128	330
	.uleb128	44
	.byte		"Ea_CancelFctPtr"
	.byte		0
	.4byte		.L1123
.L1130:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1096
	.uleb128	335
	.uleb128	50
	.byte		"Ea_GetJobResultFctPtr"
	.byte		0
	.4byte		.L1131
.L1138:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1096
	.uleb128	345
	.uleb128	43
	.byte		"Ea_EraseFctPtr"
	.byte		0
	.4byte		.L1139
.L1146:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1147
	.uleb128	62
	.uleb128	51
	.byte		"EA_BlockDescriptor"
	.byte		0
	.4byte		.L1148
.L1153:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1147
	.uleb128	64
	.uleb128	41
	.byte		"EA_General"
	.byte		0
	.4byte		.L1154
.L1157:
	.sleb128	10
	.4byte		.L723
	.uleb128	511
	.uleb128	29
	.byte		"Ea_InitDone"
	.byte		0
	.4byte		.L818
	.sleb128	5
	.byte		0x3
	.4byte		Ea_InitDone
	.0byte		.L1157
	.lcomm		Ea_InitDone,1,0
.L1158:
	.sleb128	10
	.4byte		.L723
	.uleb128	530
	.uleb128	29
	.byte		"Ea_AdminDataWritePending"
	.byte		0
	.4byte		.L818
	.sleb128	5
	.byte		0x3
	.4byte		Ea_AdminDataWritePending
	.lcomm		Ea_AdminDataWritePending,1,0
.L1159:
	.sleb128	10
	.4byte		.L723
	.uleb128	533
	.uleb128	29
	.byte		"Ea_AdminDataReadPending"
	.byte		0
	.4byte		.L818
	.sleb128	5
	.byte		0x3
	.4byte		Ea_AdminDataReadPending
	.lcomm		Ea_AdminDataReadPending,1,0
.L1160:
	.sleb128	10
	.4byte		.L723
	.uleb128	535
	.uleb128	29
	.byte		"Ea_ReadTotalLengthInProgress"
	.byte		0
	.4byte		.L818
	.sleb128	5
	.byte		0x3
	.4byte		Ea_ReadTotalLengthInProgress
	.lcomm		Ea_ReadTotalLengthInProgress,1,0
.L1161:
	.sleb128	10
	.4byte		.L723
	.uleb128	550
	.uleb128	40
	.byte		"Ea_AdminDatawriteStatus"
	.byte		0
	.4byte		.L1162
	.sleb128	5
	.byte		0x3
	.4byte		Ea_AdminDatawriteStatus
	.lcomm		Ea_AdminDatawriteStatus,4,2
.L1164:
	.sleb128	10
	.4byte		.L723
	.uleb128	552
	.uleb128	48
	.byte		"main_state"
	.byte		0
	.4byte		.L1165
	.sleb128	5
	.byte		0x3
	.4byte		main_state
	.lcomm		main_state,4,2
.L1167:
	.sleb128	10
	.4byte		.L723
	.uleb128	554
	.uleb128	48
	.byte		"sub_state"
	.byte		0
	.4byte		.L827
	.sleb128	5
	.byte		0x3
	.4byte		sub_state
	.lcomm		sub_state,4,2
.L1168:
	.sleb128	10
	.4byte		.L723
	.uleb128	556
	.uleb128	48
	.byte		"current_block"
	.byte		0
	.4byte		.L1169
	.sleb128	5
	.byte		0x3
	.4byte		current_block
	.lcomm		current_block,20,2
.L1171:
	.sleb128	10
	.4byte		.L723
	.uleb128	558
	.uleb128	48
	.byte		"ea_jobresult"
	.byte		0
	.4byte		.L838
	.sleb128	5
	.byte		0x3
	.4byte		ea_jobresult
	.lcomm		ea_jobresult,4,2
.L1172:
	.sleb128	10
	.4byte		.L723
	.uleb128	561
	.uleb128	48
	.byte		"substateptr"
	.byte		0
	.4byte		.L1173
	.sleb128	5
	.byte		0x3
	.4byte		substateptr
	.lcomm		substateptr,16,2
.L1175:
	.sleb128	10
	.4byte		.L723
	.uleb128	564
	.uleb128	48
	.byte		"EA_ManagementBlock"
	.byte		0
	.4byte		.L1176
	.sleb128	5
	.byte		0x3
	.4byte		EA_ManagementBlock
	.lcomm		EA_ManagementBlock,6,0
	.section	.debug_info,,n
.L1180:
	.sleb128	12
	.byte		0x1
	.4byte		.L723
	.uleb128	568
	.uleb128	35
	.byte		"Ea_MemifStatusDbg"
	.byte		0
	.4byte		.L775
	.sleb128	5
	.byte		0x3
	.4byte		Ea_MemifStatusDbg
	.comm		Ea_MemifStatusDbg,4,2
.L1181:
	.sleb128	10
	.4byte		.L723
	.uleb128	594
	.uleb128	44
	.byte		"Ea_MgmtBlockIndex"
	.byte		0
	.4byte		.L725
	.sleb128	5
	.byte		0x3
	.4byte		Ea_MgmtBlockIndex
	.lcomm		Ea_MgmtBlockIndex,2,1
.L1182:
	.sleb128	10
	.4byte		.L723
	.uleb128	597
	.uleb128	44
	.byte		"Ea_CurrentReadBlockOffset"
	.byte		0
	.4byte		.L725
	.sleb128	5
	.byte		0x3
	.4byte		Ea_CurrentReadBlockOffset
	.lcomm		Ea_CurrentReadBlockOffset,2,1
.L1183:
	.sleb128	10
	.4byte		.L723
	.uleb128	615
	.uleb128	44
	.byte		"memif_status"
	.byte		0
	.4byte		.L775
	.sleb128	5
	.byte		0x3
	.4byte		memif_status
	.lcomm		memif_status,4,2
.L1184:
	.sleb128	12
	.byte		0x1
	.4byte		.L723
	.uleb128	632
	.uleb128	35
	.byte		"Ea_JobResultDbg"
	.byte		0
	.4byte		.L730
	.sleb128	5
	.byte		0x3
	.4byte		Ea_JobResultDbg
	.comm		Ea_JobResultDbg,1,0
.L1185:
	.sleb128	10
	.4byte		.L723
	.uleb128	635
	.uleb128	35
	.byte		"admin_buffer"
	.byte		0
	.4byte		.L1186
	.sleb128	5
	.byte		0x3
	.4byte		admin_buffer
	.lcomm		admin_buffer,6,2
.L1188:
	.sleb128	10
	.4byte		.L723
	.uleb128	647
	.uleb128	35
	.byte		"Storage_Buffer"
	.byte		0
	.4byte		.L1189
	.sleb128	5
	.byte		0x3
	.4byte		Storage_Buffer
	.lcomm		Storage_Buffer,64,2
.L1191:
	.sleb128	10
	.4byte		.L723
	.uleb128	654
	.uleb128	30
	.byte		"Ea_AdminData"
	.byte		0
	.4byte		.L1192
	.sleb128	5
	.byte		0x3
	.4byte		Ea_AdminData
	.lcomm		Ea_AdminData,1,2
	.section	.debug_info,,n
.L1156:
	.sleb128	13
	.4byte		.L1096
	.uleb128	128
	.uleb128	14
	.4byte		.L1194-.L2
	.byte		"EA_General_Tag"
	.byte		0
	.uleb128	8
	.section	.debug_info,,n
.L179:
	.sleb128	14
	.byte		"EA_JobErrorNotification"
	.byte		0
	.4byte		.L1195
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L180:
	.sleb128	14
	.byte		"EA_JobEndNotification"
	.byte		0
	.4byte		.L1195
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1194:
.L1179:
	.sleb128	13
	.4byte		.L1096
	.uleb128	128
	.uleb128	14
	.4byte		.L1200-.L2
	.byte		"EA_ManagementDataBlock_Tag"
	.byte		0
	.uleb128	2
.L177:
	.sleb128	14
	.byte		"validity"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L178:
	.sleb128	14
	.byte		"validity_counter"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L1200:
.L1152:
	.sleb128	13
	.4byte		.L1096
	.uleb128	128
	.uleb128	14
	.4byte		.L1201-.L2
	.byte		"EA_BlockConfiguration_Tag"
	.byte		0
	.uleb128	10
.L171:
	.sleb128	14
	.byte		"EA_BLOCK_NUMBER"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L172:
	.sleb128	14
	.byte		"EA_BLOCK_SIZE"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L173:
	.sleb128	14
	.byte		"EA_DEVICE_INDEX"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L174:
	.sleb128	14
	.byte		"EA_PHYSICAL_BLOCK_NUMBER"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L175:
	.sleb128	14
	.byte		"EA_BLOCK_AMOUNTS"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L176:
	.sleb128	14
	.byte		"EA_IMMEDIATE_DATA"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
	.sleb128	0
.L1201:
.L1174:
	.sleb128	13
	.4byte		.L1096
	.uleb128	128
	.uleb128	14
	.4byte		.L1202-.L2
	.byte		"EaSubStatePtr_Tag"
	.byte		0
	.uleb128	16
.L169:
	.sleb128	14
	.byte		"act"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L170:
	.sleb128	14
	.byte		"service_function"
	.byte		0
	.4byte		.L1203
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1202:
.L1170:
	.sleb128	13
	.4byte		.L1096
	.uleb128	128
	.uleb128	14
	.4byte		.L1209-.L2
	.byte		"Ea_CurrentBlockInfoTag"
	.byte		0
	.uleb128	20
.L158:
	.sleb128	14
	.byte		"block_nb"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L159:
	.sleb128	14
	.byte		"read_length"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L160:
	.sleb128	14
	.byte		"dataptr"
	.byte		0
	.4byte		.L729
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L161:
	.sleb128	14
	.byte		"write_amounts"
	.byte		0
	.4byte		.L733
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L162:
	.sleb128	14
	.byte		"retry_number"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L163:
	.sleb128	14
	.byte		"validity"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L164:
	.sleb128	14
	.byte		"block_to_write"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L165:
	.sleb128	14
	.byte		"status"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L166:
	.sleb128	14
	.byte		"block_found"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L167:
	.sleb128	14
	.byte		"block_to_write_found"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L168:
	.sleb128	14
	.byte		"device_index"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
	.sleb128	0
.L1209:
	.section	.debug_info,,n
.L1080:
	.sleb128	15
	.4byte		.L1210
	.uleb128	69
	.uleb128	1
	.4byte		.L1211-.L2
	.uleb128	8
.L51:
	.sleb128	14
	.byte		"vendorID"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L52:
	.sleb128	14
	.byte		"moduleID"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L53:
	.sleb128	14
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L54:
	.sleb128	14
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L55:
	.sleb128	14
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L730
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L1211:
	.section	.debug_info,,n
.L1163:
	.sleb128	16
	.4byte		.L1096
	.uleb128	128
	.uleb128	14
	.4byte		.L1212-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	17
	.byte		"EA_ADMIN_DATA_INITIAL"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"EA_DATA_INVALIDATED"
	.byte		0
	.sleb128	1
	.sleb128	17
	.byte		"EA_DATA_VALIDATED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1212:
	.section	.debug_info,,n
.L828:
	.sleb128	18
	.4byte		.L1096
	.uleb128	105
	.uleb128	14
	.4byte		.L1213-.L2
	.byte		"Ea_SubStateMachineTag"
	.byte		0
	.uleb128	4
	.sleb128	17
	.byte		"EA_S_IB_NO_PROCESS"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"EA_S_IB_SINGLE_BLOCK"
	.byte		0
	.sleb128	1
	.sleb128	17
	.byte		"EA_S_R_INIT"
	.byte		0
	.sleb128	2
	.sleb128	17
	.byte		"EA_S_R_NO_PROCESS"
	.byte		0
	.sleb128	3
	.sleb128	17
	.byte		"EA_S_R_SINGLE_BLOCK"
	.byte		0
	.sleb128	4
	.sleb128	17
	.byte		"EA_S_W_SINGLE_BLOCK"
	.byte		0
	.sleb128	5
	.sleb128	17
	.byte		"EA_S_EID_SINGLE_BLOCK"
	.byte		0
	.sleb128	6
	.sleb128	17
	.byte		"EA_S_OP_IN_PROGRESS"
	.byte		0
	.sleb128	7
	.sleb128	17
	.byte		"EA_S_READ_VERIFICATION"
	.byte		0
	.sleb128	8
	.sleb128	0
.L1213:
.L1166:
	.sleb128	18
	.4byte		.L1096
	.uleb128	86
	.uleb128	14
	.4byte		.L1214-.L2
	.byte		"Ea_MainStateMachineTag"
	.byte		0
	.uleb128	4
	.sleb128	17
	.byte		"EA_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"EA_READ"
	.byte		0
	.sleb128	1
	.sleb128	17
	.byte		"EA_WRITE"
	.byte		0
	.sleb128	2
	.sleb128	17
	.byte		"EA_CANCEL"
	.byte		0
	.sleb128	3
	.sleb128	17
	.byte		"EA_INVALIDATE"
	.byte		0
	.sleb128	4
	.sleb128	17
	.byte		"EA_ERASE_IMMEDIATE_DATA"
	.byte		0
	.sleb128	5
	.sleb128	17
	.byte		"EA_INTERNAL_BUSY"
	.byte		0
	.sleb128	6
	.sleb128	0
.L1214:
.L965:
	.sleb128	18
	.4byte		.L1215
	.uleb128	133
	.uleb128	14
	.4byte		.L1216-.L2
	.byte		"MemIf_ModeType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	17
	.byte		"MEMIF_MODE_SLOW"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"MEMIF_MODE_FAST"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1216:
.L839:
	.sleb128	18
	.4byte		.L1215
	.uleb128	115
	.uleb128	14
	.4byte		.L1217-.L2
	.byte		"MemIf_JobResultType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	17
	.byte		"MEMIF_JOB_OK"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"MEMIF_JOB_FAILED"
	.byte		0
	.sleb128	1
	.sleb128	17
	.byte		"MEMIF_JOB_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	17
	.byte		"MEMIF_JOB_CANCELED"
	.byte		0
	.sleb128	3
	.sleb128	17
	.byte		"MEMIF_BLOCK_INCONSISTENT"
	.byte		0
	.sleb128	4
	.sleb128	17
	.byte		"MEMIF_BLOCK_INVALID"
	.byte		0
	.sleb128	5
	.sleb128	0
.L1217:
.L776:
	.sleb128	18
	.4byte		.L1215
	.uleb128	100
	.uleb128	14
	.4byte		.L1218-.L2
	.byte		"MemIf_StatusType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	17
	.byte		"MEMIF_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	17
	.byte		"MEMIF_IDLE"
	.byte		0
	.sleb128	1
	.sleb128	17
	.byte		"MEMIF_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	17
	.byte		"MEMIF_BUSY_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1218:
	.section	.debug_info,,n
.L726:
	.sleb128	19
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L725:
	.sleb128	20
	.byte		"uint16"
	.byte		0
	.4byte		.L726
.L731:
	.sleb128	19
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L730:
	.sleb128	20
	.byte		"uint8"
	.byte		0
	.4byte		.L731
	.section	.debug_info,,n
.L729:
	.sleb128	21
	.4byte		.L730
.L734:
	.sleb128	19
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L733:
	.sleb128	20
	.byte		"uint32"
	.byte		0
	.4byte		.L734
.L761:
	.sleb128	20
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L730
.L764:
	.sleb128	21
	.4byte		.L725
.L775:
	.sleb128	20
	.byte		"MemIf_StatusType"
	.byte		0
	.4byte		.L776
.L818:
	.sleb128	20
	.byte		"boolean"
	.byte		0
	.4byte		.L731
.L827:
	.sleb128	20
	.byte		"Ea_SubStateMachineType"
	.byte		0
	.4byte		.L828
.L838:
	.sleb128	20
	.byte		"MemIf_JobResultType"
	.byte		0
	.4byte		.L839
.L964:
	.sleb128	20
	.byte		"MemIf_ModeType"
	.byte		0
	.4byte		.L965
.L1079:
	.sleb128	20
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L1080
.L1078:
	.sleb128	21
	.4byte		.L1079
	.section	.debug_info,,n
.L1094:
	.sleb128	22
	.4byte		.L733
	.section	.debug_info,,n
.L1102:
	.sleb128	23
	.4byte		.L1103-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	24
	.4byte		.L964
	.sleb128	0
.L1103:
.L1101:
	.sleb128	21
	.4byte		.L1102
.L1100:
	.sleb128	20
	.byte		"Ea_SetModeFctPtrType"
	.byte		0
	.4byte		.L1101
.L1099:
	.sleb128	22
	.4byte		.L1100
	.section	.debug_info,,n
.L1097:
	.sleb128	25
	.4byte		.L1098-.L2
	.4byte		.L1099
	.section	.debug_info,,n
	.sleb128	26
	.uleb128	0
	.sleb128	0
.L1098:
	.section	.debug_info,,n
.L1110:
	.sleb128	27
	.4byte		.L1111-.L2
	.4byte		.L761
	.byte		0x1
	.sleb128	24
	.4byte		.L733
	.sleb128	24
	.4byte		.L729
	.sleb128	24
	.4byte		.L733
	.sleb128	0
.L1111:
.L1109:
	.sleb128	21
	.4byte		.L1110
.L1108:
	.sleb128	20
	.byte		"Ea_ReadFctPtrType"
	.byte		0
	.4byte		.L1109
.L1107:
	.sleb128	22
	.4byte		.L1108
.L1105:
	.sleb128	25
	.4byte		.L1106-.L2
	.4byte		.L1107
	.sleb128	26
	.uleb128	0
	.sleb128	0
.L1106:
.L1118:
	.sleb128	27
	.4byte		.L1119-.L2
	.4byte		.L761
	.byte		0x1
	.sleb128	24
	.4byte		.L733
.L1121:
	.sleb128	22
	.4byte		.L730
.L1120:
	.sleb128	21
	.4byte		.L1121
	.sleb128	24
	.4byte		.L1120
	.sleb128	24
	.4byte		.L733
	.sleb128	0
.L1119:
.L1117:
	.sleb128	21
	.4byte		.L1118
.L1116:
	.sleb128	20
	.byte		"Ea_WriteFctPtrType"
	.byte		0
	.4byte		.L1117
.L1115:
	.sleb128	22
	.4byte		.L1116
.L1113:
	.sleb128	25
	.4byte		.L1114-.L2
	.4byte		.L1115
	.sleb128	26
	.uleb128	0
	.sleb128	0
.L1114:
.L1128:
	.sleb128	23
	.4byte		.L1129-.L2
	.byte		0x1
	.sleb128	0
.L1129:
.L1127:
	.sleb128	21
	.4byte		.L1128
.L1126:
	.sleb128	20
	.byte		"Ea_CancelFctPtrType"
	.byte		0
	.4byte		.L1127
.L1125:
	.sleb128	22
	.4byte		.L1126
.L1123:
	.sleb128	25
	.4byte		.L1124-.L2
	.4byte		.L1125
	.sleb128	26
	.uleb128	0
	.sleb128	0
.L1124:
.L1136:
	.sleb128	27
	.4byte		.L1137-.L2
	.4byte		.L838
	.byte		0x1
	.sleb128	0
.L1137:
.L1135:
	.sleb128	21
	.4byte		.L1136
.L1134:
	.sleb128	20
	.byte		"Ea_GetJobResultFctPtrType"
	.byte		0
	.4byte		.L1135
.L1133:
	.sleb128	22
	.4byte		.L1134
.L1131:
	.sleb128	25
	.4byte		.L1132-.L2
	.4byte		.L1133
	.sleb128	26
	.uleb128	0
	.sleb128	0
.L1132:
.L1144:
	.sleb128	27
	.4byte		.L1145-.L2
	.4byte		.L761
	.byte		0x1
	.sleb128	24
	.4byte		.L733
	.sleb128	24
	.4byte		.L733
	.sleb128	0
.L1145:
.L1143:
	.sleb128	21
	.4byte		.L1144
.L1142:
	.sleb128	20
	.byte		"Ea_EraseFctPtrType"
	.byte		0
	.4byte		.L1143
.L1141:
	.sleb128	22
	.4byte		.L1142
.L1139:
	.sleb128	25
	.4byte		.L1140-.L2
	.4byte		.L1141
	.sleb128	26
	.uleb128	0
	.sleb128	0
.L1140:
.L1151:
	.sleb128	20
	.byte		"EA_BlockConfigurationType"
	.byte		0
	.4byte		.L1152
.L1150:
	.sleb128	22
	.4byte		.L1151
.L1148:
	.sleb128	25
	.4byte		.L1149-.L2
	.4byte		.L1150
	.sleb128	26
	.uleb128	2
	.sleb128	0
.L1149:
.L1155:
	.sleb128	20
	.byte		"EA_General_Type"
	.byte		0
	.4byte		.L1156
.L1154:
	.sleb128	22
	.4byte		.L1155
.L1162:
	.sleb128	20
	.byte		"Ea_AdminDataStatus"
	.byte		0
	.4byte		.L1163
.L1165:
	.sleb128	20
	.byte		"Ea_MainStateMachineType"
	.byte		0
	.4byte		.L1166
.L1169:
	.sleb128	20
	.byte		"Ea_CurrentBlockInfoType"
	.byte		0
	.4byte		.L1170
.L1173:
	.sleb128	20
	.byte		"EaSubStatePtrType"
	.byte		0
	.4byte		.L1174
.L1178:
	.sleb128	20
	.byte		"EA_ManagementDataBlockType"
	.byte		0
	.4byte		.L1179
.L1176:
	.sleb128	25
	.4byte		.L1177-.L2
	.4byte		.L1178
	.sleb128	26
	.uleb128	2
	.sleb128	0
.L1177:
.L1186:
	.sleb128	25
	.4byte		.L1187-.L2
	.4byte		.L730
	.sleb128	26
	.uleb128	5
	.sleb128	0
.L1187:
.L1189:
	.sleb128	25
	.4byte		.L1190-.L2
	.4byte		.L730
	.sleb128	26
	.uleb128	63
	.sleb128	0
.L1190:
.L1192:
	.sleb128	25
	.4byte		.L1193-.L2
	.4byte		.L730
	.sleb128	26
	.uleb128	0
	.sleb128	0
.L1193:
.L1198:
	.sleb128	23
	.4byte		.L1199-.L2
	.byte		0x1
	.sleb128	0
.L1199:
.L1197:
	.sleb128	21
	.4byte		.L1198
.L1196:
	.sleb128	20
	.byte		"JobNotificationType"
	.byte		0
	.4byte		.L1197
.L1195:
	.sleb128	22
	.4byte		.L1196
.L1207:
	.sleb128	23
	.4byte		.L1208-.L2
	.byte		0x1
	.sleb128	0
.L1208:
.L1206:
	.sleb128	21
	.4byte		.L1207
.L1205:
	.sleb128	20
	.byte		"SubStateFunctionType"
	.byte		0
	.4byte		.L1206
.L1203:
	.sleb128	25
	.4byte		.L1204-.L2
	.4byte		.L1205
	.sleb128	26
	.uleb128	2
	.sleb128	0
.L1204:
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L727:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L728:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),4
	.d2locend
.L732:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),5
	.d2locend
.L735:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),6
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo2),11
	.d2locend
.L736:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),7
	.d2locend
.L737:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),8
	.d2locend
.L738:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),9
	.d2locend
.L739:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),10
	.d2locend
.L740:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo2),6
	.d2locend
.L747:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),3
	.d2locend
.L749:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L751:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locend
.L763:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locend
.L765:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),4
	.d2locend
.L767:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),5
	.d2locend
.L769:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo11),6
	.d2locend
.L777:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locend
.L779:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo19),3
	.d2locend
.L785:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locend
.L786:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo22),4
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo21),7
	.d2locend
.L788:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo24),4
	.d2locend
.L790:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo21),5
	.d2locend
.L796:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locend
.L797:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),4
	.d2locend
.L798:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo27),5
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo26),0
	.d2locend
.L800:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo29),5
	.d2locend
.L802:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo26),6
	.d2locend
.L814:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),5
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),5
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),5
	.d2locend
.L816:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),5
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),5
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo36),5
	.d2locend
.L819:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),7
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo31),7
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo40),7
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),7
	.d2locend
.L825:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),3
	.d2locend
.L829:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),31
	.d2locend
.L836:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),3
	.d2locend
.L840:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),3
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),0
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),0
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),0
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),0
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),0
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),0
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),0
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),0
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),0
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),0
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),0
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),0
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),0
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),0
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),0
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),0
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),0
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),0
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),0
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),0
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),0
	.d2locend
.L846:
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),3
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo47),3
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo96),3
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo98),0
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo100),0
	.d2locend
.L848:
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),5
	.d2locend
.L854:
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),0
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo106),0
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo108),0
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),0
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),0
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),0
	.d2locend
.L866:
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),3
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),31
	.d2locend
.L878:
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),3
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),3
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),3
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),3
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),3
	.d2locend
.L885:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),3
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),3
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),3
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),3
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),3
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo140),3
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),3
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo144),3
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),3
	.d2locend
.L887:
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo148),3
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo150),0
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo152),0
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo154),0
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo136),0
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo138),0
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),0
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo160),0
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo162),0
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo139),0
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo165),0
	.d2locreg	%offsetof(.Llo166), %offsetof(.Llo167),0
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo169),0
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo171),0
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo173),0
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo175),0
	.d2locreg	%offsetof(.Llo176), %offsetof(.Llo177),0
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo179),0
	.d2locreg	%offsetof(.Llo180), %offsetof(.Llo181),0
	.d2locreg	%offsetof(.Llo182), %offsetof(.Llo183),0
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo185),0
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo187),0
	.d2locreg	%offsetof(.Llo188), %offsetof(.Llo189),0
	.d2locreg	%offsetof(.Llo190), %offsetof(.Llo191),0
	.d2locreg	%offsetof(.Llo192), %offsetof(.Llo193),0
	.d2locreg	%offsetof(.Llo194), %offsetof(.Llo195),0
	.d2locreg	%offsetof(.Llo196), %offsetof(.Llo197),0
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo199),0
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo201),0
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo203),0
	.d2locreg	%offsetof(.Llo204), %offsetof(.Llo205),0
	.d2locreg	%offsetof(.Llo206), %offsetof(.Llo207),0
	.d2locend
.L893:
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo131),3
	.d2locreg	%offsetof(.Llo208), %offsetof(.Llo209),5
	.d2locreg	%offsetof(.Llo210), %offsetof(.Llo211),5
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo141),5
	.d2locend
.L899:
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo144),4
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo214),4
	.d2locend
.L901:
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo216),5
	.d2locend
.L903:
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo189),6
	.d2locreg	%offsetof(.Llo218), %offsetof(.Llo191),6
	.d2locreg	%offsetof(.Llo219), %offsetof(.Llo144),6
	.d2locreg	%offsetof(.Llo220), %offsetof(.Llo214),6
	.d2locend
.L915:
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),3
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo224),0
	.d2locreg	%offsetof(.Llo225), %offsetof(.Llo226),0
	.d2locreg	%offsetof(.Llo227), %offsetof(.Llo228),0
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo230),0
	.d2locreg	%offsetof(.Llo231), %offsetof(.Llo232),0
	.d2locreg	%offsetof(.Llo233), %offsetof(.Llo234),0
	.d2locreg	%offsetof(.Llo235), %offsetof(.Llo236),0
	.d2locreg	%offsetof(.Llo237), %offsetof(.Llo238),0
	.d2locreg	%offsetof(.Llo239), %offsetof(.Llo240),0
	.d2locreg	%offsetof(.Llo241), %offsetof(.Llo242),0
	.d2locreg	%offsetof(.Llo243), %offsetof(.Llo244),0
	.d2locreg	%offsetof(.Llo245), %offsetof(.Llo246),0
	.d2locreg	%offsetof(.Llo247), %offsetof(.Llo248),0
	.d2locreg	%offsetof(.Llo249), %offsetof(.Llo250),0
	.d2locreg	%offsetof(.Llo251), %offsetof(.Llo252),0
	.d2locreg	%offsetof(.Llo253), %offsetof(.Llo254),0
	.d2locreg	%offsetof(.Llo255), %offsetof(.Llo256),0
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo258),0
	.d2locreg	%offsetof(.Llo259), %offsetof(.Llo260),0
	.d2locreg	%offsetof(.Llo261), %offsetof(.Llo262),0
	.d2locend
.L921:
	.d2locreg	%offsetof(.Llo263), %offsetof(.Llo264),5
	.d2locreg	%offsetof(.Llo265), %offsetof(.Llo232),5
	.d2locend
.L923:
	.d2locreg	%offsetof(.Llo266), %offsetof(.Llo267),3
	.d2locend
.L929:
	.d2locreg	%offsetof(.Llo246), %offsetof(.Llo268),3
	.d2locend
.L951:
	.d2locreg	%offsetof(.Llo269), %offsetof(.Llo270),0
	.d2locreg	%offsetof(.Llo271), %offsetof(.Llo272),3
	.d2locend
.L958:
	.d2locreg	%offsetof(.Llo273), %offsetof(.Llo274),3
	.d2locreg	%offsetof(.Llo275), %offsetof(.Llo276),3
	.d2locreg	%offsetof(.Llo277), %offsetof(.Llo278),3
	.d2locend
.L966:
	.d2locreg	%offsetof(.Llo279), %offsetof(.Llo280),3
	.d2locreg	%offsetof(.Llo281), %offsetof(.Llo282),0
	.d2locend
.L968:
	.d2locreg	%offsetof(.Llo283), %offsetof(.Llo284),4
	.d2locreg	%offsetof(.Llo285), %offsetof(.Llo286),4
	.d2locend
.L974:
	.d2locreg	%offsetof(.Llo287), %offsetof(.Llo288),3
	.d2locreg	%offsetof(.Llo289), %offsetof(.Llo290),31
	.d2locreg	%offsetof(.Llo291), %offsetof(.Llo292),31
	.d2locreg	%offsetof(.Llo293), %offsetof(.Llo294),31
	.d2locend
.L975:
	.d2locreg	%offsetof(.Llo287), %offsetof(.Llo289),4
	.d2locreg	%offsetof(.Llo295), %offsetof(.Llo296),30
	.d2locreg	%offsetof(.Llo297), %offsetof(.Llo298),30
	.d2locreg	%offsetof(.Llo291), %offsetof(.Llo299),30
	.d2locreg	%offsetof(.Llo293), %offsetof(.Llo294),30
	.d2locreg	%offsetof(.Llo300), %offsetof(.Llo301),4
	.d2locend
.L976:
	.d2locreg	%offsetof(.Llo287), %offsetof(.Llo289),5
	.d2locreg	%offsetof(.Llo295), %offsetof(.Llo290),29
	.d2locreg	%offsetof(.Llo302), %offsetof(.Llo303),5
	.d2locreg	%offsetof(.Llo291), %offsetof(.Llo292),29
	.d2locreg	%offsetof(.Llo304), %offsetof(.Llo305),4
	.d2locreg	%offsetof(.Llo293), %offsetof(.Llo294),29
	.d2locreg	%offsetof(.Llo300), %offsetof(.Llo301),5
	.d2locend
.L977:
	.d2locreg	%offsetof(.Llo287), %offsetof(.Llo289),6
	.d2locreg	%offsetof(.Llo295), %offsetof(.Llo298),28
	.d2locreg	%offsetof(.Llo291), %offsetof(.Llo292),28
	.d2locreg	%offsetof(.Llo293), %offsetof(.Llo294),28
	.d2locreg	%offsetof(.Llo300), %offsetof(.Llo301),6
	.d2locend
.L979:
	.d2locreg	%offsetof(.Llo306), %offsetof(.Llo298),3
	.d2locreg	%offsetof(.Llo307), %offsetof(.Llo308),3
	.d2locreg	%offsetof(.Llo309), %offsetof(.Llo292),3
	.d2locend
.L981:
	.d2locreg	%offsetof(.Llo310), %offsetof(.Llo311),27
	.d2locreg	%offsetof(.Llo312), %offsetof(.Llo313),27
	.d2locreg	%offsetof(.Llo314), %offsetof(.Llo315),3
	.d2locreg	%offsetof(.Llo316), %offsetof(.Llo292),27
	.d2locreg	%offsetof(.Llo317), %offsetof(.Llo318),3
	.d2locreg	%offsetof(.Llo319), %offsetof(.Llo320),27
	.d2locend
.L983:
	.d2locreg	%offsetof(.Llo321), %offsetof(.Llo311),26
	.d2locreg	%offsetof(.Llo322), %offsetof(.Llo312),3
	.d2locreg	%offsetof(.Llo323), %offsetof(.Llo313),3
	.d2locreg	%offsetof(.Llo324), %offsetof(.Llo325),3
	.d2locreg	%offsetof(.Llo326), %offsetof(.Llo299),3
	.d2locreg	%offsetof(.Llo327), %offsetof(.Llo328),3
	.d2locreg	%offsetof(.Llo329), %offsetof(.Llo330),3
	.d2locreg	%offsetof(.Llo331), %offsetof(.Llo332),0
	.d2locreg	%offsetof(.Llo333), %offsetof(.Llo309),3
	.d2locreg	%offsetof(.Llo334), %offsetof(.Llo335),0
	.d2locreg	%offsetof(.Llo319), %offsetof(.Llo305),0
	.d2locreg	%offsetof(.Llo336), %offsetof(.Llo293),0
	.d2locend
.L990:
	.d2locreg	%offsetof(.Llo303), %offsetof(.Llo337),5
	.d2locreg	%offsetof(.Llo338), %offsetof(.Llo297),5
	.d2locreg	%offsetof(.Llo298), %offsetof(.Llo307),5
	.d2locend
.L996:
	.d2locreg	%offsetof(.Llo339), %offsetof(.Llo340),3
	.d2locreg	%offsetof(.Llo341), %offsetof(.Llo342),31
	.d2locreg	%offsetof(.Llo343), %offsetof(.Llo344),31
	.d2locend
.L997:
	.d2locreg	%offsetof(.Llo339), %offsetof(.Llo341),4
	.d2locreg	%offsetof(.Llo345), %offsetof(.Llo342),28
	.d2locreg	%offsetof(.Llo343), %offsetof(.Llo344),28
	.d2locreg	%offsetof(.Llo346), %offsetof(.Llo347),4
	.d2locend
.L999:
	.d2locreg	%offsetof(.Llo348), %offsetof(.Llo349),3
	.d2locreg	%offsetof(.Llo350), %offsetof(.Llo351),3
	.d2locend
.L1001:
	.d2locreg	%offsetof(.Llo352), %offsetof(.Llo353),3
	.d2locend
.L1003:
	.d2locreg	%offsetof(.Llo354), %offsetof(.Llo355),5
	.d2locreg	%offsetof(.Llo356), %offsetof(.Llo349),5
	.d2locreg	%offsetof(.Llo357), %offsetof(.Llo350),5
	.d2locreg	%offsetof(.Llo358), %offsetof(.Llo359),5
	.d2locend
.L1005:
	.d2locreg	%offsetof(.Llo360), %offsetof(.Llo361),30
	.d2locreg	%offsetof(.Llo362), %offsetof(.Llo363),3
	.d2locreg	%offsetof(.Llo364), %offsetof(.Llo348),3
	.d2locreg	%offsetof(.Llo365), %offsetof(.Llo366),0
	.d2locreg	%offsetof(.Llo367), %offsetof(.Llo368),0
	.d2locreg	%offsetof(.Llo369), %offsetof(.Llo370),0
	.d2locreg	%offsetof(.Llo371), %offsetof(.Llo372),0
	.d2locend
.L1007:
	.d2locreg	%offsetof(.Llo373), %offsetof(.Llo363),29
	.d2locreg	%offsetof(.Llo374), %offsetof(.Llo375),0
	.d2locreg	%offsetof(.Llo376), %offsetof(.Llo377),3
	.d2locreg	%offsetof(.Llo378), %offsetof(.Llo379),29
	.d2locreg	%offsetof(.Llo353), %offsetof(.Llo380),3
	.d2locreg	%offsetof(.Llo381), %offsetof(.Llo382),29
	.d2locend
.L1014:
	.d2locreg	%offsetof(.Llo383), %offsetof(.Llo384),4
	.d2locreg	%offsetof(.Llo385), %offsetof(.Llo355),4
	.d2locreg	%offsetof(.Llo386), %offsetof(.Llo356),4
	.d2locreg	%offsetof(.Llo387), %offsetof(.Llo374),4
	.d2locreg	%offsetof(.Llo388), %offsetof(.Llo389),4
	.d2locreg	%offsetof(.Llo390), %offsetof(.Llo391),4
	.d2locreg	%offsetof(.Llo392), %offsetof(.Llo393),4
	.d2locreg	%offsetof(.Llo394), %offsetof(.Llo349),4
	.d2locreg	%offsetof(.Llo395), %offsetof(.Llo357),4
	.d2locreg	%offsetof(.Llo378), %offsetof(.Llo396),4
	.d2locreg	%offsetof(.Llo397), %offsetof(.Llo342),4
	.d2locreg	%offsetof(.Llo398), %offsetof(.Llo399),4
	.d2locreg	%offsetof(.Llo400), %offsetof(.Llo401),4
	.d2locreg	%offsetof(.Llo381), %offsetof(.Llo402),4
	.d2locend
.L1021:
	.d2locreg	%offsetof(.Llo403), %offsetof(.Llo404),0
	.d2locreg	%offsetof(.Llo405), %offsetof(.Llo406),0
	.d2locreg	%offsetof(.Llo407), %offsetof(.Llo408),0
	.d2locend
.L1028:
	.d2locreg	%offsetof(.Llo409), %offsetof(.Llo410),31
	.d2locreg	%offsetof(.Llo411), %offsetof(.Llo412),31
	.d2locreg	%offsetof(.Llo413), %offsetof(.Llo414),31
	.d2locreg	%offsetof(.Llo415), %offsetof(.Llo416),31
	.d2locend
.L1035:
	.d2locreg	%offsetof(.Llo417), %offsetof(.Llo418),3
	.d2locend
.L1037:
	.d2locreg	%offsetof(.Llo419), %offsetof(.Llo420),0
	.d2locend
.L1043:
	.d2locreg	%offsetof(.Llo421), %offsetof(.Llo422),3
	.d2locreg	%offsetof(.Llo423), %offsetof(.Llo424),31
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo426),31
	.d2locreg	%offsetof(.Llo427), %offsetof(.Llo428),31
	.d2locend
.L1045:
	.d2locreg	%offsetof(.Llo421), %offsetof(.Llo429),30
	.d2locreg	%offsetof(.Llo430), %offsetof(.Llo431),3
	.d2locreg	%offsetof(.Llo432), %offsetof(.Llo424),30
	.d2locreg	%offsetof(.Llo433), %offsetof(.Llo434),3
	.d2locreg	%offsetof(.Llo435), %offsetof(.Llo426),30
	.d2locreg	%offsetof(.Llo436), %offsetof(.Llo437),3
	.d2locreg	%offsetof(.Llo438), %offsetof(.Llo439),30
	.d2locend
.L1047:
	.d2locreg	%offsetof(.Llo440), %offsetof(.Llo433),3
	.d2locend
.L1049:
	.d2locreg	%offsetof(.Llo441), %offsetof(.Llo426),3
	.d2locend
.L1051:
	.d2locreg	%offsetof(.Llo442), %offsetof(.Llo443),0
	.d2locreg	%offsetof(.Llo444), %offsetof(.Llo445),3
	.d2locreg	%offsetof(.Llo446), %offsetof(.Llo447),3
	.d2locreg	%offsetof(.Llo448), %offsetof(.Llo449),0
	.d2locreg	%offsetof(.Llo450), %offsetof(.Llo451),3
	.d2locreg	%offsetof(.Llo429), %offsetof(.Llo431),3
	.d2locreg	%offsetof(.Llo452), %offsetof(.Llo453),3
	.d2locreg	%offsetof(.Llo454), %offsetof(.Llo455),0
	.d2locreg	%offsetof(.Llo456), %offsetof(.Llo457),3
	.d2locreg	%offsetof(.Llo458), %offsetof(.Llo459),0
	.d2locreg	%offsetof(.Llo460), %offsetof(.Llo424),3
	.d2locreg	%offsetof(.Llo461), %offsetof(.Llo462),0
	.d2locreg	%offsetof(.Llo463), %offsetof(.Llo464),3
	.d2locreg	%offsetof(.Llo465), %offsetof(.Llo440),0
	.d2locreg	%offsetof(.Llo466), %offsetof(.Llo467),0
	.d2locreg	%offsetof(.Llo435), %offsetof(.Llo468),0
	.d2locreg	%offsetof(.Llo469), %offsetof(.Llo425),0
	.d2locreg	%offsetof(.Llo470), %offsetof(.Llo471),3
	.d2locreg	%offsetof(.Llo472), %offsetof(.Llo473),0
	.d2locreg	%offsetof(.Llo474), %offsetof(.Llo475),0
	.d2locreg	%offsetof(.Llo476), %offsetof(.Llo477),0
	.d2locreg	%offsetof(.Llo478), %offsetof(.Llo427),0
	.d2locend
.L1058:
	.d2locreg	%offsetof(.Llo479), %offsetof(.Llo480),3
	.d2locreg	%offsetof(.Llo481), %offsetof(.Llo482),30
	.d2locreg	%offsetof(.Llo483), %offsetof(.Llo484),30
	.d2locend
.L1060:
	.d2locreg	%offsetof(.Llo485), %offsetof(.Llo482),31
	.d2locreg	%offsetof(.Llo486), %offsetof(.Llo487),3
	.d2locreg	%offsetof(.Llo488), %offsetof(.Llo489),31
	.d2locend
.L1062:
	.d2locreg	%offsetof(.Llo490), %offsetof(.Llo491),0
	.d2locreg	%offsetof(.Llo492), %offsetof(.Llo493),3
	.d2locreg	%offsetof(.Llo494), %offsetof(.Llo495),3
	.d2locreg	%offsetof(.Llo496), %offsetof(.Llo497),3
	.d2locreg	%offsetof(.Llo498), %offsetof(.Llo499),0
	.d2locreg	%offsetof(.Llo500), %offsetof(.Llo501),3
	.d2locreg	%offsetof(.Llo502), %offsetof(.Llo503),0
	.d2locreg	%offsetof(.Llo504), %offsetof(.Llo505),0
	.d2locreg	%offsetof(.Llo506), %offsetof(.Llo507),0
	.d2locreg	%offsetof(.Llo488), %offsetof(.Llo508),0
	.d2locreg	%offsetof(.Llo509), %offsetof(.Llo483),0
	.d2locend
.L1064:
	.d2locreg	%offsetof(.Llo510), %offsetof(.Llo482),3
	.d2locend
.L1081:
	.d2locreg	%offsetof(.Llo511), %offsetof(.Llo512),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Ea_JobErrorNotification"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Ea_JobEndNotification"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Ea_GetVersionInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Ea_MainFunction"
	.wrcm.nstrlist "calls", "Ea_EraseImmediateData_Processing","Ea_InvalidateBlock_Processing","Ea_Read_Processing","Ea_Write_Processing"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Ea_EraseImmediateBlock"
	.wrcm.nstrlist "calls", "CheckBlockNumber","CheckStsBusyInternalMgmtOp","EaSetCurrentBlock","Eeprom_Address","SchM_Enter_Ea_EaStateChange","SchM_Exit_Ea_EaStateChange"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Ea_InvalidateBlock"
	.wrcm.nstrlist "calls", "CheckBlockNumber","CheckStsBusyInternalMgmtOp","EaSetCurrentBlock","Eeprom_Address","SchM_Enter_Ea_EaStateChange","SchM_Exit_Ea_EaStateChange"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Ea_GetJobResult"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Ea_GetStatus"
	.wrcm.nstrlist "calls", "SchM_Enter_Ea_EaStateChange","SchM_Exit_Ea_EaStateChange"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Ea_Cancel"
	.wrcm.nstrlist "calls", "SchM_Enter_Ea_EaStateChange","SchM_Exit_Ea_EaStateChange"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Ea_Write"
	.wrcm.nstrlist "calls", "CheckBlockNumber","CheckStsBusyInternalMgmtOp","EaSetCurrentBlock","Eeprom_Address","SchM_Enter_Ea_EaStateChange","SchM_Exit_Ea_EaStateChange"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Ea_Read"
	.wrcm.nstrlist "calls", "CheckBlockLength","CheckBlockNumber","CheckBlockOffset","CheckStsBusyInternalMgmtOp","EaSetCurrentBlock","Eeprom_Address","SchM_Enter_Ea_EaStateChange","SchM_Exit_Ea_EaStateChange"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Ea_SetMode"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Ea_Init"
	.wrcm.nstrlist "calls", "EaSetCurrentBlock","Ea_ConsistencyCheck"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Ea_ConsistencyCheck"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Ea_EraseImmediateData_Processing"
	.wrcm.nstrlist "calls", "Ea_Single_Block"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Ea_InvalidateBlock_Processing"
	.wrcm.nstrlist "calls", "Ea_Ib_No_Process","Ea_Ib_Single_Block"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Ea_Ib_No_Process"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Ea_Ib_Single_Block"
	.wrcm.nstrlist "calls", "Eeprom_Address"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Ea_Write_Processing"
	.wrcm.nstrlist "calls", "Ea_Single_Block"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Ea_Single_Block"
	.wrcm.nstrlist "calls", "EaSingleBlock_Length","Eeprom_Address"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Ea_R_Processing_Error"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Ea_Read_Processing"
	.wrcm.nstrlist "calls", "Ea_Op_In_Progress","Ea_R_No_Process","Ea_R_Single_Block"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Ea_Op_In_Progress"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Ea_R_No_Process"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Ea_R_Single_Block"
	.wrcm.nstrlist "calls", "Ea_R_TotalDataLength","Eeprom_Address"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Ea_R_TotalDataLength"
	.wrcm.nstrlist "calls", "Ea_R_Read_Done","Eeprom_Address"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Ea_R_Read_Done"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "CheckBlockLength"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "CheckBlockOffset"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "CheckStsBusyInternalMgmtOp"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "CheckBlockNumber"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Eeprom_Address"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "EaSingleBlock_Length"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "EaSetCurrentBlock"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Ea.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Ea.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Ea.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Ea.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Ea.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Ea.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MEM\Ea\ssc\make\..\src\Ea.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
