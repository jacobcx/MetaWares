#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Spi_PBcfg.c"
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

# Allocations for module
	.section	.mcal_bss,,b
	.0byte		.L452
	.section	.mcal_bss,,b
	.0byte		.L463
	.section	.mcal_bss,,b
	.type		Buffer_PBSpiChannel,@object
	.size		Buffer_PBSpiChannel,8
	.align		1
Buffer_PBSpiChannel:
	.space		8
	.section	.mcal_bss,,b
	.type		Buffer_PBSpiChannel_CANA_TJA1145,@object
	.size		Buffer_PBSpiChannel_CANA_TJA1145,8
	.align		1
Buffer_PBSpiChannel_CANA_TJA1145:
	.space		8
	.section	.mcal_bss,,b
	.type		Buffer_PBSpiChannel_EEP_CommandAddress,@object
	.size		Buffer_PBSpiChannel_EEP_CommandAddress,8
	.align		2
Buffer_PBSpiChannel_EEP_CommandAddress:
	.space		8
	.section	.mcal_bss,,b
	.type		Buffer_PBSpiChannel_EEP_Data,@object
	.size		Buffer_PBSpiChannel_EEP_Data,8
	.align		2
Buffer_PBSpiChannel_EEP_Data:
	.space		8
	.section	.mcal_bss,,b
	.type		Buffer_PBSpiChannel_EEP_LatchCommand,@object
	.size		Buffer_PBSpiChannel_EEP_LatchCommand,8
	.align		2
Buffer_PBSpiChannel_EEP_LatchCommand:
	.space		8
	.section	.mcal_bss,,b
	.type		Buffer_PBSpiChannel_EEP_StatusReg,@object
	.size		Buffer_PBSpiChannel_EEP_StatusReg,8
	.align		2
Buffer_PBSpiChannel_EEP_StatusReg:
	.space		8
	.section	.mcal_const_cfg,,r
	.0byte		.L472
	.section	.mcal_const_cfg,,r
	.type		SpiChannelConfig_PB0,@object
	.size		SpiChannelConfig_PB0,96
	.align		2
SpiChannelConfig_PB0:
	.long		1
	.byte		1
	.space		1
	.short		10
	.long		Buffer_PBSpiChannel
	.long		Spi_aSpiChannelState
	.long		1
	.byte		1
	.space		1
	.short		10
	.long		Buffer_PBSpiChannel_CANA_TJA1145
	.long		Spi_aSpiChannelState+4
	.long		1
	.byte		1
	.space		1
	.short		3
	.long		Buffer_PBSpiChannel_EEP_CommandAddress
	.long		Spi_aSpiChannelState+8
	.long		1
	.byte		1
	.space		1
	.short		64
	.long		Buffer_PBSpiChannel_EEP_Data
	.long		Spi_aSpiChannelState+12
	.long		1
	.byte		1
	.space		1
	.short		1
	.long		Buffer_PBSpiChannel_EEP_LatchCommand
	.long		Spi_aSpiChannelState+16
	.long		1
	.byte		1
	.space		1
	.short		2
	.long		Buffer_PBSpiChannel_EEP_StatusReg
	.long		Spi_aSpiChannelState+20
	.section	.mcal_const_cfg,,r
	.type		SpiJob_ChannelAssignment_PB,@object
	.size		SpiJob_ChannelAssignment_PB,1
	.align		2
SpiJob_ChannelAssignment_PB:
	.byte		0
	.section	.mcal_const_cfg,,r
	.type		SpiJob_CANA_TJA1145_ChannelAssignment_PB,@object
	.size		SpiJob_CANA_TJA1145_ChannelAssignment_PB,1
	.align		2
SpiJob_CANA_TJA1145_ChannelAssignment_PB:
	.byte		1
	.section	.mcal_const_cfg,,r
	.type		SpiJob_CAND_TJA1145_ChannelAssignment_PB,@object
	.size		SpiJob_CAND_TJA1145_ChannelAssignment_PB,1
	.align		2
SpiJob_CAND_TJA1145_ChannelAssignment_PB:
	.byte		1
	.section	.mcal_const_cfg,,r
	.type		SpiJob_EEP_DataJob_ChannelAssignment_PB,@object
	.size		SpiJob_EEP_DataJob_ChannelAssignment_PB,2
	.align		2
SpiJob_EEP_DataJob_ChannelAssignment_PB:
	.byte		2
	.byte		3
	.section	.mcal_const_cfg,,r
	.type		SpiJob_EEP_CommandJob_ChannelAssignment_PB,@object
	.size		SpiJob_EEP_CommandJob_ChannelAssignment_PB,1
	.align		2
SpiJob_EEP_CommandJob_ChannelAssignment_PB:
	.byte		4
	.section	.mcal_const_cfg,,r
	.type		SpiJob_EEP_ReadStatusReg_ChannelAssignment_PB,@object
	.size		SpiJob_EEP_ReadStatusReg_ChannelAssignment_PB,1
	.align		2
SpiJob_EEP_ReadStatusReg_ChannelAssignment_PB:
	.byte		5
	.section	.mcal_const_cfg,,r
	.type		SpiJobConfig_PB0,@object
	.size		SpiJobConfig_PB0,288
	.align		2
SpiJobConfig_PB0:
	.byte		1
	.space		3
	.long		SpiJob_ChannelAssignment_PB
	.long		0
	.long		0
	.byte		0
	.space		3
	.long		Spi_aSpiJobState
	.byte		4
	.space		3
	.long		4
	.byte		0
	.space		3
	.long		44180083
	.long		-2147418112
	.long		0
	.byte		1
	.space		3
	.long		SpiJob_CANA_TJA1145_ChannelAssignment_PB
	.long		0
	.long		0
	.byte		0
	.space		3
	.long		Spi_aSpiJobState+12
	.byte		3
	.space		3
	.long		3
	.byte		1
	.space		3
	.long		44180083
	.long		-2145386496
	.long		0
	.byte		1
	.space		3
	.long		SpiJob_CAND_TJA1145_ChannelAssignment_PB
	.long		0
	.long		0
	.byte		0
	.space		3
	.long		Spi_aSpiJobState+24
	.byte		3
	.space		3
	.long		3
	.byte		2
	.space		3
	.long		44180083
	.long		-2147221504
	.long		0
	.byte		1
	.space		3
	.long		SpiJob_EEP_CommandJob_ChannelAssignment_PB
	.long		0
	.long		0
	.byte		1
	.space		3
	.long		Spi_aSpiJobState+36
	.byte		4
	.space		3
	.long		4
	.byte		3
	.space		3
	.long		10625651
	.long		-2147221504
	.long		0
	.byte		2
	.space		3
	.long		SpiJob_EEP_DataJob_ChannelAssignment_PB
	.long		0
	.long		0
	.byte		0
	.space		3
	.long		Spi_aSpiJobState+48
	.byte		4
	.space		3
	.long		4
	.byte		3
	.space		3
	.long		10625651
	.long		-2147221504
	.long		0
	.byte		1
	.space		3
	.long		SpiJob_EEP_ReadStatusReg_ChannelAssignment_PB
	.long		0
	.long		0
	.byte		0
	.space		3
	.long		Spi_aSpiJobState+60
	.byte		4
	.space		3
	.long		4
	.byte		3
	.space		3
	.long		10625651
	.long		-2147221504
	.long		0
	.section	.mcal_const_cfg,,r
	.type		SpiSequence_SBC_JobAssignment_PB,@object
	.size		SpiSequence_SBC_JobAssignment_PB,2
	.align		1
SpiSequence_SBC_JobAssignment_PB:
	.short		0
	.section	.mcal_const_cfg,,r
	.type		SpiSequence_CANA_TJA1145_JobAssignment_PB,@object
	.size		SpiSequence_CANA_TJA1145_JobAssignment_PB,2
	.align		1
SpiSequence_CANA_TJA1145_JobAssignment_PB:
	.short		1
	.section	.mcal_const_cfg,,r
	.type		SpiSequence_CAND_TJA1145_JobAssignment_PB,@object
	.size		SpiSequence_CAND_TJA1145_JobAssignment_PB,2
	.align		1
SpiSequence_CAND_TJA1145_JobAssignment_PB:
	.short		2
	.section	.mcal_const_cfg,,r
	.type		SpiSequence_EEP_READ_JobAssignment_PB,@object
	.size		SpiSequence_EEP_READ_JobAssignment_PB,2
	.align		1
SpiSequence_EEP_READ_JobAssignment_PB:
	.short		4
	.section	.mcal_const_cfg,,r
	.type		SpiSequence_EEP_WRITE_JobAssignment_PB,@object
	.size		SpiSequence_EEP_WRITE_JobAssignment_PB,4
	.align		1
SpiSequence_EEP_WRITE_JobAssignment_PB:
	.short		3
	.short		4
	.section	.mcal_const_cfg,,r
	.type		SpiSequence_EEP_READSTATUS_JobAssignment_PB,@object
	.size		SpiSequence_EEP_READSTATUS_JobAssignment_PB,2
	.align		1
SpiSequence_EEP_READSTATUS_JobAssignment_PB:
	.short		5
	.section	.mcal_const_cfg,,r
	.type		SpiSequenceConfig_PB0,@object
	.size		SpiSequenceConfig_PB0,96
	.align		2
SpiSequenceConfig_PB0:
	.short		1
	.space		2
	.long		SpiSequence_SBC_JobAssignment_PB
	.long		0
	.byte		0
	.space		3
	.short		1
	.space		2
	.long		SpiSequence_CANA_TJA1145_JobAssignment_PB
	.long		0
	.byte		0
	.space		3
	.short		1
	.space		2
	.long		SpiSequence_CAND_TJA1145_JobAssignment_PB
	.long		0
	.byte		0
	.space		3
	.short		1
	.space		2
	.long		SpiSequence_EEP_READ_JobAssignment_PB
	.long		Eep_SpiReadSeqEndNotification
	.byte		0
	.space		3
	.short		2
	.space		2
	.long		SpiSequence_EEP_WRITE_JobAssignment_PB
	.long		Eep_SpiWriteSeqEndNotification
	.byte		0
	.space		3
	.short		1
	.space		2
	.long		SpiSequence_EEP_READSTATUS_JobAssignment_PB
	.long		Eep_SpiReadStatusRegSeqEndNotification
	.byte		0
	.space		3
	.section	.mcal_const_cfg,,r
	.type		DspiChannelAttributesConfig_PB0,@object
	.size		DspiChannelAttributesConfig_PB0,48
	.align		2
DspiChannelAttributesConfig_PB0:
	.long		2013265920
	.byte		1
	.space		3
	.long		2013265920
	.byte		1
	.space		3
	.long		939524096
	.byte		0
	.space		3
	.long		939524096
	.byte		0
	.space		3
	.long		939524096
	.byte		0
	.space		3
	.long		939524096
	.byte		0
	.space		3
	.section	.mcal_const_cfg,,r
	.type		DspiDeviceAttributesConfig_PB0,@object
	.size		DspiDeviceAttributesConfig_PB0,48
	.align		2
DspiDeviceAttributesConfig_PB0:
	.long		44180083
	.long		-2147418112
	.long		0
	.long		44180083
	.long		-2145386496
	.long		0
	.long		44180083
	.long		-2147221504
	.long		0
	.long		10625651
	.long		-2147221504
	.long		0
	.section	.mcal_const_cfg,,r
	.type		SpiAttributesConfig_PB0,@object
	.size		SpiAttributesConfig_PB0,8
	.align		2
SpiAttributesConfig_PB0:
	.long		DspiChannelAttributesConfig_PB0
	.long		DspiDeviceAttributesConfig_PB0
	.section	.mcal_const_cfg,,r
	.type		HWUnitConfig_PB,@object
	.size		HWUnitConfig_PB,40
	.align		2
HWUnitConfig_PB:
	.byte		2
	.byte		8
	.byte		0
	.space		1
	.long		1
	.byte		0
	.byte		8
	.byte		0
	.space		1
	.long		1
	.byte		1
	.byte		8
	.byte		0
	.space		1
	.long		1
	.byte		3
	.byte		8
	.byte		0
	.space		1
	.long		1
	.byte		4
	.byte		8
	.byte		0
	.space		1
	.long		0
	.section	.mcal_const_cfg,,r
	.0byte		.L556
	.section	.mcal_const_cfg,,r
	.type		SpiDriver,@object
	.size		SpiDriver,28
	.align		2
	.globl		SpiDriver
SpiDriver:
	.short		4
	.byte		5
	.space		1
	.short		5
	.byte		5
	.space		1
	.long		SpiChannelConfig_PB0
	.long		SpiJobConfig_PB0
	.long		SpiSequenceConfig_PB0
	.long		SpiAttributesConfig_PB0
	.long		HWUnitConfig_PB
	.section	.text_vle
#$$ld
.L5:
.L622:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L464:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\src\\Spi_PBcfg.c"
.L453:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Spi\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Spi.h"
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
	.uleb128	9
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
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
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
	.uleb128	33
	.byte		0x0
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\src\\Spi_PBcfg.c"
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
.L452:
	.sleb128	2
	.byte		0x1
	.byte		0x1
	.4byte		.L453
	.uleb128	872
	.uleb128	39
	.byte		"Spi_aSpiJobState"
	.byte		0
	.4byte		.L454
	.section	.debug_info,,n
.L458:
	.sleb128	2
	.byte		0x1
	.byte		0x1
	.4byte		.L453
	.uleb128	877
	.uleb128	43
	.byte		"Spi_aSpiChannelState"
	.byte		0
	.4byte		.L459
	.section	.debug_info,,n
.L463:
	.sleb128	3
	.4byte		.L464
	.uleb128	232
	.uleb128	1
	.byte		"Buffer_PBSpiChannel"
	.byte		0
	.4byte		.L465
	.sleb128	5
	.byte		0x3
	.4byte		Buffer_PBSpiChannel
	.section	.debug_info,,n
	.section	.debug_info,,n
.L467:
	.sleb128	3
	.4byte		.L464
	.uleb128	233
	.uleb128	1
	.byte		"Buffer_PBSpiChannel_CANA_TJA1145"
	.byte		0
	.4byte		.L465
	.sleb128	5
	.byte		0x3
	.4byte		Buffer_PBSpiChannel_CANA_TJA1145
	.section	.debug_info,,n
.L468:
	.sleb128	3
	.4byte		.L464
	.uleb128	234
	.uleb128	47
	.byte		"Buffer_PBSpiChannel_EEP_CommandAddress"
	.byte		0
	.4byte		.L465
	.sleb128	5
	.byte		0x3
	.4byte		Buffer_PBSpiChannel_EEP_CommandAddress
	.section	.debug_info,,n
.L469:
	.sleb128	3
	.4byte		.L464
	.uleb128	235
	.uleb128	47
	.byte		"Buffer_PBSpiChannel_EEP_Data"
	.byte		0
	.4byte		.L465
	.sleb128	5
	.byte		0x3
	.4byte		Buffer_PBSpiChannel_EEP_Data
	.section	.debug_info,,n
.L470:
	.sleb128	3
	.4byte		.L464
	.uleb128	236
	.uleb128	47
	.byte		"Buffer_PBSpiChannel_EEP_LatchCommand"
	.byte		0
	.4byte		.L465
	.sleb128	5
	.byte		0x3
	.4byte		Buffer_PBSpiChannel_EEP_LatchCommand
	.section	.debug_info,,n
.L471:
	.sleb128	3
	.4byte		.L464
	.uleb128	237
	.uleb128	47
	.byte		"Buffer_PBSpiChannel_EEP_StatusReg"
	.byte		0
	.4byte		.L465
	.sleb128	5
	.byte		0x3
	.4byte		Buffer_PBSpiChannel_EEP_StatusReg
	.section	.debug_info,,n
.L472:
	.sleb128	3
	.4byte		.L464
	.uleb128	297
	.uleb128	48
	.byte		"SpiChannelConfig_PB0"
	.byte		0
	.4byte		.L473
	.sleb128	5
	.byte		0x3
	.4byte		SpiChannelConfig_PB0
	.section	.debug_info,,n
	.section	.debug_info,,n
.L478:
	.sleb128	3
	.4byte		.L464
	.uleb128	360
	.uleb128	42
	.byte		"SpiJob_ChannelAssignment_PB"
	.byte		0
	.4byte		.L479
	.sleb128	5
	.byte		0x3
	.4byte		SpiJob_ChannelAssignment_PB
	.section	.debug_info,,n
.L485:
	.sleb128	3
	.4byte		.L464
	.uleb128	361
	.uleb128	42
	.byte		"SpiJob_CANA_TJA1145_ChannelAssignment_PB"
	.byte		0
	.4byte		.L486
	.sleb128	5
	.byte		0x3
	.4byte		SpiJob_CANA_TJA1145_ChannelAssignment_PB
	.section	.debug_info,,n
.L488:
	.sleb128	3
	.4byte		.L464
	.uleb128	362
	.uleb128	42
	.byte		"SpiJob_CAND_TJA1145_ChannelAssignment_PB"
	.byte		0
	.4byte		.L489
	.sleb128	5
	.byte		0x3
	.4byte		SpiJob_CAND_TJA1145_ChannelAssignment_PB
	.section	.debug_info,,n
.L491:
	.sleb128	3
	.4byte		.L464
	.uleb128	363
	.uleb128	42
	.byte		"SpiJob_EEP_DataJob_ChannelAssignment_PB"
	.byte		0
	.4byte		.L492
	.sleb128	5
	.byte		0x3
	.4byte		SpiJob_EEP_DataJob_ChannelAssignment_PB
	.section	.debug_info,,n
.L494:
	.sleb128	3
	.4byte		.L464
	.uleb128	364
	.uleb128	42
	.byte		"SpiJob_EEP_CommandJob_ChannelAssignment_PB"
	.byte		0
	.4byte		.L495
	.sleb128	5
	.byte		0x3
	.4byte		SpiJob_EEP_CommandJob_ChannelAssignment_PB
	.section	.debug_info,,n
.L497:
	.sleb128	3
	.4byte		.L464
	.uleb128	365
	.uleb128	42
	.byte		"SpiJob_EEP_ReadStatusReg_ChannelAssignment_PB"
	.byte		0
	.4byte		.L498
	.sleb128	5
	.byte		0x3
	.4byte		SpiJob_EEP_ReadStatusReg_ChannelAssignment_PB
	.section	.debug_info,,n
.L500:
	.sleb128	3
	.4byte		.L464
	.uleb128	370
	.uleb128	44
	.byte		"SpiJobConfig_PB0"
	.byte		0
	.4byte		.L501
	.sleb128	5
	.byte		0x3
	.4byte		SpiJobConfig_PB0
	.section	.debug_info,,n
.L506:
	.sleb128	3
	.4byte		.L464
	.uleb128	540
	.uleb128	38
	.byte		"SpiSequence_SBC_JobAssignment_PB"
	.byte		0
	.4byte		.L507
	.sleb128	5
	.byte		0x3
	.4byte		SpiSequence_SBC_JobAssignment_PB
	.section	.debug_info,,n
.L513:
	.sleb128	3
	.4byte		.L464
	.uleb128	541
	.uleb128	38
	.byte		"SpiSequence_CANA_TJA1145_JobAssignment_PB"
	.byte		0
	.4byte		.L514
	.sleb128	5
	.byte		0x3
	.4byte		SpiSequence_CANA_TJA1145_JobAssignment_PB
	.section	.debug_info,,n
.L516:
	.sleb128	3
	.4byte		.L464
	.uleb128	542
	.uleb128	38
	.byte		"SpiSequence_CAND_TJA1145_JobAssignment_PB"
	.byte		0
	.4byte		.L517
	.sleb128	5
	.byte		0x3
	.4byte		SpiSequence_CAND_TJA1145_JobAssignment_PB
	.section	.debug_info,,n
.L519:
	.sleb128	3
	.4byte		.L464
	.uleb128	543
	.uleb128	38
	.byte		"SpiSequence_EEP_READ_JobAssignment_PB"
	.byte		0
	.4byte		.L520
	.sleb128	5
	.byte		0x3
	.4byte		SpiSequence_EEP_READ_JobAssignment_PB
	.section	.debug_info,,n
.L522:
	.sleb128	3
	.4byte		.L464
	.uleb128	544
	.uleb128	38
	.byte		"SpiSequence_EEP_WRITE_JobAssignment_PB"
	.byte		0
	.4byte		.L523
	.sleb128	5
	.byte		0x3
	.4byte		SpiSequence_EEP_WRITE_JobAssignment_PB
	.section	.debug_info,,n
.L525:
	.sleb128	3
	.4byte		.L464
	.uleb128	545
	.uleb128	38
	.byte		"SpiSequence_EEP_READSTATUS_JobAssignment_PB"
	.byte		0
	.4byte		.L526
	.sleb128	5
	.byte		0x3
	.4byte		SpiSequence_EEP_READSTATUS_JobAssignment_PB
	.section	.debug_info,,n
.L528:
	.sleb128	3
	.4byte		.L464
	.uleb128	550
	.uleb128	49
	.byte		"SpiSequenceConfig_PB0"
	.byte		0
	.4byte		.L529
	.sleb128	5
	.byte		0x3
	.4byte		SpiSequenceConfig_PB0
	.section	.debug_info,,n
.L534:
	.sleb128	3
	.4byte		.L464
	.uleb128	606
	.uleb128	62
	.byte		"DspiChannelAttributesConfig_PB0"
	.byte		0
	.4byte		.L535
	.sleb128	5
	.byte		0x3
	.4byte		DspiChannelAttributesConfig_PB0
	.section	.debug_info,,n
.L540:
	.sleb128	3
	.4byte		.L464
	.uleb128	633
	.uleb128	61
	.byte		"DspiDeviceAttributesConfig_PB0"
	.byte		0
	.4byte		.L541
	.sleb128	5
	.byte		0x3
	.4byte		DspiDeviceAttributesConfig_PB0
	.section	.debug_info,,n
.L546:
	.sleb128	3
	.4byte		.L464
	.uleb128	709
	.uleb128	51
	.byte		"SpiAttributesConfig_PB0"
	.byte		0
	.4byte		.L547
	.sleb128	5
	.byte		0x3
	.4byte		SpiAttributesConfig_PB0
	.section	.debug_info,,n
.L550:
	.sleb128	3
	.4byte		.L464
	.uleb128	717
	.uleb128	47
	.byte		"HWUnitConfig_PB"
	.byte		0
	.4byte		.L551
	.sleb128	5
	.byte		0x3
	.4byte		HWUnitConfig_PB
	.section	.debug_info,,n
.L556:
	.sleb128	4
	.byte		0x1
	.4byte		.L464
	.uleb128	747
	.uleb128	34
	.byte		"SpiDriver"
	.byte		0
	.4byte		.L557
	.sleb128	5
	.byte		0x3
	.4byte		SpiDriver
	.section	.debug_info,,n
	.section	.debug_info,,n
.L559:
	.sleb128	5
	.4byte		.L453
	.uleb128	495
	.uleb128	1
	.4byte		.L560-.L2
	.uleb128	28
	.section	.debug_info,,n
.L443:
	.sleb128	6
	.byte		"u16MaxExternalDevice"
	.byte		0
	.4byte		.L511
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L444:
	.sleb128	6
	.byte		"Spi_Max_Channel"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L445:
	.sleb128	6
	.byte		"Spi_Max_Job"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L446:
	.sleb128	6
	.byte		"Spi_Max_Sequence"
	.byte		0
	.4byte		.L561
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L447:
	.sleb128	6
	.byte		"pcChannelConfig"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L448:
	.sleb128	6
	.byte		"pcJobConfig"
	.byte		0
	.4byte		.L566
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L449:
	.sleb128	6
	.byte		"pcSequenceConfig"
	.byte		0
	.4byte		.L570
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L450:
	.sleb128	6
	.byte		"pcAttributesConfig"
	.byte		0
	.4byte		.L574
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L451:
	.sleb128	6
	.byte		"pcHWUnitConfig"
	.byte		0
	.4byte		.L575
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L560:
.L555:
	.sleb128	5
	.4byte		.L453
	.uleb128	495
	.uleb128	1
	.4byte		.L579-.L2
	.uleb128	8
.L439:
	.sleb128	6
	.byte		"u8Offset"
	.byte		0
	.4byte		.L483
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L440:
	.sleb128	6
	.byte		"u8NrOfCTAR"
	.byte		0
	.4byte		.L483
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L441:
	.sleb128	6
	.byte		"u8SpiPhyUnitMode"
	.byte		0
	.4byte		.L483
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L442:
	.sleb128	6
	.byte		"u32IsSync"
	.byte		0
	.4byte		.L580
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L579:
.L477:
	.sleb128	5
	.4byte		.L453
	.uleb128	495
	.uleb128	1
	.4byte		.L582-.L2
	.uleb128	16
.L434:
	.sleb128	6
	.byte		"BufferType"
	.byte		0
	.4byte		.L583
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L435:
	.sleb128	6
	.byte		"DefaultTransmitValue"
	.byte		0
	.4byte		.L585
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L436:
	.sleb128	6
	.byte		"Length"
	.byte		0
	.4byte		.L586
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L437:
	.sleb128	6
	.byte		"pcBufferDescriptor"
	.byte		0
	.4byte		.L587
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L438:
	.sleb128	6
	.byte		"pChannelState"
	.byte		0
	.4byte		.L588
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L582:
.L462:
	.sleb128	5
	.4byte		.L453
	.uleb128	495
	.uleb128	1
	.4byte		.L589-.L2
	.uleb128	4
.L432:
	.sleb128	6
	.byte		"u8Flags"
	.byte		0
	.4byte		.L483
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L433:
	.sleb128	6
	.byte		"Length"
	.byte		0
	.4byte		.L586
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L589:
.L466:
	.sleb128	5
	.4byte		.L453
	.uleb128	495
	.uleb128	1
	.4byte		.L590-.L2
	.uleb128	8
.L430:
	.sleb128	6
	.byte		"pBufferTX"
	.byte		0
	.4byte		.L591
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L431:
	.sleb128	6
	.byte		"pBufferRX"
	.byte		0
	.4byte		.L591
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L590:
.L505:
	.sleb128	5
	.4byte		.L453
	.uleb128	495
	.uleb128	1
	.4byte		.L592-.L2
	.uleb128	48
.L420:
	.sleb128	6
	.byte		"NumChannels"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L421:
	.sleb128	6
	.byte		"pcChannelIndexList"
	.byte		0
	.4byte		.L593
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L422:
	.sleb128	6
	.byte		"pfEndNotification"
	.byte		0
	.4byte		.L597
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L423:
	.sleb128	6
	.byte		"pfStartNotification"
	.byte		0
	.4byte		.L597
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L424:
	.sleb128	6
	.byte		"s8Priority"
	.byte		0
	.4byte		.L601
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L425:
	.sleb128	6
	.byte		"pJobState"
	.byte		0
	.4byte		.L603
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L426:
	.sleb128	6
	.byte		"HWUnit"
	.byte		0
	.4byte		.L604
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L427:
	.sleb128	6
	.byte		"u32HWoffset"
	.byte		0
	.4byte		.L580
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L428:
	.sleb128	6
	.byte		"ExternalDevice"
	.byte		0
	.4byte		.L605
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L429:
	.sleb128	6
	.byte		"ExternalDeviceAttrs"
	.byte		0
	.4byte		.L544
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L592:
.L457:
	.sleb128	5
	.4byte		.L453
	.uleb128	495
	.uleb128	1
	.4byte		.L606-.L2
	.uleb128	12
.L417:
	.sleb128	6
	.byte		"Result"
	.byte		0
	.4byte		.L607
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	6
	.byte		"pAsyncCrtSequenceState"
	.byte		0
	.4byte		.L609
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	6
	.byte		"AsyncNextJob"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L606:
.L611:
	.sleb128	5
	.4byte		.L453
	.uleb128	495
	.uleb128	1
	.4byte		.L612-.L2
	.uleb128	16
.L413:
	.sleb128	6
	.byte		"Result"
	.byte		0
	.4byte		.L613
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L414:
	.sleb128	6
	.byte		"pcSequence"
	.byte		0
	.4byte		.L615
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L415:
	.sleb128	6
	.byte		"pcCurrentJobIndexPointer"
	.byte		0
	.4byte		.L616
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L416:
	.sleb128	6
	.byte		"RemainingJobs"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L612:
.L533:
	.sleb128	5
	.4byte		.L453
	.uleb128	495
	.uleb128	1
	.4byte		.L617-.L2
	.uleb128	16
.L409:
	.sleb128	6
	.byte		"NumJobs"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	6
	.byte		"pcJobIndexList"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L411:
	.sleb128	6
	.byte		"pfEndNotification"
	.byte		0
	.4byte		.L597
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L412:
	.sleb128	6
	.byte		"u8Interruptible"
	.byte		0
	.4byte		.L483
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L617:
.L549:
	.sleb128	5
	.4byte		.L622
	.uleb128	34
	.uleb128	14
	.4byte		.L623-.L2
	.uleb128	8
.L407:
	.sleb128	6
	.byte		"pcChannelAttributesConfig"
	.byte		0
	.4byte		.L624
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L408:
	.sleb128	6
	.byte		"pcDeviceAttributesConfig"
	.byte		0
	.4byte		.L628
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L623:
.L545:
	.sleb128	5
	.4byte		.L622
	.uleb128	34
	.uleb128	14
	.4byte		.L632-.L2
	.uleb128	12
.L404:
	.sleb128	6
	.byte		"u32CTAR"
	.byte		0
	.4byte		.L580
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L405:
	.sleb128	6
	.byte		"u32CMD"
	.byte		0
	.4byte		.L580
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L406:
	.sleb128	6
	.byte		"u32MCR"
	.byte		0
	.4byte		.L580
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L632:
.L539:
	.sleb128	5
	.4byte		.L622
	.uleb128	34
	.uleb128	14
	.4byte		.L633-.L2
	.uleb128	8
.L402:
	.sleb128	6
	.byte		"u32CMD"
	.byte		0
	.4byte		.L580
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L403:
	.sleb128	6
	.byte		"u8DataWidth"
	.byte		0
	.4byte		.L483
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L633:
	.section	.debug_info,,n
.L584:
	.sleb128	7
	.4byte		.L453
	.uleb128	451
	.uleb128	1
	.4byte		.L634-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	8
	.byte		"IB"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"EB"
	.byte		0
	.sleb128	1
	.sleb128	0
.L634:
.L614:
	.sleb128	7
	.4byte		.L453
	.uleb128	439
	.uleb128	1
	.4byte		.L635-.L2
	.uleb128	4
	.sleb128	8
	.byte		"SPI_SEQ_OK"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"SPI_SEQ_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"SPI_SEQ_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"SPI_SEQ_CANCELLED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L635:
.L608:
	.sleb128	7
	.4byte		.L453
	.uleb128	425
	.uleb128	1
	.4byte		.L636-.L2
	.uleb128	4
	.sleb128	8
	.byte		"SPI_JOB_OK"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"SPI_JOB_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"SPI_JOB_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	8
	.byte		"SPI_JOB_QUEUED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L636:
	.section	.debug_info,,n
.L456:
	.sleb128	9
	.byte		"Spi_JobStateType"
	.byte		0
	.4byte		.L457
	.section	.debug_info,,n
.L454:
	.sleb128	10
	.4byte		.L455-.L2
	.4byte		.L456
	.section	.debug_info,,n
	.sleb128	11
	.uleb128	5
	.sleb128	0
.L455:
.L461:
	.sleb128	9
	.byte		"Spi_ChannelStateType"
	.byte		0
	.4byte		.L462
.L459:
	.sleb128	10
	.4byte		.L460-.L2
	.4byte		.L461
	.sleb128	11
	.uleb128	5
	.sleb128	0
.L460:
.L465:
	.sleb128	9
	.byte		"Spi_BufferDescriptorType"
	.byte		0
	.4byte		.L466
.L476:
	.sleb128	9
	.byte		"Spi_ChannelConfigType"
	.byte		0
	.4byte		.L477
	.section	.debug_info,,n
.L475:
	.sleb128	12
	.4byte		.L476
.L473:
	.sleb128	10
	.4byte		.L474-.L2
	.4byte		.L475
	.sleb128	11
	.uleb128	5
	.sleb128	0
.L474:
	.section	.debug_info,,n
.L484:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L483:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L484
.L482:
	.sleb128	9
	.byte		"Spi_ChannelType"
	.byte		0
	.4byte		.L483
.L481:
	.sleb128	12
	.4byte		.L482
.L479:
	.sleb128	10
	.4byte		.L480-.L2
	.4byte		.L481
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L480:
.L486:
	.sleb128	10
	.4byte		.L487-.L2
	.4byte		.L481
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L487:
.L489:
	.sleb128	10
	.4byte		.L490-.L2
	.4byte		.L481
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L490:
.L492:
	.sleb128	10
	.4byte		.L493-.L2
	.4byte		.L481
	.sleb128	11
	.uleb128	1
	.sleb128	0
.L493:
.L495:
	.sleb128	10
	.4byte		.L496-.L2
	.4byte		.L481
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L496:
.L498:
	.sleb128	10
	.4byte		.L499-.L2
	.4byte		.L481
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L499:
.L504:
	.sleb128	9
	.byte		"Spi_JobConfigType"
	.byte		0
	.4byte		.L505
.L503:
	.sleb128	12
	.4byte		.L504
.L501:
	.sleb128	10
	.4byte		.L502-.L2
	.4byte		.L503
	.sleb128	11
	.uleb128	5
	.sleb128	0
.L502:
.L512:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L511:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L512
.L510:
	.sleb128	9
	.byte		"Spi_JobType"
	.byte		0
	.4byte		.L511
.L509:
	.sleb128	12
	.4byte		.L510
.L507:
	.sleb128	10
	.4byte		.L508-.L2
	.4byte		.L509
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L508:
.L514:
	.sleb128	10
	.4byte		.L515-.L2
	.4byte		.L509
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L515:
.L517:
	.sleb128	10
	.4byte		.L518-.L2
	.4byte		.L509
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L518:
.L520:
	.sleb128	10
	.4byte		.L521-.L2
	.4byte		.L509
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L521:
.L523:
	.sleb128	10
	.4byte		.L524-.L2
	.4byte		.L509
	.sleb128	11
	.uleb128	1
	.sleb128	0
.L524:
.L526:
	.sleb128	10
	.4byte		.L527-.L2
	.4byte		.L509
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L527:
.L532:
	.sleb128	9
	.byte		"Spi_SequenceConfigType"
	.byte		0
	.4byte		.L533
.L531:
	.sleb128	12
	.4byte		.L532
.L529:
	.sleb128	10
	.4byte		.L530-.L2
	.4byte		.L531
	.sleb128	11
	.uleb128	5
	.sleb128	0
.L530:
.L538:
	.sleb128	9
	.byte		"Spi_Ipw_ChannelAttributesConfigType"
	.byte		0
	.4byte		.L539
.L537:
	.sleb128	12
	.4byte		.L538
.L535:
	.sleb128	10
	.4byte		.L536-.L2
	.4byte		.L537
	.sleb128	11
	.uleb128	5
	.sleb128	0
.L536:
.L544:
	.sleb128	9
	.byte		"Spi_Ipw_DeviceAttributesConfigType"
	.byte		0
	.4byte		.L545
.L543:
	.sleb128	12
	.4byte		.L544
.L541:
	.sleb128	10
	.4byte		.L542-.L2
	.4byte		.L543
	.sleb128	11
	.uleb128	3
	.sleb128	0
.L542:
.L548:
	.sleb128	9
	.byte		"Spi_AttributesConfigType"
	.byte		0
	.4byte		.L549
.L547:
	.sleb128	12
	.4byte		.L548
.L554:
	.sleb128	9
	.byte		"Spi_HWUnitConfigType"
	.byte		0
	.4byte		.L555
.L553:
	.sleb128	12
	.4byte		.L554
.L551:
	.sleb128	10
	.4byte		.L552-.L2
	.4byte		.L553
	.sleb128	11
	.uleb128	4
	.sleb128	0
.L552:
.L558:
	.sleb128	9
	.byte		"Spi_ConfigType"
	.byte		0
	.4byte		.L559
.L557:
	.sleb128	12
	.4byte		.L558
.L561:
	.sleb128	9
	.byte		"Spi_SequenceType"
	.byte		0
	.4byte		.L483
.L564:
	.sleb128	10
	.4byte		.L565-.L2
	.4byte		.L475
	.section	.debug_info,,n
	.sleb128	14
	.sleb128	0
.L565:
	.section	.debug_info,,n
.L563:
	.sleb128	15
	.4byte		.L564
.L562:
	.sleb128	12
	.4byte		.L563
.L568:
	.sleb128	10
	.4byte		.L569-.L2
	.4byte		.L503
	.sleb128	14
	.sleb128	0
.L569:
.L567:
	.sleb128	15
	.4byte		.L568
.L566:
	.sleb128	12
	.4byte		.L567
.L572:
	.sleb128	10
	.4byte		.L573-.L2
	.4byte		.L531
	.sleb128	14
	.sleb128	0
.L573:
.L571:
	.sleb128	15
	.4byte		.L572
.L570:
	.sleb128	12
	.4byte		.L571
.L574:
	.sleb128	15
	.4byte		.L547
.L577:
	.sleb128	10
	.4byte		.L578-.L2
	.4byte		.L553
	.sleb128	14
	.sleb128	0
.L578:
.L576:
	.sleb128	15
	.4byte		.L577
.L575:
	.sleb128	12
	.4byte		.L576
.L581:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L580:
	.sleb128	9
	.byte		"uint32"
	.byte		0
	.4byte		.L581
.L583:
	.sleb128	9
	.byte		"Spi_BufferType"
	.byte		0
	.4byte		.L584
.L585:
	.sleb128	9
	.byte		"Spi_DataType"
	.byte		0
	.4byte		.L483
.L586:
	.sleb128	9
	.byte		"Spi_NumberOfDataType"
	.byte		0
	.4byte		.L511
.L587:
	.sleb128	15
	.4byte		.L465
.L588:
	.sleb128	15
	.4byte		.L461
.L591:
	.sleb128	15
	.4byte		.L585
.L595:
	.sleb128	10
	.4byte		.L596-.L2
	.4byte		.L481
	.sleb128	14
	.sleb128	0
.L596:
.L594:
	.sleb128	15
	.4byte		.L595
.L593:
	.sleb128	12
	.4byte		.L594
	.section	.debug_info,,n
.L599:
	.sleb128	16
	.4byte		.L600-.L2
	.byte		0x1
	.sleb128	0
.L600:
.L598:
	.sleb128	9
	.byte		"Spi_NotifyType"
	.byte		0
	.4byte		.L599
.L597:
	.sleb128	15
	.4byte		.L598
.L602:
	.sleb128	13
	.byte		"signed char"
	.byte		0
	.byte		0x6
	.byte		0x1
.L601:
	.sleb128	9
	.byte		"sint8"
	.byte		0
	.4byte		.L602
.L603:
	.sleb128	15
	.4byte		.L456
.L604:
	.sleb128	9
	.byte		"Spi_HWUnitType"
	.byte		0
	.4byte		.L483
.L605:
	.sleb128	9
	.byte		"Spi_ExternalDeviceType"
	.byte		0
	.4byte		.L483
.L607:
	.sleb128	9
	.byte		"Spi_JobResultType"
	.byte		0
	.4byte		.L608
.L610:
	.sleb128	9
	.byte		"Spi_SequenceStateType"
	.byte		0
	.4byte		.L611
.L609:
	.sleb128	15
	.4byte		.L610
.L613:
	.sleb128	9
	.byte		"Spi_SeqResultType"
	.byte		0
	.4byte		.L614
.L615:
	.sleb128	15
	.4byte		.L531
.L616:
	.sleb128	15
	.4byte		.L509
.L620:
	.sleb128	10
	.4byte		.L621-.L2
	.4byte		.L509
	.sleb128	14
	.sleb128	0
.L621:
.L619:
	.sleb128	15
	.4byte		.L620
.L618:
	.sleb128	12
	.4byte		.L619
.L626:
	.sleb128	10
	.4byte		.L627-.L2
	.4byte		.L537
	.sleb128	14
	.sleb128	0
.L627:
.L625:
	.sleb128	15
	.4byte		.L626
.L624:
	.sleb128	12
	.4byte		.L625
.L630:
	.sleb128	10
	.4byte		.L631-.L2
	.4byte		.L543
	.sleb128	14
	.sleb128	0
.L631:
.L629:
	.sleb128	15
	.4byte		.L630
.L628:
	.sleb128	12
	.4byte		.L629
.L7:
	.sleb128	0
.L3:
	.wrcm.doc
	.wrcm.elem
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Spi_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Spi_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Spi_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Spi_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Spi_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Spi_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\src\Spi_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
