#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Lin_LINFlex_Irq.c"
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
#     ISR(Lin_Linflex_IsrError_LINFlex_3)
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L455:
	.section	.invalid_TEXT,,c
#$$ld
.L451:
	.0byte		.L449
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin_LINFlex_Irq.c"
        .d2line         1097,5
#$$ld
.L458:

#$$bf	OS_ISR_Lin_Linflex_IsrError_LINFlex_3,interprocedural,rasave,nostackparams
	.globl		OS_ISR_Lin_Linflex_IsrError_LINFlex_3
	.d2_cfa_start __cie
OS_ISR_Lin_Linflex_IsrError_LINFlex_3:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#     {
#         Lin_Linflex_ErrorInterruptHandler(LinHWCh_3);
	.d2line		1099
	diab.li		r3,3
	bl		Lin_Linflex_ErrorInterruptHandler
#         /**
#         * @violates @ref Lin_LINFlex_Irq_c_REF_4 cast from unsigned int to pointer
#         */
#         EXIT_INTERRUPT();
#     }
	.d2line		1104
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
.L459:
	.type		OS_ISR_Lin_Linflex_IsrError_LINFlex_3,@function
	.size		OS_ISR_Lin_Linflex_IsrError_LINFlex_3,.-OS_ISR_Lin_Linflex_IsrError_LINFlex_3
# Number of nodes = 4

# Allocations for OS_ISR_Lin_Linflex_IsrError_LINFlex_3
#     ISR(Lin_Linflex_IsrRx_LINFlex_3)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1120,5
#$$ld
.L464:

#$$bf	OS_ISR_Lin_Linflex_IsrRx_LINFlex_3,interprocedural,rasave,nostackparams
	.globl		OS_ISR_Lin_Linflex_IsrRx_LINFlex_3
	.d2_cfa_start __cie
OS_ISR_Lin_Linflex_IsrRx_LINFlex_3:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#     {
#         Lin_Linflex_TxRxInterruptHandler(LinHWCh_3);
	.d2line		1122
	diab.li		r3,3
	bl		Lin_Linflex_TxRxInterruptHandler
#         /**
#         * @violates @ref Lin_LINFlex_Irq_c_REF_4 cast from unsigned int to pointer
#         */
#         EXIT_INTERRUPT();
#     }
	.d2line		1127
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
.L465:
	.type		OS_ISR_Lin_Linflex_IsrRx_LINFlex_3,@function
	.size		OS_ISR_Lin_Linflex_IsrRx_LINFlex_3,.-OS_ISR_Lin_Linflex_IsrRx_LINFlex_3
# Number of nodes = 4

# Allocations for OS_ISR_Lin_Linflex_IsrRx_LINFlex_3
#     ISR(Lin_Linflex_IsrTx_LINFlex_3)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1143,5
#$$ld
.L469:

#$$bf	OS_ISR_Lin_Linflex_IsrTx_LINFlex_3,interprocedural,rasave,nostackparams
	.globl		OS_ISR_Lin_Linflex_IsrTx_LINFlex_3
	.d2_cfa_start __cie
OS_ISR_Lin_Linflex_IsrTx_LINFlex_3:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#     {
#         Lin_Linflex_TxRxInterruptHandler(LinHWCh_3);
	.d2line		1145
	diab.li		r3,3
	bl		Lin_Linflex_TxRxInterruptHandler
#         /**
#         * @violates @ref Lin_LINFlex_Irq_c_REF_4 cast from unsigned int to pointer
#         */
#         EXIT_INTERRUPT();
#     }
	.d2line		1150
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
.L470:
	.type		OS_ISR_Lin_Linflex_IsrTx_LINFlex_3,@function
	.size		OS_ISR_Lin_Linflex_IsrTx_LINFlex_3,.-OS_ISR_Lin_Linflex_IsrTx_LINFlex_3
# Number of nodes = 4

# Allocations for OS_ISR_Lin_Linflex_IsrTx_LINFlex_3

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L452:
.L460:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin_LINFlex_Irq.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin_LINFlex_Irq.c"
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
.L449:
	.4byte		.L450-.L448
.L448:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L454-.L449
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin_LINFlex_Irq.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L451
	.4byte		.L452
	.4byte		.L455
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L461:
	.sleb128	2
	.4byte		.L457-.L449
	.byte		"OS_ISR_Lin_Linflex_IsrError_LINFlex_3"
	.byte		0
	.4byte		.L460
	.uleb128	1097
	.uleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L458
	.4byte		.L459
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L457:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L466:
	.sleb128	2
	.4byte		.L463-.L449
	.byte		"OS_ISR_Lin_Linflex_IsrRx_LINFlex_3"
	.byte		0
	.4byte		.L460
	.uleb128	1120
	.uleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L464
	.4byte		.L465
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L463:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L471:
	.sleb128	2
	.4byte		.L468-.L449
	.byte		"OS_ISR_Lin_Linflex_IsrTx_LINFlex_3"
	.byte		0
	.4byte		.L460
	.uleb128	1143
	.uleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L469
	.4byte		.L470
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L468:
	.section	.debug_info,,n
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L454:
	.sleb128	0
.L450:
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "OS_ISR_Lin_Linflex_IsrTx_LINFlex_3"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Lin_Linflex_TxRxInterruptHandler"
	.wrcm.end
	.wrcm.nelem "OS_ISR_Lin_Linflex_IsrRx_LINFlex_3"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Lin_Linflex_TxRxInterruptHandler"
	.wrcm.end
	.wrcm.nelem "OS_ISR_Lin_Linflex_IsrError_LINFlex_3"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Lin_Linflex_ErrorInterruptHandler"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Lin_LINFlex_Irq.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Lin_LINFlex_Irq.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Lin_LINFlex_Irq.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Lin_LINFlex_Irq.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Lin_LINFlex_Irq.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Lin_LINFlex_Irq.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Lin\ssc\make\..\..\generator\integration_package\src\Lin_LINFlex_Irq.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
