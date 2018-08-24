#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Mcu_PBcfg.c"
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
	.section	.mcal_const_cfg,,r
	.0byte		.L588
	.section	.mcal_const_cfg,,r
	.type		Mcu_aRamConfigPB0,@object
	.size		Mcu_aRamConfigPB0,16
	.align		2
Mcu_aRamConfigPB0:
	.long		0
	.long		1073938176
	.long		256
	.byte		0
	.space		3
	.section	.mcal_const_cfg,,r
	.type		Mcu_aModeConfigPB0,@object
	.size		Mcu_aModeConfigPB0,20
	.align		2
Mcu_aModeConfigPB0:
	.long		0
	.long		3
	.long		1245233
	.byte		0
	.space		3
	.long		0
	.section	.mcal_const_cfg,,r
	.type		FLASH_Clock_ConfigPB0_0,@object
	.size		FLASH_Clock_ConfigPB0_0,4
	.align		2
FLASH_Clock_ConfigPB0_0:
	.long		17664
	.section	.mcal_const_cfg,,r
	.type		MC_CGM_aPcsClockConfigPB0_0,@object
	.size		MC_CGM_aPcsClockConfigPB0_0,72
	.align		2
MC_CGM_aPcsClockConfigPB0_0:
	.long		-325884
	.long		65470464
	.long		-325876
	.long		999
	.long		-325880
	.long		999
	.long		-325872
	.long		65470464
	.long		-325864
	.long		999
	.long		-325868
	.long		999
	.long		-325848
	.long		65470464
	.long		-325840
	.long		999
	.long		-325844
	.long		999
	.section	.mcal_const_cfg,,r
	.type		MC_CGM_aSystemClockConfigPB0_0,@object
	.size		MC_CGM_aSystemClockConfigPB0_0,24
	.align		2
MC_CGM_aSystemClockConfigPB0_0:
	.long		-325656
	.long		-2147483648
	.long		-325652
	.long		-2147418112
	.long		-325648
	.long		-2147287040
	.section	.mcal_const_cfg,,r
	.type		MC_CGM_aAuxClockConfigPB0_0,@object
	.size		MC_CGM_aAuxClockConfigPB0_0,184
	.align		2
MC_CGM_aAuxClockConfigPB0_0:
	.long		-325632
	.long		33554432
	.long		-325624
	.long		-2147287040
	.long		-325620
	.long		-2146238464
	.long		-325616
	.long		-2146893824
	.long		-325612
	.long		-2147221504
	.long		-325608
	.long		-2147221504
	.long		-325600
	.long		33554432
	.long		-325592
	.long		-2146893824
	.long		-325568
	.long		33554432
	.long		-325560
	.long		-2147221504
	.long		-325536
	.long		16777216
	.long		-325504
	.long		16777216
	.long		-325472
	.long		33554432
	.long		-325464
	.long		-2147418112
	.long		-325460
	.long		-2147418112
	.long		-325440
	.long		33554432
	.long		-325432
	.long		-2147221504
	.long		-325376
	.long		33554432
	.long		-325368
	.long		-2147221504
	.long		-325344
	.long		16777216
	.long		-325336
	.long		-2147483648
	.long		-325312
	.long		33554432
	.long		-325304
	.long		-2147221504
	.section	.mcal_const_cfg,,r
	.type		MC_CGM_Clock_ConfigPB0_0,@object
	.size		MC_CGM_Clock_ConfigPB0_0,36
	.align		2
MC_CGM_Clock_ConfigPB0_0:
	.long		96
	.byte		0
	.space		3
	.long		1895
	.byte		9
	.space		3
	.long		MC_CGM_aPcsClockConfigPB0_0
	.byte		3
	.space		3
	.long		MC_CGM_aSystemClockConfigPB0_0
	.byte		23
	.space		3
	.long		MC_CGM_aAuxClockConfigPB0_0
	.section	.mcal_const_cfg,,r
	.type		Mcu_PLLDIG_aRegistersConfigPB0_0,@object
	.size		Mcu_PLLDIG_aRegistersConfigPB0_0,48
	.align		2
Mcu_PLLDIG_aRegistersConfigPB0_0:
	.long		-327424
	.long		0
	.long		-327416
	.long		1342316564
	.long		-327392
	.long		0
	.long		-327384
	.long		131088
	.long		-327380
	.long		0
	.long		-327376
	.long		0
	.section	.mcal_const_cfg,,r
	.type		Mcu_PLLDIG_ClockConfigPB0_0,@object
	.size		Mcu_PLLDIG_ClockConfigPB0_0,8
	.align		2
Mcu_PLLDIG_ClockConfigPB0_0:
	.byte		6
	.space		3
	.long		Mcu_PLLDIG_aRegistersConfigPB0_0
	.section	.mcal_const_cfg,,r
	.type		EMIOS_Module_ConfigPB0_0,@object
	.size		EMIOS_Module_ConfigPB0_0,8
	.align		2
EMIOS_Module_ConfigPB0_0:
	.long		335544320
	.long		335544320
	.section	.mcal_const_cfg,,r
	.type		CMU_ConfigPB0_0,@object
	.size		CMU_ConfigPB0_0,132
	.align		2
CMU_ConfigPB0_0:
	.long		6
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.section	.mcal_const_cfg,,r
	.type		MC_XOSC_ClockConfigPB0_0,@object
	.size		MC_XOSC_ClockConfigPB0_0,4
	.align		2
MC_XOSC_ClockConfigPB0_0:
	.long		6553600
	.section	.mcal_const_cfg,,r
	.type		SRAMC_ClockConfigPB0_0,@object
	.size		SRAMC_ClockConfigPB0_0,4
	.align		2
SRAMC_ClockConfigPB0_0:
	.long		512
	.section	.mcal_const_cfg,,r
	.type		Mcu_aClockConfigPB0,@object
	.size		Mcu_aClockConfigPB0,44
	.align		2
Mcu_aClockConfigPB0:
	.long		0
	.long		90
	.long		66
	.long		MC_CGM_Clock_ConfigPB0_0
	.long		MC_XOSC_ClockConfigPB0_0
	.long		Mcu_PLLDIG_ClockConfigPB0_0
	.long		EMIOS_Module_ConfigPB0_0
	.long		CMU_ConfigPB0_0
	.long		SRAMC_ClockConfigPB0_0
	.long		FLASH_Clock_ConfigPB0_0
	.byte		52
	.space		3
	.section	.mcal_const_cfg,,r
	.type		MC_RGM_ConfigPB0,@object
	.size		MC_RGM_ConfigPB0,32
	.align		2
MC_RGM_ConfigPB0:
	.long		0
	.long		0
	.long		1024
	.long		0
	.long		25165824
	.long		25166952
	.long		64
	.byte		15
	.byte		8
	.space		2
	.section	.mcal_const_cfg,,r
	.type		MC_ME_CADDR_ConfigPB0,@object
	.size		MC_ME_CADDR_ConfigPB0,36
	.align		2
MC_ME_CADDR_ConfigPB0:
	.long		-294432
	.long		1
	.long		0
	.long		-294428
	.long		1
	.long		0
	.long		-294424
	.long		1
	.long		0
	.section	.mcal_const_cfg,,r
	.type		MC_ME_CCTL_ConfigPB0,@object
	.size		MC_ME_CCTL_ConfigPB0,24
	.align		2
MC_ME_CCTL_ConfigPB0:
	.long		-294460
	.short		254
	.space		2
	.long		-294458
	.short		254
	.space		2
	.long		-294456
	.short		0
	.space		2
	.section	.mcal_const_cfg,,r
	.type		MC_ME_aPCTLConfigPB0,@object
	.size		MC_ME_aPCTLConfigPB0,384
	.align		2
MC_ME_aPCTLConfigPB0:
	.long		-294711
	.byte		0
	.space		3
	.long		-294709
	.byte		0
	.space		3
	.long		-294705
	.byte		0
	.space		3
	.long		-294692
	.byte		0
	.space		3
	.long		-294691
	.byte		0
	.space		3
	.long		-294690
	.byte		0
	.space		3
	.long		-294689
	.byte		0
	.space		3
	.long		-294684
	.byte		0
	.space		3
	.long		-294682
	.byte		0
	.space		3
	.long		-294675
	.byte		0
	.space		3
	.long		-294661
	.byte		0
	.space		3
	.long		-294660
	.byte		0
	.space		3
	.long		-294651
	.byte		0
	.space		3
	.long		-294649
	.byte		0
	.space		3
	.long		-294639
	.byte		0
	.space		3
	.long		-294637
	.byte		0
	.space		3
	.long		-294635
	.byte		0
	.space		3
	.long		-294629
	.byte		0
	.space		3
	.long		-294628
	.byte		0
	.space		3
	.long		-294624
	.byte		0
	.space		3
	.long		-294623
	.byte		0
	.space		3
	.long		-294622
	.byte		0
	.space		3
	.long		-294621
	.byte		0
	.space		3
	.long		-294618
	.byte		0
	.space		3
	.long		-294616
	.byte		0
	.space		3
	.long		-294577
	.byte		0
	.space		3
	.long		-294554
	.byte		0
	.space		3
	.long		-294532
	.byte		0
	.space		3
	.long		-294524
	.byte		0
	.space		3
	.long		-294523
	.byte		0
	.space		3
	.long		-294522
	.byte		0
	.space		3
	.long		-294518
	.byte		0
	.space		3
	.long		-294517
	.byte		0
	.space		3
	.long		-294516
	.byte		0
	.space		3
	.long		-294515
	.byte		0
	.space		3
	.long		-294514
	.byte		0
	.space		3
	.long		-294513
	.byte		0
	.space		3
	.long		-294512
	.byte		0
	.space		3
	.long		-294510
	.byte		0
	.space		3
	.long		-294507
	.byte		0
	.space		3
	.long		-294501
	.byte		0
	.space		3
	.long		-294500
	.byte		0
	.space		3
	.long		-294495
	.byte		0
	.space		3
	.long		-294494
	.byte		0
	.space		3
	.long		-294493
	.byte		0
	.space		3
	.long		-294490
	.byte		0
	.space		3
	.long		-294488
	.byte		0
	.space		3
	.long		-294469
	.byte		0
	.space		3
	.section	.mcal_const_cfg,,r
	.type		MC_ME_ConfigPB0,@object
	.size		MC_ME_ConfigPB0,96
	.align		2
MC_ME_ConfigPB0:
	.long		252
	.long		252
	.long		252
	.long		252
	.long		252
	.long		252
	.long		252
	.long		252
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.long		0
	.byte		48
	.space		3
	.long		MC_ME_aPCTLConfigPB0
	.long		34301
	.long		0
	.byte		3
	.space		3
	.long		MC_ME_CADDR_ConfigPB0
	.byte		3
	.space		3
	.long		MC_ME_CCTL_ConfigPB0
	.section	.mcal_const_cfg,,r
	.type		FLASH_ConfigPB0,@object
	.size		FLASH_ConfigPB0,16
	.align		2
FLASH_ConfigPB0:
	.long		1
	.long		1
	.long		0
	.long		-1
	.section	.mcal_const_cfg,,r
	.type		MC_PCU_ConfigPB0,@object
	.size		MC_PCU_ConfigPB0,28
	.align		2
MC_PCU_ConfigPB0:
	.long		0
	.long		0
	.long		16466
	.long		0
	.long		0
	.long		0
	.long		771
	.section	.mcal_const_cfg,,r
	.type		Mcu_HwIPs_ConfigPB0,@object
	.size		Mcu_HwIPs_ConfigPB0,16
	.align		2
Mcu_HwIPs_ConfigPB0:
	.long		MC_ME_ConfigPB0
	.long		MC_RGM_ConfigPB0
	.long		MC_PCU_ConfigPB0
	.long		FLASH_ConfigPB0
	.section	.mcal_const_cfg,,r
	.0byte		.L691
	.section	.mcal_const_cfg,,r
	.type		McuModuleConfiguration,@object
	.size		McuModuleConfiguration,28
	.align		2
	.globl		McuModuleConfiguration
McuModuleConfiguration:
	.long		1
	.long		1
	.long		1
	.long		Mcu_aRamConfigPB0
	.long		Mcu_aModeConfigPB0
	.long		Mcu_aClockConfigPB0
	.long		Mcu_HwIPs_ConfigPB0
	.section	.text_vle
#$$ld
.L5:
.L783:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L771:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\include\\Mcu_Cfg.h"
.L746:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcu\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Mcu_MC_ME_Types.h"
.L729:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcu\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Mcu_PLLDIG_Types.h"
.L695:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcu\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Mcu_IPW_Types.h"
.L589:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\src\\Mcu_PBcfg.c"
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
	.uleb128	3
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
	.uleb128	4
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
	.uleb128	5
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
	.uleb128	6
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
	.uleb128	7
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.uleb128	9
	.uleb128	38
	.byte		0x0
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
	.uleb128	33
	.byte		0x0
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\src\\Mcu_PBcfg.c"
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
.L588:
	.sleb128	2
	.4byte		.L589
	.uleb128	220
	.uleb128	44
	.byte		"Mcu_aRamConfigPB0"
	.byte		0
	.4byte		.L590
	.sleb128	5
	.byte		0x3
	.4byte		Mcu_aRamConfigPB0
	.section	.debug_info,,n
	.section	.debug_info,,n
.L595:
	.sleb128	2
	.4byte		.L589
	.uleb128	280
	.uleb128	46
	.byte		"Mcu_aModeConfigPB0"
	.byte		0
	.4byte		.L596
	.sleb128	5
	.byte		0x3
	.4byte		Mcu_aModeConfigPB0
	.section	.debug_info,,n
.L601:
	.sleb128	2
	.4byte		.L589
	.uleb128	354
	.uleb128	53
	.byte		"FLASH_Clock_ConfigPB0_0"
	.byte		0
	.4byte		.L602
	.sleb128	5
	.byte		0x3
	.4byte		FLASH_Clock_ConfigPB0_0
	.section	.debug_info,,n
.L605:
	.sleb128	2
	.4byte		.L589
	.uleb128	370
	.uleb128	57
	.byte		"MC_CGM_aPcsClockConfigPB0_0"
	.byte		0
	.4byte		.L606
	.sleb128	5
	.byte		0x3
	.4byte		MC_CGM_aPcsClockConfigPB0_0
	.section	.debug_info,,n
.L611:
	.sleb128	2
	.4byte		.L589
	.uleb128	441
	.uleb128	57
	.byte		"MC_CGM_aSystemClockConfigPB0_0"
	.byte		0
	.4byte		.L612
	.sleb128	5
	.byte		0x3
	.4byte		MC_CGM_aSystemClockConfigPB0_0
	.section	.debug_info,,n
.L614:
	.sleb128	2
	.4byte		.L589
	.uleb128	478
	.uleb128	57
	.byte		"MC_CGM_aAuxClockConfigPB0_0"
	.byte		0
	.4byte		.L615
	.sleb128	5
	.byte		0x3
	.4byte		MC_CGM_aAuxClockConfigPB0_0
	.section	.debug_info,,n
.L617:
	.sleb128	2
	.4byte		.L589
	.uleb128	707
	.uleb128	54
	.byte		"MC_CGM_Clock_ConfigPB0_0"
	.byte		0
	.4byte		.L618
	.sleb128	5
	.byte		0x3
	.4byte		MC_CGM_Clock_ConfigPB0_0
	.section	.debug_info,,n
.L621:
	.sleb128	2
	.4byte		.L589
	.uleb128	761
	.uleb128	57
	.byte		"Mcu_PLLDIG_aRegistersConfigPB0_0"
	.byte		0
	.4byte		.L622
	.sleb128	5
	.byte		0x3
	.4byte		Mcu_PLLDIG_aRegistersConfigPB0_0
	.section	.debug_info,,n
.L627:
	.sleb128	2
	.4byte		.L589
	.uleb128	827
	.uleb128	49
	.byte		"Mcu_PLLDIG_ClockConfigPB0_0"
	.byte		0
	.4byte		.L628
	.sleb128	5
	.byte		0x3
	.4byte		Mcu_PLLDIG_ClockConfigPB0_0
	.section	.debug_info,,n
.L631:
	.sleb128	2
	.4byte		.L589
	.uleb128	847
	.uleb128	47
	.byte		"EMIOS_Module_ConfigPB0_0"
	.byte		0
	.4byte		.L632
	.sleb128	5
	.byte		0x3
	.4byte		EMIOS_Module_ConfigPB0_0
	.section	.debug_info,,n
.L635:
	.sleb128	2
	.4byte		.L589
	.uleb128	887
	.uleb128	46
	.byte		"CMU_ConfigPB0_0"
	.byte		0
	.4byte		.L636
	.sleb128	5
	.byte		0x3
	.4byte		CMU_ConfigPB0_0
	.section	.debug_info,,n
.L639:
	.sleb128	2
	.4byte		.L589
	.uleb128	1088
	.uleb128	47
	.byte		"MC_XOSC_ClockConfigPB0_0"
	.byte		0
	.4byte		.L640
	.sleb128	5
	.byte		0x3
	.4byte		MC_XOSC_ClockConfigPB0_0
	.section	.debug_info,,n
.L643:
	.sleb128	2
	.4byte		.L589
	.uleb128	1110
	.uleb128	52
	.byte		"SRAMC_ClockConfigPB0_0"
	.byte		0
	.4byte		.L644
	.sleb128	5
	.byte		0x3
	.4byte		SRAMC_ClockConfigPB0_0
	.section	.debug_info,,n
.L647:
	.sleb128	2
	.4byte		.L589
	.uleb128	1133
	.uleb128	47
	.byte		"Mcu_aClockConfigPB0"
	.byte		0
	.4byte		.L648
	.sleb128	5
	.byte		0x3
	.4byte		Mcu_aClockConfigPB0
	.section	.debug_info,,n
.L653:
	.sleb128	2
	.4byte		.L589
	.uleb128	1193
	.uleb128	49
	.byte		"MC_RGM_ConfigPB0"
	.byte		0
	.4byte		.L654
	.sleb128	5
	.byte		0x3
	.4byte		MC_RGM_ConfigPB0
	.section	.debug_info,,n
.L657:
	.sleb128	2
	.4byte		.L589
	.uleb128	1265
	.uleb128	59
	.byte		"MC_ME_CADDR_ConfigPB0"
	.byte		0
	.4byte		.L658
	.sleb128	5
	.byte		0x3
	.4byte		MC_ME_CADDR_ConfigPB0
	.section	.debug_info,,n
.L663:
	.sleb128	2
	.4byte		.L589
	.uleb128	1301
	.uleb128	52
	.byte		"MC_ME_CCTL_ConfigPB0"
	.byte		0
	.4byte		.L664
	.sleb128	5
	.byte		0x3
	.4byte		MC_ME_CCTL_ConfigPB0
	.section	.debug_info,,n
.L669:
	.sleb128	2
	.4byte		.L589
	.uleb128	1349
	.uleb128	56
	.byte		"MC_ME_aPCTLConfigPB0"
	.byte		0
	.4byte		.L670
	.sleb128	5
	.byte		0x3
	.4byte		MC_ME_aPCTLConfigPB0
	.section	.debug_info,,n
.L675:
	.sleb128	2
	.4byte		.L589
	.uleb128	1647
	.uleb128	48
	.byte		"MC_ME_ConfigPB0"
	.byte		0
	.4byte		.L676
	.sleb128	5
	.byte		0x3
	.4byte		MC_ME_ConfigPB0
	.section	.debug_info,,n
.L679:
	.sleb128	2
	.4byte		.L589
	.uleb128	1829
	.uleb128	48
	.byte		"FLASH_ConfigPB0"
	.byte		0
	.4byte		.L680
	.sleb128	5
	.byte		0x3
	.4byte		FLASH_ConfigPB0
	.section	.debug_info,,n
.L683:
	.sleb128	2
	.4byte		.L589
	.uleb128	1923
	.uleb128	49
	.byte		"MC_PCU_ConfigPB0"
	.byte		0
	.4byte		.L684
	.sleb128	5
	.byte		0x3
	.4byte		MC_PCU_ConfigPB0
	.section	.debug_info,,n
.L687:
	.sleb128	2
	.4byte		.L589
	.uleb128	2005
	.uleb128	47
	.byte		"Mcu_HwIPs_ConfigPB0"
	.byte		0
	.4byte		.L688
	.sleb128	5
	.byte		0x3
	.4byte		Mcu_HwIPs_ConfigPB0
	.section	.debug_info,,n
.L691:
	.sleb128	3
	.byte		0x1
	.4byte		.L589
	.uleb128	2030
	.uleb128	34
	.byte		"McuModuleConfiguration"
	.byte		0
	.4byte		.L692
	.sleb128	5
	.byte		0x3
	.4byte		McuModuleConfiguration
	.section	.debug_info,,n
	.section	.debug_info,,n
.L694:
	.sleb128	4
	.4byte		.L695
	.uleb128	382
	.uleb128	1
	.4byte		.L696-.L2
	.uleb128	28
	.section	.debug_info,,n
.L581:
	.sleb128	5
	.byte		"Mcu_NoRamConfigs"
	.byte		0
	.4byte		.L697
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L582:
	.sleb128	5
	.byte		"Mcu_NoModeConfigs"
	.byte		0
	.4byte		.L700
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L583:
	.sleb128	5
	.byte		"Mcu_NoClkConfigs"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L584:
	.sleb128	5
	.byte		"Mcu_apRamConfig"
	.byte		0
	.4byte		.L702
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L585:
	.sleb128	5
	.byte		"Mcu_apModeConfig"
	.byte		0
	.4byte		.L705
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L586:
	.sleb128	5
	.byte		"Mcu_apClockConfig"
	.byte		0
	.4byte		.L708
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L587:
	.sleb128	5
	.byte		"Mcu_pHwIPsConfig"
	.byte		0
	.4byte		.L711
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L696:
.L652:
	.sleb128	4
	.4byte		.L695
	.uleb128	382
	.uleb128	1
	.4byte		.L712-.L2
	.uleb128	44
.L570:
	.sleb128	5
	.byte		"Mcu_ClkConfigId"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L571:
	.sleb128	5
	.byte		"Mcu_ClkNotification"
	.byte		0
	.4byte		.L713
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L572:
	.sleb128	5
	.byte		"Mcu_u32SystemClkSource"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L573:
	.sleb128	5
	.byte		"MC_CGM_pClockConfig"
	.byte		0
	.4byte		.L715
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L574:
	.sleb128	5
	.byte		"MC_XOSC_pClockConfig"
	.byte		0
	.4byte		.L716
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L575:
	.sleb128	5
	.byte		"MC_PLLDIG_pClockConfig"
	.byte		0
	.4byte		.L717
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L576:
	.sleb128	5
	.byte		"EMIOS_pClockConfig"
	.byte		0
	.4byte		.L718
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L577:
	.sleb128	5
	.byte		"Mcu_CMU_pConfig"
	.byte		0
	.4byte		.L719
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L578:
	.sleb128	5
	.byte		"SRAMC_pClockConfig"
	.byte		0
	.4byte		.L720
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L579:
	.sleb128	5
	.byte		"FLASH_pClockConfig"
	.byte		0
	.4byte		.L721
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L580:
	.sleb128	5
	.byte		"Mcu_u8ClockSourcesControl"
	.byte		0
	.4byte		.L722
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L712:
.L690:
	.sleb128	4
	.4byte		.L695
	.uleb128	382
	.uleb128	1
	.4byte		.L724-.L2
	.uleb128	16
.L566:
	.sleb128	5
	.byte		"MC_ME_pConfig"
	.byte		0
	.4byte		.L725
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L567:
	.sleb128	5
	.byte		"MC_RGM_pConfig"
	.byte		0
	.4byte		.L726
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L568:
	.sleb128	5
	.byte		"MC_PCU_pConfig"
	.byte		0
	.4byte		.L727
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L569:
	.sleb128	5
	.byte		"FLASH_pConfig"
	.byte		0
	.4byte		.L728
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L724:
.L634:
	.sleb128	4
	.4byte		.L729
	.uleb128	633
	.uleb128	1
	.4byte		.L730-.L2
	.uleb128	8
.L565:
	.sleb128	5
	.byte		"au32EmiosData"
	.byte		0
	.4byte		.L731
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L730:
.L638:
	.sleb128	4
	.4byte		.L729
	.uleb128	633
	.uleb128	1
	.4byte		.L733-.L2
	.uleb128	132
.L560:
	.sleb128	5
	.byte		"au32CmuConfig"
	.byte		0
	.4byte		.L734
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L561:
	.sleb128	5
	.byte		"au32CmuHfRef"
	.byte		0
	.4byte		.L736
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L562:
	.sleb128	5
	.byte		"au32CmuLfRef"
	.byte		0
	.4byte		.L738
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
	.sleb128	0
.L733:
.L642:
	.sleb128	4
	.4byte		.L729
	.uleb128	633
	.uleb128	1
	.4byte		.L740-.L2
	.uleb128	4
.L558:
	.sleb128	5
	.byte		"u32Config"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L740:
.L630:
	.sleb128	4
	.4byte		.L729
	.uleb128	633
	.uleb128	1
	.4byte		.L741-.L2
	.uleb128	8
.L556:
	.sleb128	5
	.byte		"u8NoOfPllDigRegsUnderMcuControl"
	.byte		0
	.4byte		.L722
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L557:
	.sleb128	5
	.byte		"apPllDigConfig"
	.byte		0
	.4byte		.L742
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L741:
.L626:
	.sleb128	4
	.4byte		.L729
	.uleb128	633
	.uleb128	1
	.4byte		.L745-.L2
	.uleb128	8
.L554:
	.sleb128	5
	.byte		"u32RegisterAddr"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L555:
	.sleb128	5
	.byte		"u32RegisterData"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L745:
.L682:
	.sleb128	4
	.4byte		.L746
	.uleb128	1473
	.uleb128	1
	.4byte		.L747-.L2
	.uleb128	16
.L550:
	.sleb128	5
	.byte		"u32FlashConfig1"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L551:
	.sleb128	5
	.byte		"u32FlashConfig2"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L552:
	.sleb128	5
	.byte		"u32FlashConfig3"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L553:
	.sleb128	5
	.byte		"u32FlashAccess"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L747:
.L604:
	.sleb128	4
	.4byte		.L746
	.uleb128	1473
	.uleb128	1
	.4byte		.L748-.L2
	.uleb128	4
.L549:
	.sleb128	5
	.byte		"u32FlashWS"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L748:
.L646:
	.sleb128	4
	.4byte		.L746
	.uleb128	1473
	.uleb128	1
	.4byte		.L749-.L2
	.uleb128	4
.L548:
	.sleb128	5
	.byte		"u32RamWS"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L749:
.L686:
	.sleb128	4
	.4byte		.L746
	.uleb128	1473
	.uleb128	1
	.4byte		.L750-.L2
	.uleb128	28
.L541:
	.sleb128	5
	.byte		"u32ResetInterruptEn"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L542:
	.sleb128	5
	.byte		"u32TempResetInterruptEn"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L543:
	.sleb128	5
	.byte		"u32ResetEventEn"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L544:
	.sleb128	5
	.byte		"u32ResetEventSel"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L545:
	.sleb128	5
	.byte		"u32TempResEventEn"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L546:
	.sleb128	5
	.byte		"u32TempResEventSel"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L547:
	.sleb128	5
	.byte		"u32TempDetConfig"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L750:
.L656:
	.sleb128	4
	.4byte		.L746
	.uleb128	1473
	.uleb128	1
	.4byte		.L751-.L2
	.uleb128	32
.L532:
	.sleb128	5
	.byte		"u32DestResetOpt"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L533:
	.sleb128	5
	.byte		"u32DestSafeIsrOpt"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L534:
	.sleb128	5
	.byte		"u32DestExtPinReset"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L535:
	.sleb128	5
	.byte		"u32FuncResetOpt"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L536:
	.sleb128	5
	.byte		"u32FuncSafeIsrOpt"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L537:
	.sleb128	5
	.byte		"u32FuncExtPinReset"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L538:
	.sleb128	5
	.byte		"u32FuncPhase1or3Opt"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L539:
	.sleb128	5
	.byte		"u8ThresholdReset"
	.byte		0
	.4byte		.L722
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L540:
	.sleb128	5
	.byte		"u8DesThresholdReset"
	.byte		0
	.4byte		.L722
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
	.sleb128	0
.L751:
.L600:
	.sleb128	4
	.4byte		.L746
	.uleb128	1473
	.uleb128	1
	.4byte		.L752-.L2
	.uleb128	20
.L527:
	.sleb128	5
	.byte		"Mcu_ModeConfigId"
	.byte		0
	.4byte		.L700
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L528:
	.sleb128	5
	.byte		"Mcu_ePowerMode"
	.byte		0
	.4byte		.L753
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L529:
	.sleb128	5
	.byte		"Mcu_u32ModeParams"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L530:
	.sleb128	5
	.byte		"Mcu_bFastWakeup"
	.byte		0
	.4byte		.L755
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L531:
	.sleb128	5
	.byte		"Mcu_u32FastWakeupParams"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L752:
.L678:
	.sleb128	4
	.4byte		.L746
	.uleb128	1473
	.uleb128	1
	.4byte		.L756-.L2
	.uleb128	96
.L503:
	.sleb128	5
	.byte		"u32RunConfig0"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L504:
	.sleb128	5
	.byte		"u32RunConfig1"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L505:
	.sleb128	5
	.byte		"u32RunConfig2"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L506:
	.sleb128	5
	.byte		"u32RunConfig3"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L507:
	.sleb128	5
	.byte		"u32RunConfig4"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L508:
	.sleb128	5
	.byte		"u32RunConfig5"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L509:
	.sleb128	5
	.byte		"u32RunConfig6"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L510:
	.sleb128	5
	.byte		"u32RunConfig7"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L511:
	.sleb128	5
	.byte		"u32LowPwrConfig0"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L512:
	.sleb128	5
	.byte		"u32LowPwrConfig1"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L513:
	.sleb128	5
	.byte		"u32LowPwrConfig2"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L514:
	.sleb128	5
	.byte		"u32LowPwrConfig3"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L515:
	.sleb128	5
	.byte		"u32LowPwrConfig4"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L516:
	.sleb128	5
	.byte		"u32LowPwrConfig5"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L517:
	.sleb128	5
	.byte		"u32LowPwrConfig6"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L518:
	.sleb128	5
	.byte		"u32LowPwrConfig7"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L519:
	.sleb128	5
	.byte		"u8NumberOfPctlRegisters"
	.byte		0
	.4byte		.L722
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L520:
	.sleb128	5
	.byte		"apPctControl"
	.byte		0
	.4byte		.L757
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L521:
	.sleb128	5
	.byte		"u32EnabledModes"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L522:
	.sleb128	5
	.byte		"u32IsrMode"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L523:
	.sleb128	5
	.byte		"u8NumberOfCoreAddrRegs"
	.byte		0
	.4byte		.L722
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L524:
	.sleb128	5
	.byte		"apCoreAddress"
	.byte		0
	.4byte		.L760
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L525:
	.sleb128	5
	.byte		"u8NumberOfCoreCtrlRegs"
	.byte		0
	.4byte		.L722
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L526:
	.sleb128	5
	.byte		"apCoreControl"
	.byte		0
	.4byte		.L763
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
	.sleb128	0
.L756:
.L662:
	.sleb128	4
	.4byte		.L746
	.uleb128	1473
	.uleb128	1
	.4byte		.L766-.L2
	.uleb128	12
.L500:
	.sleb128	5
	.byte		"u32RegisterAddr"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L501:
	.sleb128	5
	.byte		"u32RegisterMask"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L502:
	.sleb128	5
	.byte		"u32RegisterData"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L766:
.L668:
	.sleb128	4
	.4byte		.L746
	.uleb128	1473
	.uleb128	1
	.4byte		.L767-.L2
	.uleb128	8
.L498:
	.sleb128	5
	.byte		"u32RegisterAddr"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L499:
	.sleb128	5
	.byte		"u16RegisterData"
	.byte		0
	.4byte		.L768
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L767:
.L674:
	.sleb128	4
	.4byte		.L746
	.uleb128	1473
	.uleb128	1
	.4byte		.L770-.L2
	.uleb128	8
.L496:
	.sleb128	5
	.byte		"u32RegisterAddr"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	5
	.byte		"u8RegisterData"
	.byte		0
	.4byte		.L722
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L770:
.L620:
	.sleb128	4
	.4byte		.L771
	.uleb128	752
	.uleb128	1
	.4byte		.L772-.L2
	.uleb128	36
.L487:
	.sleb128	5
	.byte		"u32EnabledClkSources"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L488:
	.sleb128	5
	.byte		"u8ProgClkSwitch"
	.byte		0
	.4byte		.L722
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L489:
	.sleb128	5
	.byte		"u32AuxDividerUpdateTriggerMask"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L490:
	.sleb128	5
	.byte		"u8NoOfProgSwitchUnderMcuControl"
	.byte		0
	.4byte		.L722
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L491:
	.sleb128	5
	.byte		"apPcsClockConfig"
	.byte		0
	.4byte		.L773
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L492:
	.sleb128	5
	.byte		"u8NoOfSysClockUnderMcuControl"
	.byte		0
	.4byte		.L722
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L493:
	.sleb128	5
	.byte		"apSystemClockConfig"
	.byte		0
	.4byte		.L776
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L494:
	.sleb128	5
	.byte		"u8NoAuxClockUnderMcuControl"
	.byte		0
	.4byte		.L722
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L495:
	.sleb128	5
	.byte		"apAuxClockConfig"
	.byte		0
	.4byte		.L779
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L772:
.L610:
	.sleb128	4
	.4byte		.L771
	.uleb128	752
	.uleb128	1
	.4byte		.L782-.L2
	.uleb128	8
.L485:
	.sleb128	5
	.byte		"u32RegisterAddr"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L486:
	.sleb128	5
	.byte		"u32RegisterData"
	.byte		0
	.4byte		.L698
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L782:
.L594:
	.sleb128	4
	.4byte		.L783
	.uleb128	34
	.uleb128	14
	.4byte		.L784-.L2
	.uleb128	16
.L478:
	.sleb128	5
	.byte		"Mcu_RamSectorId"
	.byte		0
	.4byte		.L697
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L479:
	.sleb128	5
	.byte		"Mcu_pu8RamBaseAddr"
	.byte		0
	.4byte		.L785
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L480:
	.sleb128	5
	.byte		"Mcu_RamSize"
	.byte		0
	.4byte		.L788
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L481:
	.sleb128	5
	.byte		"Mcu_u8RamDefaultValue"
	.byte		0
	.4byte		.L722
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L784:
	.section	.debug_info,,n
.L714:
	.sleb128	6
	.4byte		.L695
	.uleb128	382
	.uleb128	1
	.4byte		.L789-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"MCU_CLK_NOTIF_DIS"
	.byte		0
	.sleb128	90
	.sleb128	7
	.byte		"MCU_CLK_NOTIF_EN"
	.byte		0
	.sleb128	165
	.sleb128	0
.L789:
.L754:
	.sleb128	6
	.4byte		.L746
	.uleb128	1473
	.uleb128	1
	.4byte		.L790-.L2
	.uleb128	4
	.sleb128	7
	.byte		"MCU_RESET_MODE"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"MCU_TEST_MODE"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"MCU_SAFE_MODE"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"MCU_DRUN_MODE"
	.byte		0
	.sleb128	3
	.sleb128	7
	.byte		"MCU_RUN0_MODE"
	.byte		0
	.sleb128	4
	.sleb128	7
	.byte		"MCU_RUN1_MODE"
	.byte		0
	.sleb128	5
	.sleb128	7
	.byte		"MCU_RUN2_MODE"
	.byte		0
	.sleb128	6
	.sleb128	7
	.byte		"MCU_RUN3_MODE"
	.byte		0
	.sleb128	7
	.sleb128	7
	.byte		"MCU_HALT0_MODE"
	.byte		0
	.sleb128	8
	.sleb128	7
	.byte		"MCU_STOP0_MODE"
	.byte		0
	.sleb128	10
	.sleb128	7
	.byte		"MCU_DEST_RESET_MODE"
	.byte		0
	.sleb128	15
	.sleb128	7
	.byte		"MCU_CURRENT_MODE"
	.byte		0
	.sleb128	31
	.sleb128	0
.L790:
	.section	.debug_info,,n
.L593:
	.sleb128	8
	.byte		"Mcu_RamConfigType"
	.byte		0
	.4byte		.L594
	.section	.debug_info,,n
.L592:
	.sleb128	9
	.4byte		.L593
	.section	.debug_info,,n
.L590:
	.sleb128	10
	.4byte		.L591-.L2
	.4byte		.L592
	.section	.debug_info,,n
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L591:
.L599:
	.sleb128	8
	.byte		"Mcu_ModeConfigType"
	.byte		0
	.4byte		.L600
.L598:
	.sleb128	9
	.4byte		.L599
.L596:
	.sleb128	10
	.4byte		.L597-.L2
	.4byte		.L598
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L597:
.L603:
	.sleb128	8
	.byte		"Mcu_FLASH_ClockConfigType"
	.byte		0
	.4byte		.L604
.L602:
	.sleb128	9
	.4byte		.L603
.L609:
	.sleb128	8
	.byte		"Mcu_MC_CGM_RegisterConfigType"
	.byte		0
	.4byte		.L610
.L608:
	.sleb128	9
	.4byte		.L609
.L606:
	.sleb128	10
	.4byte		.L607-.L2
	.4byte		.L608
	.sleb128	11
	.uleb128	8
	.sleb128	0
.L607:
.L612:
	.sleb128	10
	.4byte		.L613-.L2
	.4byte		.L608
	.sleb128	11
	.uleb128	2
	.sleb128	0
.L613:
.L615:
	.sleb128	10
	.4byte		.L616-.L2
	.4byte		.L608
	.sleb128	11
	.uleb128	22
	.sleb128	0
.L616:
.L619:
	.sleb128	8
	.byte		"Mcu_MC_CGM_ClockConfigType"
	.byte		0
	.4byte		.L620
.L618:
	.sleb128	9
	.4byte		.L619
.L625:
	.sleb128	8
	.byte		"Mcu_PLLDIG_RegisterConfigType"
	.byte		0
	.4byte		.L626
.L624:
	.sleb128	9
	.4byte		.L625
.L622:
	.sleb128	10
	.4byte		.L623-.L2
	.4byte		.L624
	.sleb128	11
	.uleb128	5
	.sleb128	0
.L623:
.L629:
	.sleb128	8
	.byte		"Mcu_PLLDIG_ConfigType"
	.byte		0
	.4byte		.L630
.L628:
	.sleb128	9
	.4byte		.L629
.L633:
	.sleb128	8
	.byte		"Mcu_eMios_ConfigType"
	.byte		0
	.4byte		.L634
.L632:
	.sleb128	9
	.4byte		.L633
.L637:
	.sleb128	8
	.byte		"Mcu_CMU_ConfigType"
	.byte		0
	.4byte		.L638
.L636:
	.sleb128	9
	.4byte		.L637
.L641:
	.sleb128	8
	.byte		"Mcu_XOSC_ConfigType"
	.byte		0
	.4byte		.L642
.L640:
	.sleb128	9
	.4byte		.L641
.L645:
	.sleb128	8
	.byte		"Mcu_PRAM_ClockConfigType"
	.byte		0
	.4byte		.L646
.L644:
	.sleb128	9
	.4byte		.L645
.L651:
	.sleb128	8
	.byte		"Mcu_ClockConfigType"
	.byte		0
	.4byte		.L652
.L650:
	.sleb128	9
	.4byte		.L651
.L648:
	.sleb128	10
	.4byte		.L649-.L2
	.4byte		.L650
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L649:
.L655:
	.sleb128	8
	.byte		"Mcu_MC_RGM_ConfigType"
	.byte		0
	.4byte		.L656
.L654:
	.sleb128	9
	.4byte		.L655
.L661:
	.sleb128	8
	.byte		"Mcu_MC_ME_CoreAddressConfigType"
	.byte		0
	.4byte		.L662
.L660:
	.sleb128	9
	.4byte		.L661
.L658:
	.sleb128	10
	.4byte		.L659-.L2
	.4byte		.L660
	.sleb128	11
	.uleb128	2
	.sleb128	0
.L659:
.L667:
	.sleb128	8
	.byte		"Mcu_MC_ME_CoreConfigType"
	.byte		0
	.4byte		.L668
.L666:
	.sleb128	9
	.4byte		.L667
.L664:
	.sleb128	10
	.4byte		.L665-.L2
	.4byte		.L666
	.sleb128	11
	.uleb128	2
	.sleb128	0
.L665:
.L673:
	.sleb128	8
	.byte		"Mcu_MC_ME_RegisterConfigType"
	.byte		0
	.4byte		.L674
.L672:
	.sleb128	9
	.4byte		.L673
.L670:
	.sleb128	10
	.4byte		.L671-.L2
	.4byte		.L672
	.sleb128	11
	.uleb128	47
	.sleb128	0
.L671:
.L677:
	.sleb128	8
	.byte		"Mcu_MC_ME_ConfigType"
	.byte		0
	.4byte		.L678
.L676:
	.sleb128	9
	.4byte		.L677
.L681:
	.sleb128	8
	.byte		"Mcu_FLASH_ConfigType"
	.byte		0
	.4byte		.L682
.L680:
	.sleb128	9
	.4byte		.L681
.L685:
	.sleb128	8
	.byte		"Mcu_MC_PCU_ConfigType"
	.byte		0
	.4byte		.L686
.L684:
	.sleb128	9
	.4byte		.L685
.L689:
	.sleb128	8
	.byte		"Mcu_HwIPsConfigType"
	.byte		0
	.4byte		.L690
.L688:
	.sleb128	9
	.4byte		.L689
.L693:
	.sleb128	8
	.byte		"Mcu_ConfigType"
	.byte		0
	.4byte		.L694
.L692:
	.sleb128	9
	.4byte		.L693
	.section	.debug_info,,n
.L699:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L698:
	.sleb128	8
	.byte		"uint32"
	.byte		0
	.4byte		.L699
.L697:
	.sleb128	8
	.byte		"Mcu_RamSectionType"
	.byte		0
	.4byte		.L698
.L700:
	.sleb128	8
	.byte		"Mcu_ModeType"
	.byte		0
	.4byte		.L698
.L701:
	.sleb128	8
	.byte		"Mcu_ClockType"
	.byte		0
	.4byte		.L698
.L703:
	.sleb128	10
	.4byte		.L704-.L2
	.4byte		.L592
	.section	.debug_info,,n
	.sleb128	13
	.sleb128	0
.L704:
	.section	.debug_info,,n
.L702:
	.sleb128	14
	.4byte		.L703
.L706:
	.sleb128	10
	.4byte		.L707-.L2
	.4byte		.L598
	.sleb128	13
	.sleb128	0
.L707:
.L705:
	.sleb128	14
	.4byte		.L706
.L709:
	.sleb128	10
	.4byte		.L710-.L2
	.4byte		.L650
	.sleb128	13
	.sleb128	0
.L710:
.L708:
	.sleb128	14
	.4byte		.L709
.L711:
	.sleb128	14
	.4byte		.L688
.L713:
	.sleb128	8
	.byte		"Mcu_ClockNotificationType"
	.byte		0
	.4byte		.L714
.L715:
	.sleb128	14
	.4byte		.L618
.L716:
	.sleb128	14
	.4byte		.L640
.L717:
	.sleb128	14
	.4byte		.L628
.L718:
	.sleb128	14
	.4byte		.L632
.L719:
	.sleb128	14
	.4byte		.L636
.L720:
	.sleb128	14
	.4byte		.L644
.L721:
	.sleb128	14
	.4byte		.L602
.L723:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L722:
	.sleb128	8
	.byte		"uint8"
	.byte		0
	.4byte		.L723
.L725:
	.sleb128	14
	.4byte		.L676
.L726:
	.sleb128	14
	.4byte		.L654
.L727:
	.sleb128	14
	.4byte		.L684
.L728:
	.sleb128	14
	.4byte		.L680
.L731:
	.sleb128	10
	.4byte		.L732-.L2
	.4byte		.L698
	.sleb128	11
	.uleb128	1
	.sleb128	0
.L732:
.L734:
	.sleb128	10
	.4byte		.L735-.L2
	.4byte		.L698
	.sleb128	11
	.uleb128	10
	.sleb128	0
.L735:
.L736:
	.sleb128	10
	.4byte		.L737-.L2
	.4byte		.L698
	.sleb128	11
	.uleb128	10
	.sleb128	0
.L737:
.L738:
	.sleb128	10
	.4byte		.L739-.L2
	.4byte		.L698
	.sleb128	11
	.uleb128	10
	.sleb128	0
.L739:
.L743:
	.sleb128	10
	.4byte		.L744-.L2
	.4byte		.L624
	.sleb128	13
	.sleb128	0
.L744:
.L742:
	.sleb128	14
	.4byte		.L743
.L753:
	.sleb128	8
	.byte		"Mcu_PowerModeType"
	.byte		0
	.4byte		.L754
.L755:
	.sleb128	8
	.byte		"boolean"
	.byte		0
	.4byte		.L723
.L758:
	.sleb128	10
	.4byte		.L759-.L2
	.4byte		.L672
	.sleb128	13
	.sleb128	0
.L759:
.L757:
	.sleb128	14
	.4byte		.L758
.L761:
	.sleb128	10
	.4byte		.L762-.L2
	.4byte		.L660
	.sleb128	13
	.sleb128	0
.L762:
.L760:
	.sleb128	14
	.4byte		.L761
.L764:
	.sleb128	10
	.4byte		.L765-.L2
	.4byte		.L666
	.sleb128	13
	.sleb128	0
.L765:
.L763:
	.sleb128	14
	.4byte		.L764
.L769:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L768:
	.sleb128	8
	.byte		"uint16"
	.byte		0
	.4byte		.L769
.L774:
	.sleb128	10
	.4byte		.L775-.L2
	.4byte		.L608
	.sleb128	13
	.sleb128	0
.L775:
.L773:
	.sleb128	14
	.4byte		.L774
.L777:
	.sleb128	10
	.4byte		.L778-.L2
	.4byte		.L608
	.sleb128	13
	.sleb128	0
.L778:
.L776:
	.sleb128	14
	.4byte		.L777
.L780:
	.sleb128	10
	.4byte		.L781-.L2
	.4byte		.L608
	.sleb128	13
	.sleb128	0
.L781:
.L779:
	.sleb128	14
	.4byte		.L780
.L786:
	.sleb128	10
	.4byte		.L787-.L2
	.4byte		.L722
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L787:
.L785:
	.sleb128	14
	.4byte		.L786
.L788:
	.sleb128	8
	.byte		"Mcu_RamSizeType"
	.byte		0
	.4byte		.L698
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Mcu_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Mcu_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Mcu_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Mcu_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Mcu_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Mcu_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\src\Mcu_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
