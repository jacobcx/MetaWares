#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinTrcv_31_UJA1132.c"
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
# FUNC (uint8, LINTRCV_CODE) LINTRCV_GET_CHANNEL_INDEX
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L592:
	.section	.invalid_TEXT,,c
#$$ld
.L588:
	.0byte		.L586
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132.c"
        .d2line         45,28
#$$ld
.L595:

#$$bf	LinTrcv_31_UJA1132_GetChannelIndex,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.globl		LinTrcv_31_UJA1132_GetChannelIndex
	.d2_cfa_start __cie
LinTrcv_31_UJA1132_GetChannelIndex:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo5:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# LinNetworkIndex=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# LinNetworkId=r0 LinNetworkId=r3
	.d2prologue_end
# (
# CONST(uint8, AUTOMATIC) LinNetworkId
# )
# {
#     VAR (uint8, AUTOMATIC) LinNetworkIndex;
#     VAR (uint8, AUTOMATIC) RetLinChIndex;
#     
#     RetLinChIndex = (uint8)LINTRCV_31_UJA1132_INVALID_NETWORK_INDEX;
	.d2line		53
.Llo6:
	diab.li		r4,255		# RetLinChIndex=r4
#     for(LinNetworkIndex =0; LinNetworkIndex < LINTRCV_31_UJA1132_NUM_CHANNELS;
	.d2line		54
.Llo7:
	diab.li		r3,0		# LinNetworkIndex=r3
.L503:
.Llo2:
	rlwinm		r6,r3,0,24,31		# LinNetworkIndex=r3
.Llo3:
	lis		r5,LinTrcv_31_UJA1132_NumChannels@ha
	lbz		r5,LinTrcv_31_UJA1132_NumChannels@l(r5)
	se_cmp		r6,r5
	bc		0,0,.L505	# ge
#                                                             LinNetworkIndex++)
#     {
#         /* PRQA S 2824 2 */ /* Typically caused by our current pattern for PB structures */
#         /* PRQA S 491 1 */ /*MISRA 17.4 violation; Typically caused by our current pattern for PB structures (huge number of variable length arrays).*/
#         if( LinNetworkId == LINTRCV_31_UJA1132_CONFIG_P[LinNetworkIndex].ChannelId)
	.d2line		59
	rlwinm		r6,r3,0,24,31		# LinNetworkIndex=r3
	rlwinm		r7,r0,0,24,31		# LinNetworkId=r0
	lis		r5,LinTrcv_31_UJA1132_ConfigPtr@ha
	lwz		r5,LinTrcv_31_UJA1132_ConfigPtr@l(r5)
	rlwinm		r31,r6,4,0,27
	se_slwi		r6,2
	subf		r6,r6,r31
	lbzx		r5,r5,r6
	se_cmp		r7,r5
#         {
#             RetLinChIndex =  LinNetworkIndex;
	.d2line		61
	isel		r4,r3,r4,2		# RetLinChIndex=r4 LinNetworkIndex=r3 RetLinChIndex=r4
.L506:
#         }
#     }
	.d2line		63
	diab.addi		r6,r3,1		# LinNetworkIndex=r3
	se_addi		r3,1		# LinNetworkIndex=r3 LinNetworkIndex=r3
	b		.L503
.L505:
# 
#     return (RetLinChIndex);
	.d2line		65
.Llo4:
	rlwinm		r3,r4,0,24,31		# LinNetworkIndex=r3 RetLinChIndex=r4
# }/* End of LINTRCV_GET_CHANNEL_INDEX */
	.d2line		66
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# LinNetworkIndex=r0
	mtspr		lr,r0		# LinNetworkIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo8:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L596:
	.type		LinTrcv_31_UJA1132_GetChannelIndex,@function
	.size		LinTrcv_31_UJA1132_GetChannelIndex,.-LinTrcv_31_UJA1132_GetChannelIndex
# Number of nodes = 30

# Allocations for LinTrcv_31_UJA1132_GetChannelIndex
#	?a4		LinNetworkId
#	?a5		$$134
#	?a6		LinNetworkIndex
#	?a7		RetLinChIndex
# FUNC (void , LINTRCV_CODE)LinTrcv_31_UJA1132_PrepareSpiData
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         96,27
#$$ld
.L609:

#$$bf	LinTrcv_31_UJA1132_PrepareSpiData,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		LinTrcv_31_UJA1132_PrepareSpiData
	.d2_cfa_start __cie
LinTrcv_31_UJA1132_PrepareSpiData:
.Llo9:
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
#             ( CONSTP2VAR(uint16, AUTOMATIC, LINTRCV_APPL_DATA) DataToBeSent_p,
#               CONST(uint8, AUTOMATIC) RegAddr_u8,
#               CONST(uint8, AUTOMATIC) WrittenData_u8,
#               CONSTP2VAR(uint8, AUTOMATIC, LINTRCV_APPL_DATA) DataIndex_p,
#               CONST (boolean, AUTOMATIC) ReadOnlyFlag )
# {
# 
#     /* Putting the register address and the data in one SPI data element.
#        The frame format of LinTrcv UJA1132 should be as following
#        |Address (7-bits)|Read-Only (1-bit)|Data (8-bits)|. The SPI driver
#        must send starting from the MSB*/
# 
#     /* Initialization */
#     if (ReadOnlyFlag == TRUE)
	.d2line		110
	rlwinm		r7,r7,0,24,31		# ReadOnlyFlag=r7 ReadOnlyFlag=r7
	se_cmpi		r7,1		# ReadOnlyFlag=r7
	bc		0,2,.L511	# ne
#     {
#         
#         (*DataToBeSent_p) = LINTRCV_31_UJA1132_SPI_ROF_INIT_DATA_VAL; /* PRQA S 2814 */ /* Typically caused by our current pattern for PB structures */
	.d2line		113
.Llo14:
	diab.li		r0,256
	sth		r0,0(r3)		# DataToBeSent_p=r3
	b		.L512
.L511:
# 
#     }
#     else
#     {
# 
#         (*DataToBeSent_p) = 0x0000;
	.d2line		119
	diab.li		r0,0
	sth		r0,0(r3)		# DataToBeSent_p=r3
.L512:
# 
#     }
# 
#     /* Adding the Address & Read-Only bits to the SPI element */
#     (*DataToBeSent_p) = (*DataToBeSent_p) | ( ((uint16)RegAddr_u8) << LINTRCV_31_UJA1132_SPI_ADDRESS_SHIFT_VAL );
	.d2line		124
.Llo11:
	lhz		r7,0(r3)		# ReadOnlyFlag=r7 DataToBeSent_p=r3
.Llo12:
	rlwinm		r4,r4,9,15,22		# RegAddr_u8=r4 RegAddr_u8=r4
	or		r4,r4,r7		# RegAddr_u8=r4 RegAddr_u8=r4 ReadOnlyFlag=r7
	sth		r4,0(r3)		# DataToBeSent_p=r3 RegAddr_u8=r4
# 
#     /* Adding the data to be written in the register.
#        According to UJA1132, In case of Read-only, the written data is ignored */
#     (*DataToBeSent_p) = (*DataToBeSent_p) | ((uint16)WrittenData_u8);
	.d2line		128
	se_extzh		r4		# RegAddr_u8=r4
.Llo13:
	rlwinm		r5,r5,0,24,31		# WrittenData_u8=r5 WrittenData_u8=r5
	or		r4,r4,r5		# RegAddr_u8=r4 RegAddr_u8=r4 WrittenData_u8=r5
	sth		r4,0(r3)		# DataToBeSent_p=r3 RegAddr_u8=r4
# 
#     (*DataIndex_p) = (*DataIndex_p) + 1; /* PRQA S 2814 */ /* Typically caused by our current pattern for PB structures */
	.d2line		130
	lbz		r3,0(r6)		# DataToBeSent_p=r3 DataIndex_p=r6
	se_addi		r3,1		# DataToBeSent_p=r3 DataToBeSent_p=r3
	stb		r3,0(r6)		# DataIndex_p=r6 DataToBeSent_p=r3
# 
# }
	.d2line		132
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo10:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L610:
	.type		LinTrcv_31_UJA1132_PrepareSpiData,@function
	.size		LinTrcv_31_UJA1132_PrepareSpiData,.-LinTrcv_31_UJA1132_PrepareSpiData
# Number of nodes = 38

# Allocations for LinTrcv_31_UJA1132_PrepareSpiData
#	?a4		DataToBeSent_p
#	?a5		RegAddr_u8
#	?a6		WrittenData_u8
#	?a7		DataIndex_p
#	?a8		ReadOnlyFlag
# FUNC (LinTrcv_SpiTransStatus , LINTRCV_CODE)LinTrcv_31_UJA1132_SpiTransmit
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         169,45
#$$ld
.L627:

#$$bf	LinTrcv_31_UJA1132_SpiTransmit,interprocedural,rasave,nostackparams
	.globl		LinTrcv_31_UJA1132_SpiTransmit
	.d2_cfa_start __cie
LinTrcv_31_UJA1132_SpiTransmit:
.Llo15:
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
#               ( CONSTP2CONST (LinTrcv_31_UJA1132_ChannelConfig, LINTRCV_VAR_FAST, LINTRCV_31_UJA1132_APPL_CONST)LtConfig_p,
#                 CONSTP2CONST(uint16, AUTOMATIC, LINTRCV_APPL_DATA) DataToBeSent,
#                 CONSTP2VAR(uint16, AUTOMATIC, LINTRCV_APPL_DATA) DataToBeReceived,
#                 CONST (Spi_NumberOfDataType, AUTOMATIC) NumOfSpiDataElements )
# {
# 
#     /* Variable holds the status of the last transmission of this sequence
#        (pending, transmitted or failed)*/
#     VAR(Spi_SeqResultType,AUTOMATIC)  SpiTxStatus;
# 
#     /* Temp variable to hold the LinTrcv-Spi communication status*/
#     VAR(LinTrcv_SpiTransStatus,AUTOMATIC)  TmpTransmissionStatus;
# 
#     VAR(Std_ReturnType,AUTOMATIC)  RetValue;
# 
#     CONST(uint8,AUTOMATIC) dataTypeRatio = (uint8)(sizeof(uint16) / sizeof(Spi_DataType));
#     /* Get the status of the last transmission (if any) */
#     SpiTxStatus = Spi_GetSequenceResult( LtConfig_p->SpiSeqId ); /* PRQA S 2814 */ /* Typically caused by our current pattern for PB structures */
	.d2line		187
	lbz		r3,8(r31)		# SpiTxStatus=r3 LtConfig_p=r31
.Llo16:
	bl		Spi_GetSequenceResult
.Llo21:
	mr		r3,r3		# SpiTxStatus=r3 SpiTxStatus=r3
# 
# 
# 
#     /* If there is a transmission pending then we can't start the current transmission*/
#     if ( SpiTxStatus == SPI_SEQ_PENDING )
	.d2line		192
	se_cmpi		r3,1		# SpiTxStatus=r3
	bc		0,2,.L516	# ne
#     {
# 
#         TmpTransmissionStatus = LINTRCV_LAST_TX_PENDING;
	.d2line		195
.Llo17:
	diab.li		r3,1		# TmpTransmissionStatus=r3
.Llo23:
	b		.L517
.L516:
# 
#     }
#     else
#     {
# 
#         /* Setup the sent/Received data buffers for SPI communication*/
#         if (DataToBeReceived == NULL_PTR)
	.d2line		202
.Llo24:
	se_cmpi		r29,0		# DataToBeReceived=r29
	bc		0,2,.L518	# ne
#         {
#             /* When transmission occurs, received Data will be ignored */
#             RetValue =  Spi_SetupEB( LtConfig_p->LinTrcvSpiChannelId, (const Spi_DataType *const) DataToBeSent,
	.d2line		205
	lbz		r3,9(r31)		# SpiTxStatus=r3 LtConfig_p=r31
	rlwinm		r6,r27,1,16,30		# NumOfSpiDataElements=r27
	mr		r4,r30		# DataToBeSent=r4 DataToBeSent=r30
	diab.li		r5,0
	bl		Spi_SetupEB
.Llo28:
	mr		r3,r3		# RetValue=r3 RetValue=r3
	b		.L519
.L518:
#                                      NULL_PTR, NumOfSpiDataElements*dataTypeRatio );
# 
#         }
#         else
#         {
# 
#             RetValue =  Spi_SetupEB( LtConfig_p->LinTrcvSpiChannelId, (const Spi_DataType *const) DataToBeSent,
	.d2line		212
.Llo29:
	lbz		r3,9(r31)		# SpiTxStatus=r3 LtConfig_p=r31
	rlwinm		r6,r27,1,16,30		# NumOfSpiDataElements=r27
	mr		r4,r30		# DataToBeSent=r4 DataToBeSent=r30
	mr		r5,r29		# DataToBeReceived=r5 DataToBeReceived=r29
	bl		Spi_SetupEB
.Llo30:
	mr		r3,r3		# RetValue=r3 RetValue=r3
.L519:
#                                      (Spi_DataType*) DataToBeReceived, NumOfSpiDataElements*dataTypeRatio );
# 
#         }
# 
#         if ( RetValue == E_OK )
	.d2line		217
.Llo22:
	rlwinm		r3,r3,0,24,31		# RetValue=r3 RetValue=r3
	se_cmpi		r3,0		# RetValue=r3
	bc		0,2,.L520	# ne
#         {
# 
#             /* Transmit the Data to the LinTrcv HW synchronously */
#             RetValue = Spi_SyncTransmit( LtConfig_p->SpiSeqId );
	.d2line		221
.Llo25:
	lbz		r3,8(r31)		# RetValue=r3 LtConfig_p=r31
	bl		Spi_SyncTransmit
.Llo31:
	mr		r3,r3		# RetValue=r3 RetValue=r3
# 
#             if ( RetValue == E_OK )
	.d2line		223
	rlwinm		r3,r3,0,24,31		# RetValue=r3 RetValue=r3
	se_cmpi		r3,0		# RetValue=r3
#             {
#                 /* Transmission to the LinTrcv succeeded*/
#                 TmpTransmissionStatus = LINTRCV_TX_SUCCEEDED;
	.d2line		226
	isel		r3,0,r28,2		# TmpTransmissionStatus=r3 TmpTransmissionStatus=r28
.L521:
# 
#             }
#             else
#             {
# 
#                 /* The Spi_SyncTransmit/Spi_AsyncTransmit returned error */
#                 TmpTransmissionStatus = LINTRCV_TX_FAILED;
	.d2line		233
.Llo18:
	diab.li		r0,3
.Llo26:
	isel		r3,r3,r0,2		# TmpTransmissionStatus=r3 TmpTransmissionStatus=r3
	b		.L517
.L520:
# 
#             }
# 
#         }
#         else
#         {
#             /* The Spi_SetupEB returned error */
#             TmpTransmissionStatus = LINTRCV_EBSETUP_FAILED;
	.d2line		241
.Llo19:
	diab.li		r3,2		# TmpTransmissionStatus=r3
.L517:
# 
#         }
# 
#     }
# 
#     return TmpTransmissionStatus;
	.d2line		247
.Llo20:
	mr		r3,r3		# TmpTransmissionStatus=r3 TmpTransmissionStatus=r3
# 
# }
	.d2line		249
	.d2epilogue_begin
.Llo27:
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
.L628:
	.type		LinTrcv_31_UJA1132_SpiTransmit,@function
	.size		LinTrcv_31_UJA1132_SpiTransmit,.-LinTrcv_31_UJA1132_SpiTransmit
# Number of nodes = 90

# Allocations for LinTrcv_31_UJA1132_SpiTransmit
#	?a4		LtConfig_p
#	?a5		DataToBeSent
#	?a6		DataToBeReceived
#	?a7		NumOfSpiDataElements
#	?a8		SpiTxStatus
#	?a9		TmpTransmissionStatus
#	?a10		RetValue
#	not allocated	dataTypeRatio
# FUNC (Std_ReturnType, LINTRCV_CODE) LinTrcv_31_UJA1132_Configure_HW
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         387,37
#$$ld
.L657:

#$$bf	LinTrcv_31_UJA1132_Configure_HW,interprocedural,rasave,nostackparams
	.globl		LinTrcv_31_UJA1132_Configure_HW
	.d2_cfa_start __cie
LinTrcv_31_UJA1132_Configure_HW:
.Llo32:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
.Llo74:
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)		# TransmissionStatus=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# LinNetwork_u8=r0 LinNetwork_u8=r3
.Llo75:
	mr		r31,r4		# DataToBeSent=r31 DataToBeSent=r4
.Llo36:
	mr		r30,r5		# DataLength_p=r30 DataLength_p=r5
	.d2prologue_end
# (
#     CONST(uint8, AUTOMATIC) LinNetwork_u8,
#     CONSTP2VAR(uint16, AUTOMATIC, LINTRCV_APPL_DATA) DataToBeSent,
#     CONSTP2VAR(uint8, AUTOMATIC, LINTRCV_APPL_DATA) DataLength_p
# )
# {
# 
#     VAR(Std_ReturnType, AUTOMATIC) ReturnValue ;
# 
#     /* Operation mode. */
#     VAR (LinTrcv_TrcvModeType, AUTOMATIC)InitOpMode;
# 
#     /* Variable to hold the data of any register to be written*/
#     VAR (uint16, AUTOMATIC)RegData_u16;
# 
#     /* Variable to hold the number or SPI data elements to be sent/received*/
#     VAR (uint8, AUTOMATIC)DataIndex_u8 =0;
	.d2line		404
.Llo37:
	diab.li		r5,0
.Llo39:
	stb		r5,8(r1)
# 
#     /* Variable to hold the LinTrcv-Spi communication status*/
#     VAR(LinTrcv_SpiTransStatus,AUTOMATIC)  TransmissionStatus;
# 
#     /* Variable holds the data to be received from LinTrcv via SPI.*/
#     VAR(uint16, AUTOMATIC) DataToBeReceived = 0;
	.d2line		410
	sth		r5,10(r1)
#     
#     VAR (LinTrcv_TrcvModeType, AUTOMATIC) TmpLinTrcvCurrentState;  
# 
#     /* Pointer to the Status array for each Channel. */
#     P2VAR(LinTrcv_31_UJA1132_ChannelStatus, AUTOMATIC, LINTRCV_VAR_FAST)Status_p;
#     /* Pointer to index the constant LinkTime Configuration Array. */
#     P2CONST (LinTrcv_31_UJA1132_ChannelConfig, LINTRCV_VAR_FAST, LINTRCV_APPL_CONST)LtConfig_p ;
# 
#     /* Get the pointer to the structure of the Network. */
#     LtConfig_p = &(LINTRCV_31_UJA1132_CONFIG_P[LinNetwork_u8]); /* PRQA S 2824 */ /* Typically caused by our current pattern for PB structures */
	.d2line		420
	rlwinm		r4,r0,0,24,31		# LinNetwork_u8=r0
	lis		r3,LinTrcv_31_UJA1132_ConfigPtr@ha		# LtConfig_p=r3
.Llo33:
	lwz		r27,LinTrcv_31_UJA1132_ConfigPtr@l(r3)		# LtConfig_p=r27 LtConfig_p=r3
	rlwinm		r3,r4,4,0,27		# LtConfig_p=r3
	se_slwi		r4,2
	subf		r4,r4,r3		# LtConfig_p=r3
	se_add		r4,r27		# LtConfig_p=r27
	mr		r27,r4		# LtConfig_p=r27 LtConfig_p=r4
#      Status_p = &(LINTRCV_31_UJA1132_STATUS_P[LinNetwork_u8]) ; /* PRQA S 2824 */ /* Typically caused by our current pattern for PB structures */
	.d2line		421
.Llo103:
	lis		r3,LinTrcv_31_UJA1132_Status_p@ha		# LtConfig_p=r3
.Llo104:
	lwz		r3,LinTrcv_31_UJA1132_Status_p@l(r3)		# LtConfig_p=r3 LtConfig_p=r3
.Llo34:
	rlwinm		r0,r0,3,21,28		# LinNetwork_u8=r0 LinNetwork_u8=r0
	se_add		r0,r3		# LinNetwork_u8=r0 LinNetwork_u8=r0 LtConfig_p=r3
.Llo35:
	mr		r3,r0		# Status_p=r3 Status_p=r0
#      TmpLinTrcvCurrentState = Status_p->CurrentState; /* PRQA S 2814 */ /* Typically caused by our current pattern for PB structures */
	.d2line		422
	lwz		r28,0(r3)		# Status_p=r3
.Llo100:
	mr		r28,r28		# TmpLinTrcvCurrentState=r28 TmpLinTrcvCurrentState=r28
# 
#     /* Copy the configured init state of Transceiver. */
#     InitOpMode = LtConfig_p->InitState; /* PRQA S 2814 */ /* Typically caused by our current pattern for PB structures */
	.d2line		425
	lwz		r29,4(r27)		# LtConfig_p=r27
.Llo53:
	mr		r29,r29		# InitOpMode=r29 InitOpMode=r29
# 
#     /* Read LinTrcv Control register via SPI */
#     /* PRQA S 492 2 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type.*/
#     LinTrcv_31_UJA1132_PrepareSpiData(&DataToBeSent[DataIndex_u8], LINTRCV_31_UJA1132_MODE_CONTROL_REGADDR, 0x00, &DataIndex_u8, TRUE); /* PRQA S 2824 */ /* Typically caused by our current pattern for PB structures */           
	.d2line		429
	diab.addi		r6,r1,8
	mr		r3,r31		# DataToBeSent=r3 DataToBeSent=r31
	diab.li		r4,1
	diab.li		r7,1
	bl		LinTrcv_31_UJA1132_PrepareSpiData
#     TransmissionStatus = LinTrcv_31_UJA1132_SpiTransmit (LtConfig_p, &DataToBeSent[0], &DataToBeReceived, DataIndex_u8 );
	.d2line		430
.Llo102:
	lbz		r6,8(r1)
	diab.addi		r5,r1,10
	mr		r3,r27		# LtConfig_p=r3 LtConfig_p=r27
	mr		r4,r31		# DataToBeSent=r4 DataToBeSent=r31
	bl		LinTrcv_31_UJA1132_SpiTransmit
	.d2line		433
	mr.		r0,r3		# TransmissionStatus=?a12 TransmissionStatus=r3
#       
#       
#     if ( TransmissionStatus != LINTRCV_TX_SUCCEEDED )
	bc		1,2,.L531	# eq
#     {
#         ReturnValue = E_NOT_OK;
	.d2line		435
.Llo40:
	diab.li		r3,1		# ReturnValue=r3
.Llo41:
	b		.L532
.L531:
#     }
#     else
#     {
#         ReturnValue = E_OK;
	.d2line		439
.Llo42:
	diab.li		r3,0		# ReturnValue=r3
# 
#         /* Initialization */
#         DataIndex_u8 = 0;
	.d2line		442
.Llo43:
	diab.li		r26,0
.Llo58:
	stb		r26,8(r1)
# 
#         /* Adjust Data to be sent to LinTrcv to be masked by the need requested opmode via SPI */
#         /* PRQA S 492 1 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type.*/
#         
#         /************************************** CONFIGURING LINTRCV MODE **************************************/
#         /* Initialization */
#         RegData_u16 = 0x0000;
# 
#         /* Initialize the LinTrcv with the given LinTrcv state*/
#         switch (InitOpMode)
	.d2line		452
	mr.		r6,r29		# InitOpMode=r6 InitOpMode=?a10
	bc		1,2,.L533	# eq
	se_cmpi		r6,1
	bc		1,2,.L546	# eq
	se_cmpi		r6,2
	bc		1,2,.L543	# eq
	b		.L549
.L533:
#         {
#             case LINTRCV_TRCV_MODE_NORMAL:
#                 /* Setting to Normal mode */              
#                
#                  if((DataToBeReceived & LINTRCV_31_UJA1132_SBC_MODE_NORMAL) == LINTRCV_31_UJA1132_SBC_MODE_NORMAL)
	.d2line		457
	lhz		r0,10(r1)		# TransmissionStatus=r0
.Llo76:
	rlwinm		r0,r0,0,29,31		# TransmissionStatus=r0 TransmissionStatus=r0
	se_cmpi		r0,7		# TransmissionStatus=r0
	bc		0,2,.L534	# ne
#                 {
#                  /* Setting to Normal mode */
#                 
#                  if(LtConfig_p->LinTrcvName == LIN1)
	.d2line		461
.Llo77:
	lbz		r0,1(r27)		# TransmissionStatus=r0 LtConfig_p=r27
.Llo78:
	se_cmpi		r0,0		# TransmissionStatus=r0
#                    {
#                    /* PRQA S 4130 1 */
#                     RegData_u16 = RegData_u16 | (uint16)LINTRCV_31_UJA1132_LIN1_NORMAL_SBC_NORMAL;    
	.d2line		464
	diab.li		r4,1		# RegData_u16=r4
	isel		r4,r4,r26,2		# RegData_u16=r4 RegData_u16=r4 RegData_u16=r26
.L535:
#                    }
#                    else
#                    {
#                    /* PRQA S 4130 1 */
#                      RegData_u16 = RegData_u16 | (uint16)LINTRCV_31_UJA1132_LIN2_NORMAL_SBC_NORMAL; 
	.d2line		469
.Llo59:
	diab.li		r0,16		# TransmissionStatus=r0
.Llo60:
	isel		r26,r4,r0,2		# RegData_u16=r26 RegData_u16=r4 TransmissionStatus=r0
	b		.L542
.L534:
#                    }
#                 }
#                else if((DataToBeReceived & LINTRCV_31_UJA1132_SBC_MODE_STANDBY) == LINTRCV_31_UJA1132_SBC_MODE_STANDBY)
	.d2line		472
.Llo61:
	lhz		r0,10(r1)		# TransmissionStatus=r0
.Llo62:
	se_btsti		r0,29		# TransmissionStatus=r0
	bc		1,2,.L538	# eq
#                 {
#                    /* Setting to Normal mode */
#                 
#                  if(LtConfig_p->LinTrcvName == LIN1)
	.d2line		476
.Llo79:
	lbz		r0,1(r27)		# TransmissionStatus=r0 LtConfig_p=r27
.Llo80:
	se_cmpi		r0,0		# TransmissionStatus=r0
#                    {
#                    /* PRQA S 4130 1 */
#                     RegData_u16 = RegData_u16 | (uint16)LINTRCV_31_UJA1132_LIN1_NORMAL_SBC_STANDBY;    
	.d2line		479
	diab.li		r4,2		# RegData_u16=r4
	isel		r4,r4,r26,2		# RegData_u16=r4 RegData_u16=r4 RegData_u16=r26
.L539:
#                    }
#                    else
#                    {
#                    /* PRQA S 4130 1 */
#                      RegData_u16 = RegData_u16 | (uint16)LINTRCV_31_UJA1132_LIN2_NORMAL_SBC_STANDBY; 
	.d2line		484
.Llo63:
	diab.li		r0,32		# TransmissionStatus=r0
.Llo64:
	isel		r26,r4,r0,2		# RegData_u16=r26 RegData_u16=r4 TransmissionStatus=r0
	b		.L542
.L538:
#                    }
#                 }
#                 
#                 else
#                 {
#                   ReturnValue = E_NOT_OK; /*SBC is in sleep mode*/
	.d2line		490
.Llo65:
	diab.li		r3,1		# ReturnValue=r3
.Llo66:
	b		.L542
.L543:
#                 }         
# 
# #if(STD_ON == LINTRCV_31_UJA1132_ICU_ENABLE)
#                 /*Disable the notification on the channel*/
#                 /* PRQA S 3344 2 */ /* Not a MISRA 13.2 violation; operand is boolean */
#                 if (LtConfig_p->IsIcuRefExist == TRUE)
#                 {                
#                     Icu_DisableNotification(LtConfig_p->IcuChannelRef);
#                 }
# #endif /* LINTRCV_31_UJA1132_ICU_ENABLE */                
#                 break;
#             case LINTRCV_TRCV_MODE_SLEEP:
#                  RegData_u16 = LINTRCV_31_UJA1132_ALL_ONES_U16VAL;
	.d2line		503
	diab.li		r0,65535		# RegData_u16=r0
#                  if(LtConfig_p->LinTrcvName == LIN1)
	.d2line		504
	lbz		r0,1(r27)		# RegData_u16=r0 LtConfig_p=r27
	se_cmpi		r0,0		# RegData_u16=r0
#                    {
#                     /* Setting to sleep mode */
#                     RegData_u16 = RegData_u16 & (uint16)LINTRCV_31_UJA1132_LIN1_SLEEP;  /*in LINTRCV_31_UJA1132_TRCV_CONTROL_REGADDR*/                  
	.d2line		507
	diab.li		r4,65532		# RegData_u16=r4
	isel		r4,r4,r26,2		# RegData_u16=r4 RegData_u16=r4 RegData_u16=r26
.L544:
#                    }
#                  else
#                    {
#                    /* Setting to sleep mode */
#                     RegData_u16 = RegData_u16 & (uint16)LINTRCV_31_UJA1132_LIN2_SLEEP;                    
	.d2line		512
.Llo67:
	diab.li		r0,65487		# RegData_u16=r0
.Llo68:
	isel		r26,r4,r0,2		# RegData_u16=r26 RegData_u16=r4 RegData_u16=r0
	b		.L542
.L546:
#                    }    
# #if(STD_ON == LINTRCV_31_UJA1132_ICU_ENABLE)
#                 /*Disable the notification on the channel*/
#                 /* PRQA S 3344 2 */ /* Not a MISRA 13.2 violation; operand is boolean */
#                 if (LtConfig_p->IsIcuRefExist  == TRUE)
#                 {                
#                     Icu_EnableNotification(LtConfig_p->IcuChannelRef);
#                 }
# #endif /*  LINTRCV_31_UJA1132_ICU_ENABLE */
#                 break;
#             case LINTRCV_TRCV_MODE_STANDBY:
#             
#               if(LtConfig_p->LinTrcvName == LIN1)
	.d2line		525
.Llo69:
	lbz		r0,1(r27)		# TransmissionStatus=r0 LtConfig_p=r27
.Llo70:
	se_cmpi		r0,0		# TransmissionStatus=r0
#                    {
#                    /* PRQA S 4130 1 */
#                     RegData_u16 = RegData_u16 | (uint16)LINTRCV_31_UJA1132_LIN1_STANDBY;    
	.d2line		528
	diab.li		r4,3		# RegData_u16=r4
	isel		r4,r4,r26,2		# RegData_u16=r4 RegData_u16=r4 RegData_u16=r26
.L547:
#                    }
#                    else
#                    {
#                    /* PRQA S 4130 1 */
#                      RegData_u16 = RegData_u16 | (uint16)LINTRCV_31_UJA1132_LIN2_STANDBY; 
	.d2line		533
.Llo71:
	diab.li		r0,48		# TransmissionStatus=r0
.Llo72:
	isel		r26,r4,r0,2		# RegData_u16=r26 RegData_u16=r4 TransmissionStatus=r0
	b		.L542
.L549:
#                    }
#             
#             
#                 break;
#              /* PRQA S 2018 3 */ /* The "default" branch will be reached if value outside of enum is passed to the function */
#             default :
#                 ReturnValue = E_NOT_OK;
	.d2line		540
.Llo44:
	diab.li		r3,1		# ReturnValue=r3
.L542:
#                 break;
#         }
# 
#         /* Convert the control commands (to be sent to the LinTrcv) into the appropriate SPI format */
#         if(E_NOT_OK != ReturnValue)
	.d2line		545
.Llo45:
	rlwinm		r0,r3,0,24,31		# TransmissionStatus=r0 ReturnValue=r3
.Llo81:
	se_cmpi		r0,1		# TransmissionStatus=r0
	bc		1,2,.L563	# eq
#         {
#             /* Read LinTrcv Control register via SPI */
#              /* PRQA S 492 2 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type.*/
#             LinTrcv_31_UJA1132_PrepareSpiData(&DataToBeSent[DataIndex_u8], LINTRCV_31_UJA1132_TRCV_CONTROL_REGADDR, 0x00, &DataIndex_u8, TRUE);            
	.d2line		549
.Llo46:
	lbz		r3,8(r1)		# ReturnValue=r3
.Llo47:
	rlwinm		r3,r3,1,23,30		# ReturnValue=r3 ReturnValue=r3
	se_add		r3,r31		# ReturnValue=r3 ReturnValue=r3 DataToBeSent=r31
.Llo48:
	diab.addi		r6,r1,8
	diab.li		r4,33		# RegData_u16=r4
	diab.li		r5,0
	diab.li		r7,1
	bl		LinTrcv_31_UJA1132_PrepareSpiData
#             TransmissionStatus = LinTrcv_31_UJA1132_SpiTransmit (LtConfig_p, DataToBeSent, &DataToBeReceived, DataIndex_u8 );
	.d2line		550
	lbz		r6,8(r1)
	diab.addi		r5,r1,10
	mr		r3,r27		# LtConfig_p=r3 LtConfig_p=r27
	mr		r4,r31		# DataToBeSent=r4 DataToBeSent=r31
	bl		LinTrcv_31_UJA1132_SpiTransmit
	.d2line		551
	mr.		r0,r3		# TransmissionStatus=?a12 TransmissionStatus=r3
#             if ( TransmissionStatus != LINTRCV_TX_SUCCEEDED )
	bc		1,2,.L551	# eq
#             {            
#                 ReturnValue = E_NOT_OK;
	.d2line		553
	diab.li		r3,1		# ReturnValue=r3
.Llo49:
	b		.L563
.L551:
#             }
#             else
#             {
#                 ReturnValue = E_OK;
	.d2line		557
.Llo50:
	diab.li		r3,0		# ReturnValue=r3
#                 /* Initialization */
#                 DataIndex_u8 = 0;
	.d2line		559
.Llo51:
	diab.li		r0,0		# TransmissionStatus=r0
.Llo82:
	stb		r0,8(r1)		# TransmissionStatus=r0
#                 /* Adjust Data to be sent to LinTrcv to be masked by the need requested opmode via SPI */
#                 DataToBeSent[DataIndex_u8] = DataToBeReceived;  /* PRQA S 492 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type.*/
	.d2line		561
	lhz		r0,10(r1)		# TransmissionStatus=r0
	sth		r0,0(r31)		# DataToBeSent=r31 TransmissionStatus=r0
#                 /* Prepare the command to be written to the LinTrcv Mode register via SPI*/
#                if(TmpLinTrcvCurrentState == LINTRCV_TRCV_MODE_SLEEP)
	.d2line		563
	se_cmpi		r28,2		# TmpLinTrcvCurrentState=r28
	bc		0,2,.L553	# ne
#                 {
#                  DataToBeSent[DataIndex_u8] = DataToBeSent[DataIndex_u8]|RegData_u16;  /* PRQA S 492 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type.*/
	.d2line		565
.Llo83:
	lbz		r5,8(r1)
	rlwinm		r4,r5,1,23,30		# DataToBeSent=r4
	lhzux		r0,r4,r31		# TransmissionStatus=r0 DataToBeSent=r4
.Llo84:
	or		r0,r0,r26		# TransmissionStatus=r0 TransmissionStatus=r0 RegData_u16=r26
	rlwinm		r5,r5,1,23,30
	sthx		r0,r31,r5		# DataToBeSent=r31 TransmissionStatus=r0
	b		.L554
.L553:
#                 }
#                 else if(TmpLinTrcvCurrentState == LINTRCV_TRCV_MODE_STANDBY)
	.d2line		567
.Llo85:
	se_cmpi		r28,1		# TmpLinTrcvCurrentState=r28
	bc		0,2,.L555	# ne
#                 {
#                   if(LtConfig_p->LinTrcvName == LIN1)
	.d2line		569
.Llo101:
	lbz		r0,1(r27)		# TransmissionStatus=r0 LtConfig_p=r27
.Llo86:
	se_cmpi		r0,0		# TransmissionStatus=r0
	bc		0,2,.L556	# ne
#                   {
#                    DataToBeSent[DataIndex_u8] = DataToBeSent[DataIndex_u8]& (RegData_u16 | REG_MASK_LIN1);  /* PRQA S 492 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type.*/
	.d2line		571
.Llo54:
	lbz		r0,8(r1)		# TransmissionStatus=r0
.Llo87:
	rlwinm		r4,r0,1,23,30		# DataToBeSent=r4 TransmissionStatus=r0
	lhzux		r5,r4,r31		# DataToBeSent=r4
	diab.li		r4,65520		# DataToBeSent=r4
	or		r4,r4,r26		# DataToBeSent=r4 DataToBeSent=r4 RegData_u16=r26
	and		r4,r4,r5		# DataToBeSent=r4 DataToBeSent=r4
	rlwinm		r0,r0,1,23,30		# TransmissionStatus=r0 TransmissionStatus=r0
.Llo88:
	sthx		r4,r31,r0		# DataToBeSent=r31 DataToBeSent=r4
	b		.L554
.L556:
#                   }
#                   else
#                   {
#                     DataToBeSent[DataIndex_u8] = DataToBeSent[DataIndex_u8]& (RegData_u16 | REG_MASK_LIN2);  /* PRQA S 492 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type.*/
	.d2line		575
	lbz		r0,8(r1)		# TransmissionStatus=r0
.Llo89:
	rlwinm		r4,r0,1,23,30		# DataToBeSent=r4 TransmissionStatus=r0
	lhzux		r5,r4,r31		# DataToBeSent=r4
	diab.li		r4,65295		# DataToBeSent=r4
	or		r4,r4,r26		# DataToBeSent=r4 DataToBeSent=r4 RegData_u16=r26
	and		r4,r4,r5		# DataToBeSent=r4 DataToBeSent=r4
	rlwinm		r0,r0,1,23,30		# TransmissionStatus=r0 TransmissionStatus=r0
.Llo90:
	sthx		r4,r31,r0		# DataToBeSent=r31 DataToBeSent=r4
	b		.L554
.L555:
#                   }
#                   
#                 }
#                 else
#                 {
#                   /*current is normal mode*/
#                   if(LINTRCV_TRCV_MODE_SLEEP == InitOpMode)
	.d2line		582
.Llo55:
	se_cmpi		r29,2		# InitOpMode=r29
	bc		0,2,.L559	# ne
#                  {
#                   if(LtConfig_p->LinTrcvName == LIN1)
	.d2line		584
.Llo56:
	lbz		r0,1(r27)		# TransmissionStatus=r0 LtConfig_p=r27
.Llo91:
	se_cmpi		r0,0		# TransmissionStatus=r0
	bc		0,2,.L560	# ne
#                   {
#                    DataToBeSent[DataIndex_u8] = DataToBeSent[DataIndex_u8]& (RegData_u16 | REG_MASK_LIN1);  /* PRQA S 492 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type.*/
	.d2line		586
.Llo92:
	lbz		r0,8(r1)		# TransmissionStatus=r0
.Llo93:
	rlwinm		r4,r0,1,23,30		# DataToBeSent=r4 TransmissionStatus=r0
	lhzux		r5,r4,r31		# DataToBeSent=r4
	diab.li		r4,65520		# DataToBeSent=r4
	or		r4,r4,r26		# DataToBeSent=r4 DataToBeSent=r4 RegData_u16=r26
	and		r4,r4,r5		# DataToBeSent=r4 DataToBeSent=r4
	rlwinm		r0,r0,1,23,30		# TransmissionStatus=r0 TransmissionStatus=r0
.Llo94:
	sthx		r4,r31,r0		# DataToBeSent=r31 DataToBeSent=r4
	b		.L554
.L560:
#                   }
#                   else
#                   {
#                    DataToBeSent[DataIndex_u8] = DataToBeSent[DataIndex_u8]& (RegData_u16 | REG_MASK_LIN2);   /* PRQA S 492 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type.*/
	.d2line		590
	lbz		r0,8(r1)		# TransmissionStatus=r0
.Llo95:
	rlwinm		r4,r0,1,23,30		# DataToBeSent=r4 TransmissionStatus=r0
	lhzux		r5,r4,r31		# DataToBeSent=r4
	diab.li		r4,65295		# DataToBeSent=r4
	or		r4,r4,r26		# DataToBeSent=r4 DataToBeSent=r4 RegData_u16=r26
	and		r4,r4,r5		# DataToBeSent=r4 DataToBeSent=r4
	rlwinm		r0,r0,1,23,30		# TransmissionStatus=r0 TransmissionStatus=r0
.Llo96:
	sthx		r4,r31,r0		# DataToBeSent=r31 DataToBeSent=r4
	b		.L554
.L559:
#                   }
#                   
#                  }
#                  else
#                  {
#                  /*new state is standby*/
#                   DataToBeSent[DataIndex_u8] = DataToBeSent[DataIndex_u8]|RegData_u16;  /* PRQA S 492 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type.*/
	.d2line		597
.Llo105:
	lbz		r5,8(r1)
	rlwinm		r4,r5,1,23,30		# DataToBeSent=r4
	lhzux		r0,r4,r31		# TransmissionStatus=r0 DataToBeSent=r4
.Llo97:
	or		r0,r0,r26		# TransmissionStatus=r0 TransmissionStatus=r0 RegData_u16=r26
	rlwinm		r5,r5,1,23,30
	sthx		r0,r31,r5		# DataToBeSent=r31 TransmissionStatus=r0
.L554:
#                  }
#                   
#                 }
#                 DataIndex_u8 = DataIndex_u8 +1;
	.d2line		601
.Llo73:
	lbz		r4,8(r1)		# DataToBeSent=r4
	se_addi		r4,1		# DataToBeSent=r4 DataToBeSent=r4
	stb		r4,8(r1)		# DataToBeSent=r4
#                 /* PRQA S 4130 1 */ /* PRQA S 492 1 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type.*/
#                 LINTRCV_31_UJA1132_CLEAR_BITN(DataToBeSent[DataIndex_u8], LINTRCV_31_UJA1132_SET_OPMODE_REGISTER_WRITE_BIT);        /*register set to write*/      /* PRQA S 492 */ /* Misra rule 17.4, Array subscripting applied to an object of pointer type.*/
	.d2line		603
	se_extzb		r4		# DataToBeSent=r4
	rlwinm		r4,r4,1,23,30		# DataToBeSent=r4 DataToBeSent=r4
	add		r0,r4,r31		# TransmissionStatus=r0 DataToBeSent=r4 DataToBeSent=r31
	lhzx		r0,r4,r31		# TransmissionStatus=r0 DataToBeSent=r4 DataToBeSent=r31
.Llo98:
	.diab.bclri		r0,23		# TransmissionStatus=r0
	sthx		r0,r4,r31		# DataToBeSent=r4 DataToBeSent=r31 TransmissionStatus=r0
.L563:
#             }
#         }
#         else
#         {
#             /* Do Nothing */
#         }
# 
#         (*DataLength_p) = DataIndex_u8; /* PRQA S 2814 */ 
	.d2line		611
.Llo57:
	lbz		r0,8(r1)		# TransmissionStatus=r0
.Llo99:
	stb		r0,0(r30)		# DataLength_p=r30 TransmissionStatus=r0
.L532:
#     }
#     return (ReturnValue);
	.d2line		613
.Llo38:
	rlwinm		r3,r3,0,24,31		# ReturnValue=r3 ReturnValue=r3
#  }
	.d2line		614
	.d2epilogue_begin
.Llo52:
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)		# TransmissionStatus=r0
	mtspr		lr,r0		# TransmissionStatus=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L658:
	.type		LinTrcv_31_UJA1132_Configure_HW,@function
	.size		LinTrcv_31_UJA1132_Configure_HW,.-LinTrcv_31_UJA1132_Configure_HW
# Number of nodes = 372

# Allocations for LinTrcv_31_UJA1132_Configure_HW
#	?a4		LinNetwork_u8
#	?a5		DataToBeSent
#	?a6		DataLength_p
#	?a7		$$135
#	?a8		$$133
#	?a9		ReturnValue
#	?a10		InitOpMode
#	?a11		RegData_u16
#	SP,8		DataIndex_u8
#	?a12		TransmissionStatus
#	SP,10		DataToBeReceived
#	?a13		TmpLinTrcvCurrentState
#	?a14		Status_p
#	?a15		LtConfig_p

# Allocations for module
	.section	.text_vle
	.0byte		.L684
	.section	.text_vle
#$$ld
.L5:
.L698:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Spi.h"
.L695:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\inc\\internal\\LinTrcv_31_UJA1132_Private.h"
.L689:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L685:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\inc\\LinTrcv_31_UJA1132.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L589:
.L597:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132.c"
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
.L586:
	.4byte		.L587-.L585
.L585:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L591-.L586
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L588
	.4byte		.L589
	.4byte		.L592
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L600:
	.sleb128	2
	.4byte		.L594-.L586
	.byte		"LinTrcv_31_UJA1132_GetChannelIndex"
	.byte		0
	.4byte		.L597
	.uleb128	45
	.uleb128	28
	.4byte		.L598
	.byte		0x1
	.byte		0x1
	.4byte		.L595
	.4byte		.L596
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L597
	.uleb128	45
	.uleb128	28
	.byte		"LinNetworkId"
	.byte		0
	.4byte		.L601
	.4byte		.L602
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L603:
	.sleb128	4
	.4byte		.L597
	.uleb128	50
	.uleb128	28
	.byte		"LinNetworkIndex"
	.byte		0
	.4byte		.L598
	.4byte		.L604
.L605:
	.sleb128	4
	.4byte		.L597
	.uleb128	51
	.uleb128	28
	.byte		"RetLinChIndex"
	.byte		0
	.4byte		.L598
	.4byte		.L606
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L594:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L611:
	.sleb128	5
	.4byte		.L608-.L586
	.byte		"LinTrcv_31_UJA1132_PrepareSpiData"
	.byte		0
	.4byte		.L597
	.uleb128	96
	.uleb128	27
	.byte		0x1
	.byte		0x1
	.4byte		.L609
	.4byte		.L610
	.sleb128	3
	.4byte		.L597
	.uleb128	96
	.uleb128	27
	.byte		"DataToBeSent_p"
	.byte		0
	.4byte		.L612
	.4byte		.L616
	.sleb128	3
	.4byte		.L597
	.uleb128	96
	.uleb128	27
	.byte		"RegAddr_u8"
	.byte		0
	.4byte		.L601
	.4byte		.L617
	.sleb128	3
	.4byte		.L597
	.uleb128	96
	.uleb128	27
	.byte		"WrittenData_u8"
	.byte		0
	.4byte		.L601
	.4byte		.L618
	.sleb128	3
	.4byte		.L597
	.uleb128	96
	.uleb128	27
	.byte		"DataIndex_p"
	.byte		0
	.4byte		.L619
	.4byte		.L621
	.sleb128	3
	.4byte		.L597
	.uleb128	96
	.uleb128	27
	.byte		"ReadOnlyFlag"
	.byte		0
	.4byte		.L622
	.4byte		.L624
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L608:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L631:
	.sleb128	2
	.4byte		.L626-.L586
	.byte		"LinTrcv_31_UJA1132_SpiTransmit"
	.byte		0
	.4byte		.L597
	.uleb128	169
	.uleb128	45
	.4byte		.L629
	.byte		0x1
	.byte		0x1
	.4byte		.L627
	.4byte		.L628
	.sleb128	3
	.4byte		.L597
	.uleb128	169
	.uleb128	45
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L632
	.4byte		.L637
	.sleb128	3
	.4byte		.L597
	.uleb128	169
	.uleb128	45
	.byte		"DataToBeSent"
	.byte		0
	.4byte		.L638
	.4byte		.L641
	.sleb128	3
	.4byte		.L597
	.uleb128	169
	.uleb128	45
	.byte		"DataToBeReceived"
	.byte		0
	.4byte		.L612
	.4byte		.L642
	.sleb128	3
	.4byte		.L597
	.uleb128	169
	.uleb128	45
	.byte		"NumOfSpiDataElements"
	.byte		0
	.4byte		.L643
	.4byte		.L645
.L646:
	.sleb128	4
	.4byte		.L597
	.uleb128	178
	.uleb128	39
	.byte		"SpiTxStatus"
	.byte		0
	.4byte		.L647
	.4byte		.L649
.L650:
	.sleb128	4
	.4byte		.L597
	.uleb128	181
	.uleb128	44
	.byte		"TmpTransmissionStatus"
	.byte		0
	.4byte		.L629
	.4byte		.L651
.L652:
	.sleb128	4
	.4byte		.L597
	.uleb128	183
	.uleb128	36
	.byte		"RetValue"
	.byte		0
	.4byte		.L653
	.4byte		.L654
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L626:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L659:
	.sleb128	2
	.4byte		.L656-.L586
	.byte		"LinTrcv_31_UJA1132_Configure_HW"
	.byte		0
	.4byte		.L597
	.uleb128	387
	.uleb128	37
	.4byte		.L653
	.byte		0x1
	.byte		0x1
	.4byte		.L657
	.4byte		.L658
	.sleb128	3
	.4byte		.L597
	.uleb128	387
	.uleb128	37
	.byte		"LinNetwork_u8"
	.byte		0
	.4byte		.L601
	.4byte		.L660
	.sleb128	3
	.4byte		.L597
	.uleb128	387
	.uleb128	37
	.byte		"DataToBeSent"
	.byte		0
	.4byte		.L612
	.4byte		.L661
	.sleb128	3
	.4byte		.L597
	.uleb128	387
	.uleb128	37
	.byte		"DataLength_p"
	.byte		0
	.4byte		.L619
	.4byte		.L662
.L663:
	.sleb128	4
	.4byte		.L597
	.uleb128	395
	.uleb128	36
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L653
	.4byte		.L664
.L665:
	.sleb128	4
	.4byte		.L597
	.uleb128	398
	.uleb128	42
	.byte		"InitOpMode"
	.byte		0
	.4byte		.L666
	.4byte		.L668
.L669:
	.sleb128	4
	.4byte		.L597
	.uleb128	401
	.uleb128	28
	.byte		"RegData_u16"
	.byte		0
	.4byte		.L614
	.4byte		.L670
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L671:
	.sleb128	6
	.4byte		.L597
	.uleb128	404
	.uleb128	27
	.byte		"DataIndex_u8"
	.byte		0
	.4byte		.L598
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L672:
	.sleb128	4
	.4byte		.L597
	.uleb128	407
	.uleb128	44
	.byte		"TransmissionStatus"
	.byte		0
	.4byte		.L629
	.4byte		.L673
.L674:
	.sleb128	6
	.4byte		.L597
	.uleb128	410
	.uleb128	28
	.byte		"DataToBeReceived"
	.byte		0
	.4byte		.L614
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	10
.L675:
	.sleb128	4
	.4byte		.L597
	.uleb128	412
	.uleb128	43
	.byte		"TmpLinTrcvCurrentState"
	.byte		0
	.4byte		.L666
	.4byte		.L676
.L677:
	.sleb128	4
	.4byte		.L597
	.uleb128	415
	.uleb128	73
	.byte		"Status_p"
	.byte		0
	.4byte		.L678
	.4byte		.L681
.L682:
	.sleb128	4
	.4byte		.L597
	.uleb128	417
	.uleb128	85
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L633
	.4byte		.L683
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L656:
	.section	.debug_info,,n
.L684:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L685
	.uleb128	315
	.uleb128	86
	.byte		"LinTrcv_31_UJA1132_Status_p"
	.byte		0
	.4byte		.L686
	.section	.debug_info,,n
.L687:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L685
	.uleb128	319
	.uleb128	85
	.byte		"LinTrcv_31_UJA1132_ConfigPtr"
	.byte		0
	.4byte		.L632
.L688:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L685
	.uleb128	326
	.uleb128	36
	.byte		"LinTrcv_31_UJA1132_NumChannels"
	.byte		0
	.4byte		.L601
	.section	.debug_info,,n
.L680:
	.sleb128	8
	.4byte		.L689
	.uleb128	59
	.uleb128	13
	.4byte		.L690-.L2
	.uleb128	8
	.section	.debug_info,,n
.L500:
	.sleb128	9
	.byte		"CurrentState"
	.byte		0
	.4byte		.L666
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L501:
	.sleb128	9
	.byte		"isInitialised"
	.byte		0
	.4byte		.L623
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L690:
.L636:
	.sleb128	8
	.4byte		.L689
	.uleb128	59
	.uleb128	13
	.4byte		.L691-.L2
	.uleb128	12
.L494:
	.sleb128	9
	.byte		"ChannelId"
	.byte		0
	.4byte		.L601
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L495:
	.sleb128	9
	.byte		"LinTrcvName"
	.byte		0
	.4byte		.L601
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L496:
	.sleb128	9
	.byte		"InitState"
	.byte		0
	.4byte		.L692
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L497:
	.sleb128	9
	.byte		"SpiSeqId"
	.byte		0
	.4byte		.L601
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L498:
	.sleb128	9
	.byte		"LinTrcvSpiChannelId"
	.byte		0
	.4byte		.L601
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L499:
	.sleb128	9
	.byte		"RxDioPin"
	.byte		0
	.4byte		.L693
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L691:
	.section	.debug_info,,n
.L630:
	.sleb128	10
	.4byte		.L695
	.uleb128	161
	.uleb128	14
	.4byte		.L696-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"LINTRCV_TX_SUCCEEDED"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"LINTRCV_LAST_TX_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"LINTRCV_EBSETUP_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"LINTRCV_TX_FAILED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L696:
.L667:
	.sleb128	10
	.4byte		.L689
	.uleb128	59
	.uleb128	13
	.4byte		.L697-.L2
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
.L697:
.L648:
	.sleb128	10
	.4byte		.L698
	.uleb128	439
	.uleb128	1
	.4byte		.L699-.L2
	.uleb128	4
	.sleb128	11
	.byte		"SPI_SEQ_OK"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"SPI_SEQ_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"SPI_SEQ_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"SPI_SEQ_CANCELLED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L699:
	.section	.debug_info,,n
.L599:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L598:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L599
	.section	.debug_info,,n
.L601:
	.sleb128	14
	.4byte		.L598
.L615:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L614:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L615
	.section	.debug_info,,n
.L613:
	.sleb128	15
	.4byte		.L614
.L612:
	.sleb128	14
	.4byte		.L613
.L620:
	.sleb128	15
	.4byte		.L598
.L619:
	.sleb128	14
	.4byte		.L620
.L623:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L599
.L622:
	.sleb128	14
	.4byte		.L623
.L629:
	.sleb128	13
	.byte		"LinTrcv_SpiTransStatus"
	.byte		0
	.4byte		.L630
.L635:
	.sleb128	13
	.byte		"LinTrcv_31_UJA1132_ChannelConfig"
	.byte		0
	.4byte		.L636
.L634:
	.sleb128	14
	.4byte		.L635
.L633:
	.sleb128	15
	.4byte		.L634
.L632:
	.sleb128	14
	.4byte		.L633
.L640:
	.sleb128	14
	.4byte		.L614
.L639:
	.sleb128	15
	.4byte		.L640
.L638:
	.sleb128	14
	.4byte		.L639
.L644:
	.sleb128	13
	.byte		"Spi_NumberOfDataType"
	.byte		0
	.4byte		.L614
.L643:
	.sleb128	14
	.4byte		.L644
.L647:
	.sleb128	13
	.byte		"Spi_SeqResultType"
	.byte		0
	.4byte		.L648
.L653:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L598
.L666:
	.sleb128	13
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L667
.L679:
	.sleb128	13
	.byte		"LinTrcv_31_UJA1132_ChannelStatus"
	.byte		0
	.4byte		.L680
.L678:
	.sleb128	15
	.4byte		.L679
.L686:
	.sleb128	14
	.4byte		.L678
.L692:
	.sleb128	14
	.4byte		.L666
.L694:
	.sleb128	13
	.byte		"Dio_ChannelType"
	.byte		0
	.4byte		.L614
.L693:
	.sleb128	14
	.4byte		.L694
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L591:
	.sleb128	0
.L587:

	.section	.debug_loc,,n
	.align	0
.L602:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locend
.L604:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo4),3
	.d2locend
.L606:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),4
	.d2locend
.L616:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locend
.L617:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo11),4
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo10),4
	.d2locend
.L618:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo11),5
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo10),5
	.d2locend
.L621:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),6
	.d2locend
.L624:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo14),7
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo10),7
	.d2locend
.L637:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),31
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),31
	.d2locend
.L641:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo21),4
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo22),30
	.d2locend
.L642:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo21),5
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo22),29
	.d2locend
.L645:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo21),6
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo22),27
	.d2locend
.L649:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo17),3
	.d2locend
.L651:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo18),28
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo27),3
	.d2locend
.L654:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo18),3
	.d2locend
.L660:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),3
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),0
	.d2locend
.L661:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo36),4
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),31
	.d2locend
.L662:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo39),5
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo38),30
	.d2locend
.L664:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),3
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),3
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),3
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),3
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),3
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),3
	.d2locend
.L668:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),29
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),29
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo38),29
	.d2locend
.L670:
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),26
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),4
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),26
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),4
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),26
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),4
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),26
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo44),4
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo73),26
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo38),26
	.d2locend
.L673:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),0
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),0
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo59),0
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),0
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo79),0
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo63),0
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),0
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),0
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo44),0
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo46),0
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),0
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),0
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo54),0
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),0
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),0
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),0
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),0
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),0
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo73),0
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo57),0
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo38),0
	.d2locend
.L676:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),28
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo38),28
	.d2locend
.L681:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo102),0
	.d2locend
.L683:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo103),3
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo54),27
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo92),27
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo73),27
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo38),27
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinTrcv_31_UJA1132_Configure_HW"
	.wrcm.nstrlist "calls", "LinTrcv_31_UJA1132_PrepareSpiData","LinTrcv_31_UJA1132_SpiTransmit"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "LinTrcv_31_UJA1132_SpiTransmit"
	.wrcm.nstrlist "calls", "Spi_GetSequenceResult","Spi_SetupEB","Spi_SyncTransmit"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "LinTrcv_31_UJA1132_PrepareSpiData"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "LinTrcv_31_UJA1132_GetChannelIndex"
	.wrcm.nint32 "frameSize", 32
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinTrcv\ssc\target\UJA1132\make\..\src\LinTrcv_31_UJA1132.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
