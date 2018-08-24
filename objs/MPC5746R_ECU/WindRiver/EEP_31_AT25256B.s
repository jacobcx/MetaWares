#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"EEP_31_AT25256B.c"
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
# static FUNC(Std_ReturnType, EEP_CODE) EepHw_Read(Eep_31_AT25256B_AddressType CurrentDataIndex, Eep_31_AT25256B_LengthType DataSize)
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L864:
	.section	.invalid_TEXT,,c
#$$ld
.L860:
	.0byte		.L858
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\Mentor\\Eep_31_AT25256B\\ssc\\make\\..\\src\\EEP_31_AT25256B.c"
        .d2line         508,39
#$$ld
.L867:

#$$bf	EepHw_Read,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
EepHw_Read:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# CurrentDataIndex=r0
	.d2_cfa_offset    108,-1
	mr		r7,r3		# CurrentDataIndex=r7 CurrentDataIndex=r3
.Llo2:
	mr		r31,r4		# DataSize=r31 DataSize=r4
	.d2prologue_end
# {
#    VAR(Std_ReturnType, EEP_VAR) RetVal;
# 
#    CommandAddressBuffer[EEP_31_AT25256B_ARRAYINDEX_ZERO] = EEP_READ;                             /*read command */
	.d2line		512
.Llo3:
	diab.li		r6,3
	lis		r4,CommandAddressBuffer@ha
.Llo11:
	e_add16i		r4,r4,CommandAddressBuffer@l
	stb		r6,0(r4)
#    CommandAddressBuffer[EEP_31_AT25256B_ARRAYINDEX_ONE] = (uint8) ((JobStartAddr + CurrentDataIndex) >> EEP_31_AT25256B_SHIFT_EIGHT);   /*address msb*/
	.d2line		513
	lis		r3,JobStartAddr@ha		# RetVal=r3
.Llo12:
	lhz		r5,JobStartAddr@l(r3)		# RetVal=r3
	rlwinm		r0,r7,0,16,31		# CurrentDataIndex=r0 CurrentDataIndex=r7
	se_add		r0,r5		# CurrentDataIndex=r0 CurrentDataIndex=r0
	srawi		r0,r0,8		# CurrentDataIndex=r0 CurrentDataIndex=r0
	lis		r5,(CommandAddressBuffer+1)@ha
	stb		r0,(CommandAddressBuffer+1)@l(r5)		# CurrentDataIndex=r0
#    CommandAddressBuffer[EEP_31_AT25256B_ARRAYINDEX_TWO] = (uint8) ((JobStartAddr + CurrentDataIndex) & EEP_31_AT25256B_LSB); /*address lsb*/
	.d2line		514
	lhz		r0,JobStartAddr@l(r3)		# CurrentDataIndex=r0 RetVal=r3
	se_add		r7,r0		# CurrentDataIndex=r7 CurrentDataIndex=r7 CurrentDataIndex=r0
.Llo4:
	lis		r3,(CommandAddressBuffer+2)@ha		# RetVal=r3
.Llo5:
	stb		r7,(CommandAddressBuffer+2)@l(r3)		# RetVal=r3 CurrentDataIndex=r7
# 
#    /* Setup external buffer with target data pointer and data size to be read */
#    RetVal = Spi_SetupEB(Eep_LcfgConfig.CommandAddressChlID, (P2CONST(Spi_DataType, EEP_VAR, EEP_APPL_CONST))&CommandAddressBuffer[0], NULL_PTR, (Spi_NumberOfDataType)EEP_31_AT25256B_COMMANDADDRESS_CHL_LENGTH);
	.d2line		517
	lis		r3,(Eep_LcfgConfig+5)@ha		# RetVal=r3
	lbz		r3,(Eep_LcfgConfig+5)@l(r3)		# RetVal=r3 RetVal=r3
.Llo13:
	diab.li		r5,0
	bl		Spi_SetupEB
.Llo6:
	mr		r3,r3		# RetVal=r3 RetVal=r3
#    if (E_OK == RetVal)
	.d2line		518
	rlwinm		r0,r3,0,24,31		# CurrentDataIndex=r0 RetVal=r3
.Llo7:
	se_cmpi		r0,0		# CurrentDataIndex=r0
	bc		0,2,.L584	# ne
#    {
#       RetVal = Spi_SetupEB(Eep_LcfgConfig.DataChlID, NULL_PTR, (P2VAR(Spi_DataType, EEP_VAR, EEP_APPL_CONST))TargetDataBufferPtr, (Spi_NumberOfDataType)DataSize);
	.d2line		520
.Llo8:
	lis		r3,(Eep_LcfgConfig+6)@ha		# RetVal=r3
	lbz		r3,(Eep_LcfgConfig+6)@l(r3)		# RetVal=r3 RetVal=r3
	rlwinm		r6,r31,0,16,31		# DataSize=r31
	diab.li		r4,0
	lis		r5,TargetDataBufferPtr@ha
	lwz		r5,TargetDataBufferPtr@l(r5)
	bl		Spi_SetupEB
	mr		r3,r3		# RetVal=r3 RetVal=r3
#       if (E_OK == RetVal)
	.d2line		521
	rlwinm		r0,r3,0,24,31		# CurrentDataIndex=r0 RetVal=r3
.Llo9:
	se_cmpi		r0,0		# CurrentDataIndex=r0
	bc		0,2,.L584	# ne
#       {
#          /* Transmit the read job only if SetupEB is ok */
#          RetVal = Spi_AsyncTransmit(Eep_LcfgConfig.ReadSequenceID);
	.d2line		524
.Llo10:
	lis		r3,(Eep_LcfgConfig+4)@ha		# RetVal=r3
	lbz		r3,(Eep_LcfgConfig+4)@l(r3)		# RetVal=r3 RetVal=r3
	bl		Spi_AsyncTransmit
	mr		r3,r3		# RetVal=r3 RetVal=r3
.L584:
#       }
#    }
#    return(RetVal);
	.d2line		527
	rlwinm		r3,r3,0,24,31		# RetVal=r3 RetVal=r3
# }
	.d2line		528
	.d2epilogue_begin
.Llo14:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# CurrentDataIndex=r0
	mtspr		lr,r0		# CurrentDataIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L868:
	.type		EepHw_Read,@function
	.size		EepHw_Read,.-EepHw_Read
# Number of nodes = 89

# Allocations for EepHw_Read
#	?a4		CurrentDataIndex
#	?a5		DataSize
#	?a6		RetVal
# static FUNC(Std_ReturnType, EEP_CODE) EepHw_Write(Eep_31_AT25256B_AddressType CurrentDataIndex, Eep_31_AT25256B_LengthType DataSize)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         542,39
#$$ld
.L884:

#$$bf	EepHw_Write,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
EepHw_Write:
.Llo15:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# CurrentDataIndex=r31 CurrentDataIndex=r3
	mr		r30,r4		# DataSize=r30 DataSize=r4
	.d2prologue_end
# {
#    VAR(Std_ReturnType, EEP_VAR) RetVal;
#    VAR(uint8, EEP_VAR) WriteEnableBuffer[1];
#    
#    /*Setup Write Enable command Channel*/
#    WriteEnableBuffer[0] = EEP_WREN;
	.d2line		548
	diab.li		r0,6
	stb		r0,8(r1)
# 
#    /* Setupt external buffer with target data pointer and data size to be written */
#    RetVal = Spi_SetupEB(Eep_LcfgConfig.WriteEnableLatchChlID, (P2CONST(Spi_DataType, EEP_VAR, EEP_APPL_CONST))&WriteEnableBuffer[0], NULL_PTR,(Spi_NumberOfDataType)1);
	.d2line		551
	lis		r3,(Eep_LcfgConfig+8)@ha		# RetVal=r3
.Llo16:
	lbz		r3,(Eep_LcfgConfig+8)@l(r3)		# RetVal=r3 RetVal=r3
.Llo25:
	diab.addi		r4,r1,8
.Llo23:
	diab.li		r5,0
	diab.li		r6,1
	bl		Spi_SetupEB
.Llo26:
	mr		r3,r3		# RetVal=r3 RetVal=r3
# 
#    if (E_OK == RetVal)
	.d2line		553
	rlwinm		r0,r3,0,24,31		# RetVal=r3
	se_cmpi		r0,0
	bc		0,2,.L588	# ne
#    {
#       /*Setup Write command, address and data*/
#       CommandAddressBuffer[EEP_31_AT25256B_ARRAYINDEX_ZERO] = EEP_WRITE;
	.d2line		556
.Llo24:
	diab.li		r0,2		# CurrentDataIndex=r0
.Llo17:
	lis		r4,CommandAddressBuffer@ha
	e_add16i		r4,r4,CommandAddressBuffer@l
	stb		r0,0(r4)		# CurrentDataIndex=r0
#       CommandAddressBuffer[EEP_31_AT25256B_ARRAYINDEX_ONE] = (uint8) ((JobStartAddr + CurrentDataIndex) >> EEP_31_AT25256B_SHIFT_EIGHT);   /*address msb*/
	.d2line		557
	lis		r3,JobStartAddr@ha		# RetVal=r3
	lhz		r5,JobStartAddr@l(r3)		# RetVal=r3
	rlwinm		r0,r31,0,16,31		# CurrentDataIndex=r0 CurrentDataIndex=r31
	se_add		r0,r5		# CurrentDataIndex=r0 CurrentDataIndex=r0
	srawi		r0,r0,8		# CurrentDataIndex=r0 CurrentDataIndex=r0
	lis		r5,(CommandAddressBuffer+1)@ha
	stb		r0,(CommandAddressBuffer+1)@l(r5)		# CurrentDataIndex=r0
#       CommandAddressBuffer[EEP_31_AT25256B_ARRAYINDEX_TWO] = (uint8) ((JobStartAddr + CurrentDataIndex) & EEP_31_AT25256B_LSB); /*address lsb*/
	.d2line		558
	lhz		r0,JobStartAddr@l(r3)		# CurrentDataIndex=r0 RetVal=r3
	se_add		r31,r0		# CurrentDataIndex=r31 CurrentDataIndex=r31 CurrentDataIndex=r0
	lis		r3,(CommandAddressBuffer+2)@ha		# RetVal=r3
	stb		r31,(CommandAddressBuffer+2)@l(r3)		# RetVal=r3 CurrentDataIndex=r31
# 
#       /* Setup external buffer with target data pointer and data size to be written */
#       RetVal = Spi_SetupEB(Eep_LcfgConfig.CommandAddressChlID, (P2CONST(Spi_DataType, EEP_VAR, EEP_APPL_CONST))&CommandAddressBuffer[0], NULL_PTR,(Spi_NumberOfDataType)EEP_31_AT25256B_COMMANDADDRESS_CHL_LENGTH);
	.d2line		561
	lis		r3,(Eep_LcfgConfig+5)@ha		# RetVal=r3
	lbz		r3,(Eep_LcfgConfig+5)@l(r3)		# RetVal=r3 RetVal=r3
	diab.li		r5,0
	diab.li		r6,3
	bl		Spi_SetupEB
.Llo18:
	mr		r3,r3		# RetVal=r3 RetVal=r3
#       if (E_OK == RetVal)
	.d2line		562
	rlwinm		r0,r3,0,24,31		# CurrentDataIndex=r0 RetVal=r3
.Llo19:
	se_cmpi		r0,0		# CurrentDataIndex=r0
	bc		0,2,.L588	# ne
#       {
#          RetVal = Spi_SetupEB(Eep_LcfgConfig.DataChlID, ConstUpperLayerDataBufferPtr, NULL_PTR, (Spi_NumberOfDataType)DataSize);
	.d2line		564
.Llo20:
	lis		r3,(Eep_LcfgConfig+6)@ha		# RetVal=r3
	lbz		r3,(Eep_LcfgConfig+6)@l(r3)		# RetVal=r3 RetVal=r3
	rlwinm		r6,r30,0,16,31		# DataSize=r30
	lis		r4,ConstUpperLayerDataBufferPtr@ha
	lwz		r4,ConstUpperLayerDataBufferPtr@l(r4)
	diab.li		r5,0
	bl		Spi_SetupEB
	mr		r3,r3		# RetVal=r3 RetVal=r3
#          if (E_OK == RetVal)
	.d2line		565
	rlwinm		r0,r3,0,24,31		# CurrentDataIndex=r0 RetVal=r3
.Llo21:
	se_cmpi		r0,0		# CurrentDataIndex=r0
	bc		0,2,.L588	# ne
#          {
#             /* Transmit the WriteWnable and Write job */
#             RetVal = Spi_AsyncTransmit(Eep_LcfgConfig.WriteEraseSequenceID);
	.d2line		568
.Llo22:
	lis		r3,(Eep_LcfgConfig+7)@ha		# RetVal=r3
	lbz		r3,(Eep_LcfgConfig+7)@l(r3)		# RetVal=r3 RetVal=r3
	bl		Spi_AsyncTransmit
	mr		r3,r3		# RetVal=r3 RetVal=r3
.L588:
#          }
#       }
#    }
#    return(RetVal);
	.d2line		572
	rlwinm		r3,r3,0,24,31		# RetVal=r3 RetVal=r3
# }
	.d2line		573
	.d2epilogue_begin
.Llo27:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# CurrentDataIndex=r0
	mtspr		lr,r0		# CurrentDataIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L885:
	.type		EepHw_Write,@function
	.size		EepHw_Write,.-EepHw_Write
# Number of nodes = 116

# Allocations for EepHw_Write
#	?a4		CurrentDataIndex
#	?a5		DataSize
#	?a6		RetVal
#	SP,8		WriteEnableBuffer
# static FUNC(void, EEP_CODE) EepHw_Cancel(VAR(uint8, EEP_VAR) OngoingOp)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         585,29
#$$ld
.L896:

#$$bf	EepHw_Cancel,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
EepHw_Cancel:
.Llo28:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# OngoingOp=r3 OngoingOp=r3
	.d2prologue_end
# {
#    if (OngoingOp == EEP_READ)                  /* Check current on going operation is Read */
	.d2line		587
	rlwinm		r3,r3,0,24,31		# OngoingOp=r3 OngoingOp=r3
	se_cmpi		r3,3		# OngoingOp=r3
	bc		0,2,.L593	# ne
#    {
#       Spi_Cancel(Eep_LcfgConfig.ReadSequenceID);          /* Cancel Read sequence */
	.d2line		589
.Llo29:
	lis		r3,(Eep_LcfgConfig+4)@ha		# OngoingOp=r3
.Llo30:
	lbz		r3,(Eep_LcfgConfig+4)@l(r3)		# OngoingOp=r3 OngoingOp=r3
.Llo31:
	bl		Spi_Cancel
	b		.L592
.L593:
#    }
#    else
#    {
#       Spi_Cancel(Eep_LcfgConfig.WriteEraseSequenceID);         /* Cancel Write sequence */
	.d2line		593
	lis		r3,(Eep_LcfgConfig+7)@ha		# OngoingOp=r3
.Llo32:
	lbz		r3,(Eep_LcfgConfig+7)@l(r3)		# OngoingOp=r3 OngoingOp=r3
.Llo33:
	bl		Spi_Cancel
.L592:
#    }
# }
	.d2line		595
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L897:
	.type		EepHw_Cancel,@function
	.size		EepHw_Cancel,.-EepHw_Cancel
# Number of nodes = 23

# Allocations for EepHw_Cancel
#	?a4		OngoingOp
# static FUNC(Std_ReturnType, EEP_CODE) EepHw_ReadStatusReg(void)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         607,39
#$$ld
.L902:

#$$bf	EepHw_ReadStatusReg,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
EepHw_ReadStatusReg:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(Std_ReturnType, EEP_VAR) RetVal;
#    VAR(uint8, EEP_VAR) ReadStatusRegBuffer[EEP_31_AT25256B_STATUSREGBUFFER_LENGTH]={0};
	.d2line		610
	lis		r7,.L598@ha
	e_add16i		r7,r7,.L598@l
	lbz		r4,0(r7)
	lbz		r5,1(r7)
	stb		r4,8(r1)
	stb		r5,9(r1)
# 
#    /** Reseting the Read Status Register */
#    StatusRegValue[EEP_31_AT25256B_ARRAYINDEX_ZERO] = 0x00;
	.d2line		613
	diab.li		r0,0
	lis		r5,StatusRegValue@ha
	e_add16i		r5,r5,StatusRegValue@l
	stb		r0,0(r5)
#    StatusRegValue[EEP_31_AT25256B_ARRAYINDEX_ONE] = 0x01;
	.d2line		614
	diab.li		r0,1
	lis		r3,(StatusRegValue+1)@ha		# RetVal=r3
.Llo34:
	stb		r0,(StatusRegValue+1)@l(r3)		# RetVal=r3
# 
#    /*Setup Read Status Register command Channel*/
#    ReadStatusRegBuffer[EEP_31_AT25256B_ARRAYINDEX_ZERO] = EEP_RDSR;
	.d2line		617
	diab.li		r0,5
	stb		r0,8(r1)
# 
#    /* Setupt external buffer with target data pointer and data size to be sent */
#    RetVal = Spi_SetupEB(Eep_LcfgConfig.ReadStatusRegChlID, (P2CONST(Spi_DataType, EEP_VAR, EEP_APPL_CONST))&ReadStatusRegBuffer[0], &StatusRegValue[0],(Spi_NumberOfDataType)EEP_31_AT25256B_STATUSREG_CHL_LENGTH);
	.d2line		620
	lis		r3,(Eep_LcfgConfig+10)@ha		# RetVal=r3
	lbz		r3,(Eep_LcfgConfig+10)@l(r3)		# RetVal=r3 RetVal=r3
.Llo35:
	diab.addi		r4,r1,8
	diab.li		r6,2
	bl		Spi_SetupEB
.Llo36:
	mr		r3,r3		# RetVal=r3 RetVal=r3
# 
#    if (E_OK == RetVal)
	.d2line		622
	rlwinm		r0,r3,0,24,31		# RetVal=r3
	se_cmpi		r0,0
	bc		0,2,.L599	# ne
#    {
#       /* Transmit Read Status Register command */
#       RetVal = Spi_AsyncTransmit(Eep_LcfgConfig.ReadStatusRegSequenceID);
	.d2line		625
	lis		r3,(Eep_LcfgConfig+9)@ha		# RetVal=r3
	lbz		r3,(Eep_LcfgConfig+9)@l(r3)		# RetVal=r3 RetVal=r3
	bl		Spi_AsyncTransmit
	mr		r3,r3		# RetVal=r3 RetVal=r3
.L599:
#    }
# 
#    return RetVal;
	.d2line		628
	rlwinm		r3,r3,0,24,31		# RetVal=r3 RetVal=r3
# }
	.d2line		629
	.d2epilogue_begin
.Llo37:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L903:
	.type		EepHw_ReadStatusReg,@function
	.size		EepHw_ReadStatusReg,.-EepHw_ReadStatusReg
# Number of nodes = 56

# Allocations for EepHw_ReadStatusReg
#	?a4		RetVal
#	SP,8		ReadStatusRegBuffer
# static FUNC(Std_ReturnType, EEP_CODE) EepCompareData(Eep_31_AT25256B_LengthType DataSize)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         636,39
#$$ld
.L912:

#$$bf	EepCompareData,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.d2_cfa_start __cie
EepCompareData:
.Llo38:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo40:
	stw		r0,20(r1)		# RetVal=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# DataSize=r0 DataSize=r3
	.d2prologue_end
# {
#    VAR(Std_ReturnType, EEP_VAR) RetVal = E_OK;
	.d2line		638
.Llo41:
	diab.li		r3,0		# RetVal=r3
#    VAR(Eep_31_AT25256B_LengthType, EEP_VAR) index = DataSize;
	.d2line		639
.Llo39:
	mr		r0,r0		# index=r0 index=r0
.L602:
# 
# /* Compare data */
#    while((0U < index) && (E_OK == RetVal))
	.d2line		642
	e_cmphl16i	r0,0		# index=r0
	bc		1,2,.L603	# eq
	rlwinm		r4,r3,0,24,31		# index=r4 RetVal=r3
	se_cmpi		r4,0		# index=r4
	bc		0,2,.L603	# ne
#    {
#       if (TargetDataBufferPtr[index-1] != ConstUpperLayerDataBufferPtr[index-1])
	.d2line		644
	lis		r4,TargetDataBufferPtr@ha		# index=r4
	lwz		r4,TargetDataBufferPtr@l(r4)		# index=r4 index=r4
	rlwinm		r6,r0,0,16,31		# index=r0
	se_add		r4,r6		# index=r4 index=r4
	lbz		r5,-1(r4)		# index=r4
	lis		r4,ConstUpperLayerDataBufferPtr@ha		# index=r4
	lwz		r4,ConstUpperLayerDataBufferPtr@l(r4)		# index=r4 index=r4
	se_add		r4,r6		# index=r4 index=r4
	lbz		r4,-1(r4)		# index=r4 index=r4
	se_cmp		r5,r4		# index=r4
#       {
#          RetVal = E_NOT_OK;
	.d2line		646
	diab.li		r4,1		# index=r4
	isel		r3,r3,r4,2		# RetVal=r3 RetVal=r3 index=r4
.L604:
#       }
#       /* update local variables to compare the next data */
#       index--;
	.d2line		649
	diab.li		r4,65535		# index=r4
	se_add		r0,r4		# index=r0 index=r0 index=r4
	mr		r0,r0		# index=r0 index=r0
	b		.L602
.L603:
#    }
#    return(RetVal);
	.d2line		651
.Llo43:
	rlwinm		r3,r3,0,24,31		# RetVal=r3 RetVal=r3
# }
	.d2line		652
	.d2epilogue_begin
.Llo42:
	lwz		r0,20(r1)		# index=r0
	mtspr		lr,r0		# index=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L913:
	.type		EepCompareData,@function
	.size		EepCompareData,.-EepCompareData
# Number of nodes = 39

# Allocations for EepCompareData
#	?a4		DataSize
#	?a5		RetVal
#	?a6		index
# static FUNC(void, EEP_CODE) EepJobFinished(void)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         655,29
#$$ld
.L922:

#$$bf	EepJobFinished,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
EepJobFinished:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /* Set Eep module status idle and current job result to ok. */
#    ModuleStatus = MEMIF_IDLE;
	.d2line		658
	diab.li		r0,1
	lis		r3,ModuleStatus@ha
	e_add16i		r3,r3,ModuleStatus@l
	stw		r0,0(r3)
#    JobResult = MEMIF_JOB_OK;
	.d2line		659
	diab.li		r0,0
	lis		r3,JobResult@ha
	e_add16i		r3,r3,JobResult@l
	stw		r0,0(r3)
# 
#    /* Set internal Eep job state to ok since current job is finished  */
#    EepJob = EEP_JOB_DONE;
	.d2line		662
	lis		r3,EepJob@ha
	e_add16i		r3,r3,EepJob@l
	stw		r0,0(r3)
# 
#    /* Set internal Eep job type to EEP_JOB_DONE since current job is finished  */
#    EepJobComp = EEP_JOB_DONE;
	.d2line		665
	lis		r3,EepJobComp@ha
	e_add16i		r3,r3,EepJobComp@l
	stw		r0,0(r3)
# 
#    /* Check if job end notification configured */
#    if (NULL_PTR != EepConfigPtr->JobEndNotification)
	.d2line		668
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lwz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L608	# eq
#    {
#       EepConfigPtr->JobEndNotification();
	.d2line		670
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lwz		r0,0(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L608:
#    }
# }
	.d2line		672
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L923:
	.type		EepJobFinished,@function
	.size		EepJobFinished,.-EepJobFinished
# Number of nodes = 20

# Allocations for EepJobFinished
# static FUNC(void, EEP_CODE) EepJobFailed(Dem_EventIdType EventID)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         676,29
#$$ld
.L927:

#$$bf	EepJobFailed,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
EepJobFailed:
.Llo44:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /* Set Eep module status idle and current job result to fail. */
#    ModuleStatus = MEMIF_IDLE;
	.d2line		679
	diab.li		r4,1
	lis		r5,ModuleStatus@ha
	e_add16i		r5,r5,ModuleStatus@l
	stw		r4,0(r5)
# 
#    /* Set internal Eep job type to EEP_JOB_DONE since current job is finished  */
#    EepJob = EEP_JOB_DONE;
	.d2line		682
	diab.li		r0,0
	lis		r5,EepJob@ha
	e_add16i		r5,r5,EepJob@l
	stw		r0,0(r5)
# 
#    /* Set internal Eep job type to EEP_JOB_DONE since current job is finished  */
#    EepJobComp = EEP_JOB_DONE;
	.d2line		685
	lis		r5,EepJobComp@ha
	e_add16i		r5,r5,EepJobComp@l
	stw		r0,0(r5)
# 
#    /* Report the job processing failure to Dem */
#    Dem_ReportErrorStatus((Dem_EventIdType)EventID, DEM_EVENT_STATUS_FAILED);
	.d2line		688
	rlwinm		r3,r3,0,16,31		# EventID=r3 EventID=r3
.Llo45:
	bl		Dem_ReportErrorStatus
# 
#    /* Check if job error notification configured */
#    if (NULL_PTR != EepConfigPtr->JobErrorNotification)
	.d2line		691
	lis		r3,EepConfigPtr@ha		# EventID=r3
.Llo46:
	lwz		r3,EepConfigPtr@l(r3)		# EventID=r3 EventID=r3
	lwz		r0,4(r3)		# EventID=r3
	se_cmpi		r0,0
	bc		1,2,.L611	# eq
#    {
#       EepConfigPtr->JobErrorNotification();
	.d2line		693
.Llo47:
	lis		r3,EepConfigPtr@ha		# EventID=r3
.Llo48:
	lwz		r3,EepConfigPtr@l(r3)		# EventID=r3 EventID=r3
	lwz		r0,4(r3)		# EventID=r3
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L611:
#    }
# }
	.d2line		695
	.d2epilogue_begin
.Llo49:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L928:
	.type		EepJobFailed,@function
	.size		EepJobFailed,.-EepJobFailed
# Number of nodes = 28

# Allocations for EepJobFailed
#	?a4		EventID
# static VAR(Eep_31_AT25256B_LengthType, EEP_VAR) GetReadDataSize(void)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         697,49
#$$ld
.L934:

#$$bf	GetReadDataSize,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.d2_cfa_start __cie
GetReadDataSize:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(Eep_31_AT25256B_LengthType, EEP_VAR) DataSize;
#    /*  Get the data size to erase */
#    if (EepConfigPtr->NormalReadBlockSize <= JobDataLength)
	.d2line		701
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lhz		r0,20(r3)
	lis		r3,JobDataLength@ha
	lhz		r3,JobDataLength@l(r3)
	se_cmp		r0,r3
	bc		1,1,.L615	# gt
#    {
#       DataSize = EepConfigPtr->NormalReadBlockSize;
	.d2line		703
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lhz		r3,20(r3)
.Llo50:
	mr		r3,r3		# DataSize=r3 DataSize=r3
	b		.L616
.L615:
#    }
#    else
#    {
#       DataSize = JobDataLength;
	.d2line		707
.Llo51:
	lis		r3,JobDataLength@ha
	lhz		r3,JobDataLength@l(r3)
.Llo52:
	mr		r3,r3		# DataSize=r3 DataSize=r3
.L616:
#    }
#    return DataSize;
	.d2line		709
	rlwinm		r3,r3,0,16,31		# DataSize=r3 DataSize=r3
# }
	.d2line		710
	.d2epilogue_begin
.Llo53:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L935:
	.type		GetReadDataSize,@function
	.size		GetReadDataSize,.-GetReadDataSize
# Number of nodes = 20

# Allocations for GetReadDataSize
#	?a4		DataSize
# static FUNC(void, EEP_CODE) EepInternalReadJob(void)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         714,29
#$$ld
.L941:

#$$bf	EepInternalReadJob,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
EepInternalReadJob:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(Eep_31_AT25256B_LengthType, EEP_VAR) DataSize;
# 
#    /* Check that Spi read sequence is not pending, read job processing is pending and
#     * intermediate read job processing is successfully finished */
#    if ((SPI_SEQ_PENDING != Spi_GetSequenceResult(Eep_LcfgConfig.ReadSequenceID)) &&
	.d2line		720
	lis		r3,(Eep_LcfgConfig+4)@ha
	lbz		r3,(Eep_LcfgConfig+4)@l(r3)
	bl		Spi_GetSequenceResult
	se_cmpi		r3,1
	bc		1,2,.L619	# eq
	lis		r3,JobProcessResult@ha
	lwz		r0,JobProcessResult@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L619	# ne
#        (EEP_JOB_OK == JobProcessResult))
#    {
#      /* Check if the read status reg job is complete and chip write cycle is not in progress */
#       if((EEP_JOB_OK == JobStatusRegProcessResult) && (FALSE == IS_WRITEINPROGRESS()))
	.d2line		724
	lis		r3,JobStatusRegProcessResult@ha
	lwz		r0,JobStatusRegProcessResult@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L621	# ne
	lis		r3,(StatusRegValue+1)@ha
	lbz		r0,(StatusRegValue+1)@l(r3)
	se_btsti		r0,31
	bc		0,2,.L621	# ne
#       {
#       /*  Get the data size to read */
#       DataSize = GetReadDataSize();
	.d2line		727
	bl		GetReadDataSize
.Llo54:
	mr		r31,r3		# DataSize=r31 DataSize=r3
# 
#       /* Initiate the H/W read */
#       if (E_OK == EepHw_Read(CurrentDataLength, DataSize) )
	.d2line		730
.Llo55:
	lis		r3,CurrentDataLength@ha
.Llo56:
	lhz		r3,CurrentDataLength@l(r3)
	mr		r4,r31		# DataSize=r4 DataSize=r31
	bl		EepHw_Read
	e_andi.		r3,r3,255
	bc		0,2,.L622	# ne
#       {
#          /* Set intermediate job processing status to busy */
#          JobProcessResult = EEP_JOB_BUSY;
	.d2line		733
	diab.li		r0,1
	lis		r3,JobProcessResult@ha
	e_add16i		r3,r3,JobProcessResult@l
	stw		r0,0(r3)
#          /* Length read */
#          CurrentDataLength += DataSize;
	.d2line		735
	lis		r3,CurrentDataLength@ha
	lhz		r4,CurrentDataLength@l(r3)
	se_add		r4,r31		# DataSize=r31
	e_add16i		r3,r3,CurrentDataLength@l
	sth		r4,0(r3)
#          /* Total Remaining Length to be read */
#          JobDataLength -= DataSize;
	.d2line		737
	lis		r3,JobDataLength@ha
	lhz		r0,JobDataLength@l(r3)
	subf		r31,r31,r0		# DataSize=r31 DataSize=r31
	e_add16i		r3,r3,JobDataLength@l
	sth		r31,0(r3)		# DataSize=r31
	b		.L619
.L622:
# 
#          /* Set up the Time Out Value */
#          EEP_SETEEPJOBTIMEOUT(EepConfigPtr->EepReadTimeTicks)
#       }
#       else
#       {
#          JobProcessResult = EEP_JOB_FAILED;
	.d2line		744
	diab.li		r0,2
	lis		r3,JobProcessResult@ha
	e_add16i		r3,r3,JobProcessResult@l
	stw		r0,0(r3)
#          /* Set current job result to MEMIF_BLOCK_FAILED and process  read job failure. */
#          JobResult = MEMIF_JOB_FAILED;
	.d2line		746
	diab.li		r0,1
	lis		r3,JobResult@ha
	e_add16i		r3,r3,JobResult@l
	stw		r0,0(r3)
#          EepJobFailed((EepConfigPtr->Eep_DemConfigPtr)->dem_event_read_failed);
	.d2line		747
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lwz		r3,28(r3)
	lhz		r3,4(r3)
	bl		EepJobFailed
	b		.L619
.L621:
#       }
#      }
#      else
#      {
#          /* Set Read status Reg job cycle */
#          EepJob = EEP_READSTATUSREG;
	.d2line		753
.Llo57:
	diab.li		r0,5
	lis		r3,EepJob@ha
	e_add16i		r3,r3,EepJob@l
	stw		r0,0(r3)
.L619:
#      }
#    }
# }
	.d2line		756
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
	.section	.invalid_TEXT,,c
#$$ld
.L942:
	.type		EepInternalReadJob,@function
	.size		EepInternalReadJob,.-EepInternalReadJob
# Number of nodes = 73

# Allocations for EepInternalReadJob
#	?a4		DataSize
# static VAR(Eep_31_AT25256B_LengthType, EEP_VAR) GetWriteDataSize(void)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         758,49
#$$ld
.L948:

#$$bf	GetWriteDataSize,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,xer,lr
	.d2_cfa_start __cie
GetWriteDataSize:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo75:
	stw		r0,20(r1)		# PageEndAddress=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(Eep_31_AT25256B_LengthType, EEP_VAR) DataSize;
#    VAR(Eep_31_AT25256B_LengthType, EEP_VAR) CurrentJobLength;
#    /** Get the present Page Start Address */
#    CONST(Eep_31_AT25256B_AddressType, EEP_VAR) PageStartAddress = (Eep_31_AT25256B_AddressType)(((JobStartAddr+CurrentDataLength)/PAGE_SIZE)*PAGE_SIZE);
	.d2line		763
	lis		r4,JobStartAddr@ha
	lhz		r0,JobStartAddr@l(r4)		# PageEndAddress=r0
	lis		r3,CurrentDataLength@ha		# PageStartAddress=r3
.Llo65:
	lhz		r3,CurrentDataLength@l(r3)		# PageStartAddress=r3 PageStartAddress=r3
	se_add		r0,r3		# PageEndAddress=r0 PageEndAddress=r0 PageStartAddress=r3
	srawi		r0,r0,6		# PageEndAddress=r0 PageEndAddress=r0
	addze		r3,r0		# PageStartAddress=r3 PageEndAddress=r0
	se_slwi		r3,6		# PageStartAddress=r3 PageStartAddress=r3
	mr		r3,r3		# PageStartAddress=r3 PageStartAddress=r3
#    /** Get the present Page End Address */
#    CONST(Eep_31_AT25256B_AddressType, EEP_VAR) PageEndAddress = (Eep_31_AT25256B_AddressType)(PageStartAddress + PAGE_SIZE);
	.d2line		765
	diab.addi		r0,r3,64		# PageEndAddress=r0 PageStartAddress=r3
.Llo76:
	addi		r0,r3,64		# PageEndAddress=r0 PageStartAddress=r3
# 
#    /*  Get the data size to write */
#    /* SW ID: SWS_Eep_00097 */
#    if (TotalDataLength >= (PageEndAddress - JobStartAddr))
	.d2line		769
.Llo77:
	lis		r3,TotalDataLength@ha		# PageStartAddress=r3
	lhz		r3,TotalDataLength@l(r3)		# PageStartAddress=r3 PageStartAddress=r3
	rlwinm		r5,r0,0,16,31		# PageEndAddress=r0
	lhz		r4,JobStartAddr@l(r4)
	subf		r4,r4,r5
	se_cmp		r3,r4		# PageStartAddress=r3
	bc		1,0,.L629	# lt
#    {
#       CurrentJobLength = (Eep_31_AT25256B_LengthType)(PageEndAddress - (JobStartAddr + CurrentDataLength));
	.d2line		771
.Llo66:
	lis		r3,JobStartAddr@ha		# PageStartAddress=r3
.Llo67:
	lhz		r4,JobStartAddr@l(r3)		# PageStartAddress=r3
	lis		r3,CurrentDataLength@ha		# PageStartAddress=r3
	lhz		r3,CurrentDataLength@l(r3)		# PageStartAddress=r3 PageStartAddress=r3
	se_add		r3,r4		# PageStartAddress=r3 PageStartAddress=r3
.Llo78:
	subf		r0,r3,r0		# PageEndAddress=r0 PageStartAddress=r3 PageEndAddress=r0
.Llo64:
	mr		r0,r0		# CurrentJobLength=r0 CurrentJobLength=r0
#       if (CurrentJobLength >= EepConfigPtr->NormalWriteBlockSize)
	.d2line		772
.Llo58:
	rlwinm		r4,r0,0,16,31		# CurrentJobLength=r0
	lis		r3,EepConfigPtr@ha		# PageStartAddress=r3
	lwz		r3,EepConfigPtr@l(r3)		# PageStartAddress=r3 PageStartAddress=r3
	lhz		r3,22(r3)		# PageStartAddress=r3 PageStartAddress=r3
	se_cmp		r4,r3		# PageStartAddress=r3
	bc		1,0,.L630	# lt
#       {
#          DataSize = EepConfigPtr->NormalWriteBlockSize;
	.d2line		774
.Llo68:
	lis		r3,EepConfigPtr@ha		# PageStartAddress=r3
.Llo69:
	lwz		r3,EepConfigPtr@l(r3)		# PageStartAddress=r3 PageStartAddress=r3
	lhz		r3,22(r3)		# PageStartAddress=r3 PageStartAddress=r3
.Llo70:
	mr		r3,r3		# DataSize=r3 DataSize=r3
	b		.L632
.L630:
#       }
#       else
#       {
#          DataSize = CurrentJobLength;
	.d2line		778
	mr		r3,r0		# DataSize=r3 DataSize=r0
	b		.L632
.L629:
#       }
#    }
#    else
#    {
#       if (JobDataLength >= EepConfigPtr->NormalWriteBlockSize)
	.d2line		783
.Llo59:
	lis		r3,JobDataLength@ha		# PageStartAddress=r3
.Llo71:
	lhz		r0,JobDataLength@l(r3)		# PageEndAddress=r0 PageStartAddress=r3
.Llo79:
	lis		r3,EepConfigPtr@ha		# PageStartAddress=r3
	lwz		r3,EepConfigPtr@l(r3)		# PageStartAddress=r3 PageStartAddress=r3
	lhz		r3,22(r3)		# PageStartAddress=r3 PageStartAddress=r3
	se_cmp		r0,r3		# PageEndAddress=r0 PageStartAddress=r3
	bc		1,0,.L633	# lt
#       {
#          DataSize = EepConfigPtr->NormalWriteBlockSize;
	.d2line		785
.Llo72:
	lis		r3,EepConfigPtr@ha		# PageStartAddress=r3
.Llo73:
	lwz		r3,EepConfigPtr@l(r3)		# PageStartAddress=r3 PageStartAddress=r3
	lhz		r3,22(r3)		# PageStartAddress=r3 PageStartAddress=r3
.Llo60:
	mr		r3,r3		# DataSize=r3 DataSize=r3
	b		.L632
.L633:
#       }
#       else
#       {
#          DataSize = JobDataLength;
	.d2line		789
.Llo61:
	lis		r3,JobDataLength@ha		# PageStartAddress=r3
.Llo74:
	lhz		r3,JobDataLength@l(r3)		# PageStartAddress=r3 PageStartAddress=r3
.Llo62:
	mr		r3,r3		# DataSize=r3 DataSize=r3
.L632:
#       }
#    }
# 
#    return DataSize;
	.d2line		793
	rlwinm		r3,r3,0,16,31		# DataSize=r3 DataSize=r3
# }
	.d2line		794
	.d2epilogue_begin
.Llo63:
	lwz		r0,20(r1)		# CurrentJobLength=r0
	mtspr		lr,r0		# CurrentJobLength=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L949:
	.type		GetWriteDataSize,@function
	.size		GetWriteDataSize,.-GetWriteDataSize
# Number of nodes = 71

# Allocations for GetWriteDataSize
#	?a4		DataSize
#	?a5		CurrentJobLength
#	?a6		PageStartAddress
#	?a7		PageEndAddress
# static FUNC(void, EEP_CODE) EepInternalWriteJob(void)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         796,29
#$$ld
.L962:

#$$bf	EepInternalWriteJob,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
EepInternalWriteJob:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(Eep_31_AT25256B_LengthType, EEP_VAR) DataSize;
# 
#    /* Check that Spi write sequence is not pending, write job processing is pending and
#     * an intermediate write job processing is successfully finished  */
#    if ((SPI_SEQ_PENDING != Spi_GetSequenceResult(Eep_LcfgConfig.WriteEraseSequenceID)) &&
	.d2line		802
	lis		r3,(Eep_LcfgConfig+7)@ha
	lbz		r3,(Eep_LcfgConfig+7)@l(r3)
	bl		Spi_GetSequenceResult
	se_cmpi		r3,1
	bc		1,2,.L639	# eq
	lis		r3,JobProcessResult@ha
	lwz		r0,JobProcessResult@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L639	# ne
#        (EEP_JOB_OK == JobProcessResult))
#    {
#       /* Check if the read status reg job is complete and chip write cycle is not in progress */
#       if((EEP_JOB_OK == JobStatusRegProcessResult) && (FALSE == IS_WRITEINPROGRESS()))
	.d2line		806
	lis		r3,JobStatusRegProcessResult@ha
	lwz		r0,JobStatusRegProcessResult@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L641	# ne
	lis		r3,(StatusRegValue+1)@ha
	lbz		r0,(StatusRegValue+1)@l(r3)
	se_btsti		r0,31
	bc		0,2,.L641	# ne
#       {
#          /** Get the size to be processed */
#          DataSize = GetWriteDataSize();
	.d2line		809
	bl		GetWriteDataSize
.Llo80:
	mr		r31,r3		# DataSize=r31 DataSize=r3
# 
#       /*Write Cycle reduction*/
# #if (EEP_31_AT25256B_WRITE_CYCLE_REDUCTION == STD_ON)
# 
#       /* Do read, compare and then write here */
#       if (WriteCycleReductionReadFlag == WriteCycleReductionReadNotComplete)
#       {
#          if (SPI_SEQ_PENDING != Spi_GetSequenceResult(Eep_LcfgConfig.ReadSequenceID))
#          {
#             TargetDataBufferPtr = &Eep_LcfgConfig.Eep_TargetLocalDataBufferPtr[0];
#             if (E_OK == EepHw_Read(CurrentDataLength, DataSize))
#             {
#                /* Set up the Time Out Value */
#                EEP_SETEEPJOBTIMEOUT(EepConfigPtr->EepReadTimeTicks)
#                JobProcessResult = EEP_JOB_BUSY;
#             }
#             else
#             {
#                JobProcessResult = EEP_JOB_FAILED;
#                /* Set current job result to MEMIF_BLOCK_FAILED and process  write job failure. */
#                JobResult = MEMIF_JOB_FAILED;
#                EepJobFailed((EepConfigPtr->Eep_DemConfigPtr)->dem_event_write_failed);
#             }
#          }
#       }
#       else
#       {
#          if (E_NOT_OK == EepCompareData(DataSize))
#          {
# #endif /* end of EEP_WRITE_CYCLIC_REDUCTION */
# 
#       if (E_OK == EepHw_Write(CurrentDataLength, DataSize))
	.d2line		841
.Llo81:
	lis		r3,CurrentDataLength@ha
.Llo82:
	lhz		r3,CurrentDataLength@l(r3)
	mr		r4,r31		# DataSize=r4 DataSize=r31
	bl		EepHw_Write
	e_andi.		r3,r3,255
	bc		0,2,.L642	# ne
#       {
#          /* Set up the Time Out Value */
#          EEP_SETEEPJOBTIMEOUT(EepConfigPtr->EepWriteTimeTicks)
#          /* Set intermediate job processing status to busy */
#          JobProcessResult = EEP_JOB_BUSY;
	.d2line		846
	diab.li		r0,1
	lis		r3,JobProcessResult@ha
	e_add16i		r3,r3,JobProcessResult@l
	stw		r0,0(r3)
#          /* Length written */
#          CurrentDataLength += DataSize;
	.d2line		848
	lis		r3,CurrentDataLength@ha
	lhz		r4,CurrentDataLength@l(r3)
	se_add		r4,r31		# DataSize=r31
	e_add16i		r3,r3,CurrentDataLength@l
	sth		r4,0(r3)
#          /* Total Remaining Length to be write */
#          JobDataLength -= DataSize;
	.d2line		850
	lis		r3,JobDataLength@ha
	lhz		r0,JobDataLength@l(r3)
	subf		r4,r31,r0		# DataSize=r31
	e_add16i		r3,r3,JobDataLength@l
	sth		r4,0(r3)
#          /** Update the Upper Layer Data Buffer Pointer */
#          ConstUpperLayerDataBufferPtr = &ConstUpperLayerDataBufferPtr[DataSize];
	.d2line		852
	lis		r3,ConstUpperLayerDataBufferPtr@ha
	lwz		r0,ConstUpperLayerDataBufferPtr@l(r3)
	rlwinm		r31,r31,0,16,31		# DataSize=r31 DataSize=r31
	se_add		r31,r0		# DataSize=r31 DataSize=r31
	e_add16i		r3,r3,ConstUpperLayerDataBufferPtr@l
	stw		r31,0(r3)		# DataSize=r31
#          /* Setting the job cycle to read status reg job*/
#          EepJob = EEP_READSTATUSREG;
	.d2line		854
	diab.li		r0,5
	lis		r3,EepJob@ha
	e_add16i		r3,r3,EepJob@l
	stw		r0,0(r3)
	b		.L639
.L642:
#       }
#       else
#       {
#          JobProcessResult = EEP_JOB_FAILED;
	.d2line		858
	diab.li		r0,2
	lis		r3,JobProcessResult@ha
	e_add16i		r3,r3,JobProcessResult@l
	stw		r0,0(r3)
# 
#          /* Set current job result to MEMIF_BLOCK_FAILED and process  write job failure. */
#          JobResult = MEMIF_JOB_FAILED;
	.d2line		861
	diab.li		r0,1
	lis		r3,JobResult@ha
	e_add16i		r3,r3,JobResult@l
	stw		r0,0(r3)
#          EepJobFailed((EepConfigPtr->Eep_DemConfigPtr)->dem_event_write_failed);
	.d2line		862
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lwz		r3,28(r3)
	lhz		r3,2(r3)
	bl		EepJobFailed
	b		.L639
.L641:
#       }
# #if (EEP_31_AT25256B_WRITE_CYCLE_REDUCTION == STD_ON)
#    }
#    else
#    {
#       CurrentDataLength += DataSize;
#       /* Total Remaining Length to write */
#       JobDataLength -= DataSize;
#       /** Update the Upper Layer Data Buffer Pointer */
#       ConstUpperLayerDataBufferPtr = &ConstUpperLayerDataBufferPtr[DataSize];
#       WriteCycleReductionReadFlag = WriteCycleReductionReadNotComplete;
#       if (0 == JobDataLength)
#       {
#          EepJobFinished();
#       }
#    }
# }
# #endif
#       }
#       else
#       {
#          /* Set Read status Reg job cycle */
#          EepJob = EEP_READSTATUSREG;
	.d2line		885
.Llo83:
	diab.li		r0,5
	lis		r3,EepJob@ha
	e_add16i		r3,r3,EepJob@l
	stw		r0,0(r3)
.L639:
#       }
#    }
# }
	.d2line		888
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
	.section	.invalid_TEXT,,c
#$$ld
.L963:
	.type		EepInternalWriteJob,@function
	.size		EepInternalWriteJob,.-EepInternalWriteJob
# Number of nodes = 82

# Allocations for EepInternalWriteJob
#	?a4		DataSize
# static FUNC(void, EEP_CODE) EepInternalEraseJob(void)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         891,29
#$$ld
.L969:

#$$bf	EepInternalEraseJob,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
EepInternalEraseJob:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(Eep_31_AT25256B_LengthType, EEP_VAR) DataSize;
# 
#    /* Check that Spi erase sequence is not pending, erase job processing is pending and
#     * intermediate erase job processing is successfully finished.  */
#    if ((SPI_SEQ_PENDING != Spi_GetSequenceResult(Eep_LcfgConfig.WriteEraseSequenceID)) && (EEP_JOB_OK == JobProcessResult))
	.d2line		897
	lis		r3,(Eep_LcfgConfig+7)@ha
	lbz		r3,(Eep_LcfgConfig+7)@l(r3)
	bl		Spi_GetSequenceResult
	se_cmpi		r3,1
	bc		1,2,.L648	# eq
	lis		r3,JobProcessResult@ha
	lwz		r0,JobProcessResult@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L648	# ne
#    {
#       /* Check if the read status reg job is complete and chip write cycle is not in progress */
#       if((EEP_JOB_OK == JobStatusRegProcessResult) && (FALSE == IS_WRITEINPROGRESS()))
	.d2line		900
	lis		r3,JobStatusRegProcessResult@ha
	lwz		r0,JobStatusRegProcessResult@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L650	# ne
	lis		r3,(StatusRegValue+1)@ha
	lbz		r0,(StatusRegValue+1)@l(r3)
	se_btsti		r0,31
	bc		0,2,.L650	# ne
#       {
#          DataSize = GetWriteDataSize();
	.d2line		902
	bl		GetWriteDataSize
.Llo84:
	mr		r31,r3		# DataSize=r31 DataSize=r3
#          /* Initiate the H/W erase */
#          if (E_OK == EepHw_Write(CurrentDataLength, DataSize))
	.d2line		904
.Llo85:
	lis		r3,CurrentDataLength@ha
.Llo86:
	lhz		r3,CurrentDataLength@l(r3)
	mr		r4,r31		# DataSize=r4 DataSize=r31
	bl		EepHw_Write
	e_andi.		r3,r3,255
	bc		0,2,.L651	# ne
#          {
#             /* Set intermediate job processing status to busy */
#             JobProcessResult = EEP_JOB_BUSY;
	.d2line		907
	diab.li		r0,1
	lis		r3,JobProcessResult@ha
	e_add16i		r3,r3,JobProcessResult@l
	stw		r0,0(r3)
#             /* Length written */
#             CurrentDataLength += DataSize;
	.d2line		909
	lis		r3,CurrentDataLength@ha
	lhz		r4,CurrentDataLength@l(r3)
	se_add		r4,r31		# DataSize=r31
	e_add16i		r3,r3,CurrentDataLength@l
	sth		r4,0(r3)
#             /* Total Remaining Length to be erase */
#             JobDataLength -= DataSize;
	.d2line		911
	lis		r3,JobDataLength@ha
	lhz		r0,JobDataLength@l(r3)
	subf		r31,r31,r0		# DataSize=r31 DataSize=r31
	e_add16i		r3,r3,JobDataLength@l
	sth		r31,0(r3)		# DataSize=r31
	b		.L648
.L651:
# 
#             /* Set the Time Out Value*/
#             EEP_SETEEPJOBTIMEOUT(EepConfigPtr->EepEraseTimeTicks)
#          }
#          else
#          {
#             JobProcessResult = EEP_JOB_FAILED;
	.d2line		918
	diab.li		r0,2
	lis		r3,JobProcessResult@ha
	e_add16i		r3,r3,JobProcessResult@l
	stw		r0,0(r3)
# 
#             /* Set current job result to MEMIF_BLOCK_FAILED and process  erase job failure. */
#             JobResult = MEMIF_JOB_FAILED;
	.d2line		921
	diab.li		r0,1
	lis		r3,JobResult@ha
	e_add16i		r3,r3,JobResult@l
	stw		r0,0(r3)
#             EepJobFailed((EepConfigPtr->Eep_DemConfigPtr)->dem_event_erase_failed);
	.d2line		922
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lwz		r3,28(r3)
	lhz		r3,6(r3)
	bl		EepJobFailed
	b		.L648
.L650:
#          }
#       }
#       else
#       {
#          /* Set Read status Reg job cycle */
#          EepJob = EEP_READSTATUSREG;
	.d2line		928
.Llo87:
	diab.li		r0,5
	lis		r3,EepJob@ha
	e_add16i		r3,r3,EepJob@l
	stw		r0,0(r3)
.L648:
#       }
#    }
# }
	.d2line		931
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
	.section	.invalid_TEXT,,c
#$$ld
.L970:
	.type		EepInternalEraseJob,@function
	.size		EepInternalEraseJob,.-EepInternalEraseJob
# Number of nodes = 73

# Allocations for EepInternalEraseJob
#	?a4		DataSize
# static FUNC(void, EEP_CODE) EepInternalCompareJob(void)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         934,29
#$$ld
.L976:

#$$bf	EepInternalCompareJob,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
EepInternalCompareJob:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(Eep_31_AT25256B_LengthType, EEP_VAR) DataSize;
# 
#    /* Check that Spi read sequence is not pending, compare job processing is pending and
#     * an intermediate compare job processing is successfully finished */
#    if ((SPI_SEQ_PENDING != Spi_GetSequenceResult(Eep_LcfgConfig.ReadSequenceID)) &&
	.d2line		940
	lis		r3,(Eep_LcfgConfig+4)@ha
	lbz		r3,(Eep_LcfgConfig+4)@l(r3)
	bl		Spi_GetSequenceResult
	se_cmpi		r3,1
	bc		1,2,.L657	# eq
	lis		r3,JobProcessResult@ha
	lwz		r0,JobProcessResult@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L657	# ne
#        (EEP_JOB_OK == JobProcessResult))
#    {
#       /* Check if the read status reg job is complete and chip write cycle is not in progress */
#       if((EEP_JOB_OK == JobStatusRegProcessResult) && (FALSE == IS_WRITEINPROGRESS()))
	.d2line		944
	lis		r3,JobStatusRegProcessResult@ha
	lwz		r0,JobStatusRegProcessResult@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L659	# ne
	lis		r3,(StatusRegValue+1)@ha
	lbz		r0,(StatusRegValue+1)@l(r3)
	se_btsti		r0,31
	bc		0,2,.L659	# ne
#       {
#          /*  Get the data size to read */
#          DataSize = GetReadDataSize();
	.d2line		947
	bl		GetReadDataSize
.Llo88:
	mr		r31,r3		# DataSize=r31 DataSize=r3
# 
#          /* Initiate the H/W compare */
#          if (E_OK == EepHw_Read(CurrentDataLength, DataSize) )
	.d2line		950
.Llo89:
	lis		r3,CurrentDataLength@ha
.Llo90:
	lhz		r3,CurrentDataLength@l(r3)
	mr		r4,r31		# DataSize=r4 DataSize=r31
	bl		EepHw_Read
	e_andi.		r3,r3,255
	bc		0,2,.L660	# ne
#          {
#             /* Set intermediate job processing status to busy */
#             JobProcessResult = EEP_JOB_BUSY;
	.d2line		953
	diab.li		r0,1
	lis		r3,JobProcessResult@ha
	e_add16i		r3,r3,JobProcessResult@l
	stw		r0,0(r3)
#             /* Length read */
#             CurrentDataLength += DataSize;
	.d2line		955
	lis		r3,CurrentDataLength@ha
	lhz		r4,CurrentDataLength@l(r3)
	se_add		r4,r31		# DataSize=r31
	e_add16i		r3,r3,CurrentDataLength@l
	sth		r4,0(r3)
#             /* Total Remaining Length to be read */
#             JobDataLength -= DataSize;
	.d2line		957
	lis		r3,JobDataLength@ha
	lhz		r0,JobDataLength@l(r3)
	subf		r31,r31,r0		# DataSize=r31 DataSize=r31
	e_add16i		r3,r3,JobDataLength@l
	sth		r31,0(r3)		# DataSize=r31
	b		.L657
.L660:
#             /**Calculate the Ticks needed to process */
#             EEP_SETEEPJOBTIMEOUT(EepConfigPtr->EepReadTimeTicks)
#          }
#          else
#          {
#             JobProcessResult = EEP_JOB_FAILED;
	.d2line		963
	diab.li		r0,2
	lis		r3,JobProcessResult@ha
	e_add16i		r3,r3,JobProcessResult@l
	stw		r0,0(r3)
#             /* Set current job result to MEMIF_BLOCK_FAILED and process compare job failure. */
#             JobResult = MEMIF_JOB_FAILED;
	.d2line		965
	diab.li		r0,1
	lis		r3,JobResult@ha
	e_add16i		r3,r3,JobResult@l
	stw		r0,0(r3)
#             EepJobFailed((EepConfigPtr->Eep_DemConfigPtr)->dem_event_compare_failed);
	.d2line		966
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lwz		r3,28(r3)
	lhz		r3,0(r3)
	bl		EepJobFailed
	b		.L657
.L659:
#          }
#       }
#       else
#       {
#          /* Set Read status Reg job cycle */
#          EepJob = EEP_READSTATUSREG;
	.d2line		972
.Llo91:
	diab.li		r0,5
	lis		r3,EepJob@ha
	e_add16i		r3,r3,EepJob@l
	stw		r0,0(r3)
.L657:
#       }
#    }
# }
	.d2line		975
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
	.section	.invalid_TEXT,,c
#$$ld
.L977:
	.type		EepInternalCompareJob,@function
	.size		EepInternalCompareJob,.-EepInternalCompareJob
# Number of nodes = 71

# Allocations for EepInternalCompareJob
#	?a4		DataSize
# static FUNC(void, EEP_CODE) EepInternalReadStatusRegJob(void)
	.align		1
	.section	.invalid_TEXT,,c
        .d2line         978,29
#$$ld
.L983:

#$$bf	EepInternalReadStatusRegJob,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
EepInternalReadStatusRegJob:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(Std_ReturnType, EEP_VAR) RetVal;
#    /* Check that Spi read status register sequence is not pending, check job processing is pending */
#    if ((SPI_SEQ_PENDING != Spi_GetSequenceResult(Eep_LcfgConfig.ReadStatusRegSequenceID)) && (EEP_READSTATUSREG == EepJob) &&
	.d2line		982
	lis		r3,(Eep_LcfgConfig+9)@ha
	lbz		r3,(Eep_LcfgConfig+9)@l(r3)
	bl		Spi_GetSequenceResult
	se_cmpi		r3,1
	bc		1,2,.L666	# eq
	lis		r3,EepJob@ha
	lwz		r0,EepJob@l(r3)
	se_cmpi		r0,5
	bc		0,2,.L666	# ne
	lis		r3,JobStatusRegProcessResult@ha
	lwz		r0,JobStatusRegProcessResult@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L666	# eq
#        (EEP_JOB_BUSY != JobStatusRegProcessResult))
#    {
#       RetVal = EepHw_ReadStatusReg();
	.d2line		985
	bl		EepHw_ReadStatusReg
.Llo92:
	mr		r3,r3		# RetVal=r3 RetVal=r3
#       if(E_OK == RetVal)
	.d2line		986
	rlwinm		r3,r3,0,24,31		# RetVal=r3 RetVal=r3
	se_cmpi		r3,0		# RetVal=r3
	bc		0,2,.L666	# ne
#       {
#          /* Set intermediate job processing status to busy */
#          JobStatusRegProcessResult = EEP_JOB_BUSY;
	.d2line		989
.Llo93:
	diab.li		r0,1
	lis		r3,JobStatusRegProcessResult@ha		# RetVal=r3
.Llo94:
	e_add16i		r3,r3,JobStatusRegProcessResult@l		# RetVal=r3 RetVal=r3
	stw		r0,0(r3)		# RetVal=r3
#          /* Set the next job cycle*/
#          if(EEP_JOB_WRITE == EepJobComp)
	.d2line		991
	lis		r3,EepJobComp@ha		# RetVal=r3
	lwz		r0,EepJobComp@l(r3)		# RetVal=r3
	se_cmpi		r0,2
	bc		0,2,.L669	# ne
#          {
#             EepJob = EEP_JOB_WRITE;
	.d2line		993
.Llo95:
	diab.li		r0,2
	lis		r3,EepJob@ha		# RetVal=r3
.Llo96:
	e_add16i		r3,r3,EepJob@l		# RetVal=r3 RetVal=r3
	stw		r0,0(r3)		# RetVal=r3
	b		.L666
.L669:
#          }
#          else if(EEP_JOB_READ == EepJobComp)
	.d2line		995
.Llo97:
	lis		r3,EepJobComp@ha		# RetVal=r3
.Llo98:
	lwz		r0,EepJobComp@l(r3)		# RetVal=r3
	se_cmpi		r0,3
	bc		0,2,.L671	# ne
#          {
#             EepJob = EEP_JOB_READ;
	.d2line		997
.Llo99:
	diab.li		r0,3
	lis		r3,EepJob@ha		# RetVal=r3
.Llo100:
	e_add16i		r3,r3,EepJob@l		# RetVal=r3 RetVal=r3
	stw		r0,0(r3)		# RetVal=r3
	b		.L666
.L671:
#          }
#          else if(EEP_JOB_ERASE == EepJobComp)
	.d2line		999
.Llo101:
	lis		r3,EepJobComp@ha		# RetVal=r3
.Llo102:
	lwz		r0,EepJobComp@l(r3)		# RetVal=r3
	se_cmpi		r0,1
	bc		0,2,.L673	# ne
#          {
#             EepJob = EEP_JOB_ERASE;
	.d2line		1001
.Llo103:
	diab.li		r0,1
	lis		r3,EepJob@ha		# RetVal=r3
.Llo104:
	e_add16i		r3,r3,EepJob@l		# RetVal=r3 RetVal=r3
	stw		r0,0(r3)		# RetVal=r3
	b		.L666
.L673:
#          }
#          else if(EEP_JOB_COMPARE == EepJobComp)
	.d2line		1003
.Llo105:
	lis		r3,EepJobComp@ha		# RetVal=r3
.Llo106:
	lwz		r0,EepJobComp@l(r3)		# RetVal=r3
	se_cmpi		r0,4
	bc		0,2,.L666	# ne
#          {
#             EepJob = EEP_JOB_COMPARE;
	.d2line		1005
.Llo107:
	diab.li		r0,4
	lis		r3,EepJob@ha		# RetVal=r3
.Llo108:
	e_add16i		r3,r3,EepJob@l		# RetVal=r3 RetVal=r3
	stw		r0,0(r3)		# RetVal=r3
.L666:
#          }
#          else
#          {
#             /* do nothing*/
#          }
#       }
#    }
#    else
#    {
#       /*Nothing to be done*/
#    }
# }
	.d2line		1017
	.d2epilogue_begin
.Llo109:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L984:
	.type		EepInternalReadStatusRegJob,@function
	.size		EepInternalReadStatusRegJob,.-EepInternalReadStatusRegJob
# Number of nodes = 56

# Allocations for EepInternalReadStatusRegJob
#	?a4		RetVal
# FUNC(Std_ReturnType, EEP_CODE) Eep_31_AT25256B_ConsistencyCheck(P2CONST(Eep_31_AT25256B_ConfigType, AUTOMATIC, EEP_CONST) ConfigPtr)
	.section	.text_vle
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\Mentor\\Eep_31_AT25256B\\ssc\\make\\..\\src\\EEP_31_AT25256B.c"
        .d2line         1082,32
#$$ld
.L990:

#$$bf	Eep_31_AT25256B_ConsistencyCheck,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.globl		Eep_31_AT25256B_ConsistencyCheck
	.d2_cfa_start __cie
Eep_31_AT25256B_ConsistencyCheck:
.Llo110:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# ConfigPtr=r4 ConfigPtr=r3
	.d2prologue_end
# {
#    Std_ReturnType retVal;
# 
#    if ((EEP_31_AT25256B_PC_HASH_VALUE == Eep_31_AT25256B_LTtoPCHashValue) &&
	.d2line		1086
	lis		r3,Eep_31_AT25256B_LTtoPCHashValue@ha
.Llo111:
	lwz		r0,Eep_31_AT25256B_LTtoPCHashValue@l(r3)
	e_lis		r3,32969
	e_or2i		r3,6622
	se_cmpl		r0,r3
	bc		0,2,.L690	# ne
.Llo112:
	lwz		r3,40(r4)		# ConfigPtr=r4
	lwz		r0,0(r3)
	e_lis		r3,32969
	e_or2i		r3,6622
	se_cmpl		r0,r3
	bc		0,2,.L690	# ne
	lwz		r3,44(r4)		# ConfigPtr=r4
	lwz		r0,0(r3)
	lis		r3,Eep_31_AT25256B_LTHashValue@ha
	lwz		r3,Eep_31_AT25256B_LTHashValue@l(r3)
	se_cmpl		r0,r3
	bc		0,2,.L690	# ne
#        (EEP_31_AT25256B_PC_HASH_VALUE == *(ConfigPtr->PBtoPCHashValue_P)) &&
#        (Eep_31_AT25256B_LTHashValue == *(ConfigPtr->PBtoLTHashValue_P)))
#    {
#       retVal = E_OK;
	.d2line		1090
.Llo113:
	diab.li		r3,0		# retVal=r3
.Llo116:
	b		.L691
.L690:
#    }
#    else
#    {
#       retVal = E_NOT_OK;
	.d2line		1094
.Llo114:
	diab.li		r3,1		# retVal=r3
.L691:
#    }
#    
#    return retVal;
	.d2line		1097
.Llo115:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		1098
	.d2epilogue_begin
.Llo117:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L991:
	.type		Eep_31_AT25256B_ConsistencyCheck,@function
	.size		Eep_31_AT25256B_ConsistencyCheck,.-Eep_31_AT25256B_ConsistencyCheck
# Number of nodes = 26

# Allocations for Eep_31_AT25256B_ConsistencyCheck
#	?a4		ConfigPtr
#	?a5		retVal
# FUNC(void, EEP_CODE) Eep_31_AT25256B_Init(P2CONST(Eep_31_AT25256B_ConfigType, EEP_VAR, EEP_APPL_CONST) ConfigPtr)
	.align		2
	.section	.text_vle
        .d2line         1042,22
#$$ld
.L1003:

#$$bf	Eep_31_AT25256B_Init,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Eep_31_AT25256B_Init
	.d2_cfa_start __cie
Eep_31_AT25256B_Init:
.Llo118:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr.		r5,r3		# ConfigPtr=?a4 ConfigPtr=r3
	.d2prologue_end
# {
#    EEP_ASSERT_PARAM_CONFIG(NULL_PTR == ConfigPtr)
# 
#    if ((NULL_PTR == ConfigPtr) || (ModuleStatus == MEMIF_BUSY))
	.d2line		1046
	bc		1,2,.L682	# eq
.Llo119:
	lis		r3,ModuleStatus@ha
.Llo120:
	lwz		r0,ModuleStatus@l(r3)
	se_cmpi		r0,2
	bc		1,2,.L682	# eq
#    {
#       /*
#        * Invalid configuration pointer,or Module is in running state, do not initalise
#        */
#    }
#    else if(E_NOT_OK == Eep_31_AT25256B_ConsistencyCheck(ConfigPtr))
	.d2line		1052
	mr		r3,r5		# ConfigPtr=r3 ConfigPtr=r5
	bl		Eep_31_AT25256B_ConsistencyCheck
	rlwinm		r3,r3,0,24,31		# ConfigPtr=r3 ConfigPtr=r3
	se_cmpi		r3,1		# ConfigPtr=r3
	bc		1,2,.L682	# eq
#    {
# 	  /*
#       * Mismatch amongst the CRC32 hash values, do not initalise
#       */
#    }
# 	else
#    {
# 	  EepConfigPtr = ConfigPtr;
	.d2line		1060
	lis		r3,EepConfigPtr@ha		# ConfigPtr=r3
	e_add16i		r3,r3,EepConfigPtr@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r5,0(r3)		# ConfigPtr=r3 ConfigPtr=r5
# 
# 	  /* Set up the Time Out Value */
# 	  EEP_SETEEPJOBTIMEOUT(0)
# 
# 	  /** Set the Init Module and Job status */
# 	  ModuleStatus = MEMIF_IDLE;
	.d2line		1066
	diab.li		r0,1
	lis		r3,ModuleStatus@ha		# ConfigPtr=r3
	e_add16i		r3,r3,ModuleStatus@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3
# 	  JobResult = MEMIF_JOB_OK;
	.d2line		1067
	diab.li		r0,0
	lis		r3,JobResult@ha		# ConfigPtr=r3
	e_add16i		r3,r3,JobResult@l		# ConfigPtr=r3 ConfigPtr=r3
	stw		r0,0(r3)		# ConfigPtr=r3
.L682:
#    }
# }
	.d2line		1069
	.d2epilogue_begin
.Llo121:
	lwz		r0,20(r1)
.Llo122:
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo123:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1004:
	.type		Eep_31_AT25256B_Init,@function
	.size		Eep_31_AT25256B_Init,.-Eep_31_AT25256B_Init
# Number of nodes = 22

# Allocations for Eep_31_AT25256B_Init
#	?a4		ConfigPtr
# FUNC(void, EEP_CODE) Eep_31_AT25256B_SetMode(VAR(MemIf_ModeType, EEP_VAR) Mode)
	.align		2
	.section	.text_vle
        .d2line         1114,22
#$$ld
.L1009:

#$$bf	Eep_31_AT25256B_SetMode,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		Eep_31_AT25256B_SetMode
	.d2_cfa_start __cie
Eep_31_AT25256B_SetMode:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo124:
	stw		r0,20(r1)		# no_error=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# 
#   VAR(boolean, EEP_VAR) no_error = TRUE;
	.d2line		1117
	diab.li		r0,1		# no_error=r0
# 
#   /* Check if Eep module is not initialized */
#   EEP_ASSERT_UNINIT(EEP_31_AT25256B_SETMODE_API_ID)
	.d2line		1120
	lis		r3,ModuleStatus@ha
	lwz		r3,ModuleStatus@l(r3)
	se_cmpi		r3,0
	isel		r0,0,r0,2		# no_error=r0 no_error=r0
.L695:
#   /* Check if Eep module status is busy */
#   /* PRQA S 2983 1*/ /* Rule21.1 : Macro Implementation is generic. Needed check to set development errors */
#   EEP_ASSERT_BUSY(EEP_31_AT25256B_SETMODE_API_ID)
	.d2line		1123
	rlwinm		r0,r0,0,24,31		# no_error=r0 no_error=r0
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L694	# ne
.Llo125:
	lis		r3,ModuleStatus@ha
	lwz		r0,ModuleStatus@l(r3)		# no_error=r0
.Llo126:
	se_cmpi		r0,2		# no_error=r0
	isel		r0,0,r0,2		# no_error=r0 no_error=r0
.L694:
#    /** Only Slow mode is supported by the hardware */
# }
	.d2line		1125
	.d2epilogue_begin
.Llo127:
	lwz		r0,20(r1)		# no_error=r0
	mtspr		lr,r0		# no_error=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1010:
	.type		Eep_31_AT25256B_SetMode,@function
	.size		Eep_31_AT25256B_SetMode,.-Eep_31_AT25256B_SetMode
# Number of nodes = 19

# Allocations for Eep_31_AT25256B_SetMode
#	not allocated	Mode
#	?a4		no_error
# FUNC(Std_ReturnType, EEP_CODE) Eep_31_AT25256B_Read
	.align		2
	.section	.text_vle
        .d2line         1142,32
#$$ld
.L1019:

#$$bf	Eep_31_AT25256B_Read,interprocedural,rasave,nostackparams
	.globl		Eep_31_AT25256B_Read
	.d2_cfa_start __cie
Eep_31_AT25256B_Read:
.Llo128:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo139:
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# no_error=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# EepromAddress=r31 EepromAddress=r3
	mr		r30,r4		# DataBufferPtr=r30 DataBufferPtr=r4
	mr		r29,r5		# Length=r29 Length=r5
	.d2prologue_end
# (
#    VAR(Eep_31_AT25256B_AddressType, EEP_VAR) EepromAddress,
#    P2VAR(uint8, EEP_VAR, EEP_APPL_DATA) DataBufferPtr,
#    VAR( Eep_31_AT25256B_LengthType, EEP_VAR) Length
# )
# {
#    VAR(Std_ReturnType, EEP_VAR) RetVal = E_NOT_OK;
	.d2line		1149
	diab.li		r28,1		# RetVal=r28
#    VAR(boolean, EEP_VAR) no_error = TRUE;
	.d2line		1150
	diab.li		r0,1		# no_error=r0
#    /* Check if Eep module is not initialized */
#    EEP_ASSERT_UNINIT(EEP_31_AT25256B_READ_API_ID)
	.d2line		1152
	lis		r3,ModuleStatus@ha
.Llo129:
	lwz		r3,ModuleStatus@l(r3)
	se_cmpi		r3,0
	isel		r4,0,r0,2		# no_error=r4 no_error=r0
.L700:
#    /* Check if Eep module status is busy */
#    EEP_ASSERT_BUSY(EEP_31_AT25256B_READ_API_ID)
	.d2line		1154
.Llo130:
	rlwinm		r0,r4,0,24,31		# no_error=r0 no_error=r4
.Llo134:
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L701	# ne
	lis		r3,ModuleStatus@ha
	lwz		r0,ModuleStatus@l(r3)		# no_error=r0
	se_cmpi		r0,2		# no_error=r0
	isel		r4,0,r4,2		# no_error=r4 no_error=r4
.L701:
#    /* Check if the DataBuffer us NULL_PTR */
#    EEP_ASSERT_PARAM_DATABUFFADDRESS(EEP_31_AT25256B_READ_API_ID, (NULL_PTR == DataBufferPtr))
	.d2line		1156
	rlwinm		r0,r4,0,24,31		# no_error=r0 no_error=r4
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L702	# ne
	se_cmpi		r30,0		# DataBufferPtr=r30
	isel		r4,0,r4,2		# no_error=r4 no_error=r4
.L702:
#    /* Check if invalid address to read */
#    EEP_ASSERT_PARAM_ADDRESS(EEP_31_AT25256B_READ_API_ID, (EepromAddress >= EEP_SIZE))
	.d2line		1158
	rlwinm		r0,r4,0,24,31		# no_error=r0 no_error=r4
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L703	# ne
	rlwinm		r0,r31,0,16,31		# no_error=r0 EepromAddress=r31
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lhz		r3,24(r3)
	se_cmp		r0,r3		# no_error=r0
	diab.li		r0,0		# no_error=r0
	isel		r4,r4,r0,0		# no_error=r4 no_error=r4 no_error=r0
.L703:
#    /* Check if invalid data length to read */
#    EEP_ASSERT_PARAM_LENGTH(EEP_31_AT25256B_READ_API_ID, (0U == Length) || ((EepromAddress + Length) > EEP_SIZE))
	.d2line		1160
	rlwinm		r0,r4,0,24,31		# no_error=r0 no_error=r4
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L704	# ne
	e_cmphl16i	r29,0		# Length=r29
	bc		1,2,.L707	# eq
	rlwinm		r0,r31,0,16,31		# no_error=r0 EepromAddress=r31
	rlwinm		r5,r29,0,16,31		# Length=r29
	se_add		r0,r5		# no_error=r0 no_error=r0
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lhz		r3,24(r3)
	se_cmp		r0,r3		# no_error=r0
	bc		0,1,.L704	# le
.L707:
	diab.li		r4,0		# no_error=r4
.L704:
#    if (TRUE == no_error)
	.d2line		1161
	rlwinm		r4,r4,0,24,31		# no_error=r4 no_error=r4
	se_cmpi		r4,1		# no_error=r4
	bc		0,2,.L705	# ne
#    {
#       SchM_Enter_Eep_31_AT25256B_EaProcess();   /* Protect current access of read job */
	.d2line		1163
.Llo140:
	bl		SchM_Enter_Eep_31_AT25256B_EaProcess
# 
#       if (MEMIF_IDLE == ModuleStatus)
	.d2line		1165
	lis		r3,ModuleStatus@ha
	lwz		r0,ModuleStatus@l(r3)		# no_error=r0
.Llo141:
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L706	# ne
#       {
#             /* Read start address, data size and destination data buffer. Read job is in process */
#             JobStartAddr = EepConfigPtr->BaseAddress + EepromAddress;
	.d2line		1168
.Llo131:
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lhz		r0,8(r3)		# no_error=r0
.Llo132:
	se_add		r31,r0		# EepromAddress=r31 EepromAddress=r31 EepromAddress=r0
	lis		r3,JobStartAddr@ha
	e_add16i		r3,r3,JobStartAddr@l
	sth		r31,0(r3)		# EepromAddress=r31
#             JobDataLength = Length;
	.d2line		1169
	lis		r3,JobDataLength@ha
	e_add16i		r3,r3,JobDataLength@l
	sth		r29,0(r3)		# Length=r29
#             TargetDataBufferPtr = DataBufferPtr;
	.d2line		1170
	lis		r3,TargetDataBufferPtr@ha
	e_add16i		r3,r3,TargetDataBufferPtr@l
	stw		r30,0(r3)		# DataBufferPtr=r30
#             CurrentDataLength = 0;
	.d2line		1171
	diab.li		r28,0		# RetVal=r28
	lis		r3,CurrentDataLength@ha
	e_add16i		r3,r3,CurrentDataLength@l
	sth		r28,0(r3)		# RetVal=r28
#             /** Set the Internal Mode */
#             EepJob = EEP_JOB_READ;
	.d2line		1173
	diab.li		r0,3		# EepromAddress=r0
	lis		r3,EepJob@ha
	e_add16i		r3,r3,EepJob@l
	stw		r0,0(r3)		# EepromAddress=r0
# 
#             EepJobComp = EEP_JOB_READ;
	.d2line		1175
	lis		r3,EepJobComp@ha
	e_add16i		r3,r3,EepJobComp@l
	stw		r0,0(r3)		# EepromAddress=r0
#             /* Set up the Time Out Value */
#             EEP_SETEEPJOBTIMEOUT(0)
# 
#             /* Eep module changed to busy state*/
#             ModuleStatus = MEMIF_BUSY;
	.d2line		1180
	diab.li		r0,2		# EepromAddress=r0
	lis		r3,ModuleStatus@ha
	e_add16i		r3,r3,ModuleStatus@l
	stw		r0,0(r3)		# EepromAddress=r0
#             /* Erase job changed to pending state*/
#             JobResult = MEMIF_JOB_PENDING;
	.d2line		1182
	lis		r3,JobResult@ha
	e_add16i		r3,r3,JobResult@l
	stw		r0,0(r3)		# EepromAddress=r0
# 
#             /* Set internal job processing status */
#             JobProcessResult = EEP_JOB_OK;
	.d2line		1185
	lis		r3,JobProcessResult@ha
	e_add16i		r3,r3,JobProcessResult@l
	stw		r28,0(r3)		# RetVal=r28
# 
#             RetVal = E_OK;
.L706:
#       }
#       SchM_Exit_Eep_31_AT25256B_EaProcess();   /* Protect current access of read job */
	.d2line		1189
.Llo133:
	bl		SchM_Exit_Eep_31_AT25256B_EaProcess
.L705:
#    }
#    return(RetVal);
	.d2line		1191
.Llo135:
	rlwinm		r3,r28,0,24,31		# RetVal=r28
# }
	.d2line		1192
	.d2epilogue_begin
.Llo136:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo138:
	lwz		r0,36(r1)		# no_error=r0
	mtspr		lr,r0		# no_error=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo137:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1020:
	.type		Eep_31_AT25256B_Read,@function
	.size		Eep_31_AT25256B_Read,.-Eep_31_AT25256B_Read
# Number of nodes = 117

# Allocations for Eep_31_AT25256B_Read
#	?a4		EepromAddress
#	?a5		DataBufferPtr
#	?a6		Length
#	?a7		RetVal
#	?a8		no_error
# FUNC(Std_ReturnType, EEP_CODE) Eep_31_AT25256B_Write
	.align		2
	.section	.text_vle
        .d2line         1210,32
#$$ld
.L1032:

#$$bf	Eep_31_AT25256B_Write,interprocedural,rasave,nostackparams
	.globl		Eep_31_AT25256B_Write
	.d2_cfa_start __cie
Eep_31_AT25256B_Write:
.Llo142:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo153:
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# no_error=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# EepromAddress=r31 EepromAddress=r3
	mr		r30,r4		# DataBufferPtr=r30 DataBufferPtr=r4
	mr		r29,r5		# Length=r29 Length=r5
	.d2prologue_end
# (
#    VAR( Eep_31_AT25256B_AddressType, EEP_VAR) EepromAddress,
#    P2CONST(uint8, EEP_VAR, EEP_APPL_CONST) DataBufferPtr,
#    VAR( Eep_31_AT25256B_LengthType, EEP_VAR) Length
# )
# {
#    VAR(Std_ReturnType, EEP_VAR) RetVal = E_NOT_OK;
	.d2line		1217
	diab.li		r28,1		# RetVal=r28
# 
#    VAR(boolean, EEP_VAR) no_error = TRUE;
	.d2line		1219
	diab.li		r0,1		# no_error=r0
#    /* Check if Eep module is not initialized */
#    EEP_ASSERT_UNINIT(EEP_31_AT25256B_WRITE_API_ID)
	.d2line		1221
	lis		r3,ModuleStatus@ha
.Llo143:
	lwz		r3,ModuleStatus@l(r3)
	se_cmpi		r3,0
	isel		r4,0,r0,2		# no_error=r4 no_error=r0
.L717:
#    /* Check if Eep module status is busy */
#    EEP_ASSERT_BUSY(EEP_31_AT25256B_WRITE_API_ID)
	.d2line		1223
.Llo144:
	rlwinm		r0,r4,0,24,31		# no_error=r0 no_error=r4
.Llo148:
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L718	# ne
	lis		r3,ModuleStatus@ha
	lwz		r0,ModuleStatus@l(r3)		# no_error=r0
	se_cmpi		r0,2		# no_error=r0
	isel		r4,0,r4,2		# no_error=r4 no_error=r4
.L718:
#    /* Check if invalid data length to write */
#    EEP_ASSERT_PARAM_DATABUFFADDRESS(EEP_31_AT25256B_WRITE_API_ID, (NULL_PTR == DataBufferPtr))
	.d2line		1225
	rlwinm		r0,r4,0,24,31		# no_error=r0 no_error=r4
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L719	# ne
	se_cmpi		r30,0		# DataBufferPtr=r30
	isel		r4,0,r4,2		# no_error=r4 no_error=r4
.L719:
#    /* Check if invalid address to write */
#    EEP_ASSERT_PARAM_ADDRESS(EEP_31_AT25256B_WRITE_API_ID, (EepromAddress >= EEP_SIZE))
	.d2line		1227
	rlwinm		r0,r4,0,24,31		# no_error=r0 no_error=r4
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L720	# ne
	rlwinm		r0,r31,0,16,31		# no_error=r0 EepromAddress=r31
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lhz		r3,24(r3)
	se_cmp		r0,r3		# no_error=r0
	diab.li		r0,0		# no_error=r0
	isel		r4,r4,r0,0		# no_error=r4 no_error=r4 no_error=r0
.L720:
#    /* Check if data buffer pointer is null */
#    EEP_ASSERT_PARAM_LENGTH(EEP_31_AT25256B_WRITE_API_ID, (0U == Length) || ((EepromAddress + Length) > EEP_SIZE))
	.d2line		1229
	rlwinm		r0,r4,0,24,31		# no_error=r0 no_error=r4
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L721	# ne
	e_cmphl16i	r29,0		# Length=r29
	bc		1,2,.L724	# eq
	rlwinm		r0,r31,0,16,31		# no_error=r0 EepromAddress=r31
	rlwinm		r5,r29,0,16,31		# Length=r29
	se_add		r0,r5		# no_error=r0 no_error=r0
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lhz		r3,24(r3)
	se_cmp		r0,r3		# no_error=r0
	bc		0,1,.L721	# le
.L724:
	diab.li		r4,0		# no_error=r4
.L721:
# 
#    if (TRUE == no_error)
	.d2line		1231
	rlwinm		r4,r4,0,24,31		# no_error=r4 no_error=r4
	se_cmpi		r4,1		# no_error=r4
	bc		0,2,.L722	# ne
#    {
#       SchM_Enter_Eep_31_AT25256B_EaProcess();   /* Protect current access of write job */
	.d2line		1233
.Llo154:
	bl		SchM_Enter_Eep_31_AT25256B_EaProcess
# 
#       if (MEMIF_IDLE == ModuleStatus)
	.d2line		1235
	lis		r3,ModuleStatus@ha
	lwz		r0,ModuleStatus@l(r3)		# no_error=r0
.Llo155:
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L723	# ne
#       {
#             /* Write start address, data size and source data buffer. Write job is in process */
#             JobStartAddr = EepConfigPtr->BaseAddress + EepromAddress;
	.d2line		1238
.Llo145:
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lhz		r0,8(r3)		# no_error=r0
.Llo146:
	se_add		r31,r0		# EepromAddress=r31 EepromAddress=r31 EepromAddress=r0
	lis		r3,JobStartAddr@ha
	e_add16i		r3,r3,JobStartAddr@l
	sth		r31,0(r3)		# EepromAddress=r31
#             JobDataLength = Length;
	.d2line		1239
	lis		r3,JobDataLength@ha
	e_add16i		r3,r3,JobDataLength@l
	sth		r29,0(r3)		# Length=r29
#             TotalDataLength = Length;
	.d2line		1240
	lis		r3,TotalDataLength@ha
	e_add16i		r3,r3,TotalDataLength@l
	sth		r29,0(r3)		# Length=r29
#             ConstUpperLayerDataBufferPtr = DataBufferPtr;
	.d2line		1241
	lis		r3,ConstUpperLayerDataBufferPtr@ha
	e_add16i		r3,r3,ConstUpperLayerDataBufferPtr@l
	stw		r30,0(r3)		# DataBufferPtr=r30
#             CurrentDataLength = 0;
	.d2line		1242
	diab.li		r28,0		# RetVal=r28
	lis		r3,CurrentDataLength@ha
	e_add16i		r3,r3,CurrentDataLength@l
	sth		r28,0(r3)		# RetVal=r28
#             /** Set the internal state */
#             EepJob = EEP_JOB_WRITE;
	.d2line		1244
	diab.li		r0,2		# EepromAddress=r0
	lis		r3,EepJob@ha
	e_add16i		r3,r3,EepJob@l
	stw		r0,0(r3)		# EepromAddress=r0
# 
#             EepJobComp = EEP_JOB_WRITE;
	.d2line		1246
	lis		r3,EepJobComp@ha
	e_add16i		r3,r3,EepJobComp@l
	stw		r0,0(r3)		# EepromAddress=r0
#             /* ReSet up the Time Out Value */
#             EEP_SETEEPJOBTIMEOUT(0)
# 
#             /* Eep module changed to busy state*/
#             ModuleStatus = MEMIF_BUSY;
	.d2line		1251
	lis		r3,ModuleStatus@ha
	e_add16i		r3,r3,ModuleStatus@l
	stw		r0,0(r3)		# EepromAddress=r0
#             /* Erase job changed to pending state*/
#             JobResult = MEMIF_JOB_PENDING;
	.d2line		1253
	lis		r3,JobResult@ha
	e_add16i		r3,r3,JobResult@l
	stw		r0,0(r3)		# EepromAddress=r0
# 
#             /* Set internal job processing status */
#             JobProcessResult = EEP_JOB_OK;
	.d2line		1256
	lis		r3,JobProcessResult@ha
	e_add16i		r3,r3,JobProcessResult@l
	stw		r28,0(r3)		# RetVal=r28
# 
#             /* Set Read status reg internal job processing status */
#             JobStatusRegProcessResult = EEP_JOB_OK;
	.d2line		1259
	lis		r3,JobStatusRegProcessResult@ha
	e_add16i		r3,r3,JobStatusRegProcessResult@l
	stw		r28,0(r3)		# RetVal=r28
# 
# #if (EEP_31_AT25256B_WRITE_CYCLE_REDUCTION == STD_ON)
#             /* Set read done variable to not ok to process next read
#              * before writing to reduce write cycle */
#             WriteCycleReductionReadFlag = WriteCycleReductionReadNotComplete;
# #endif /* end of EepWriteCycleReduction */
# 
#          RetVal = E_OK;
.L723:
#       }
#       SchM_Exit_Eep_31_AT25256B_EaProcess();   /* Protect current access of write job */
	.d2line		1269
.Llo147:
	bl		SchM_Exit_Eep_31_AT25256B_EaProcess
.L722:
#    }
#    return(RetVal);
	.d2line		1271
.Llo149:
	rlwinm		r3,r28,0,24,31		# RetVal=r28
# }
	.d2line		1272
	.d2epilogue_begin
.Llo150:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo152:
	lwz		r0,36(r1)		# no_error=r0
	mtspr		lr,r0		# no_error=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo151:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1033:
	.type		Eep_31_AT25256B_Write,@function
	.size		Eep_31_AT25256B_Write,.-Eep_31_AT25256B_Write
# Number of nodes = 123

# Allocations for Eep_31_AT25256B_Write
#	?a4		EepromAddress
#	?a5		DataBufferPtr
#	?a6		Length
#	?a7		RetVal
#	?a8		no_error
# FUNC(Std_ReturnType, EEP_CODE) Eep_31_AT25256B_Erase
	.align		2
	.section	.text_vle
        .d2line         1289,32
#$$ld
.L1046:

#$$bf	Eep_31_AT25256B_Erase,interprocedural,rasave,nostackparams
	.globl		Eep_31_AT25256B_Erase
	.d2_cfa_start __cie
Eep_31_AT25256B_Erase:
.Llo156:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo165:
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# no_error=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# EepromAddress=r31 EepromAddress=r3
	mr		r30,r4		# Length=r30 Length=r4
	.d2prologue_end
# (
#    VAR(Eep_31_AT25256B_AddressType, EEP_VAR) EepromAddress,
#    VAR(Eep_31_AT25256B_LengthType, EEP_VAR) Length
# )
# {
#    VAR(Std_ReturnType, EEP_VAR) RetVal = E_NOT_OK;
	.d2line		1295
	diab.li		r29,1		# RetVal=r29
#    VAR(boolean, EEP_VAR) no_error = TRUE;
	.d2line		1296
	diab.li		r0,1		# no_error=r0
#    /* Check if Eep module is not initialized */
#    EEP_ASSERT_UNINIT(EEP_31_AT25256B_ERASE_API_ID)
	.d2line		1298
	lis		r3,ModuleStatus@ha
.Llo157:
	lwz		r3,ModuleStatus@l(r3)
	se_cmpi		r3,0
	isel		r4,0,r0,2		# no_error=r4 no_error=r0
.L734:
#    /* Check if Eep module status is busy */
#    EEP_ASSERT_BUSY(EEP_31_AT25256B_ERASE_API_ID)
	.d2line		1300
.Llo158:
	rlwinm		r0,r4,0,24,31		# no_error=r0 no_error=r4
.Llo162:
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L735	# ne
	lis		r3,ModuleStatus@ha
	lwz		r0,ModuleStatus@l(r3)		# no_error=r0
	se_cmpi		r0,2		# no_error=r0
	isel		r4,0,r4,2		# no_error=r4 no_error=r4
.L735:
#    /* Check if invalid address to erase */
#    EEP_ASSERT_PARAM_ADDRESS(EEP_31_AT25256B_ERASE_API_ID, (EepromAddress >= EEP_SIZE))
	.d2line		1302
	rlwinm		r0,r4,0,24,31		# no_error=r0 no_error=r4
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L736	# ne
	rlwinm		r0,r31,0,16,31		# no_error=r0 EepromAddress=r31
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lhz		r3,24(r3)
	se_cmp		r0,r3		# no_error=r0
	diab.li		r0,0		# no_error=r0
	isel		r4,r4,r0,0		# no_error=r4 no_error=r4 no_error=r0
.L736:
#    /* Check if invalid data length to erase */
#    EEP_ASSERT_PARAM_LENGTH(EEP_31_AT25256B_ERASE_API_ID, (0U == Length) || ((EepromAddress + Length) > EEP_SIZE))
	.d2line		1304
	rlwinm		r0,r4,0,24,31		# no_error=r0 no_error=r4
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L737	# ne
	e_cmphl16i	r30,0		# Length=r30
	bc		1,2,.L740	# eq
	rlwinm		r0,r31,0,16,31		# no_error=r0 EepromAddress=r31
	rlwinm		r3,r30,0,16,31		# Length=r30
	se_add		r0,r3		# no_error=r0 no_error=r0
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lhz		r3,24(r3)
	se_cmp		r0,r3		# no_error=r0
	bc		0,1,.L737	# le
.L740:
	diab.li		r4,0		# no_error=r4
.L737:
# 
#    if (TRUE == no_error)
	.d2line		1306
	rlwinm		r4,r4,0,24,31		# no_error=r4 no_error=r4
	se_cmpi		r4,1		# no_error=r4
	bc		0,2,.L738	# ne
#    {
#       SchM_Enter_Eep_31_AT25256B_EaProcess();   /* Protect current access of erase job */
	.d2line		1308
.Llo166:
	bl		SchM_Enter_Eep_31_AT25256B_EaProcess
# 
#       if (MEMIF_IDLE == ModuleStatus)
	.d2line		1310
	lis		r3,ModuleStatus@ha
	lwz		r0,ModuleStatus@l(r3)		# no_error=r0
.Llo167:
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L739	# ne
#       {
#             /* Erase start address and data size. Erase job is in process*/
#             JobStartAddr = EepConfigPtr->BaseAddress + EepromAddress;
	.d2line		1313
.Llo159:
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lhz		r0,8(r3)		# no_error=r0
.Llo160:
	se_add		r31,r0		# EepromAddress=r31 EepromAddress=r31 EepromAddress=r0
	lis		r3,JobStartAddr@ha
	e_add16i		r3,r3,JobStartAddr@l
	sth		r31,0(r3)		# EepromAddress=r31
#             JobDataLength = Length;
	.d2line		1314
	lis		r3,JobDataLength@ha
	e_add16i		r3,r3,JobDataLength@l
	sth		r30,0(r3)		# Length=r30
#             CurrentDataLength = 0;
	.d2line		1315
	diab.li		r29,0		# RetVal=r29
	lis		r3,CurrentDataLength@ha
	e_add16i		r3,r3,CurrentDataLength@l
	sth		r29,0(r3)		# RetVal=r29
#             TotalDataLength = Length;
	.d2line		1316
	lis		r3,TotalDataLength@ha
	e_add16i		r3,r3,TotalDataLength@l
	sth		r30,0(r3)		# Length=r30
#             ConstUpperLayerDataBufferPtr = &ConstEraseData[0];
	.d2line		1317
	lis		r3,ConstEraseData@ha
	e_add16i		r3,r3,ConstEraseData@l
	lis		r4,ConstUpperLayerDataBufferPtr@ha		# no_error=r4
.Llo168:
	e_add16i		r4,r4,ConstUpperLayerDataBufferPtr@l		# no_error=r4 no_error=r4
	stw		r3,0(r4)		# no_error=r4
#             /** Set the internal state */
#             EepJob = EEP_JOB_ERASE;
	.d2line		1319
	diab.li		r0,1		# EepromAddress=r0
	lis		r3,EepJob@ha
	e_add16i		r3,r3,EepJob@l
	stw		r0,0(r3)		# EepromAddress=r0
# 
#             EepJobComp = EEP_JOB_ERASE;
	.d2line		1321
	lis		r3,EepJobComp@ha
	e_add16i		r3,r3,EepJobComp@l
	stw		r0,0(r3)		# EepromAddress=r0
#             /* ReSet up the Time Out Value */
#             EEP_SETEEPJOBTIMEOUT(0)
# 
#             /* Eep module changed to busy state*/
#             ModuleStatus = MEMIF_BUSY;
	.d2line		1326
	diab.li		r0,2		# EepromAddress=r0
	lis		r3,ModuleStatus@ha
	e_add16i		r3,r3,ModuleStatus@l
	stw		r0,0(r3)		# EepromAddress=r0
#             /* Erase job changed to pending state*/
#             JobResult = MEMIF_JOB_PENDING;
	.d2line		1328
	lis		r3,JobResult@ha
	e_add16i		r3,r3,JobResult@l
	stw		r0,0(r3)		# EepromAddress=r0
# 
#             /* Set internal job status */
#             JobProcessResult = EEP_JOB_OK;
	.d2line		1331
	lis		r3,JobProcessResult@ha
	e_add16i		r3,r3,JobProcessResult@l
	stw		r29,0(r3)		# RetVal=r29
# 
#             RetVal = E_OK;
.L739:
#       }
#       SchM_Exit_Eep_31_AT25256B_EaProcess();  /* Protect current access of erase job */
	.d2line		1335
.Llo161:
	bl		SchM_Exit_Eep_31_AT25256B_EaProcess
.L738:
#    }
#    return(RetVal);
	.d2line		1337
.Llo163:
	rlwinm		r3,r29,0,24,31		# RetVal=r29
# }
	.d2line		1338
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo164:
	lwz		r0,36(r1)		# no_error=r0
	mtspr		lr,r0		# no_error=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1047:
	.type		Eep_31_AT25256B_Erase,@function
	.size		Eep_31_AT25256B_Erase,.-Eep_31_AT25256B_Erase
# Number of nodes = 111

# Allocations for Eep_31_AT25256B_Erase
#	?a4		EepromAddress
#	?a5		Length
#	?a6		RetVal
#	?a7		no_error
# FUNC(Std_ReturnType, EEP_CODE) Eep_31_AT25256B_Compare
	.align		2
	.section	.text_vle
        .d2line         1356,32
#$$ld
.L1057:

#$$bf	Eep_31_AT25256B_Compare,interprocedural,rasave,nostackparams
	.globl		Eep_31_AT25256B_Compare
	.d2_cfa_start __cie
Eep_31_AT25256B_Compare:
.Llo169:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo180:
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# no_error=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# EepromAddress=r31 EepromAddress=r3
	mr		r30,r4		# DataBufferPtr=r30 DataBufferPtr=r4
	mr		r29,r5		# Length=r29 Length=r5
	.d2prologue_end
# (
#    VAR(Eep_31_AT25256B_AddressType, EEP_VAR) EepromAddress,
#    P2CONST(uint8, EEP_VAR, EEP_APPL_CONST) DataBufferPtr,
#    VAR(Eep_31_AT25256B_LengthType, EEP_VAR) Length
# )
# {
#    VAR(Std_ReturnType, EEP_VAR) RetVal = E_NOT_OK;
	.d2line		1363
	diab.li		r28,1		# RetVal=r28
#    VAR(boolean, EEP_VAR) no_error = TRUE;
	.d2line		1364
	diab.li		r0,1		# no_error=r0
#    /* Check if Eep module is not initialized */
#    EEP_ASSERT_UNINIT(EEP_31_AT25256B_COMPARE_API_ID)
	.d2line		1366
	lis		r3,ModuleStatus@ha
.Llo170:
	lwz		r3,ModuleStatus@l(r3)
	se_cmpi		r3,0
	isel		r4,0,r0,2		# no_error=r4 no_error=r0
.L749:
#    /* Check if Eep module status is busy */
#    EEP_ASSERT_BUSY(EEP_31_AT25256B_COMPARE_API_ID)
	.d2line		1368
.Llo171:
	rlwinm		r0,r4,0,24,31		# no_error=r0 no_error=r4
.Llo175:
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L750	# ne
	lis		r3,ModuleStatus@ha
	lwz		r0,ModuleStatus@l(r3)		# no_error=r0
	se_cmpi		r0,2		# no_error=r0
	isel		r4,0,r4,2		# no_error=r4 no_error=r4
.L750:
#    /* Check if data buffer pointer is null */
#    EEP_ASSERT_PARAM_DATABUFFADDRESS(EEP_31_AT25256B_COMPARE_API_ID, (NULL_PTR == DataBufferPtr))
	.d2line		1370
	rlwinm		r0,r4,0,24,31		# no_error=r0 no_error=r4
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L751	# ne
	se_cmpi		r30,0		# DataBufferPtr=r30
	isel		r4,0,r4,2		# no_error=r4 no_error=r4
.L751:
#    /* Check if invalid address to compare */
#    EEP_ASSERT_PARAM_ADDRESS(EEP_31_AT25256B_COMPARE_API_ID, (EepromAddress >= EEP_SIZE))
	.d2line		1372
	rlwinm		r0,r4,0,24,31		# no_error=r0 no_error=r4
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L752	# ne
	rlwinm		r0,r31,0,16,31		# no_error=r0 EepromAddress=r31
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lhz		r3,24(r3)
	se_cmp		r0,r3		# no_error=r0
	diab.li		r0,0		# no_error=r0
	isel		r4,r4,r0,0		# no_error=r4 no_error=r4 no_error=r0
.L752:
#    /* Check if invalid data length to compare */
#    EEP_ASSERT_PARAM_LENGTH(EEP_31_AT25256B_COMPARE_API_ID, (0U == Length) || ((EepromAddress + Length) > EEP_SIZE))
	.d2line		1374
	rlwinm		r0,r4,0,24,31		# no_error=r0 no_error=r4
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L753	# ne
	e_cmphl16i	r29,0		# Length=r29
	bc		1,2,.L756	# eq
	rlwinm		r0,r31,0,16,31		# no_error=r0 EepromAddress=r31
	rlwinm		r5,r29,0,16,31		# Length=r29
	se_add		r0,r5		# no_error=r0 no_error=r0
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lhz		r3,24(r3)
	se_cmp		r0,r3		# no_error=r0
	bc		0,1,.L753	# le
.L756:
	diab.li		r4,0		# no_error=r4
.L753:
#    if (TRUE == no_error)
	.d2line		1375
	rlwinm		r4,r4,0,24,31		# no_error=r4 no_error=r4
	se_cmpi		r4,1		# no_error=r4
	bc		0,2,.L754	# ne
#    {
#       SchM_Enter_Eep_31_AT25256B_EaProcess();   /* Protect current access of compare job */
	.d2line		1377
.Llo181:
	bl		SchM_Enter_Eep_31_AT25256B_EaProcess
# 
#       if (MEMIF_IDLE == ModuleStatus)
	.d2line		1379
	lis		r3,ModuleStatus@ha
	lwz		r0,ModuleStatus@l(r3)		# no_error=r0
.Llo182:
	se_cmpi		r0,1		# no_error=r0
	bc		0,2,.L755	# ne
#       {
#             /* Compare start address, data size and source data buffer. Compare job is in process */
#             JobStartAddr = EepConfigPtr->BaseAddress + EepromAddress;
	.d2line		1382
.Llo172:
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lhz		r0,8(r3)		# no_error=r0
.Llo173:
	se_add		r31,r0		# EepromAddress=r31 EepromAddress=r31 EepromAddress=r0
	lis		r3,JobStartAddr@ha
	e_add16i		r3,r3,JobStartAddr@l
	sth		r31,0(r3)		# EepromAddress=r31
#             JobDataLength = Length;
	.d2line		1383
	lis		r3,JobDataLength@ha
	e_add16i		r3,r3,JobDataLength@l
	sth		r29,0(r3)		# Length=r29
#             TotalDataLength = Length;
	.d2line		1384
	lis		r3,TotalDataLength@ha
	e_add16i		r3,r3,TotalDataLength@l
	sth		r29,0(r3)		# Length=r29
#             TargetDataBufferPtr = Eep_LcfgConfig.Eep_TargetLocalDataBufferPtr;
	.d2line		1385
	lis		r3,Eep_LcfgConfig@ha
	lwz		r0,Eep_LcfgConfig@l(r3)		# EepromAddress=r0
	lis		r3,TargetDataBufferPtr@ha
	e_add16i		r3,r3,TargetDataBufferPtr@l
	stw		r0,0(r3)		# EepromAddress=r0
#             ConstUpperLayerDataBufferPtr = DataBufferPtr;
	.d2line		1386
	lis		r3,ConstUpperLayerDataBufferPtr@ha
	e_add16i		r3,r3,ConstUpperLayerDataBufferPtr@l
	stw		r30,0(r3)		# DataBufferPtr=r30
#             CurrentDataLength = 0;
	.d2line		1387
	diab.li		r28,0		# RetVal=r28
	lis		r3,CurrentDataLength@ha
	e_add16i		r3,r3,CurrentDataLength@l
	sth		r28,0(r3)		# RetVal=r28
#             /** Set the Internal State */
#             EepJob = EEP_JOB_COMPARE;
	.d2line		1389
	diab.li		r0,4		# EepromAddress=r0
	lis		r3,EepJob@ha
	e_add16i		r3,r3,EepJob@l
	stw		r0,0(r3)		# EepromAddress=r0
# 
#             EepJobComp = EEP_JOB_COMPARE;
	.d2line		1391
	lis		r3,EepJobComp@ha
	e_add16i		r3,r3,EepJobComp@l
	stw		r0,0(r3)		# EepromAddress=r0
#             /* Set up the Time Out Value */
#             EEP_SETEEPJOBTIMEOUT(0)
# 
#             /* Eep module changed to busy state*/
#             ModuleStatus = MEMIF_BUSY;
	.d2line		1396
	diab.li		r0,2		# EepromAddress=r0
	lis		r3,ModuleStatus@ha
	e_add16i		r3,r3,ModuleStatus@l
	stw		r0,0(r3)		# EepromAddress=r0
#             /* Erase job changed to pending state*/
#             JobResult = MEMIF_JOB_PENDING;
	.d2line		1398
	lis		r3,JobResult@ha
	e_add16i		r3,r3,JobResult@l
	stw		r0,0(r3)		# EepromAddress=r0
# 
#             /* Set internal job status */
#             JobProcessResult = EEP_JOB_OK;
	.d2line		1401
	lis		r3,JobProcessResult@ha
	e_add16i		r3,r3,JobProcessResult@l
	stw		r28,0(r3)		# RetVal=r28
# 
#             RetVal = E_OK;
.L755:
#       }
#       SchM_Exit_Eep_31_AT25256B_EaProcess();   /* Protect current access of compare job */
	.d2line		1405
.Llo174:
	bl		SchM_Exit_Eep_31_AT25256B_EaProcess
.L754:
#    }
#    return(RetVal);
	.d2line		1407
.Llo176:
	rlwinm		r3,r28,0,24,31		# RetVal=r28
# }
	.d2line		1408
	.d2epilogue_begin
.Llo177:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo179:
	lwz		r0,36(r1)		# no_error=r0
	mtspr		lr,r0		# no_error=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo178:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1058:
	.type		Eep_31_AT25256B_Compare,@function
	.size		Eep_31_AT25256B_Compare,.-Eep_31_AT25256B_Compare
# Number of nodes = 125

# Allocations for Eep_31_AT25256B_Compare
#	?a4		EepromAddress
#	?a5		DataBufferPtr
#	?a6		Length
#	?a7		RetVal
#	?a8		no_error
# FUNC(void, EEP_CODE) Eep_31_AT25256B_Cancel(void)
	.align		2
	.section	.text_vle
        .d2line         1423,22
#$$ld
.L1069:

#$$bf	Eep_31_AT25256B_Cancel,interprocedural,rasave,nostackparams
	.globl		Eep_31_AT25256B_Cancel
	.d2_cfa_start __cie
Eep_31_AT25256B_Cancel:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    SchM_Enter_Eep_31_AT25256B_EaProcess();  /* Protect concurrent access of Eep_Cancel */
	.d2line		1425
	bl		SchM_Enter_Eep_31_AT25256B_EaProcess
#    if (MEMIF_JOB_PENDING == JobResult)
	.d2line		1426
	lis		r3,JobResult@ha
	lwz		r0,JobResult@l(r3)
	se_cmpi		r0,2
	bc		0,2,.L766	# ne
#    {
#       /* H/W cancel job */
#       if ((EepJobComp == EEP_JOB_READ) || (EepJobComp == EEP_JOB_COMPARE))
	.d2line		1429
	lis		r3,EepJobComp@ha
	lwz		r0,EepJobComp@l(r3)
	se_cmpi		r0,3
	bc		1,2,.L772	# eq
	lis		r3,EepJobComp@ha
	lwz		r0,EepJobComp@l(r3)
	se_cmpi		r0,4
	bc		0,2,.L767	# ne
.L772:
#       {
#          EepHw_Cancel(EEP_READ);
	.d2line		1431
	diab.li		r3,3
	bl		EepHw_Cancel
	b		.L768
.L767:
#       }
#       else if ((EepJobComp == EEP_JOB_WRITE) || (EepJobComp == EEP_JOB_ERASE))
	.d2line		1433
	lis		r3,EepJobComp@ha
	lwz		r0,EepJobComp@l(r3)
	se_cmpi		r0,2
	bc		1,2,.L773	# eq
	lis		r3,EepJobComp@ha
	lwz		r0,EepJobComp@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L768	# ne
.L773:
#       {
#          EepHw_Cancel(EEP_WRITE);
	.d2line		1435
	diab.li		r3,2
	bl		EepHw_Cancel
.L768:
#       }
#       else
#       {
#          /* do nothing */
#       }
# 
#       /* Set up the Time Out Value */
#       EEP_SETEEPJOBTIMEOUT(0)
# 
#       /* Set internal Eep job type to EEP_JOB_DONE since current job is finished  */
#       EepJob = EEP_JOB_DONE;
	.d2line		1446
	diab.li		r0,0
	lis		r3,EepJob@ha
	e_add16i		r3,r3,EepJob@l
	stw		r0,0(r3)
# 
#       /* Set internal Eep job type to EEP_JOB_DONE since current job is finished  */
#       EepJobComp = EEP_JOB_DONE;
	.d2line		1449
	lis		r3,EepJobComp@ha
	e_add16i		r3,r3,EepJobComp@l
	stw		r0,0(r3)
# 
#       /* Set the EEP module status MEMIF_IDLE */
#       ModuleStatus = MEMIF_IDLE;
	.d2line		1452
	diab.li		r0,1
	lis		r3,ModuleStatus@ha
	e_add16i		r3,r3,ModuleStatus@l
	stw		r0,0(r3)
# 
#       /* Set the EEP Job result MEMIF_JOB_CANCELED */
#       JobResult = MEMIF_JOB_CANCELED;
	.d2line		1455
	diab.li		r0,3
	lis		r3,JobResult@ha
	e_add16i		r3,r3,JobResult@l
	stw		r0,0(r3)
# 
#       /* Notify upper layer that job has cancelled */
#       if (NULL_PTR != EepConfigPtr->JobErrorNotification)
	.d2line		1458
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lwz		r0,4(r3)
	se_cmpi		r0,0
	bc		1,2,.L766	# eq
#       {
#          EepConfigPtr->JobErrorNotification();
	.d2line		1460
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lwz		r0,4(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L766:
#       }
#    }
#    SchM_Exit_Eep_31_AT25256B_EaProcess();
	.d2line		1463
	bl		SchM_Exit_Eep_31_AT25256B_EaProcess
# }
	.d2line		1464
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
	.type		Eep_31_AT25256B_Cancel,@function
	.size		Eep_31_AT25256B_Cancel,.-Eep_31_AT25256B_Cancel
# Number of nodes = 52

# Allocations for Eep_31_AT25256B_Cancel
# FUNC(MemIf_StatusType, EEP_CODE) Eep_31_AT25256B_GetStatus(void)
	.align		2
	.section	.text_vle
        .d2line         1481,34
#$$ld
.L1074:

#$$bf	Eep_31_AT25256B_GetStatus,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		Eep_31_AT25256B_GetStatus
	.d2_cfa_start __cie
Eep_31_AT25256B_GetStatus:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    return(ModuleStatus);
	.d2line		1483
	lis		r3,ModuleStatus@ha
	lwz		r3,ModuleStatus@l(r3)
# }
	.d2line		1484
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1075:
	.type		Eep_31_AT25256B_GetStatus,@function
	.size		Eep_31_AT25256B_GetStatus,.-Eep_31_AT25256B_GetStatus
# Number of nodes = 2

# Allocations for Eep_31_AT25256B_GetStatus
# FUNC(MemIf_JobResultType, EEP_CODE) Eep_31_AT25256B_GetJobResult(void)
	.align		2
	.section	.text_vle
        .d2line         1504,37
#$$ld
.L1081:

#$$bf	Eep_31_AT25256B_GetJobResult,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		Eep_31_AT25256B_GetJobResult
	.d2_cfa_start __cie
Eep_31_AT25256B_GetJobResult:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    return(JobResult);
	.d2line		1506
	lis		r3,JobResult@ha
	lwz		r3,JobResult@l(r3)
# }
	.d2line		1507
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1082:
	.type		Eep_31_AT25256B_GetJobResult,@function
	.size		Eep_31_AT25256B_GetJobResult,.-Eep_31_AT25256B_GetJobResult
# Number of nodes = 2

# Allocations for Eep_31_AT25256B_GetJobResult
# FUNC(void, EEP_CODE) Eep_31_AT25256B_MainFunction(void)
	.align		2
	.section	.text_vle
        .d2line         1553,22
#$$ld
.L1089:

#$$bf	Eep_31_AT25256B_MainFunction,interprocedural,rasave,nostackparams
	.globl		Eep_31_AT25256B_MainFunction
	.d2_cfa_start __cie
Eep_31_AT25256B_MainFunction:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo183:
	stw		r0,20(r1)		# no_error=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean, EEP_VAR) no_error = TRUE;
	.d2line		1555
	diab.li		r0,1		# no_error=r0
# 
#    /** Check if the module is uninitialised */
#    EEP_ASSERT_UNINIT(EEP_31_AT25256B_MAINFUNCTION_API_ID)
	.d2line		1558
	lis		r3,ModuleStatus@ha
	lwz		r3,ModuleStatus@l(r3)
	se_cmpi		r3,0
	isel		r0,0,r0,2		# no_error=r0 no_error=r0
.L782:
# 
# #if (EEP_31_AT25256B_DEV_ERROR_DETECT == STD_ON)
#    /*Eep Job Time Out*/
#    if (0 < EepJobTimeOut)
#    {
#       if (0 == (EepJobTimeOut - 1))
#       {
#          /*Timeout occurred*/
#          EepJobTimeOut = 0;
#          EEP_ASSERT_TIMEOUTERROR(EEP_31_AT25256B_MAINFUNCTION_API_ID)
#       }
#       else
#       {
#          EepJobTimeOut--;
#       }
#    }
# #endif
#    if (FALSE != no_error)
	.d2line		1576
	rlwinm		r0,r0,0,24,31		# no_error=r0 no_error=r0
	se_cmpi		r0,0		# no_error=r0
	bc		1,2,.L781	# eq
#    {
#       SchM_Enter_Eep_31_AT25256B_EaMainFunctionArea(); /* Protect concurrent access of Eep_MainFunction */
	.d2line		1578
.Llo184:
	bl		SchM_Enter_Eep_31_AT25256B_EaMainFunctionArea
#       /* Chekc if any read/write/erase/compare job is pending */
#       if (MEMIF_BUSY == ModuleStatus)
	.d2line		1580
	lis		r3,ModuleStatus@ha
	lwz		r0,ModuleStatus@l(r3)		# no_error=r0
.Llo185:
	se_cmpi		r0,2		# no_error=r0
	bc		0,2,.L784	# ne
#       {
#          /* PRQA S 2016 ++
#           * Do nothing in default clause */
#          switch(EepJob)
	.d2line		1584
.Llo186:
	lis		r3,EepJob@ha
	lwz		r6,EepJob@l(r3)
	se_cmpi		r6,3
	bc		1,1,.L1094	# gt
	bc		1,2,.L785	# eq
	se_cmpi		r6,1
	bc		1,2,.L789	# eq
	se_cmpi		r6,2
	bc		1,2,.L787	# eq
	b		.L784
.L1094:
	se_cmpi		r6,4
	bc		1,2,.L790	# eq
	se_cmpi		r6,5
	bc		1,2,.L788	# eq
	b		.L784
.L785:
#          {
#          case EEP_JOB_READ:
#             /* Process the read job */
#             EepInternalReadJob();
	.d2line		1588
	bl		EepInternalReadJob
	b		.L784
.L787:
#             break;
#          case EEP_JOB_WRITE:
#             /* Process the write job */
#             EepInternalWriteJob();
	.d2line		1592
	bl		EepInternalWriteJob
.L788:
#             /* PRQA S 2003 1*/ /* Rule15.2 : Intended behavior to read status register in the same cycle as writerequest */
#          case EEP_READSTATUSREG:
#             /* Process to read the status reg*/
#             EepInternalReadStatusRegJob();
	.d2line		1596
	bl		EepInternalReadStatusRegJob
	b		.L784
.L789:
#             break;
#          case EEP_JOB_ERASE:
#             /* Process the erase job */
#             EepInternalEraseJob();
	.d2line		1600
	bl		EepInternalEraseJob
	b		.L784
.L790:
#             break;
#          case EEP_JOB_COMPARE:
#             /* Process the compare job */
#             EepInternalCompareJob();
	.d2line		1604
	bl		EepInternalCompareJob
.L784:
#             break;
#          default:
#             /* Do nothing since no job to process */
#             break;
#          }
#          /* PRQA S 2016 --  */
#       }
#       SchM_Exit_Eep_31_AT25256B_EaMainFunctionArea();
	.d2line		1612
	bl		SchM_Exit_Eep_31_AT25256B_EaMainFunctionArea
.L781:
#    }
# }
	.d2line		1614
	.d2epilogue_begin
	lwz		r0,20(r1)		# no_error=r0
	mtspr		lr,r0		# no_error=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1090:
	.type		Eep_31_AT25256B_MainFunction,@function
	.size		Eep_31_AT25256B_MainFunction,.-Eep_31_AT25256B_MainFunction
# Number of nodes = 35

# Allocations for Eep_31_AT25256B_MainFunction
#	?a4		no_error
# FUNC(void, EEP_CODE) Eep_SpiReadSeqEndNotification(void)
	.section	.invalid_TEXT,,c
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1621,22
#$$ld
.L1097:

#$$bf	Eep_SpiReadSeqEndNotification,interprocedural,rasave,nostackparams
	.globl		Eep_SpiReadSeqEndNotification
	.d2_cfa_start __cie
Eep_SpiReadSeqEndNotification:
.Llo187:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean, EEP_VAR) IsCompareJobFailed = FALSE;
	.d2line		1623
	diab.li		r30,0		# IsCompareJobFailed=r30
#    VAR(Spi_SeqResultType, EEP_VAR) Status = Spi_GetSequenceResult(Eep_LcfgConfig.ReadSequenceID);
	.d2line		1624
	lis		r3,(Eep_LcfgConfig+4)@ha
	lbz		r3,(Eep_LcfgConfig+4)@l(r3)
	bl		Spi_GetSequenceResult
.Llo191:
	mr		r31,r3		# Status=r31 Status=r3
#    Eep_31_AT25256B_LengthType DataSize;
#    SchM_Enter_Eep_31_AT25256B_EaProcess();    /* Protect concurrent access of Spi read job end notification */
	.d2line		1626
.Llo192:
	bl		SchM_Enter_Eep_31_AT25256B_EaProcess
# 
#    /* ReSet up the Time Out Value */
#    EEP_SETEEPJOBTIMEOUT(0)
# 
#    /* Check if read sequnce status is SPI_SEQ_OK */
#    if (SPI_SEQ_OK == Status)
	.d2line		1632
.Llo193:
	se_cmpi		r31,0		# Status=r31
	bc		0,2,.L801	# ne
#    {
#       DataSize = ((CurrentDataLength % EepConfigPtr->NormalReadBlockSize) == 0) ? (EepConfigPtr->NormalReadBlockSize) : (CurrentDataLength % EepConfigPtr->NormalReadBlockSize);
	.d2line		1634
	lis		r3,CurrentDataLength@ha
	lhz		r4,CurrentDataLength@l(r3)
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lhz		r3,20(r3)
	divw		r0,r4,r3
	mullw		r0,r0,r3
	subf.		r0,r0,r4
	bc		0,2,.L814	# ne
.Llo194:
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lhz		r0,20(r3)
.Llo195:
	b		.L815
.L814:
.Llo196:
	lis		r3,CurrentDataLength@ha
	lhz		r4,CurrentDataLength@l(r3)
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lhz		r3,20(r3)
	divwu		r0,r4,r3
	mullw		r0,r0,r3
	subf		r0,r0,r4
.L815:
.Llo197:
	mr		r31,r0		# DataSize=r31 DataSize=r0
#       if (EEP_JOB_READ == EepJob)
	.d2line		1635
	lis		r3,EepJob@ha
	lwz		r3,EepJob@l(r3)
	se_cmpi		r3,3
	bc		0,2,.L802	# ne
#       {
#          TargetDataBufferPtr = &TargetDataBufferPtr[DataSize];
	.d2line		1637
.Llo198:
	lis		r3,TargetDataBufferPtr@ha
.Llo199:
	lwz		r3,TargetDataBufferPtr@l(r3)
	rlwinm		r0,r0,0,16,31
	se_add		r0,r3
	lis		r3,TargetDataBufferPtr@ha
	e_add16i		r3,r3,TargetDataBufferPtr@l
	stw		r0,0(r3)
	b		.L803
.L802:
#       }
#       /* Check if compare job in process */
#       else if (EEP_JOB_COMPARE == EepJob)
	.d2line		1640
	lis		r3,EepJob@ha
	lwz		r3,EepJob@l(r3)
	se_cmpi		r3,4
	bc		0,2,.L803	# ne
#       {
#          if (E_NOT_OK == EepCompareData(DataSize))
	.d2line		1642
	mr		r3,r0
	bl		EepCompareData
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L805	# ne
#          {
#             /*  Set current job result to MEMIF_BLOCK_INCONSISTENT and process  compare job failure. */
#             JobResult = MEMIF_BLOCK_INCONSISTENT;
	.d2line		1645
	diab.li		r0,4
	lis		r3,JobResult@ha
	e_add16i		r3,r3,JobResult@l
	stw		r0,0(r3)
#             EepJobFailed((EepConfigPtr->Eep_DemConfigPtr)->dem_event_compare_failed);
	.d2line		1646
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lwz		r3,28(r3)
	lhz		r3,0(r3)
	bl		EepJobFailed
#             IsCompareJobFailed = TRUE;
	.d2line		1647
	diab.li		r30,1		# IsCompareJobFailed=r30
# 
#             /* Set the intermediate job result to EEP_JOB_FAILED */
#             JobProcessResult = EEP_JOB_FAILED;
	.d2line		1650
	diab.li		r0,2
	lis		r3,JobProcessResult@ha
	e_add16i		r3,r3,JobProcessResult@l
	stw		r0,0(r3)
.L805:
#          }
#          /** Update the Upper Layer Data Buffer Pointer */
#          ConstUpperLayerDataBufferPtr = &ConstUpperLayerDataBufferPtr[DataSize];
	.d2line		1653
.Llo200:
	lis		r3,ConstUpperLayerDataBufferPtr@ha
	lwz		r0,ConstUpperLayerDataBufferPtr@l(r3)
.Llo201:
	rlwinm		r31,r31,0,16,31		# DataSize=r31 DataSize=r31
	se_add		r31,r0		# DataSize=r31 DataSize=r31
	e_add16i		r3,r3,ConstUpperLayerDataBufferPtr@l
	stw		r31,0(r3)		# DataSize=r31
.L803:
#       }
# #if (EEP_31_AT25256B_WRITE_CYCLE_REDUCTION==STD_ON)
#       /* Check during write job processing read called to compare data before writing */
#       else if (EEP_JOB_WRITE == EepJob)
#       {
#          WriteCycleReductionReadFlag = WriteCycleReductionReadComplete;
#       }
# #endif /* end of EepWriteCycleReduction */
#       else
#       {
#          /*noting to do */
#       }
# 
#       /* Check if all Eep job cycle completed and intermediate job not failed */
#       if ((FALSE == IsCompareJobFailed) && (0 == JobDataLength))
	.d2line		1668
	rlwinm		r0,r30,0,24,31		# IsCompareJobFailed=r30
	se_cmpi		r0,0
	bc		0,2,.L807	# ne
.Llo202:
	lis		r3,JobDataLength@ha
	lhz		r0,JobDataLength@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L807	# ne
#       {
#          EepJobFinished();
	.d2line		1670
	bl		EepJobFinished
.L807:
#       }
# 
#       /* Check if intermediate job is not failed */
#       if (FALSE == IsCompareJobFailed)
	.d2line		1674
	rlwinm		r30,r30,0,24,31		# IsCompareJobFailed=r30 IsCompareJobFailed=r30
	se_cmpi		r30,0		# IsCompareJobFailed=r30
	bc		0,2,.L809	# ne
#       {
#          /* Set the intermediate job result to EEP_JOB_OK */
#          JobProcessResult = EEP_JOB_OK;
	.d2line		1677
.Llo188:
	diab.li		r0,0
	lis		r3,JobProcessResult@ha
	e_add16i		r3,r3,JobProcessResult@l
	stw		r0,0(r3)
	b		.L809
.L801:
#       }
#    }
#    /* Check if read sequnce status is SPI_SEQ_FAILED */
#    else if (SPI_SEQ_FAILED == Status)
	.d2line		1681
.Llo189:
	se_cmpi		r31,2		# Status=r31
	bc		0,2,.L809	# ne
#    {
#       /* Set current job result to MEMIF_BLOCK_FAILED. */
#       JobResult = MEMIF_JOB_FAILED;
	.d2line		1684
.Llo190:
	diab.li		r0,1
	lis		r3,JobResult@ha
	e_add16i		r3,r3,JobResult@l
	stw		r0,0(r3)
# 
#       /* Check is read job failed */
#       if (EEP_JOB_READ == EepJob)
	.d2line		1687
	lis		r3,EepJob@ha
	lwz		r0,EepJob@l(r3)
	se_cmpi		r0,3
	bc		0,2,.L811	# ne
#       {
#          /* process  write job failure. */
#          EepJobFailed((EepConfigPtr->Eep_DemConfigPtr)->dem_event_read_failed);
	.d2line		1690
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lwz		r3,28(r3)
	lhz		r3,4(r3)
	bl		EepJobFailed
	b		.L812
.L811:
#       }
#       /* Compare job failed */
#       else
#       {
#          /* process  compare job failure. */
#          EepJobFailed((EepConfigPtr->Eep_DemConfigPtr)->dem_event_compare_failed);
	.d2line		1696
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lwz		r3,28(r3)
	lhz		r3,0(r3)
	bl		EepJobFailed
.L812:
#       }
# 
#       /* Set the intermediate job result to EEP_JOB_FAILED */
#       JobProcessResult = EEP_JOB_FAILED;
	.d2line		1700
	diab.li		r0,2
	lis		r3,JobProcessResult@ha
	e_add16i		r3,r3,JobProcessResult@l
	stw		r0,0(r3)
.L809:
#    }
#    else
#    {
#       /* Do nothing when read squence is busy or cancelled */
#    }
#    SchM_Exit_Eep_31_AT25256B_EaProcess();
	.d2line		1706
	bl		SchM_Exit_Eep_31_AT25256B_EaProcess
# }
	.d2line		1707
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L1098:
	.type		Eep_SpiReadSeqEndNotification,@function
	.size		Eep_SpiReadSeqEndNotification,.-Eep_SpiReadSeqEndNotification
# Number of nodes = 145

# Allocations for Eep_SpiReadSeqEndNotification
#	?a4		$$121
#	?a5		IsCompareJobFailed
#	?a6		Status
#	?a7		DataSize
# FUNC(void, EEP_CODE) Eep_SpiWriteSeqEndNotification(void)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1711,22
#$$ld
.L1110:

#$$bf	Eep_SpiWriteSeqEndNotification,interprocedural,rasave,nostackparams
	.globl		Eep_SpiWriteSeqEndNotification
	.d2_cfa_start __cie
Eep_SpiWriteSeqEndNotification:
.Llo203:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(Spi_SeqResultType, EEP_VAR) Status = Spi_GetSequenceResult(Eep_LcfgConfig.WriteEraseSequenceID);
	.d2line		1713
	lis		r3,(Eep_LcfgConfig+7)@ha
	lbz		r3,(Eep_LcfgConfig+7)@l(r3)
	bl		Spi_GetSequenceResult
	mr		r31,r3		# Status=r31 Status=r3
# 
#    SchM_Enter_Eep_31_AT25256B_EaProcess();    /* Protect concurrent access of Spi write job end notification */
	.d2line		1715
	bl		SchM_Enter_Eep_31_AT25256B_EaProcess
# 
#    /* ReSet up the Time Out Value */
#    EEP_SETEEPJOBTIMEOUT(0)
# 
#    /* Check if write sequnce status is SPI_SEQ_OK */
#    if (SPI_SEQ_OK == Status)
	.d2line		1721
	se_cmpi		r31,0		# Status=r31
	bc		0,2,.L827	# ne
#    {
#       JobProcessResult = EEP_JOB_OK;
	.d2line		1723
	diab.li		r0,0
	lis		r3,JobProcessResult@ha
	e_add16i		r3,r3,JobProcessResult@l
	stw		r0,0(r3)
# 
#       /* Check if all Eep job cycle completed. */
#       if (0U == JobDataLength)
	.d2line		1726
	lis		r3,JobDataLength@ha
	lhz		r0,JobDataLength@l(r3)
	e_cmphl16i	r0,0
	bc		0,2,.L829	# ne
#       {
#          EepJobFinished();
	.d2line		1728
.Llo204:
	bl		EepJobFinished
	b		.L829
.L827:
#       }
#    }
#    /* Check if write sequnce status is SPI_SEQ_FAILED */
#    else if (SPI_SEQ_FAILED == Status)
	.d2line		1732
.Llo205:
	se_cmpi		r31,2		# Status=r31
	bc		0,2,.L829	# ne
#    {
#       JobProcessResult = EEP_JOB_FAILED;
	.d2line		1734
.Llo206:
	diab.li		r0,2
	lis		r3,JobProcessResult@ha
	e_add16i		r3,r3,JobProcessResult@l
	stw		r0,0(r3)
# 
#       /* Set current job result to MEMIF_BLOCK_FAILED. */
#       JobResult = MEMIF_JOB_FAILED;
	.d2line		1737
	diab.li		r0,1
	lis		r3,JobResult@ha
	e_add16i		r3,r3,JobResult@l
	stw		r0,0(r3)
# 
#       /* Check is write job failed */
#       if (EEP_JOB_WRITE == EepJob)
	.d2line		1740
	lis		r3,EepJob@ha
	lwz		r0,EepJob@l(r3)
	se_cmpi		r0,2
	bc		0,2,.L831	# ne
#       {
#          /* process  write job failure. */
#          EepJobFailed((EepConfigPtr->Eep_DemConfigPtr)->dem_event_write_failed);
	.d2line		1743
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lwz		r3,28(r3)
	lhz		r3,2(r3)
	bl		EepJobFailed
	b		.L829
.L831:
#       }
#       /* Erase job failed */
#       else
#       {
#          /* process  erase job failure. */
#          EepJobFailed((EepConfigPtr->Eep_DemConfigPtr)->dem_event_erase_failed);
	.d2line		1749
	lis		r3,EepConfigPtr@ha
	lwz		r3,EepConfigPtr@l(r3)
	lwz		r3,28(r3)
	lhz		r3,6(r3)
	bl		EepJobFailed
.L829:
#       }
#    }
#    else
#    {
#       /* Do nothing when write squence is busy or cancelled */
#    }
# 
# #if (EEP_31_AT25256B_WRITE_CYCLE_REDUCTION == STD_ON)
#    /* Set read done variable to not ok to process next read
#     * before writing to reduce write cycle */
#    WriteCycleReductionReadFlag = WriteCycleReductionReadNotComplete;
# #endif /* end of EepWriteCycleReduction */
#    SchM_Exit_Eep_31_AT25256B_EaProcess();
	.d2line		1762
	bl		SchM_Exit_Eep_31_AT25256B_EaProcess
# }
	.d2line		1763
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
	.section	.invalid_TEXT,,c
#$$ld
.L1111:
	.type		Eep_SpiWriteSeqEndNotification,@function
	.size		Eep_SpiWriteSeqEndNotification,.-Eep_SpiWriteSeqEndNotification
# Number of nodes = 63

# Allocations for Eep_SpiWriteSeqEndNotification
#	?a4		Status
# FUNC(void, EEP_CODE) Eep_SpiReadStatusRegSeqEndNotification(void)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1767,22
#$$ld
.L1117:

#$$bf	Eep_SpiReadStatusRegSeqEndNotification,interprocedural,rasave,nostackparams
	.globl		Eep_SpiReadStatusRegSeqEndNotification
	.d2_cfa_start __cie
Eep_SpiReadStatusRegSeqEndNotification:
.Llo207:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(Spi_SeqResultType, EEP_VAR) Status = Spi_GetSequenceResult(Eep_LcfgConfig.ReadStatusRegSequenceID);
	.d2line		1769
	lis		r3,(Eep_LcfgConfig+9)@ha
	lbz		r3,(Eep_LcfgConfig+9)@l(r3)
	bl		Spi_GetSequenceResult
	mr		r31,r3		# Status=r31 Status=r3
# 
#    SchM_Enter_Eep_31_AT25256B_EaProcess();    /* Protect concurrent access of Spi write job end notification */
	.d2line		1771
	bl		SchM_Enter_Eep_31_AT25256B_EaProcess
#    /* Check if write sequnce status is SPI_SEQ_OK */
#    if (SPI_SEQ_OK == Status)
	.d2line		1773
	se_cmpi		r31,0		# Status=r31
	bc		0,2,.L838	# ne
#    {
#       JobStatusRegProcessResult = EEP_JOB_OK;
	.d2line		1775
	diab.li		r0,0
	lis		r3,JobStatusRegProcessResult@ha
	e_add16i		r3,r3,JobStatusRegProcessResult@l
	stw		r0,0(r3)
#      /* Set the next job cycle*/
#      if(EEP_JOB_DONE == EepJobComp)
	.d2line		1777
	lis		r3,EepJobComp@ha
	lwz		r0,EepJobComp@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L849	# eq
#      {
#         /* Do nothing*/
#      }
#      else if(EEP_JOB_WRITE == EepJobComp)
	.d2line		1781
.Llo208:
	lis		r3,EepJobComp@ha
	lwz		r0,EepJobComp@l(r3)
	se_cmpi		r0,2
	bc		0,2,.L841	# ne
#      {
#         EepJob = EEP_JOB_WRITE;
	.d2line		1783
	diab.li		r0,2
	lis		r3,EepJob@ha
	e_add16i		r3,r3,EepJob@l
	stw		r0,0(r3)
	b		.L849
.L841:
#      }
#      else if(EEP_JOB_READ == EepJobComp)
	.d2line		1785
	lis		r3,EepJobComp@ha
	lwz		r0,EepJobComp@l(r3)
	se_cmpi		r0,3
	bc		0,2,.L843	# ne
#      {
#         EepJob = EEP_JOB_READ;
	.d2line		1787
	diab.li		r0,3
	lis		r3,EepJob@ha
	e_add16i		r3,r3,EepJob@l
	stw		r0,0(r3)
	b		.L849
.L843:
#      }
#      else if(EEP_JOB_ERASE == EepJobComp)
	.d2line		1789
	lis		r3,EepJobComp@ha
	lwz		r0,EepJobComp@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L845	# ne
#       {
#         EepJob = EEP_JOB_ERASE;
	.d2line		1791
	diab.li		r0,1
	lis		r3,EepJob@ha
	e_add16i		r3,r3,EepJob@l
	stw		r0,0(r3)
	b		.L849
.L845:
#      }
#      else if(EEP_JOB_COMPARE == EepJobComp)
	.d2line		1793
	lis		r3,EepJobComp@ha
	lwz		r0,EepJobComp@l(r3)
	se_cmpi		r0,4
	bc		0,2,.L849	# ne
#       {
#         EepJob = EEP_JOB_COMPARE;
	.d2line		1795
	diab.li		r0,4
	lis		r3,EepJob@ha
	e_add16i		r3,r3,EepJob@l
	stw		r0,0(r3)
	b		.L849
.L838:
#      }
#      else
#      {
#         /* do nothing*/
#      }
#    }
#    /* Check if write sequnce status is SPI_SEQ_FAILED */
#    else if (SPI_SEQ_FAILED == Status)
	.d2line		1803
.Llo209:
	se_cmpi		r31,2		# Status=r31
	bc		0,2,.L849	# ne
#    {
#       JobStatusRegProcessResult = EEP_JOB_FAILED;
	.d2line		1805
.Llo210:
	diab.li		r0,2
	lis		r3,JobStatusRegProcessResult@ha
	e_add16i		r3,r3,JobStatusRegProcessResult@l
	stw		r0,0(r3)
.L849:
#    }
#    else
#    {
#       /* Do nothing when write squence is busy or cancelled */
#    }
#    SchM_Exit_Eep_31_AT25256B_EaProcess();
	.d2line		1811
	bl		SchM_Exit_Eep_31_AT25256B_EaProcess
# }
	.d2line		1812
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
	.section	.invalid_TEXT,,c
#$$ld
.L1118:
	.type		Eep_SpiReadStatusRegSeqEndNotification,@function
	.size		Eep_SpiReadStatusRegSeqEndNotification,.-Eep_SpiReadStatusRegSeqEndNotification
# Number of nodes = 58

# Allocations for Eep_SpiReadStatusRegSeqEndNotification
#	?a4		Status

# Allocations for module
	.section	.text_vle
	.0byte		.L1122
	.section	.text_vle
	.0byte		.L1128
	.section	.text_vle
	.type		.L598,@object
	.size		.L598,2
	.align		2
#	static		__static_init1
.L598:
	.space		2
	.section	.text_vle
#$$ld
.L5:
.L1183:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Spi.h"
.L1163:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\MemIf\\ssc\\make\\..\\inc\\MemIf_Types.h"
.L1159:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\Mentor\\Eep_31_AT25256B\\ssc\\make\\..\\inc\\Eep_31_AT25256B_IntTypes.h"
.L1129:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\Eep_31_AT25256B_Lcfg.h"
.L1123:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\Mentor\\Eep_31_AT25256B\\ssc\\make\\..\\inc\\Eep_31_AT25256B.h"
.L992:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\Mentor\\Eep_31_AT25256B\\ssc\\make\\..\\src\\EEP_31_AT25256B.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L861:
.L869:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\Mentor\\Eep_31_AT25256B\\ssc\\make\\..\\src\\EEP_31_AT25256B.c"
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
	.uleb128	7
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
	.uleb128	10
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	56
	.uleb128	9
	.uleb128	50
	.uleb128	11
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
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
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
	.uleb128	15
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
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
	.uleb128	18
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	16
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	24
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\Mentor\\Eep_31_AT25256B\\ssc\\make\\..\\src\\EEP_31_AT25256B.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L858:
	.4byte		.L859-.L857
.L857:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L863-.L858
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\Mentor\\Eep_31_AT25256B\\ssc\\make\\..\\src\\EEP_31_AT25256B.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L860
	.4byte		.L861
	.4byte		.L864
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L873:
	.sleb128	2
	.4byte		.L866-.L858
	.byte		"EepHw_Read"
	.byte		0
	.4byte		.L869
	.uleb128	508
	.uleb128	39
	.4byte		.L870
	.byte		0x1
	.4byte		.L867
	.4byte		.L868
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L869
	.uleb128	508
	.uleb128	39
	.byte		"CurrentDataIndex"
	.byte		0
	.4byte		.L874
	.4byte		.L877
	.sleb128	3
	.4byte		.L869
	.uleb128	508
	.uleb128	39
	.byte		"DataSize"
	.byte		0
	.4byte		.L878
	.4byte		.L879
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L880:
	.sleb128	4
	.4byte		.L869
	.uleb128	510
	.uleb128	33
	.byte		"RetVal"
	.byte		0
	.4byte		.L870
	.4byte		.L881
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L866:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L886:
	.sleb128	2
	.4byte		.L883-.L858
	.byte		"EepHw_Write"
	.byte		0
	.4byte		.L869
	.uleb128	542
	.uleb128	39
	.4byte		.L870
	.byte		0x1
	.4byte		.L884
	.4byte		.L885
	.sleb128	3
	.4byte		.L869
	.uleb128	542
	.uleb128	39
	.byte		"CurrentDataIndex"
	.byte		0
	.4byte		.L874
	.4byte		.L887
	.sleb128	3
	.4byte		.L869
	.uleb128	542
	.uleb128	39
	.byte		"DataSize"
	.byte		0
	.4byte		.L878
	.4byte		.L888
.L889:
	.sleb128	4
	.4byte		.L869
	.uleb128	544
	.uleb128	33
	.byte		"RetVal"
	.byte		0
	.4byte		.L870
	.4byte		.L890
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L891:
	.sleb128	5
	.4byte		.L869
	.uleb128	545
	.uleb128	24
	.byte		"WriteEnableBuffer"
	.byte		0
	.4byte		.L892
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L883:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L898:
	.sleb128	6
	.4byte		.L895-.L858
	.byte		"EepHw_Cancel"
	.byte		0
	.4byte		.L869
	.uleb128	585
	.uleb128	29
	.byte		0x1
	.4byte		.L896
	.4byte		.L897
	.sleb128	3
	.4byte		.L869
	.uleb128	585
	.uleb128	29
	.byte		"OngoingOp"
	.byte		0
	.4byte		.L871
	.4byte		.L899
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L895:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L904:
	.sleb128	2
	.4byte		.L901-.L858
	.byte		"EepHw_ReadStatusReg"
	.byte		0
	.4byte		.L869
	.uleb128	607
	.uleb128	39
	.4byte		.L870
	.byte		0x1
	.4byte		.L902
	.4byte		.L903
.L905:
	.sleb128	4
	.4byte		.L869
	.uleb128	609
	.uleb128	33
	.byte		"RetVal"
	.byte		0
	.4byte		.L870
	.4byte		.L906
.L907:
	.sleb128	5
	.4byte		.L869
	.uleb128	610
	.uleb128	24
	.byte		"ReadStatusRegBuffer"
	.byte		0
	.4byte		.L908
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L901:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L914:
	.sleb128	2
	.4byte		.L911-.L858
	.byte		"EepCompareData"
	.byte		0
	.4byte		.L869
	.uleb128	636
	.uleb128	39
	.4byte		.L870
	.byte		0x1
	.4byte		.L912
	.4byte		.L913
	.sleb128	3
	.4byte		.L869
	.uleb128	636
	.uleb128	39
	.byte		"DataSize"
	.byte		0
	.4byte		.L878
	.4byte		.L915
.L916:
	.sleb128	4
	.4byte		.L869
	.uleb128	638
	.uleb128	33
	.byte		"RetVal"
	.byte		0
	.4byte		.L870
	.4byte		.L917
.L918:
	.sleb128	4
	.4byte		.L869
	.uleb128	639
	.uleb128	45
	.byte		"index"
	.byte		0
	.4byte		.L878
	.4byte		.L919
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L911:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L924:
	.sleb128	6
	.4byte		.L921-.L858
	.byte		"EepJobFinished"
	.byte		0
	.4byte		.L869
	.uleb128	655
	.uleb128	29
	.byte		0x1
	.4byte		.L922
	.4byte		.L923
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L921:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L929:
	.sleb128	6
	.4byte		.L926-.L858
	.byte		"EepJobFailed"
	.byte		0
	.4byte		.L869
	.uleb128	676
	.uleb128	29
	.byte		0x1
	.4byte		.L927
	.4byte		.L928
	.sleb128	3
	.4byte		.L869
	.uleb128	676
	.uleb128	29
	.byte		"EventID"
	.byte		0
	.4byte		.L930
	.4byte		.L931
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L926:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L936:
	.sleb128	2
	.4byte		.L933-.L858
	.byte		"GetReadDataSize"
	.byte		0
	.4byte		.L869
	.uleb128	697
	.uleb128	49
	.4byte		.L878
	.byte		0x1
	.4byte		.L934
	.4byte		.L935
.L937:
	.sleb128	4
	.4byte		.L869
	.uleb128	699
	.uleb128	45
	.byte		"DataSize"
	.byte		0
	.4byte		.L878
	.4byte		.L938
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L933:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L943:
	.sleb128	6
	.4byte		.L940-.L858
	.byte		"EepInternalReadJob"
	.byte		0
	.4byte		.L869
	.uleb128	714
	.uleb128	29
	.byte		0x1
	.4byte		.L941
	.4byte		.L942
.L944:
	.sleb128	4
	.4byte		.L869
	.uleb128	716
	.uleb128	45
	.byte		"DataSize"
	.byte		0
	.4byte		.L878
	.4byte		.L945
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L940:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L950:
	.sleb128	2
	.4byte		.L947-.L858
	.byte		"GetWriteDataSize"
	.byte		0
	.4byte		.L869
	.uleb128	758
	.uleb128	49
	.4byte		.L878
	.byte		0x1
	.4byte		.L948
	.4byte		.L949
.L951:
	.sleb128	4
	.4byte		.L869
	.uleb128	760
	.uleb128	45
	.byte		"DataSize"
	.byte		0
	.4byte		.L878
	.4byte		.L952
.L953:
	.sleb128	4
	.4byte		.L869
	.uleb128	761
	.uleb128	45
	.byte		"CurrentJobLength"
	.byte		0
	.4byte		.L878
	.4byte		.L954
.L955:
	.sleb128	4
	.4byte		.L869
	.uleb128	763
	.uleb128	48
	.byte		"PageStartAddress"
	.byte		0
	.4byte		.L956
	.4byte		.L957
.L958:
	.sleb128	4
	.4byte		.L869
	.uleb128	765
	.uleb128	48
	.byte		"PageEndAddress"
	.byte		0
	.4byte		.L956
	.4byte		.L959
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L947:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L964:
	.sleb128	6
	.4byte		.L961-.L858
	.byte		"EepInternalWriteJob"
	.byte		0
	.4byte		.L869
	.uleb128	796
	.uleb128	29
	.byte		0x1
	.4byte		.L962
	.4byte		.L963
.L965:
	.sleb128	4
	.4byte		.L869
	.uleb128	798
	.uleb128	45
	.byte		"DataSize"
	.byte		0
	.4byte		.L878
	.4byte		.L966
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L961:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L971:
	.sleb128	6
	.4byte		.L968-.L858
	.byte		"EepInternalEraseJob"
	.byte		0
	.4byte		.L869
	.uleb128	891
	.uleb128	29
	.byte		0x1
	.4byte		.L969
	.4byte		.L970
.L972:
	.sleb128	4
	.4byte		.L869
	.uleb128	893
	.uleb128	45
	.byte		"DataSize"
	.byte		0
	.4byte		.L878
	.4byte		.L973
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L968:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L978:
	.sleb128	6
	.4byte		.L975-.L858
	.byte		"EepInternalCompareJob"
	.byte		0
	.4byte		.L869
	.uleb128	934
	.uleb128	29
	.byte		0x1
	.4byte		.L976
	.4byte		.L977
.L979:
	.sleb128	4
	.4byte		.L869
	.uleb128	936
	.uleb128	45
	.byte		"DataSize"
	.byte		0
	.4byte		.L878
	.4byte		.L980
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L975:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L985:
	.sleb128	6
	.4byte		.L982-.L858
	.byte		"EepInternalReadStatusRegJob"
	.byte		0
	.4byte		.L869
	.uleb128	978
	.uleb128	29
	.byte		0x1
	.4byte		.L983
	.4byte		.L984
.L986:
	.sleb128	4
	.4byte		.L869
	.uleb128	980
	.uleb128	33
	.byte		"RetVal"
	.byte		0
	.4byte		.L870
	.4byte		.L987
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L982:
	.section	.debug_info,,n
.L993:
	.sleb128	7
	.4byte		.L989-.L2
	.byte		"Eep_31_AT25256B_ConsistencyCheck"
	.byte		0
	.4byte		.L992
	.uleb128	1082
	.uleb128	32
	.4byte		.L870
	.byte		0x1
	.byte		0x1
	.4byte		.L990
	.4byte		.L991
	.sleb128	3
	.4byte		.L992
	.uleb128	1082
	.uleb128	32
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L994
	.4byte		.L998
.L999:
	.sleb128	4
	.4byte		.L992
	.uleb128	1084
	.uleb128	19
	.byte		"retVal"
	.byte		0
	.4byte		.L870
	.4byte		.L1000
	.section	.debug_info,,n
	.sleb128	0
.L989:
	.section	.debug_info,,n
.L1005:
	.sleb128	8
	.4byte		.L1002-.L2
	.byte		"Eep_31_AT25256B_Init"
	.byte		0
	.4byte		.L992
	.uleb128	1042
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1003
	.4byte		.L1004
	.sleb128	3
	.4byte		.L992
	.uleb128	1042
	.uleb128	22
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L994
	.4byte		.L1006
	.section	.debug_info,,n
	.sleb128	0
.L1002:
	.section	.debug_info,,n
.L1011:
	.sleb128	8
	.4byte		.L1008-.L2
	.byte		"Eep_31_AT25256B_SetMode"
	.byte		0
	.4byte		.L992
	.uleb128	1114
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1009
	.4byte		.L1010
	.section	.debug_info,,n
	.sleb128	9
	.4byte		.L992
	.uleb128	1114
	.uleb128	22
	.byte		"Mode"
	.byte		0
	.4byte		.L1012
	.sleb128	2
	.byte		0x90
	.uleb128	3
.L1014:
	.sleb128	4
	.4byte		.L992
	.uleb128	1117
	.uleb128	25
	.byte		"no_error"
	.byte		0
	.4byte		.L1015
	.4byte		.L1016
	.section	.debug_info,,n
	.sleb128	0
.L1008:
	.section	.debug_info,,n
.L1021:
	.sleb128	7
	.4byte		.L1018-.L2
	.byte		"Eep_31_AT25256B_Read"
	.byte		0
	.4byte		.L992
	.uleb128	1142
	.uleb128	32
	.4byte		.L870
	.byte		0x1
	.byte		0x1
	.4byte		.L1019
	.4byte		.L1020
	.sleb128	3
	.4byte		.L992
	.uleb128	1142
	.uleb128	32
	.byte		"EepromAddress"
	.byte		0
	.4byte		.L874
	.4byte		.L1022
	.sleb128	3
	.4byte		.L992
	.uleb128	1142
	.uleb128	32
	.byte		"DataBufferPtr"
	.byte		0
	.4byte		.L1023
	.4byte		.L1024
	.sleb128	3
	.4byte		.L992
	.uleb128	1142
	.uleb128	32
	.byte		"Length"
	.byte		0
	.4byte		.L878
	.4byte		.L1025
.L1026:
	.sleb128	4
	.4byte		.L992
	.uleb128	1149
	.uleb128	33
	.byte		"RetVal"
	.byte		0
	.4byte		.L870
	.4byte		.L1027
.L1028:
	.sleb128	4
	.4byte		.L992
	.uleb128	1150
	.uleb128	26
	.byte		"no_error"
	.byte		0
	.4byte		.L1015
	.4byte		.L1029
	.section	.debug_info,,n
	.sleb128	0
.L1018:
	.section	.debug_info,,n
.L1034:
	.sleb128	7
	.4byte		.L1031-.L2
	.byte		"Eep_31_AT25256B_Write"
	.byte		0
	.4byte		.L992
	.uleb128	1210
	.uleb128	32
	.4byte		.L870
	.byte		0x1
	.byte		0x1
	.4byte		.L1032
	.4byte		.L1033
	.sleb128	3
	.4byte		.L992
	.uleb128	1210
	.uleb128	32
	.byte		"EepromAddress"
	.byte		0
	.4byte		.L874
	.4byte		.L1035
	.sleb128	3
	.4byte		.L992
	.uleb128	1210
	.uleb128	32
	.byte		"DataBufferPtr"
	.byte		0
	.4byte		.L1036
	.4byte		.L1038
	.sleb128	3
	.4byte		.L992
	.uleb128	1210
	.uleb128	32
	.byte		"Length"
	.byte		0
	.4byte		.L878
	.4byte		.L1039
.L1040:
	.sleb128	4
	.4byte		.L992
	.uleb128	1217
	.uleb128	33
	.byte		"RetVal"
	.byte		0
	.4byte		.L870
	.4byte		.L1041
.L1042:
	.sleb128	4
	.4byte		.L992
	.uleb128	1219
	.uleb128	26
	.byte		"no_error"
	.byte		0
	.4byte		.L1015
	.4byte		.L1043
	.section	.debug_info,,n
	.sleb128	0
.L1031:
	.section	.debug_info,,n
.L1048:
	.sleb128	7
	.4byte		.L1045-.L2
	.byte		"Eep_31_AT25256B_Erase"
	.byte		0
	.4byte		.L992
	.uleb128	1289
	.uleb128	32
	.4byte		.L870
	.byte		0x1
	.byte		0x1
	.4byte		.L1046
	.4byte		.L1047
	.sleb128	3
	.4byte		.L992
	.uleb128	1289
	.uleb128	32
	.byte		"EepromAddress"
	.byte		0
	.4byte		.L874
	.4byte		.L1049
	.sleb128	3
	.4byte		.L992
	.uleb128	1289
	.uleb128	32
	.byte		"Length"
	.byte		0
	.4byte		.L878
	.4byte		.L1050
.L1051:
	.sleb128	4
	.4byte		.L992
	.uleb128	1295
	.uleb128	33
	.byte		"RetVal"
	.byte		0
	.4byte		.L870
	.4byte		.L1052
.L1053:
	.sleb128	4
	.4byte		.L992
	.uleb128	1296
	.uleb128	26
	.byte		"no_error"
	.byte		0
	.4byte		.L1015
	.4byte		.L1054
	.section	.debug_info,,n
	.sleb128	0
.L1045:
	.section	.debug_info,,n
.L1059:
	.sleb128	7
	.4byte		.L1056-.L2
	.byte		"Eep_31_AT25256B_Compare"
	.byte		0
	.4byte		.L992
	.uleb128	1356
	.uleb128	32
	.4byte		.L870
	.byte		0x1
	.byte		0x1
	.4byte		.L1057
	.4byte		.L1058
	.sleb128	3
	.4byte		.L992
	.uleb128	1356
	.uleb128	32
	.byte		"EepromAddress"
	.byte		0
	.4byte		.L874
	.4byte		.L1060
	.sleb128	3
	.4byte		.L992
	.uleb128	1356
	.uleb128	32
	.byte		"DataBufferPtr"
	.byte		0
	.4byte		.L1036
	.4byte		.L1061
	.sleb128	3
	.4byte		.L992
	.uleb128	1356
	.uleb128	32
	.byte		"Length"
	.byte		0
	.4byte		.L878
	.4byte		.L1062
.L1063:
	.sleb128	4
	.4byte		.L992
	.uleb128	1363
	.uleb128	33
	.byte		"RetVal"
	.byte		0
	.4byte		.L870
	.4byte		.L1064
.L1065:
	.sleb128	4
	.4byte		.L992
	.uleb128	1364
	.uleb128	26
	.byte		"no_error"
	.byte		0
	.4byte		.L1015
	.4byte		.L1066
	.section	.debug_info,,n
	.sleb128	0
.L1056:
	.section	.debug_info,,n
.L1071:
	.sleb128	8
	.4byte		.L1068-.L2
	.byte		"Eep_31_AT25256B_Cancel"
	.byte		0
	.4byte		.L992
	.uleb128	1423
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1069
	.4byte		.L1070
	.section	.debug_info,,n
	.sleb128	0
.L1068:
	.section	.debug_info,,n
.L1078:
	.sleb128	7
	.4byte		.L1073-.L2
	.byte		"Eep_31_AT25256B_GetStatus"
	.byte		0
	.4byte		.L992
	.uleb128	1481
	.uleb128	34
	.4byte		.L1076
	.byte		0x1
	.byte		0x1
	.4byte		.L1074
	.4byte		.L1075
	.section	.debug_info,,n
	.sleb128	0
.L1073:
	.section	.debug_info,,n
.L1085:
	.sleb128	7
	.4byte		.L1080-.L2
	.byte		"Eep_31_AT25256B_GetJobResult"
	.byte		0
	.4byte		.L992
	.uleb128	1504
	.uleb128	37
	.4byte		.L1083
	.byte		0x1
	.byte		0x1
	.4byte		.L1081
	.4byte		.L1082
	.section	.debug_info,,n
	.sleb128	0
.L1080:
	.section	.debug_info,,n
.L1091:
	.sleb128	8
	.4byte		.L1088-.L2
	.byte		"Eep_31_AT25256B_MainFunction"
	.byte		0
	.4byte		.L992
	.uleb128	1553
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1089
	.4byte		.L1090
.L1092:
	.sleb128	4
	.4byte		.L992
	.uleb128	1555
	.uleb128	26
	.byte		"no_error"
	.byte		0
	.4byte		.L1015
	.4byte		.L1093
	.section	.debug_info,,n
	.sleb128	0
.L1088:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1099:
	.sleb128	8
	.4byte		.L1096-.L858
	.byte		"Eep_SpiReadSeqEndNotification"
	.byte		0
	.4byte		.L869
	.uleb128	1621
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1097
	.4byte		.L1098
.L1100:
	.sleb128	4
	.4byte		.L869
	.uleb128	1623
	.uleb128	26
	.byte		"IsCompareJobFailed"
	.byte		0
	.4byte		.L1015
	.4byte		.L1101
.L1102:
	.sleb128	4
	.4byte		.L869
	.uleb128	1624
	.uleb128	36
	.byte		"Status"
	.byte		0
	.4byte		.L1103
	.4byte		.L1105
.L1106:
	.sleb128	4
	.4byte		.L869
	.uleb128	1625
	.uleb128	31
	.byte		"DataSize"
	.byte		0
	.4byte		.L878
	.4byte		.L1107
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1096:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1112:
	.sleb128	8
	.4byte		.L1109-.L858
	.byte		"Eep_SpiWriteSeqEndNotification"
	.byte		0
	.4byte		.L869
	.uleb128	1711
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1110
	.4byte		.L1111
.L1113:
	.sleb128	4
	.4byte		.L869
	.uleb128	1713
	.uleb128	36
	.byte		"Status"
	.byte		0
	.4byte		.L1103
	.4byte		.L1114
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1109:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L1119:
	.sleb128	8
	.4byte		.L1116-.L858
	.byte		"Eep_SpiReadStatusRegSeqEndNotification"
	.byte		0
	.4byte		.L869
	.uleb128	1767
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1117
	.4byte		.L1118
.L1120:
	.sleb128	4
	.4byte		.L869
	.uleb128	1769
	.uleb128	36
	.byte		"Status"
	.byte		0
	.4byte		.L1103
	.4byte		.L1121
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L1116:
	.section	.debug_info,,n
.L1122:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L1123
	.uleb128	159
	.uleb128	45
	.byte		"Eep_31_AT25256B_LTHashValue"
	.byte		0
	.4byte		.L1124
	.section	.debug_info,,n
.L1127:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L1123
	.uleb128	164
	.uleb128	45
	.byte		"Eep_31_AT25256B_LTtoPCHashValue"
	.byte		0
	.4byte		.L1124
.L1128:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L1129
	.uleb128	41
	.uleb128	39
	.byte		"Eep_LcfgConfig"
	.byte		0
	.4byte		.L1130
	.section	.debug_info,,n
.L1133:
	.sleb128	10
	.byte		0x1
	.byte		0x1
	.4byte		.L1129
	.uleb128	43
	.uleb128	32
	.byte		"ConstEraseData"
	.byte		0
	.4byte		.L1134
.L1136:
	.sleb128	5
	.4byte		.L992
	.uleb128	142
	.uleb128	69
	.byte		"EepConfigPtr"
	.byte		0
	.4byte		.L994
	.sleb128	5
	.byte		0x3
	.4byte		EepConfigPtr
	.0byte		.L1136
	.lcomm		EepConfigPtr,4,2
.L1137:
	.sleb128	5
	.4byte		.L992
	.uleb128	146
	.uleb128	42
	.byte		"JobResult"
	.byte		0
	.4byte		.L1083
	.sleb128	5
	.byte		0x3
	.4byte		JobResult
	.lcomm		JobResult,4,2
.L1138:
	.sleb128	5
	.4byte		.L992
	.uleb128	150
	.uleb128	39
	.byte		"ModuleStatus"
	.byte		0
	.4byte		.L1076
	.sleb128	5
	.byte		0x3
	.4byte		ModuleStatus
	.lcomm		ModuleStatus,4,2
.L1139:
	.sleb128	5
	.4byte		.L992
	.uleb128	154
	.uleb128	40
	.byte		"JobProcessResult"
	.byte		0
	.4byte		.L1140
	.sleb128	5
	.byte		0x3
	.4byte		JobProcessResult
	.lcomm		JobProcessResult,4,2
.L1142:
	.sleb128	5
	.4byte		.L992
	.uleb128	158
	.uleb128	40
	.byte		"JobStatusRegProcessResult"
	.byte		0
	.4byte		.L1140
	.sleb128	5
	.byte		0x3
	.4byte		JobStatusRegProcessResult
	.lcomm		JobStatusRegProcessResult,4,2
.L1143:
	.sleb128	5
	.4byte		.L992
	.uleb128	162
	.uleb128	33
	.byte		"EepJob"
	.byte		0
	.4byte		.L1144
	.sleb128	5
	.byte		0x3
	.4byte		EepJob
	.lcomm		EepJob,4,2
.L1146:
	.sleb128	5
	.4byte		.L992
	.uleb128	166
	.uleb128	33
	.byte		"EepJobComp"
	.byte		0
	.4byte		.L1144
	.sleb128	5
	.byte		0x3
	.4byte		EepJobComp
	.lcomm		EepJobComp,4,2
.L1147:
	.sleb128	5
	.4byte		.L992
	.uleb128	170
	.uleb128	49
	.byte		"JobDataLength"
	.byte		0
	.4byte		.L878
	.sleb128	5
	.byte		0x3
	.4byte		JobDataLength
	.lcomm		JobDataLength,2,1
.L1148:
	.sleb128	5
	.4byte		.L992
	.uleb128	174
	.uleb128	49
	.byte		"TotalDataLength"
	.byte		0
	.4byte		.L878
	.sleb128	5
	.byte		0x3
	.4byte		TotalDataLength
	.lcomm		TotalDataLength,2,1
.L1149:
	.sleb128	5
	.4byte		.L992
	.uleb128	191
	.uleb128	49
	.byte		"CurrentDataLength"
	.byte		0
	.4byte		.L878
	.sleb128	5
	.byte		0x3
	.4byte		CurrentDataLength
	.lcomm		CurrentDataLength,2,1
.L1150:
	.sleb128	5
	.4byte		.L992
	.uleb128	196
	.uleb128	28
	.byte		"CommandAddressBuffer"
	.byte		0
	.4byte		.L1151
	.sleb128	5
	.byte		0x3
	.4byte		CommandAddressBuffer
	.lcomm		CommandAddressBuffer,3,2
.L1153:
	.sleb128	5
	.4byte		.L992
	.uleb128	211
	.uleb128	50
	.byte		"JobStartAddr"
	.byte		0
	.4byte		.L874
	.sleb128	5
	.byte		0x3
	.4byte		JobStartAddr
	.lcomm		JobStartAddr,2,1
.L1154:
	.sleb128	5
	.4byte		.L992
	.uleb128	214
	.uleb128	28
	.byte		"StatusRegValue"
	.byte		0
	.4byte		.L1155
	.sleb128	5
	.byte		0x3
	.4byte		StatusRegValue
	.lcomm		StatusRegValue,2,2
.L1157:
	.sleb128	5
	.4byte		.L992
	.uleb128	218
	.uleb128	39
	.byte		"TargetDataBufferPtr"
	.byte		0
	.4byte		.L1023
	.sleb128	5
	.byte		0x3
	.4byte		TargetDataBufferPtr
	.lcomm		TargetDataBufferPtr,4,2
.L1158:
	.sleb128	5
	.4byte		.L992
	.uleb128	221
	.uleb128	48
	.byte		"ConstUpperLayerDataBufferPtr"
	.byte		0
	.4byte		.L1036
	.sleb128	5
	.byte		0x3
	.4byte		ConstUpperLayerDataBufferPtr
	.lcomm		ConstUpperLayerDataBufferPtr,4,2
	.section	.debug_info,,n
.L1132:
	.sleb128	11
	.4byte		.L1159
	.uleb128	114
	.uleb128	1
	.4byte		.L1160-.L2
	.byte		"Eep_LcfgType_Tag"
	.byte		0
	.uleb128	12
	.section	.debug_info,,n
.L575:
	.sleb128	12
	.byte		"Eep_TargetLocalDataBufferPtr"
	.byte		0
	.4byte		.L1023
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L576:
	.sleb128	12
	.byte		"ReadSequenceID"
	.byte		0
	.4byte		.L1161
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L577:
	.sleb128	12
	.byte		"CommandAddressChlID"
	.byte		0
	.4byte		.L1162
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L578:
	.sleb128	12
	.byte		"DataChlID"
	.byte		0
	.4byte		.L1162
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L579:
	.sleb128	12
	.byte		"WriteEraseSequenceID"
	.byte		0
	.4byte		.L1161
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L580:
	.sleb128	12
	.byte		"WriteEnableLatchChlID"
	.byte		0
	.4byte		.L1162
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L581:
	.sleb128	12
	.byte		"ReadStatusRegSequenceID"
	.byte		0
	.4byte		.L1161
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L582:
	.sleb128	12
	.byte		"ReadStatusRegChlID"
	.byte		0
	.4byte		.L1162
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L1160:
	.section	.debug_info,,n
.L997:
	.sleb128	13
	.4byte		.L1163
	.uleb128	133
	.uleb128	14
	.4byte		.L1164-.L2
	.uleb128	48
.L343:
	.sleb128	12
	.byte		"JobEndNotification"
	.byte		0
	.4byte		.L1165
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L344:
	.sleb128	12
	.byte		"JobErrorNotification"
	.byte		0
	.4byte		.L1169
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L345:
	.sleb128	12
	.byte		"BaseAddress"
	.byte		0
	.4byte		.L874
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L346:
	.sleb128	12
	.byte		"DefaultMode"
	.byte		0
	.4byte		.L1012
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L347:
	.sleb128	12
	.byte		"FastReadBlockSize"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L348:
	.sleb128	12
	.byte		"FastWriteBlockSize"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L349:
	.sleb128	12
	.byte		"NormalReadBlockSize"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L350:
	.sleb128	12
	.byte		"NormalWriteBlockSize"
	.byte		0
	.4byte		.L878
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L351:
	.sleb128	12
	.byte		"EepSize"
	.byte		0
	.4byte		.L874
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L352:
	.sleb128	12
	.byte		"Eep_DemConfigPtr"
	.byte		0
	.4byte		.L1173
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L353:
	.sleb128	12
	.byte		"EepWriteTimeTicks"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L354:
	.sleb128	12
	.byte		"EepReadTimeTicks"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L355:
	.sleb128	12
	.byte		"EepEraseTimeTicks"
	.byte		0
	.4byte		.L875
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L356:
	.sleb128	12
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L1178
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L357:
	.sleb128	12
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L1178
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L1164:
.L1177:
	.sleb128	11
	.4byte		.L1163
	.uleb128	133
	.uleb128	14
	.4byte		.L1180-.L2
	.byte		"Eep_DemConfigType_Tag"
	.byte		0
	.uleb128	8
.L339:
	.sleb128	12
	.byte		"dem_event_compare_failed"
	.byte		0
	.4byte		.L930
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L340:
	.sleb128	12
	.byte		"dem_event_write_failed"
	.byte		0
	.4byte		.L930
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L341:
	.sleb128	12
	.byte		"dem_event_read_failed"
	.byte		0
	.4byte		.L930
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L342:
	.sleb128	12
	.byte		"dem_event_erase_failed"
	.byte		0
	.4byte		.L930
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L1180:
	.section	.debug_info,,n
.L1141:
	.sleb128	14
	.4byte		.L1159
	.uleb128	114
	.uleb128	1
	.4byte		.L1181-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	15
	.byte		"EEP_JOB_OK"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"EEP_JOB_BUSY"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"EEP_JOB_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1181:
.L1145:
	.sleb128	14
	.4byte		.L1159
	.uleb128	92
	.uleb128	1
	.4byte		.L1182-.L2
	.uleb128	4
	.sleb128	15
	.byte		"EEP_JOB_DONE"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"EEP_JOB_ERASE"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"EEP_JOB_WRITE"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"EEP_JOB_READ"
	.byte		0
	.sleb128	3
	.sleb128	15
	.byte		"EEP_JOB_COMPARE"
	.byte		0
	.sleb128	4
	.sleb128	15
	.byte		"EEP_READSTATUSREG"
	.byte		0
	.sleb128	5
	.sleb128	0
.L1182:
.L1104:
	.sleb128	14
	.4byte		.L1183
	.uleb128	439
	.uleb128	1
	.4byte		.L1184-.L2
	.uleb128	4
	.sleb128	15
	.byte		"SPI_SEQ_OK"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"SPI_SEQ_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"SPI_SEQ_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"SPI_SEQ_CANCELLED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1184:
	.section	.debug_info,,n
.L1013:
	.sleb128	16
	.4byte		.L1163
	.uleb128	133
	.uleb128	14
	.4byte		.L1185-.L2
	.byte		"MemIf_ModeType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	15
	.byte		"MEMIF_MODE_SLOW"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"MEMIF_MODE_FAST"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1185:
.L1084:
	.sleb128	16
	.4byte		.L1163
	.uleb128	115
	.uleb128	14
	.4byte		.L1186-.L2
	.byte		"MemIf_JobResultType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	15
	.byte		"MEMIF_JOB_OK"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"MEMIF_JOB_FAILED"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"MEMIF_JOB_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"MEMIF_JOB_CANCELED"
	.byte		0
	.sleb128	3
	.sleb128	15
	.byte		"MEMIF_BLOCK_INCONSISTENT"
	.byte		0
	.sleb128	4
	.sleb128	15
	.byte		"MEMIF_BLOCK_INVALID"
	.byte		0
	.sleb128	5
	.sleb128	0
.L1186:
.L1077:
	.sleb128	16
	.4byte		.L1163
	.uleb128	100
	.uleb128	14
	.4byte		.L1187-.L2
	.byte		"MemIf_StatusType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	15
	.byte		"MEMIF_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	15
	.byte		"MEMIF_IDLE"
	.byte		0
	.sleb128	1
	.sleb128	15
	.byte		"MEMIF_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	15
	.byte		"MEMIF_BUSY_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1187:
	.section	.debug_info,,n
.L872:
	.sleb128	17
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L871:
	.sleb128	18
	.byte		"uint8"
	.byte		0
	.4byte		.L872
.L870:
	.sleb128	18
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L871
.L876:
	.sleb128	17
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L875:
	.sleb128	18
	.byte		"uint16"
	.byte		0
	.4byte		.L876
.L874:
	.sleb128	18
	.byte		"Eep_31_AT25256B_AddressType"
	.byte		0
	.4byte		.L875
.L878:
	.sleb128	18
	.byte		"Eep_31_AT25256B_LengthType"
	.byte		0
	.4byte		.L875
	.section	.debug_info,,n
.L892:
	.sleb128	19
	.4byte		.L893
	.4byte		.L871
	.section	.debug_info,,n
	.sleb128	20
	.uleb128	0
	.sleb128	0
.L893:
.L908:
	.sleb128	19
	.4byte		.L909
	.4byte		.L871
	.sleb128	20
	.uleb128	1
	.sleb128	0
.L909:
.L930:
	.sleb128	18
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L875
	.section	.debug_info,,n
.L956:
	.sleb128	21
	.4byte		.L874
.L996:
	.sleb128	18
	.byte		"Eep_31_AT25256B_ConfigType"
	.byte		0
	.4byte		.L997
.L995:
	.sleb128	21
	.4byte		.L996
	.section	.debug_info,,n
.L994:
	.sleb128	22
	.4byte		.L995
.L1012:
	.sleb128	18
	.byte		"MemIf_ModeType"
	.byte		0
	.4byte		.L1013
.L1015:
	.sleb128	18
	.byte		"boolean"
	.byte		0
	.4byte		.L872
.L1023:
	.sleb128	22
	.4byte		.L871
.L1037:
	.sleb128	21
	.4byte		.L871
.L1036:
	.sleb128	22
	.4byte		.L1037
.L1076:
	.sleb128	18
	.byte		"MemIf_StatusType"
	.byte		0
	.4byte		.L1077
.L1083:
	.sleb128	18
	.byte		"MemIf_JobResultType"
	.byte		0
	.4byte		.L1084
.L1103:
	.sleb128	18
	.byte		"Spi_SeqResultType"
	.byte		0
	.4byte		.L1104
.L1126:
	.sleb128	17
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L1125:
	.sleb128	18
	.byte		"uint32"
	.byte		0
	.4byte		.L1126
.L1124:
	.sleb128	21
	.4byte		.L1125
.L1131:
	.sleb128	18
	.byte		"Eep_LcfgType"
	.byte		0
	.4byte		.L1132
.L1130:
	.sleb128	21
	.4byte		.L1131
	.section	.debug_info,,n
.L1134:
	.sleb128	23
	.4byte		.L1135-.L2
	.4byte		.L1037
	.sleb128	20
	.uleb128	63
	.sleb128	0
.L1135:
.L1140:
	.sleb128	18
	.byte		"EepJobProcessType"
	.byte		0
	.4byte		.L1141
.L1144:
	.sleb128	18
	.byte		"EepJobType"
	.byte		0
	.4byte		.L1145
.L1151:
	.sleb128	23
	.4byte		.L1152-.L2
	.4byte		.L871
	.sleb128	20
	.uleb128	2
	.sleb128	0
.L1152:
.L1155:
	.sleb128	23
	.4byte		.L1156-.L2
	.4byte		.L871
	.sleb128	20
	.uleb128	1
	.sleb128	0
.L1156:
.L1161:
	.sleb128	18
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L871
.L1162:
	.sleb128	18
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L871
	.section	.debug_info,,n
.L1167:
	.sleb128	24
	.4byte		.L1168-.L2
	.byte		0x1
	.sleb128	0
.L1168:
.L1166:
	.sleb128	22
	.4byte		.L1167
.L1165:
	.sleb128	18
	.byte		"Eep_JobEndNotificationPtrType"
	.byte		0
	.4byte		.L1166
.L1171:
	.sleb128	24
	.4byte		.L1172-.L2
	.byte		0x1
	.sleb128	0
.L1172:
.L1170:
	.sleb128	22
	.4byte		.L1171
.L1169:
	.sleb128	18
	.byte		"Eep_JobErrorNotificationPtrType"
	.byte		0
	.4byte		.L1170
.L1176:
	.sleb128	18
	.byte		"Eep_31_AT25256B_DemConfigType"
	.byte		0
	.4byte		.L1177
.L1175:
	.sleb128	21
	.4byte		.L1176
.L1174:
	.sleb128	22
	.4byte		.L1175
.L1173:
	.sleb128	21
	.4byte		.L1174
.L1179:
	.sleb128	22
	.4byte		.L1124
.L1178:
	.sleb128	21
	.4byte		.L1179
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L863:
	.sleb128	0
.L859:

	.section	.debug_loc,,n
	.align	0
.L877:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),7
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),0
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locend
.L879:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo11),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo10),31
	.d2locend
.L881:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo14),3
	.d2locend
.L887:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),0
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),0
	.d2locend
.L888:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo23),4
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo22),30
	.d2locend
.L890:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locend
.L899:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),3
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),3
	.d2locend
.L906:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),3
	.d2locend
.L915:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),3
	.d2locend
.L917:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),0
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo42),3
	.d2locend
.L919:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo43),0
	.d2locend
.L931:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),3
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),3
	.d2locend
.L938:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),3
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),3
	.d2locend
.L945:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),3
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),31
	.d2locend
.L952:
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),0
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),3
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),3
	.d2locend
.L954:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo59),0
	.d2locend
.L957:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),3
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),3
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),3
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo60),3
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo62),3
	.d2locend
.L959:
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),0
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo66),0
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo64),0
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo72),0
	.d2locend
.L966:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),3
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),31
	.d2locend
.L973:
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),3
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),31
	.d2locend
.L980:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),3
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),31
	.d2locend
.L987:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),3
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),3
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),3
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),3
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),3
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),3
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),3
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),3
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),3
	.d2locend
.L998:
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),3
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo113),4
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo115),4
	.d2locend
.L1000:
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo114),3
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo117),3
	.d2locend
.L1006:
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo119),3
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),5
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),3
	.d2locend
.L1016:
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),0
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo127),0
	.d2locend
.L1022:
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo129),3
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo131),31
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo133),0
	.d2locend
.L1024:
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo130),4
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo135),30
	.d2locend
.L1025:
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo130),5
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo135),29
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),5
	.d2locend
.L1027:
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo138),28
	.d2locend
.L1029:
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo130),0
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo140),4
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo131),0
	.d2locend
.L1035:
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo143),3
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),31
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),0
	.d2locend
.L1038:
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo144),4
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),30
	.d2locend
.L1039:
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo144),5
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),29
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo151),5
	.d2locend
.L1041:
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo152),28
	.d2locend
.L1043:
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo144),0
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo154),4
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo145),0
	.d2locend
.L1049:
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo157),3
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo159),31
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo161),0
	.d2locend
.L1050:
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo158),4
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo163),30
	.d2locend
.L1052:
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo164),29
	.d2locend
.L1054:
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo158),0
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo166),4
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo159),0
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo161),4
	.d2locend
.L1060:
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo170),3
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo172),31
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo174),0
	.d2locend
.L1061:
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo171),4
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo176),30
	.d2locend
.L1062:
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo171),5
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo176),29
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo178),5
	.d2locend
.L1064:
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo179),28
	.d2locend
.L1066:
	.d2locreg	%offsetof(.Llo180), %offsetof(.Llo171),0
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo181),4
	.d2locreg	%offsetof(.Llo182), %offsetof(.Llo172),0
	.d2locend
.L1093:
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo184),0
	.d2locreg	%offsetof(.Llo185), %offsetof(.Llo186),0
	.d2locend
.L1101:
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo188),30
	.d2locreg	%offsetof(.Llo189), %offsetof(.Llo190),30
	.d2locend
.L1105:
	.d2locreg	%offsetof(.Llo191), %offsetof(.Llo192),3
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo194),31
	.d2locreg	%offsetof(.Llo189), %offsetof(.Llo190),31
	.d2locend
.L1107:
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo196),0
	.d2locreg	%offsetof(.Llo197), %offsetof(.Llo198),0
	.d2locreg	%offsetof(.Llo199), %offsetof(.Llo200),31
	.d2locreg	%offsetof(.Llo201), %offsetof(.Llo202),31
	.d2locend
.L1114:
	.d2locreg	%offsetof(.Llo203), %offsetof(.Llo204),31
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),31
	.d2locend
.L1121:
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),31
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo210),31
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Eep_SpiReadStatusRegSeqEndNotification"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Eep_31_AT25256B_EaProcess","SchM_Exit_Eep_31_AT25256B_EaProcess","Spi_GetSequenceResult"
	.wrcm.end
	.wrcm.nelem "Eep_SpiWriteSeqEndNotification"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "EepJobFailed","EepJobFinished","SchM_Enter_Eep_31_AT25256B_EaProcess","SchM_Exit_Eep_31_AT25256B_EaProcess","Spi_GetSequenceResult"
	.wrcm.end
	.wrcm.nelem "Eep_SpiReadSeqEndNotification"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "EepCompareData","EepJobFailed","EepJobFinished","SchM_Enter_Eep_31_AT25256B_EaProcess","SchM_Exit_Eep_31_AT25256B_EaProcess","Spi_GetSequenceResult"
	.wrcm.end
	.wrcm.nelem "Eep_31_AT25256B_MainFunction"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "EepInternalCompareJob","EepInternalEraseJob","EepInternalReadJob","EepInternalReadStatusRegJob","EepInternalWriteJob","SchM_Enter_Eep_31_AT25256B_EaMainFunctionArea","SchM_Exit_Eep_31_AT25256B_EaMainFunctionArea"
	.wrcm.end
	.wrcm.nelem "Eep_31_AT25256B_GetJobResult"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Eep_31_AT25256B_GetStatus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Eep_31_AT25256B_Cancel"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "EepHw_Cancel","SchM_Enter_Eep_31_AT25256B_EaProcess","SchM_Exit_Eep_31_AT25256B_EaProcess"
	.wrcm.end
	.wrcm.nelem "Eep_31_AT25256B_Compare"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Eep_31_AT25256B_EaProcess","SchM_Exit_Eep_31_AT25256B_EaProcess"
	.wrcm.end
	.wrcm.nelem "Eep_31_AT25256B_Erase"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Eep_31_AT25256B_EaProcess","SchM_Exit_Eep_31_AT25256B_EaProcess"
	.wrcm.end
	.wrcm.nelem "Eep_31_AT25256B_Write"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Eep_31_AT25256B_EaProcess","SchM_Exit_Eep_31_AT25256B_EaProcess"
	.wrcm.end
	.wrcm.nelem "Eep_31_AT25256B_Read"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Eep_31_AT25256B_EaProcess","SchM_Exit_Eep_31_AT25256B_EaProcess"
	.wrcm.end
	.wrcm.nelem "Eep_31_AT25256B_SetMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Eep_31_AT25256B_Init"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Eep_31_AT25256B_ConsistencyCheck"
	.wrcm.end
	.wrcm.nelem "Eep_31_AT25256B_ConsistencyCheck"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "EepInternalReadStatusRegJob"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "EepHw_ReadStatusReg","Spi_GetSequenceResult"
	.wrcm.end
	.wrcm.nelem "EepInternalCompareJob"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "EepHw_Read","EepJobFailed","GetReadDataSize","Spi_GetSequenceResult"
	.wrcm.end
	.wrcm.nelem "EepInternalEraseJob"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "EepHw_Write","EepJobFailed","GetWriteDataSize","Spi_GetSequenceResult"
	.wrcm.end
	.wrcm.nelem "EepInternalWriteJob"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "EepHw_Write","EepJobFailed","GetWriteDataSize","Spi_GetSequenceResult"
	.wrcm.end
	.wrcm.nelem "GetWriteDataSize"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "EepInternalReadJob"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "EepHw_Read","EepJobFailed","GetReadDataSize","Spi_GetSequenceResult"
	.wrcm.end
	.wrcm.nelem "GetReadDataSize"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "EepJobFailed"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dem_ReportErrorStatus"
	.wrcm.end
	.wrcm.nelem "EepJobFinished"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "EepCompareData"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "EepHw_ReadStatusReg"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Spi_AsyncTransmit","Spi_SetupEB"
	.wrcm.end
	.wrcm.nelem "EepHw_Cancel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Spi_Cancel"
	.wrcm.end
	.wrcm.nelem "EepHw_Write"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Spi_AsyncTransmit","Spi_SetupEB"
	.wrcm.end
	.wrcm.nelem "EepHw_Read"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Spi_AsyncTransmit","Spi_SetupEB"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\Mentor\Eep_31_AT25256B\ssc\make\..\src\EEP_31_AT25256B.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
