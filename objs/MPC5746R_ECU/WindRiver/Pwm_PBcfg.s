#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Pwm_PBcfg.c"
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
	.0byte		.L417
	.section	.mcal_const_cfg,,r
	.type		Pwm_eMios_ChannelConfigPb0,@object
	.size		Pwm_eMios_ChannelConfigPb0,24
	.align		2
Pwm_eMios_ChannelConfigPb0:
	.long		1
	.long		0
	.short		16384
	.short		50000
	.byte		12
	.space		3
	.long		201328216
	.short		0
	.byte		0
	.byte		0
	.section	.mcal_const_cfg,,r
	.type		Pwm_eMios_IpConfigPb0,@object
	.size		Pwm_eMios_IpConfigPb0,8
	.align		2
Pwm_eMios_IpConfigPb0:
	.byte		1
	.space		3
	.long		Pwm_eMios_ChannelConfigPb0
	.section	.mcal_const_cfg,,r
	.type		Pwm_ChannelsPb0,@object
	.size		Pwm_ChannelsPb0,8
	.align		2
Pwm_ChannelsPb0:
	.long		1
	.long		0
	.section	.mcal_const_cfg,,r
	.type		Pwm_IpChannelConfigPb0,@object
	.size		Pwm_IpChannelConfigPb0,1
	.align		0
Pwm_IpChannelConfigPb0:
	.byte		0
	.section	.mcal_const_cfg,,r
	.0byte		.L440
	.section	.mcal_const_cfg,,r
	.type		PwmChannelConfigSet,@object
	.size		PwmChannelConfigSet,80
	.align		2
	.globl		PwmChannelConfigSet
PwmChannelConfigSet:
	.byte		1
	.space		3
	.long		Pwm_ChannelsPb0
	.long		Pwm_eMios_IpConfigPb0
	.long		Pwm_IpChannelConfigPb0
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		0
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.section	.text_vle
#$$ld
.L5:
.L476:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Pwm_Types.h"
.L467:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Pwm_Ipw_Types.h"
.L444:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Pwm\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Pwm.h"
.L418:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\src\\Pwm_PBcfg.c"
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\src\\Pwm_PBcfg.c"
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
.L417:
	.sleb128	2
	.4byte		.L418
	.uleb128	155
	.uleb128	54
	.byte		"Pwm_eMios_ChannelConfigPb0"
	.byte		0
	.4byte		.L419
	.sleb128	5
	.byte		0x3
	.4byte		Pwm_eMios_ChannelConfigPb0
	.section	.debug_info,,n
	.section	.debug_info,,n
.L424:
	.sleb128	2
	.4byte		.L418
	.uleb128	190
	.uleb128	49
	.byte		"Pwm_eMios_IpConfigPb0"
	.byte		0
	.4byte		.L425
	.sleb128	5
	.byte		0x3
	.4byte		Pwm_eMios_IpConfigPb0
	.section	.debug_info,,n
.L428:
	.sleb128	2
	.4byte		.L418
	.uleb128	200
	.uleb128	48
	.byte		"Pwm_ChannelsPb0"
	.byte		0
	.4byte		.L429
	.sleb128	5
	.byte		0x3
	.4byte		Pwm_ChannelsPb0
	.section	.debug_info,,n
.L434:
	.sleb128	2
	.4byte		.L418
	.uleb128	216
	.uleb128	50
	.byte		"Pwm_IpChannelConfigPb0"
	.byte		0
	.4byte		.L435
	.sleb128	5
	.byte		0x3
	.4byte		Pwm_IpChannelConfigPb0
	.section	.debug_info,,n
.L440:
	.sleb128	3
	.byte		0x1
	.4byte		.L418
	.uleb128	231
	.uleb128	34
	.byte		"PwmChannelConfigSet"
	.byte		0
	.4byte		.L441
	.sleb128	5
	.byte		0x3
	.4byte		PwmChannelConfigSet
	.section	.debug_info,,n
	.section	.debug_info,,n
.L443:
	.sleb128	4
	.4byte		.L444
	.uleb128	500
	.uleb128	1
	.4byte		.L445-.L2
	.uleb128	80
	.section	.debug_info,,n
.L413:
	.sleb128	5
	.byte		"nNumChannels"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L414:
	.sleb128	5
	.byte		"pPwmChannelsConfig"
	.byte		0
	.4byte		.L450
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L415:
	.sleb128	5
	.byte		"IpConfig"
	.byte		0
	.4byte		.L453
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L416:
	.sleb128	5
	.byte		"HwToLogicChannelMap"
	.byte		0
	.4byte		.L456
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L445:
.L433:
	.sleb128	4
	.4byte		.L444
	.uleb128	500
	.uleb128	1
	.4byte		.L458-.L2
	.uleb128	8
.L411:
	.sleb128	5
	.byte		"ePwmChannelClass"
	.byte		0
	.4byte		.L459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L412:
	.sleb128	5
	.byte		"pfPwmChannelNotification"
	.byte		0
	.4byte		.L462
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L458:
.L455:
	.sleb128	4
	.4byte		.L467
	.uleb128	149
	.uleb128	1
	.4byte		.L468-.L2
	.uleb128	8
.L240:
	.sleb128	5
	.byte		"peMiosIpConfig"
	.byte		0
	.4byte		.L469
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L241:
	.sleb128	5
	.byte		"pIpChannelsConfig"
	.byte		0
	.4byte		.L471
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L468:
.L439:
	.sleb128	4
	.4byte		.L467
	.uleb128	149
	.uleb128	1
	.4byte		.L474-.L2
	.uleb128	1
.L239:
	.sleb128	5
	.byte		"u8IdxChannelConfig"
	.byte		0
	.4byte		.L475
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L474:
.L427:
	.sleb128	4
	.4byte		.L476
	.uleb128	148
	.uleb128	1
	.4byte		.L477-.L2
	.uleb128	8
.L237:
	.sleb128	5
	.byte		"u8NumChannels"
	.byte		0
	.4byte		.L478
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L238:
	.sleb128	5
	.byte		"pChannelsConfig"
	.byte		0
	.4byte		.L480
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L477:
.L423:
	.sleb128	4
	.4byte		.L476
	.uleb128	148
	.uleb128	1
	.4byte		.L483-.L2
	.uleb128	24
.L228:
	.sleb128	5
	.byte		"ePwmPolarity"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L229:
	.sleb128	5
	.byte		"ePwmIdleState"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L230:
	.sleb128	5
	.byte		"u16PwmDefaultDutyCycle"
	.byte		0
	.4byte		.L487
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L231:
	.sleb128	5
	.byte		"nPwmDefaultPeriod"
	.byte		0
	.4byte		.L490
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L232:
	.sleb128	5
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L478
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L233:
	.sleb128	5
	.byte		"u32ControlValue"
	.byte		0
	.4byte		.L492
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L234:
	.sleb128	5
	.byte		"nPwmOffset"
	.byte		0
	.4byte		.L490
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L235:
	.sleb128	5
	.byte		"u8MasterMode"
	.byte		0
	.4byte		.L475
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L236:
	.sleb128	5
	.byte		"bPwmOffsetTriggerDelay"
	.byte		0
	.4byte		.L496
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
	.sleb128	0
.L483:
	.section	.debug_info,,n
.L461:
	.sleb128	6
	.4byte		.L444
	.uleb128	500
	.uleb128	1
	.4byte		.L498-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"PWM_VARIABLE_PERIOD"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"PWM_FIXED_PERIOD"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"PWM_FIXED_PERIOD_SHIFTED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L498:
.L486:
	.sleb128	6
	.4byte		.L476
	.uleb128	120
	.uleb128	1
	.4byte		.L499-.L2
	.uleb128	4
	.sleb128	7
	.byte		"PWM_LOW"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"PWM_HIGH"
	.byte		0
	.sleb128	1
	.sleb128	0
.L499:
	.section	.debug_info,,n
.L422:
	.sleb128	8
	.byte		"Pwm_eMios_ChannelConfigType"
	.byte		0
	.4byte		.L423
	.section	.debug_info,,n
.L421:
	.sleb128	9
	.4byte		.L422
	.section	.debug_info,,n
.L419:
	.sleb128	10
	.4byte		.L420-.L2
	.4byte		.L421
	.section	.debug_info,,n
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L420:
.L426:
	.sleb128	8
	.byte		"Pwm_eMios_IpConfigType"
	.byte		0
	.4byte		.L427
.L425:
	.sleb128	9
	.4byte		.L426
.L432:
	.sleb128	8
	.byte		"Pwm_ChannelConfigType"
	.byte		0
	.4byte		.L433
.L431:
	.sleb128	9
	.4byte		.L432
.L429:
	.sleb128	10
	.4byte		.L430-.L2
	.4byte		.L431
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L430:
.L438:
	.sleb128	8
	.byte		"Pwm_IpChannelConfigType"
	.byte		0
	.4byte		.L439
.L437:
	.sleb128	9
	.4byte		.L438
.L435:
	.sleb128	10
	.4byte		.L436-.L2
	.4byte		.L437
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L436:
.L442:
	.sleb128	8
	.byte		"Pwm_ConfigType"
	.byte		0
	.4byte		.L443
.L441:
	.sleb128	9
	.4byte		.L442
	.section	.debug_info,,n
.L449:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L448:
	.sleb128	8
	.byte		"uint8"
	.byte		0
	.4byte		.L449
.L447:
	.sleb128	8
	.byte		"Pwm_ChannelType"
	.byte		0
	.4byte		.L448
.L446:
	.sleb128	9
	.4byte		.L447
.L451:
	.sleb128	10
	.4byte		.L452-.L2
	.4byte		.L431
	.section	.debug_info,,n
	.sleb128	13
	.sleb128	0
.L452:
	.section	.debug_info,,n
.L450:
	.sleb128	14
	.4byte		.L451
.L454:
	.sleb128	8
	.byte		"Pwm_IpConfigType"
	.byte		0
	.4byte		.L455
.L453:
	.sleb128	9
	.4byte		.L454
.L456:
	.sleb128	10
	.4byte		.L457-.L2
	.4byte		.L446
	.sleb128	11
	.uleb128	63
	.sleb128	0
.L457:
.L460:
	.sleb128	8
	.byte		"Pwm_ChannelClassType"
	.byte		0
	.4byte		.L461
.L459:
	.sleb128	9
	.4byte		.L460
	.section	.debug_info,,n
.L465:
	.sleb128	15
	.4byte		.L466-.L2
	.byte		0x1
	.sleb128	0
.L466:
.L464:
	.sleb128	14
	.4byte		.L465
.L463:
	.sleb128	8
	.byte		"Pwm_NotifyType"
	.byte		0
	.4byte		.L464
.L462:
	.sleb128	9
	.4byte		.L463
.L470:
	.sleb128	14
	.4byte		.L425
.L469:
	.sleb128	9
	.4byte		.L470
.L472:
	.sleb128	10
	.4byte		.L473-.L2
	.4byte		.L437
	.sleb128	13
	.sleb128	0
.L473:
.L471:
	.sleb128	14
	.4byte		.L472
.L475:
	.sleb128	9
	.4byte		.L448
.L479:
	.sleb128	8
	.byte		"Pwm_eMios_ChannelType"
	.byte		0
	.4byte		.L448
.L478:
	.sleb128	9
	.4byte		.L479
.L481:
	.sleb128	10
	.4byte		.L482-.L2
	.4byte		.L421
	.sleb128	13
	.sleb128	0
.L482:
.L480:
	.sleb128	14
	.4byte		.L481
.L485:
	.sleb128	8
	.byte		"Pwm_OutputStateType"
	.byte		0
	.4byte		.L486
.L484:
	.sleb128	9
	.4byte		.L485
.L489:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L488:
	.sleb128	8
	.byte		"uint16"
	.byte		0
	.4byte		.L489
.L487:
	.sleb128	9
	.4byte		.L488
.L491:
	.sleb128	8
	.byte		"Pwm_PeriodType"
	.byte		0
	.4byte		.L488
.L490:
	.sleb128	9
	.4byte		.L491
.L495:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L494:
	.sleb128	8
	.byte		"uint32"
	.byte		0
	.4byte		.L495
.L493:
	.sleb128	8
	.byte		"Pwm_eMios_ControlType"
	.byte		0
	.4byte		.L494
.L492:
	.sleb128	9
	.4byte		.L493
.L497:
	.sleb128	8
	.byte		"boolean"
	.byte		0
	.4byte		.L449
.L496:
	.sleb128	9
	.4byte		.L497
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Pwm_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Pwm_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Pwm_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Pwm_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Pwm_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Pwm_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\src\Pwm_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
