#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Mcl_DmaMux.c"
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
# FUNC(void, MCL_CODE) Mcl_DmaMux_Init( P2CONST(Mcl_DmaMuxConfigType, AUTOMATIC, MCL_APPL_CONST) pDmaMuxConfig)
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L403:
	.section	.invalid_TEXT,,c
#$$ld
.L399:
	.0byte		.L397
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Mcl_DmaMux.c"
        .d2line         265,22
#$$ld
.L406:

#$$bf	Mcl_DmaMux_Init,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		Mcl_DmaMux_Init
	.d2_cfa_start __cie
Mcl_DmaMux_Init:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pDmaMuxConfig=r3 pDmaMuxConfig=r3
	.d2prologue_end
# {
#     /* @brief Counter value used in loops */
#     VAR(uint8, AUTOMATIC) u8Counter;
#     /* @brief Pointer to DMA channel specific configuration */
#     P2CONST(Mcl_DmaMuxChannelConfigType, AUTOMATIC, MCL_APPL_CONST) pDmaMuxChannelConfig;
# 
#     /* Configuring channels Enable, Trigger and Source */
#     for (u8Counter = 0x0U; u8Counter < pDmaMuxConfig->NumChannels; u8Counter++)
	.d2line		273
	diab.li		r4,0		# u8Counter=r4
.L391:
.Llo3:
	rlwinm		r0,r4,0,24,31		# u8Counter=r4
	lbz		r5,0(r3)		# pDmaMuxConfig=r3
	se_cmp		r0,r5
	bc		0,0,.L390	# ge
#     {
#         pDmaMuxChannelConfig = &((*(pDmaMuxConfig->pDmaMuxChannelsConfig))[u8Counter]);
	.d2line		275
	lwz		r5,4(r3)		# pDmaMuxConfig=r3
	rlwinm		r0,r4,0,24,31		# u8Counter=r4
	e_mulli		r0,r0,3
	se_add		r0,r5
.Llo4:
	mr		r5,r0		# pDmaMuxChannelConfig=r5 pDmaMuxChannelConfig=r0
#         
#         /**
#         * @violates @ref Mcl_DMAMUX_c_REF_10 Conversions shall not be performed between a pointer to 
#         * a function and any type other than an integral type.
#         */
#         /** @violates @ref Mcl_DMAMUX_c_REF_11 MISRA 2004 Advisory Rule 11.3, A Cast should not be performed between a pointer type and an integral type */
#         REG_WRITE8(DMACHMUX_CHCONFIG((uint32)pDmaMuxChannelConfig->DmaMux_Channel, pDmaMuxChannelConfig->DmaMux_Instance), pDmaMuxChannelConfig->DmaMux_ChannelConfig);
	.d2line		282
.Llo5:
	lbz		r7,2(r5)		# pDmaMuxChannelConfig=r5
.Llo6:
	lis		r6,DMAMUX_BASE_ADDR32@ha
	e_add16i		r6,r6,DMAMUX_BASE_ADDR32@l
	lbz		r0,1(r5)		# pDmaMuxChannelConfig=r5
	rlwinm		r0,r0,2,22,29
	lwzx		r6,r6,r0
	lbz		r0,0(r5)		# pDmaMuxChannelConfig=r5
	stbux		r7,r6,r0
#         
#     }
	.d2line		284
	diab.addi		r0,r4,1		# u8Counter=r4
	se_addi		r4,1		# u8Counter=r4 u8Counter=r4
	b		.L391
.L390:
# 
# }
	.d2line		286
	.d2epilogue_begin
.Llo2:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L407:
	.type		Mcl_DmaMux_Init,@function
	.size		Mcl_DmaMux_Init,.-Mcl_DmaMux_Init
# Number of nodes = 44

# Allocations for Mcl_DmaMux_Init
#	?a4		pDmaMuxConfig
#	?a5		u8Counter
#	?a6		pDmaMuxChannelConfig

# Allocations for module
	.section	.mcal_const,,r
	.0byte		.L425
	.section	.mcal_const,,r
	.type		DMAMUX_BASE_ADDR32,@object
	.size		DMAMUX_BASE_ADDR32,16
	.align		2
	.globl		DMAMUX_BASE_ADDR32
DMAMUX_BASE_ADDR32:
	.long		-606208
	.long		-605696
	.long		-605184
	.long		-67371008
	.section	.text_vle
#$$ld
.L5:
.L432:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L426:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Mcl_DmaMux.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L400:
.L408:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Mcl_DmaMux.c"
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
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	33
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Mcl_DmaMux.c"
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
.L397:
	.4byte		.L398-.L396
.L396:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L402-.L397
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Mcl_DmaMux.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L399
	.4byte		.L400
	.4byte		.L403
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L409:
	.sleb128	2
	.4byte		.L405-.L397
	.byte		"Mcl_DmaMux_Init"
	.byte		0
	.4byte		.L408
	.uleb128	265
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L406
	.4byte		.L407
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L408
	.uleb128	265
	.uleb128	22
	.byte		"pDmaMuxConfig"
	.byte		0
	.4byte		.L410
	.4byte		.L414
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L415:
	.sleb128	4
	.4byte		.L408
	.uleb128	268
	.uleb128	27
	.byte		"u8Counter"
	.byte		0
	.4byte		.L416
	.4byte		.L418
.L419:
	.sleb128	4
	.4byte		.L408
	.uleb128	270
	.uleb128	69
	.byte		"pDmaMuxChannelConfig"
	.byte		0
	.4byte		.L420
	.4byte		.L424
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L405:
	.section	.debug_info,,n
.L425:
	.sleb128	5
	.byte		0x1
	.4byte		.L426
	.uleb128	151
	.uleb128	26
	.byte		"DMAMUX_BASE_ADDR32"
	.byte		0
	.4byte		.L427
	.sleb128	5
	.byte		0x3
	.4byte		DMAMUX_BASE_ADDR32
	.section	.debug_info,,n
	.section	.debug_info,,n
.L413:
	.sleb128	6
	.4byte		.L432
	.uleb128	34
	.uleb128	14
	.4byte		.L433-.L2
	.uleb128	8
	.section	.debug_info,,n
.L388:
	.sleb128	7
	.byte		"NumChannels"
	.byte		0
	.4byte		.L434
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L389:
	.sleb128	7
	.byte		"pDmaMuxChannelsConfig"
	.byte		0
	.4byte		.L436
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L433:
.L423:
	.sleb128	6
	.4byte		.L432
	.uleb128	34
	.uleb128	14
	.4byte		.L440-.L2
	.uleb128	3
.L385:
	.sleb128	7
	.byte		"DmaMux_Channel"
	.byte		0
	.4byte		.L434
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L386:
	.sleb128	7
	.byte		"DmaMux_Instance"
	.byte		0
	.4byte		.L441
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L387:
	.sleb128	7
	.byte		"DmaMux_ChannelConfig"
	.byte		0
	.4byte		.L434
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L440:
	.section	.debug_info,,n
.L412:
	.sleb128	8
	.byte		"Mcl_DmaMuxConfigType"
	.byte		0
	.4byte		.L413
	.section	.debug_info,,n
.L411:
	.sleb128	9
	.4byte		.L412
	.section	.debug_info,,n
.L410:
	.sleb128	10
	.4byte		.L411
	.section	.debug_info,,n
.L417:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L416:
	.sleb128	8
	.byte		"uint8"
	.byte		0
	.4byte		.L417
.L422:
	.sleb128	8
	.byte		"Mcl_DmaMuxChannelConfigType"
	.byte		0
	.4byte		.L423
.L421:
	.sleb128	9
	.4byte		.L422
.L420:
	.sleb128	10
	.4byte		.L421
.L431:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L430:
	.sleb128	8
	.byte		"uint32"
	.byte		0
	.4byte		.L431
.L429:
	.sleb128	9
	.4byte		.L430
	.section	.debug_info,,n
.L427:
	.sleb128	12
	.4byte		.L428-.L2
	.4byte		.L429
	.section	.debug_info,,n
	.sleb128	13
	.uleb128	3
	.sleb128	0
.L428:
.L435:
	.sleb128	8
	.byte		"Mcl_DmaMuxChannelType"
	.byte		0
	.4byte		.L416
.L434:
	.sleb128	9
	.4byte		.L435
.L438:
	.sleb128	12
	.4byte		.L439-.L2
	.4byte		.L421
	.section	.debug_info,,n
	.sleb128	14
	.sleb128	0
.L439:
.L437:
	.sleb128	10
	.4byte		.L438
.L436:
	.sleb128	9
	.4byte		.L437
.L442:
	.sleb128	8
	.byte		"Mcl_DmaMuxInstanceType"
	.byte		0
	.4byte		.L416
.L441:
	.sleb128	9
	.4byte		.L442
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L402:
	.sleb128	0
.L398:

	.section	.debug_loc,,n
	.align	0
.L414:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L418:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo2),4
	.d2locend
.L424:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),0
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo2),5
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Mcl_DmaMux_Init"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Mcl_DmaMux.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Mcl_DmaMux.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Mcl_DmaMux.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Mcl_DmaMux.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Mcl_DmaMux.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Mcl_DmaMux.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Mcl\ssc\make\..\..\generator\integration_package\src\Mcl_DmaMux.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
