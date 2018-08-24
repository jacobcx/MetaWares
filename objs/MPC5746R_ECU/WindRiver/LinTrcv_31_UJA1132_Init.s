#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinTrcv_31_UJA1132_Init.c"
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
# static FUNC (void , LINTRCV_CODE)LinTrcv_31_UJA1132_Initialize_HW 
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L530:
	.section	.invalid_TEXT,,c
#$$ld
.L526:
	.0byte		.L524
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132_Init.c"
        .d2line         106,34
#$$ld
.L533:

#$$bf	LinTrcv_31_UJA1132_Initialize_HW,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
LinTrcv_31_UJA1132_Initialize_HW:
.Llo1:
	stwu		r1,-96(r1)		
	.d2_cfa_def_cfa_offset	96
	mfspr		r0,lr
.Llo14:
	stmw		r28,80(r1)		# offset r1+80  0x50
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,100(r1)		# TransmissionStatus=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# LinNetworkIndex=r0 LinNetworkIndex=r3
	.d2prologue_end
#                     ( CONST(uint8, AUTOMATIC) LinNetworkIndex, 
#                       CONSTP2VAR (boolean, LINTRCV_VAR_FAST, LINTRCV_APPL_DATA) WakeUpOcurredFlag)  /* PRQA S 3206 */ /* the variable is used in case wakeup is supported*/
# 
# {
#     /* Pointer to the Status array for each Channel. */
#     P2VAR (LinTrcv_31_UJA1132_ChannelStatus, LINTRCV_VAR_FAST, LINTRCV_APPL_DATA )Status_p ;    
#     /* Pointer to index the constant  Configuration Array. */
#     P2CONST (LinTrcv_31_UJA1132_ChannelConfig, AUTOMATIC, LINTRCV_VAR_FAST)ChannelConfigPtr ;   
# #if(STD_OFF == LINTRCV_31_UJA1132_SBCSI_USAGE)
#  /* Variable to hold the LinTrcv-Spi communication status*/
#     VAR(LinTrcv_SpiTransStatus,AUTOMATIC)  TransmissionStatus;    
#     /* Variable holds the data to be sent. The Spi_DataType is assumed to be uint16*/
#     VAR(uint16, AUTOMATIC) DataToBeSent[LINTRCV_31_UJA1132_INIT_DATA_TO_BE_SENT_LENGTH];
#       /* Variable to hold the number or SPI data elements to be sent/received*/
#     VAR (uint8, AUTOMATIC)DataIndex_u8;
#     /* Variable to hold the number of actual bytes transmitted */
#     VAR (uint8, AUTOMATIC)TransmitIndex_u8;
#     VAR (uint8, AUTOMATIC)Index_u8;  
# #endif    
#     VAR (uint8, AUTOMATIC)ReturnValue;
#     /* Get the pointer to the structure of the Network. */
#    ChannelConfigPtr = &(LINTRCV_31_UJA1132_CONFIG_P[LinNetworkIndex]); /* PRQA S 2824 */ /* Typically caused by our current pattern for PB structures */
	.d2line		128
.Llo15:
	rlwinm		r3,r3,0,24,31		# LinNetworkIndex=r3 LinNetworkIndex=r3
	lis		r4,LinTrcv_31_UJA1132_ConfigPtr@ha
	lwz		r30,LinTrcv_31_UJA1132_ConfigPtr@l(r4)
	rlwinm		r4,r3,4,0,27		# LinNetworkIndex=r3
	rlwinm		r5,r3,2,0,29		# LinNetworkIndex=r3
	subf		r5,r5,r4
	se_add		r5,r30
.Llo12:
	mr		r30,r5		# ChannelConfigPtr=r30 ChannelConfigPtr=r5
#    Status_p = &(LINTRCV_31_UJA1132_STATUS_P[LinNetworkIndex]); /* PRQA S 2824 */ /* Typically caused by our current pattern for PB structures */
	.d2line		129
	lis		r4,LinTrcv_31_UJA1132_Status_p@ha
	lwz		r31,LinTrcv_31_UJA1132_Status_p@l(r4)		# LinNetworkIndex=r31
	rlwinm		r0,r0,3,21,28		# LinNetworkIndex=r0 LinNetworkIndex=r0
	se_add		r0,r31		# LinNetworkIndex=r0 LinNetworkIndex=r0 LinNetworkIndex=r31
.Llo9:
	mr		r31,r0		# Status_p=r31 Status_p=r0
# 
#     /**************** Determining the wake-up reason and reporting to the Ecum ****************************/
# #if(STD_ON == LINTRCV_31_UJA1132_WU_SUPPORT)    
#     /* Reading the corresponding registers */
# if(STD_LOW == Dio_ReadChannel(ChannelConfigPtr -> RxDioPin))/* PRQA S 2814 */ /* Typically caused by our current pattern for PB structures */
#          {
#             /* LIN Wakeup event occurred */
#             (*WakeUpOcurredFlag) = TRUE; /* PRQA S 2814 */ 
#             EcuM_SetWakeupEvent(ChannelConfigPtr->WakeupSource);
#         }
#         else
#         {
#             /* Do Nothing */
#         }
#     
# 
# #endif
# 
#     
# #if(STD_ON == LINTRCV_31_UJA1132_SBCSI_USAGE)
#     ReturnValue = LinTrcv_31_UJA1132_SBCSI_InitLinTrcv(LinNetworkIndex);
# #else
#     DataIndex_u8 = 0;
	.d2line		152
	diab.li		r29,0
.Llo21:
	stb		r29,9(r1)
#     /* Configure the HW */
#     ReturnValue = LinTrcv_31_UJA1132_Configure_HW( LinNetworkIndex, 
	.d2line		154
	diab.addi		r4,r1,12
	diab.addi		r5,r1,9
.Llo13:
	bl		LinTrcv_31_UJA1132_Configure_HW
.Llo2:
	mr		r28,r3		# ReturnValue=r28 ReturnValue=r3
#                                         DataToBeSent,
#                                         &DataIndex_u8
#                                         );
#      TransmissionStatus = LINTRCV_TX_SUCCEEDED;
	.d2line		158
	diab.li		r0,0		# TransmissionStatus=r0
#      Index_u8 = 0;
	.d2line		159
.Llo16:
	stb		r29,8(r1)
#     /* Send control commands to the LinTrcv via SPI, byte by byte*/
#      for(TransmitIndex_u8=0; TransmitIndex_u8<DataIndex_u8; TransmitIndex_u8++)
.L510:
	.d2line		161
.Llo10:
	rlwinm		r4,r29,0,24,31		# TransmitIndex_u8=r29
.Llo22:
	lbz		r3,9(r1)		# LinNetworkIndex=r3
.Llo3:
	se_cmp		r4,r3		# LinNetworkIndex=r3
	bc		0,0,.L514	# ge
#      {
#        LinTrcv_31_UJA1132_PrepareSpiData(&DataToBeSent[Index_u8], LINTRCV_31_UJA1132_TRCV_CONTROL_REGADDR, (uint8)DataToBeSent[Index_u8], &Index_u8, FALSE);        
	.d2line		163
.Llo4:
	diab.addi		r3,r1,12		# LinNetworkIndex=r3
.Llo5:
	lbz		r0,8(r1)		# TransmissionStatus=r0
	rlwinm		r0,r0,1,23,30		# TransmissionStatus=r0 TransmissionStatus=r0
	lhzux		r5,r3,r0		# LinNetworkIndex=r3
	rlwinm		r5,r5,0,24,31
	diab.addi		r3,r1,12		# LinNetworkIndex=r3
	se_add		r3,r0		# LinNetworkIndex=r3 LinNetworkIndex=r3 TransmissionStatus=r0
.Llo6:
	diab.addi		r6,r1,8
	diab.li		r4,33
	diab.li		r7,0
	bl		LinTrcv_31_UJA1132_PrepareSpiData
#        TransmissionStatus = LinTrcv_31_UJA1132_SpiTransmit (ChannelConfigPtr, DataToBeSent, NULL_PTR, 1 );
	.d2line		164
	diab.addi		r4,r1,12
	mr		r3,r30		# ChannelConfigPtr=r3 ChannelConfigPtr=r30
	diab.li		r5,0
	diab.li		r6,1
	bl		LinTrcv_31_UJA1132_SpiTransmit
	.d2line		167
.Llo7:
	mr.		r0,r3		# TransmissionStatus=?a8 TransmissionStatus=r3
#        Index_u8 = Index_u8 + 1;
	.d2line		165
	lbz		r3,8(r1)		# LinNetworkIndex=r3
	se_addi		r3,1		# LinNetworkIndex=r3 LinNetworkIndex=r3
	stb		r3,8(r1)		# LinNetworkIndex=r3
# 
#          if(TransmissionStatus != LINTRCV_TX_SUCCEEDED)
	bc		0,2,.L514	# ne
#          {
#              break;
#          }
#      }
	.d2line		171
.Llo8:
	diab.addi		r4,r29,1		# TransmitIndex_u8=r29
	se_addi		r29,1		# TransmitIndex_u8=r29 TransmitIndex_u8=r29
	b		.L510
.L514:
#     if ( TransmissionStatus != LINTRCV_TX_SUCCEEDED )
	.d2line		172
	se_cmpi		r0,0		# TransmissionStatus=r0
	bc		0,2,.L509	# ne
#     {
#     
#       /*DO NOTHING*/
#     }
#     else
#     {
# #endif    
#         if (E_OK == ReturnValue)
	.d2line		180
.Llo17:
	rlwinm		r28,r28,0,24,31		# ReturnValue=r28 ReturnValue=r28
	se_cmpi		r28,0		# ReturnValue=r28
	bc		0,2,.L517	# ne
#         {
#             
#             /* If Successful, update current state with the opmode */
#             Status_p->CurrentState = ChannelConfigPtr->InitState; /* PRQA S 2814 */ /* Typically caused by our current pattern for PB structures */
	.d2line		184
.Llo23:
	lwz		r0,4(r30)		# TransmissionStatus=r0 ChannelConfigPtr=r30
.Llo18:
	stw		r0,0(r31)		# Status_p=r31 TransmissionStatus=r0
# 
#             /* Initialization has been Successful. */
#             Status_p->isInitialised = TRUE;         
	.d2line		187
	diab.li		r0,1		# TransmissionStatus=r0
	stb		r0,4(r31)		# Status_p=r31 TransmissionStatus=r0
	b		.L509
.L517:
#            
#             
#         } 
#         else
#         /* PRQA S 3201 1 */ /* Misra 13.7 The condition won't be always true if value outside of enum is passed to the function */
#         {
#             /* Initialization has not been Successful. */
#             Status_p->isInitialised = FALSE;
	.d2line		195
.Llo19:
	diab.li		r0,0		# TransmissionStatus=r0
.Llo20:
	stb		r0,4(r31)		# Status_p=r31 TransmissionStatus=r0
.L509:
#         }
# #if(STD_OFF == LINTRCV_31_UJA1132_SBCSI_USAGE)        
#     }
# #endif    
# }/* End of LinTrcv_31_UJA1132_Initialize_HW() */
	.d2line		200
	.d2epilogue_begin
.Llo11:
	lmw		r28,80(r1)		# offset r1+80  0x50
	.d2_cfa_restore_list	3,10
	lwz		r0,100(r1)		# TransmissionStatus=r0
	mtspr		lr,r0		# TransmissionStatus=lr
	diab.addi		r1,r1,96		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L534:
	.type		LinTrcv_31_UJA1132_Initialize_HW,@function
	.size		LinTrcv_31_UJA1132_Initialize_HW,.-LinTrcv_31_UJA1132_Initialize_HW
# Number of nodes = 125

# Allocations for LinTrcv_31_UJA1132_Initialize_HW
#	?a4		LinNetworkIndex
#	not allocated	WakeUpOcurredFlag
#	?a5		$$133
#	?a6		Status_p
#	?a7		ChannelConfigPtr
#	?a8		TransmissionStatus
#	SP,12		DataToBeSent
#	SP,9		DataIndex_u8
#	?a9		TransmitIndex_u8
#	SP,8		Index_u8
#	?a10		ReturnValue
# FUNC(void, LINTRCV_CODE) LINTRCV_31_UJA1132_INIT(void)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         56,26
#$$ld
.L572:

#$$bf	LinTrcv_31_UJA1132_Init,interprocedural,rasave,nostackparams
	.globl		LinTrcv_31_UJA1132_Init
	.d2_cfa_start __cie
LinTrcv_31_UJA1132_Init:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* Index used LIN Network number. */
#     VAR (uint8, AUTOMATIC) LinNetworkIndex;
# #if(STD_ON == LINTRCV_31_UJA1132_WU_SUPPORT)
#     VAR (LinTrcv_TrcvModeType, AUTOMATIC) TmpLinTrcvCurrentState;
#     VAR (boolean, AUTOMATIC) WakeUpOcurredFlag;  
#     /* Pointer to the Status array for each Channel. */
#     P2VAR (LinTrcv_31_UJA1132_ChannelStatus, LINTRCV_VAR_FAST, LINTRCV_APPL_DATA )Status_p ;
# #endif /*end #if(STD_ON== LINTRCV_31_UJA1132_WU_SUPPORT)*/
# 
#     /* Proceed with initialisation only if the Hash Keys are matched. */
#     if( LINTRCV_31_UJA1132_PC_HASH_VALUE == LINTRCV_31_UJA1132_LTPC_HASHKEY )
	.d2line		68
	lis		r3,LinTrcv_31_UJA1132_LTtoPCHashValue@ha
	lwz		r0,LinTrcv_31_UJA1132_LTtoPCHashValue@l(r3)
	e_lis		r3,41467
	e_or2i		r3,34541
	se_cmpl		r0,r3
	bc		0,2,.L502	# ne
#     {
#         /* Initialization of all configured LIN Transceiver Networks. */
#         for(LinNetworkIndex=0; LINTRCV_31_UJA1132_NUM_CHANNELS > LinNetworkIndex;
	.d2line		71
	diab.li		r31,0		# LinNetworkIndex=r31
.L504:
.Llo24:
	lis		r3,LinTrcv_31_UJA1132_NumChannels@ha		# LinNetworkIndex=r3
	lbz		r0,LinTrcv_31_UJA1132_NumChannels@l(r3)		# LinNetworkIndex=r3
	rlwinm		r3,r31,0,24,31		# LinNetworkIndex=r3 LinNetworkIndex=r31
	se_cmp		r0,r3		# LinNetworkIndex=r3
	bc		0,1,.L502	# le
#                                                         LinNetworkIndex++)
#         {
# 
# #if(STD_ON == LINTRCV_31_UJA1132_WU_SUPPORT)
#             /* Get the pointer to the structure of the Network. */
#             /* PRQA S 2824 2 */ /* Typically caused by our current pattern for PB structures */
#             /* PRQA S 491 1 */ /* MISRA rule 17.4 violation; Typically caused by our current pattern for PB structures (huge number of variable length arrays) */
#             Status_p = &(LINTRCV_31_UJA1132_STATUS_P[(uint8)LinNetworkIndex]);
#             WakeUpOcurredFlag = FALSE;
#             LinTrcv_31_UJA1132_Initialize_HW ( (uint8)LinNetworkIndex, &WakeUpOcurredFlag );
#             TmpLinTrcvCurrentState = Status_p->CurrentState; /* PRQA S 2814 */ /* Typically caused by our current pattern for PB structures */
#            
#             if ( ( WakeUpOcurredFlag == TRUE ) &&(LINTRCV_TRCV_MODE_SLEEP == TmpLinTrcvCurrentState))
#               {
#                 /* Set a Flag to TRUE about which upper layers will get information via LinTrcv_31_UJA1132_Checkwakeup */
#                     Status_p->LinTrcvWakeUpOccured_bt = TRUE;
#               }
#             else
#                 {
#                     /* Do Nothing. */
#                 }                            
# #else 
#             LinTrcv_31_UJA1132_Initialize_HW ( (uint8)LinNetworkIndex, NULL_PTR );
	.d2line		94
	mr		r3,r31		# LinNetworkIndex=r3 LinNetworkIndex=r31
	diab.li		r4,0
	bl		LinTrcv_31_UJA1132_Initialize_HW
# #endif         
#             
#         }
	.d2line		97
	diab.addi		r3,r31,1		# LinNetworkIndex=r3 LinNetworkIndex=r31
	se_addi		r31,1		# LinNetworkIndex=r31 LinNetworkIndex=r31
	b		.L504
.L502:
#     }
# }/* End of LinTrcv_Init () */
	.d2line		99
	.d2epilogue_begin
.Llo25:
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
.L573:
	.type		LinTrcv_31_UJA1132_Init,@function
	.size		LinTrcv_31_UJA1132_Init,.-LinTrcv_31_UJA1132_Init
# Number of nodes = 21

# Allocations for LinTrcv_31_UJA1132_Init
#	?a4		LinNetworkIndex

# Allocations for module
	.section	.text_vle
	.0byte		.L577
	.section	.text_vle
#$$ld
.L5:
.L595:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\inc\\internal\\LinTrcv_31_UJA1132_Private.h"
.L587:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L578:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\inc\\LinTrcv_31_UJA1132.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L527:
.L535:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132_Init.c"
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
	.uleb128	17
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	16
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132_Init.c"
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
.L524:
	.4byte		.L525-.L523
.L523:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L529-.L524
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinTrcv\\ssc\\target\\UJA1132\\make\\..\\src\\LinTrcv_31_UJA1132_Init.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L526
	.4byte		.L527
	.4byte		.L530
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L536:
	.sleb128	2
	.4byte		.L532-.L524
	.byte		"LinTrcv_31_UJA1132_Initialize_HW"
	.byte		0
	.4byte		.L535
	.uleb128	106
	.uleb128	34
	.byte		0x1
	.4byte		.L533
	.4byte		.L534
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L535
	.uleb128	106
	.uleb128	34
	.byte		"LinNetworkIndex"
	.byte		0
	.4byte		.L537
	.4byte		.L540
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	4
	.4byte		.L535
	.uleb128	106
	.uleb128	34
	.byte		"WakeUpOcurredFlag"
	.byte		0
	.4byte		.L541
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L544:
	.sleb128	5
	.4byte		.L535
	.uleb128	112
	.uleb128	83
	.byte		"Status_p"
	.byte		0
	.4byte		.L545
	.4byte		.L548
.L549:
	.sleb128	5
	.4byte		.L535
	.uleb128	114
	.uleb128	76
	.byte		"ChannelConfigPtr"
	.byte		0
	.4byte		.L550
	.4byte		.L554
.L555:
	.sleb128	5
	.4byte		.L535
	.uleb128	117
	.uleb128	44
	.byte		"TransmissionStatus"
	.byte		0
	.4byte		.L556
	.4byte		.L558
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L559:
	.sleb128	6
	.4byte		.L535
	.uleb128	119
	.uleb128	28
	.byte		"DataToBeSent"
	.byte		0
	.4byte		.L560
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L564:
	.sleb128	6
	.4byte		.L535
	.uleb128	121
	.uleb128	27
	.byte		"DataIndex_u8"
	.byte		0
	.4byte		.L538
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	9
.L565:
	.sleb128	5
	.4byte		.L535
	.uleb128	123
	.uleb128	27
	.byte		"TransmitIndex_u8"
	.byte		0
	.4byte		.L538
	.4byte		.L566
.L567:
	.sleb128	6
	.4byte		.L535
	.uleb128	124
	.uleb128	27
	.byte		"Index_u8"
	.byte		0
	.4byte		.L538
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L568:
	.sleb128	5
	.4byte		.L535
	.uleb128	126
	.uleb128	27
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L538
	.4byte		.L569
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L532:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L574:
	.sleb128	7
	.4byte		.L571-.L524
	.byte		"LinTrcv_31_UJA1132_Init"
	.byte		0
	.4byte		.L535
	.uleb128	56
	.uleb128	26
	.byte		0x1
	.byte		0x1
	.4byte		.L572
	.4byte		.L573
.L575:
	.sleb128	5
	.4byte		.L535
	.uleb128	59
	.uleb128	28
	.byte		"LinNetworkIndex"
	.byte		0
	.4byte		.L538
	.4byte		.L576
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L571:
	.section	.debug_info,,n
.L577:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L578
	.uleb128	315
	.uleb128	86
	.byte		"LinTrcv_31_UJA1132_Status_p"
	.byte		0
	.4byte		.L579
	.section	.debug_info,,n
.L580:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L578
	.uleb128	319
	.uleb128	85
	.byte		"LinTrcv_31_UJA1132_ConfigPtr"
	.byte		0
	.4byte		.L581
.L582:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L578
	.uleb128	326
	.uleb128	36
	.byte		"LinTrcv_31_UJA1132_NumChannels"
	.byte		0
	.4byte		.L537
.L583:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L578
	.uleb128	329
	.uleb128	37
	.byte		"LinTrcv_31_UJA1132_LTtoPCHashValue"
	.byte		0
	.4byte		.L584
	.section	.debug_info,,n
.L547:
	.sleb128	9
	.4byte		.L587
	.uleb128	59
	.uleb128	13
	.4byte		.L588-.L2
	.uleb128	8
	.section	.debug_info,,n
.L500:
	.sleb128	10
	.byte		"CurrentState"
	.byte		0
	.4byte		.L589
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L501:
	.sleb128	10
	.byte		"isInitialised"
	.byte		0
	.4byte		.L543
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L588:
.L553:
	.sleb128	9
	.4byte		.L587
	.uleb128	59
	.uleb128	13
	.4byte		.L591-.L2
	.uleb128	12
.L494:
	.sleb128	10
	.byte		"ChannelId"
	.byte		0
	.4byte		.L537
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L495:
	.sleb128	10
	.byte		"LinTrcvName"
	.byte		0
	.4byte		.L537
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L496:
	.sleb128	10
	.byte		"InitState"
	.byte		0
	.4byte		.L592
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L497:
	.sleb128	10
	.byte		"SpiSeqId"
	.byte		0
	.4byte		.L537
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L498:
	.sleb128	10
	.byte		"LinTrcvSpiChannelId"
	.byte		0
	.4byte		.L537
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L499:
	.sleb128	10
	.byte		"RxDioPin"
	.byte		0
	.4byte		.L593
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L591:
	.section	.debug_info,,n
.L557:
	.sleb128	11
	.4byte		.L595
	.uleb128	161
	.uleb128	14
	.4byte		.L596-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"LINTRCV_TX_SUCCEEDED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"LINTRCV_LAST_TX_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"LINTRCV_EBSETUP_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"LINTRCV_TX_FAILED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L596:
.L590:
	.sleb128	11
	.4byte		.L587
	.uleb128	59
	.uleb128	13
	.4byte		.L597-.L2
	.uleb128	4
	.sleb128	12
	.byte		"LINTRCV_TRCV_MODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"LINTRCV_TRCV_MODE_STANDBY"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"LINTRCV_TRCV_MODE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L597:
	.section	.debug_info,,n
.L539:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L538:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L539
	.section	.debug_info,,n
.L537:
	.sleb128	15
	.4byte		.L538
.L543:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L539
	.section	.debug_info,,n
.L542:
	.sleb128	16
	.4byte		.L543
.L541:
	.sleb128	15
	.4byte		.L542
.L546:
	.sleb128	14
	.byte		"LinTrcv_31_UJA1132_ChannelStatus"
	.byte		0
	.4byte		.L547
.L545:
	.sleb128	16
	.4byte		.L546
.L552:
	.sleb128	14
	.byte		"LinTrcv_31_UJA1132_ChannelConfig"
	.byte		0
	.4byte		.L553
.L551:
	.sleb128	15
	.4byte		.L552
.L550:
	.sleb128	16
	.4byte		.L551
.L556:
	.sleb128	14
	.byte		"LinTrcv_SpiTransStatus"
	.byte		0
	.4byte		.L557
.L563:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L562:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L563
	.section	.debug_info,,n
.L560:
	.sleb128	17
	.4byte		.L561
	.4byte		.L562
	.section	.debug_info,,n
	.sleb128	18
	.uleb128	27
	.sleb128	0
.L561:
.L579:
	.sleb128	15
	.4byte		.L545
.L581:
	.sleb128	15
	.4byte		.L550
.L586:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L585:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L586
.L584:
	.sleb128	15
	.4byte		.L585
.L589:
	.sleb128	14
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L590
.L592:
	.sleb128	15
	.4byte		.L589
.L594:
	.sleb128	14
	.byte		"Dio_ChannelType"
	.byte		0
	.4byte		.L562
.L593:
	.sleb128	15
	.4byte		.L594
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L529:
	.sleb128	0
.L525:

	.section	.debug_loc,,n
	.align	0
.L540:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L548:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo2),0
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),31
	.d2locend
.L554:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),5
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),30
	.d2locend
.L558:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),0
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo11),0
	.d2locend
.L566:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo17),29
	.d2locend
.L569:
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),28
	.d2locend
.L576:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),31
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinTrcv_31_UJA1132_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "LinTrcv_31_UJA1132_Initialize_HW"
	.wrcm.end
	.wrcm.nelem "LinTrcv_31_UJA1132_Initialize_HW"
	.wrcm.nint32 "frameSize", 96
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "LinTrcv_31_UJA1132_Configure_HW","LinTrcv_31_UJA1132_PrepareSpiData","LinTrcv_31_UJA1132_SpiTransmit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_Init.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_Init.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_Init.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_Init.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinTrcv_31_UJA1132_Init.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinTrcv\ssc\target\UJA1132\make\..\src\LinTrcv_31_UJA1132_Init.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
