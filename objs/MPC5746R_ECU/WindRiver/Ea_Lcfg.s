#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Ea_Lcfg.c"
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
# static FUNC(Std_ReturnType, EA_CODE)Eep_31_AT25256B_ReadWrapper
	.align		1
	.section	.text_vle
	.d2file		"gen\\MPC5746R_ECU\\WindRiver\\Ea_Lcfg.c"
        .d2line         194,37
#$$ld
.L186:

#$$bf	Eep_31_AT25256B_ReadWrapper,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Eep_31_AT25256B_ReadWrapper:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# Length=r0
	stw		r0,20(r1)		# Length=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# EepromAddress=r3 EepromAddress=r3
	mr		r5,r5		# Length=r5 Length=r5
	.d2prologue_end
# (
#    VAR(uint32, AUTOMATIC) EepromAddress,
#    P2VAR(uint8, AUTOMATIC,EA_APPL_DATA) DataBufferPtr,
#    VAR(uint32, AUTOMATIC) Length
# )
# {
#    return Eep_31_AT25256B_Read((Eep_31_AT25256B_AddressType) EepromAddress, DataBufferPtr, (Eep_31_AT25256B_LengthType) Length);
	.d2line		201
	mr		r0,r3		# EepromAddress=r0 EepromAddress=r3
	rlwinm		r3,r3,0,16,31		# EepromAddress=r3 EepromAddress=r3
.Llo2:
	mr		r0,r5		# Length=r0 Length=r5
	rlwinm		r5,r5,0,16,31		# Length=r5 Length=r5
.Llo5:
	mr		r0,r4		# DataBufferPtr=r0 DataBufferPtr=r4
	bl		Eep_31_AT25256B_Read
.Llo3:
	rlwinm		r3,r3,0,24,31		# EepromAddress=r3 EepromAddress=r3
# }
	.d2line		202
	.d2epilogue_begin
.Llo4:
	lwz		r0,20(r1)		# Length=r0
	mtspr		lr,r0		# Length=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L187:
	.type		Eep_31_AT25256B_ReadWrapper,@function
	.size		Eep_31_AT25256B_ReadWrapper,.-Eep_31_AT25256B_ReadWrapper
# Number of nodes = 13

# Allocations for Eep_31_AT25256B_ReadWrapper
#	?a4		EepromAddress
#	?a5		DataBufferPtr
#	?a6		Length
# static FUNC(Std_ReturnType, EA_CODE)Eep_31_AT25256B_WriteWrapper
	.align		1
	.section	.text_vle
        .d2line         203,37
#$$ld
.L201:

#$$bf	Eep_31_AT25256B_WriteWrapper,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Eep_31_AT25256B_WriteWrapper:
.Llo6:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# Length=r0
	stw		r0,20(r1)		# Length=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# EepromAddress=r3 EepromAddress=r3
	mr		r5,r5		# Length=r5 Length=r5
	.d2prologue_end
# (
#    VAR(uint32, AUTOMATIC) EepromAddress,
#    P2CONST(uint8, AUTOMATIC,EA_APPL_DATA) DataBufferPtr,
#    VAR(uint32, AUTOMATIC) Length
# )
# {
#    return Eep_31_AT25256B_Write((Eep_31_AT25256B_AddressType) EepromAddress, DataBufferPtr, (Eep_31_AT25256B_LengthType) Length);
	.d2line		210
	mr		r0,r3		# EepromAddress=r0 EepromAddress=r3
	rlwinm		r3,r3,0,16,31		# EepromAddress=r3 EepromAddress=r3
.Llo7:
	mr		r0,r5		# Length=r0 Length=r5
	rlwinm		r5,r5,0,16,31		# Length=r5 Length=r5
.Llo10:
	mr		r0,r4		# DataBufferPtr=r0 DataBufferPtr=r4
	bl		Eep_31_AT25256B_Write
.Llo8:
	rlwinm		r3,r3,0,24,31		# EepromAddress=r3 EepromAddress=r3
# }
	.d2line		211
	.d2epilogue_begin
.Llo9:
	lwz		r0,20(r1)		# Length=r0
	mtspr		lr,r0		# Length=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L202:
	.type		Eep_31_AT25256B_WriteWrapper,@function
	.size		Eep_31_AT25256B_WriteWrapper,.-Eep_31_AT25256B_WriteWrapper
# Number of nodes = 13

# Allocations for Eep_31_AT25256B_WriteWrapper
#	?a4		EepromAddress
#	?a5		DataBufferPtr
#	?a6		Length
# static FUNC(Std_ReturnType, EA_CODE)Eep_31_AT25256B_EraseWrapper
	.align		1
	.section	.text_vle
        .d2line         212,37
#$$ld
.L211:

#$$bf	Eep_31_AT25256B_EraseWrapper,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Eep_31_AT25256B_EraseWrapper:
.Llo11:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# Length=r0
	stw		r0,20(r1)		# Length=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# EepromAddress=r3 EepromAddress=r3
	mr		r4,r4		# Length=r4 Length=r4
	.d2prologue_end
# (
#    VAR(uint32, AUTOMATIC) EepromAddress,
#    VAR(uint32, AUTOMATIC) Length
# )
# {
#    return Eep_31_AT25256B_Erase((Eep_31_AT25256B_AddressType) EepromAddress, (Eep_31_AT25256B_LengthType) Length);
	.d2line		218
	mr		r0,r3		# EepromAddress=r0 EepromAddress=r3
	rlwinm		r3,r3,0,16,31		# EepromAddress=r3 EepromAddress=r3
.Llo12:
	mr		r0,r4		# Length=r0 Length=r4
	rlwinm		r4,r4,0,16,31		# Length=r4 Length=r4
.Llo15:
	bl		Eep_31_AT25256B_Erase
.Llo13:
	rlwinm		r3,r3,0,24,31		# EepromAddress=r3 EepromAddress=r3
# }
	.d2line		219
	.d2epilogue_begin
.Llo14:
	lwz		r0,20(r1)		# Length=r0
	mtspr		lr,r0		# Length=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L212:
	.type		Eep_31_AT25256B_EraseWrapper,@function
	.size		Eep_31_AT25256B_EraseWrapper,.-Eep_31_AT25256B_EraseWrapper
# Number of nodes = 11

# Allocations for Eep_31_AT25256B_EraseWrapper
#	?a4		EepromAddress
#	?a5		Length

# Allocations for module
	.section	.text_vle
	.0byte		.L216
	.section	.text_vle
	.type		Ea_LTtoPCHashValue,@object
	.size		Ea_LTtoPCHashValue,4
	.align		2
	.globl		Ea_LTtoPCHashValue
Ea_LTtoPCHashValue:
	.long		-1606686792
	.section	.text_vle
	.type		EA_BlockDescriptor,@object
	.size		EA_BlockDescriptor,30
	.align		1
	.globl		EA_BlockDescriptor
EA_BlockDescriptor:
	.short		2
	.short		100
	.byte		0
	.space		1
	.short		1
	.byte		1
	.byte		0
	.short		3
	.short		100
	.byte		0
	.space		1
	.short		3
	.byte		1
	.byte		0
	.short		4
	.short		256
	.byte		0
	.space		1
	.short		5
	.byte		1
	.byte		0
	.section	.text_vle
	.type		EA_General,@object
	.size		EA_General,8
	.align		2
	.globl		EA_General
EA_General:
	.long		NvM_JobErrorNotification
	.long		NvM_JobEndNotification
	.section	.text_vle
	.type		Ea_SetModeFctPtr,@object
	.size		Ea_SetModeFctPtr,4
	.align		2
	.globl		Ea_SetModeFctPtr
Ea_SetModeFctPtr:
	.long		Eep_31_AT25256B_SetMode
	.section	.text_vle
	.type		Ea_ReadFctPtr,@object
	.size		Ea_ReadFctPtr,4
	.align		2
	.globl		Ea_ReadFctPtr
Ea_ReadFctPtr:
	.long		Eep_31_AT25256B_ReadWrapper
	.section	.text_vle
	.type		Ea_WriteFctPtr,@object
	.size		Ea_WriteFctPtr,4
	.align		2
	.globl		Ea_WriteFctPtr
Ea_WriteFctPtr:
	.long		Eep_31_AT25256B_WriteWrapper
	.section	.text_vle
	.type		Ea_CancelFctPtr,@object
	.size		Ea_CancelFctPtr,4
	.align		2
	.globl		Ea_CancelFctPtr
Ea_CancelFctPtr:
	.long		Eep_31_AT25256B_Cancel
	.section	.text_vle
	.type		Ea_GetStatusFctPtr,@object
	.size		Ea_GetStatusFctPtr,4
	.align		2
	.globl		Ea_GetStatusFctPtr
Ea_GetStatusFctPtr:
	.long		Eep_31_AT25256B_GetStatus
	.section	.text_vle
	.type		Ea_GetJobResultFctPtr,@object
	.size		Ea_GetJobResultFctPtr,4
	.align		2
	.globl		Ea_GetJobResultFctPtr
Ea_GetJobResultFctPtr:
	.long		Eep_31_AT25256B_GetJobResult
	.section	.text_vle
	.type		Ea_EraseFctPtr,@object
	.size		Ea_EraseFctPtr,4
	.align		2
	.globl		Ea_EraseFctPtr
Ea_EraseFctPtr:
	.long		Eep_31_AT25256B_EraseWrapper
	.section	.text_vle
#$$ld
.L5:
.L301:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\MemIf\\ssc\\make\\..\\inc\\MemIf_Types.h"
.L290:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\Ea\\ssc\\make\\..\\inc\\Ea_Types.h"
.L188:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\Ea_Lcfg.c"
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
	.uleb128	6
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
	.uleb128	7
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
	.uleb128	8
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
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
	.uleb128	10
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\Ea_Lcfg.c"
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
.L192:
	.sleb128	2
	.4byte		.L185-.L2
	.byte		"Eep_31_AT25256B_ReadWrapper"
	.byte		0
	.4byte		.L188
	.uleb128	194
	.uleb128	37
	.4byte		.L189
	.byte		0x1
	.4byte		.L186
	.4byte		.L187
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L188
	.uleb128	194
	.uleb128	37
	.byte		"EepromAddress"
	.byte		0
	.4byte		.L193
	.4byte		.L195
	.sleb128	3
	.4byte		.L188
	.uleb128	194
	.uleb128	37
	.byte		"DataBufferPtr"
	.byte		0
	.4byte		.L196
	.4byte		.L197
	.sleb128	3
	.4byte		.L188
	.uleb128	194
	.uleb128	37
	.byte		"Length"
	.byte		0
	.4byte		.L193
	.4byte		.L198
	.section	.debug_info,,n
	.sleb128	0
.L185:
	.section	.debug_info,,n
.L203:
	.sleb128	2
	.4byte		.L200-.L2
	.byte		"Eep_31_AT25256B_WriteWrapper"
	.byte		0
	.4byte		.L188
	.uleb128	203
	.uleb128	37
	.4byte		.L189
	.byte		0x1
	.4byte		.L201
	.4byte		.L202
	.sleb128	3
	.4byte		.L188
	.uleb128	203
	.uleb128	37
	.byte		"EepromAddress"
	.byte		0
	.4byte		.L193
	.4byte		.L204
	.sleb128	3
	.4byte		.L188
	.uleb128	203
	.uleb128	37
	.byte		"DataBufferPtr"
	.byte		0
	.4byte		.L205
	.4byte		.L207
	.sleb128	3
	.4byte		.L188
	.uleb128	203
	.uleb128	37
	.byte		"Length"
	.byte		0
	.4byte		.L193
	.4byte		.L208
	.section	.debug_info,,n
	.sleb128	0
.L200:
	.section	.debug_info,,n
.L213:
	.sleb128	2
	.4byte		.L210-.L2
	.byte		"Eep_31_AT25256B_EraseWrapper"
	.byte		0
	.4byte		.L188
	.uleb128	212
	.uleb128	37
	.4byte		.L189
	.byte		0x1
	.4byte		.L211
	.4byte		.L212
	.sleb128	3
	.4byte		.L188
	.uleb128	212
	.uleb128	37
	.byte		"EepromAddress"
	.byte		0
	.4byte		.L193
	.4byte		.L214
	.sleb128	3
	.4byte		.L188
	.uleb128	212
	.uleb128	37
	.byte		"Length"
	.byte		0
	.4byte		.L193
	.4byte		.L215
	.section	.debug_info,,n
	.sleb128	0
.L210:
	.section	.debug_info,,n
.L216:
	.sleb128	4
	.byte		0x1
	.4byte		.L188
	.uleb128	72
	.uleb128	25
	.byte		"Ea_LTtoPCHashValue"
	.byte		0
	.4byte		.L217
	.sleb128	5
	.byte		0x3
	.4byte		Ea_LTtoPCHashValue
	.section	.debug_info,,n
	.section	.debug_info,,n
.L218:
	.sleb128	4
	.byte		0x1
	.4byte		.L188
	.uleb128	112
	.uleb128	44
	.byte		"EA_BlockDescriptor"
	.byte		0
	.4byte		.L219
	.sleb128	5
	.byte		0x3
	.4byte		EA_BlockDescriptor
	.section	.debug_info,,n
.L224:
	.sleb128	4
	.byte		0x1
	.4byte		.L188
	.uleb128	143
	.uleb128	34
	.byte		"EA_General"
	.byte		0
	.4byte		.L225
	.sleb128	5
	.byte		0x3
	.4byte		EA_General
	.section	.debug_info,,n
.L228:
	.sleb128	4
	.byte		0x1
	.4byte		.L188
	.uleb128	152
	.uleb128	38
	.byte		"Ea_SetModeFctPtr"
	.byte		0
	.4byte		.L229
	.sleb128	5
	.byte		0x3
	.4byte		Ea_SetModeFctPtr
	.section	.debug_info,,n
.L238:
	.sleb128	4
	.byte		0x1
	.4byte		.L188
	.uleb128	157
	.uleb128	35
	.byte		"Ea_ReadFctPtr"
	.byte		0
	.4byte		.L239
	.sleb128	5
	.byte		0x3
	.4byte		Ea_ReadFctPtr
	.section	.debug_info,,n
.L246:
	.sleb128	4
	.byte		0x1
	.4byte		.L188
	.uleb128	162
	.uleb128	36
	.byte		"Ea_WriteFctPtr"
	.byte		0
	.4byte		.L247
	.sleb128	5
	.byte		0x3
	.4byte		Ea_WriteFctPtr
	.section	.debug_info,,n
.L254:
	.sleb128	4
	.byte		0x1
	.4byte		.L188
	.uleb128	167
	.uleb128	37
	.byte		"Ea_CancelFctPtr"
	.byte		0
	.4byte		.L255
	.sleb128	5
	.byte		0x3
	.4byte		Ea_CancelFctPtr
	.section	.debug_info,,n
.L262:
	.sleb128	4
	.byte		0x1
	.4byte		.L188
	.uleb128	172
	.uleb128	40
	.byte		"Ea_GetStatusFctPtr"
	.byte		0
	.4byte		.L263
	.sleb128	5
	.byte		0x3
	.4byte		Ea_GetStatusFctPtr
	.section	.debug_info,,n
.L272:
	.sleb128	4
	.byte		0x1
	.4byte		.L188
	.uleb128	177
	.uleb128	43
	.byte		"Ea_GetJobResultFctPtr"
	.byte		0
	.4byte		.L273
	.sleb128	5
	.byte		0x3
	.4byte		Ea_GetJobResultFctPtr
	.section	.debug_info,,n
.L282:
	.sleb128	4
	.byte		0x1
	.4byte		.L188
	.uleb128	182
	.uleb128	36
	.byte		"Ea_EraseFctPtr"
	.byte		0
	.4byte		.L283
	.sleb128	5
	.byte		0x3
	.4byte		Ea_EraseFctPtr
	.section	.debug_info,,n
.L227:
	.sleb128	5
	.4byte		.L290
	.uleb128	128
	.uleb128	14
	.4byte		.L291-.L2
	.byte		"EA_General_Tag"
	.byte		0
	.uleb128	8
	.section	.debug_info,,n
.L179:
	.sleb128	6
	.byte		"EA_JobErrorNotification"
	.byte		0
	.4byte		.L292
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L180:
	.sleb128	6
	.byte		"EA_JobEndNotification"
	.byte		0
	.4byte		.L292
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L291:
.L223:
	.sleb128	5
	.4byte		.L290
	.uleb128	128
	.uleb128	14
	.4byte		.L297-.L2
	.byte		"EA_BlockConfiguration_Tag"
	.byte		0
	.uleb128	10
.L171:
	.sleb128	6
	.byte		"EA_BLOCK_NUMBER"
	.byte		0
	.4byte		.L298
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L172:
	.sleb128	6
	.byte		"EA_BLOCK_SIZE"
	.byte		0
	.4byte		.L298
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L173:
	.sleb128	6
	.byte		"EA_DEVICE_INDEX"
	.byte		0
	.4byte		.L190
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L174:
	.sleb128	6
	.byte		"EA_PHYSICAL_BLOCK_NUMBER"
	.byte		0
	.4byte		.L298
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L175:
	.sleb128	6
	.byte		"EA_BLOCK_AMOUNTS"
	.byte		0
	.4byte		.L190
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L176:
	.sleb128	6
	.byte		"EA_IMMEDIATE_DATA"
	.byte		0
	.4byte		.L300
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
	.sleb128	0
.L297:
	.section	.debug_info,,n
.L237:
	.sleb128	7
	.4byte		.L301
	.uleb128	133
	.uleb128	14
	.4byte		.L302-.L2
	.byte		"MemIf_ModeType_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	8
	.byte		"MEMIF_MODE_SLOW"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"MEMIF_MODE_FAST"
	.byte		0
	.sleb128	1
	.sleb128	0
.L302:
.L281:
	.sleb128	7
	.4byte		.L301
	.uleb128	115
	.uleb128	14
	.4byte		.L303-.L2
	.byte		"MemIf_JobResultType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	8
	.byte		"MEMIF_JOB_OK"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"MEMIF_JOB_FAILED"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"MEMIF_JOB_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"MEMIF_JOB_CANCELED"
	.byte		0
	.sleb128	3
	.sleb128	8
	.byte		"MEMIF_BLOCK_INCONSISTENT"
	.byte		0
	.sleb128	4
	.sleb128	8
	.byte		"MEMIF_BLOCK_INVALID"
	.byte		0
	.sleb128	5
	.sleb128	0
.L303:
.L271:
	.sleb128	7
	.4byte		.L301
	.uleb128	100
	.uleb128	14
	.4byte		.L304-.L2
	.byte		"MemIf_StatusType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	8
	.byte		"MEMIF_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"MEMIF_IDLE"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"MEMIF_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"MEMIF_BUSY_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	0
.L304:
	.section	.debug_info,,n
.L191:
	.sleb128	9
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L190:
	.sleb128	10
	.byte		"uint8"
	.byte		0
	.4byte		.L191
.L189:
	.sleb128	10
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L190
.L194:
	.sleb128	9
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L193:
	.sleb128	10
	.byte		"uint32"
	.byte		0
	.4byte		.L194
	.section	.debug_info,,n
.L196:
	.sleb128	11
	.4byte		.L190
	.section	.debug_info,,n
.L206:
	.sleb128	12
	.4byte		.L190
.L205:
	.sleb128	11
	.4byte		.L206
.L217:
	.sleb128	12
	.4byte		.L193
.L222:
	.sleb128	10
	.byte		"EA_BlockConfigurationType"
	.byte		0
	.4byte		.L223
.L221:
	.sleb128	12
	.4byte		.L222
	.section	.debug_info,,n
.L219:
	.sleb128	13
	.4byte		.L220-.L2
	.4byte		.L221
	.section	.debug_info,,n
	.sleb128	14
	.uleb128	2
	.sleb128	0
.L220:
.L226:
	.sleb128	10
	.byte		"EA_General_Type"
	.byte		0
	.4byte		.L227
.L225:
	.sleb128	12
	.4byte		.L226
	.section	.debug_info,,n
.L234:
	.sleb128	15
	.4byte		.L235-.L2
	.byte		0x1
.L236:
	.sleb128	10
	.byte		"MemIf_ModeType"
	.byte		0
	.4byte		.L237
	.section	.debug_info,,n
	.sleb128	16
	.4byte		.L236
	.sleb128	0
.L235:
.L233:
	.sleb128	11
	.4byte		.L234
.L232:
	.sleb128	10
	.byte		"Ea_SetModeFctPtrType"
	.byte		0
	.4byte		.L233
.L231:
	.sleb128	12
	.4byte		.L232
.L229:
	.sleb128	13
	.4byte		.L230-.L2
	.4byte		.L231
	.sleb128	14
	.uleb128	0
	.sleb128	0
.L230:
	.section	.debug_info,,n
.L244:
	.sleb128	17
	.4byte		.L245-.L2
	.4byte		.L189
	.byte		0x1
	.sleb128	16
	.4byte		.L193
	.sleb128	16
	.4byte		.L196
	.sleb128	16
	.4byte		.L193
	.sleb128	0
.L245:
.L243:
	.sleb128	11
	.4byte		.L244
.L242:
	.sleb128	10
	.byte		"Ea_ReadFctPtrType"
	.byte		0
	.4byte		.L243
.L241:
	.sleb128	12
	.4byte		.L242
.L239:
	.sleb128	13
	.4byte		.L240-.L2
	.4byte		.L241
	.sleb128	14
	.uleb128	0
	.sleb128	0
.L240:
.L252:
	.sleb128	17
	.4byte		.L253-.L2
	.4byte		.L189
	.byte		0x1
	.sleb128	16
	.4byte		.L193
	.sleb128	16
	.4byte		.L205
	.sleb128	16
	.4byte		.L193
	.sleb128	0
.L253:
.L251:
	.sleb128	11
	.4byte		.L252
.L250:
	.sleb128	10
	.byte		"Ea_WriteFctPtrType"
	.byte		0
	.4byte		.L251
.L249:
	.sleb128	12
	.4byte		.L250
.L247:
	.sleb128	13
	.4byte		.L248-.L2
	.4byte		.L249
	.sleb128	14
	.uleb128	0
	.sleb128	0
.L248:
.L260:
	.sleb128	15
	.4byte		.L261-.L2
	.byte		0x1
	.sleb128	0
.L261:
.L259:
	.sleb128	11
	.4byte		.L260
.L258:
	.sleb128	10
	.byte		"Ea_CancelFctPtrType"
	.byte		0
	.4byte		.L259
.L257:
	.sleb128	12
	.4byte		.L258
.L255:
	.sleb128	13
	.4byte		.L256-.L2
	.4byte		.L257
	.sleb128	14
	.uleb128	0
	.sleb128	0
.L256:
.L270:
	.sleb128	10
	.byte		"MemIf_StatusType"
	.byte		0
	.4byte		.L271
.L268:
	.sleb128	17
	.4byte		.L269-.L2
	.4byte		.L270
	.byte		0x1
	.sleb128	0
.L269:
.L267:
	.sleb128	11
	.4byte		.L268
.L266:
	.sleb128	10
	.byte		"Ea_GetStatusFctPtrType"
	.byte		0
	.4byte		.L267
.L265:
	.sleb128	12
	.4byte		.L266
.L263:
	.sleb128	13
	.4byte		.L264-.L2
	.4byte		.L265
	.sleb128	14
	.uleb128	0
	.sleb128	0
.L264:
.L280:
	.sleb128	10
	.byte		"MemIf_JobResultType"
	.byte		0
	.4byte		.L281
.L278:
	.sleb128	17
	.4byte		.L279-.L2
	.4byte		.L280
	.byte		0x1
	.sleb128	0
.L279:
.L277:
	.sleb128	11
	.4byte		.L278
.L276:
	.sleb128	10
	.byte		"Ea_GetJobResultFctPtrType"
	.byte		0
	.4byte		.L277
.L275:
	.sleb128	12
	.4byte		.L276
.L273:
	.sleb128	13
	.4byte		.L274-.L2
	.4byte		.L275
	.sleb128	14
	.uleb128	0
	.sleb128	0
.L274:
.L288:
	.sleb128	17
	.4byte		.L289-.L2
	.4byte		.L189
	.byte		0x1
	.sleb128	16
	.4byte		.L193
	.sleb128	16
	.4byte		.L193
	.sleb128	0
.L289:
.L287:
	.sleb128	11
	.4byte		.L288
.L286:
	.sleb128	10
	.byte		"Ea_EraseFctPtrType"
	.byte		0
	.4byte		.L287
.L285:
	.sleb128	12
	.4byte		.L286
.L283:
	.sleb128	13
	.4byte		.L284-.L2
	.4byte		.L285
	.sleb128	14
	.uleb128	0
	.sleb128	0
.L284:
.L295:
	.sleb128	15
	.4byte		.L296-.L2
	.byte		0x1
	.sleb128	0
.L296:
.L294:
	.sleb128	11
	.4byte		.L295
.L293:
	.sleb128	10
	.byte		"JobNotificationType"
	.byte		0
	.4byte		.L294
.L292:
	.sleb128	12
	.4byte		.L293
.L299:
	.sleb128	9
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L298:
	.sleb128	10
	.byte		"uint16"
	.byte		0
	.4byte		.L299
.L300:
	.sleb128	10
	.byte		"boolean"
	.byte		0
	.4byte		.L191
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L195:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L197:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locend
.L198:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),5
	.d2locend
.L204:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),3
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locend
.L207:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo8),4
	.d2locend
.L208:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo10),5
	.d2locend
.L214:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locend
.L215:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo15),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Eep_31_AT25256B_EraseWrapper"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Eep_31_AT25256B_Erase"
	.wrcm.end
	.wrcm.nelem "Eep_31_AT25256B_WriteWrapper"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Eep_31_AT25256B_Write"
	.wrcm.end
	.wrcm.nelem "Eep_31_AT25256B_ReadWrapper"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Eep_31_AT25256B_Read"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Ea_Lcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Ea_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Ea_Lcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Ea_Lcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Ea_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Ea_Lcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\Ea_Lcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
