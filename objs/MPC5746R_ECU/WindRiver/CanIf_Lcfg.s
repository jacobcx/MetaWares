#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_Lcfg.c"
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
# FUNC(void,CANIF_CODE)CanIf_RxIndication_Can
	.align		2
	.section	.text_vle
	.d2file		"gen\\MPC5746R_ECU\\WindRiver\\CanIf_Lcfg.c"
        .d2line         899,22
#$$ld
.L1314:

#$$bf	CanIf_RxIndication_Can,interprocedural,rasave,nostackparams
	.globl		CanIf_RxIndication_Can
	.d2_cfa_start __cie
CanIf_RxIndication_Can:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Hrh=r3 Hrh=r3
	mr		r0,r4		# CanId=r0 CanId=r4
.Llo3:
	mr		r5,r5		# CanDlc=r5 CanDlc=r5
.Llo4:
	mr		r7,r6		# CanSduPtr=r7 CanSduPtr=r6
	.d2prologue_end
# (
#     VAR(Can_HwHandleType,AUTOMATIC)            Hrh,
#     VAR(CanIfCanId_t,AUTOMATIC)       CanId,
#     VAR(uint8,AUTOMATIC)            CanDlc,
#     P2CONST( uint8, AUTOMATIC, CANIF_APPL_CONST )CanSduPtr
# )
# {
#     CanIf_ProcessRxIndication(0U, Hrh, CanId, CanDlc, CanSduPtr);
	.d2line		907
	rlwinm		r4,r3,0,16,31		# Hrh=r3
	rlwinm		r6,r5,0,24,31		# CanDlc=r5
.Llo7:
	diab.li		r3,0		# Hrh=r3
.Llo2:
	mr		r5,r0		# CanId=r5 CanId=r0
.Llo6:
	mr		r7,r7		# CanSduPtr=r7 CanSduPtr=r7
.Llo8:
	bl		CanIf_ProcessRxIndication
# }
	.d2line		908
	.d2epilogue_begin
.Llo5:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1315:
	.type		CanIf_RxIndication_Can,@function
	.size		CanIf_RxIndication_Can,.-CanIf_RxIndication_Can
# Number of nodes = 14

# Allocations for CanIf_RxIndication_Can
#	?a4		Hrh
#	?a5		CanId
#	?a6		CanDlc
#	?a7		CanSduPtr
# FUNC( void, CANIF_CODE )CanIf_CancelTxConfirmation_Can
	.align		2
	.section	.text_vle
        .d2line         922,25
#$$ld
.L1335:

#$$bf	CanIf_CancelTxConfirmation_Can,interprocedural,rasave,nostackparams
	.globl		CanIf_CancelTxConfirmation_Can
	.d2_cfa_start __cie
CanIf_CancelTxConfirmation_Can:
.Llo9:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# PduInfoPtr=r3 PduInfoPtr=r3
	.d2prologue_end
# (
#     P2CONST( Can_PduType, AUTOMATIC, CANIF_APPL_CONST)PduInfoPtr
# )
# {
#     CanIf_ProcessCancelTxConf(0U, PduInfoPtr);
	.d2line		927
	mr		r4,r3		# PduInfoPtr=r4 PduInfoPtr=r3
	diab.li		r3,0
.Llo10:
	bl		CanIf_ProcessCancelTxConf
# }
	.d2line		928
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
.L1336:
	.type		CanIf_CancelTxConfirmation_Can,@function
	.size		CanIf_CancelTxConfirmation_Can,.-CanIf_CancelTxConfirmation_Can
# Number of nodes = 6

# Allocations for CanIf_CancelTxConfirmation_Can
#	?a4		PduInfoPtr
# FUNC( void, CANIF_CODE )CanIf_TxConfirmation_Can
	.align		2
	.section	.text_vle
        .d2line         941,25
#$$ld
.L1345:

#$$bf	CanIf_TxConfirmation_Can,interprocedural,rasave,nostackparams
	.globl		CanIf_TxConfirmation_Can
	.d2_cfa_start __cie
CanIf_TxConfirmation_Can:
.Llo11:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(PduIdType,AUTOMATIC) CanTxPduId
# )
# {
#     CanIf_TxConfirmation(CanTxPduId);
	.d2line		946
	rlwinm		r3,r3,0,16,31		# CanTxPduId=r3 CanTxPduId=r3
.Llo12:
	bl		CanIf_TxConfirmation
# }
	.d2line		947
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
.L1346:
	.type		CanIf_TxConfirmation_Can,@function
	.size		CanIf_TxConfirmation_Can,.-CanIf_TxConfirmation_Can
# Number of nodes = 5

# Allocations for CanIf_TxConfirmation_Can
#	?a4		CanTxPduId
# FUNC(void, CANIF_CODE)CanIf_ControllerBusOff_Can
	.align		2
	.section	.text_vle
        .d2line         956,23
#$$ld
.L1352:

#$$bf	CanIf_ControllerBusOff_Can,interprocedural,rasave,nostackparams
	.globl		CanIf_ControllerBusOff_Can
	.d2_cfa_start __cie
CanIf_ControllerBusOff_Can:
.Llo13:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# Controller_u8=r4 Controller_u8=r3
	.d2prologue_end
# (
#     VAR(uint8,AUTOMATIC)Controller_u8
# )
# {
#     CanIf_ProcessControllerBusOff(0U, Controller_u8);
	.d2line		961
	rlwinm		r4,r4,0,24,31		# Controller_u8=r4 Controller_u8=r4
	diab.li		r3,0
.Llo14:
	bl		CanIf_ProcessControllerBusOff
# }
	.d2line		962
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
.L1353:
	.type		CanIf_ControllerBusOff_Can,@function
	.size		CanIf_ControllerBusOff_Can,.-CanIf_ControllerBusOff_Can
# Number of nodes = 7

# Allocations for CanIf_ControllerBusOff_Can
#	?a4		Controller_u8
# FUNC(void, CANIF_CODE)CanIf_ControllerModeIndication_Can
	.align		2
	.section	.text_vle
        .d2line         971,23
#$$ld
.L1358:

#$$bf	CanIf_ControllerModeIndication_Can,interprocedural,rasave,nostackparams
	.globl		CanIf_ControllerModeIndication_Can
	.d2_cfa_start __cie
CanIf_ControllerModeIndication_Can:
.Llo15:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(uint8,AUTOMATIC) Controller,
#     VAR(CanIf_ControllerModeType,AUTOMATIC) ControllerMode
# )
# {
#     CanIf_ProcessControllerModeIndication(Controller, ControllerMode, 0U);
	.d2line		977
	rlwinm		r3,r3,0,24,31		# Controller=r3 Controller=r3
.Llo16:
	mr		r0,r4		# ControllerMode=r0 ControllerMode=r4
	diab.li		r5,0
	bl		CanIf_ProcessControllerModeIndication
# }
	.d2line		978
	.d2epilogue_begin
.Llo17:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1359:
	.type		CanIf_ControllerModeIndication_Can,@function
	.size		CanIf_ControllerModeIndication_Can,.-CanIf_ControllerModeIndication_Can
# Number of nodes = 9

# Allocations for CanIf_ControllerModeIndication_Can
#	?a4		Controller
#	?a5		ControllerMode
# FUNC(void, CANIF_CODE)CanIf_TrcvModeIndication_CanTrcv_31_UJA1132
	.align		2
	.section	.text_vle
        .d2line         987,23
#$$ld
.L1367:

#$$bf	CanIf_TrcvModeIndication_CanTrcv_31_UJA1132,interprocedural,rasave,nostackparams
	.globl		CanIf_TrcvModeIndication_CanTrcv_31_UJA1132
	.d2_cfa_start __cie
CanIf_TrcvModeIndication_CanTrcv_31_UJA1132:
.Llo18:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(uint8,AUTOMATIC) Transceiver,
#     VAR(CanTrcv_TrcvModeType,AUTOMATIC) TransceiverMode
# )
# {
#     CanIf_ProcessTrcvModeIndication(Transceiver, TransceiverMode);
	.d2line		993
	rlwinm		r3,r3,0,24,31		# Transceiver=r3 Transceiver=r3
.Llo19:
	mr		r0,r4		# TransceiverMode=r0 TransceiverMode=r4
	bl		CanIf_ProcessTrcvModeIndication
# }
	.d2line		994
	.d2epilogue_begin
.Llo20:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1368:
	.type		CanIf_TrcvModeIndication_CanTrcv_31_UJA1132,@function
	.size		CanIf_TrcvModeIndication_CanTrcv_31_UJA1132,.-CanIf_TrcvModeIndication_CanTrcv_31_UJA1132
# Number of nodes = 7

# Allocations for CanIf_TrcvModeIndication_CanTrcv_31_UJA1132
#	?a4		Transceiver
#	?a5		TransceiverMode
# FUNC(void, CANIF_CODE)CanIf_TrcvModeIndication_CanTrcv_31_TJA1145
	.align		2
	.section	.text_vle
        .d2line         1002,23
#$$ld
.L1376:

#$$bf	CanIf_TrcvModeIndication_CanTrcv_31_TJA1145,interprocedural,rasave,nostackparams
	.globl		CanIf_TrcvModeIndication_CanTrcv_31_TJA1145
	.d2_cfa_start __cie
CanIf_TrcvModeIndication_CanTrcv_31_TJA1145:
.Llo21:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# (
#     VAR(uint8,AUTOMATIC) Transceiver,
#     VAR(CanTrcv_TrcvModeType,AUTOMATIC) TransceiverMode
# )
# {
#     CanIf_ProcessTrcvModeIndication(Transceiver, TransceiverMode);
	.d2line		1008
	rlwinm		r3,r3,0,24,31		# Transceiver=r3 Transceiver=r3
.Llo22:
	mr		r0,r4		# TransceiverMode=r0 TransceiverMode=r4
	bl		CanIf_ProcessTrcvModeIndication
# }
	.d2line		1009
	.d2epilogue_begin
.Llo23:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1377:
	.type		CanIf_TrcvModeIndication_CanTrcv_31_TJA1145,@function
	.size		CanIf_TrcvModeIndication_CanTrcv_31_TJA1145,.-CanIf_TrcvModeIndication_CanTrcv_31_TJA1145
# Number of nodes = 7

# Allocations for CanIf_TrcvModeIndication_CanTrcv_31_TJA1145
#	?a4		Transceiver
#	?a5		TransceiverMode
# FUNC( void, CANIF_CODE )SchM_Enter_CanIf    
	.align		2
	.section	.text_vle
        .d2line         1015,25
#$$ld
.L1383:

#$$bf	SchM_Enter_CanIf,interprocedural,rasave,nostackparams
	.globl		SchM_Enter_CanIf
	.d2_cfa_start __cie
SchM_Enter_CanIf:
.Llo24:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ExclusiveArea=r3 ExclusiveArea=r3
	.d2prologue_end
# (
#     CONST(uint8,AUTOMATIC) ExclusiveArea
# )
# {
#     /* PRQA S 2016 12 */ /* An empty default clause in this switch */
#     switch(ExclusiveArea)
	.d2line		1021
	rlwinm		r3,r3,0,24,31		# ExclusiveArea=r3 ExclusiveArea=r3
	se_cmpi		r3,0		# ExclusiveArea=r3
	bc		0,2,.L1302	# ne
#     {
#         case 0U:
#         {
#             SchM_Enter_CanIf_EXCLUSIVE_AREA_0();
	.d2line		1025
.Llo25:
	bl		SchM_Enter_CanIf_EXCLUSIVE_AREA_0
.L1302:
#             break;
#         }
#         default:
#         {
#             break;
#         }
#     }
# }
	.d2line		1033
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
.L1384:
	.type		SchM_Enter_CanIf,@function
	.size		SchM_Enter_CanIf,.-SchM_Enter_CanIf
# Number of nodes = 7

# Allocations for SchM_Enter_CanIf
#	?a4		ExclusiveArea
# FUNC( void, CANIF_CODE )SchM_Exit_CanIf
	.align		2
	.section	.text_vle
        .d2line         1038,25
#$$ld
.L1389:

#$$bf	SchM_Exit_CanIf,interprocedural,rasave,nostackparams
	.globl		SchM_Exit_CanIf
	.d2_cfa_start __cie
SchM_Exit_CanIf:
.Llo26:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ExclusiveArea=r3 ExclusiveArea=r3
	.d2prologue_end
# (
#     CONST(uint8,AUTOMATIC) ExclusiveArea
# )
# {
#     /* PRQA S 2016 12 */ /* An empty default clause in this switch */
#     switch(ExclusiveArea)
	.d2line		1044
	rlwinm		r3,r3,0,24,31		# ExclusiveArea=r3 ExclusiveArea=r3
	se_cmpi		r3,0		# ExclusiveArea=r3
	bc		0,2,.L1307	# ne
#     {
#         case 0U:
#         {
#             SchM_Exit_CanIf_EXCLUSIVE_AREA_0();
	.d2line		1048
.Llo27:
	bl		SchM_Exit_CanIf_EXCLUSIVE_AREA_0
.L1307:
#             break;
#         }
#         default:
#         {
#             break;
#         }
#     }
# }
	.d2line		1056
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
.L1390:
	.type		SchM_Exit_CanIf,@function
	.size		SchM_Exit_CanIf,.-SchM_Exit_CanIf
# Number of nodes = 7

# Allocations for SchM_Exit_CanIf
#	?a4		ExclusiveArea

# Allocations for module
	.section	.text_vle
	.0byte		.L1393
	.section	.text_vle
	.type		CanIf_NumberOfCanHwUnits_u8,@object
	.size		CanIf_NumberOfCanHwUnits_u8,1
	.align		0
	.globl		CanIf_NumberOfCanHwUnits_u8
CanIf_NumberOfCanHwUnits_u8:
	.byte		0
	.section	.text_vle
	.type		CanIf_NumberOfCanTrcvUnits_u8,@object
	.size		CanIf_NumberOfCanTrcvUnits_u8,1
	.align		0
	.globl		CanIf_NumberOfCanTrcvUnits_u8
CanIf_NumberOfCanTrcvUnits_u8:
	.byte		3
	.section	.text_vle
	.type		CanIf_NumberOfCanCtrlUnits_u8,@object
	.size		CanIf_NumberOfCanCtrlUnits_u8,1
	.align		0
	.globl		CanIf_NumberOfCanCtrlUnits_u8
CanIf_NumberOfCanCtrlUnits_u8:
	.byte		1
	.section	.text_vle
	.0byte		.L1396
	.section	.text_vle
	.type		CanIf_TxPduCbkConfig_a,@object
	.size		CanIf_TxPduCbkConfig_a,16
	.align		2
	.globl		CanIf_TxPduCbkConfig_a
CanIf_TxPduCbkConfig_a:
	.long		1
	.long		CanTp_TxConfirmation
	.long		2
	.long		PduR_CanIfTxConfirmation
	.section	.text_vle
	.type		CanIf_RxPduCbkConfig_a,@object
	.size		CanIf_RxPduCbkConfig_a,16
	.align		2
	.globl		CanIf_RxPduCbkConfig_a
CanIf_RxPduCbkConfig_a:
	.long		1
	.long		CanTp_RxIndication
	.long		2
	.long		PduR_CanIfRxIndication
	.section	.text_vle
	.type		CanIf_HthControllerConfig0_a,@object
	.size		CanIf_HthControllerConfig0_a,36
	.align		1
CanIf_HthControllerConfig0_a:
	.short		58
	.byte		0
	.space		1
	.short		59
	.byte		0
	.space		1
	.short		60
	.byte		0
	.space		1
	.short		61
	.byte		0
	.space		1
	.short		62
	.byte		0
	.space		1
	.short		63
	.byte		0
	.space		1
	.short		64
	.byte		0
	.space		1
	.short		65
	.byte		0
	.space		1
	.short		66
	.byte		0
	.space		1
	.section	.text_vle
	.type		CanIf_HthControllerConfig_p,@object
	.size		CanIf_HthControllerConfig_p,4
	.align		2
	.globl		CanIf_HthControllerConfig_p
CanIf_HthControllerConfig_p:
	.long		CanIf_HthControllerConfig0_a
	.section	.text_vle
	.type		CanIf_HrhControllerDrv0_au8,@object
	.size		CanIf_HrhControllerDrv0_au8,58
	.align		2
CanIf_HrhControllerDrv0_au8:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.section	.text_vle
	.type		CanIf_HrhControllerConfig_au8,@object
	.size		CanIf_HrhControllerConfig_au8,4
	.align		2
CanIf_HrhControllerConfig_au8:
	.long		CanIf_HrhControllerDrv0_au8
	.section	.text_vle
	.type		CanIf_HrhControllerConfig_ppcu8,@object
	.size		CanIf_HrhControllerConfig_ppcu8,4
	.align		2
	.globl		CanIf_HrhControllerConfig_ppcu8
CanIf_HrhControllerConfig_ppcu8:
	.long		CanIf_HrhControllerConfig_au8
	.section	.text_vle
	.type		CanIf_NumberOfHrh_a,@object
	.size		CanIf_NumberOfHrh_a,2
	.align		1
CanIf_NumberOfHrh_a:
	.short		58
	.section	.text_vle
	.type		CanIf_NumberOfHrh_p,@object
	.size		CanIf_NumberOfHrh_p,4
	.align		2
	.globl		CanIf_NumberOfHrh_p
CanIf_NumberOfHrh_p:
	.long		CanIf_NumberOfHrh_a
	.section	.text_vle
	.type		CanIf_NumberOfHth,@object
	.size		CanIf_NumberOfHth,2
	.align		1
	.globl		CanIf_NumberOfHth
CanIf_NumberOfHth:
	.short		9
	.section	.text_vle
	.type		CanIf_DispatchConfig,@object
	.size		CanIf_DispatchConfig,16
	.align		2
	.globl		CanIf_DispatchConfig
CanIf_DispatchConfig:
	.long		CanSM_ControllerBusOff
	.long		0
	.long		CanSM_ControllerModeIndication
	.long		CanSM_TransceiverModeIndication
	.section	.text_vle
	.type		CanIf_ControllerConfig_a,@object
	.size		CanIf_ControllerConfig_a,16
	.align		2
	.globl		CanIf_ControllerConfig_a
CanIf_ControllerConfig_a:
	.long		0
	.long		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.space		2
	.section	.text_vle
	.type		CanIf_DriverConfig_a,@object
	.size		CanIf_DriverConfig_a,16
	.align		2
	.globl		CanIf_DriverConfig_a
CanIf_DriverConfig_a:
	.long		Can_SetControllerMode
	.long		Can_Write
	.long		0
	.byte		0
	.space		3
	.section	.text_vle
	.type		CanIf_TransceiverDrvConfig_a,@object
	.size		CanIf_TransceiverDrvConfig_a,84
	.align		2
	.globl		CanIf_TransceiverDrvConfig_a
CanIf_TransceiverDrvConfig_a:
	.long		0
	.long		CanTrcv_31_UJA1132_SetOpMode
	.long		CanTrcv_31_UJA1132_GetOpMode
	.long		CanTrcv_31_UJA1132_GetBusWuReason
	.long		CanTrcv_31_UJA1132_SetWakeupMode
	.long		CanTrcv_31_UJA1132_CheckWakeup
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.long		0
	.long		CanTrcv_31_TJA1145_SetOpMode
	.long		CanTrcv_31_TJA1145_GetOpMode
	.long		CanTrcv_31_TJA1145_GetBusWuReason
	.long		CanTrcv_31_TJA1145_SetWakeupMode
	.long		CanTrcv_31_TJA1145_CheckWakeup
	.byte		0
	.byte		0
	.byte		0
	.byte		1
	.long		0
	.long		CanTrcv_31_TJA1145_SetOpMode
	.long		CanTrcv_31_TJA1145_GetOpMode
	.long		CanTrcv_31_TJA1145_GetBusWuReason
	.long		CanTrcv_31_TJA1145_SetWakeupMode
	.long		CanTrcv_31_TJA1145_CheckWakeup
	.byte		0
	.byte		0
	.byte		1
	.byte		1
	.section	.text_vle
	.type		CanIf_WakeupSourceCount,@object
	.size		CanIf_WakeupSourceCount,1
	.align		0
	.globl		CanIf_WakeupSourceCount
CanIf_WakeupSourceCount:
	.byte		0
	.data
	.type		CanIf_TxConfirmationState_p,@object
	.size		CanIf_TxConfirmationState_p,4
	.align		2
	.globl		CanIf_TxConfirmationState_p
CanIf_TxConfirmationState_p:
	.long		CanIf_TxConfirmationState_a
	.data
	.type		CanIf_NoOfPendingRequests_pu8,@object
	.size		CanIf_NoOfPendingRequests_pu8,4
	.align		2
	.globl		CanIf_NoOfPendingRequests_pu8
CanIf_NoOfPendingRequests_pu8:
	.long		CanIf_NoOfPendingRequests_au8
	.section	.text_vle
	.type		CanIf_LTtoPCHashValue,@object
	.size		CanIf_LTtoPCHashValue,4
	.align		2
	.globl		CanIf_LTtoPCHashValue
CanIf_LTtoPCHashValue:
	.long		912334548
	.section	.text_vle
	.type		CanIf_LTHashValue,@object
	.size		CanIf_LTHashValue,4
	.align		2
	.globl		CanIf_LTHashValue
CanIf_LTHashValue:
	.long		-829964965
	.section	.text_vle
#$$ld
.L5:
.L1635:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L1633:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Can_GeneralTypes.h"
.L1519:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L1316:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\CanIf_Lcfg.c"
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
	.uleb128	7
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	15
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
	.uleb128	19
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
	.uleb128	17
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
	.uleb128	18
	.uleb128	5
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\CanIf_Lcfg.c"
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
.L1317:
	.sleb128	2
	.4byte		.L1313-.L2
	.byte		"CanIf_RxIndication_Can"
	.byte		0
	.4byte		.L1316
	.uleb128	899
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1314
	.4byte		.L1315
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L1316
	.uleb128	899
	.uleb128	22
	.byte		"Hrh"
	.byte		0
	.4byte		.L1318
	.4byte		.L1321
	.sleb128	3
	.4byte		.L1316
	.uleb128	899
	.uleb128	22
	.byte		"CanId"
	.byte		0
	.4byte		.L1322
	.4byte		.L1326
	.sleb128	3
	.4byte		.L1316
	.uleb128	899
	.uleb128	22
	.byte		"CanDlc"
	.byte		0
	.4byte		.L1327
	.4byte		.L1329
	.sleb128	3
	.4byte		.L1316
	.uleb128	899
	.uleb128	22
	.byte		"CanSduPtr"
	.byte		0
	.4byte		.L1330
	.4byte		.L1332
	.section	.debug_info,,n
	.sleb128	0
.L1313:
	.section	.debug_info,,n
.L1337:
	.sleb128	2
	.4byte		.L1334-.L2
	.byte		"CanIf_CancelTxConfirmation_Can"
	.byte		0
	.4byte		.L1316
	.uleb128	922
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L1335
	.4byte		.L1336
	.sleb128	3
	.4byte		.L1316
	.uleb128	922
	.uleb128	25
	.byte		"PduInfoPtr"
	.byte		0
	.4byte		.L1338
	.4byte		.L1342
	.section	.debug_info,,n
	.sleb128	0
.L1334:
	.section	.debug_info,,n
.L1347:
	.sleb128	2
	.4byte		.L1344-.L2
	.byte		"CanIf_TxConfirmation_Can"
	.byte		0
	.4byte		.L1316
	.uleb128	941
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L1345
	.4byte		.L1346
	.sleb128	3
	.4byte		.L1316
	.uleb128	941
	.uleb128	25
	.byte		"CanTxPduId"
	.byte		0
	.4byte		.L1348
	.4byte		.L1349
	.section	.debug_info,,n
	.sleb128	0
.L1344:
	.section	.debug_info,,n
.L1354:
	.sleb128	2
	.4byte		.L1351-.L2
	.byte		"CanIf_ControllerBusOff_Can"
	.byte		0
	.4byte		.L1316
	.uleb128	956
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1352
	.4byte		.L1353
	.sleb128	3
	.4byte		.L1316
	.uleb128	956
	.uleb128	23
	.byte		"Controller_u8"
	.byte		0
	.4byte		.L1327
	.4byte		.L1355
	.section	.debug_info,,n
	.sleb128	0
.L1351:
	.section	.debug_info,,n
.L1360:
	.sleb128	2
	.4byte		.L1357-.L2
	.byte		"CanIf_ControllerModeIndication_Can"
	.byte		0
	.4byte		.L1316
	.uleb128	971
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1358
	.4byte		.L1359
	.sleb128	3
	.4byte		.L1316
	.uleb128	971
	.uleb128	23
	.byte		"Controller"
	.byte		0
	.4byte		.L1327
	.4byte		.L1361
	.sleb128	3
	.4byte		.L1316
	.uleb128	971
	.uleb128	23
	.byte		"ControllerMode"
	.byte		0
	.4byte		.L1362
	.4byte		.L1364
	.section	.debug_info,,n
	.sleb128	0
.L1357:
	.section	.debug_info,,n
.L1369:
	.sleb128	2
	.4byte		.L1366-.L2
	.byte		"CanIf_TrcvModeIndication_CanTrcv_31_UJA1132"
	.byte		0
	.4byte		.L1316
	.uleb128	987
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1367
	.4byte		.L1368
	.sleb128	3
	.4byte		.L1316
	.uleb128	987
	.uleb128	23
	.byte		"Transceiver"
	.byte		0
	.4byte		.L1327
	.4byte		.L1370
	.sleb128	3
	.4byte		.L1316
	.uleb128	987
	.uleb128	23
	.byte		"TransceiverMode"
	.byte		0
	.4byte		.L1371
	.4byte		.L1373
	.section	.debug_info,,n
	.sleb128	0
.L1366:
	.section	.debug_info,,n
.L1378:
	.sleb128	2
	.4byte		.L1375-.L2
	.byte		"CanIf_TrcvModeIndication_CanTrcv_31_TJA1145"
	.byte		0
	.4byte		.L1316
	.uleb128	1002
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L1376
	.4byte		.L1377
	.sleb128	3
	.4byte		.L1316
	.uleb128	1002
	.uleb128	23
	.byte		"Transceiver"
	.byte		0
	.4byte		.L1327
	.4byte		.L1379
	.sleb128	3
	.4byte		.L1316
	.uleb128	1002
	.uleb128	23
	.byte		"TransceiverMode"
	.byte		0
	.4byte		.L1371
	.4byte		.L1380
	.section	.debug_info,,n
	.sleb128	0
.L1375:
	.section	.debug_info,,n
.L1385:
	.sleb128	2
	.4byte		.L1382-.L2
	.byte		"SchM_Enter_CanIf"
	.byte		0
	.4byte		.L1316
	.uleb128	1015
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L1383
	.4byte		.L1384
	.sleb128	3
	.4byte		.L1316
	.uleb128	1015
	.uleb128	25
	.byte		"ExclusiveArea"
	.byte		0
	.4byte		.L1331
	.4byte		.L1386
	.section	.debug_info,,n
	.sleb128	0
.L1382:
	.section	.debug_info,,n
.L1391:
	.sleb128	2
	.4byte		.L1388-.L2
	.byte		"SchM_Exit_CanIf"
	.byte		0
	.4byte		.L1316
	.uleb128	1038
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L1389
	.4byte		.L1390
	.sleb128	3
	.4byte		.L1316
	.uleb128	1038
	.uleb128	25
	.byte		"ExclusiveArea"
	.byte		0
	.4byte		.L1331
	.4byte		.L1392
	.section	.debug_info,,n
	.sleb128	0
.L1388:
	.section	.debug_info,,n
.L1393:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	53
	.uleb128	27
	.byte		"CanIf_NumberOfCanHwUnits_u8"
	.byte		0
	.4byte		.L1331
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_NumberOfCanHwUnits_u8
	.section	.debug_info,,n
	.section	.debug_info,,n
.L1394:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	59
	.uleb128	27
	.byte		"CanIf_NumberOfCanTrcvUnits_u8"
	.byte		0
	.4byte		.L1331
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_NumberOfCanTrcvUnits_u8
	.section	.debug_info,,n
.L1395:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	65
	.uleb128	27
	.byte		"CanIf_NumberOfCanCtrlUnits_u8"
	.byte		0
	.4byte		.L1331
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_NumberOfCanCtrlUnits_u8
	.section	.debug_info,,n
.L1396:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	80
	.uleb128	43
	.byte		"CanIf_TxPduCbkConfig_a"
	.byte		0
	.4byte		.L1397
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_TxPduCbkConfig_a
	.section	.debug_info,,n
	.section	.debug_info,,n
.L1402:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	106
	.uleb128	43
	.byte		"CanIf_RxPduCbkConfig_a"
	.byte		0
	.4byte		.L1403
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduCbkConfig_a
	.section	.debug_info,,n
.L1408:
	.sleb128	5
	.4byte		.L1316
	.uleb128	133
	.uleb128	1
	.byte		"CanIf_HthControllerConfig0_a"
	.byte		0
	.4byte		.L1409
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_HthControllerConfig0_a
	.section	.debug_info,,n
.L1414:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	215
	.uleb128	1
	.byte		"CanIf_HthControllerConfig_p"
	.byte		0
	.4byte		.L1415
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_HthControllerConfig_p
	.section	.debug_info,,n
.L1417:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	227
	.uleb128	1
	.byte		"CanIf_HrhConfigInfo_pp"
	.byte		0
	.4byte		.L1418
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_HrhConfigInfo_pp
	.0byte		.L1417
	.comm		CanIf_HrhConfigInfo_pp,4,2
.L1424:
	.sleb128	5
	.4byte		.L1316
	.uleb128	242
	.uleb128	34
	.byte		"CanIf_HrhControllerDrv0_au8"
	.byte		0
	.4byte		.L1425
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_HrhControllerDrv0_au8
	.section	.debug_info,,n
.L1427:
	.sleb128	5
	.4byte		.L1316
	.uleb128	369
	.uleb128	1
	.byte		"CanIf_HrhControllerConfig_au8"
	.byte		0
	.4byte		.L1428
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_HrhControllerConfig_au8
	.section	.debug_info,,n
.L1431:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	383
	.uleb128	1
	.byte		"CanIf_HrhControllerConfig_ppcu8"
	.byte		0
	.4byte		.L1432
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_HrhControllerConfig_ppcu8
	.section	.debug_info,,n
.L1436:
	.sleb128	5
	.4byte		.L1316
	.uleb128	389
	.uleb128	45
	.byte		"CanIf_NumberOfHrh_a"
	.byte		0
	.4byte		.L1437
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_NumberOfHrh_a
	.section	.debug_info,,n
.L1440:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	401
	.uleb128	1
	.byte		"CanIf_NumberOfHrh_p"
	.byte		0
	.4byte		.L1441
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_NumberOfHrh_p
	.section	.debug_info,,n
.L1443:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	407
	.uleb128	40
	.byte		"CanIf_NumberOfHth"
	.byte		0
	.4byte		.L1444
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_NumberOfHth
	.section	.debug_info,,n
.L1446:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	452
	.uleb128	43
	.byte		"CanIf_DispatchConfig"
	.byte		0
	.4byte		.L1447
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_DispatchConfig
	.section	.debug_info,,n
.L1450:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	495
	.uleb128	1
	.byte		"CanIf_ControllerConfig_a"
	.byte		0
	.4byte		.L1451
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_ControllerConfig_a
	.section	.debug_info,,n
.L1456:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	533
	.uleb128	41
	.byte		"CanIf_DriverConfig_a"
	.byte		0
	.4byte		.L1457
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_DriverConfig_a
	.section	.debug_info,,n
.L1462:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	563
	.uleb128	1
	.byte		"CanIf_TransceiverDrvConfig_a"
	.byte		0
	.4byte		.L1463
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_TransceiverDrvConfig_a
	.section	.debug_info,,n
.L1468:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	665
	.uleb128	27
	.byte		"CanIf_WakeupSourceCount"
	.byte		0
	.4byte		.L1331
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_WakeupSourceCount
	.section	.debug_info,,n
.L1469:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	679
	.uleb128	1
	.byte		"CanIf_ControllerMode_a"
	.byte		0
	.4byte		.L1470
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_ControllerMode_a
	.0byte		.L1469
	.comm		CanIf_ControllerMode_a,4,2
.L1472:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	685
	.uleb128	35
	.byte		"CanIf_PduMode_a"
	.byte		0
	.4byte		.L1473
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_PduMode_a
	.comm		CanIf_PduMode_a,4,2
.L1477:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	696
	.uleb128	1
	.byte		"CanIf_TxConfirmationState_a"
	.byte		0
	.4byte		.L1478
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_TxConfirmationState_a
	.comm		CanIf_TxConfirmationState_a,4,2
.L1482:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	716
	.uleb128	1
	.byte		"CanIf_TxConfirmationState_p"
	.byte		0
	.4byte		.L1483
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_TxConfirmationState_p
	.section	.debug_info,,n
.L1484:
	.sleb128	5
	.4byte		.L1316
	.uleb128	725
	.uleb128	29
	.byte		"CanIf_NoOfPendingRequests_au8"
	.byte		0
	.4byte		.L1485
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_NoOfPendingRequests_au8
	.lcomm		CanIf_NoOfPendingRequests_au8,9,2
.L1487:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	733
	.uleb128	1
	.byte		"CanIf_NoOfPendingRequests_pu8"
	.byte		0
	.4byte		.L1488
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_NoOfPendingRequests_pu8
	.section	.debug_info,,n
.L1489:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	747
	.uleb128	28
	.byte		"CanIf_LTtoPCHashValue"
	.byte		0
	.4byte		.L1490
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_LTtoPCHashValue
	.section	.debug_info,,n
.L1491:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	753
	.uleb128	28
	.byte		"CanIf_LTHashValue"
	.byte		0
	.4byte		.L1490
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_LTHashValue
	.section	.debug_info,,n
.L1492:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	768
	.uleb128	1
	.byte		"CanIf_InitConfiguration_p"
	.byte		0
	.4byte		.L1493
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_InitConfiguration_p
	.comm		CanIf_InitConfiguration_p,4,2
.L1497:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	777
	.uleb128	1
	.byte		"CanIf_TxPduConfigInfo_p"
	.byte		0
	.4byte		.L1498
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_TxPduConfigInfo_p
	.comm		CanIf_TxPduConfigInfo_p,4,2
.L1502:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	786
	.uleb128	1
	.byte		"CanIf_RxPduConfigInfo_p"
	.byte		0
	.4byte		.L1503
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduConfigInfo_p
	.comm		CanIf_RxPduConfigInfo_p,4,2
.L1507:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	795
	.uleb128	1
	.byte		"CanIf_BufferInfo_p"
	.byte		0
	.4byte		.L1508
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_BufferInfo_p
	.comm		CanIf_BufferInfo_p,4,2
.L1512:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	806
	.uleb128	1
	.byte		"CanIf_RxPduIntDecDataBuf_pu8"
	.byte		0
	.4byte		.L1488
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduIntDecDataBuf_pu8
	.comm		CanIf_RxPduIntDecDataBuf_pu8,4,2
.L1513:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	813
	.uleb128	1
	.byte		"CanIf_RxPduIntDecNotifySt_pu8"
	.byte		0
	.4byte		.L1488
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_RxPduIntDecNotifySt_pu8
	.comm		CanIf_RxPduIntDecNotifySt_pu8,4,2
.L1514:
	.sleb128	4
	.byte		0x1
	.4byte		.L1316
	.uleb128	859
	.uleb128	1
	.byte		"CanIf_TxBuffer_p"
	.byte		0
	.4byte		.L1515
	.sleb128	5
	.byte		0x3
	.4byte		CanIf_TxBuffer_p
	.comm		CanIf_TxBuffer_p,4,2
	.section	.debug_info,,n
.L1511:
	.sleb128	6
	.4byte		.L1519
	.uleb128	266
	.uleb128	1
	.4byte		.L1520-.L2
	.uleb128	8
	.section	.debug_info,,n
.L521:
	.sleb128	7
	.byte		"CanIfNumberOfTxBuffers_u16"
	.byte		0
	.4byte		.L1319
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L522:
	.sleb128	7
	.byte		"RxPduDataBufferSize_u16"
	.byte		0
	.4byte		.L1319
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L523:
	.sleb128	7
	.byte		"RxPduIntDecDataBufferSize_u16"
	.byte		0
	.4byte		.L1319
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L524:
	.sleb128	7
	.byte		"CanIfRxIndStBufferSize_u16"
	.byte		0
	.4byte		.L1319
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L1520:
.L1496:
	.sleb128	6
	.4byte		.L1519
	.uleb128	266
	.uleb128	1
	.4byte		.L1521-.L2
	.uleb128	8
.L517:
	.sleb128	7
	.byte		"CanIfNumberOfCanRxPduIds"
	.byte		0
	.4byte		.L1522
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L518:
	.sleb128	7
	.byte		"CanIfNumberOfCanTxPduIds"
	.byte		0
	.4byte		.L1522
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L519:
	.sleb128	7
	.byte		"CanIfNoOfDynamicCanTxPduIds"
	.byte		0
	.4byte		.L1522
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L520:
	.sleb128	7
	.byte		"CanIfNumberOfCanDrivers"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L1521:
.L1467:
	.sleb128	6
	.4byte		.L1519
	.uleb128	266
	.uleb128	1
	.4byte		.L1523-.L2
	.uleb128	28
.L507:
	.sleb128	7
	.byte		"CanIfTrcvEcuMWakeupSource"
	.byte		0
	.4byte		.L1524
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L508:
	.sleb128	7
	.byte		"CanIfCanTrcvSetOpMode"
	.byte		0
	.4byte		.L1525
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L509:
	.sleb128	7
	.byte		"CanIfCanTrcvGetOpMode"
	.byte		0
	.4byte		.L1530
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L510:
	.sleb128	7
	.byte		"CanIfCanTrcvGetBusWuReason"
	.byte		0
	.4byte		.L1535
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L511:
	.sleb128	7
	.byte		"CanIfCanTrcvSetWakeupMode"
	.byte		0
	.4byte		.L1542
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L512:
	.sleb128	7
	.byte		"CanIfCanTrcvCheckWakeup"
	.byte		0
	.4byte		.L1548
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L513:
	.sleb128	7
	.byte		"CanIfTrcvWakeupSourceIntIdx"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L514:
	.sleb128	7
	.byte		"CanIfTrcvWakeupSupport_b"
	.byte		0
	.4byte		.L1552
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
.L515:
	.sleb128	7
	.byte		"CanIfTrcvIdRef_u8"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L516:
	.sleb128	7
	.byte		"CanIfTrcvDriverNameRef_u8"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
	.sleb128	0
.L1523:
.L1461:
	.sleb128	6
	.4byte		.L1519
	.uleb128	266
	.uleb128	1
	.4byte		.L1553-.L2
	.uleb128	16
.L503:
	.sleb128	7
	.byte		"CanIfCanSetControllerMode_p"
	.byte		0
	.4byte		.L1554
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L504:
	.sleb128	7
	.byte		"CanIfCanWrite_p"
	.byte		0
	.4byte		.L1561
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L505:
	.sleb128	7
	.byte		"CanIfCanCheckWakeup_p"
	.byte		0
	.4byte		.L1564
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L506:
	.sleb128	7
	.byte		"CanIfInitHohConfigRef_u8"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L1553:
.L1455:
	.sleb128	6
	.4byte		.L1519
	.uleb128	266
	.uleb128	1
	.4byte		.L1567-.L2
	.uleb128	16
.L495:
	.sleb128	7
	.byte		"CanIfCtrlrEcuMWakeupSource"
	.byte		0
	.4byte		.L1524
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L496:
	.sleb128	7
	.byte		"CanIfTrcvrEcuMWakeupSource"
	.byte		0
	.4byte		.L1524
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L497:
	.sleb128	7
	.byte		"CanIfWakeupSupport_b"
	.byte		0
	.4byte		.L1552
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L498:
	.sleb128	7
	.byte		"CanIfWakeupValidationSupport_b"
	.byte		0
	.4byte		.L1552
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L499:
	.sleb128	7
	.byte		"CanIfControllerIdRef_u8"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L500:
	.sleb128	7
	.byte		"CanIfDriverNameRef_u8"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L501:
	.sleb128	7
	.byte		"CanIfTrcvMapped_b"
	.byte		0
	.4byte		.L1552
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L502:
	.sleb128	7
	.byte		"CanIfTransceiverId_u8"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L1567:
.L1449:
	.sleb128	6
	.4byte		.L1519
	.uleb128	266
	.uleb128	1
	.4byte		.L1568-.L2
	.uleb128	16
.L491:
	.sleb128	7
	.byte		"CanIfBusOffNotification"
	.byte		0
	.4byte		.L1569
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L492:
	.sleb128	7
	.byte		"CanIfWakeupValidNotification"
	.byte		0
	.4byte		.L1573
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L493:
	.sleb128	7
	.byte		"CanIfControllerModeIndication"
	.byte		0
	.4byte		.L1577
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L494:
	.sleb128	7
	.byte		"CanIfTrcvModeIndication"
	.byte		0
	.4byte		.L1581
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L1568:
.L1423:
	.sleb128	6
	.4byte		.L1519
	.uleb128	266
	.uleb128	1
	.4byte		.L1585-.L2
	.uleb128	20
.L484:
	.sleb128	7
	.byte		"CanIfHrhType"
	.byte		0
	.4byte		.L1586
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L485:
	.sleb128	7
	.byte		"CanIfHrhRangeConfig_p"
	.byte		0
	.4byte		.L1588
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L486:
	.sleb128	7
	.byte		"CanIfHrhRxPduIdList_p"
	.byte		0
	.4byte		.L1592
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L487:
	.sleb128	7
	.byte		"CanIfHrhNoOfRxPduIds"
	.byte		0
	.4byte		.L1522
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L488:
	.sleb128	7
	.byte		"CanIfHrhIdSymRef"
	.byte		0
	.4byte		.L1318
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L489:
	.sleb128	7
	.byte		"CanIfSoftwareFilterHrh_b"
	.byte		0
	.4byte		.L1552
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L490:
	.sleb128	7
	.byte		"CanIfNoOfHrhRange_u8"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
	.sleb128	0
.L1585:
.L1591:
	.sleb128	6
	.4byte		.L1519
	.uleb128	266
	.uleb128	1
	.4byte		.L1594-.L2
	.uleb128	20
.L479:
	.sleb128	7
	.byte		"CanIfRxPduLowerCanId"
	.byte		0
	.4byte		.L1322
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L480:
	.sleb128	7
	.byte		"CanIfRxPduUpperCanId"
	.byte		0
	.4byte		.L1322
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L481:
	.sleb128	7
	.byte		"CanIfRxPduRangeCanIdType"
	.byte		0
	.4byte		.L1595
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L482:
	.sleb128	7
	.byte		"CanIfHrhRangeRxPduIdList_p"
	.byte		0
	.4byte		.L1592
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L483:
	.sleb128	7
	.byte		"CanIfHrhRangeNoOfRxPduId"
	.byte		0
	.4byte		.L1522
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L1594:
.L1506:
	.sleb128	6
	.4byte		.L1519
	.uleb128	266
	.uleb128	1
	.4byte		.L1597-.L2
	.uleb128	24
.L468:
	.sleb128	7
	.byte		"CanIfCanRxPduCanId"
	.byte		0
	.4byte		.L1322
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L469:
	.sleb128	7
	.byte		"CanIfRxPduIdCanIdType"
	.byte		0
	.4byte		.L1595
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L470:
	.sleb128	7
	.byte		"CanIfRxPduIntDecBufferInd"
	.byte		0
	.4byte		.L1324
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L471:
	.sleb128	7
	.byte		"PduIdRef"
	.byte		0
	.4byte		.L1348
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L472:
	.sleb128	7
	.byte		"CanIfCanRxPduHrhRef"
	.byte		0
	.4byte		.L1598
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L473:
	.sleb128	7
	.byte		"CanIfCanRxPduIdDlc_u8"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L474:
	.sleb128	7
	.byte		"CanIfRxPduCallBackInd_u8"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L475:
	.sleb128	7
	.byte		"CanIfReadRxPduData_b"
	.byte		0
	.4byte		.L1552
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L476:
	.sleb128	7
	.byte		"CanIfReadRxPduNotifyStatus_b"
	.byte		0
	.4byte		.L1552
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L477:
	.sleb128	7
	.byte		"CanIfCanDriverRef_u8"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L478:
	.sleb128	7
	.byte		"CanIfRxPduIntDecoupling_b"
	.byte		0
	.4byte		.L1552
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L1597:
.L1407:
	.sleb128	6
	.4byte		.L1519
	.uleb128	266
	.uleb128	1
	.4byte		.L1599-.L2
	.uleb128	8
.L464:
	.sleb128	7
	.byte		"CanIfRxUserType"
	.byte		0
	.4byte		.L1600
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L465:
	.sleb128	7
	.byte		"CanIfUserRxIndication_p"
	.byte		0
	.4byte		.L1602
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1599:
.L1501:
	.sleb128	6
	.4byte		.L1519
	.uleb128	266
	.uleb128	1
	.4byte		.L1611-.L2
	.uleb128	36
.L452:
	.sleb128	7
	.byte		"CanIfCanTxPduIdCanId"
	.byte		0
	.4byte		.L1322
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L453:
	.sleb128	7
	.byte		"CanIfCanTxPduType"
	.byte		0
	.4byte		.L1612
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L454:
	.sleb128	7
	.byte		"CanIfTxPduIdCanIdType"
	.byte		0
	.4byte		.L1614
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L455:
	.sleb128	7
	.byte		"CanIfTxBufferType"
	.byte		0
	.4byte		.L1616
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L456:
	.sleb128	7
	.byte		"CanIfBufferCfg"
	.byte		0
	.4byte		.L1515
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L457:
	.sleb128	7
	.byte		"PduIdRef"
	.byte		0
	.4byte		.L1348
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L458:
	.sleb128	7
	.byte		"CanIfCanTxPduIdDlc_u8"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L459:
	.sleb128	7
	.byte		"CanIfTxPduCallBackInd_u8"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L460:
	.sleb128	7
	.byte		"CanIfReadTxPduNotifyStatus_b"
	.byte		0
	.4byte		.L1552
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L461:
	.sleb128	7
	.byte		"DataPtrPtr"
	.byte		0
	.4byte		.L1618
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L462:
	.sleb128	7
	.byte		"TxBufferDataSize"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L463:
	.sleb128	7
	.byte		"IsDedicated"
	.byte		0
	.4byte		.L1552
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
	.sleb128	0
.L1611:
.L1401:
	.sleb128	6
	.4byte		.L1519
	.uleb128	266
	.uleb128	1
	.4byte		.L1621-.L2
	.uleb128	8
.L450:
	.sleb128	7
	.byte		"CanIfTxUserType"
	.byte		0
	.4byte		.L1600
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L451:
	.sleb128	7
	.byte		"CanIfUserTxConfirmation"
	.byte		0
	.4byte		.L1622
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1621:
.L1518:
	.sleb128	6
	.4byte		.L1519
	.uleb128	266
	.uleb128	1
	.4byte		.L1627-.L2
	.uleb128	16
.L444:
	.sleb128	7
	.byte		"CanIfBufferInfo"
	.byte		0
	.4byte		.L1628
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L445:
	.sleb128	7
	.byte		"HthIndex"
	.byte		0
	.4byte		.L1445
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L446:
	.sleb128	7
	.byte		"CanIfBufferSize"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L447:
	.sleb128	7
	.byte		"DataPtrList"
	.byte		0
	.4byte		.L1618
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L448:
	.sleb128	7
	.byte		"MaxDataSize"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L449:
	.sleb128	7
	.byte		"IsDedicated"
	.byte		0
	.4byte		.L1552
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L1627:
.L1630:
	.sleb128	6
	.4byte		.L1519
	.uleb128	266
	.uleb128	1
	.4byte		.L1631-.L2
	.uleb128	16
.L439:
	.sleb128	7
	.byte		"BufferedCanId"
	.byte		0
	.4byte		.L1322
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L440:
	.sleb128	7
	.byte		"SwLPduHandle"
	.byte		0
	.4byte		.L1522
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L441:
	.sleb128	7
	.byte		"HthIndex"
	.byte		0
	.4byte		.L1445
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L442:
	.sleb128	7
	.byte		"Data"
	.byte		0
	.4byte		.L1620
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L443:
	.sleb128	7
	.byte		"DataLength_u8"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L1631:
.L1413:
	.sleb128	6
	.4byte		.L1519
	.uleb128	266
	.uleb128	1
	.4byte		.L1632-.L2
	.uleb128	4
.L437:
	.sleb128	7
	.byte		"CanIfHthIdSymRef"
	.byte		0
	.4byte		.L1318
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L438:
	.sleb128	7
	.byte		"CanIfCanControllerIdRef_u8"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L1632:
	.section	.debug_info,,n
.L1341:
	.sleb128	8
	.4byte		.L1633
	.uleb128	63
	.uleb128	1
	.4byte		.L1634-.L2
	.byte		"Can_PduType_s"
	.byte		0
	.uleb128	12
.L433:
	.sleb128	7
	.byte		"sdu"
	.byte		0
	.4byte		.L1488
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	7
	.byte		"id"
	.byte		0
	.4byte		.L1323
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	7
	.byte		"swPduHandle"
	.byte		0
	.4byte		.L1348
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	7
	.byte		"length"
	.byte		0
	.4byte		.L1327
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L1634:
.L1610:
	.sleb128	8
	.4byte		.L1635
	.uleb128	6857
	.uleb128	5
	.4byte		.L1636-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L429:
	.sleb128	7
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L1488
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	7
	.byte		"SduLength"
	.byte		0
	.4byte		.L1637
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1636:
	.section	.debug_info,,n
.L1587:
	.sleb128	9
	.4byte		.L1519
	.uleb128	266
	.uleb128	1
	.4byte		.L1638-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"CANIF_HOH_BASIC_CAN"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANIF_HOH_FULL_CAN"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1638:
.L1617:
	.sleb128	9
	.4byte		.L1519
	.uleb128	248
	.uleb128	1
	.4byte		.L1639-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANIF_NO_BUFFER"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANIF_BUFFER"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANIF_BUFFER_POOL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1639:
.L1601:
	.sleb128	9
	.4byte		.L1519
	.uleb128	214
	.uleb128	1
	.4byte		.L1640-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANIF_CANNM"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANIF_CANTP"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANIF_PDUR"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"CANIF_CDD"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"CANIF_J1939TP"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"CANIF_XCP"
	.byte		0
	.sleb128	5
	.sleb128	10
	.byte		"CANIF_CANTSYN"
	.byte		0
	.sleb128	6
	.sleb128	10
	.byte		"CANIF_J1939NM"
	.byte		0
	.sleb128	7
	.sleb128	0
.L1640:
.L1596:
	.sleb128	9
	.4byte		.L1519
	.uleb128	185
	.uleb128	1
	.4byte		.L1641-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANIF_RX_CANID_EXTENDED"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANIF_RX_CANID_STANDARD"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANIF_RX_CANID_EXTENDED_FD"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"CANIF_RX_CANID_STANDARD_FD"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"CANIF_RX_CANID_EXTENDED_NO_FD"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"CANIF_RX_CANID_STANDARD_NO_FD"
	.byte		0
	.sleb128	5
	.sleb128	0
.L1641:
.L1615:
	.sleb128	9
	.4byte		.L1519
	.uleb128	163
	.uleb128	1
	.4byte		.L1642-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANIF_TX_CANID_EXTENDED"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANIF_TX_CANID_STANDARD"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANIF_TX_CANID_EXTENDED_FD"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"CANIF_TX_CANID_STANDARD_FD"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1642:
.L1613:
	.sleb128	9
	.4byte		.L1519
	.uleb128	147
	.uleb128	1
	.4byte		.L1643-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANIF_TXPDU_DYNAMIC"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANIF_TXPDU_STATIC"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1643:
.L1481:
	.sleb128	9
	.4byte		.L1519
	.uleb128	129
	.uleb128	1
	.4byte		.L1644-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANIF_NO_NOTIFICATION"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANIF_TX_RX_NOTIFICATION"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1644:
.L1476:
	.sleb128	9
	.4byte		.L1519
	.uleb128	103
	.uleb128	1
	.4byte		.L1645-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANIF_OFFLINE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANIF_TX_OFFLINE"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANIF_TX_OFFLINE_ACTIVE"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"CANIF_ONLINE"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"CANIF_PDU_MODE_MAX"
	.byte		0
	.sleb128	4
	.sleb128	0
.L1645:
.L1363:
	.sleb128	9
	.4byte		.L1519
	.uleb128	74
	.uleb128	1
	.4byte		.L1646-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANIF_CS_SLEEP"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANIF_CS_STARTED"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANIF_CS_STOPPED"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"CANIF_CS_UNINIT"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1646:
.L1560:
	.sleb128	9
	.4byte		.L1633
	.uleb128	63
	.uleb128	1
	.4byte		.L1647-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CAN_T_START"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CAN_T_STOP"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CAN_T_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"CAN_T_WAKEUP"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1647:
.L1558:
	.sleb128	9
	.4byte		.L1633
	.uleb128	57
	.uleb128	1
	.4byte		.L1648-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CAN_OK"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CAN_NOT_OK"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CAN_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1648:
.L1541:
	.sleb128	9
	.4byte		.L1633
	.uleb128	41
	.uleb128	15
	.4byte		.L1649-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANTRCV_WU_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANTRCV_WU_BY_PIN"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANTRCV_WU_BY_BUS"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"CANTRCV_WU_INTERNALLY"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"CANTRCV_WU_NOT_SUPPORTED"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"CANTRCV_WU_POWER_ON"
	.byte		0
	.sleb128	5
	.sleb128	10
	.byte		"CANTRCV_WU_RESET"
	.byte		0
	.sleb128	6
	.sleb128	10
	.byte		"CANTRCV_WU_BY_SYSERR"
	.byte		0
	.sleb128	7
	.sleb128	0
.L1649:
.L1547:
	.sleb128	9
	.4byte		.L1633
	.uleb128	32
	.uleb128	15
	.4byte		.L1650-.L2
	.uleb128	4
	.sleb128	10
	.byte		"CANTRCV_WUMODE_ENABLE"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANTRCV_WUMODE_DISABLE"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANTRCV_WUMODE_CLEAR"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1650:
.L1372:
	.sleb128	9
	.4byte		.L1633
	.uleb128	23
	.uleb128	15
	.4byte		.L1651-.L2
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
.L1651:
	.section	.debug_info,,n
.L1320:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L1319:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L1320
.L1318:
	.sleb128	12
	.byte		"Can_HwHandleType"
	.byte		0
	.4byte		.L1319
.L1325:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L1324:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L1325
.L1323:
	.sleb128	12
	.byte		"Can_IdType"
	.byte		0
	.4byte		.L1324
.L1322:
	.sleb128	12
	.byte		"CanIfCanId_t"
	.byte		0
	.4byte		.L1323
.L1328:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L1327:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L1328
	.section	.debug_info,,n
.L1331:
	.sleb128	13
	.4byte		.L1327
	.section	.debug_info,,n
.L1330:
	.sleb128	14
	.4byte		.L1331
.L1340:
	.sleb128	12
	.byte		"Can_PduType"
	.byte		0
	.4byte		.L1341
.L1339:
	.sleb128	13
	.4byte		.L1340
.L1338:
	.sleb128	14
	.4byte		.L1339
.L1348:
	.sleb128	12
	.byte		"PduIdType"
	.byte		0
	.4byte		.L1319
.L1362:
	.sleb128	12
	.byte		"CanIf_ControllerModeType"
	.byte		0
	.4byte		.L1363
.L1371:
	.sleb128	12
	.byte		"CanTrcv_TrcvModeType"
	.byte		0
	.4byte		.L1372
.L1400:
	.sleb128	12
	.byte		"CanIfTxPduCbkConfig_t"
	.byte		0
	.4byte		.L1401
.L1399:
	.sleb128	13
	.4byte		.L1400
	.section	.debug_info,,n
.L1397:
	.sleb128	15
	.4byte		.L1398-.L2
	.4byte		.L1399
	.section	.debug_info,,n
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L1398:
.L1406:
	.sleb128	12
	.byte		"CanIfRxPduCbkConfig_t"
	.byte		0
	.4byte		.L1407
.L1405:
	.sleb128	13
	.4byte		.L1406
.L1403:
	.sleb128	15
	.4byte		.L1404-.L2
	.4byte		.L1405
	.sleb128	16
	.uleb128	1
	.sleb128	0
.L1404:
.L1412:
	.sleb128	12
	.byte		"CanIfHthControllerConfig_t"
	.byte		0
	.4byte		.L1413
.L1411:
	.sleb128	13
	.4byte		.L1412
.L1409:
	.sleb128	15
	.4byte		.L1410-.L2
	.4byte		.L1411
	.sleb128	16
	.uleb128	8
	.sleb128	0
.L1410:
.L1416:
	.sleb128	14
	.4byte		.L1411
.L1415:
	.sleb128	13
	.4byte		.L1416
.L1422:
	.sleb128	12
	.byte		"CanIfHrhConfigInfo_t"
	.byte		0
	.4byte		.L1423
.L1421:
	.sleb128	13
	.4byte		.L1422
.L1420:
	.sleb128	14
	.4byte		.L1421
.L1419:
	.sleb128	13
	.4byte		.L1420
.L1418:
	.sleb128	14
	.4byte		.L1419
.L1425:
	.sleb128	15
	.4byte		.L1426-.L2
	.4byte		.L1331
	.sleb128	16
	.uleb128	57
	.sleb128	0
.L1426:
.L1430:
	.sleb128	13
	.4byte		.L1330
.L1428:
	.sleb128	15
	.4byte		.L1429-.L2
	.4byte		.L1430
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L1429:
.L1435:
	.sleb128	12
	.byte		"CanIf_CanControllerHrhIdRefType"
	.byte		0
	.4byte		.L1330
.L1434:
	.sleb128	13
	.4byte		.L1435
.L1433:
	.sleb128	14
	.4byte		.L1434
.L1432:
	.sleb128	13
	.4byte		.L1433
.L1439:
	.sleb128	13
	.4byte		.L1318
.L1437:
	.sleb128	15
	.4byte		.L1438-.L2
	.4byte		.L1439
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L1438:
.L1442:
	.sleb128	14
	.4byte		.L1439
.L1441:
	.sleb128	13
	.4byte		.L1442
.L1445:
	.sleb128	12
	.byte		"CanIf_HthIndexType"
	.byte		0
	.4byte		.L1319
.L1444:
	.sleb128	13
	.4byte		.L1445
.L1448:
	.sleb128	12
	.byte		"CanIfDispatchConfig_t"
	.byte		0
	.4byte		.L1449
.L1447:
	.sleb128	13
	.4byte		.L1448
.L1454:
	.sleb128	12
	.byte		"CanIfControllerConfig_t"
	.byte		0
	.4byte		.L1455
.L1453:
	.sleb128	13
	.4byte		.L1454
.L1451:
	.sleb128	15
	.4byte		.L1452-.L2
	.4byte		.L1453
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L1452:
.L1460:
	.sleb128	12
	.byte		"CanIfDriverConfig_t"
	.byte		0
	.4byte		.L1461
.L1459:
	.sleb128	13
	.4byte		.L1460
.L1457:
	.sleb128	15
	.4byte		.L1458-.L2
	.4byte		.L1459
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L1458:
.L1466:
	.sleb128	12
	.byte		"CanIfTransceiverDrvConfig_t"
	.byte		0
	.4byte		.L1467
.L1465:
	.sleb128	13
	.4byte		.L1466
.L1463:
	.sleb128	15
	.4byte		.L1464-.L2
	.4byte		.L1465
	.sleb128	16
	.uleb128	2
	.sleb128	0
.L1464:
.L1470:
	.sleb128	15
	.4byte		.L1471-.L2
	.4byte		.L1362
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L1471:
.L1475:
	.sleb128	12
	.byte		"CanIf_PduModeType"
	.byte		0
	.4byte		.L1476
.L1473:
	.sleb128	15
	.4byte		.L1474-.L2
	.4byte		.L1475
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L1474:
.L1480:
	.sleb128	12
	.byte		"CanIf_NotifStatusType"
	.byte		0
	.4byte		.L1481
.L1478:
	.sleb128	15
	.4byte		.L1479-.L2
	.4byte		.L1480
	.sleb128	16
	.uleb128	0
	.sleb128	0
.L1479:
.L1483:
	.sleb128	14
	.4byte		.L1480
.L1485:
	.sleb128	15
	.4byte		.L1486-.L2
	.4byte		.L1327
	.sleb128	16
	.uleb128	8
	.sleb128	0
.L1486:
.L1488:
	.sleb128	14
	.4byte		.L1327
.L1490:
	.sleb128	13
	.4byte		.L1324
.L1495:
	.sleb128	12
	.byte		"CanIfInitConfiguration_t"
	.byte		0
	.4byte		.L1496
.L1494:
	.sleb128	13
	.4byte		.L1495
.L1493:
	.sleb128	14
	.4byte		.L1494
.L1500:
	.sleb128	12
	.byte		"CanIfTxPduConfigInfo_t"
	.byte		0
	.4byte		.L1501
.L1499:
	.sleb128	13
	.4byte		.L1500
.L1498:
	.sleb128	14
	.4byte		.L1499
.L1505:
	.sleb128	12
	.byte		"CanIfRxPduConfigInfo_t"
	.byte		0
	.4byte		.L1506
.L1504:
	.sleb128	13
	.4byte		.L1505
.L1503:
	.sleb128	14
	.4byte		.L1504
.L1510:
	.sleb128	12
	.byte		"CanIfBufferInfo_t"
	.byte		0
	.4byte		.L1511
.L1509:
	.sleb128	13
	.4byte		.L1510
.L1508:
	.sleb128	14
	.4byte		.L1509
.L1517:
	.sleb128	12
	.byte		"CanIfBufferConfig_t"
	.byte		0
	.4byte		.L1518
.L1516:
	.sleb128	13
	.4byte		.L1517
.L1515:
	.sleb128	14
	.4byte		.L1516
.L1522:
	.sleb128	12
	.byte		"CanIfLpduId_t"
	.byte		0
	.4byte		.L1348
.L1524:
	.sleb128	12
	.byte		"EcuM_WakeupSourceType"
	.byte		0
	.4byte		.L1324
.L1529:
	.sleb128	12
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L1327
	.section	.debug_info,,n
.L1527:
	.sleb128	17
	.4byte		.L1528-.L2
	.4byte		.L1529
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	18
	.4byte		.L1327
	.sleb128	18
	.4byte		.L1371
	.sleb128	0
.L1528:
.L1526:
	.sleb128	14
	.4byte		.L1527
.L1525:
	.sleb128	12
	.byte		"CanIfCanTrcvSetOpMode_t"
	.byte		0
	.4byte		.L1526
.L1532:
	.sleb128	17
	.4byte		.L1533-.L2
	.4byte		.L1529
	.byte		0x1
	.sleb128	18
	.4byte		.L1327
.L1534:
	.sleb128	14
	.4byte		.L1371
	.sleb128	18
	.4byte		.L1534
	.sleb128	0
.L1533:
.L1531:
	.sleb128	14
	.4byte		.L1532
.L1530:
	.sleb128	12
	.byte		"CanIfCanTrcvGetOpMode_t"
	.byte		0
	.4byte		.L1531
.L1537:
	.sleb128	17
	.4byte		.L1538-.L2
	.4byte		.L1529
	.byte		0x1
	.sleb128	18
	.4byte		.L1327
.L1540:
	.sleb128	12
	.byte		"CanTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L1541
.L1539:
	.sleb128	14
	.4byte		.L1540
	.sleb128	18
	.4byte		.L1539
	.sleb128	0
.L1538:
.L1536:
	.sleb128	14
	.4byte		.L1537
.L1535:
	.sleb128	12
	.byte		"CanIfCanTrcvGetBusWuReason_t"
	.byte		0
	.4byte		.L1536
.L1544:
	.sleb128	17
	.4byte		.L1545-.L2
	.4byte		.L1529
	.byte		0x1
	.sleb128	18
	.4byte		.L1327
.L1546:
	.sleb128	12
	.byte		"CanTrcv_TrcvWakeupModeType"
	.byte		0
	.4byte		.L1547
	.sleb128	18
	.4byte		.L1546
	.sleb128	0
.L1545:
.L1543:
	.sleb128	14
	.4byte		.L1544
.L1542:
	.sleb128	12
	.byte		"CanIfCanTrcvSetWakeupMode_t"
	.byte		0
	.4byte		.L1543
.L1550:
	.sleb128	17
	.4byte		.L1551-.L2
	.4byte		.L1529
	.byte		0x1
	.sleb128	18
	.4byte		.L1327
	.sleb128	0
.L1551:
.L1549:
	.sleb128	14
	.4byte		.L1550
.L1548:
	.sleb128	12
	.byte		"CanIfCanTrcvCheckWakeup_t"
	.byte		0
	.4byte		.L1549
.L1552:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L1328
.L1557:
	.sleb128	12
	.byte		"Can_ReturnType"
	.byte		0
	.4byte		.L1558
.L1555:
	.sleb128	17
	.4byte		.L1556-.L2
	.4byte		.L1557
	.byte		0x1
	.sleb128	18
	.4byte		.L1327
.L1559:
	.sleb128	12
	.byte		"Can_StateTransitionType"
	.byte		0
	.4byte		.L1560
	.sleb128	18
	.4byte		.L1559
	.sleb128	0
.L1556:
.L1554:
	.sleb128	14
	.4byte		.L1555
.L1562:
	.sleb128	17
	.4byte		.L1563-.L2
	.4byte		.L1557
	.byte		0x1
	.sleb128	18
	.4byte		.L1318
	.sleb128	18
	.4byte		.L1338
	.sleb128	0
.L1563:
.L1561:
	.sleb128	14
	.4byte		.L1562
.L1565:
	.sleb128	17
	.4byte		.L1566-.L2
	.4byte		.L1557
	.byte		0x1
	.sleb128	18
	.4byte		.L1327
	.sleb128	0
.L1566:
.L1564:
	.sleb128	14
	.4byte		.L1565
	.section	.debug_info,,n
.L1571:
	.sleb128	19
	.4byte		.L1572-.L2
	.byte		0x1
	.sleb128	18
	.4byte		.L1327
	.sleb128	0
.L1572:
.L1570:
	.sleb128	14
	.4byte		.L1571
.L1569:
	.sleb128	12
	.byte		"CanIfControllerBusOff_t"
	.byte		0
	.4byte		.L1570
.L1575:
	.sleb128	19
	.4byte		.L1576-.L2
	.byte		0x1
	.sleb128	18
	.4byte		.L1524
	.sleb128	0
.L1576:
.L1574:
	.sleb128	14
	.4byte		.L1575
.L1573:
	.sleb128	12
	.byte		"CanIfValidationWakeupEvent_t"
	.byte		0
	.4byte		.L1574
.L1579:
	.sleb128	19
	.4byte		.L1580-.L2
	.byte		0x1
	.sleb128	18
	.4byte		.L1327
	.sleb128	18
	.4byte		.L1362
	.sleb128	0
.L1580:
.L1578:
	.sleb128	14
	.4byte		.L1579
.L1577:
	.sleb128	12
	.byte		"CanIfControllerModeIndication_t"
	.byte		0
	.4byte		.L1578
.L1583:
	.sleb128	19
	.4byte		.L1584-.L2
	.byte		0x1
	.sleb128	18
	.4byte		.L1327
	.sleb128	18
	.4byte		.L1371
	.sleb128	0
.L1584:
.L1582:
	.sleb128	14
	.4byte		.L1583
.L1581:
	.sleb128	12
	.byte		"CanIfTrcvModeIndication_t"
	.byte		0
	.4byte		.L1582
.L1586:
	.sleb128	12
	.byte		"CanIfHohType_t"
	.byte		0
	.4byte		.L1587
.L1590:
	.sleb128	12
	.byte		"CanIfHrhRangeConfig_t"
	.byte		0
	.4byte		.L1591
.L1589:
	.sleb128	13
	.4byte		.L1590
.L1588:
	.sleb128	14
	.4byte		.L1589
.L1593:
	.sleb128	13
	.4byte		.L1522
.L1592:
	.sleb128	14
	.4byte		.L1593
.L1595:
	.sleb128	12
	.byte		"CanIfRxPduCanIdType_t"
	.byte		0
	.4byte		.L1596
.L1598:
	.sleb128	12
	.byte		"CanIf_HrhIndexType"
	.byte		0
	.4byte		.L1319
.L1600:
	.sleb128	12
	.byte		"CanIfUserType_t"
	.byte		0
	.4byte		.L1601
.L1605:
	.sleb128	19
	.4byte		.L1606-.L2
	.byte		0x1
	.sleb128	18
	.4byte		.L1348
.L1609:
	.sleb128	12
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L1610
.L1608:
	.sleb128	13
	.4byte		.L1609
.L1607:
	.sleb128	14
	.4byte		.L1608
	.sleb128	18
	.4byte		.L1607
	.sleb128	0
.L1606:
.L1604:
	.sleb128	14
	.4byte		.L1605
.L1603:
	.sleb128	12
	.byte		"CanIfUserRxIndication_t"
	.byte		0
	.4byte		.L1604
.L1602:
	.sleb128	13
	.4byte		.L1603
.L1612:
	.sleb128	12
	.byte		"CanIfCanTxPduType_t"
	.byte		0
	.4byte		.L1613
.L1614:
	.sleb128	12
	.byte		"CanIfTxPduCanIdType_t"
	.byte		0
	.4byte		.L1615
.L1616:
	.sleb128	12
	.byte		"CanIfTxBufferType_t"
	.byte		0
	.4byte		.L1617
.L1620:
	.sleb128	12
	.byte		"CanIf_P2VarUint8Type"
	.byte		0
	.4byte		.L1488
.L1619:
	.sleb128	13
	.4byte		.L1620
.L1618:
	.sleb128	14
	.4byte		.L1619
.L1625:
	.sleb128	19
	.4byte		.L1626-.L2
	.byte		0x1
	.sleb128	18
	.4byte		.L1348
	.sleb128	0
.L1626:
.L1624:
	.sleb128	14
	.4byte		.L1625
.L1623:
	.sleb128	12
	.byte		"CanIfUserTxConfirmation_t"
	.byte		0
	.4byte		.L1624
.L1622:
	.sleb128	13
	.4byte		.L1623
.L1629:
	.sleb128	12
	.byte		"CanIfTxBufferRAM_t"
	.byte		0
	.4byte		.L1630
.L1628:
	.sleb128	14
	.4byte		.L1629
.L1637:
	.sleb128	12
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L1319
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L1321:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L1326:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),0
	.d2locend
.L1329:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo6),5
	.d2locend
.L1332:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo7),6
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo8),7
	.d2locend
.L1342:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locend
.L1349:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locend
.L1355:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locend
.L1361:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locend
.L1364:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo17),4
	.d2locend
.L1370:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locend
.L1373:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo20),4
	.d2locend
.L1379:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locend
.L1380:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo23),4
	.d2locend
.L1386:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locend
.L1392:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "SchM_Exit_CanIf"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "SchM_Exit_CanIf_EXCLUSIVE_AREA_0"
	.wrcm.end
	.wrcm.nelem "SchM_Enter_CanIf"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "SchM_Enter_CanIf_EXCLUSIVE_AREA_0"
	.wrcm.end
	.wrcm.nelem "CanIf_TrcvModeIndication_CanTrcv_31_TJA1145"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "CanIf_ProcessTrcvModeIndication"
	.wrcm.end
	.wrcm.nelem "CanIf_TrcvModeIndication_CanTrcv_31_UJA1132"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "CanIf_ProcessTrcvModeIndication"
	.wrcm.end
	.wrcm.nelem "CanIf_ControllerModeIndication_Can"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "CanIf_ProcessControllerModeIndication"
	.wrcm.end
	.wrcm.nelem "CanIf_ControllerBusOff_Can"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "CanIf_ProcessControllerBusOff"
	.wrcm.end
	.wrcm.nelem "CanIf_TxConfirmation_Can"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "CanIf_TxConfirmation"
	.wrcm.end
	.wrcm.nelem "CanIf_CancelTxConfirmation_Can"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "CanIf_ProcessCancelTxConf"
	.wrcm.end
	.wrcm.nelem "CanIf_RxIndication_Can"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "CanIf_ProcessRxIndication"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_Lcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_Lcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_Lcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_Lcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\CanIf_Lcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
