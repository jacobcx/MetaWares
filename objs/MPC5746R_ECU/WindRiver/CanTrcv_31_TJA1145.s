#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTrcv_31_TJA1145.c"
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
# FUNC(Std_ReturnType, CANTRCV_31_TJA1145_CODE)CanTrcv_31_TJA1145_ConsistencyCheck(CONSTP2CONST (CanTrcv_31_TJA1145_ConfigType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_CONST) ConfigPtr )
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L716:
	.section	.invalid_TEXT,,c
#$$ld
.L712:
	.0byte		.L710
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145.c"
        .d2line         62,46
#$$ld
.L719:

#$$bf	CanTrcv_31_TJA1145_ConsistencyCheck,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		CanTrcv_31_TJA1145_ConsistencyCheck
	.d2_cfa_start __cie
CanTrcv_31_TJA1145_ConsistencyCheck:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr.		r3,r3		# ConfigPtr=?a4 ConfigPtr=r3
	.d2prologue_end
# {
#     VAR( Std_ReturnType, AUTOMATIC )    Retval = E_NOT_OK;
	.d2line		64
	diab.li		r5,1		# Retval=r5
# 
#     if(( NULL_PTR != ConfigPtr )
	.d2line		66
.Llo3:
	bc		1,2,.L670	# eq
	lwz		r4,4(r3)		# ConfigPtr=r3
	lwz		r0,0(r4)
	e_lis		r4,36415
	e_or2i		r4,13156
	se_cmpl		r0,r4
	bc		0,2,.L670	# ne
	lwz		r3,8(r3)		# ConfigPtr=r3 ConfigPtr=r3
	lwz		r0,0(r3)		# ConfigPtr=r3
	lis		r3,CanTrcv_31_TJA1145_LTHashValue@ha		# ConfigPtr=r3
	lwz		r3,CanTrcv_31_TJA1145_LTHashValue@l(r3)		# ConfigPtr=r3 ConfigPtr=r3
	se_cmpl		r0,r3		# ConfigPtr=r3
#     && (CANTRCV_31_TJA1145_PC_HASH_VALUE == *(ConfigPtr->PBtoPCHashValue_P))
#     && ( CanTrcv_31_TJA1145_LTHashValue == *(ConfigPtr->PBtoLTHashValue_P))
#     )
#     {
#      	Retval = E_OK;
	.d2line		71
	isel		r5,0,r5,2		# Retval=r5 Retval=r5
.L670:
#     }
# 
#     return Retval;
	.d2line		74
.Llo2:
	rlwinm		r3,r5,0,24,31		# ConfigPtr=r3 Retval=r5
# }
	.d2line		75
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo4:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L720:
	.type		CanTrcv_31_TJA1145_ConsistencyCheck,@function
	.size		CanTrcv_31_TJA1145_ConsistencyCheck,.-CanTrcv_31_TJA1145_ConsistencyCheck
# Number of nodes = 25

# Allocations for CanTrcv_31_TJA1145_ConsistencyCheck
#	?a4		ConfigPtr
#	?a5		Retval
# FUNC (void , CANTRCV_31_TJA1145_CODE)CanTrcv_31_TJA1145_PrepareSpiData
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         108,38
#$$ld
.L736:

#$$bf	CanTrcv_31_TJA1145_PrepareSpiData,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		CanTrcv_31_TJA1145_PrepareSpiData
	.d2_cfa_start __cie
CanTrcv_31_TJA1145_PrepareSpiData:
.Llo5:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# DataToBeSent_p=r3 DataToBeSent_p=r3
	mr		r4,r4		# RegAddr_u8=r4 RegAddr_u8=r4
	mr		r5,r5		# WrittenData_u8=r5 WrittenData_u8=r5
	mr		r6,r6		# DataIndex_p=r6 DataIndex_p=r6
	mr		r7,r7		# ReadOnlyFlag=r7 ReadOnlyFlag=r7
	.d2prologue_end
#             ( CONSTP2VAR(uint16, AUTOMATIC, CANTRCV_31_TJA1145_APPL_DATA) DataToBeSent_p,
#               CONST(uint8, AUTOMATIC) RegAddr_u8,
#               CONST(uint8, AUTOMATIC) WrittenData_u8,
#               CONSTP2VAR(uint8, AUTOMATIC, CANTRCV_31_TJA1145_APPL_DATA) DataIndex_p,
#               CONST (boolean, AUTOMATIC) ReadOnlyFlag )
# {
# 
#     /* Putting the register address and the data in one SPI data element.
#        The frame format of CanTrcv TJA1145 should be as following
#        |Address (7-bits)|Read-Only (1-bit)|Data (8-bits)|. The SPI driver
#        must send starting from the MSB*/
# 
#     /* Initialization */
#     if (ReadOnlyFlag == TRUE)
	.d2line		122
	rlwinm		r7,r7,0,24,31		# ReadOnlyFlag=r7 ReadOnlyFlag=r7
	se_cmpi		r7,1		# ReadOnlyFlag=r7
	bc		0,2,.L673	# ne
#     {
#         /* In TJA1145, The LSB in the register address byte indicates
#            that this is a read-only operation */
#         (*DataToBeSent_p) = 0x0001;
	.d2line		126
.Llo10:
	diab.li		r0,1
	sth		r0,0(r3)		# DataToBeSent_p=r3
	b		.L674
.L673:
# 
#     }
#     else
#     {
# 
#         (*DataToBeSent_p) = 0x0000;
	.d2line		132
	diab.li		r0,0
	sth		r0,0(r3)		# DataToBeSent_p=r3
.L674:
# 
#     }
# 
#     /* Adding the Address & Read-Only bits to the SPI element */
#     (*DataToBeSent_p) = (*DataToBeSent_p) | ( RegAddr_u8 << 1 );
	.d2line		137
.Llo7:
	lhz		r7,0(r3)		# ReadOnlyFlag=r7 DataToBeSent_p=r3
.Llo8:
	rlwinm		r4,r4,1,23,30		# RegAddr_u8=r4 RegAddr_u8=r4
	or		r4,r4,r7		# RegAddr_u8=r4 RegAddr_u8=r4 ReadOnlyFlag=r7
	sth		r4,0(r3)		# DataToBeSent_p=r3 RegAddr_u8=r4
# 
#     /* Adding the data to be written in the register.
#        According to TJA1145, In case of Read-only, the written data is ignored */
#     (*DataToBeSent_p) = ( (*DataToBeSent_p) << DataToBeSentMask ) | WrittenData_u8;
	.d2line		141
	se_extzh		r4		# RegAddr_u8=r4
	se_slwi		r4,8		# RegAddr_u8=r4 RegAddr_u8=r4
.Llo9:
	rlwinm		r5,r5,0,24,31		# WrittenData_u8=r5 WrittenData_u8=r5
	or		r4,r4,r5		# RegAddr_u8=r4 RegAddr_u8=r4 WrittenData_u8=r5
	sth		r4,0(r3)		# DataToBeSent_p=r3 RegAddr_u8=r4
# 
#     (*DataIndex_p) = (*DataIndex_p) + 1;
	.d2line		143
	lbz		r3,0(r6)		# DataToBeSent_p=r3 DataIndex_p=r6
	se_addi		r3,1		# DataToBeSent_p=r3 DataToBeSent_p=r3
	stb		r3,0(r6)		# DataIndex_p=r6 DataToBeSent_p=r3
# 
# }
	.d2line		145
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo6:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L737:
	.type		CanTrcv_31_TJA1145_PrepareSpiData,@function
	.size		CanTrcv_31_TJA1145_PrepareSpiData,.-CanTrcv_31_TJA1145_PrepareSpiData
# Number of nodes = 40

# Allocations for CanTrcv_31_TJA1145_PrepareSpiData
#	?a4		DataToBeSent_p
#	?a5		RegAddr_u8
#	?a6		WrittenData_u8
#	?a7		DataIndex_p
#	?a8		ReadOnlyFlag
# FUNC (CanTrcv_SpiTransStatus , CANTRCV_31_TJA1145_CODE)CanTrcv_31_TJA1145_SpiTransmit
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         182,56
#$$ld
.L755:

#$$bf	CanTrcv_31_TJA1145_SpiTransmit,interprocedural,rasave,nostackparams
	.globl		CanTrcv_31_TJA1145_SpiTransmit
	.d2_cfa_start __cie
CanTrcv_31_TJA1145_SpiTransmit:
.Llo11:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# LtConfig_p=r31 LtConfig_p=r3
	mr		r30,r4		# DataToBeSent=r30 DataToBeSent=r4
	mr		r29,r5		# DataToBeReceived=r29 DataToBeReceived=r5
	mr		r27,r6		# NumOfSpiDataElements=r27 NumOfSpiDataElements=r6
	.d2prologue_end
#               ( CONSTP2CONST (CanTrcv_31_TJA1145_LtCfgType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_CONST)LtConfig_p,
#                 CONSTP2CONST(uint16, AUTOMATIC, CANTRCV_31_TJA1145_APPL_DATA) DataToBeSent,
#                 CONSTP2VAR(uint16, AUTOMATIC, CANTRCV_31_TJA1145_APPL_DATA) DataToBeReceived,
#                 CONST (Spi_NumberOfDataType, AUTOMATIC) NumOfSpiDataElements )
# {
# 
#     /* Variable holds the status of the last transmssion of this sequence
#        (pending, transmitted or failed)*/
#     VAR(Spi_SeqResultType,AUTOMATIC)  SpiTxStatus;
# 
#     /* Temp variable to hold the CanTrcv-Spi communication status*/
#     VAR(CanTrcv_SpiTransStatus,AUTOMATIC)  TmpTransmissionStatus;
# 
#     VAR(Std_ReturnType,AUTOMATIC)  RetValue;
# 
# 	CONST(uint8,AUTOMATIC) dataTypeRatio = (uint8)(sizeof(uint16) / sizeof(Spi_DataType));
#     /* Get the status of the last transmission (if any) */
#     SpiTxStatus = Spi_GetSequenceResult( LtConfig_p->CanTrcvSpiSequenceId );
	.d2line		200
	lbz		r3,18(r31)		# SpiTxStatus=r3 LtConfig_p=r31
.Llo12:
	bl		Spi_GetSequenceResult
.Llo17:
	mr		r3,r3		# SpiTxStatus=r3 SpiTxStatus=r3
# 
# 	
# 
#     /* If there is a transmission pending then we can't start the current transmssion*/
#     if ( SpiTxStatus == SPI_SEQ_PENDING )
	.d2line		205
	se_cmpi		r3,1		# SpiTxStatus=r3
	bc		0,2,.L678	# ne
#     {
# 
#         TmpTransmissionStatus = CANTRCV_LAST_TX_PENDING;
	.d2line		208
.Llo13:
	diab.li		r3,1		# TmpTransmissionStatus=r3
.Llo19:
	b		.L679
.L678:
# 
#     }
#     else
#     {
# 
#         /* Setup the sent/Received data buffers for SPI communiction*/
#         if (DataToBeReceived == NULL_PTR)
	.d2line		215
.Llo20:
	se_cmpi		r29,0		# DataToBeReceived=r29
	bc		0,2,.L680	# ne
#         {
#             /* When transmssion occurs, received Data will be ignored */
#             RetValue =  Spi_SetupEB( LtConfig_p->CanTrcvSpiChannelId, (const Spi_DataType *const) DataToBeSent,
	.d2line		218
	lbz		r3,17(r31)		# SpiTxStatus=r3 LtConfig_p=r31
	rlwinm		r6,r27,1,16,30		# NumOfSpiDataElements=r27
	mr		r4,r30		# DataToBeSent=r4 DataToBeSent=r30
	diab.li		r5,0
	bl		Spi_SetupEB
.Llo24:
	mr		r3,r3		# RetValue=r3 RetValue=r3
	b		.L681
.L680:
#                                      NULL_PTR, NumOfSpiDataElements*dataTypeRatio );
# 
#         }
#         else
#         {
# 
#             RetValue =  Spi_SetupEB( LtConfig_p->CanTrcvSpiChannelId, (const Spi_DataType *const) DataToBeSent,
	.d2line		225
.Llo25:
	lbz		r3,17(r31)		# SpiTxStatus=r3 LtConfig_p=r31
	rlwinm		r6,r27,1,16,30		# NumOfSpiDataElements=r27
	mr		r4,r30		# DataToBeSent=r4 DataToBeSent=r30
	mr		r5,r29		# DataToBeReceived=r5 DataToBeReceived=r29
	bl		Spi_SetupEB
.Llo26:
	mr		r3,r3		# RetValue=r3 RetValue=r3
.L681:
#                                      (Spi_DataType*) DataToBeReceived, NumOfSpiDataElements*dataTypeRatio );
# 
#         }
# 
#         if ( RetValue == E_OK )
	.d2line		230
.Llo18:
	rlwinm		r3,r3,0,24,31		# RetValue=r3 RetValue=r3
	se_cmpi		r3,0		# RetValue=r3
	bc		0,2,.L682	# ne
#         {
# 
#             /* Transmit the Data to the CanTrcv HW synchronously */
#             RetValue = Spi_SyncTransmit( LtConfig_p->CanTrcvSpiSequenceId );
	.d2line		234
.Llo21:
	lbz		r3,18(r31)		# RetValue=r3 LtConfig_p=r31
	bl		Spi_SyncTransmit
.Llo27:
	mr		r3,r3		# RetValue=r3 RetValue=r3
# 
#             if ( RetValue == E_OK )
	.d2line		236
	rlwinm		r3,r3,0,24,31		# RetValue=r3 RetValue=r3
	se_cmpi		r3,0		# RetValue=r3
#             {
#                 /* Transmission to the CanTrcv succeeded*/
#                 TmpTransmissionStatus = CANTRCV_TX_SUCCEEDED;
	.d2line		239
	isel		r3,0,r28,2		# TmpTransmissionStatus=r3 TmpTransmissionStatus=r28
.L683:
# 
#             }
#             else
#             {
# 
#                 /* The Spi_SyncTransmit/Spi_AsyncTransmit returned error */
#                 TmpTransmissionStatus = CANTRCV_TX_FAILED;
	.d2line		246
.Llo14:
	diab.li		r0,3
.Llo22:
	isel		r3,r3,r0,2		# TmpTransmissionStatus=r3 TmpTransmissionStatus=r3
	b		.L679
.L682:
# 
#             }
# 
#         }
#         else
#         {
#             /* The Spi_SetupEB returned error */
#             TmpTransmissionStatus = CANTRCV_EBSETUP_FAILED;
	.d2line		254
.Llo15:
	diab.li		r3,2		# TmpTransmissionStatus=r3
.L679:
# 
#         }
# 
#     }
# 
#     return TmpTransmissionStatus;
	.d2line		260
.Llo16:
	mr		r3,r3		# TmpTransmissionStatus=r3 TmpTransmissionStatus=r3
# 
# }
	.d2line		262
	.d2epilogue_begin
.Llo23:
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L756:
	.type		CanTrcv_31_TJA1145_SpiTransmit,@function
	.size		CanTrcv_31_TJA1145_SpiTransmit,.-CanTrcv_31_TJA1145_SpiTransmit
# Number of nodes = 90

# Allocations for CanTrcv_31_TJA1145_SpiTransmit
#	?a4		LtConfig_p
#	?a5		DataToBeSent
#	?a6		DataToBeReceived
#	?a7		NumOfSpiDataElements
#	?a8		SpiTxStatus
#	?a9		TmpTransmissionStatus
#	?a10		RetValue
#	not allocated	dataTypeRatio
# FUNC (Std_ReturnType, CANTRCV_31_TJA1145_CODE) CanTrcv_31_TJA1145_Configure_HW
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         370,48
#$$ld
.L784:

#$$bf	CanTrcv_31_TJA1145_Configure_HW,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r28,r29,r30,r31,cr0,lr
	.globl		CanTrcv_31_TJA1145_Configure_HW
	.d2_cfa_start __cie
CanTrcv_31_TJA1145_Configure_HW:
.Llo28:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo59:
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)		# RegData_u8=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# CanNetwork_u8=r3 CanNetwork_u8=r3
	mr		r31,r7		# DataToBeSent=r31 DataToBeSent=r7
.Llo50:
	mr		r8,r8		# DataLength_p=r8 DataLength_p=r8
	.d2prologue_end
# (
#     CONST(uint8, AUTOMATIC) CanNetwork_u8,
#     CONST (uint8, AUTOMATIC) OverTempFlag_u8,
#     CONST (uint8, AUTOMATIC) CanFailureFlag_u8,
#     CONST (uint8, AUTOMATIC) PowerOnFlag_u8,
#     CONSTP2VAR(uint16, AUTOMATIC, CANTRCV_31_TJA1145_APPL_DATA) DataToBeSent,
#     CONSTP2VAR(uint8, AUTOMATIC, CANTRCV_31_TJA1145_APPL_DATA) DataLength_p,
#     CONSTP2VAR(boolean, AUTOMATIC, CANTRCV_31_TJA1145_APPL_DATA) UnSupportedBaudRate_p
# )
# {
# 
#     VAR(Std_ReturnType, AUTOMATIC) ReturnValue ;
# 
#     /* Operation mode. */
#     VAR (CanTrcv_TrcvModeType, AUTOMATIC)InitOpMode;
# 
#     /* Variable to hold the data of any register to be written*/
#     VAR (uint8, AUTOMATIC)RegData_u8;
# 
#     /* Variable to hold the number or SPI data elements to be sent/received*/
#     VAR (uint8, AUTOMATIC)DataIndex_u8;
# 
#     /* Pointer to index the constant LinkTime Configuration Array. */
#     P2CONST (CanTrcv_31_TJA1145_LtCfgType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_CONST)LtConfig_p ;
# 
#     P2CONST (CanTrcv_31_TJA1145_PbConfigType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_CONST) ConfigHw_p;
# 
# #if (STD_ON == CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT)
# 
#     /* Variable to hold the data of the CanTrcv frame control register*/
#     VAR (uint8, AUTOMATIC)CanTrcvFCRegData_u8;
# 
#     VAR (uint8, AUTOMATIC) RegAddrIndex_u8;
# 
#     VAR (uint8, AUTOMATIC) DataMaskRegAddr_u8;
# 
#     /* Loop iterator variable*/
#     VAR (uint8, AUTOMATIC)Iter_u8;
# 
#     CONST(uint8, AUTOMATIC) DataMaskRegAddr_p[DataMaskRegAddr_pLength] = {
#         CANTRCV_31_TJA1145_PN_DM7_REGADDR,
#         CANTRCV_31_TJA1145_PN_DM6_REGADDR,
#         CANTRCV_31_TJA1145_PN_DM5_REGADDR,
#         CANTRCV_31_TJA1145_PN_DM4_REGADDR,
#         CANTRCV_31_TJA1145_PN_DM3_REGADDR,
#         CANTRCV_31_TJA1145_PN_DM2_REGADDR,
#         CANTRCV_31_TJA1145_PN_DM1_REGADDR,
#         CANTRCV_31_TJA1145_PN_DM0_REGADDR
#     };
# 
#     (*UnSupportedBaudRate_p) = FALSE;
# 
#     CanTrcvFCRegData_u8 = 0x00;
# 
# #endif /* CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT */
# 
#     /* Get the pointer to the structure of the Network. */
#     LtConfig_p = &(CANTRCV_31_TJA1145_LT_CONFIG_P[CanNetwork_u8]);
	.d2line		428
.Llo51:
	lis		r4,CanTrcv_31_TJA1145_LtConfig_p@ha		# LtConfig_p=r4
.Llo73:
	lwz		r0,CanTrcv_31_TJA1145_LtConfig_p@l(r4)		# RegData_u8=r0 LtConfig_p=r4
	rlwinm		r4,r3,0,24,31		# LtConfig_p=r4 CanNetwork_u8=r3
	e_mulli		r4,r4,20		# LtConfig_p=r4 LtConfig_p=r4
	se_add		r0,r4		# RegData_u8=r0 RegData_u8=r0 LtConfig_p=r4
.Llo60:
	mr		r4,r0		# LtConfig_p=r4 LtConfig_p=r0
# 
#     ConfigHw_p = &(CanTrcv_31_TJA1145_PbConfig_p[CanNetwork_u8]);
	.d2line		430
.Llo74:
	lis		r5,CanTrcv_31_TJA1145_PbConfig_p@ha		# RegData_u8=r5
.Llo61:
	lwz		r28,CanTrcv_31_TJA1145_PbConfig_p@l(r5)		# ConfigHw_p=r28 RegData_u8=r5
	rlwinm		r3,r3,1,23,30		# CanNetwork_u8=r3 CanNetwork_u8=r3
	se_add		r3,r28		# CanNetwork_u8=r3 CanNetwork_u8=r3 ConfigHw_p=r28
.Llo29:
	mr		r28,r3		# ConfigHw_p=r28 ConfigHw_p=r3
# 
#     /* Copy the configured init state of Transceiver. */
#     InitOpMode = LtConfig_p->CanTrcvInitState;
	.d2line		433
	lwz		r29,0(r4)		# LtConfig_p=r4
.Llo57:
	mr		r29,r29		# InitOpMode=r29 InitOpMode=r29
# 
#     ReturnValue = E_OK;
	.d2line		435
	diab.li		r30,0		# ReturnValue=r30
# 
#     /******************************* CLEARING ALL EVENT CAPTURE STATUS REGISTERS **************************/
#     /* Initialization */
#     DataIndex_u8 = 0;
	.d2line		439
.Llo54:
	diab.li		r7,0
	stb		r7,8(r1)
# 
#     /* As stated in TJA1145 datasheet (section 6.6): to clear bit in the status
#        registers, set the bit location to 1 */
#     /* PRQA S 492++ */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type. */
#     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_GLOBAL_EVENT_STATUS_REGADDR,
	.d2line		444
	diab.addi		r6,r1,8
	mr		r3,r31		# DataToBeSent=r3 DataToBeSent=r31
	diab.li		r4,96		# LtConfig_p=r4
	diab.li		r5,13		# RegData_u8=r5
.Llo62:
	bl		CanTrcv_31_TJA1145_PrepareSpiData
#                            (uint8) CANTRCV_31_TJA1145_CLEAR_GLOBAL_EVENT_STATUS_REG , &DataIndex_u8, FALSE);
# 
#     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_SYS_EVENT_STATUS_REGADDR,
	.d2line		447
.Llo75:
	lbz		r3,8(r1)		# CanNetwork_u8=r3
.Llo30:
	rlwinm		r3,r3,1,23,30		# CanNetwork_u8=r3 CanNetwork_u8=r3
	se_add		r3,r31		# CanNetwork_u8=r3 CanNetwork_u8=r3 DataToBeSent=r31
.Llo31:
	diab.addi		r6,r1,8
	diab.li		r4,97		# LtConfig_p=r4
	diab.li		r5,22		# RegData_u8=r5
	diab.li		r7,0
	bl		CanTrcv_31_TJA1145_PrepareSpiData
#                            (uint8) CANTRCV_31_TJA1145_CLEAR_SYS_EVENT_STATUS_REG , &DataIndex_u8, FALSE);
# 
#     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_CAN_EVENT_STATUS_REGADDR,
	.d2line		450
	lbz		r3,8(r1)		# CanNetwork_u8=r3
.Llo32:
	rlwinm		r3,r3,1,23,30		# CanNetwork_u8=r3 CanNetwork_u8=r3
	se_add		r3,r31		# CanNetwork_u8=r3 CanNetwork_u8=r3 DataToBeSent=r31
.Llo33:
	diab.addi		r6,r1,8
	diab.li		r4,99		# LtConfig_p=r4
	diab.li		r5,51		# RegData_u8=r5
	diab.li		r7,0
	bl		CanTrcv_31_TJA1145_PrepareSpiData
#                            (uint8) CANTRCV_31_TJA1145_CLEAR_CAN_EVENT_STATUS_REG , &DataIndex_u8, FALSE);
# 
#     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_WAKE_PIN_STATUS_REGADDR,
	.d2line		453
	lbz		r3,8(r1)		# CanNetwork_u8=r3
.Llo34:
	rlwinm		r3,r3,1,23,30		# CanNetwork_u8=r3 CanNetwork_u8=r3
	se_add		r3,r31		# CanNetwork_u8=r3 CanNetwork_u8=r3 DataToBeSent=r31
.Llo35:
	diab.addi		r6,r1,8
	diab.li		r4,100		# LtConfig_p=r4
	diab.li		r5,3		# RegData_u8=r5
	diab.li		r7,0
	bl		CanTrcv_31_TJA1145_PrepareSpiData
#                            (uint8) CANTRCV_31_TJA1145_CLEAR_WAKE_PIN_STATUS_REG , &DataIndex_u8, FALSE);
#     /* PRQA S 492-- */
# 
#     /******************************************************************************************************/
# 
# 
#     /******************************* CONFIGURING SYS WARNGINGS & CAN DETECTIONS ***************************/
# 
#     /* Enabling the overtemperature and SPI failure warnings */
#     /* PRQA S 492 1 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type. */
#     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_SYS_EVENT_ENABLE_REGADDR, overtemperatureMask , &DataIndex_u8, FALSE);
	.d2line		464
	lbz		r3,8(r1)		# CanNetwork_u8=r3
.Llo36:
	rlwinm		r3,r3,1,23,30		# CanNetwork_u8=r3 CanNetwork_u8=r3
	se_add		r3,r31		# CanNetwork_u8=r3 CanNetwork_u8=r3 DataToBeSent=r31
.Llo37:
	diab.addi		r6,r1,8
	diab.li		r4,4		# LtConfig_p=r4
	diab.li		r5,6		# RegData_u8=r5
	diab.li		r7,0
	bl		CanTrcv_31_TJA1145_PrepareSpiData
# 
#     /* Configuring the detection type (rising , falling or both edges) of the wake-up using the WAKE pin */
#     /* Enabling the Can Bus Silence, CAN failure and CAN wake-up detections */
#     /* PRQA S 492 1 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type. */
#     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_CAN_EVENT_ENABLE_REGADDR, CANTRCV_31_TJA1145_EVENT_CAPTURE_EN_REG_VAL , &DataIndex_u8, FALSE);
	.d2line		469
	lbz		r3,8(r1)		# CanNetwork_u8=r3
.Llo38:
	rlwinm		r3,r3,1,23,30		# CanNetwork_u8=r3 CanNetwork_u8=r3
	se_add		r3,r31		# CanNetwork_u8=r3 CanNetwork_u8=r3 DataToBeSent=r31
.Llo39:
	diab.addi		r6,r1,8
	diab.li		r4,35		# LtConfig_p=r4
	diab.li		r5,0		# RegData_u8=r5
	diab.li		r7,0
	bl		CanTrcv_31_TJA1145_PrepareSpiData
# 
# 
#     /* Configuring the detection type (rising , falling or both edges) of the wake-up using the WAKE pin */
# 
#     RegData_u8 = 0x00;
	.d2line		474
	diab.li		r0,0		# RegData_u8=r0
# 
#     /* Check if wake-up detection enabled on rising edge of the WAKE pin */
#     if ( ConfigHw_p->CanTrcvWakeOnRisingEdge == TRUE)
	.d2line		477
.Llo63:
	lbz		r3,0(r28)		# CanNetwork_u8=r3 ConfigHw_p=r28
.Llo40:
	se_cmpi		r3,1		# CanNetwork_u8=r3
#     {
# 
#         RegData_u8 = RegData_u8 | WuDetctionEdge;
	.d2line		480
	diab.li		r5,2		# RegData_u8=r5
	.d2line		428
	isel		r5,r5,r0,2		# RegData_u8=r5 RegData_u8=r5 RegData_u8=r0
.L693:
# 
#     }
# 
#     /* Check if wake-up detection enabled on falling edge of the WAKE pin */
#     if ( ConfigHw_p->CanTrcvWakeOnFallingEdge == TRUE)
	.d2line		485
.Llo41:
	lbz		r0,1(r28)		# RegData_u8=r0 ConfigHw_p=r28
.Llo64:
	se_cmpi		r0,1		# RegData_u8=r0
	bc		0,2,.L694	# ne
#     {
# 
#         RegData_u8 = RegData_u8 | 0x01;
	.d2line		488
.Llo76:
	.diab.bseti		r5,31		# RegData_u8=r5
	mr		r0,r5		# RegData_u8=r0 RegData_u8=r5
.L694:
# 
#     }
# 
#     /* PRQA S 492 1 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type. */
#     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_WAKE_PIN_ENABLE_REGADDR, RegData_u8 , &DataIndex_u8, FALSE);
	.d2line		493
.Llo65:
	lbz		r3,8(r1)		# CanNetwork_u8=r3
.Llo42:
	rlwinm		r3,r3,1,23,30		# CanNetwork_u8=r3 CanNetwork_u8=r3
	se_add		r3,r31		# CanNetwork_u8=r3 CanNetwork_u8=r3 DataToBeSent=r31
.Llo43:
	diab.addi		r6,r1,8
	diab.li		r4,76		# LtConfig_p=r4
.Llo66:
	mr		r5,r5		# RegData_u8=r5 RegData_u8=r5
.Llo67:
	diab.li		r7,0
	bl		CanTrcv_31_TJA1145_PrepareSpiData
# 
#     /******************************************************************************************************/
# 
# 
#     /************************************** CONFIGURING CANTRCV MODE **************************************/
#     /* Re-Initialization */
#     RegData_u8 = 0x00;
	.d2line		500
	diab.li		r5,0		# RegData_u8=r5
# 
#     /* Initialize the CanTrcv with the given CanTrcv state*/
#     switch (InitOpMode)
	.d2line		503
.Llo68:
	mr.		r6,r29		# InitOpMode=r6 InitOpMode=?a8
	bc		1,2,.L695	# eq
	se_cmpi		r6,1
	bc		1,2,.L698	# eq
	se_cmpi		r6,2
	bc		1,2,.L697	# eq
	b		.L699
.L695:
#     {
#         case CANTRCV_TRCVMODE_NORMAL:
# 
#             /* Setting to Normal mode */
#             RegData_u8 = RegData_u8 | CANTRCV_31_TJA1145_MODE_NORMAL_COMMAND;
	.d2line		508
	diab.li		r5,7		# RegData_u8=r5
	b		.L696
.L697:
# 
#             break;
# 
#         case CANTRCV_TRCVMODE_STANDBY:
# 
#             /* Setting to Standby mode */
#             RegData_u8 = RegData_u8 | CANTRCV_31_TJA1145_MODE_STANDBY_COMMAND;
	.d2line		515
	diab.li		r5,4		# RegData_u8=r5
	b		.L696
.L698:
# 
#             break;
# 
#         case CANTRCV_TRCVMODE_SLEEP:
# 
#             /* Setting to Sleep mode */
#             RegData_u8 = RegData_u8 | CANTRCV_31_TJA1145_MODE_SLEEP_COMMAND;
	.d2line		522
	diab.li		r5,1		# RegData_u8=r5
	b		.L696
.L699:
# 
#             break;
# 
#         /* PRQA S 2018 3 */ /* The "default" branch will be reached if value outside of enum is passed to the function */
#         default :
#             ReturnValue = E_NOT_OK;
	.d2line		528
.Llo55:
	diab.li		r30,1		# ReturnValue=r30
.L696:
#             break;
# 
#     }
# 
#     /* Convert the control commands (to be sent to the CanTrcv) into the appropriate SPI format */
#     /* PRQA S 492 1 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type. */
#     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_MODE_CONTROL_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
	.d2line		535
.Llo56:
	lbz		r3,8(r1)		# CanNetwork_u8=r3
.Llo44:
	rlwinm		r3,r3,1,23,30		# CanNetwork_u8=r3 CanNetwork_u8=r3
	se_add		r3,r31		# CanNetwork_u8=r3 CanNetwork_u8=r3 DataToBeSent=r31
.Llo45:
	diab.addi		r6,r1,8
	diab.li		r4,1		# LtConfig_p=r4
.Llo69:
	mr		r5,r5		# RegData_u8=r5 RegData_u8=r5
.Llo70:
	diab.li		r7,0
	bl		CanTrcv_31_TJA1145_PrepareSpiData
# 
#     /******************************************************************************************************/
# 
# 
#     /*********************************** CONFIGURING PARTIAL NETWORKING ***********************************/
# 
# #if (STD_ON == CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT)
#     /* Initializing the Partial Networking registers (ID, MASK, DLC and Data fields registers)*/
#     if ( ConfigHw_p->CanTrcvPnEnabled == TRUE )
#     {
# 
#         /* PRQA S 492++  */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type. */
# 
#         /* Configuring the ID and MASK registers in standard or extended formats*/
#         if ( ConfigHw_p->CanTrcvPnCanIdIsExtended == FALSE)
#         {
# 
#             /* If the ID is in the standard format, intialize the corresponding ID registers */
#             CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_ID0_REGADDR, (uint8) 0x00, &DataIndex_u8, FALSE);
#             CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_ID1_REGADDR, (uint8) 0x00, &DataIndex_u8, FALSE);
# 
#             /* As in TJA1145, the first 6 bits of the ID are put in ID register 2 bits (7:2) */
#             RegData_u8 = (uint8) ( (ConfigHw_p->CanTrcvPnFrameCanId & IdPartOne) << IdPartOneBytes );
#             CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_ID2_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
# 
#             /* As in TJA1145, the last 5 bits of the ID are put in ID register 3 bits (4:0) */
#             RegData_u8 = (uint8) ( (ConfigHw_p->CanTrcvPnFrameCanId & IdPartTwo) >> IdPartTwoBytes );
#             CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_ID3_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
# 
#             /* Intializing the ID MASK registers*/
#             CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_MASK0_REGADDR, (uint8) 0x00, &DataIndex_u8, FALSE);
#             CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_MASK1_REGADDR, (uint8) 0x00, &DataIndex_u8, FALSE);
# 
#             /* As in TJA1145, the first 6 bits of the Mask are put in Mask register 2 bits (7:2) */
#             RegData_u8 = (uint8) ( (ConfigHw_p->CanTrcvPnFrameCanIdMask & IdPartOne) << IdPartOneBytes );
#             CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_MASK2_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
# 
#             /* As in TJA1145, the last 5 bits of the Mask are put in Mask register 3 bits (4:0) */
#             RegData_u8 = (uint8) ( (ConfigHw_p->CanTrcvPnFrameCanIdMask & IdPartTwo) >> IdPartTwoBytes );
#             CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_MASK3_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
# 
#         }
#         else
#         {
# 
#            /* If the ID is in the extended format, intialize the correspoding ID and MASK registers*/
#            RegData_u8 = (uint8) (ConfigHw_p->CanTrcvPnFrameCanId & extendedIdPart1);
#            CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_ID0_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
# 
#            RegData_u8 = (uint8) ( (ConfigHw_p->CanTrcvPnFrameCanId & extendedIdPart2) >> IdPart3Bytes );
#            CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_ID1_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
# 
#            RegData_u8 = (uint8) ( (ConfigHw_p->CanTrcvPnFrameCanId & extendedIdPart3) >> IdPart4Bytes );
#            CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_ID2_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
# 
#            RegData_u8 = (uint8) ( (ConfigHw_p->CanTrcvPnFrameCanId & extendedIdPart4) >> IdPart5Bytes );
#            CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_ID3_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
# 
#            /* Intializing the ID MASK registers*/
#            RegData_u8 = (uint8) (ConfigHw_p->CanTrcvPnFrameCanIdMask & extendedIdPart1);
#            CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_MASK0_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
# 
#            RegData_u8 = (uint8) ( (ConfigHw_p->CanTrcvPnFrameCanIdMask & extendedIdPart2) >> IdPart3Bytes );
#            CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_MASK1_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
# 
#            RegData_u8 = (uint8) ( (ConfigHw_p->CanTrcvPnFrameCanIdMask & extendedIdPart3) >> IdPart4Bytes );
#            CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_MASK2_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
# 
#            RegData_u8 = (uint8) ( (ConfigHw_p->CanTrcvPnFrameCanIdMask & extendedIdPart4) >> IdPart5Bytes );
#            CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_MASK3_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
# 
#            /* Setting the bit that corresponds to using the ID extended format*/
#            CanTrcvFCRegData_u8 = CanTrcvFCRegData_u8 | (ExtendedFormatMask);
# 
#         }
#         /* PRQA S 492-- */
# 
#         /* Configuring the DLC and Data field registers */
#         if ( ConfigHw_p->CanTrcvPnFrameDlc > 0)
#         {
# 
#              /* DLC > 0 , means DLC and data fields will be involved in the selective wake-up functinality
#                 thus, setting the corresponding bit in the Frame Control register*/
#              CanTrcvFCRegData_u8 = CanTrcvFCRegData_u8 | CanTrcvFCRegData_u8Mask1;
# 
#              /* Writing the DLC to the Frame control Register */
#              CanTrcvFCRegData_u8 = CanTrcvFCRegData_u8 | ( ConfigHw_p->CanTrcvPnFrameDlc & CanTrcvFCRegData_u8Mask2 );
# 
#              /* Loop on the data masks and save them in the source buffer of the SPI channel*/
#              for ( Iter_u8 = 0; Iter_u8 < ConfigHw_p->CanTrcvPnFrameDlc; Iter_u8++)
#              {
# 
#                 /* Determining the Data Mask register address that will be written in*/
#                 RegAddrIndex_u8 = ConfigHw_p->CanTrcvPnFrameDataMaskIndex[Iter_u8];
# 
#                 if (RegAddrIndex_u8 < ConfigHw_p->CanTrcvPnFrameDlc)
#                 {
# 
#                     DataMaskRegAddr_u8 = DataMaskRegAddr_p[(ConfigHw_p->CanTrcvPnFrameDlc - 1) - RegAddrIndex_u8  ] ;
# 
#                     /* Determining the Frame Data Mask itself*/
#                     RegData_u8 = ConfigHw_p->CanTrcvPnFrameDataMask[Iter_u8];
# 
#                     /* Saving the Data Mask register Address and the corresponding Data Mask in
#                        the DataToBeSent via SPI*/
#                     /* PRQA S 492 1 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type. */
#                     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], DataMaskRegAddr_u8, RegData_u8, &DataIndex_u8, FALSE);
# 
#                  }
# 
#              }
# 
#         }
#         else
#         {
#                /* DLC = 0 , means DLC and data fields won't be involved in the selective wake-up functinality
#                thus, clearing the corresponding bit in the Frame Control register*/
#                /* Nothing to be done in the Frame Control register as it is already intialized with 0*/
#         }
# 
#         /* Saving the Frame control register in the DataToBeSent via SPI */
#         /* PRQA S 492 1 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type. */
#         CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_FRAME_CTRL_REGADDR, CanTrcvFCRegData_u8, &DataIndex_u8, FALSE);
# 
#         /* Configuring the CAN bus baud rate*/
#         switch ( ConfigHw_p->CanTrcvBaudRate )
#         {
# 
#             case BR1:
#                 /* Data rate = 50 kbps*/
#                 RegData_u8 = 0x00U;
#                 break;
# 
#             case BR2:
#                 /* Data rate = 100 kbps*/
#                 RegData_u8 = 0x01U;
#                 break;
# 
#             case BR3:
#                 /* Data rate = 125 kbps*/
#                 RegData_u8 = BR1RegVal3;
#                 break;
# 
#             case BR4:
#                 /* Data rate = 250 kbps*/
#                 RegData_u8 = BR1RegVal4;
#                 break;
# 
#             case BR5:
#                 /* Data rate = 500 kbps*/
#                 RegData_u8 = BR1RegVal5;
#                 break;
# 
#             case BR6:
#                 /* Data rate = 1000 kbps*/
#                 RegData_u8 = BR1RegVal6;
#                 break;
# 
#             default:
#                 /* This Baud rate is not supported by the CantTrcv HW*/
#                 (*UnSupportedBaudRate_p) = TRUE;
# 
#                 break;
# 
#         }
#         if (FALSE == (*UnSupportedBaudRate_p))
#         {
#             /* PRQA S 492 1 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type. */
#             CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_PN_DATARATE_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
#         }
#         else
#         {
# 
#             /* Do Nothing */
# 
#         }
# 
#      }
# 
# #endif /* CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT */
# 
#     /* Re-Initializing the Register data*/
#     RegData_u8 = 0x00;
	.d2line		718
	diab.li		r0,0		# RegData_u8=r0
# 
#     /* For TJA1145, In case of Normal mode, the CAN bus has three operating modes:
#        Active, Listen-only and offline modes. We intialize the Can Operating Mode to the Active*/
#     if (InitOpMode == CANTRCV_TRCVMODE_NORMAL)
	.d2line		722
.Llo71:
	se_cmpi		r29,0		# InitOpMode=r29
#     {
# 
#         /* Setting CAN operating mode to th active mode*/
#         RegData_u8 = RegData_u8 | CANTRCV_31_TJA1145_OPMODE_ACTIVE_COMMAND;
	.d2line		726
	diab.li		r5,1		# RegData_u8=r5
	isel		r5,r5,r0,2		# RegData_u8=r5 RegData_u8=r5 RegData_u8=r0
.L700:
# 
#     }
# 
# #if (STD_ON == CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT)
# 
#     /* Enabling the Partial Networking functionality in the HW*/
#     if ( ConfigHw_p->CanTrcvPnEnabled == TRUE )
#     {
#         /* Enable selective-wakeup functinality in the CanTrcv HW
#            by setting the CPNC bit */
#         RegData_u8 = RegData_u8 | CANTRCV_31_TJA1145_PN_ENABLED_COMMAND;
# 
#         /* Partial Networking Registers Configured Successfully */
#         RegData_u8 = RegData_u8 | CANTRCV_31_TJA1145_PN_REGISTERS_CONFIGURED;
#     }
# 
# #endif /* CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT */
# 
# #if(STD_ON == CANTRCV_31_TJA1145_FD_SUPPORT)
#        RegData_u8 = RegData_u8 | CANTRCV_31_TJA1145_CAN_FD_ENABLE_COMMAND;
# #endif
# 
#     /* Convert the control commands (to be sent to the CanTrcv) into the appropriate SPI format */
#     /* PRQA S 492 1 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type. */
#     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_CAN_CONTROL_REGADDR, RegData_u8, &DataIndex_u8, FALSE);
	.d2line		751
.Llo58:
	lbz		r3,8(r1)		# CanNetwork_u8=r3
.Llo46:
	rlwinm		r3,r3,1,23,30		# CanNetwork_u8=r3 CanNetwork_u8=r3
	se_add		r3,r31		# CanNetwork_u8=r3 CanNetwork_u8=r3 DataToBeSent=r31
.Llo47:
	diab.addi		r6,r1,8
	diab.li		r4,32		# LtConfig_p=r4
	mr		r5,r5		# RegData_u8=r5 RegData_u8=r5
.Llo72:
	diab.li		r7,0
	bl		CanTrcv_31_TJA1145_PrepareSpiData
# 
#     (*DataLength_p) = DataIndex_u8;
	.d2line		753
	lbz		r3,8(r1)		# CanNetwork_u8=r3
.Llo48:
	stb		r3,0(r8)		# DataLength_p=r8 CanNetwork_u8=r3
# 
#     return (ReturnValue);
	.d2line		755
	rlwinm		r3,r30,0,24,31		# CanNetwork_u8=r3 ReturnValue=r30
# 
#  }
	.d2line		757
	.d2epilogue_begin
.Llo49:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo52:
	lwz		r0,36(r1)		# RegData_u8=r0
	mtspr		lr,r0		# RegData_u8=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo53:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L785:
	.type		CanTrcv_31_TJA1145_Configure_HW,@function
	.size		CanTrcv_31_TJA1145_Configure_HW,.-CanTrcv_31_TJA1145_Configure_HW
# Number of nodes = 244

# Allocations for CanTrcv_31_TJA1145_Configure_HW
#	?a4		CanNetwork_u8
#	not allocated	OverTempFlag_u8
#	not allocated	CanFailureFlag_u8
#	not allocated	PowerOnFlag_u8
#	?a5		DataToBeSent
#	?a6		DataLength_p
#	not allocated	UnSupportedBaudRate_p
#	?a7		ReturnValue
#	?a8		InitOpMode
#	?a9		RegData_u8
#	SP,8		DataIndex_u8
#	?a10		LtConfig_p
#	?a11		ConfigHw_p

# Allocations for module
	.section	.text_vle
	.0byte		.L809
	.section	.text_vle
#$$ld
.L5:
.L830:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Spi.h"
.L827:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\inc\\internal\\CanTrcv_31_TJA1145_Private.h"
.L823:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L816:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\..\\..\\inc\\CanTrcv_Types.h"
.L810:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\inc\\CanTrcv_31_TJA1145.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L713:
.L721:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145.c"
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
	.uleb128	38
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145.c"
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
.L710:
	.4byte		.L711-.L709
.L709:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L715-.L710
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L712
	.4byte		.L713
	.4byte		.L716
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L725:
	.sleb128	2
	.4byte		.L718-.L710
	.byte		"CanTrcv_31_TJA1145_ConsistencyCheck"
	.byte		0
	.4byte		.L721
	.uleb128	62
	.uleb128	46
	.4byte		.L722
	.byte		0x1
	.byte		0x1
	.4byte		.L719
	.4byte		.L720
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L721
	.uleb128	62
	.uleb128	46
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L726
	.4byte		.L731
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L732:
	.sleb128	4
	.4byte		.L721
	.uleb128	64
	.uleb128	41
	.byte		"Retval"
	.byte		0
	.4byte		.L722
	.4byte		.L733
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L718:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L738:
	.sleb128	5
	.4byte		.L735-.L710
	.byte		"CanTrcv_31_TJA1145_PrepareSpiData"
	.byte		0
	.4byte		.L721
	.uleb128	108
	.uleb128	38
	.byte		0x1
	.byte		0x1
	.4byte		.L736
	.4byte		.L737
	.sleb128	3
	.4byte		.L721
	.uleb128	108
	.uleb128	38
	.byte		"DataToBeSent_p"
	.byte		0
	.4byte		.L739
	.4byte		.L743
	.sleb128	3
	.4byte		.L721
	.uleb128	108
	.uleb128	38
	.byte		"RegAddr_u8"
	.byte		0
	.4byte		.L744
	.4byte		.L745
	.sleb128	3
	.4byte		.L721
	.uleb128	108
	.uleb128	38
	.byte		"WrittenData_u8"
	.byte		0
	.4byte		.L744
	.4byte		.L746
	.sleb128	3
	.4byte		.L721
	.uleb128	108
	.uleb128	38
	.byte		"DataIndex_p"
	.byte		0
	.4byte		.L747
	.4byte		.L749
	.sleb128	3
	.4byte		.L721
	.uleb128	108
	.uleb128	38
	.byte		"ReadOnlyFlag"
	.byte		0
	.4byte		.L750
	.4byte		.L752
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L735:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L759:
	.sleb128	2
	.4byte		.L754-.L710
	.byte		"CanTrcv_31_TJA1145_SpiTransmit"
	.byte		0
	.4byte		.L721
	.uleb128	182
	.uleb128	56
	.4byte		.L757
	.byte		0x1
	.byte		0x1
	.4byte		.L755
	.4byte		.L756
	.sleb128	3
	.4byte		.L721
	.uleb128	182
	.uleb128	56
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L760
	.4byte		.L765
	.sleb128	3
	.4byte		.L721
	.uleb128	182
	.uleb128	56
	.byte		"DataToBeSent"
	.byte		0
	.4byte		.L766
	.4byte		.L769
	.sleb128	3
	.4byte		.L721
	.uleb128	182
	.uleb128	56
	.byte		"DataToBeReceived"
	.byte		0
	.4byte		.L739
	.4byte		.L770
	.sleb128	3
	.4byte		.L721
	.uleb128	182
	.uleb128	56
	.byte		"NumOfSpiDataElements"
	.byte		0
	.4byte		.L771
	.4byte		.L773
.L774:
	.sleb128	4
	.4byte		.L721
	.uleb128	191
	.uleb128	39
	.byte		"SpiTxStatus"
	.byte		0
	.4byte		.L775
	.4byte		.L777
.L778:
	.sleb128	4
	.4byte		.L721
	.uleb128	194
	.uleb128	44
	.byte		"TmpTransmissionStatus"
	.byte		0
	.4byte		.L757
	.4byte		.L779
.L780:
	.sleb128	4
	.4byte		.L721
	.uleb128	196
	.uleb128	36
	.byte		"RetValue"
	.byte		0
	.4byte		.L722
	.4byte		.L781
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L754:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L786:
	.sleb128	2
	.4byte		.L783-.L710
	.byte		"CanTrcv_31_TJA1145_Configure_HW"
	.byte		0
	.4byte		.L721
	.uleb128	370
	.uleb128	48
	.4byte		.L722
	.byte		0x1
	.byte		0x1
	.4byte		.L784
	.4byte		.L785
	.sleb128	3
	.4byte		.L721
	.uleb128	370
	.uleb128	48
	.byte		"CanNetwork_u8"
	.byte		0
	.4byte		.L744
	.4byte		.L787
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L721
	.uleb128	370
	.uleb128	48
	.byte		"OverTempFlag_u8"
	.byte		0
	.4byte		.L744
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	6
	.4byte		.L721
	.uleb128	370
	.uleb128	48
	.byte		"CanFailureFlag_u8"
	.byte		0
	.4byte		.L744
	.sleb128	2
	.byte		0x90
	.uleb128	5
	.sleb128	6
	.4byte		.L721
	.uleb128	370
	.uleb128	48
	.byte		"PowerOnFlag_u8"
	.byte		0
	.4byte		.L744
	.sleb128	2
	.byte		0x90
	.uleb128	6
	.sleb128	3
	.4byte		.L721
	.uleb128	370
	.uleb128	48
	.byte		"DataToBeSent"
	.byte		0
	.4byte		.L739
	.4byte		.L788
	.sleb128	3
	.4byte		.L721
	.uleb128	370
	.uleb128	48
	.byte		"DataLength_p"
	.byte		0
	.4byte		.L747
	.4byte		.L789
	.sleb128	6
	.4byte		.L721
	.uleb128	370
	.uleb128	48
	.byte		"UnSupportedBaudRate_p"
	.byte		0
	.4byte		.L790
	.sleb128	2
	.byte		0x90
	.uleb128	9
.L792:
	.sleb128	4
	.4byte		.L721
	.uleb128	382
	.uleb128	36
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L722
	.4byte		.L793
.L794:
	.sleb128	4
	.4byte		.L721
	.uleb128	385
	.uleb128	42
	.byte		"InitOpMode"
	.byte		0
	.4byte		.L795
	.4byte		.L797
.L798:
	.sleb128	4
	.4byte		.L721
	.uleb128	388
	.uleb128	27
	.byte		"RegData_u8"
	.byte		0
	.4byte		.L723
	.4byte		.L799
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L800:
	.sleb128	7
	.4byte		.L721
	.uleb128	391
	.uleb128	27
	.byte		"DataIndex_u8"
	.byte		0
	.4byte		.L723
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L801:
	.sleb128	4
	.4byte		.L721
	.uleb128	394
	.uleb128	103
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L761
	.4byte		.L802
.L803:
	.sleb128	4
	.4byte		.L721
	.uleb128	396
	.uleb128	107
	.byte		"ConfigHw_p"
	.byte		0
	.4byte		.L804
	.4byte		.L808
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L783:
	.section	.debug_info,,n
.L809:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L810
	.uleb128	737
	.uleb128	48
	.byte		"CanTrcv_31_TJA1145_LTHashValue"
	.byte		0
	.4byte		.L811
	.section	.debug_info,,n
.L814:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L810
	.uleb128	762
	.uleb128	88
	.byte		"CanTrcv_31_TJA1145_LtConfig_p"
	.byte		0
	.4byte		.L760
.L815:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L810
	.uleb128	790
	.uleb128	84
	.byte		"CanTrcv_31_TJA1145_PbConfig_p"
	.byte		0
	.4byte		.L804
	.0byte		.L815
	.section	.debug_info,,n
.L764:
	.sleb128	9
	.4byte		.L816
	.uleb128	61
	.uleb128	13
	.4byte		.L817-.L2
	.uleb128	20
	.section	.debug_info,,n
.L547:
	.sleb128	10
	.byte		"CanTrcvInitState"
	.byte		0
	.4byte		.L818
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L548:
	.sleb128	10
	.byte		"CanTrcvMaxBaudrate"
	.byte		0
	.4byte		.L768
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L549:
	.sleb128	10
	.byte		"CanTrcvControlsPowerSupply"
	.byte		0
	.4byte		.L750
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L550:
	.sleb128	10
	.byte		"CanTrcvChannelUsed"
	.byte		0
	.4byte		.L750
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L551:
	.sleb128	10
	.byte		"CanTrcvWakeupByBusUsed"
	.byte		0
	.4byte		.L750
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L552:
	.sleb128	10
	.byte		"CanTrcvChannelId"
	.byte		0
	.4byte		.L744
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L553:
	.sleb128	10
	.byte		"CanTrcvPorWakeupSourceId"
	.byte		0
	.4byte		.L744
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L554:
	.sleb128	10
	.byte		"CanTrcvSyserrWakeupSourceId"
	.byte		0
	.4byte		.L744
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L555:
	.sleb128	10
	.byte		"CanTrcvWakeupSourceId"
	.byte		0
	.4byte		.L744
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L556:
	.sleb128	10
	.byte		"CanTrcvPinWakeupSourceId"
	.byte		0
	.4byte		.L744
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L557:
	.sleb128	10
	.byte		"CanTrcvSpiAccessSynchronous"
	.byte		0
	.4byte		.L750
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L558:
	.sleb128	10
	.byte		"CanTrcvSpiCommRetries"
	.byte		0
	.4byte		.L744
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L559:
	.sleb128	10
	.byte		"CanTrcvSpiCommTimeout"
	.byte		0
	.4byte		.L744
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L560:
	.sleb128	10
	.byte		"CanTrcvSpiChannelId"
	.byte		0
	.4byte		.L819
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L561:
	.sleb128	10
	.byte		"CanTrcvSpiSequenceId"
	.byte		0
	.4byte		.L821
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L562:
	.sleb128	10
	.byte		"CanIfTrcvID"
	.byte		0
	.4byte		.L744
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
	.sleb128	0
.L817:
.L730:
	.sleb128	9
	.4byte		.L823
	.uleb128	63
	.uleb128	1
	.4byte		.L824-.L2
	.uleb128	12
.L544:
	.sleb128	10
	.byte		"PbConfig_pc"
	.byte		0
	.4byte		.L804
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L545:
	.sleb128	10
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L825
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L546:
	.sleb128	10
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L825
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L824:
.L807:
	.sleb128	9
	.4byte		.L823
	.uleb128	63
	.uleb128	1
	.4byte		.L826-.L2
	.uleb128	2
.L542:
	.sleb128	10
	.byte		"CanTrcvWakeOnRisingEdge"
	.byte		0
	.4byte		.L750
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L543:
	.sleb128	10
	.byte		"CanTrcvWakeOnFallingEdge"
	.byte		0
	.4byte		.L750
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L826:
	.section	.debug_info,,n
.L758:
	.sleb128	11
	.4byte		.L827
	.uleb128	229
	.uleb128	14
	.4byte		.L828-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"CANTRCV_TX_SUCCEEDED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANTRCV_LAST_TX_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"CANTRCV_EBSETUP_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"CANTRCV_TX_FAILED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L828:
.L796:
	.sleb128	11
	.4byte		.L823
	.uleb128	23
	.uleb128	15
	.4byte		.L829-.L2
	.uleb128	4
	.sleb128	12
	.byte		"CANTRCV_TRCVMODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"CANTRCV_TRCVMODE_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"CANTRCV_TRCVMODE_STANDBY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L829:
.L776:
	.sleb128	11
	.4byte		.L830
	.uleb128	439
	.uleb128	1
	.4byte		.L831-.L2
	.uleb128	4
	.sleb128	12
	.byte		"SPI_SEQ_OK"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"SPI_SEQ_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"SPI_SEQ_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"SPI_SEQ_CANCELLED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L831:
	.section	.debug_info,,n
.L724:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L723:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L724
.L722:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L723
.L729:
	.sleb128	14
	.byte		"CanTrcv_31_TJA1145_ConfigType"
	.byte		0
	.4byte		.L730
	.section	.debug_info,,n
.L728:
	.sleb128	15
	.4byte		.L729
	.section	.debug_info,,n
.L727:
	.sleb128	16
	.4byte		.L728
.L726:
	.sleb128	15
	.4byte		.L727
.L742:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L741:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L742
.L740:
	.sleb128	16
	.4byte		.L741
.L739:
	.sleb128	15
	.4byte		.L740
.L744:
	.sleb128	15
	.4byte		.L723
.L748:
	.sleb128	16
	.4byte		.L723
.L747:
	.sleb128	15
	.4byte		.L748
.L751:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L724
.L750:
	.sleb128	15
	.4byte		.L751
.L757:
	.sleb128	14
	.byte		"CanTrcv_SpiTransStatus"
	.byte		0
	.4byte		.L758
.L763:
	.sleb128	14
	.byte		"CanTrcv_31_TJA1145_LtCfgType"
	.byte		0
	.4byte		.L764
.L762:
	.sleb128	15
	.4byte		.L763
.L761:
	.sleb128	16
	.4byte		.L762
.L760:
	.sleb128	15
	.4byte		.L761
.L768:
	.sleb128	15
	.4byte		.L741
.L767:
	.sleb128	16
	.4byte		.L768
.L766:
	.sleb128	15
	.4byte		.L767
.L772:
	.sleb128	14
	.byte		"Spi_NumberOfDataType"
	.byte		0
	.4byte		.L741
.L771:
	.sleb128	15
	.4byte		.L772
.L775:
	.sleb128	14
	.byte		"Spi_SeqResultType"
	.byte		0
	.4byte		.L776
.L791:
	.sleb128	16
	.4byte		.L751
.L790:
	.sleb128	15
	.4byte		.L791
.L795:
	.sleb128	14
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L796
.L806:
	.sleb128	14
	.byte		"CanTrcv_31_TJA1145_PbConfigType"
	.byte		0
	.4byte		.L807
.L805:
	.sleb128	15
	.4byte		.L806
.L804:
	.sleb128	16
	.4byte		.L805
.L813:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L812:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L813
.L811:
	.sleb128	15
	.4byte		.L812
.L818:
	.sleb128	15
	.4byte		.L795
.L820:
	.sleb128	14
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L723
.L819:
	.sleb128	15
	.4byte		.L820
.L822:
	.sleb128	14
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L723
.L821:
	.sleb128	15
	.4byte		.L822
.L825:
	.sleb128	16
	.4byte		.L811
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L715:
	.sleb128	0
.L711:

	.section	.debug_loc,,n
	.align	0
.L731:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L733:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),5
	.d2locend
.L743:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L745:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo6),4
	.d2locend
.L746:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo7),5
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo6),5
	.d2locend
.L749:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),6
	.d2locend
.L752:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo10),7
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo6),7
	.d2locend
.L765:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),31
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),31
	.d2locend
.L769:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo17),4
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo18),30
	.d2locend
.L770:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo17),5
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo18),29
	.d2locend
.L773:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo17),6
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo18),27
	.d2locend
.L777:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo13),3
	.d2locend
.L779:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),3
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo14),28
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo23),3
	.d2locend
.L781:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo14),3
	.d2locend
.L787:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),3
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),3
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),3
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),3
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),3
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),3
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),3
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),3
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),3
	.d2locend
.L788:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo50),7
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),31
	.d2locend
.L789:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo53),8
	.d2locend
.L793:
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),30
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo52),30
	.d2locend
.L797:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),29
	.d2locend
.L799:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),0
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),5
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo41),0
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),5
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),5
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo56),5
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),5
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo58),0
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo72),5
	.d2locend
.L802:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),4
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo75),0
	.d2locend
.L808:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo76),28
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTrcv_31_TJA1145_Configure_HW"
	.wrcm.nstrlist "calls", "CanTrcv_31_TJA1145_PrepareSpiData"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanTrcv_31_TJA1145_SpiTransmit"
	.wrcm.nstrlist "calls", "Spi_GetSequenceResult","Spi_SetupEB","Spi_SyncTransmit"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "CanTrcv_31_TJA1145_PrepareSpiData"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanTrcv_31_TJA1145_ConsistencyCheck"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTrcv\ssc\target\TJA1145\make\..\src\CanTrcv_31_TJA1145.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
