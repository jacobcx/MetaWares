#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Arch_Intr.c"
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
# Os_IsrRegister_t Os_Platform_GetAndSetIsrPltLevel(Os_IsrRegister_t isrLevel,CONST(CoreIdType,AUTOMATIC) coreId)
	.section	.Os_TEXT,,c
	.align		2
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11360:
	.section	.Os_TEXT,,c
#$$ld
.L11356:
	.0byte		.L11354
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\src\\Os_Arch_Intr.c"
        .d2line         47,18
#$$ld
.L11363:

#$$bf	Os_Platform_GetAndSetIsrPltLevel,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,lr
	.globl		Os_Platform_GetAndSetIsrPltLevel
	.d2_cfa_start __cie
Os_Platform_GetAndSetIsrPltLevel:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# isrLevel=r3 isrLevel=r3
	mr		r7,r4		# coreId=r7 coreId=r4
	.d2prologue_end
# {
#     Os_IsrRegister_t oldLevel = (Os_IsrRegister_t) OS_GET_INTC_CPR ( coreId );
	.d2line		49
	diab.li		r5,16
	e_add2is		r5,-1020
	rlwinm		r7,r7,2,14,29		# coreId=r7 coreId=r7
.Llo3:
	se_add		r5,r7		# coreId=r7
.Llo4:
	lwzx		r4,r0,r5
.Llo6:
	mr		r4,r4		# oldLevel=r4 oldLevel=r4
#     Os_IsrLevel[coreId] = isrLevel;
	.d2line		50
	lis		r6,Os_IsrLevel@ha
	e_add16i		r6,r6,Os_IsrLevel@l
	stwx		r3,r6,r7		# isrLevel=r3
#     OS_SET_INTC_CPR ( isrLevel, coreId );
	.d2line		51
	stwx		r3,r0,r5		# isrLevel=r3
# 
#     return oldLevel;
	.d2line		53
	mr		r3,r4		# oldLevel=r3 oldLevel=r4
# }
	.d2line		54
	.d2epilogue_begin
.Llo2:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo5:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11364:
	.type		Os_Platform_GetAndSetIsrPltLevel,@function
	.size		Os_Platform_GetAndSetIsrPltLevel,.-Os_Platform_GetAndSetIsrPltLevel
# Number of nodes = 30

# Allocations for Os_Platform_GetAndSetIsrPltLevel
#	?a4		isrLevel
#	?a5		coreId
#	?a6		oldLevel
# FUNC(VAR(Os_IsrValidateType,AUTOMATIC),OS_CODE) Os_IsrValidate (P2VAR(uint32,AUTOMATIC,AUTOMATIC) isrIdPtr)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         56,49
#$$ld
.L11380:

#$$bf	Os_IsrValidate,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.globl		Os_IsrValidate
	.d2_cfa_start __cie
Os_IsrValidate:
.Llo7:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# isrIdPtr=r4 isrIdPtr=r3
	.d2prologue_end
# {
# #ifdef OS_MODULE_MEMORYPROTECTION
#     if( FALSE == Os_Platform_CheckAccessViaolationException ( isrIdPtr ) )
#     {
#         return OS_ISR_INVALID;
#     }
# 
#     if (OS_ISR_MEMORYP_CHECK(*isrIdPtr)) /*Memory protection isr */
#     {
#         return OS_ISR_VALID;
#     }
# #endif
# 
# #ifdef OS_MODULE_TIMINGPROTECTION
#     if(OS_ISR_TIMER_CHECK(*isrIdPtr))
#     {
#         CONST(Os_TimerType,AUTOMATIC)                       timerId          = OS_ISR_TIMER_GET(*isrIdPtr);
#         CONSTP2CONST(Os_TimerConfType, AUTOMATIC, OS_CONST) timerCounterConf = &Os_TimerConf[timerId];
#         if( timerCounterConf->Os_IsTPTimer == Os_true )
#         {
#             return OS_ISR_VALID;
#         }
#     }
# #endif
# 
#     if ( OS_ISR_EXCEPTION_CHECK ( *isrIdPtr ) )
	.d2line		82
	lwz		r0,0(r4)		# isrIdPtr=r4
	se_btsti		r0,17
#     {
#         return OS_ISR_VALID;
	.d2line		84
	diab.li		r0,0
	isel		r3,r3,r0,2
.L11350:
#     }
# 
#     return OS_ISR_VALID;
	.d2line		87
.Llo8:
	isel		r3,0,r3,2
.L11349:
# 
# }
	.d2line		89
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11381:
	.type		Os_IsrValidate,@function
	.size		Os_IsrValidate,.-Os_IsrValidate
# Number of nodes = 11

# Allocations for Os_IsrValidate
#	?a4		isrIdPtr

# Allocations for module
	.section	.Os_BSS,,b
	.0byte		.L11387
	.section	.Os_BSS,,b
	.type		Os_IsrLevel,@object
	.size		Os_IsrLevel,8
	.align		2
	.globl		Os_IsrLevel
Os_IsrLevel:
	.space		8
	.section	.text_vle
#$$ld
.L5:
.L11391:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\inc\\Os_Arch_Intr.h"
.L11388:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\src\\Os_Arch_Intr.c"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11357:
.L11365:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\src\\Os_Arch_Intr.c"
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
	.uleb128	73
	.uleb128	16
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\src\\Os_Arch_Intr.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11354:
	.4byte		.L11355-.L11353
.L11353:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11359-.L11354
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\ssc\\src\\Os_Arch_Intr.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11356
	.4byte		.L11357
	.4byte		.L11360
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11369:
	.sleb128	2
	.4byte		.L11362-.L11354
	.byte		"Os_Platform_GetAndSetIsrPltLevel"
	.byte		0
	.4byte		.L11365
	.uleb128	47
	.uleb128	18
	.4byte		.L11366
	.byte		0x1
	.byte		0x1
	.4byte		.L11363
	.4byte		.L11364
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11365
	.uleb128	47
	.uleb128	18
	.byte		"isrLevel"
	.byte		0
	.4byte		.L11366
	.4byte		.L11370
	.sleb128	3
	.4byte		.L11365
	.uleb128	47
	.uleb128	18
	.byte		"coreId"
	.byte		0
	.4byte		.L11371
	.4byte		.L11375
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11376:
	.sleb128	4
	.4byte		.L11365
	.uleb128	49
	.uleb128	22
	.byte		"oldLevel"
	.byte		0
	.4byte		.L11366
	.4byte		.L11377
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11362:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11384:
	.sleb128	2
	.4byte		.L11379-.L11354
	.byte		"Os_IsrValidate"
	.byte		0
	.4byte		.L11365
	.uleb128	56
	.uleb128	49
	.4byte		.L11382
	.byte		0x1
	.byte		0x1
	.4byte		.L11380
	.4byte		.L11381
	.sleb128	3
	.4byte		.L11365
	.uleb128	56
	.uleb128	49
	.byte		"isrIdPtr"
	.byte		0
	.4byte		.L11385
	.4byte		.L11386
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11379:
	.section	.debug_info,,n
.L11387:
	.sleb128	5
	.byte		0x1
	.4byte		.L11388
	.uleb128	33
	.uleb128	30
	.byte		"Os_IsrLevel"
	.byte		0
	.4byte		.L11389
	.sleb128	5
	.byte		0x3
	.4byte		Os_IsrLevel
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11383:
	.sleb128	6
	.4byte		.L11391
	.uleb128	28
	.uleb128	14
	.4byte		.L11392-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"OS_ISR_VALID"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"OS_ISR_INVALID"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"OS_ISR_SKIPP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11392:
	.section	.debug_info,,n
.L11368:
	.sleb128	8
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L11367:
	.sleb128	9
	.byte		"uint32"
	.byte		0
	.4byte		.L11368
.L11366:
	.sleb128	9
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11367
.L11374:
	.sleb128	8
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11373:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L11374
.L11372:
	.sleb128	9
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11373
	.section	.debug_info,,n
.L11371:
	.sleb128	10
	.4byte		.L11372
.L11382:
	.sleb128	9
	.byte		"Os_IsrValidateType"
	.byte		0
	.4byte		.L11383
	.section	.debug_info,,n
.L11385:
	.sleb128	11
	.4byte		.L11367
	.section	.debug_info,,n
.L11389:
	.sleb128	12
	.4byte		.L11390-.L2
	.4byte		.L11366
	.section	.debug_info,,n
	.sleb128	13
	.uleb128	1
	.sleb128	0
.L11390:
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11359:
	.sleb128	0
.L11355:

	.section	.debug_loc,,n
	.align	0
.L11370:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11375:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),7
	.d2locend
.L11377:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo5),4
	.d2locend
.L11386:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_IsrValidate"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Platform_GetAndSetIsrPltLevel"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Arch_Intr.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Arch_Intr.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Arch_Intr.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Arch_Intr.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Arch_Intr.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Arch_Intr.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\ssc\src\Os_Arch_Intr.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
