#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"eMios_Common.c"
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
# FUNC (void, MCL_CODE) eMios_StartChannel(VAR(uint8, AUTOMATIC) u8HwChannel)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\eMios_Common.c"
        .d2line         644,23
#$$ld
.L412:

#$$bf	eMios_StartChannel,interprocedural,rasave,nostackparams
	.globl		eMios_StartChannel
	.d2_cfa_start __cie
eMios_StartChannel:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8HwChannel=r3 u8HwChannel=r3
	.d2prologue_end
# {   
#     CONST(uint8, AUTOMATIC) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(u8HwChannel));
	.d2line		646
	rlwinm		r31,r3,27,29,31		# u8ModuleIdx=r31 u8HwChannel=r3
.Llo5:
	mr		r31,r31		# u8ModuleIdx=r31 u8ModuleIdx=r31
#     CONST(uint8, AUTOMATIC) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(u8HwChannel));
	.d2line		647
	rlwinm		r30,r3,0,27,31		# u8ChannelIdx=r30 u8HwChannel=r3
	mr		r30,r30		# u8ChannelIdx=r30 u8ChannelIdx=r30
#     
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_00();
	.d2line		649
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_00
#     /* enable timer channel */ 
#     /** @violates @ref eMios_Common_c_3 Cast from unsigned long to pointer*/  
#     REG_BIT_CLEAR32(EMIOS_UCDIS_ADDR32(u8ModuleIdx), (uint32)(BIT0 << u8ChannelIdx));   
	.d2line		652
.Llo2:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo3:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r31,r31,2,22,29		# u8ModuleIdx=r31 u8ModuleIdx=r31
.Llo6:
	lwzx		r3,r3,r31		# u8HwChannel=r3 u8HwChannel=r3
	lwz		r4,12(r3)		# u8HwChannel=r3
	diab.li		r0,1
	slw		r0,r0,r30		# u8ChannelIdx=r30
	andc		r0,r4,r0
	stw		r0,12(r3)		# u8HwChannel=r3
#     
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_00();
	.d2line		654
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_00
# 
#     return;
# }
	.d2line		657
	.d2epilogue_begin
.Llo4:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo7:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L413:
	.type		eMios_StartChannel,@function
	.size		eMios_StartChannel,.-eMios_StartChannel
# Number of nodes = 37

# Allocations for eMios_StartChannel
#	?a4		u8HwChannel
#	?a5		$$93
#	?a6		u8ModuleIdx
#	?a7		u8ChannelIdx
# FUNC (void, MCL_CODE) eMios_StopChannel(VAR(uint8, AUTOMATIC) u8HwChannel)
	.align		2
	.section	.text_vle
        .d2line         666,23
#$$ld
.L426:

#$$bf	eMios_StopChannel,interprocedural,rasave,nostackparams
	.globl		eMios_StopChannel
	.d2_cfa_start __cie
eMios_StopChannel:
.Llo8:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# u8HwChannel=r3 u8HwChannel=r3
	.d2prologue_end
# {   
#     
#     CONST(uint8, AUTOMATIC) u8ModuleIdx  = (uint8)(EMIOS_MODULE_INDEX_U8(u8HwChannel));
	.d2line		669
	rlwinm		r31,r3,27,29,31		# u8ModuleIdx=r31 u8HwChannel=r3
.Llo12:
	mr		r31,r31		# u8ModuleIdx=r31 u8ModuleIdx=r31
#     CONST(uint8, AUTOMATIC) u8ChannelIdx = (uint8)(EMIOS_CHANNEL_INDEX_U8(u8HwChannel));
	.d2line		670
	rlwinm		r30,r3,0,27,31		# u8ChannelIdx=r30 u8HwChannel=r3
	mr		r30,r30		# u8ChannelIdx=r30 u8ChannelIdx=r30
# 
#     SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_01();
	.d2line		672
	bl		SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_01
#     /* disable timer channel */
#     /** @violates @ref eMios_Common_c_3 Cast from unsigned long to pointer*/
#     REG_BIT_SET32(EMIOS_UCDIS_ADDR32(u8ModuleIdx), (uint32)(BIT0 << u8ChannelIdx));
	.d2line		675
.Llo9:
	lis		r3,EMIOS_BASE_ADDR32@ha		# u8HwChannel=r3
.Llo10:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l		# u8HwChannel=r3 u8HwChannel=r3
	rlwinm		r31,r31,2,22,29		# u8ModuleIdx=r31 u8ModuleIdx=r31
.Llo13:
	lwzx		r3,r3,r31		# u8HwChannel=r3 u8HwChannel=r3
	lwz		r4,12(r3)		# u8HwChannel=r3
	diab.li		r0,1
	slw		r0,r0,r30		# u8ChannelIdx=r30
	or		r0,r0,r4
	stw		r0,12(r3)		# u8HwChannel=r3
#     
#     SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_01();
	.d2line		677
	bl		SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_01
#     
#     return;
# }
	.d2line		680
	.d2epilogue_begin
.Llo11:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo14:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L427:
	.type		eMios_StopChannel,@function
	.size		eMios_StopChannel,.-eMios_StopChannel
# Number of nodes = 36

# Allocations for eMios_StopChannel
#	?a4		u8HwChannel
#	?a5		$$94
#	?a6		u8ModuleIdx
#	?a7		u8ChannelIdx

# Allocations for module
	.section	.mcal_const,,r
	.0byte		.L434
	.section	.mcal_const,,r
	.type		EMIOS_BASE_ADDR32,@object
	.size		EMIOS_BASE_ADDR32,16
	.align		2
	.globl		EMIOS_BASE_ADDR32
EMIOS_BASE_ADDR32:
	.long		-1687552
	.long		-68796416
	.long		0
	.long		0
	.section	.text_vle
#$$ld
.L5:
.L414:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\eMios_Common.c"
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
	.uleb128	7
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	8
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\src\\eMios_Common.c"
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
.L415:
	.sleb128	2
	.4byte		.L411-.L2
	.byte		"eMios_StartChannel"
	.byte		0
	.4byte		.L414
	.uleb128	644
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L412
	.4byte		.L413
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L414
	.uleb128	644
	.uleb128	23
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L416
	.4byte		.L418
	.section	.debug_info,,n
.L419:
	.sleb128	4
	.4byte		.L414
	.uleb128	646
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L420
	.4byte		.L421
.L422:
	.sleb128	4
	.4byte		.L414
	.uleb128	647
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L420
	.4byte		.L423
	.section	.debug_info,,n
	.sleb128	0
.L411:
	.section	.debug_info,,n
.L428:
	.sleb128	2
	.4byte		.L425-.L2
	.byte		"eMios_StopChannel"
	.byte		0
	.4byte		.L414
	.uleb128	666
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L426
	.4byte		.L427
	.sleb128	3
	.4byte		.L414
	.uleb128	666
	.uleb128	23
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L416
	.4byte		.L429
.L430:
	.sleb128	4
	.4byte		.L414
	.uleb128	669
	.uleb128	29
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L420
	.4byte		.L431
.L432:
	.sleb128	4
	.4byte		.L414
	.uleb128	670
	.uleb128	29
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L420
	.4byte		.L433
	.section	.debug_info,,n
	.sleb128	0
.L425:
	.section	.debug_info,,n
.L434:
	.sleb128	5
	.byte		0x1
	.4byte		.L414
	.uleb128	269
	.uleb128	26
	.byte		"EMIOS_BASE_ADDR32"
	.byte		0
	.4byte		.L435
	.sleb128	5
	.byte		0x3
	.4byte		EMIOS_BASE_ADDR32
	.section	.debug_info,,n
	.section	.debug_info,,n
.L417:
	.sleb128	6
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L416:
	.sleb128	7
	.byte		"uint8"
	.byte		0
	.4byte		.L417
	.section	.debug_info,,n
.L420:
	.sleb128	8
	.4byte		.L416
.L439:
	.sleb128	6
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L438:
	.sleb128	7
	.byte		"uint32"
	.byte		0
	.4byte		.L439
.L437:
	.sleb128	8
	.4byte		.L438
	.section	.debug_info,,n
.L435:
	.sleb128	9
	.4byte		.L436-.L2
	.4byte		.L437
	.section	.debug_info,,n
	.sleb128	10
	.uleb128	3
	.sleb128	0
.L436:
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L418:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L421:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),31
	.d2locend
.L423:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo7),30
	.d2locend
.L429:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locend
.L431:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),31
	.d2locend
.L433:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo14),30
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "eMios_StopChannel"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_01","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_01"
	.wrcm.end
	.wrcm.nelem "eMios_StartChannel"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "SchM_Enter_Mcl_MCL_EXCLUSIVE_AREA_00","SchM_Exit_Mcl_MCL_EXCLUSIVE_AREA_00"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\eMios_Common.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\eMios_Common.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\eMios_Common.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\eMios_Common.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\eMios_Common.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\eMios_Common.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Mcl\ssc\make\..\..\generator\integration_package\src\eMios_Common.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
