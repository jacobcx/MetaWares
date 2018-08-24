#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTrcv_31_TJA1145_SetPNActivationState.c"
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
# FUNC (Std_ReturnType, CANTRCV_31_TJA1145_CODE)CANTRCV_31_TJA1145_SETPNACTIVATIONSTATE
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L677:
	.section	.invalid_TEXT,,c
#$$ld
.L673:
	.0byte		.L671
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_SetPNActivationState.c"
        .d2line         85,47
#$$ld
.L680:

#$$bf	CanTrcv_31_TJA1145_SetPNActivationState,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		CanTrcv_31_TJA1145_SetPNActivationState
	.d2_cfa_start __cie
CanTrcv_31_TJA1145_SetPNActivationState:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (VAR (CanTrcv_PNActivationType, AUTOMATIC) ActivationState)   /* PRQA S 3206 */ /* Not used in case of Wakeup Not supported*/
# {
#     VAR(Std_ReturnType, AUTOMATIC) ReturnValue; /* PRQA S 3204 */ /* used and initialized only once in case of Wakeup Not supported*/
# 
# #if (STD_ON == CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT)
# 
#     /* Assigning the pointers of the corresponding Channels. */
#     P2CONST(CanTrcv_31_TJA1145_LtCfgType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_CONST)LtConfig_p;
#     
#     P2VAR(CanTrcv_31_TJA1145_StatusType, CANTRCV_31_TJA1145_VAR_FAST, CANTRCV_31_TJA1145_APPL_DATA)Status_p;
# 
#     VAR(uint8, AUTOMATIC) Count_u8;
#     
#     VAR(uint8, AUTOMATIC) DataIndex_u8;
#     
#     VAR(uint8, AUTOMATIC) RegData_u8;
# 
#     /* Variable holds the data to be sent. The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeSent[1];
# 
#     /* Variable holds the data to be received from CanTrcv via SPI.*/
# 	VAR(uint16, AUTOMATIC) DataToBeReceived[1];
#     
# 	/* Variable to hold the CanTrcv-Spi communication status*/
# 	VAR(CanTrcv_SpiTransStatus,AUTOMATIC)  TransmissionStatus;
#  
#     ReturnValue = E_OK;    
#     
#     for(Count_u8 = CANTRCV_31_TJA1145_ZERO; Count_u8 < CANTRCV_31_TJA1145_MAXCHANNELS_U16; Count_u8++)
#     {
#         LtConfig_p = &(CANTRCV_31_TJA1145_LT_CONFIG_P[Count_u8]);
#         
#         Status_p = &(CANTRCV_31_TJA1145_STATUS_P[Count_u8]);
# 
#         if (TRUE == LtConfig_p->CanTrcvChannelUsed)
#         {
# 
#             /* Check whether the module is initialized. */
#             if ( TRUE != Status_p->CanTrcvInitialised_bt )
#             {
#             
# /* Check whether DEV  error detection enabled. */
# #if(STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT)
#                 /* Report to DET. */
#                 Det_ReportError (CANTRCV_31_TJA1145_MODULE_ID, 
#                                  CANTRCV_31_TJA1145_INSTANCE_ID,
#                                  CANTRCV_31_TJA1145_SET_PN_ACTIVATION_STATE_SID, 
#                                  CANTRCV_31_TJA1145_E_UNINIT);
# #endif /* end if(CANTRCV_31_TJA1145_DEV_ERROR_DETECT == STD_ON) */
# 
#                 ReturnValue = E_NOT_OK;
#                 
#             }
#             else
#             {
#             
#                 DataIndex_u8 = 0;
#                 
#                 /* Prepare the command to be sent to the CanTrcv to read the register containing  CPNC bit */
#                 CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_CAN_CONTROL_REGADDR, 0x00, &DataIndex_u8, TRUE);
# 
#                 /* Send command to CanTrcv using SPI*/
#                 TransmissionStatus = CanTrcv_31_TJA1145_SpiTransmit ( LtConfig_p, DataToBeSent, DataToBeReceived, DataIndex_u8 );
#                 
#                 if ( TransmissionStatus != CANTRCV_TX_SUCCEEDED )
#                 {
#              
#             #if( STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT )            
#                     /* Report DET Error */
#                     Det_ReportError( CANTRCV_31_TJA1145_MODULE_ID,
#                                      CANTRCV_31_TJA1145_INSTANCE_ID,
#                                      CANTRCV_31_TJA1145_SET_PN_ACTIVATION_STATE_SID,
#                                      CANTRCV_31_TJA1145_E_NO_TRCV_CONTROL );
#             #endif
# 
#                     ReturnValue = E_NOT_OK;
#                 
#                 }
#                 else
#                 {
#                 
#                     
#                     /* If CPNC = enable/disable selective wakeup functionality, */
#                     
#                     if (PN_ENABLED == ActivationState)
#                     {
#                     
#                         /* Set the CPNC (4th) bit in the received data register */
#                         /* CPNC = 1, means selective wake-up is disabled in TJA1145 */                       
#                         RegData_u8 = (uint8)(DataToBeReceived[0] | SelWuEnMask);
#                     
#                     }
#                     else if (PN_DISABLED == ActivationState)
#                     {
#                     
#                         /* Clear the CPNC (4th) bit in the received data register */
#                         /* CPNC = 0, means selective wake-up is disabled in TJA1145 */
#                         RegData_u8 = (uint8)(DataToBeReceived[0] & SelWuDisMask);
#                         
#                     }
#                     else
#                     {
#                     
#                         RegData_u8 = (uint8)DataToBeReceived[0];
#                         
#                     }
#                     
#              
#                     DataIndex_u8 = 0;
#                     
#                     /* Prepare the command to be sent to the CanTrcv to set/clear CPNC bit */
#                     CanTrcv_31_TJA1145_PrepareSpiData(&DataToBeSent[DataIndex_u8], CANTRCV_31_TJA1145_CAN_CONTROL_REGADDR, RegData_u8, &DataIndex_u8, FALSE); 
# 
#                     /* Send command to CanTrcv using SPI*/
#                     TransmissionStatus = CanTrcv_31_TJA1145_SpiTransmit ( LtConfig_p, DataToBeSent, NULL_PTR, DataIndex_u8 );
#                     
#                     if ( TransmissionStatus != CANTRCV_TX_SUCCEEDED )
#                     {
#              
#             #if( STD_ON == CANTRCV_31_TJA1145_DEV_ERROR_DETECT )            
#                     /* Report DET Error */
#                     Det_ReportError( CANTRCV_31_TJA1145_MODULE_ID,
#                                      CANTRCV_31_TJA1145_INSTANCE_ID,
#                                      CANTRCV_31_TJA1145_SET_PN_ACTIVATION_STATE_SID,
#                                      CANTRCV_31_TJA1145_E_NO_TRCV_CONTROL );
#             #endif
# 
#                     ReturnValue = E_NOT_OK;
#                 
#                     }
#                     else
#                     {
#                     
#                         /* Do Nothing */
#                         
#                     }
#                 
#                 }               
#             
#             }
#             
#         }
#         else
#         {
#         
#             /* Do Nothing */
#             
#         }
#         
#     }
# #else
# 
#     ReturnValue = E_NOT_OK;
	.d2line		238
.Llo1:
	diab.li		r3,1		# ReturnValue=r3
#     
# #endif /* CANTRCV_31_TJA1145_GENERAL_PARTIAL_NETWORKING_SUPPORT */
#    
#     return (ReturnValue);
# 
# }/* End of CanTrcv_31_TJA1145_SetPNActivationState () */
	.d2line		244
	.d2epilogue_begin
.Llo2:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L681:
	.type		CanTrcv_31_TJA1145_SetPNActivationState,@function
	.size		CanTrcv_31_TJA1145_SetPNActivationState,.-CanTrcv_31_TJA1145_SetPNActivationState
# Number of nodes = 5

# Allocations for CanTrcv_31_TJA1145_SetPNActivationState
#	not allocated	ActivationState
#	?a4		ReturnValue

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L691:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\UJA1132\\make\\..\\..\\..\\inc\\CanTrcv_Types.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L674:
.L682:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_SetPNActivationState.c"
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
	.uleb128	9
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
	.uleb128	6
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
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
	.uleb128	8
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_SetPNActivationState.c"
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
.L671:
	.4byte		.L672-.L670
.L670:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L676-.L671
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTrcv\\ssc\\target\\TJA1145\\make\\..\\src\\CanTrcv_31_TJA1145_SetPNActivationState.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L673
	.4byte		.L674
	.4byte		.L677
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L686:
	.sleb128	2
	.4byte		.L679-.L671
	.byte		"CanTrcv_31_TJA1145_SetPNActivationState"
	.byte		0
	.4byte		.L682
	.uleb128	85
	.uleb128	47
	.4byte		.L683
	.byte		0x1
	.byte		0x1
	.4byte		.L680
	.4byte		.L681
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L682
	.uleb128	85
	.uleb128	47
	.byte		"ActivationState"
	.byte		0
	.4byte		.L687
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L689:
	.sleb128	4
	.4byte		.L682
	.uleb128	88
	.uleb128	36
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L683
	.4byte		.L690
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L679:
	.section	.debug_info,,n
.L688:
	.sleb128	5
	.4byte		.L691
	.uleb128	49
	.uleb128	13
	.4byte		.L692-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	6
	.byte		"PN_ENABLED"
	.byte		0
	.sleb128	0
	.sleb128	6
	.byte		"PN_DISABLED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L692:
	.section	.debug_info,,n
.L685:
	.sleb128	7
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L684:
	.sleb128	8
	.byte		"uint8"
	.byte		0
	.4byte		.L685
.L683:
	.sleb128	8
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L684
.L687:
	.sleb128	8
	.byte		"CanTrcv_PNActivationType"
	.byte		0
	.4byte		.L688
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L676:
	.sleb128	0
.L672:

	.section	.debug_loc,,n
	.align	0
.L690:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTrcv_31_TJA1145_SetPNActivationState"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_SetPNActivationState.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_SetPNActivationState.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_SetPNActivationState.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_SetPNActivationState.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_SetPNActivationState.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTrcv_31_TJA1145_SetPNActivationState.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanTrcv\ssc\target\TJA1145\make\..\src\CanTrcv_31_TJA1145_SetPNActivationState.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
