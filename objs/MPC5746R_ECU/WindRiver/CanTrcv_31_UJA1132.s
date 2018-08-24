#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTrcv_31_UJA1132.c"
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
# FUNC (void , CANTRCV_31_UJA1132_CODE)CanTrcv_31_UJA1132_PrepareSpiData
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L768:
	.section	.invalid_TEXT,,c
#$$ld
.L764:
	.0byte		.L762
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132.c"
        .d2line         77,38
#$$ld
.L771:

#$$bf	CanTrcv_31_UJA1132_PrepareSpiData,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		CanTrcv_31_UJA1132_PrepareSpiData
	.d2_cfa_start __cie
CanTrcv_31_UJA1132_PrepareSpiData:
.Llo1:
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
#             ( CONSTP2VAR(uint16, AUTOMATIC, CANTRCV_31_UJA1132_APPL_DATA) DataToBeSent_p,
#               CONST(uint8, AUTOMATIC) RegAddr_u8,
#               CONST(uint8, AUTOMATIC) WrittenData_u8,
#               CONSTP2VAR(uint8, AUTOMATIC, CANTRCV_31_UJA1132_APPL_DATA) DataIndex_p,
#               CONST (boolean, AUTOMATIC) ReadOnlyFlag )
# {
# 
#     /* Putting the register address and the data in one SPI data element.
#        The frame format of CanTrcv UJA1132 should be as following
#        |Address (7-bits)|Read-Only (1-bit)|Data (8-bits)|. The SPI driver
#        must send starting from the MSB*/
# 
#     /* Initialization */
#     if (ReadOnlyFlag == TRUE)
	.d2line		91
	rlwinm		r7,r7,0,24,31		# ReadOnlyFlag=r7 ReadOnlyFlag=r7
	se_cmpi		r7,1		# ReadOnlyFlag=r7
	bc		0,2,.L733	# ne
#     {
#         /* In UJA1132, The LSB in the register address byte indicates
#            that this is a read-only operation */
#         (*DataToBeSent_p) = 0x0001;
	.d2line		95
.Llo6:
	diab.li		r0,1
	sth		r0,0(r3)		# DataToBeSent_p=r3
	b		.L734
.L733:
# 
#     }
#     else
#     {
# 
#         (*DataToBeSent_p) = 0x0000;
	.d2line		101
	diab.li		r0,0
	sth		r0,0(r3)		# DataToBeSent_p=r3
.L734:
# 
#     }
# 
#     /* Adding the Address & Read-Only bits to the SPI element */
#     (*DataToBeSent_p) = (*DataToBeSent_p) | ( RegAddr_u8 << 1 );
	.d2line		106
.Llo3:
	lhz		r7,0(r3)		# ReadOnlyFlag=r7 DataToBeSent_p=r3
.Llo4:
	rlwinm		r4,r4,1,23,30		# RegAddr_u8=r4 RegAddr_u8=r4
	or		r4,r4,r7		# RegAddr_u8=r4 RegAddr_u8=r4 ReadOnlyFlag=r7
	sth		r4,0(r3)		# DataToBeSent_p=r3 RegAddr_u8=r4
# 
#     /* Adding the data to be written in the register.
#        According to UJA1132, In case of Read-only, the written data is ignored */
#     (*DataToBeSent_p) = ( (*DataToBeSent_p) << CANTRCV_31_UJA1132_DATA_TX_MASK ) | WrittenData_u8;
	.d2line		110
	se_extzh		r4		# RegAddr_u8=r4
	se_slwi		r4,8		# RegAddr_u8=r4 RegAddr_u8=r4
.Llo5:
	rlwinm		r5,r5,0,24,31		# WrittenData_u8=r5 WrittenData_u8=r5
	or		r4,r4,r5		# RegAddr_u8=r4 RegAddr_u8=r4 WrittenData_u8=r5
	sth		r4,0(r3)		# DataToBeSent_p=r3 RegAddr_u8=r4
# 
#     (*DataIndex_p) = (*DataIndex_p) + 1;
	.d2line		112
	lbz		r3,0(r6)		# DataToBeSent_p=r3 DataIndex_p=r6
	se_addi		r3,1		# DataToBeSent_p=r3 DataToBeSent_p=r3
	stb		r3,0(r6)		# DataIndex_p=r6 DataToBeSent_p=r3
# 
# }
	.d2line		114
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo2:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L772:
	.type		CanTrcv_31_UJA1132_PrepareSpiData,@function
	.size		CanTrcv_31_UJA1132_PrepareSpiData,.-CanTrcv_31_UJA1132_PrepareSpiData
# Number of nodes = 40

# Allocations for CanTrcv_31_UJA1132_PrepareSpiData
#	?a4		DataToBeSent_p
#	?a5		RegAddr_u8
#	?a6		WrittenData_u8
#	?a7		DataIndex_p
#	?a8		ReadOnlyFlag
# FUNC (CanTrcv_SpiTransStatus , CANTRCV_31_UJA1132_CODE)CanTrcv_31_UJA1132_SpiTransmit
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         151,56
#$$ld
.L793:

#$$bf	CanTrcv_31_UJA1132_SpiTransmit,interprocedural,rasave,nostackparams
	.globl		CanTrcv_31_UJA1132_SpiTransmit
	.d2_cfa_start __cie
CanTrcv_31_UJA1132_SpiTransmit:
.Llo7:
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
#               ( CONSTP2CONST (CanTrcv_31_UJA1132_LtCfgType, CANTRCV_31_UJA1132_VAR_FAST, CANTRCV_31_UJA1132_APPL_CONST)LtConfig_p,
#                 CONSTP2CONST(uint16, AUTOMATIC, CANTRCV_31_UJA1132_APPL_DATA) DataToBeSent,
#                 CONSTP2VAR(uint16, AUTOMATIC, CANTRCV_31_UJA1132_APPL_DATA) DataToBeReceived,
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
	.d2line		169
	lbz		r3,18(r31)		# SpiTxStatus=r3 LtConfig_p=r31
.Llo8:
	bl		Spi_GetSequenceResult
.Llo13:
	mr		r3,r3		# SpiTxStatus=r3 SpiTxStatus=r3
# 
# 	
# 
#     /* If there is a transmission pending then we can't start the current transmssion*/
#     if ( SpiTxStatus == SPI_SEQ_PENDING )
	.d2line		174
	se_cmpi		r3,1		# SpiTxStatus=r3
	bc		0,2,.L738	# ne
#     {
# 
#         TmpTransmissionStatus = CANTRCV_LAST_TX_PENDING;
	.d2line		177
.Llo9:
	diab.li		r3,1		# TmpTransmissionStatus=r3
.Llo15:
	b		.L739
.L738:
# 
#     }
#     else
#     {
# 
#         /* Setup the sent/Received data buffers for SPI communiction*/
#         if (DataToBeReceived == NULL_PTR)
	.d2line		184
.Llo16:
	se_cmpi		r29,0		# DataToBeReceived=r29
	bc		0,2,.L740	# ne
#         {
#             /* When transmssion occurs, received Data will be ignored */
#             RetValue =  Spi_SetupEB( LtConfig_p->CanTrcvSpiChannelId, (const Spi_DataType *const) DataToBeSent,
	.d2line		187
	lbz		r3,17(r31)		# SpiTxStatus=r3 LtConfig_p=r31
	rlwinm		r6,r27,1,16,30		# NumOfSpiDataElements=r27
	mr		r4,r30		# DataToBeSent=r4 DataToBeSent=r30
	diab.li		r5,0
	bl		Spi_SetupEB
.Llo20:
	mr		r3,r3		# RetValue=r3 RetValue=r3
	b		.L741
.L740:
#                                      NULL_PTR, NumOfSpiDataElements*dataTypeRatio );
# 
#         }
#         else
#         {
# 
#             RetValue =  Spi_SetupEB( LtConfig_p->CanTrcvSpiChannelId, (const Spi_DataType *const) DataToBeSent,
	.d2line		194
.Llo21:
	lbz		r3,17(r31)		# SpiTxStatus=r3 LtConfig_p=r31
	rlwinm		r6,r27,1,16,30		# NumOfSpiDataElements=r27
	mr		r4,r30		# DataToBeSent=r4 DataToBeSent=r30
	mr		r5,r29		# DataToBeReceived=r5 DataToBeReceived=r29
	bl		Spi_SetupEB
.Llo22:
	mr		r3,r3		# RetValue=r3 RetValue=r3
.L741:
#                                      (Spi_DataType*) DataToBeReceived, NumOfSpiDataElements*dataTypeRatio );
# 
#         }
# 
#         if ( RetValue == E_OK )
	.d2line		199
.Llo14:
	rlwinm		r3,r3,0,24,31		# RetValue=r3 RetValue=r3
	se_cmpi		r3,0		# RetValue=r3
	bc		0,2,.L742	# ne
#         {
# 
#             /* Transmit the Data to the CanTrcv HW synchronously */
#             RetValue = Spi_SyncTransmit( LtConfig_p->CanTrcvSpiSequenceId );
	.d2line		203
.Llo17:
	lbz		r3,18(r31)		# RetValue=r3 LtConfig_p=r31
	bl		Spi_SyncTransmit
.Llo23:
	mr		r3,r3		# RetValue=r3 RetValue=r3
# 
#             if ( RetValue == E_OK )
	.d2line		205
	rlwinm		r3,r3,0,24,31		# RetValue=r3 RetValue=r3
	se_cmpi		r3,0		# RetValue=r3
#             {
#                 /* Transmission to the CanTrcv succeeded*/
#                 TmpTransmissionStatus = CANTRCV_TX_SUCCEEDED;
	.d2line		208
	isel		r3,0,r28,2		# TmpTransmissionStatus=r3 TmpTransmissionStatus=r28
.L743:
# 
#             }
#             else
#             {
# 
#                 /* The Spi_SyncTransmit/Spi_AsyncTransmit returned error */
#                 TmpTransmissionStatus = CANTRCV_TX_FAILED;
	.d2line		215
.Llo10:
	diab.li		r0,3
.Llo18:
	isel		r3,r3,r0,2		# TmpTransmissionStatus=r3 TmpTransmissionStatus=r3
	b		.L739
.L742:
# 
#             }
# 
#         }
#         else
#         {
#             /* The Spi_SetupEB returned error */
#             TmpTransmissionStatus = CANTRCV_EBSETUP_FAILED;
	.d2line		223
.Llo11:
	diab.li		r3,2		# TmpTransmissionStatus=r3
.L739:
# 
#         }
# 
#     }
# 
#     return TmpTransmissionStatus;
	.d2line		229
.Llo12:
	mr		r3,r3		# TmpTransmissionStatus=r3 TmpTransmissionStatus=r3
# 
# }
	.d2line		231
	.d2epilogue_begin
.Llo19:
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
.L794:
	.type		CanTrcv_31_UJA1132_SpiTransmit,@function
	.size		CanTrcv_31_UJA1132_SpiTransmit,.-CanTrcv_31_UJA1132_SpiTransmit
# Number of nodes = 90

# Allocations for CanTrcv_31_UJA1132_SpiTransmit
#	?a4		LtConfig_p
#	?a5		DataToBeSent
#	?a6		DataToBeReceived
#	?a7		NumOfSpiDataElements
#	?a8		SpiTxStatus
#	?a9		TmpTransmissionStatus
#	?a10		RetValue
#	not allocated	dataTypeRatio
# FUNC (void , CANTRCV_31_UJA1132_CODE) CanTrcv_31_UJA1132_IcuSetNotification
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         261,39
#$$ld
.L823:

#$$bf	CanTrcv_31_UJA1132_IcuSetNotification,interprocedural,rasave,nostackparams
	.globl		CanTrcv_31_UJA1132_IcuSetNotification
	.d2_cfa_start __cie
CanTrcv_31_UJA1132_IcuSetNotification:
.Llo24:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# TrcvMode=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Transceiver=r3 Transceiver=r3
	mr.		r0,r4		# TrcvMode=?a5 TrcvMode=r4
	.d2prologue_end
# (
#     CONST (uint8, AUTOMATIC) Transceiver,
#     CONST (CanTrcv_TrcvModeType, AUTOMATIC)TrcvMode
# )
# {
# 
#     CONSTP2CONST (CanTrcv_31_UJA1132_LtCfgType, CANTRCV_31_UJA1132_VAR_FAST, CANTRCV_31_UJA1132_APPL_CONST)LtConfig_p
	.d2line		268
	rlwinm		r4,r3,0,24,31		# Transceiver=r3
	.d2line		273
.Llo26:
	lis		r3,CanTrcv_31_UJA1132_LtConfig_p@ha		# Transceiver=r3
	lwz		r5,CanTrcv_31_UJA1132_LtConfig_p@l(r3)		# Transceiver=r3
	rlwinm		r3,r4,5,0,26		# Transceiver=r3
	se_slwi		r4,3
	subf		r4,r4,r3		# Transceiver=r3
	se_add		r4,r5
.Llo29:
	mr		r5,r4		# LtConfig_p=r5 LtConfig_p=r4
#                                                 = &(CANTRCV_31_UJA1132_LT_CONFIG_P[Transceiver]);
# 
# 
#     /*Enable/Disable the wakeup events through ICU */
#     if ( CANTRCV_TRCVMODE_NORMAL == TrcvMode )
	bc		0,2,.L753	# ne
#     {
# 
#         /* Disable Wake-up Events*/
#         Icu_DisableNotification( LtConfig_p->CanTrcvIcuChannelId );
	.d2line		277
.Llo25:
	lhz		r3,12(r5)		# Transceiver=r3 LtConfig_p=r5
.Llo30:
	bl		Icu_DisableNotification
.Llo31:
	b		.L752
.L753:
# 
#     }
#     else if ( (CANTRCV_TRCVMODE_STANDBY == TrcvMode) || (CANTRCV_TRCVMODE_SLEEP == TrcvMode) )
	.d2line		280
.Llo27:
	se_cmpi		r0,2		# TrcvMode=r0
	bc		1,2,.L757	# eq
	se_cmpi		r0,1		# TrcvMode=r0
	bc		0,2,.L752	# ne
.L757:
#     {
# 
#         /* Enable Wake-up Events*/
#         Icu_EnableNotification( LtConfig_p->CanTrcvIcuChannelId );
	.d2line		284
.Llo28:
	lhz		r3,12(r5)		# Transceiver=r3 LtConfig_p=r5
	bl		Icu_EnableNotification
.L752:
# 
#     }
#     else
#     {
# 
#         /* Do Nothing */
# 
#     }
# 
# }
	.d2line		294
	.d2epilogue_begin
.Llo32:
	lwz		r0,20(r1)		# TrcvMode=r0
	mtspr		lr,r0		# TrcvMode=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L824:
	.type		CanTrcv_31_UJA1132_IcuSetNotification,@function
	.size		CanTrcv_31_UJA1132_IcuSetNotification,.-CanTrcv_31_UJA1132_IcuSetNotification
# Number of nodes = 35

# Allocations for CanTrcv_31_UJA1132_IcuSetNotification
#	?a4		Transceiver
#	?a5		TrcvMode
#	?a6		$$237
#	?a7		LtConfig_p

# Allocations for module
	.section	.text_vle
	.0byte		.L833
	.section	.text_vle
#$$ld
.L5:
.L849:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Spi.h"
.L847:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L845:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\inc\\internal\\CanTrcv_31_UJA1132_Private.h"
.L835:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\..\\..\\inc\\CanTrcv_Types.h"
.L834:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\inc\\CanTrcv_31_UJA1132.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L765:
.L773:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132.c"
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
	.uleb128	15
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132.c"
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
.L762:
	.4byte		.L763-.L761
.L761:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L767-.L762
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\CanTrcv_31_UJA1132.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L764
	.4byte		.L765
	.4byte		.L768
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L774:
	.sleb128	2
	.4byte		.L770-.L762
	.byte		"CanTrcv_31_UJA1132_PrepareSpiData"
	.byte		0
	.4byte		.L773
	.uleb128	77
	.uleb128	38
	.byte		0x1
	.byte		0x1
	.4byte		.L771
	.4byte		.L772
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L773
	.uleb128	77
	.uleb128	38
	.byte		"DataToBeSent_p"
	.byte		0
	.4byte		.L775
	.4byte		.L779
	.sleb128	3
	.4byte		.L773
	.uleb128	77
	.uleb128	38
	.byte		"RegAddr_u8"
	.byte		0
	.4byte		.L780
	.4byte		.L783
	.sleb128	3
	.4byte		.L773
	.uleb128	77
	.uleb128	38
	.byte		"WrittenData_u8"
	.byte		0
	.4byte		.L780
	.4byte		.L784
	.sleb128	3
	.4byte		.L773
	.uleb128	77
	.uleb128	38
	.byte		"DataIndex_p"
	.byte		0
	.4byte		.L785
	.4byte		.L787
	.sleb128	3
	.4byte		.L773
	.uleb128	77
	.uleb128	38
	.byte		"ReadOnlyFlag"
	.byte		0
	.4byte		.L788
	.4byte		.L790
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L770:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L797:
	.sleb128	4
	.4byte		.L792-.L762
	.byte		"CanTrcv_31_UJA1132_SpiTransmit"
	.byte		0
	.4byte		.L773
	.uleb128	151
	.uleb128	56
	.4byte		.L795
	.byte		0x1
	.byte		0x1
	.4byte		.L793
	.4byte		.L794
	.sleb128	3
	.4byte		.L773
	.uleb128	151
	.uleb128	56
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L798
	.4byte		.L803
	.sleb128	3
	.4byte		.L773
	.uleb128	151
	.uleb128	56
	.byte		"DataToBeSent"
	.byte		0
	.4byte		.L804
	.4byte		.L807
	.sleb128	3
	.4byte		.L773
	.uleb128	151
	.uleb128	56
	.byte		"DataToBeReceived"
	.byte		0
	.4byte		.L775
	.4byte		.L808
	.sleb128	3
	.4byte		.L773
	.uleb128	151
	.uleb128	56
	.byte		"NumOfSpiDataElements"
	.byte		0
	.4byte		.L809
	.4byte		.L811
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L812:
	.sleb128	5
	.4byte		.L773
	.uleb128	160
	.uleb128	39
	.byte		"SpiTxStatus"
	.byte		0
	.4byte		.L813
	.4byte		.L815
.L816:
	.sleb128	5
	.4byte		.L773
	.uleb128	163
	.uleb128	44
	.byte		"TmpTransmissionStatus"
	.byte		0
	.4byte		.L795
	.4byte		.L817
.L818:
	.sleb128	5
	.4byte		.L773
	.uleb128	165
	.uleb128	36
	.byte		"RetValue"
	.byte		0
	.4byte		.L819
	.4byte		.L820
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L792:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L825:
	.sleb128	2
	.4byte		.L822-.L762
	.byte		"CanTrcv_31_UJA1132_IcuSetNotification"
	.byte		0
	.4byte		.L773
	.uleb128	261
	.uleb128	39
	.byte		0x1
	.byte		0x1
	.4byte		.L823
	.4byte		.L824
	.sleb128	3
	.4byte		.L773
	.uleb128	261
	.uleb128	39
	.byte		"Transceiver"
	.byte		0
	.4byte		.L780
	.4byte		.L826
	.sleb128	3
	.4byte		.L773
	.uleb128	261
	.uleb128	39
	.byte		"TrcvMode"
	.byte		0
	.4byte		.L827
	.4byte		.L830
.L831:
	.sleb128	5
	.4byte		.L773
	.uleb128	268
	.uleb128	108
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L798
	.4byte		.L832
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L822:
	.section	.debug_info,,n
.L833:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L834
	.uleb128	654
	.uleb128	88
	.byte		"CanTrcv_31_UJA1132_LtConfig_p"
	.byte		0
	.4byte		.L798
	.section	.debug_info,,n
	.section	.debug_info,,n
.L802:
	.sleb128	7
	.4byte		.L835
	.uleb128	61
	.uleb128	13
	.4byte		.L836-.L2
	.uleb128	24
	.section	.debug_info,,n
.L615:
	.sleb128	8
	.byte		"CanTrcvInitState"
	.byte		0
	.4byte		.L827
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L616:
	.sleb128	8
	.byte		"CanTrcvMaxBaudrate"
	.byte		0
	.4byte		.L806
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L617:
	.sleb128	8
	.byte		"CanTrcvControlsPowerSupply"
	.byte		0
	.4byte		.L788
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L618:
	.sleb128	8
	.byte		"CanTrcvChannelUsed"
	.byte		0
	.4byte		.L788
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L619:
	.sleb128	8
	.byte		"CanTrcvWakeupByBusUsed"
	.byte		0
	.4byte		.L788
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L620:
	.sleb128	8
	.byte		"CanTrcvChannelId"
	.byte		0
	.4byte		.L780
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L621:
	.sleb128	8
	.byte		"CanTrcvWakeupSourceId"
	.byte		0
	.4byte		.L780
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L622:
	.sleb128	8
	.byte		"CanTrcvIcuChannelId"
	.byte		0
	.4byte		.L837
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L623:
	.sleb128	8
	.byte		"CanTrcvSpiAccessSynchronous"
	.byte		0
	.4byte		.L788
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L624:
	.sleb128	8
	.byte		"CanTrcvSpiCommRetries"
	.byte		0
	.4byte		.L780
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L625:
	.sleb128	8
	.byte		"CanTrcvSpiCommTimeout"
	.byte		0
	.4byte		.L780
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L626:
	.sleb128	8
	.byte		"CanTrcvSpiChannelId"
	.byte		0
	.4byte		.L839
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L627:
	.sleb128	8
	.byte		"CanTrcvSpiSequenceId"
	.byte		0
	.4byte		.L841
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L628:
	.sleb128	8
	.byte		"CanTrcvRxDioChannelId"
	.byte		0
	.4byte		.L843
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L629:
	.sleb128	8
	.byte		"CanIfTrcvID"
	.byte		0
	.4byte		.L780
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
	.sleb128	0
.L836:
	.section	.debug_info,,n
.L796:
	.sleb128	9
	.4byte		.L845
	.uleb128	175
	.uleb128	14
	.4byte		.L846-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"CANTRCV_TX_SUCCEEDED"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANTRCV_LAST_TX_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANTRCV_EBSETUP_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"CANTRCV_TX_FAILED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L846:
.L829:
	.sleb128	9
	.4byte		.L847
	.uleb128	23
	.uleb128	15
	.4byte		.L848-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANTRCV_TRCVMODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANTRCV_TRCVMODE_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANTRCV_TRCVMODE_STANDBY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L848:
.L814:
	.sleb128	9
	.4byte		.L849
	.uleb128	439
	.uleb128	1
	.4byte		.L850-.L2
	.uleb128	4
	.sleb128	10
	.byte		"SPI_SEQ_OK"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"SPI_SEQ_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"SPI_SEQ_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"SPI_SEQ_CANCELLED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L850:
	.section	.debug_info,,n
.L778:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L777:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L778
	.section	.debug_info,,n
.L776:
	.sleb128	13
	.4byte		.L777
	.section	.debug_info,,n
.L775:
	.sleb128	14
	.4byte		.L776
.L782:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L781:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L782
.L780:
	.sleb128	14
	.4byte		.L781
.L786:
	.sleb128	13
	.4byte		.L781
.L785:
	.sleb128	14
	.4byte		.L786
.L789:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L782
.L788:
	.sleb128	14
	.4byte		.L789
.L795:
	.sleb128	12
	.byte		"CanTrcv_SpiTransStatus"
	.byte		0
	.4byte		.L796
.L801:
	.sleb128	12
	.byte		"CanTrcv_31_UJA1132_LtCfgType"
	.byte		0
	.4byte		.L802
.L800:
	.sleb128	14
	.4byte		.L801
.L799:
	.sleb128	13
	.4byte		.L800
.L798:
	.sleb128	14
	.4byte		.L799
.L806:
	.sleb128	14
	.4byte		.L777
.L805:
	.sleb128	13
	.4byte		.L806
.L804:
	.sleb128	14
	.4byte		.L805
.L810:
	.sleb128	12
	.byte		"Spi_NumberOfDataType"
	.byte		0
	.4byte		.L777
.L809:
	.sleb128	14
	.4byte		.L810
.L813:
	.sleb128	12
	.byte		"Spi_SeqResultType"
	.byte		0
	.4byte		.L814
.L819:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L781
.L828:
	.sleb128	12
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L829
.L827:
	.sleb128	14
	.4byte		.L828
.L838:
	.sleb128	12
	.byte		"Icu_ChannelType"
	.byte		0
	.4byte		.L777
.L837:
	.sleb128	14
	.4byte		.L838
.L840:
	.sleb128	12
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L781
.L839:
	.sleb128	14
	.4byte		.L840
.L842:
	.sleb128	12
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L781
.L841:
	.sleb128	14
	.4byte		.L842
.L844:
	.sleb128	12
	.byte		"Dio_ChannelType"
	.byte		0
	.4byte		.L777
.L843:
	.sleb128	14
	.4byte		.L844
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L767:
	.sleb128	0
.L763:

	.section	.debug_loc,,n
	.align	0
.L779:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L783:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo2),4
	.d2locend
.L784:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),5
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo2),5
	.d2locend
.L787:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),6
	.d2locend
.L790:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo6),7
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo2),7
	.d2locend
.L803:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),31
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),31
	.d2locend
.L807:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo13),4
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo14),30
	.d2locend
.L808:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo13),5
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo14),29
	.d2locend
.L811:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo13),6
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo14),27
	.d2locend
.L815:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo9),3
	.d2locend
.L817:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo10),28
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo11),3
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo19),3
	.d2locend
.L820:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo17),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo10),3
	.d2locend
.L826:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locend
.L830:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo26),4
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),0
	.d2locend
.L832:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo25),4
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),5
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo32),5
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTrcv_31_UJA1132_IcuSetNotification"
	.wrcm.nstrlist "calls", "Icu_DisableNotification","Icu_EnableNotification"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanTrcv_31_UJA1132_SpiTransmit"
	.wrcm.nstrlist "calls", "Spi_GetSequenceResult","Spi_SetupEB","Spi_SyncTransmit"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "CanTrcv_31_UJA1132_PrepareSpiData"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_UJA1132.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTrcv\ssc\target\UJA1132\make\..\src\CanTrcv_31_UJA1132.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
