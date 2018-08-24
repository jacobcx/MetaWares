#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Gpt_eMios_Irq.c"
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
# FUNC(void, GPT_CODE) Gpt_eMios_ProcessCommonInterrupt (VAR(uint8, AUTOMATIC) u8HwChannel)
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L395:
	.section	.invalid_TEXT,,c
#$$ld
.L391:
	.0byte		.L389
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_eMios_Irq.c"
        .d2line         241,22
#$$ld
.L398:

#$$bf	Gpt_eMios_ProcessCommonInterrupt,interprocedural,rasave,nostackparams
	.globl		Gpt_eMios_ProcessCommonInterrupt
	.d2_cfa_start __cie
Gpt_eMios_ProcessCommonInterrupt:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# u8HwChannel=r4 u8HwChannel=r3
	.d2prologue_end
# {
#     VAR(uint8, AUTOMATIC) u8ModuleIdx;   /**< @brief assigned eMios HW module  index */
#     VAR(uint8, AUTOMATIC) u8ChannelIdx;  /**< @brief assigned eMios HW channel index */
#     VAR(uint32,AUTOMATIC) u32Temp1;
#     VAR(uint32,AUTOMATIC) u32Temp2;
# 
#     u8ModuleIdx  = (uint8)EMIOS_MODULE_INDEX_U8(u8HwChannel);
	.d2line		248
	rlwinm		r31,r4,27,29,31		# u8ModuleIdx=r31 u8HwChannel=r4
.Llo7:
	mr		r31,r31		# u8ModuleIdx=r31 u8ModuleIdx=r31
#     u8ChannelIdx = (uint8)EMIOS_CHANNEL_INDEX_U8(u8HwChannel);
	.d2line		249
	rlwinm		r30,r4,0,27,31		# u8ChannelIdx=r30 u8HwChannel=r4
	mr		r30,r30		# u8ChannelIdx=r30 u8ChannelIdx=r30
# 
#     /** @violates @ref Gpt_eMios_Irq_C_REF_1 Violates MISRA 2004 Required Rule 11.1, Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_Irq_C_REF_5 Cast from unsigned long to pointer */
#     u32Temp1 = REG_READ32(EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx));
	.d2line		253
	lis		r3,EMIOS_BASE_ADDR32@ha
.Llo2:
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l
	rlwinm		r0,r31,2,22,29		# u8ModuleIdx=r31
	lwzux		r5,r3,r0
	rlwinm		r6,r30,5,19,26		# u8ChannelIdx=r30
	add		r3,r5,r6
	lwz		r5,48(r3)
.Llo12:
	mr		r5,r5		# u32Temp1=r5 u32Temp1=r5
#     /** @violates @ref Gpt_eMios_Irq_C_REF_1 Violates MISRA 2004 Required Rule 11.1, Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_Irq_C_REF_5 Cast from unsigned long to pointer */
#     u32Temp2 = REG_READ32(EMIOS_CCR_ADDR32(u8ModuleIdx, u8ChannelIdx));
	.d2line		256
.Llo13:
	lis		r3,EMIOS_BASE_ADDR32@ha
	e_add16i		r3,r3,EMIOS_BASE_ADDR32@l
	lwzx		r0,r3,r0
	se_add		r6,r0
	lwz		r3,44(r6)
.Llo14:
	mr		r3,r3		# u32Temp2=r3 u32Temp2=r3
# 
#     /* Check for spurious interrupts */
#     if ((((uint32)CSR_FLAG_MASK_U32 & u32Temp1) == (uint32)CSR_FLAG_MASK_U32)
	.d2line		259
.Llo15:
	se_btsti		r5,31
	bc		1,2,.L386	# eq
.Llo3:
	se_btsti		r3,14
	bc		1,2,.L386	# eq
#        && (((uint32)CCR_FEN_MASK_U32 & u32Temp2) == (uint32)CCR_FEN_MASK_U32))
#     {
#         /* Call GPT upper layer handler */
#         Gpt_Ipw_ProcessCommonInterrupt(u8HwChannel,(uint8)GPT_EMIOS_MODULE);
	.d2line		263
	diab.addi		r3,r4,72		# u8HwChannel=r4
	rlwinm		r3,r3,0,24,31
	bl		Gpt_ProcessCommonInterrupt
.L386:
#     }
# 
#     /* Clear interrupt flag */
#     /** @violates @ref Gpt_eMios_Irq_C_REF_1 Violates MISRA 2004 Required Rule 11.1, Cast from unsigned long to pointer */
#     /** @violates @ref Gpt_eMios_Irq_C_REF_5 Cast from unsigned long to pointer */
#     REG_WRITE32(EMIOS_CSR_ADDR32(u8ModuleIdx, u8ChannelIdx), CSR_FLAG_MASK_U32);
	.d2line		269
.Llo4:
	diab.li		r3,1
	lis		r4,EMIOS_BASE_ADDR32@ha		# u8HwChannel=r4
.Llo5:
	e_add16i		r4,r4,EMIOS_BASE_ADDR32@l		# u8HwChannel=r4 u8HwChannel=r4
.Llo8:
	rlwinm		r31,r31,2,22,29		# u8ModuleIdx=r31 u8ModuleIdx=r31
.Llo9:
	lwzx		r4,r4,r31		# u8HwChannel=r4 u8HwChannel=r4
.Llo10:
	rlwinm		r30,r30,5,19,26		# u8ChannelIdx=r30 u8ChannelIdx=r30
	se_add		r4,r30		# u8HwChannel=r4 u8HwChannel=r4 u8ChannelIdx=r30
	stw		r3,48(r4)		# u8HwChannel=r4
# }
	.d2line		270
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo11:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo6:
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L399:
	.type		Gpt_eMios_ProcessCommonInterrupt,@function
	.size		Gpt_eMios_ProcessCommonInterrupt,.-Gpt_eMios_ProcessCommonInterrupt
# Number of nodes = 87

# Allocations for Gpt_eMios_ProcessCommonInterrupt
#	?a4		u8HwChannel
#	?a5		u8ModuleIdx
#	?a6		u8ChannelIdx
#	?a7		u32Temp1
#	?a8		u32Temp2

# Allocations for module
	.section	.text_vle
	.0byte		.L415
	.section	.text_vle
#$$ld
.L5:
.L416:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Mcl\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Reg_eSys_eMios.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L392:
.L400:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_eMios_Irq.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_eMios_Irq.c"
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
.L389:
	.4byte		.L390-.L388
.L388:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L394-.L389
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Gpt\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Gpt_eMios_Irq.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L391
	.4byte		.L392
	.4byte		.L395
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L401:
	.sleb128	2
	.4byte		.L397-.L389
	.byte		"Gpt_eMios_ProcessCommonInterrupt"
	.byte		0
	.4byte		.L400
	.uleb128	241
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L398
	.4byte		.L399
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L400
	.uleb128	241
	.uleb128	22
	.byte		"u8HwChannel"
	.byte		0
	.4byte		.L402
	.4byte		.L404
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L405:
	.sleb128	4
	.4byte		.L400
	.uleb128	243
	.uleb128	27
	.byte		"u8ModuleIdx"
	.byte		0
	.4byte		.L402
	.4byte		.L406
.L407:
	.sleb128	4
	.4byte		.L400
	.uleb128	244
	.uleb128	27
	.byte		"u8ChannelIdx"
	.byte		0
	.4byte		.L402
	.4byte		.L408
.L409:
	.sleb128	4
	.4byte		.L400
	.uleb128	245
	.uleb128	27
	.byte		"u32Temp1"
	.byte		0
	.4byte		.L410
	.4byte		.L412
.L413:
	.sleb128	4
	.4byte		.L400
	.uleb128	246
	.uleb128	27
	.byte		"u32Temp2"
	.byte		0
	.4byte		.L410
	.4byte		.L414
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L397:
	.section	.debug_info,,n
.L415:
	.sleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L416
	.uleb128	134
	.uleb128	33
	.byte		"EMIOS_BASE_ADDR32"
	.byte		0
	.4byte		.L417
	.section	.debug_info,,n
	.section	.debug_info,,n
.L403:
	.sleb128	6
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L402:
	.sleb128	7
	.byte		"uint8"
	.byte		0
	.4byte		.L403
.L411:
	.sleb128	6
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L410:
	.sleb128	7
	.byte		"uint32"
	.byte		0
	.4byte		.L411
	.section	.debug_info,,n
.L419:
	.sleb128	8
	.4byte		.L410
	.section	.debug_info,,n
.L417:
	.sleb128	9
	.4byte		.L418-.L2
	.4byte		.L419
	.section	.debug_info,,n
	.sleb128	10
	.sleb128	0
.L418:
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L394:
	.sleb128	0
.L390:

	.section	.debug_loc,,n
	.align	0
.L404:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),4
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),4
	.d2locend
.L406:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo4),31
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),31
	.d2locend
.L408:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo4),30
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),30
	.d2locend
.L412:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),5
	.d2locend
.L414:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Gpt_eMios_ProcessCommonInterrupt"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Gpt_ProcessCommonInterrupt"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Gpt_eMios_Irq.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Gpt_eMios_Irq.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Gpt_eMios_Irq.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Gpt_eMios_Irq.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Gpt_eMios_Irq.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Gpt_eMios_Irq.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Gpt\ssc\make\..\..\generator\integration_package\src\Gpt_eMios_Irq.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
