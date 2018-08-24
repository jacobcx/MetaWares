#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"NvM_RestoreServices.c"
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
# FUNC(boolean, NVM_CODE) NvM_ActSubStateRestorePRAMBlockDefaults(void)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_RestoreServices.c"
        .d2line         23,25
#$$ld
.L352:

#$$bf	NvM_ActSubStateRestorePRAMBlockDefaults,interprocedural,rasave,nostackparams
	.globl		NvM_ActSubStateRestorePRAMBlockDefaults
	.d2_cfa_start __cie
NvM_ActSubStateRestorePRAMBlockDefaults:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# stopProcessing=r0
.Llo1:
	stw		r0,20(r1)		# stopProcessing=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(boolean, AUTOMATIC) stopProcessing = FALSE;
	.d2line		25
	diab.li		r0,0		# stopProcessing=r0
# 
#     /* [DD-NVM00814-MGC01-V1] */
#     NvM_RestoreDefaultData(NvM_Current_Block.block_id);
	.d2line		28
.Llo2:
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	bl		NvM_RestoreDefaultData
#     Set_Crc_State_Machine(NVM_CALCULATION_CRC_INIT);
	.d2line		29
	diab.li		r3,0
	lis		r4,(NvM_Data_Crc+4)@ha
	stw		r3,(NvM_Data_Crc+4)@l(r4)
#   #if((NVM_API_CONFIG_CLASS==NVM_API_CONFIG_CLASS_2) || (NVM_API_CONFIG_CLASS==NVM_API_CONFIG_CLASS_3))
#     /* [DD-NVM00821-MGC01-V1] */
#     Set_Sub_State_Machine(NVM_SUBSTATE_RESTORE_PRAM_BLOCK_VALIDATE);
	.d2line		32
	diab.li		r4,35
	lis		r5,NvM_SubStateDbg@ha
	e_add16i		r5,r5,NvM_SubStateDbg@l
	stw		r4,0(r5)
#   #endif
# 
#     return stopProcessing;
# }
	.d2line		36
	.d2epilogue_begin
	lwz		r0,20(r1)		# stopProcessing=r0
	mtspr		lr,r0		# stopProcessing=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L353:
	.type		NvM_ActSubStateRestorePRAMBlockDefaults,@function
	.size		NvM_ActSubStateRestorePRAMBlockDefaults,.-NvM_ActSubStateRestorePRAMBlockDefaults
# Number of nodes = 24

# Allocations for NvM_ActSubStateRestorePRAMBlockDefaults
#	?a4		stopProcessing
# static FUNC(void, NVM_CODE) NvM_RestoreDone(void)
	.align		1
	.section	.text_vle
        .d2line         38,29
#$$ld
.L362:

#$$bf	NvM_RestoreDone,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,lr
	.d2_cfa_start __cie
NvM_RestoreDone:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* [DD-NVM00820-MGC01-V1] */
#     Set_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id,NVM_BLOCK_VALID);
	.d2line		41
	lis		r8,NvM_BlockManagementTable@ha
	lwz		r4,NvM_BlockManagementTable@l(r8)
	lis		r7,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r7)
	rlwinm		r3,r3,3,13,28
	se_add		r4,r3
	lwz		r4,4(r4)
	.diab.bseti		r4,1
	mr		r6,r8
	lwz		r5,NvM_BlockManagementTable@l(r6)
	se_add		r3,r5
	stw		r4,4(r3)
#     Set_Adm_Block_Attrib_Block_Changed(NvM_Current_Block.block_id,NVM_BLOCK_CHANGED);
	.d2line		42
	lwz		r3,NvM_BlockManagementTable@l(r6)
	lhz		r4,(NvM_Current_Block+4)@l(r7)
	rlwinm		r4,r4,3,13,28
	se_add		r3,r4
	lwz		r3,4(r3)
	.diab.bseti		r3,2
	lwz		r5,NvM_BlockManagementTable@l(r8)
	se_add		r4,r5
	stw		r3,4(r4)
# 
#   #if((NVM_API_CONFIG_CLASS==NVM_API_CONFIG_CLASS_2) || (NVM_API_CONFIG_CLASS==NVM_API_CONFIG_CLASS_3))
#     Set_Sub_State_Machine(NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		45
	diab.li		r3,9
	lis		r4,NvM_SubStateDbg@ha
	e_add16i		r4,r4,NvM_SubStateDbg@l
	stw		r3,0(r4)
#   #endif
# }
	.d2line		47
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
.L363:
	.type		NvM_RestoreDone,@function
	.size		NvM_RestoreDone,.-NvM_RestoreDone
# Number of nodes = 39

# Allocations for NvM_RestoreDone
# FUNC(boolean, NVM_CODE) NvM_ActSubStateRestorePRAMBlockValidate(void)
	.align		2
	.section	.text_vle
        .d2line         49,25
#$$ld
.L367:

#$$bf	NvM_ActSubStateRestorePRAMBlockValidate,interprocedural,rasave,nostackparams
	.globl		NvM_ActSubStateRestorePRAMBlockValidate
	.d2_cfa_start __cie
NvM_ActSubStateRestorePRAMBlockValidate:
.Llo3:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) stopProccessing=TRUE;
	.d2line		51
	diab.li		r31,1		# stopProccessing=r31
#     VAR(NvM_CalculationCrcStateType,AUTOMATIC) crcState = NvM_ValidateCrc(&NvM_Current_Block,NVM_UPDATE_CRC_FIELD,NvM_Common.NvM_RamMirrorPtr,FALSE);
	.d2line		52
	lis		r3,(NvM_Common+24)@ha
	lwz		r5,(NvM_Common+24)@l(r3)
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	diab.li		r4,0
	diab.li		r6,0
	bl		NvM_ValidateCrc
.Llo5:
	mr		r3,r3		# crcState=r3 crcState=r3
# 
#     /* CRC configured, calculation finished, or CRC not configured */
#     switch (crcState) {
	.d2line		55
	mr		r6,r3		# crcState=r6 crcState=r3
	se_cmpi		r6,2
	bc		1,2,.L343	# eq
.Llo6:
	se_cmpi		r6,3
	bc		1,2,.L345	# eq
	b		.L344
.L343:
#         case NVM_CALCULATION_CRC_FINISHED_OK:
#         {
#             /* [DD-NVM00270-MGC01-V1] */
#             NvM_Current_Block.info.status_err=(NvM_RequestResultType)NVM_REQ_OK;
	.d2line		59
	diab.li		r0,0
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
# 
#             NvM_RestoreDone();
	.d2line		61
	bl		NvM_RestoreDone
# 
#             stopProccessing=FALSE;
	.d2line		63
	diab.li		r31,0		# stopProccessing=r31
	b		.L344
.L345:
#         }break;
# 
#         case NVM_CALCULATION_CRC_FINISHED_NOK:
#         {
#             NvM_Current_Block.info.status_err=(NvM_RequestResultType)NVM_REQ_INTEGRITY_FAILED;
	.d2line		68
	diab.li		r0,3
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
# 
#             NvM_RestoreDone();
	.d2line		70
	bl		NvM_RestoreDone
# 
#             stopProccessing=FALSE;
	.d2line		72
	diab.li		r31,0		# stopProccessing=r31
.L344:
# 
#         }break;
# 
#         default:
#         {
# 
#         }break;
#     }
# 
#     return stopProccessing;
	.d2line		82
	rlwinm		r3,r31,0,24,31		# stopProccessing=r31
# }
	.d2line		83
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo4:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L368:
	.type		NvM_ActSubStateRestorePRAMBlockValidate,@function
	.size		NvM_ActSubStateRestorePRAMBlockValidate,.-NvM_ActSubStateRestorePRAMBlockValidate
# Number of nodes = 49

# Allocations for NvM_ActSubStateRestorePRAMBlockValidate
#	?a4		stopProccessing
#	?a5		crcState

# Allocations for module
	.section	.text_vle
	.0byte		.L376
	.section	.text_vle
#$$ld
.L5:
.L483:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L418:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM_Types.h"
.L396:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM_I.h"
.L390:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM_Private.h"
.L386:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM.h"
.L377:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\NvM_Lcfg.h"
.L354:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_RestoreServices.c"
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
	.uleb128	5
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	16
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
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
	.uleb128	19
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_RestoreServices.c"
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
.L357:
	.sleb128	2
	.4byte		.L351-.L2
	.byte		"NvM_ActSubStateRestorePRAMBlockDefaults"
	.byte		0
	.4byte		.L354
	.uleb128	23
	.uleb128	25
	.4byte		.L355
	.byte		0x1
	.byte		0x1
	.4byte		.L352
	.4byte		.L353
	.section	.debug_info,,n
.L358:
	.sleb128	3
	.4byte		.L354
	.uleb128	25
	.uleb128	29
	.byte		"stopProcessing"
	.byte		0
	.4byte		.L355
	.4byte		.L359
	.section	.debug_info,,n
	.sleb128	0
.L351:
	.section	.debug_info,,n
.L364:
	.sleb128	4
	.4byte		.L361-.L2
	.byte		"NvM_RestoreDone"
	.byte		0
	.4byte		.L354
	.uleb128	38
	.uleb128	29
	.byte		0x1
	.4byte		.L362
	.4byte		.L363
	.section	.debug_info,,n
	.sleb128	0
.L361:
	.section	.debug_info,,n
.L369:
	.sleb128	2
	.4byte		.L366-.L2
	.byte		"NvM_ActSubStateRestorePRAMBlockValidate"
	.byte		0
	.4byte		.L354
	.uleb128	49
	.uleb128	25
	.4byte		.L355
	.byte		0x1
	.byte		0x1
	.4byte		.L367
	.4byte		.L368
.L370:
	.sleb128	3
	.4byte		.L354
	.uleb128	51
	.uleb128	28
	.byte		"stopProccessing"
	.byte		0
	.4byte		.L355
	.4byte		.L371
.L372:
	.sleb128	3
	.4byte		.L354
	.uleb128	52
	.uleb128	48
	.byte		"crcState"
	.byte		0
	.4byte		.L373
	.4byte		.L375
	.section	.debug_info,,n
	.sleb128	0
.L366:
	.section	.debug_info,,n
.L376:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L377
	.uleb128	98
	.uleb128	40
	.byte		"NvM_Common"
	.byte		0
	.4byte		.L378
	.section	.debug_info,,n
.L381:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L377
	.uleb128	100
	.uleb128	49
	.byte		"NvM_BlockManagementTable"
	.byte		0
	.4byte		.L382
.L385:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L386
	.uleb128	309
	.uleb128	45
	.byte		"NvM_SubStateDbg"
	.byte		0
	.4byte		.L387
	.0byte		.L385
.L389:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L390
	.uleb128	321
	.uleb128	42
	.byte		"NvM_Current_Block"
	.byte		0
	.4byte		.L391
.L393:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L390
	.uleb128	327
	.uleb128	37
	.byte		"NvM_Data_Crc"
	.byte		0
	.4byte		.L394
	.section	.debug_info,,n
.L392:
	.sleb128	6
	.4byte		.L396
	.uleb128	227
	.uleb128	14
	.4byte		.L397-.L2
	.byte		"NvM_BlockRequestType_Tag"
	.byte		0
	.uleb128	28
	.section	.debug_info,,n
.L314:
	.sleb128	7
	.byte		"service_id"
	.byte		0
	.4byte		.L398
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L315:
	.sleb128	7
	.byte		"block_id"
	.byte		0
	.4byte		.L400
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L316:
	.sleb128	7
	.byte		"ram_block_ptr"
	.byte		0
	.4byte		.L403
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L317:
	.sleb128	7
	.byte		"info"
	.byte		0
	.4byte		.L405
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L397:
.L406:
	.sleb128	6
	.4byte		.L396
	.uleb128	227
	.uleb128	14
	.4byte		.L407-.L2
	.byte		"NvM_NvMemifInfoType_Tag"
	.byte		0
	.uleb128	16
.L309:
	.sleb128	7
	.byte		"state"
	.byte		0
	.4byte		.L408
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L310:
	.sleb128	7
	.byte		"dataset"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L311:
	.sleb128	7
	.byte		"dem_err"
	.byte		0
	.4byte		.L410
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L312:
	.sleb128	7
	.byte		"status_err"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L313:
	.sleb128	7
	.byte		"datasetPointsToRom"
	.byte		0
	.4byte		.L355
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L407:
.L395:
	.sleb128	6
	.4byte		.L396
	.uleb128	227
	.uleb128	14
	.4byte		.L413-.L2
	.byte		"NvM_DataCrcType_Tag"
	.byte		0
	.uleb128	24
.L297:
	.sleb128	7
	.byte		"result"
	.byte		0
	.4byte		.L414
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L298:
	.sleb128	7
	.byte		"state"
	.byte		0
	.4byte		.L373
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L299:
	.sleb128	7
	.byte		"crcType"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L300:
	.sleb128	7
	.byte		"one_step_data_length"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L301:
	.sleb128	7
	.byte		"data_length_to_process"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L302:
	.sleb128	7
	.byte		"buf_ptr"
	.byte		0
	.4byte		.L403
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L303:
	.sleb128	7
	.byte		"isFirstCrcCall"
	.byte		0
	.4byte		.L355
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L413:
.L384:
	.sleb128	6
	.4byte		.L418
	.uleb128	185
	.uleb128	14
	.4byte		.L419-.L2
	.byte		"NvM_BlockManagementType_Tag"
	.byte		0
	.uleb128	8
.L295:
	.sleb128	7
	.byte		"AdminBlockPtr"
	.byte		0
	.4byte		.L420
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L296:
	.sleb128	7
	.byte		"BlockDescriptorPtr"
	.byte		0
	.4byte		.L424
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L419:
.L380:
	.sleb128	6
	.4byte		.L418
	.uleb128	185
	.uleb128	14
	.4byte		.L429-.L2
	.byte		"NvM_CommonType_Tag"
	.byte		0
	.uleb128	40
.L281:
	.sleb128	7
	.byte		"NvM_CrcNumOfBytes"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L282:
	.sleb128	7
	.byte		"NvM_CompiledConfigId"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L283:
	.sleb128	7
	.byte		"NvM_TotalBlockNb"
	.byte		0
	.4byte		.L400
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L284:
	.sleb128	7
	.byte		"NvM_MultiBlockCallback"
	.byte		0
	.4byte		.L430
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L285:
	.sleb128	7
	.byte		"NvM_BswMBlockModeCallback"
	.byte		0
	.4byte		.L434
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L286:
	.sleb128	7
	.byte		"NvM_BswMJobModeCallback"
	.byte		0
	.4byte		.L438
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L287:
	.sleb128	7
	.byte		"NvM_BlockCRCPtr"
	.byte		0
	.4byte		.L442
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L288:
	.sleb128	7
	.byte		"NvM_RamMirrorPtr"
	.byte		0
	.4byte		.L444
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L289:
	.sleb128	7
	.byte		"NvM_WriteVfyBuffPtr"
	.byte		0
	.4byte		.L444
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L290:
	.sleb128	7
	.byte		"NvM_DatasetSelectionBits"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L291:
	.sleb128	7
	.byte		"NvM_RptMirrorCnt"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L292:
	.sleb128	7
	.byte		"NvM_BswMMultiBlk"
	.byte		0
	.4byte		.L355
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L293:
	.sleb128	7
	.byte		"NvM_DrvModeSwitch"
	.byte		0
	.4byte		.L355
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L294:
	.sleb128	7
	.byte		"NvM_DynConfig"
	.byte		0
	.4byte		.L355
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L429:
.L428:
	.sleb128	6
	.4byte		.L418
	.uleb128	185
	.uleb128	14
	.4byte		.L445-.L2
	.byte		"NvM_BlockDescriptorType_Tag"
	.byte		0
	.uleb128	64
.L260:
	.sleb128	7
	.byte		"NvM_BlockCRC"
	.byte		0
	.4byte		.L416
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L261:
	.sleb128	7
	.byte		"CrcFunctionPtr"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L262:
	.sleb128	7
	.byte		"NvM_NvramDeviceId"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L263:
	.sleb128	7
	.byte		"NvM_BlockManagement"
	.byte		0
	.4byte		.L452
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L264:
	.sleb128	7
	.byte		"NvM_NvBlockNum"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L265:
	.sleb128	7
	.byte		"NvM_RomBlockNum"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L266:
	.sleb128	7
	.byte		"NvM_BlockJobPriority"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L267:
	.sleb128	7
	.byte		"NvM_NvBlockLength"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L268:
	.sleb128	7
	.byte		"NvM_NvBlockBaseNumber"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L269:
	.sleb128	7
	.byte		"NvM_NvBlockIdentifier"
	.byte		0
	.4byte		.L400
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L270:
	.sleb128	7
	.byte		"NvM_MaxNoOfReadRetry"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L271:
	.sleb128	7
	.byte		"NvM_MaxNoOfWriteRetry"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L272:
	.sleb128	7
	.byte		"NvM_WriteVerificationDataSize"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L273:
	.sleb128	7
	.byte		"NvM_RamBlockDataAddress"
	.byte		0
	.4byte		.L403
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L274:
	.sleb128	7
	.byte		"NvM_RomBlockDataAddress"
	.byte		0
	.4byte		.L450
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L275:
	.sleb128	7
	.byte		"NvM_InitBlockCallback"
	.byte		0
	.4byte		.L454
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L276:
	.sleb128	7
	.byte		"NvMSingleBlockCallback"
	.byte		0
	.4byte		.L459
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L277:
	.sleb128	7
	.byte		"NvM_ReadRamBlockFromNvCallback"
	.byte		0
	.4byte		.L463
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L278:
	.sleb128	7
	.byte		"NvMWriteRamBlockToNvCallback"
	.byte		0
	.4byte		.L470
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L279:
	.sleb128	7
	.byte		"NvM_Block_DemEventIds"
	.byte		0
	.4byte		.L475
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L280:
	.sleb128	7
	.byte		"NvM_booleanconfig"
	.byte		0
	.4byte		.L401
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
	.sleb128	0
.L445:
.L423:
	.sleb128	6
	.4byte		.L418
	.uleb128	185
	.uleb128	14
	.4byte		.L479-.L2
	.byte		"NvM_AdministrativeBlockType_Tag"
	.byte		0
	.uleb128	8
.L257:
	.sleb128	7
	.byte		"dataset_idx"
	.byte		0
	.4byte		.L404
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L258:
	.sleb128	7
	.byte		"error_status"
	.byte		0
	.4byte		.L412
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L259:
	.sleb128	7
	.byte		"attributes"
	.byte		0
	.4byte		.L480
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L479:
	.section	.debug_info,,n
.L480:
	.sleb128	8
	.4byte		.L418
	.uleb128	185
	.uleb128	14
	.4byte		.L481-.L2
	.uleb128	4
	.section	.debug_info,,n
.L252:
	.sleb128	9
	.byte		"wr_protect"
	.byte		0
	.4byte		.L482
	.uleb128	4
	.byte		0x1
	.byte		0x0
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L253:
	.sleb128	9
	.byte		"valid"
	.byte		0
	.4byte		.L482
	.uleb128	4
	.byte		0x1
	.byte		0x1
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L254:
	.sleb128	9
	.byte		"changed"
	.byte		0
	.4byte		.L482
	.uleb128	4
	.byte		0x1
	.byte		0x2
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L255:
	.sleb128	9
	.byte		"BlockLock"
	.byte		0
	.4byte		.L482
	.uleb128	4
	.byte		0x1
	.byte		0x3
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L256:
	.sleb128	9
	.byte		"unused"
	.byte		0
	.4byte		.L482
	.uleb128	4
	.byte		0xc
	.byte		0x4
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L481:
.L478:
	.sleb128	6
	.4byte		.L483
	.uleb128	69
	.uleb128	1
	.4byte		.L484-.L2
	.byte		"NvM_DemEventIdType_Tag"
	.byte		0
	.uleb128	16
.L244:
	.sleb128	7
	.byte		"dem_event_e_hardware"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L245:
	.sleb128	7
	.byte		"dem_event_req_failed"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L246:
	.sleb128	7
	.byte		"dem_event_integrity_failed"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L247:
	.sleb128	7
	.byte		"dem_event_lossof_redundancy"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L248:
	.sleb128	7
	.byte		"dem_event_verify_failed"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L249:
	.sleb128	7
	.byte		"dem_event_queue_overflow"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L250:
	.sleb128	7
	.byte		"dem_event_write_protected"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L251:
	.sleb128	7
	.byte		"dem_event_wrong_block_id"
	.byte		0
	.4byte		.L485
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L484:
	.section	.debug_info,,n
.L374:
	.sleb128	10
	.4byte		.L396
	.uleb128	211
	.uleb128	14
	.4byte		.L486-.L2
	.byte		"NvM_CalculationCrcStateType_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"NVM_CALCULATION_CRC_INIT"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"NVM_CALCULATION_CRC_IN_PROGRESS"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"NVM_CALCULATION_CRC_FINISHED_OK"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"NVM_CALCULATION_CRC_FINISHED_NOK"
	.byte		0
	.sleb128	3
	.sleb128	0
.L486:
.L399:
	.sleb128	10
	.4byte		.L396
	.uleb128	176
	.uleb128	14
	.4byte		.L487-.L2
	.byte		"NvM_ServiceIdType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	11
	.byte		"NVM_INIT_ID"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"NVM_SET_DATA_INDEX_ID"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"NVM_GET_DATA_INDEX_ID"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"NVM_SET_BLOCK_PROTECTION_ID"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"NVM_GET_ERROR_STATUS_ID"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"NVM_SET_RAM_BLOCK_STATUS_ID"
	.byte		0
	.sleb128	5
	.sleb128	11
	.byte		"NVM_READ_BLOCK_ID"
	.byte		0
	.sleb128	6
	.sleb128	11
	.byte		"NVM_WRITE_BLOCK_ID"
	.byte		0
	.sleb128	7
	.sleb128	11
	.byte		"NVM_RESTORE_BLOCK_DEFAULTS_ID"
	.byte		0
	.sleb128	8
	.sleb128	11
	.byte		"NVM_ERASE_BLOCK_ID"
	.byte		0
	.sleb128	9
	.sleb128	11
	.byte		"NVM_CANCEL_WRITE_ALL_ID"
	.byte		0
	.sleb128	10
	.sleb128	11
	.byte		"NVM_INVALIDATE_NV_BLOCK_ID"
	.byte		0
	.sleb128	11
	.sleb128	11
	.byte		"NVM_READ_ALL_ID"
	.byte		0
	.sleb128	12
	.sleb128	11
	.byte		"NVM_WRITE_ALL_ID"
	.byte		0
	.sleb128	13
	.sleb128	11
	.byte		"NVM_MAIN_FUNCTION_ID"
	.byte		0
	.sleb128	14
	.sleb128	11
	.byte		"NVM_GET_VERSION_INFO_ID"
	.byte		0
	.sleb128	15
	.sleb128	11
	.byte		"NVM_CANCEL_JOB_ID"
	.byte		0
	.sleb128	16
	.sleb128	11
	.byte		"NVM_JOB_END_NOTIFICATION_ID"
	.byte		0
	.sleb128	17
	.sleb128	11
	.byte		"NVM_JOB_ERROR_NOTIFICATION_ID"
	.byte		0
	.sleb128	18
	.sleb128	11
	.byte		"NVM_SETBLOCK_LOCK_STATUS_ID"
	.byte		0
	.sleb128	19
	.sleb128	11
	.byte		"NVM_READ_PRAM_BLOCK_ID"
	.byte		0
	.sleb128	22
	.sleb128	11
	.byte		"NVM_WRITE_PRAM_BLOCK_ID"
	.byte		0
	.sleb128	23
	.sleb128	11
	.byte		"NVM_RESTORE_PRAM_BLOCK_DEFAULTS_ID"
	.byte		0
	.sleb128	24
	.sleb128	11
	.byte		"NVM_VALIDATE_ALL_ID"
	.byte		0
	.sleb128	25
	.sleb128	11
	.byte		"NVM_NO_SERVICE_PENDING_ID"
	.byte		0
	.sleb128	26
	.sleb128	0
.L487:
.L409:
	.sleb128	10
	.4byte		.L396
	.uleb128	122
	.uleb128	14
	.4byte		.L488-.L2
	.byte		"NvM_BlockMemifDriverStateType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	11
	.byte		"NVM_BLOCK_NV_READ_INIT"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"NVM_BLOCK_NV_READ_START"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"NVM_BLOCK_NV_READ_ROM_DATASET_VALIDATE"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"NVM_BLOCK_NV_READ_IN_PROGRESS"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"NVM_BLOCK_NV_READ_CHECK_CRC"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"NVM_BLOCK_NV_READ_RAMMIRROR"
	.byte		0
	.sleb128	5
	.sleb128	11
	.byte		"NVM_BLOCK_NV_READ_PROCESS_ERR"
	.byte		0
	.sleb128	6
	.sleb128	11
	.byte		"NVM_BLOCK_NV_READ_DONE"
	.byte		0
	.sleb128	7
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_PREINIT"
	.byte		0
	.sleb128	8
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_INIT"
	.byte		0
	.sleb128	9
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_IN_PROGRESS"
	.byte		0
	.sleb128	10
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_VALIDATE"
	.byte		0
	.sleb128	11
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_PROCESS_ERR"
	.byte		0
	.sleb128	12
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_START_WRITE"
	.byte		0
	.sleb128	13
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_VERIFICATION"
	.byte		0
	.sleb128	14
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_VERIFICATION_IN_PROGRESS"
	.byte		0
	.sleb128	15
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_DONE"
	.byte		0
	.sleb128	16
	.sleb128	11
	.byte		"NVM_BLOCK_NV_READ_PRAM_INIT"
	.byte		0
	.sleb128	17
	.sleb128	11
	.byte		"NVM_BLOCK_NV_READ_PRAM_START"
	.byte		0
	.sleb128	18
	.sleb128	11
	.byte		"NVM_BLOCK_NV_READ_PRAM_ROM_DATASET_VALIDATE"
	.byte		0
	.sleb128	19
	.sleb128	11
	.byte		"NVM_BLOCK_NV_READ_PRAM_IN_PROGRESS"
	.byte		0
	.sleb128	20
	.sleb128	11
	.byte		"NVM_BLOCK_NV_READ_PRAM_CHECK_CRC"
	.byte		0
	.sleb128	21
	.sleb128	11
	.byte		"NVM_BLOCK_NV_READ_PRAM_RAMMIRROR"
	.byte		0
	.sleb128	22
	.sleb128	11
	.byte		"NVM_BLOCK_NV_READ_PRAM_RECALC"
	.byte		0
	.sleb128	23
	.sleb128	11
	.byte		"NVM_BLOCK_NV_READ_PRAM_PROCESS_ERR"
	.byte		0
	.sleb128	24
	.sleb128	11
	.byte		"NVM_BLOCK_NV_READ_PRAM_DONE"
	.byte		0
	.sleb128	25
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_INIT"
	.byte		0
	.sleb128	26
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_PREINIT"
	.byte		0
	.sleb128	27
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_IN_PROGRESS"
	.byte		0
	.sleb128	28
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_VALIDATE"
	.byte		0
	.sleb128	29
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_PROCESS_ERR"
	.byte		0
	.sleb128	30
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_START_WRITE"
	.byte		0
	.sleb128	31
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_VERIFICATION"
	.byte		0
	.sleb128	32
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_VERIFICATION_IN_PROGRESS"
	.byte		0
	.sleb128	33
	.sleb128	11
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_DONE"
	.byte		0
	.sleb128	34
	.sleb128	11
	.byte		"NVM_BLOCK_VALIDATE_INIT"
	.byte		0
	.sleb128	35
	.sleb128	11
	.byte		"NVM_BLOCK_VALIDATE_USING_RAMMIRROR"
	.byte		0
	.sleb128	36
	.sleb128	11
	.byte		"NVM_BLOCK_VALIDATE_CHECK_CRC_RAM"
	.byte		0
	.sleb128	37
	.sleb128	11
	.byte		"NVM_BLOCK_VALIDATE_CHECK_CRC_RAMMIRROR"
	.byte		0
	.sleb128	38
	.sleb128	11
	.byte		"NVM_BLOCK_VALIDATE_DONE"
	.byte		0
	.sleb128	39
	.sleb128	11
	.byte		"NVM_BLOCK_MEMIF_DRIVER_STATE_NB"
	.byte		0
	.sleb128	40
	.sleb128	0
.L488:
.L388:
	.sleb128	10
	.4byte		.L386
	.uleb128	185
	.uleb128	14
	.4byte		.L489-.L2
	.byte		"NvM_SubStateMachineType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	11
	.byte		"NVM_SUBSTATE_READALL_INIT"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"NVM_SUBSTATE_READALL_SELECT_READ_METHOD"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"NVM_SUBSTATE_READALL_EXTENDED_METHOD"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"NVM_SUBSTATE_WRITEALL_INIT"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"NVM_SUBSTATE_WRITEALL_FIND_BLOCK"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"NVM_SUBSTATE_WRITEALL_CANCELED"
	.byte		0
	.sleb128	5
	.sleb128	11
	.byte		"NVM_SUBSTATE_VALIDATEALL_INIT"
	.byte		0
	.sleb128	6
	.sleb128	11
	.byte		"NVM_SUBSTATE_VALIDATEALL_SELECT_BLOCKS"
	.byte		0
	.sleb128	7
	.sleb128	11
	.byte		"NVM_SUBSTATE_VALIDATEALL_OPERATION_DONE"
	.byte		0
	.sleb128	8
	.sleb128	11
	.byte		"NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE"
	.byte		0
	.sleb128	9
	.sleb128	11
	.byte		"NVM_SUBSTATE_MULTIBLOCK_OPERATION_DONE"
	.byte		0
	.sleb128	10
	.sleb128	11
	.byte		"NVM_SUBSTATE_READBLOCK_INIT"
	.byte		0
	.sleb128	11
	.sleb128	11
	.byte		"NVM_SUBSTATE_READBLOCK_READING"
	.byte		0
	.sleb128	12
	.sleb128	11
	.byte		"NVM_SUBSTATE_READBLOCK_VALIDATE"
	.byte		0
	.sleb128	13
	.sleb128	11
	.byte		"NVM_SUBSTATE_RESTOREBLOCK_READ_DEFAULTS"
	.byte		0
	.sleb128	14
	.sleb128	11
	.byte		"NVM_SUBSTATE_RESTOREBLOCK_VALIDATE"
	.byte		0
	.sleb128	15
	.sleb128	11
	.byte		"NVM_SUBSTATE_WRITEBLOCK_INIT"
	.byte		0
	.sleb128	16
	.sleb128	11
	.byte		"NVM_SUBSTATE_WRITEBLOCK_WRITING"
	.byte		0
	.sleb128	17
	.sleb128	11
	.byte		"NVM_SUBSTATE_ERASEBLOCK_INIT"
	.byte		0
	.sleb128	18
	.sleb128	11
	.byte		"NVM_SUBSTATE_ERASEBLOCK_START"
	.byte		0
	.sleb128	19
	.sleb128	11
	.byte		"NVM_SUBSTATE_ERASEBLOCK_INPROGRESS"
	.byte		0
	.sleb128	20
	.sleb128	11
	.byte		"NVM_SUBSTATE_INVALIDATEBLOCK_INIT"
	.byte		0
	.sleb128	21
	.sleb128	11
	.byte		"NVM_SUBSTATE_INVALIDATEBLOCK_STARTPROCESS"
	.byte		0
	.sleb128	22
	.sleb128	11
	.byte		"NVM_SUBSTATE_INVALIDATEBLOCK_OPN_IS_IN_PROGRESS"
	.byte		0
	.sleb128	23
	.sleb128	11
	.byte		"NVM_SUBSTATE_READALL_CHECK_DATA_VALID"
	.byte		0
	.sleb128	24
	.sleb128	11
	.byte		"NVM_SUBSTATE_READALL_VALIDATE_DEFAULTS"
	.byte		0
	.sleb128	25
	.sleb128	11
	.byte		"NVM_SUBSTATE_READALL_READ_CONFIGID"
	.byte		0
	.sleb128	26
	.sleb128	11
	.byte		"NVM_SUBSTATE_READALL_STANDARD_METHOD"
	.byte		0
	.sleb128	27
	.sleb128	11
	.byte		"NVM_SUBSTATE_READALL_RESTORE"
	.byte		0
	.sleb128	28
	.sleb128	11
	.byte		"NVM_SUBSTATE_READALL_RESTORE_VALIDATE"
	.byte		0
	.sleb128	29
	.sleb128	11
	.byte		"NVM_SUBSTATE_WRITEALL_WRITING"
	.byte		0
	.sleb128	30
	.sleb128	11
	.byte		"NVM_SUBSTATE_READ_PRAM_BLOCK_INIT"
	.byte		0
	.sleb128	31
	.sleb128	11
	.byte		"NVM_SUBSTATE_READ_PRAM_BLOCK_READING"
	.byte		0
	.sleb128	32
	.sleb128	11
	.byte		"NVM_SUBSTATE_READ_PRAM_BLOCK_VALIDATE"
	.byte		0
	.sleb128	33
	.sleb128	11
	.byte		"NVM_SUBSTATE_RESTORE_PRAM_BLOCK_READ_DEFAULTS"
	.byte		0
	.sleb128	34
	.sleb128	11
	.byte		"NVM_SUBSTATE_RESTORE_PRAM_BLOCK_VALIDATE"
	.byte		0
	.sleb128	35
	.sleb128	11
	.byte		"NVM_SUBSTATE_WRITE_PRAM_BLOCK_INIT"
	.byte		0
	.sleb128	36
	.sleb128	11
	.byte		"NVM_SUBSTATE_WRITE_PRAM_BLOCK_WRITING"
	.byte		0
	.sleb128	37
	.sleb128	11
	.byte		"NVM_SUBSTATE_VALIDATEALL_VALIDATE"
	.byte		0
	.sleb128	38
	.sleb128	11
	.byte		"NVM_SUBSTATE_SERVICE_NB"
	.byte		0
	.sleb128	39
	.sleb128	0
.L489:
.L453:
	.sleb128	10
	.4byte		.L418
	.uleb128	185
	.uleb128	14
	.4byte		.L490-.L2
	.byte		"NvM_BlockMngmtType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	11
	.byte		"NVM_BLOCK_NATIVE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"NVM_BLOCK_REDUNDANT"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"NVM_BLOCK_DATASET"
	.byte		0
	.sleb128	2
	.sleb128	0
.L490:
.L417:
	.sleb128	10
	.4byte		.L418
	.uleb128	172
	.uleb128	14
	.4byte		.L491-.L2
	.byte		"NvM_BlockCrcType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	11
	.byte		"NVM_CRC8"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"NVM_CRC16"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"NVM_CRC32"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"NVM_CRC00"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"NVM_CRC_TYPES_NB"
	.byte		0
	.sleb128	4
	.sleb128	0
.L491:
.L411:
	.sleb128	10
	.4byte		.L418
	.uleb128	153
	.uleb128	14
	.4byte		.L492-.L2
	.byte		"NvM_DemEventIdNumberType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	11
	.byte		"NVM_DEM_EVENT_E_NO_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"NVM_DEM_EVENT_E_HARDWARE"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"NVM_DEM_EVENT_E_REQ_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"NVM_DEM_EVENT_E_INTEGRITY_FAILED"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"NVM_DEM_EVENT_E_LOSS_OF_REDUNDANCY"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"NVM_DEM_EVENT_E_VERIFY_FAILED"
	.byte		0
	.sleb128	5
	.sleb128	11
	.byte		"NVM_DEM_EVENT_E_QUEUE_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	11
	.byte		"NVM_DEM_EVENT_E_WRITE_PROTECTED"
	.byte		0
	.sleb128	7
	.sleb128	11
	.byte		"NVM_DEM_EVENT_E_WRONG_BLOCK_ID"
	.byte		0
	.sleb128	8
	.sleb128	0
.L492:
	.section	.debug_info,,n
.L356:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L355:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L356
.L373:
	.sleb128	13
	.byte		"NvM_CalculationCrcStateType"
	.byte		0
	.4byte		.L374
.L379:
	.sleb128	13
	.byte		"NvM_CommonType"
	.byte		0
	.4byte		.L380
	.section	.debug_info,,n
.L378:
	.sleb128	14
	.4byte		.L379
.L383:
	.sleb128	13
	.byte		"NvM_BlockManagementType"
	.byte		0
	.4byte		.L384
.L382:
	.sleb128	14
	.4byte		.L383
.L387:
	.sleb128	13
	.byte		"NvM_SubStateMachineType"
	.byte		0
	.4byte		.L388
.L391:
	.sleb128	13
	.byte		"NvM_BlockRequestType"
	.byte		0
	.4byte		.L392
.L394:
	.sleb128	13
	.byte		"NvM_DataCrcType"
	.byte		0
	.4byte		.L395
.L398:
	.sleb128	13
	.byte		"NvM_ServiceIdType"
	.byte		0
	.4byte		.L399
.L402:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L401:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L402
.L400:
	.sleb128	13
	.byte		"NvM_BlockIdType"
	.byte		0
	.4byte		.L401
.L404:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L356
	.section	.debug_info,,n
.L403:
	.sleb128	15
	.4byte		.L404
.L405:
	.sleb128	13
	.byte		"NvM_NvMemifInfoType"
	.byte		0
	.4byte		.L406
.L408:
	.sleb128	13
	.byte		"NvM_BlockMemifDriverStateType"
	.byte		0
	.4byte		.L409
.L410:
	.sleb128	13
	.byte		"NvM_DemEventIdNumberType"
	.byte		0
	.4byte		.L411
.L412:
	.sleb128	13
	.byte		"NvM_RequestResultType"
	.byte		0
	.4byte		.L404
.L415:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L414:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L415
.L416:
	.sleb128	13
	.byte		"NvM_BlockCrcType"
	.byte		0
	.4byte		.L417
.L422:
	.sleb128	13
	.byte		"NvM_AdministrativeBlockType"
	.byte		0
	.4byte		.L423
.L421:
	.sleb128	15
	.4byte		.L422
.L420:
	.sleb128	14
	.4byte		.L421
.L427:
	.sleb128	13
	.byte		"NvM_BlockDescriptorType"
	.byte		0
	.4byte		.L428
.L426:
	.sleb128	14
	.4byte		.L427
.L425:
	.sleb128	15
	.4byte		.L426
.L424:
	.sleb128	14
	.4byte		.L425
	.section	.debug_info,,n
.L432:
	.sleb128	16
	.4byte		.L433-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	17
	.4byte		.L404
	.sleb128	17
	.4byte		.L412
	.sleb128	0
.L433:
.L431:
	.sleb128	15
	.4byte		.L432
.L430:
	.sleb128	13
	.byte		"NvM_MultiBlockCallbackFunctionType"
	.byte		0
	.4byte		.L431
.L436:
	.sleb128	16
	.4byte		.L437-.L2
	.byte		0x1
	.sleb128	17
	.4byte		.L400
	.sleb128	17
	.4byte		.L412
	.sleb128	0
.L437:
.L435:
	.sleb128	15
	.4byte		.L436
.L434:
	.sleb128	13
	.byte		"NvM_BswM_NvM_CurrentBlockModeFunctionType"
	.byte		0
	.4byte		.L435
.L440:
	.sleb128	16
	.4byte		.L441-.L2
	.byte		0x1
	.sleb128	17
	.4byte		.L404
	.sleb128	17
	.4byte		.L412
	.sleb128	0
.L441:
.L439:
	.sleb128	15
	.4byte		.L440
.L438:
	.sleb128	13
	.byte		"NvM_BswM_NvM_CurrentJobModeFunctionType"
	.byte		0
	.4byte		.L439
.L443:
	.sleb128	15
	.4byte		.L414
.L442:
	.sleb128	14
	.4byte		.L443
.L444:
	.sleb128	14
	.4byte		.L403
	.section	.debug_info,,n
.L448:
	.sleb128	18
	.4byte		.L449-.L2
	.4byte		.L414
	.byte		0x1
.L451:
	.sleb128	14
	.4byte		.L404
.L450:
	.sleb128	15
	.4byte		.L451
	.sleb128	17
	.4byte		.L450
	.sleb128	17
	.4byte		.L414
	.sleb128	17
	.4byte		.L414
	.sleb128	17
	.4byte		.L355
	.sleb128	0
.L449:
.L447:
	.sleb128	15
	.4byte		.L448
.L446:
	.sleb128	13
	.byte		"NVM_CRC32_FUNC"
	.byte		0
	.4byte		.L447
.L452:
	.sleb128	13
	.byte		"NvM_BlockMngmtType"
	.byte		0
	.4byte		.L453
.L458:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L404
.L456:
	.sleb128	18
	.4byte		.L457-.L2
	.4byte		.L458
	.byte		0x1
	.sleb128	0
.L457:
.L455:
	.sleb128	15
	.4byte		.L456
.L454:
	.sleb128	13
	.byte		"NvM_InitBlockCallbackPtrType"
	.byte		0
	.4byte		.L455
.L461:
	.sleb128	18
	.4byte		.L462-.L2
	.4byte		.L458
	.byte		0x1
	.sleb128	17
	.4byte		.L404
	.sleb128	17
	.4byte		.L412
	.sleb128	0
.L462:
.L460:
	.sleb128	15
	.4byte		.L461
.L459:
	.sleb128	13
	.byte		"NvM_SingleBlockCallbackFunctionType"
	.byte		0
	.4byte		.L460
.L465:
	.sleb128	18
	.4byte		.L466-.L2
	.4byte		.L458
	.byte		0x1
	.section	.debug_info,,n
.L469:
	.sleb128	19
	.byte		"void"
	.byte		0
	.byte		0x0
.L468:
	.sleb128	14
	.4byte		.L469
.L467:
	.sleb128	15
	.4byte		.L468
	.sleb128	17
	.4byte		.L467
	.sleb128	0
.L466:
.L464:
	.sleb128	15
	.4byte		.L465
.L463:
	.sleb128	13
	.byte		"NvM_RamMirrorOperationReadCallBackType"
	.byte		0
	.4byte		.L464
.L472:
	.sleb128	18
	.4byte		.L473-.L2
	.4byte		.L458
	.byte		0x1
.L474:
	.sleb128	15
	.4byte		.L469
	.sleb128	17
	.4byte		.L474
	.sleb128	0
.L473:
.L471:
	.sleb128	15
	.4byte		.L472
.L470:
	.sleb128	13
	.byte		"NvM_RamMirrorOperationWriteCallBackType"
	.byte		0
	.4byte		.L471
.L477:
	.sleb128	13
	.byte		"NvM_DemEventIdType"
	.byte		0
	.4byte		.L478
.L476:
	.sleb128	14
	.4byte		.L477
.L475:
	.sleb128	15
	.4byte		.L476
.L482:
	.sleb128	12
	.byte		"unsigned int"
	.byte		0
	.byte		0x7
	.byte		0x4
.L485:
	.sleb128	13
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L401
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L359:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),0
	.d2locend
.L371:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L375:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "NvM_ActSubStateRestorePRAMBlockValidate"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "NvM_RestoreDone","NvM_ValidateCrc"
	.wrcm.end
	.wrcm.nelem "NvM_RestoreDone"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateRestorePRAMBlockDefaults"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "NvM_RestoreDefaultData"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\NvM_RestoreServices.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\NvM_RestoreServices.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\NvM_RestoreServices.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\NvM_RestoreServices.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\NvM_RestoreServices.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\NvM_RestoreServices.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MEM\NvM\ssc\make\..\src\NvM_RestoreServices.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
