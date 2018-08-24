#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"NvM_Lcfg.c"
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
# static FUNC(void, NVM_CODE) NvM_BswM_NvM_CurrentBlockMode_Is_Not_Used(NvM_BlockIdType Block, NvM_RequestResultType CurrentBlockMode)
	.align		1
	.section	.text_vle
	.d2file		"gen\\MPC5746R_ECU\\WindRiver\\NvM_Lcfg.c"
        .d2line         321,29
#$$ld
.L215:

#$$bf	NvM_BswM_NvM_CurrentBlockMode_Is_Not_Used,interprocedural,nostackparams

# Regs written: r0,r1
	.d2_cfa_start __cie
NvM_BswM_NvM_CurrentBlockMode_Is_Not_Used:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# }
	.d2line		323
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L216:
	.type		NvM_BswM_NvM_CurrentBlockMode_Is_Not_Used,@function
	.size		NvM_BswM_NvM_CurrentBlockMode_Is_Not_Used,.-NvM_BswM_NvM_CurrentBlockMode_Is_Not_Used
# Number of nodes = 0

# Allocations for NvM_BswM_NvM_CurrentBlockMode_Is_Not_Used
#	not allocated	Block
#	not allocated	CurrentBlockMode

# Allocations for module
	.section	.text_vle
	.0byte		.L231
	.section	.text_vle
	.type		NvM_LTtoPCHashValue,@object
	.size		NvM_LTtoPCHashValue,4
	.align		2
	.globl		NvM_LTtoPCHashValue
NvM_LTtoPCHashValue:
	.long		-779936216
	.section	.text_vle
	.type		NvM_BlockDescriptor,@object
	.size		NvM_BlockDescriptor,192
	.align		2
NvM_BlockDescriptor:
	.long		3
	.long		0
	.byte		0
	.space		3
	.long		0
	.byte		0
	.byte		0
	.byte		255
	.space		1
	.short		0
	.short		0
	.short		0
	.byte		0
	.byte		0
	.short		0
	.space		2
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.short		0
	.space		2
	.long		1
	.long		Crc_CalculateCRC16
	.byte		0
	.space		3
	.long		1
	.byte		2
	.byte		0
	.byte		0
	.space		1
	.short		100
	.short		1
	.short		1
	.byte		0
	.byte		0
	.short		1
	.space		2
	.long		NvM_Cfg_Ram
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.short		8193
	.space		2
	.long		3
	.long		0
	.byte		0
	.space		3
	.long		0
	.byte		1
	.byte		0
	.byte		0
	.space		1
	.short		256
	.short		2
	.short		2
	.byte		0
	.byte		0
	.short		1
	.space		2
	.long		NvM_Cfg_Appl
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.short		8192
	.space		2
	.section	.text_vle
	.type		NvM_Common,@object
	.size		NvM_Common,40
	.align		2
	.globl		NvM_Common
NvM_Common:
	.short		65535
	.short		1
	.short		3
	.space		2
	.long		0
	.long		NvM_BswM_NvM_CurrentBlockMode_Is_Not_Used
	.long		BswM_NvM_CurrentJobMode
	.long		NvM_BlockCrc
	.long		NvM_Mirror
	.long		0
	.byte		1
	.byte		0
	.byte		1
	.byte		0
	.byte		0
	.space		3
	.section	.text_vle
	.type		NvMDemEventId,@object
	.size		NvMDemEventId,16
	.align		1
	.globl		NvMDemEventId
NvMDemEventId:
	.short		0
	.short		0
	.short		0
	.short		0
	.short		0
	.short		0
	.short		0
	.short		0
	.section	.text_vle
	.type		NvM_BlockManagementTable,@object
	.size		NvM_BlockManagementTable,8
	.align		2
	.globl		NvM_BlockManagementTable
NvM_BlockManagementTable:
	.long		NvM_AdministrativeBlock
	.long		NvM_BlockDescriptor
	.section	.text_vle
#$$ld
.L5:
.L325:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L264:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM_Types.h"
.L217:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\NvM_Lcfg.c"
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
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	4
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
	.uleb128	5
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	15
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
	.uleb128	20
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
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
	.uleb128	22
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\NvM_Lcfg.c"
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
.L218:
	.sleb128	2
	.4byte		.L214-.L2
	.byte		"NvM_BswM_NvM_CurrentBlockMode_Is_Not_Used"
	.byte		0
	.4byte		.L217
	.uleb128	321
	.uleb128	29
	.byte		0x1
	.4byte		.L215
	.4byte		.L216
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L217
	.uleb128	321
	.uleb128	29
	.byte		"Block"
	.byte		0
	.4byte		.L219
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	3
	.4byte		.L217
	.uleb128	321
	.uleb128	29
	.byte		"CurrentBlockMode"
	.byte		0
	.4byte		.L222
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L214:
	.section	.debug_info,,n
.L225:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L217
	.uleb128	83
	.uleb128	27
	.byte		"NvM_Cfg_Ram"
	.byte		0
	.4byte		.L226
	.0byte		.L225
.L228:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L217
	.uleb128	84
	.uleb128	27
	.byte		"NvM_Cfg_Appl"
	.byte		0
	.4byte		.L229
	.section	.debug_info,,n
.L231:
	.sleb128	5
	.byte		0x1
	.4byte		.L217
	.uleb128	273
	.uleb128	26
	.byte		"NvM_LTtoPCHashValue"
	.byte		0
	.4byte		.L232
	.sleb128	5
	.byte		0x3
	.4byte		NvM_LTtoPCHashValue
	.section	.debug_info,,n
	.section	.debug_info,,n
.L235:
	.sleb128	6
	.4byte		.L217
	.uleb128	281
	.uleb128	27
	.byte		"NvM_Mirror"
	.byte		0
	.4byte		.L236
	.sleb128	5
	.byte		0x3
	.4byte		NvM_Mirror
	.lcomm		NvM_Mirror,102,2
.L238:
	.sleb128	6
	.4byte		.L217
	.uleb128	290
	.uleb128	28
	.byte		"NvM_BlockCrc"
	.byte		0
	.4byte		.L239
	.sleb128	5
	.byte		0x3
	.4byte		NvM_BlockCrc
	.lcomm		NvM_BlockCrc,12,2
.L241:
	.sleb128	6
	.4byte		.L217
	.uleb128	303
	.uleb128	49
	.byte		"NvM_AdministrativeBlock"
	.byte		0
	.4byte		.L242
	.sleb128	5
	.byte		0x3
	.4byte		NvM_AdministrativeBlock
	.lcomm		NvM_AdministrativeBlock,24,2
.L246:
	.sleb128	6
	.4byte		.L217
	.uleb128	349
	.uleb128	49
	.byte		"NvM_BlockDescriptor"
	.byte		0
	.4byte		.L247
	.sleb128	5
	.byte		0x3
	.4byte		NvM_BlockDescriptor
	.section	.debug_info,,n
.L252:
	.sleb128	5
	.byte		0x1
	.4byte		.L217
	.uleb128	361
	.uleb128	33
	.byte		"NvM_Common"
	.byte		0
	.4byte		.L253
	.sleb128	5
	.byte		0x3
	.4byte		NvM_Common
	.section	.debug_info,,n
.L256:
	.sleb128	5
	.byte		0x1
	.4byte		.L217
	.uleb128	379
	.uleb128	37
	.byte		"NvMDemEventId"
	.byte		0
	.4byte		.L257
	.sleb128	5
	.byte		0x3
	.4byte		NvMDemEventId
	.section	.debug_info,,n
.L260:
	.sleb128	5
	.byte		0x1
	.4byte		.L217
	.uleb128	392
	.uleb128	42
	.byte		"NvM_BlockManagementTable"
	.byte		0
	.4byte		.L261
	.sleb128	5
	.byte		0x3
	.4byte		NvM_BlockManagementTable
	.section	.debug_info,,n
.L263:
	.sleb128	7
	.4byte		.L264
	.uleb128	185
	.uleb128	14
	.4byte		.L265-.L2
	.byte		"NvM_BlockManagementType_Tag"
	.byte		0
	.uleb128	8
	.section	.debug_info,,n
.L209:
	.sleb128	8
	.byte		"AdminBlockPtr"
	.byte		0
	.4byte		.L266
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L210:
	.sleb128	8
	.byte		"BlockDescriptorPtr"
	.byte		0
	.4byte		.L268
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L265:
.L255:
	.sleb128	7
	.4byte		.L264
	.uleb128	185
	.uleb128	14
	.4byte		.L270-.L2
	.byte		"NvM_CommonType_Tag"
	.byte		0
	.uleb128	40
.L195:
	.sleb128	8
	.byte		"NvM_CrcNumOfBytes"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L196:
	.sleb128	8
	.byte		"NvM_CompiledConfigId"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L197:
	.sleb128	8
	.byte		"NvM_TotalBlockNb"
	.byte		0
	.4byte		.L219
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L198:
	.sleb128	8
	.byte		"NvM_MultiBlockCallback"
	.byte		0
	.4byte		.L271
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L199:
	.sleb128	8
	.byte		"NvM_BswMBlockModeCallback"
	.byte		0
	.4byte		.L275
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L200:
	.sleb128	8
	.byte		"NvM_BswMJobModeCallback"
	.byte		0
	.4byte		.L279
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L201:
	.sleb128	8
	.byte		"NvM_BlockCRCPtr"
	.byte		0
	.4byte		.L283
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L202:
	.sleb128	8
	.byte		"NvM_RamMirrorPtr"
	.byte		0
	.4byte		.L285
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L203:
	.sleb128	8
	.byte		"NvM_WriteVfyBuffPtr"
	.byte		0
	.4byte		.L285
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L204:
	.sleb128	8
	.byte		"NvM_DatasetSelectionBits"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L205:
	.sleb128	8
	.byte		"NvM_RptMirrorCnt"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L206:
	.sleb128	8
	.byte		"NvM_BswMMultiBlk"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L207:
	.sleb128	8
	.byte		"NvM_DrvModeSwitch"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L208:
	.sleb128	8
	.byte		"NvM_DynConfig"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L270:
.L251:
	.sleb128	7
	.4byte		.L264
	.uleb128	185
	.uleb128	14
	.4byte		.L288-.L2
	.byte		"NvM_BlockDescriptorType_Tag"
	.byte		0
	.uleb128	64
.L174:
	.sleb128	8
	.byte		"NvM_BlockCRC"
	.byte		0
	.4byte		.L289
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L175:
	.sleb128	8
	.byte		"CrcFunctionPtr"
	.byte		0
	.4byte		.L291
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L176:
	.sleb128	8
	.byte		"NvM_NvramDeviceId"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L177:
	.sleb128	8
	.byte		"NvM_BlockManagement"
	.byte		0
	.4byte		.L297
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L178:
	.sleb128	8
	.byte		"NvM_NvBlockNum"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L179:
	.sleb128	8
	.byte		"NvM_RomBlockNum"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L180:
	.sleb128	8
	.byte		"NvM_BlockJobPriority"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L181:
	.sleb128	8
	.byte		"NvM_NvBlockLength"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L182:
	.sleb128	8
	.byte		"NvM_NvBlockBaseNumber"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L183:
	.sleb128	8
	.byte		"NvM_NvBlockIdentifier"
	.byte		0
	.4byte		.L219
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L184:
	.sleb128	8
	.byte		"NvM_MaxNoOfReadRetry"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L185:
	.sleb128	8
	.byte		"NvM_MaxNoOfWriteRetry"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L186:
	.sleb128	8
	.byte		"NvM_WriteVerificationDataSize"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L187:
	.sleb128	8
	.byte		"NvM_RamBlockDataAddress"
	.byte		0
	.4byte		.L286
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L188:
	.sleb128	8
	.byte		"NvM_RomBlockDataAddress"
	.byte		0
	.4byte		.L295
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L189:
	.sleb128	8
	.byte		"NvM_InitBlockCallback"
	.byte		0
	.4byte		.L299
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L190:
	.sleb128	8
	.byte		"NvMSingleBlockCallback"
	.byte		0
	.4byte		.L304
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L191:
	.sleb128	8
	.byte		"NvM_ReadRamBlockFromNvCallback"
	.byte		0
	.4byte		.L308
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L192:
	.sleb128	8
	.byte		"NvMWriteRamBlockToNvCallback"
	.byte		0
	.4byte		.L315
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L193:
	.sleb128	8
	.byte		"NvM_Block_DemEventIds"
	.byte		0
	.4byte		.L320
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L194:
	.sleb128	8
	.byte		"NvM_booleanconfig"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
	.sleb128	0
.L288:
.L245:
	.sleb128	7
	.4byte		.L264
	.uleb128	185
	.uleb128	14
	.4byte		.L321-.L2
	.byte		"NvM_AdministrativeBlockType_Tag"
	.byte		0
	.uleb128	8
.L171:
	.sleb128	8
	.byte		"dataset_idx"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L172:
	.sleb128	8
	.byte		"error_status"
	.byte		0
	.4byte		.L222
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L173:
	.sleb128	8
	.byte		"attributes"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L321:
	.section	.debug_info,,n
.L322:
	.sleb128	9
	.4byte		.L264
	.uleb128	185
	.uleb128	14
	.4byte		.L323-.L2
	.uleb128	4
	.section	.debug_info,,n
.L166:
	.sleb128	10
	.byte		"wr_protect"
	.byte		0
	.4byte		.L324
	.uleb128	4
	.byte		0x1
	.byte		0x0
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L167:
	.sleb128	10
	.byte		"valid"
	.byte		0
	.4byte		.L324
	.uleb128	4
	.byte		0x1
	.byte		0x1
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L168:
	.sleb128	10
	.byte		"changed"
	.byte		0
	.4byte		.L324
	.uleb128	4
	.byte		0x1
	.byte		0x2
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L169:
	.sleb128	10
	.byte		"BlockLock"
	.byte		0
	.4byte		.L324
	.uleb128	4
	.byte		0x1
	.byte		0x3
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L170:
	.sleb128	10
	.byte		"unused"
	.byte		0
	.4byte		.L324
	.uleb128	4
	.byte		0xc
	.byte		0x4
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L323:
.L259:
	.sleb128	7
	.4byte		.L325
	.uleb128	69
	.uleb128	1
	.4byte		.L326-.L2
	.byte		"NvM_DemEventIdType_Tag"
	.byte		0
	.uleb128	16
.L158:
	.sleb128	8
	.byte		"dem_event_e_hardware"
	.byte		0
	.4byte		.L327
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L159:
	.sleb128	8
	.byte		"dem_event_req_failed"
	.byte		0
	.4byte		.L327
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L160:
	.sleb128	8
	.byte		"dem_event_integrity_failed"
	.byte		0
	.4byte		.L327
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L161:
	.sleb128	8
	.byte		"dem_event_lossof_redundancy"
	.byte		0
	.4byte		.L327
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L162:
	.sleb128	8
	.byte		"dem_event_verify_failed"
	.byte		0
	.4byte		.L327
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L163:
	.sleb128	8
	.byte		"dem_event_queue_overflow"
	.byte		0
	.4byte		.L327
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L164:
	.sleb128	8
	.byte		"dem_event_write_protected"
	.byte		0
	.4byte		.L327
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L165:
	.sleb128	8
	.byte		"dem_event_wrong_block_id"
	.byte		0
	.4byte		.L327
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L326:
	.section	.debug_info,,n
.L298:
	.sleb128	11
	.4byte		.L264
	.uleb128	185
	.uleb128	14
	.4byte		.L328-.L2
	.byte		"NvM_BlockMngmtType_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"NVM_BLOCK_NATIVE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"NVM_BLOCK_REDUNDANT"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"NVM_BLOCK_DATASET"
	.byte		0
	.sleb128	2
	.sleb128	0
.L328:
.L290:
	.sleb128	11
	.4byte		.L264
	.uleb128	172
	.uleb128	14
	.4byte		.L329-.L2
	.byte		"NvM_BlockCrcType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	12
	.byte		"NVM_CRC8"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"NVM_CRC16"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"NVM_CRC32"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"NVM_CRC00"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"NVM_CRC_TYPES_NB"
	.byte		0
	.sleb128	4
	.sleb128	0
.L329:
	.section	.debug_info,,n
.L221:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L220:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L221
.L219:
	.sleb128	14
	.byte		"NvM_BlockIdType"
	.byte		0
	.4byte		.L220
.L224:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L223:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L224
.L222:
	.sleb128	14
	.byte		"NvM_RequestResultType"
	.byte		0
	.4byte		.L223
	.section	.debug_info,,n
.L226:
	.sleb128	15
	.4byte		.L227-.L2
	.4byte		.L223
	.section	.debug_info,,n
	.sleb128	16
	.uleb128	99
	.sleb128	0
.L227:
.L229:
	.sleb128	15
	.4byte		.L230-.L2
	.4byte		.L223
	.sleb128	16
	.uleb128	255
	.sleb128	0
.L230:
.L234:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L233:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L234
	.section	.debug_info,,n
.L232:
	.sleb128	17
	.4byte		.L233
.L236:
	.sleb128	15
	.4byte		.L237-.L2
	.4byte		.L223
	.sleb128	16
	.uleb128	101
	.sleb128	0
.L237:
.L239:
	.sleb128	15
	.4byte		.L240-.L2
	.4byte		.L233
	.sleb128	16
	.uleb128	2
	.sleb128	0
.L240:
.L244:
	.sleb128	14
	.byte		"NvM_AdministrativeBlockType"
	.byte		0
	.4byte		.L245
.L242:
	.sleb128	15
	.4byte		.L243-.L2
	.4byte		.L244
	.sleb128	16
	.uleb128	2
	.sleb128	0
.L243:
.L250:
	.sleb128	14
	.byte		"NvM_BlockDescriptorType"
	.byte		0
	.4byte		.L251
.L249:
	.sleb128	17
	.4byte		.L250
.L247:
	.sleb128	15
	.4byte		.L248-.L2
	.4byte		.L249
	.sleb128	16
	.uleb128	2
	.sleb128	0
.L248:
.L254:
	.sleb128	14
	.byte		"NvM_CommonType"
	.byte		0
	.4byte		.L255
.L253:
	.sleb128	17
	.4byte		.L254
.L258:
	.sleb128	14
	.byte		"NvM_DemEventIdType"
	.byte		0
	.4byte		.L259
.L257:
	.sleb128	17
	.4byte		.L258
.L262:
	.sleb128	14
	.byte		"NvM_BlockManagementType"
	.byte		0
	.4byte		.L263
.L261:
	.sleb128	17
	.4byte		.L262
	.section	.debug_info,,n
.L267:
	.sleb128	18
	.4byte		.L244
.L266:
	.sleb128	17
	.4byte		.L267
.L269:
	.sleb128	18
	.4byte		.L249
.L268:
	.sleb128	17
	.4byte		.L269
	.section	.debug_info,,n
.L273:
	.sleb128	19
	.4byte		.L274-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	20
	.4byte		.L223
	.sleb128	20
	.4byte		.L222
	.sleb128	0
.L274:
.L272:
	.sleb128	18
	.4byte		.L273
.L271:
	.sleb128	14
	.byte		"NvM_MultiBlockCallbackFunctionType"
	.byte		0
	.4byte		.L272
.L277:
	.sleb128	19
	.4byte		.L278-.L2
	.byte		0x1
	.sleb128	20
	.4byte		.L219
	.sleb128	20
	.4byte		.L222
	.sleb128	0
.L278:
.L276:
	.sleb128	18
	.4byte		.L277
.L275:
	.sleb128	14
	.byte		"NvM_BswM_NvM_CurrentBlockModeFunctionType"
	.byte		0
	.4byte		.L276
.L281:
	.sleb128	19
	.4byte		.L282-.L2
	.byte		0x1
	.sleb128	20
	.4byte		.L223
	.sleb128	20
	.4byte		.L222
	.sleb128	0
.L282:
.L280:
	.sleb128	18
	.4byte		.L281
.L279:
	.sleb128	14
	.byte		"NvM_BswM_NvM_CurrentJobModeFunctionType"
	.byte		0
	.4byte		.L280
.L284:
	.sleb128	18
	.4byte		.L233
.L283:
	.sleb128	17
	.4byte		.L284
.L286:
	.sleb128	18
	.4byte		.L223
.L285:
	.sleb128	17
	.4byte		.L286
.L287:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L224
.L289:
	.sleb128	14
	.byte		"NvM_BlockCrcType"
	.byte		0
	.4byte		.L290
	.section	.debug_info,,n
.L293:
	.sleb128	21
	.4byte		.L294-.L2
	.4byte		.L233
	.byte		0x1
.L296:
	.sleb128	17
	.4byte		.L223
.L295:
	.sleb128	18
	.4byte		.L296
	.sleb128	20
	.4byte		.L295
	.sleb128	20
	.4byte		.L233
	.sleb128	20
	.4byte		.L233
	.sleb128	20
	.4byte		.L287
	.sleb128	0
.L294:
.L292:
	.sleb128	18
	.4byte		.L293
.L291:
	.sleb128	14
	.byte		"NVM_CRC32_FUNC"
	.byte		0
	.4byte		.L292
.L297:
	.sleb128	14
	.byte		"NvM_BlockMngmtType"
	.byte		0
	.4byte		.L298
.L303:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L223
.L301:
	.sleb128	21
	.4byte		.L302-.L2
	.4byte		.L303
	.byte		0x1
	.sleb128	0
.L302:
.L300:
	.sleb128	18
	.4byte		.L301
.L299:
	.sleb128	14
	.byte		"NvM_InitBlockCallbackPtrType"
	.byte		0
	.4byte		.L300
.L306:
	.sleb128	21
	.4byte		.L307-.L2
	.4byte		.L303
	.byte		0x1
	.sleb128	20
	.4byte		.L223
	.sleb128	20
	.4byte		.L222
	.sleb128	0
.L307:
.L305:
	.sleb128	18
	.4byte		.L306
.L304:
	.sleb128	14
	.byte		"NvM_SingleBlockCallbackFunctionType"
	.byte		0
	.4byte		.L305
.L310:
	.sleb128	21
	.4byte		.L311-.L2
	.4byte		.L303
	.byte		0x1
	.section	.debug_info,,n
.L314:
	.sleb128	22
	.byte		"void"
	.byte		0
	.byte		0x0
.L313:
	.sleb128	17
	.4byte		.L314
.L312:
	.sleb128	18
	.4byte		.L313
	.sleb128	20
	.4byte		.L312
	.sleb128	0
.L311:
.L309:
	.sleb128	18
	.4byte		.L310
.L308:
	.sleb128	14
	.byte		"NvM_RamMirrorOperationReadCallBackType"
	.byte		0
	.4byte		.L309
.L317:
	.sleb128	21
	.4byte		.L318-.L2
	.4byte		.L303
	.byte		0x1
.L319:
	.sleb128	18
	.4byte		.L314
	.sleb128	20
	.4byte		.L319
	.sleb128	0
.L318:
.L316:
	.sleb128	18
	.4byte		.L317
.L315:
	.sleb128	14
	.byte		"NvM_RamMirrorOperationWriteCallBackType"
	.byte		0
	.4byte		.L316
.L320:
	.sleb128	18
	.4byte		.L257
.L324:
	.sleb128	13
	.byte		"unsigned int"
	.byte		0
	.byte		0x7
	.byte		0x4
.L327:
	.sleb128	14
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L220
.L7:
	.sleb128	0
.L3:
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "NvM_BswM_NvM_CurrentBlockMode_Is_Not_Used"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\NvM_Lcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\NvM_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\NvM_Lcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\NvM_Lcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\NvM_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\NvM_Lcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\NvM_Lcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
