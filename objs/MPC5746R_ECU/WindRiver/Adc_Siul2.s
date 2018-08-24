#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Adc_Siul2.c"
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
# FUNC (void, ADC_CODE) Adc_Siul2_EnableHwTrigger
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L526:
	.section	.invalid_TEXT,,c
#$$ld
.L522:
	.0byte		.L520
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Siul2.c"
        .d2line         341,23
#$$ld
.L529:

#$$bf	Adc_Siul2_EnableHwTrigger,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		Adc_Siul2_EnableHwTrigger
	.d2_cfa_start __cie
Adc_Siul2_EnableHwTrigger:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8Unit=r3 u8Unit=r3
	mr		r4,r4		# u16TrigNo=r4 u16TrigNo=r4
	.d2prologue_end
# (
#     CONST(uint8, AUTOMATIC) u8Unit,
#     CONST(uint16, AUTOMATIC) u16TrigNo
# )
# {
#     /** @violates @ref Adc_Siul2_c_REF_3 cast from unsigned int to pointer. */
#     /** @violates @ref Adc_Siul2_c_REF_8 A cast should not be performed between a pointer type and an integral type. */
#     REG_WRITE32(SIUL2_MSCR_INP_ADDR32(Adc_Siul2MsrcRegs[u8Unit]), (uint32)Adc_Siul2SSSValues[u16TrigNo]);
	.d2line		349
	lis		r5,Adc_Siul2SSSValues@ha
	e_add16i		r5,r5,Adc_Siul2SSSValues@l
	rlwinm		r4,r4,0,16,31		# u16TrigNo=r4 u16TrigNo=r4
	lbzx		r4,r5,r4		# u16TrigNo=r4
	lis		r5,Adc_Siul2MsrcRegs@ha
	e_add16i		r5,r5,Adc_Siul2MsrcRegs@l
	rlwinm		r3,r3,1,23,30		# u8Unit=r3 u8Unit=r3
	lhzx		r3,r5,r3		# u8Unit=r3
	rlwinm		r3,r3,2,14,29		# u8Unit=r3 u8Unit=r3
.Llo2:
	diab.li		r5,-261568
	stwx		r4,r5,r3		# u16TrigNo=r4
# }
	.d2line		350
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo3:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L530:
	.type		Adc_Siul2_EnableHwTrigger,@function
	.size		Adc_Siul2_EnableHwTrigger,.-Adc_Siul2_EnableHwTrigger
# Number of nodes = 22

# Allocations for Adc_Siul2_EnableHwTrigger
#	?a4		u8Unit
#	?a5		u16TrigNo
# FUNC (void, ADC_CODE) Adc_Siul2_DisableHwTrigger
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         361,23
#$$ld
.L543:

#$$bf	Adc_Siul2_DisableHwTrigger,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Adc_Siul2_DisableHwTrigger
	.d2_cfa_start __cie
Adc_Siul2_DisableHwTrigger:
.Llo4:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8Unit=r3 u8Unit=r3
	.d2prologue_end
# (
#     CONST(uint8, AUTOMATIC) u8Unit
# )
# {
#     /** @violates @ref Adc_Siul2_c_REF_3 cast from unsigned int to pointer. */
#     /** @violates @ref Adc_Siul2_c_REF_8 A cast should not be performed between a pointer type and an integral type. */
#     REG_BIT_CLEAR32(SIUL2_MSCR_INP_ADDR32(Adc_Siul2MsrcRegs[u8Unit]), SIUL2_MSCR_SSS_U32);
	.d2line		368
	lis		r4,Adc_Siul2MsrcRegs@ha
	e_add16i		r4,r4,Adc_Siul2MsrcRegs@l
	rlwinm		r3,r3,1,23,30		# u8Unit=r3 u8Unit=r3
.Llo5:
	lhzx		r4,r4,r3
	rlwinm		r4,r4,2,14,29
	diab.li		r3,-261568		# u8Unit=r3
.Llo6:
	se_add		r4,r3		# u8Unit=r3
	lwz		r3,0(r4)		# u8Unit=r3
	rlwinm		r3,r3,0,0,27		# u8Unit=r3 u8Unit=r3
	stw		r3,0(r4)		# u8Unit=r3
# }
	.d2line		369
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo7:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L544:
	.type		Adc_Siul2_DisableHwTrigger,@function
	.size		Adc_Siul2_DisableHwTrigger,.-Adc_Siul2_DisableHwTrigger
# Number of nodes = 16

# Allocations for Adc_Siul2_DisableHwTrigger
#	?a4		u8Unit
#	?a5		$$127

# Allocations for module
	.section	.mcal_const,,r
	.0byte		.L547
	.section	.mcal_const,,r
	.type		Adc_Siul2MsrcRegs,@object
	.size		Adc_Siul2MsrcRegs,8
	.align		1
Adc_Siul2MsrcRegs:
	.short		992
	.short		993
	.short		994
	.short		995
	.section	.mcal_const,,r
	.0byte		.L551
	.section	.mcal_const,,r
	.type		Adc_Siul2SSSValues,@object
	.size		Adc_Siul2SSSValues,16
	.align		2
Adc_Siul2SSSValues:
	.byte		1
	.byte		2
	.byte		3
	.byte		4
	.byte		5
	.byte		6
	.byte		7
	.byte		8
	.byte		9
	.byte		10
	.byte		11
	.byte		12
	.byte		13
	.byte		14
	.byte		15
	.byte		16
	.section	.text_vle
#$$ld
.L5:
.L548:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Siul2.c"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L523:
.L531:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Siul2.c"
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
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	5
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
	.uleb128	6
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	8
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Siul2.c"
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
.L520:
	.4byte		.L521-.L519
.L519:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L525-.L520
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Adc\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Adc_Siul2.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L522
	.4byte		.L523
	.4byte		.L526
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L532:
	.sleb128	2
	.4byte		.L528-.L520
	.byte		"Adc_Siul2_EnableHwTrigger"
	.byte		0
	.4byte		.L531
	.uleb128	341
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L529
	.4byte		.L530
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L531
	.uleb128	341
	.uleb128	23
	.byte		"u8Unit"
	.byte		0
	.4byte		.L533
	.4byte		.L536
	.sleb128	3
	.4byte		.L531
	.uleb128	341
	.uleb128	23
	.byte		"u16TrigNo"
	.byte		0
	.4byte		.L537
	.4byte		.L540
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L528:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L545:
	.sleb128	2
	.4byte		.L542-.L520
	.byte		"Adc_Siul2_DisableHwTrigger"
	.byte		0
	.4byte		.L531
	.uleb128	361
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L543
	.4byte		.L544
	.sleb128	3
	.4byte		.L531
	.uleb128	361
	.uleb128	23
	.byte		"u8Unit"
	.byte		0
	.4byte		.L533
	.4byte		.L546
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L542:
	.section	.debug_info,,n
.L547:
	.sleb128	4
	.4byte		.L548
	.uleb128	217
	.uleb128	33
	.byte		"Adc_Siul2MsrcRegs"
	.byte		0
	.4byte		.L549
	.sleb128	5
	.byte		0x3
	.4byte		Adc_Siul2MsrcRegs
	.section	.debug_info,,n
	.section	.debug_info,,n
.L551:
	.sleb128	4
	.4byte		.L548
	.uleb128	249
	.uleb128	32
	.byte		"Adc_Siul2SSSValues"
	.byte		0
	.4byte		.L552
	.sleb128	5
	.byte		0x3
	.4byte		Adc_Siul2SSSValues
	.section	.debug_info,,n
	.section	.debug_info,,n
.L535:
	.sleb128	5
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L534:
	.sleb128	6
	.byte		"uint8"
	.byte		0
	.4byte		.L535
	.section	.debug_info,,n
.L533:
	.sleb128	7
	.4byte		.L534
.L539:
	.sleb128	5
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L538:
	.sleb128	6
	.byte		"uint16"
	.byte		0
	.4byte		.L539
.L537:
	.sleb128	7
	.4byte		.L538
	.section	.debug_info,,n
.L549:
	.sleb128	8
	.4byte		.L550-.L2
	.4byte		.L537
	.section	.debug_info,,n
	.sleb128	9
	.uleb128	3
	.sleb128	0
.L550:
.L552:
	.sleb128	8
	.4byte		.L553-.L2
	.4byte		.L533
	.sleb128	9
	.uleb128	15
	.sleb128	0
.L553:
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L525:
	.sleb128	0
.L521:

	.section	.debug_loc,,n
	.align	0
.L536:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L540:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locend
.L546:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),3
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Adc_Siul2_DisableHwTrigger"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Adc_Siul2_EnableHwTrigger"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Adc_Siul2.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Adc_Siul2.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Adc_Siul2.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Adc_Siul2.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Adc_Siul2.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Adc_Siul2.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Adc\ssc\make\..\..\generator\integration_package\src\Adc_Siul2.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
