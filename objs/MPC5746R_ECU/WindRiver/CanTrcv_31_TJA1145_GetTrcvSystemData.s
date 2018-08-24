#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTrcv_31_TJA1145_GetTrcvSystemData.c"
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
# FUNC (Std_ReturnType, CANTRCV_31_TJA1145_CODE)CANTRCV_31_TJA1145_GETTRCVSYSTEMDATA
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L689:
	.section	.invalid_TEXT,,c
#$$ld
.L685:
	.0byte		.L683
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_GetTrcvSystemData.c"
        .d2line         99,47
#$$ld
.L692:

#$$bf	CanTrcv_31_TJA1145_GetTrcvSystemData,interprocedural,rasave,nostackparams
	.globl		CanTrcv_31_TJA1145_GetTrcvSystemData
	.d2_cfa_start __cie
CanTrcv_31_TJA1145_GetTrcvSystemData:
.Llo1:
	stwu		r1,-80(r1)		
	.d2_cfa_def_cfa_offset	80
	mfspr		r0,lr
	stmw		r27,60(r1)		# offset r1+60  0x3c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,84(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Transceiver=r3 Transceiver=r3
	mr		r31,r4		# TrcvSysData=r31 TrcvSysData=r4
	.d2prologue_end
# (VAR (uint8, AUTOMATIC) Transceiver, 
#  CONSTP2VAR (uint32, AUTOMATIC, CANTRCV_31_TJA1145_APPL_DATA) TrcvSysData)
# {
# 
#     VAR(Std_ReturnType, AUTOMATIC) ReturnValue;
# 
#     /* Variable holds the data to be sent. The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeSent[GetTrcvSystemDataToBeSentLength];
# 
# 	/* Variable holds the data to be received from CanTrcv via SPI. 
# 	   The Spi_DataType is assumed to be uint16*/
# 	VAR(uint16, AUTOMATIC) DataToBeReceived[GetTrcvSystemDataToBeReceivedLength] = {0};
	.d2line		111
	lis		r7,.L670@ha
	e_add16i		r7,r7,.L670@l
	lhz		r4,0(r7)
.Llo15:
	lhz		r5,2(r7)
	sth		r4,12(r1)
	sth		r5,14(r1)
	lhz		r4,4(r7)
	lhz		r5,6(r7)
	sth		r4,16(r1)
	sth		r5,18(r1)
	lhz		r5,8(r7)
	sth		r5,20(r1)
#     
#     /* Variable to hold the number or SPI data elements to be sent/received*/
# 	VAR (uint8, AUTOMATIC) DataIndex_u8;
#     
#     VAR (uint8, AUTOMATIC) RegData_u8;
#     VAR (uint8, AUTOMATIC) TransmitIndex_u8;
# 	/* Variable to hold the CanTrcv-Spi communication status*/
# 	VAR(CanTrcv_SpiTransStatus,AUTOMATIC)  TransmissionStatus = CANTRCV_TX_SUCCEEDED;
	.d2line		119
	diab.li		r28,0		# TransmissionStatus=r28
#     
#     /* Pointer to index the constant link-time Configuration Array. */ 
#     P2CONST(CanTrcv_31_TJA1145_LtCfgType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_CONST)LtConfig_p ;
#                                  
# #if (STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT)
# 
#     /* Check for any Development errors. */
#     ReturnValue = CanTrcv_31_TJA1145_GetTrcvSystemDataDECheck( Transceiver,  TrcvSysData );
#     if (E_OK == ReturnValue)
#     {
# #else
#     
#     ReturnValue = E_OK;
	.d2line		132
.Llo22:
	diab.li		r30,0
#     
# #endif/* end #if(CANTRCV_31_TJA1145_DEV_ERROR_DETECT == STD_ON) */
# 
#         DataIndex_u8 = 0;
	.d2line		136
.Llo18:
	diab.li		r5,0
	stb		r5,8(r1)
#     
#         LtConfig_p = &(CANTRCV_31_TJA1145_LT_CONFIG_P[Transceiver]);
	.d2line		138
	lis		r4,CanTrcv_31_TJA1145_LtConfig_p@ha
	lwz		r27,CanTrcv_31_TJA1145_LtConfig_p@l(r4)		# Transceiver=r27
	rlwinm		r3,r3,0,24,31		# Transceiver=r3 Transceiver=r3
	e_mulli		r3,r3,20		# Transceiver=r3 Transceiver=r3
	se_add		r3,r27		# Transceiver=r3 Transceiver=r3 Transceiver=r27
.Llo2:
	mr		r27,r3		# LtConfig_p=r27 LtConfig_p=r3
#     
#         /* Command to read Main Status register contents */
#         CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_MAIN_STATUS_REGADDR, 0x00, &DataIndex_u8, TRUE);
	.d2line		141
	diab.addi		r3,r1,24		# Transceiver=r3
.Llo23:
	diab.addi		r6,r1,8
	diab.li		r4,3
	diab.li		r7,1
	bl		CanTrcv_31_TJA1145_PrepareSpiData
#         
#         /* Command to read Trcv Status register contents */
#         CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_TRCV_STATUS_REGADDR, 0x00, &DataIndex_u8, TRUE);
	.d2line		144
	diab.addi		r3,r1,24		# Transceiver=r3
.Llo3:
	lbz		r0,8(r1)
	rlwinm		r0,r0,1,23,30
	se_add		r3,r0		# Transceiver=r3 Transceiver=r3
.Llo4:
	diab.addi		r6,r1,8
	diab.li		r4,34
	diab.li		r5,0
	diab.li		r7,1
	bl		CanTrcv_31_TJA1145_PrepareSpiData
#         
#         /* Command to read System Event register contents */
#         CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_SYS_EVENT_STATUS_REGADDR, 0x00, &DataIndex_u8, TRUE);
	.d2line		147
	diab.addi		r3,r1,24		# Transceiver=r3
.Llo5:
	lbz		r0,8(r1)
	rlwinm		r0,r0,1,23,30
	se_add		r3,r0		# Transceiver=r3 Transceiver=r3
.Llo6:
	diab.addi		r6,r1,8
	diab.li		r4,97
	diab.li		r5,0
	diab.li		r7,1
	bl		CanTrcv_31_TJA1145_PrepareSpiData
#         
#         /* Command to read Trcv Event register contents */
#         CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_CAN_EVENT_STATUS_REGADDR, 0x00, &DataIndex_u8, TRUE);
	.d2line		150
	diab.addi		r3,r1,24		# Transceiver=r3
.Llo7:
	lbz		r0,8(r1)
	rlwinm		r0,r0,1,23,30
	se_add		r3,r0		# Transceiver=r3 Transceiver=r3
.Llo8:
	diab.addi		r6,r1,8
	diab.li		r4,99
	diab.li		r5,0
	diab.li		r7,1
	bl		CanTrcv_31_TJA1145_PrepareSpiData
#         
#         /* Command to read WAKE pin register contents */
#         CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_WAKE_PIN_STATUS_REGADDR, 0x00, &DataIndex_u8, TRUE);
	.d2line		153
	diab.addi		r3,r1,24		# Transceiver=r3
.Llo9:
	lbz		r0,8(r1)
	rlwinm		r0,r0,1,23,30
	se_add		r3,r0		# Transceiver=r3 Transceiver=r3
.Llo10:
	diab.addi		r6,r1,8
	diab.li		r4,100
	diab.li		r5,0
	diab.li		r7,1
	bl		CanTrcv_31_TJA1145_PrepareSpiData
#         
#         /* Send control commands to the CanTrcv via SPI, byte by byte*/
#         for(TransmitIndex_u8=0; TransmitIndex_u8<DataIndex_u8; TransmitIndex_u8++)
	.d2line		156
	diab.li		r29,0		# TransmitIndex_u8=r29
.L671:
.Llo16:
	rlwinm		r0,r29,0,24,31		# TransmitIndex_u8=r29
	lbz		r3,8(r1)		# Transceiver=r3
.Llo11:
	se_cmp		r0,r3		# Transceiver=r3
	bc		0,0,.L675	# ge
#         {
#             /* Spi access is Synchronous */
#             TransmissionStatus = CanTrcv_31_TJA1145_SpiTransmit (LtConfig_p, &DataToBeSent[TransmitIndex_u8], &DataToBeReceived[TransmitIndex_u8], 1 );
	.d2line		159
.Llo12:
	diab.addi		r4,r1,24
	rlwinm		r0,r29,1,23,30		# TransmitIndex_u8=r29
	se_add		r4,r0
	diab.addi		r5,r1,12
	se_add		r5,r0
	mr		r3,r27		# LtConfig_p=r3 LtConfig_p=r27
	diab.li		r6,1
	bl		CanTrcv_31_TJA1145_SpiTransmit
	.d2line		160
.Llo13:
	mr.		r28,r3		# TransmissionStatus=?a9 TransmissionStatus=r3
#             if(TransmissionStatus != CANTRCV_TX_SUCCEEDED)
	bc		0,2,.L675	# ne
#             {
#                 break;
#             }
#         }
	.d2line		164
.Llo14:
	diab.addi		r0,r29,1		# TransmitIndex_u8=r29
	se_addi		r29,1		# TransmitIndex_u8=r29 TransmitIndex_u8=r29
	b		.L671
.L675:
# 
#         if ( TransmissionStatus != CANTRCV_TX_SUCCEEDED )
	.d2line		166
	se_cmpi		r28,0		# TransmissionStatus=r28
	bc		1,2,.L676	# eq
#         {
#          
# #if( STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT )            
#                 /* Report DET Error */
#                 Det_ReportError( CANTRCV_31_TJA1145_MODULE_ID,
#                                  CANTRCV_31_TJA1145_INSTANCE_ID,
#                                  CANTRCV_31_TJA1145_GET_TRCV_SYSTEM_DATA_SID,
#                                  CANTRCV_31_TJA1145_E_NO_TRCV_CONTROL );
# #endif
# 
#                 ReturnValue = E_NOT_OK;
	.d2line		177
.Llo21:
	diab.li		r30,1		# ReturnValue=r30
	b		.L677
.L676:
#             
#         }
#         else
#         {
#             *TrcvSysData = 0;
	.d2line		182
	diab.li		r0,0		# RegData_u8=r0
.Llo20:
	stw		r0,0(r31)		# TrcvSysData=r31 RegData_u8=r0
# 
#             /* Putting the Main Status register in the first byte */
#             RegData_u8 = (uint8) DataToBeReceived[0];
	.d2line		185
	lhz		r3,12(r1)		# Transceiver=r3
	mr		r3,r3		# RegData_u8=r3 RegData_u8=r3
#             (*TrcvSysData) |= (uint32) RegData_u8;               
	.d2line		186
	rlwinm		r3,r3,0,24,31		# RegData_u8=r3 RegData_u8=r3
	stw		r3,0(r31)		# TrcvSysData=r31 RegData_u8=r3
# 
#             /* Putting the Trcv Status register in the second byte */
#             RegData_u8 = (uint8) DataToBeReceived[1];
	.d2line		189
	lhz		r0,14(r1)		# RegData_u8=r0
	mr		r0,r0		# RegData_u8=r0 RegData_u8=r0
#             (*TrcvSysData) |= ( ( (uint32) RegData_u8 ) << StatusRegByte  );
	.d2line		190
	rlwinm		r0,r0,8,16,23		# RegData_u8=r0 RegData_u8=r0
	or		r0,r0,r3		# RegData_u8=r0 RegData_u8=r0 RegData_u8=r3
	stw		r0,0(r31)		# TrcvSysData=r31 RegData_u8=r0
# 
#             /* Putting the System Event register in the third byte */
#             RegData_u8 = (uint8) DataToBeReceived[SysEvtRegIndex];
	.d2line		193
	lhz		r3,16(r1)		# RegData_u8=r3
	mr		r3,r3		# RegData_u8=r3 RegData_u8=r3
#             (*TrcvSysData) |= ( ( (uint32) RegData_u8 ) << SysEvtRegByte  );
	.d2line		194
	rlwinm		r3,r3,16,8,15		# RegData_u8=r3 RegData_u8=r3
	or		r3,r3,r0		# RegData_u8=r3 RegData_u8=r3 RegData_u8=r0
	stw		r3,0(r31)		# TrcvSysData=r31 RegData_u8=r3
#             
#             /* Putting the Trcv Event register &  WAKE pin register in the fourth byte */
#             RegData_u8 = ( ((uint8) DataToBeReceived[WuPinIndex]) << WuPinLocation ) | ( ((uint8) DataToBeReceived[WakeUpPinIndex]) & WakeUpPinMask );
	.d2line		197
	lhz		r4,18(r1)
	se_slwi		r4,2
	lhz		r0,20(r1)		# RegData_u8=r0
	rlwinm		r0,r0,0,30,31		# RegData_u8=r0 RegData_u8=r0
	or		r0,r0,r4		# RegData_u8=r0 RegData_u8=r0
	mr		r0,r0		# RegData_u8=r0 RegData_u8=r0
#             (*TrcvSysData) |= ( ( (uint32) RegData_u8 ) << WuByte  );           
	.d2line		198
	se_slwi		r0,24		# RegData_u8=r0 RegData_u8=r0
	or		r0,r0,r3		# RegData_u8=r0 RegData_u8=r0 RegData_u8=r3
	stw		r0,0(r31)		# TrcvSysData=r31 RegData_u8=r0
.L677:
#             
#         }        
#  #if (STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT)       
#     }
#     else
#     {
#     
#         /* Do Nothing */
#         
#     }
# #endif/* end #if(CANTRCV_31_TJA1145_DEV_ERROR_DETECT == STD_ON) */    
#     return (ReturnValue);
	.d2line		210
.Llo17:
	rlwinm		r3,r30,0,24,31		# Transceiver=r3 ReturnValue=r30
# 
# }/* End of CanTrcv_31_TJA1145_GetTrcvSystemData () */
	.d2line		212
	.d2epilogue_begin
	lmw		r27,60(r1)		# offset r1+60  0x3c
	.d2_cfa_restore_list	3,10
.Llo19:
	lwz		r0,84(r1)		# RegData_u8=r0
	mtspr		lr,r0		# RegData_u8=lr
	diab.addi		r1,r1,80		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L693:
	.type		CanTrcv_31_TJA1145_GetTrcvSystemData,@function
	.size		CanTrcv_31_TJA1145_GetTrcvSystemData,.-CanTrcv_31_TJA1145_GetTrcvSystemData
# Number of nodes = 228

# Allocations for CanTrcv_31_TJA1145_GetTrcvSystemData
#	?a4		Transceiver
#	?a5		TrcvSysData
#	?a6		ReturnValue
#	SP,24		DataToBeSent
#	SP,12		DataToBeReceived
#	SP,8		DataIndex_u8
#	?a7		RegData_u8
#	?a8		TransmitIndex_u8
#	?a9		TransmissionStatus
#	?a10		LtConfig_p

# Allocations for module
	.section	.text_vle
	.0byte		.L730
	.section	.text_vle
	.type		.L670,@object
	.size		.L670,10
	.align		1
#	static		__static_init1
.L670:
	.space		10
	.section	.text_vle
#$$ld
.L5:
.L748:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L746:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\inc\\internal\\CanTrcv_31_TJA1145_Private.h"
.L733:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\..\\..\\inc\\CanTrcv_Types.h"
.L731:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\inc\\CanTrcv_31_TJA1145.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L686:
.L694:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_GetTrcvSystemData.c"
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
	.uleb128	15
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	16
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_GetTrcvSystemData.c"
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
.L683:
	.4byte		.L684-.L682
.L682:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L688-.L683
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_GetTrcvSystemData.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L685
	.4byte		.L686
	.4byte		.L689
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L698:
	.sleb128	2
	.4byte		.L691-.L683
	.byte		"CanTrcv_31_TJA1145_GetTrcvSystemData"
	.byte		0
	.4byte		.L694
	.uleb128	99
	.uleb128	47
	.4byte		.L695
	.byte		0x1
	.byte		0x1
	.4byte		.L692
	.4byte		.L693
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L694
	.uleb128	99
	.uleb128	47
	.byte		"Transceiver"
	.byte		0
	.4byte		.L696
	.4byte		.L699
	.sleb128	3
	.4byte		.L694
	.uleb128	99
	.uleb128	47
	.byte		"TrcvSysData"
	.byte		0
	.4byte		.L700
	.4byte		.L704
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L705:
	.sleb128	4
	.4byte		.L694
	.uleb128	104
	.uleb128	36
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L695
	.4byte		.L706
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L707:
	.sleb128	5
	.4byte		.L694
	.uleb128	107
	.uleb128	28
	.byte		"DataToBeSent"
	.byte		0
	.4byte		.L708
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	24
.L712:
	.sleb128	5
	.4byte		.L694
	.uleb128	111
	.uleb128	25
	.byte		"DataToBeReceived"
	.byte		0
	.4byte		.L713
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L715:
	.sleb128	5
	.4byte		.L694
	.uleb128	114
	.uleb128	25
	.byte		"DataIndex_u8"
	.byte		0
	.4byte		.L696
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L716:
	.sleb128	4
	.4byte		.L694
	.uleb128	116
	.uleb128	28
	.byte		"RegData_u8"
	.byte		0
	.4byte		.L696
	.4byte		.L717
.L718:
	.sleb128	4
	.4byte		.L694
	.uleb128	117
	.uleb128	28
	.byte		"TransmitIndex_u8"
	.byte		0
	.4byte		.L696
	.4byte		.L719
.L720:
	.sleb128	4
	.4byte		.L694
	.uleb128	119
	.uleb128	41
	.byte		"TransmissionStatus"
	.byte		0
	.4byte		.L721
	.4byte		.L723
.L724:
	.sleb128	4
	.4byte		.L694
	.uleb128	122
	.uleb128	102
	.byte		"LtConfig_p"
	.byte		0
	.4byte		.L725
	.4byte		.L729
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L691:
	.section	.debug_info,,n
.L730:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L731
	.uleb128	762
	.uleb128	88
	.byte		"CanTrcv_31_TJA1145_LtConfig_p"
	.byte		0
	.4byte		.L732
	.section	.debug_info,,n
	.section	.debug_info,,n
.L728:
	.sleb128	7
	.4byte		.L733
	.uleb128	61
	.uleb128	13
	.4byte		.L734-.L2
	.uleb128	20
	.section	.debug_info,,n
.L547:
	.sleb128	8
	.byte		"CanTrcvInitState"
	.byte		0
	.4byte		.L735
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L548:
	.sleb128	8
	.byte		"CanTrcvMaxBaudrate"
	.byte		0
	.4byte		.L738
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L549:
	.sleb128	8
	.byte		"CanTrcvControlsPowerSupply"
	.byte		0
	.4byte		.L739
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L550:
	.sleb128	8
	.byte		"CanTrcvChannelUsed"
	.byte		0
	.4byte		.L739
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L551:
	.sleb128	8
	.byte		"CanTrcvWakeupByBusUsed"
	.byte		0
	.4byte		.L739
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L552:
	.sleb128	8
	.byte		"CanTrcvChannelId"
	.byte		0
	.4byte		.L741
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L553:
	.sleb128	8
	.byte		"CanTrcvPorWakeupSourceId"
	.byte		0
	.4byte		.L741
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L554:
	.sleb128	8
	.byte		"CanTrcvSyserrWakeupSourceId"
	.byte		0
	.4byte		.L741
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L555:
	.sleb128	8
	.byte		"CanTrcvWakeupSourceId"
	.byte		0
	.4byte		.L741
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L556:
	.sleb128	8
	.byte		"CanTrcvPinWakeupSourceId"
	.byte		0
	.4byte		.L741
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L557:
	.sleb128	8
	.byte		"CanTrcvSpiAccessSynchronous"
	.byte		0
	.4byte		.L739
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L558:
	.sleb128	8
	.byte		"CanTrcvSpiCommRetries"
	.byte		0
	.4byte		.L741
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L559:
	.sleb128	8
	.byte		"CanTrcvSpiCommTimeout"
	.byte		0
	.4byte		.L741
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L560:
	.sleb128	8
	.byte		"CanTrcvSpiChannelId"
	.byte		0
	.4byte		.L742
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L561:
	.sleb128	8
	.byte		"CanTrcvSpiSequenceId"
	.byte		0
	.4byte		.L744
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L562:
	.sleb128	8
	.byte		"CanIfTrcvID"
	.byte		0
	.4byte		.L741
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
	.sleb128	0
.L734:
	.section	.debug_info,,n
.L722:
	.sleb128	9
	.4byte		.L746
	.uleb128	229
	.uleb128	14
	.4byte		.L747-.L2
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
.L747:
.L737:
	.sleb128	9
	.4byte		.L748
	.uleb128	23
	.uleb128	15
	.4byte		.L749-.L2
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
.L749:
	.section	.debug_info,,n
.L697:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L696:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L697
.L695:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L696
.L703:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L702:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L703
	.section	.debug_info,,n
.L701:
	.sleb128	13
	.4byte		.L702
	.section	.debug_info,,n
.L700:
	.sleb128	14
	.4byte		.L701
.L711:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L710:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L711
	.section	.debug_info,,n
.L708:
	.sleb128	15
	.4byte		.L709
	.4byte		.L710
	.section	.debug_info,,n
	.sleb128	16
	.uleb128	4
	.sleb128	0
.L709:
.L713:
	.sleb128	15
	.4byte		.L714
	.4byte		.L710
	.sleb128	16
	.uleb128	4
	.sleb128	0
.L714:
.L721:
	.sleb128	12
	.byte		"CanTrcv_SpiTransStatus"
	.byte		0
	.4byte		.L722
.L727:
	.sleb128	12
	.byte		"CanTrcv_31_TJA1145_LtCfgType"
	.byte		0
	.4byte		.L728
.L726:
	.sleb128	14
	.4byte		.L727
.L725:
	.sleb128	13
	.4byte		.L726
.L732:
	.sleb128	14
	.4byte		.L725
.L736:
	.sleb128	12
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L737
.L735:
	.sleb128	14
	.4byte		.L736
.L738:
	.sleb128	14
	.4byte		.L710
.L740:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L697
.L739:
	.sleb128	14
	.4byte		.L740
.L741:
	.sleb128	14
	.4byte		.L696
.L743:
	.sleb128	12
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L696
.L742:
	.sleb128	14
	.4byte		.L743
.L745:
	.sleb128	12
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L696
.L744:
	.sleb128	14
	.4byte		.L745
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L688:
	.sleb128	0
.L684:

	.section	.debug_loc,,n
	.align	0
.L699:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locend
.L704:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo15),4
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),31
	.d2locend
.L706:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),30
	.d2locend
.L717:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo17),0
	.d2locend
.L719:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo21),29
	.d2locend
.L723:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo21),28
	.d2locend
.L729:
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo23),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo21),27
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTrcv_31_TJA1145_GetTrcvSystemData"
	.wrcm.nint32 "frameSize", 80
	.wrcm.nstrlist "calls", "CanTrcv_31_TJA1145_PrepareSpiData","CanTrcv_31_TJA1145_SpiTransmit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_GetTrcvSystemData.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_GetTrcvSystemData.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_GetTrcvSystemData.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_GetTrcvSystemData.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_GetTrcvSystemData.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_GetTrcvSystemData.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTrcv\ssc\target\TJA1145\make\..\src\CanTrcv_31_TJA1145_GetTrcvSystemData.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
