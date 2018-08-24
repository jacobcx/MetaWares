#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Icu_Siul2_Irq.c"
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
# LOCAL_INLINE FUNC(void, ICU_CODE) Icu_Siul2_ProcessInterrupt(CONST(uint8, AUTOMATIC) FirstHwChannel)
	.section	.invalid_TEXT,,c
	.align		1
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L462:
	.section	.invalid_TEXT,,c
#$$ld
.L458:
	.0byte		.L456
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_Siul2_Irq.c"
        .d2line         382,35
#$$ld
.L465:

#$$bf	Icu_Siul2_ProcessInterrupt,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Icu_Siul2_ProcessInterrupt:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo10:
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# u32RegSIUL2DIRER=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# FirstHwChannel=r3 FirstHwChannel=r3
	.d2prologue_end
# {
#     VAR(uint8,  AUTOMATIC) u8IrqChannel = FirstHwChannel;
	.d2line		384
.Llo2:
	mr		r31,r3		# u8IrqChannel=r31 u8IrqChannel=r3
#     VAR(uint32, AUTOMATIC) u32ChannelMask = ICU_SIUL2_CHANNEL_MASK_U32((uint32)FirstHwChannel);
	.d2line		385
	diab.li		r29,1
	slw		r29,r29,r31		# u8IrqChannel=r31
.Llo6:
	mr		r29,r29		# u32ChannelMask=r29 u32ChannelMask=r29
#     VAR(uint32, AUTOMATIC) u32RegIrqMask = ICU_SIUL2_IRQ_CHANNEL_GROUP_MASK_U32((uint32)FirstHwChannel);
	.d2line		386
	diab.li		r5,255		# u32RegIrqMask=r5
.Llo7:
	slw		r5,r5,r31		# u32RegIrqMask=r5 u32RegIrqMask=r5 u8IrqChannel=r31
	mr		r5,r5		# u32RegIrqMask=r5 u32RegIrqMask=r5
# 
#     /** @violates @ref Icu_SIUL2_Irq_c_3 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#     /** @violates @ref Icu_SIUL2_Irq_c_5 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     CONST(uint32, ICU_CONST) u32RegSIUL2DISR = REG_READ32(ICU_SIUL2_DISR0_ADDR32);
	.d2line		390
	diab.li		r3,-262144
.Llo3:
	lwz		r30,16(r3)		# u32RegSIUL2DIRER=r30
.Llo9:
	mr		r30,r30		# u32RegSIUL2DISR=r30 u32RegSIUL2DISR=r30
#     /** @violates @ref Icu_SIUL2_Irq_c_3 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#     /** @violates @ref Icu_SIUL2_Irq_c_5 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     CONST(uint32, ICU_CONST) u32RegSIUL2DIRER = REG_READ32(ICU_SIUL2_DIRER0_LOCKABLE_ADDR32);
	.d2line		393
	lwz		r0,24(r3)		# u32RegSIUL2DIRER=r0
	mr		r0,r0		# u32RegSIUL2DIRER=r0 u32RegSIUL2DIRER=r0
# 
#     /* Clear pending interrupt serviced */
#     /** @violates @ref Icu_SIUL2_Irq_c_3 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#     /** @violates @ref Icu_SIUL2_Irq_c_5 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     REG_WRITE32(ICU_SIUL2_DISR0_ADDR32, u32RegIrqMask & u32RegSIUL2DISR);
	.d2line		398
	and		r4,r5,r30		# u32RegIrqMask=r5 u32RegSIUL2DISR=r30
	stw		r4,16(r3)
#         
#     /* Get only IRQ4 .. IRQ15 flags that has Interrupt enable bit set*/
#     u32RegIrqMask = u32RegIrqMask & u32RegSIUL2DISR & u32RegSIUL2DIRER;
	.d2line		401
	and		r0,r0,r5		# u32RegSIUL2DIRER=r0 u32RegSIUL2DIRER=r0 u32RegIrqMask=r5
	and		r0,r0,r30		# u32RegSIUL2DIRER=r0 u32RegSIUL2DIRER=r0 u32RegSIUL2DISR=r30
.Llo11:
	mr		r30,r0		# u32RegIrqMask=r30 u32RegIrqMask=r0
.L445:
#    
#     while(0x0U != u32RegIrqMask)
	.d2line		403
.Llo4:
	se_cmpi		r30,0		# u32RegIrqMask=r30
.Llo8:
	bc		1,2,.L444	# eq
#     {
#         if (0x0U != (u32RegIrqMask & u32ChannelMask))
	.d2line		405
	and.		r0,r30,r29		# u32RegIrqMask=?a7 u32ChannelMask=?a6
	bc		1,2,.L447	# eq
#         {
#             if(Icu_Siul2_GetChInit(u8IrqChannel))
	.d2line		407
	rlwinm		r3,r31,0,24,31		# u8IrqChannel=r31
	bl		Icu_Siul2_GetChInit
	e_andi.		r3,r3,255
	bc		1,2,.L448	# eq
#             {
#                 Icu_Ipw_ReportEvents(ICU_IRQ_HW_CHANNEL((uint16)u8IrqChannel),(boolean)FALSE);
	.d2line		409
	rlwinm		r3,r31,0,24,31		# u8IrqChannel=r31
	diab.addi		r3,r3,64
	rlwinm		r3,r3,0,16,31
	diab.li		r4,0
	bl		Icu_ReportEvents
.L448:
#             }
#             /* clear the IRQ bit for current IRQ channel*/
#             u32RegIrqMask = u32RegIrqMask & (uint32)(~u32ChannelMask);
	.d2line		412
	andc		r30,r30,r29		# u32RegIrqMask=r30 u32RegIrqMask=r30 u32ChannelMask=r29
	mr		r0,r30		# u32RegIrqMask=r0 u32RegIrqMask=r30
.L447:
#         }
#         u8IrqChannel++;
	.d2line		414
	diab.addi		r3,r31,1		# u8IrqChannel=r31
	se_addi		r31,1		# u8IrqChannel=r31 u8IrqChannel=r31
#         u32ChannelMask <<= (uint32)1;
	.d2line		415
	se_slwi		r29,1		# u32ChannelMask=r29 u32ChannelMask=r29
	mr		r0,r29		# u32ChannelMask=r0 u32ChannelMask=r29
	b		.L445
.L444:
#     }
# }
	.d2line		417
	.d2epilogue_begin
.Llo5:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# u32RegSIUL2DIRER=r0
	mtspr		lr,r0		# u32RegSIUL2DIRER=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L466:
	.type		Icu_Siul2_ProcessInterrupt,@function
	.size		Icu_Siul2_ProcessInterrupt,.-Icu_Siul2_ProcessInterrupt
# Number of nodes = 76

# Allocations for Icu_Siul2_ProcessInterrupt
#	?a4		FirstHwChannel
#	?a5		u8IrqChannel
#	?a6		u32ChannelMask
#	?a7		u32RegIrqMask
#	?a8		u32RegSIUL2DISR
#	?a9		u32RegSIUL2DIRER
# ISR(SIUL2_EXT_IRQ_0_7_ISR)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         464,1
#$$ld
.L488:

#$$bf	OS_ISR_SIUL2_EXT_IRQ_0_7_ISR,interprocedural,rasave,nostackparams
	.globl		OS_ISR_SIUL2_EXT_IRQ_0_7_ISR
	.d2_cfa_start __cie
OS_ISR_SIUL2_EXT_IRQ_0_7_ISR:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     Icu_Siul2_ProcessInterrupt(ICU_SIUL2_IRQ_0);
	.d2line		466
	diab.li		r3,0
	bl		Icu_Siul2_ProcessInterrupt
#     /** @violates @ref Icu_SIUL2_Irq_c_3 Violates MISRA 2004 Rule 11.1, Cast from unsigned long to pointer.*/
#     /** @violates @ref Icu_SIUL2_Irq_c_5 Violates MISRA 2004 Rule 11.3, Cast from pointer type and integral type.*/
#     EXIT_INTERRUPT();
# }
	.d2line		470
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L489:
	.type		OS_ISR_SIUL2_EXT_IRQ_0_7_ISR,@function
	.size		OS_ISR_SIUL2_EXT_IRQ_0_7_ISR,.-OS_ISR_SIUL2_EXT_IRQ_0_7_ISR
# Number of nodes = 4

# Allocations for OS_ISR_SIUL2_EXT_IRQ_0_7_ISR

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L459:
.L467:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_Siul2_Irq.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_Siul2_Irq.c"
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
.L456:
	.4byte		.L457-.L455
.L455:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L461-.L456
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Icu\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Icu_Siul2_Irq.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L458
	.4byte		.L459
	.4byte		.L462
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L468:
	.sleb128	2
	.4byte		.L464-.L456
	.byte		"Icu_Siul2_ProcessInterrupt"
	.byte		0
	.4byte		.L467
	.uleb128	382
	.uleb128	35
	.byte		0x1
	.4byte		.L465
	.4byte		.L466
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L467
	.uleb128	382
	.uleb128	35
	.byte		"FirstHwChannel"
	.byte		0
	.4byte		.L469
	.4byte		.L472
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L473:
	.sleb128	4
	.4byte		.L467
	.uleb128	384
	.uleb128	28
	.byte		"u8IrqChannel"
	.byte		0
	.4byte		.L470
	.4byte		.L474
.L475:
	.sleb128	4
	.4byte		.L467
	.uleb128	385
	.uleb128	28
	.byte		"u32ChannelMask"
	.byte		0
	.4byte		.L476
	.4byte		.L478
.L479:
	.sleb128	4
	.4byte		.L467
	.uleb128	386
	.uleb128	28
	.byte		"u32RegIrqMask"
	.byte		0
	.4byte		.L476
	.4byte		.L480
.L481:
	.sleb128	4
	.4byte		.L467
	.uleb128	390
	.uleb128	30
	.byte		"u32RegSIUL2DISR"
	.byte		0
	.4byte		.L482
	.4byte		.L483
.L484:
	.sleb128	4
	.4byte		.L467
	.uleb128	393
	.uleb128	30
	.byte		"u32RegSIUL2DIRER"
	.byte		0
	.4byte		.L482
	.4byte		.L485
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L464:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L490:
	.sleb128	5
	.4byte		.L487-.L456
	.byte		"OS_ISR_SIUL2_EXT_IRQ_0_7_ISR"
	.byte		0
	.4byte		.L467
	.uleb128	464
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L488
	.4byte		.L489
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L487:
	.section	.debug_info,,n
.L471:
	.sleb128	6
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L470:
	.sleb128	7
	.byte		"uint8"
	.byte		0
	.4byte		.L471
	.section	.debug_info,,n
.L469:
	.sleb128	8
	.4byte		.L470
.L477:
	.sleb128	6
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L476:
	.sleb128	7
	.byte		"uint32"
	.byte		0
	.4byte		.L477
.L482:
	.sleb128	8
	.4byte		.L476
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L461:
	.sleb128	0
.L457:

	.section	.debug_loc,,n
	.align	0
.L472:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L474:
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo3),3
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),31
	.d2locend
.L478:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo5),29
	.d2locend
.L480:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo4),5
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo5),30
	.d2locend
.L483:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo4),30
	.d2locend
.L485:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "OS_ISR_SIUL2_EXT_IRQ_0_7_ISR"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Icu_Siul2_ProcessInterrupt"
	.wrcm.end
	.wrcm.nelem "Icu_Siul2_ProcessInterrupt"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Icu_ReportEvents","Icu_Siul2_GetChInit"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Icu_Siul2_Irq.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Icu_Siul2_Irq.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Icu_Siul2_Irq.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Icu_Siul2_Irq.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Icu_Siul2_Irq.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Icu_Siul2_Irq.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Icu\ssc\make\..\..\generator\integration_package\src\Icu_Siul2_Irq.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
