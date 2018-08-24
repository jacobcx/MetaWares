#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Access.c"
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
# FUNC (Os_AccessType, OS_CODE) Os_Access_Check ( CONSTP2CONST (Os_AccessStorageType, AUTOMATIC, OS_CONST)  accessStorage,
	.section	.Os_TEXT,,c
	.align		2
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11356:
	.section	.Os_TEXT,,c
#$$ld
.L11352:
	.0byte		.L11350
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_Access.c"
        .d2line         39,31
#$$ld
.L11359:

#$$bf	Os_Access_Check,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.globl		Os_Access_Check
	.d2_cfa_start __cie
Os_Access_Check:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# objectId=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# accessStorage=r3 accessStorage=r3
.Llo6:
	mr		r0,r4		# objectId=r0 objectId=r4
	.d2prologue_end
#                                                 CONST        (Os_ObjectType,        AUTOMATIC)            objectId )
# 
# {
#     /* This is an array, so subscripting is OK */
#     VAR (Os_AccessStorageType, AUTOMATIC)  abyte = accessStorage[(uint32) ((Os_AccessStorageType) objectId / OS_ACCESS_SIZE)];
	.d2line		44
	rlwinm		r4,r4,29,3,29		# objectId=r4 objectId=r4
	lwzx		r3,r4,r3		# abyte=r3 objectId=r4 accessStorage=r3
.Llo2:
	mr		r3,r3		# abyte=r3 abyte=r3
#     VAR (Os_AccessStorageType, AUTOMATIC)  abit  =
	.d2line		45
	diab.li		r4,1		# objectId=r4
.Llo3:
	rlwinm		r0,r0,0,27,31		# objectId=r0 objectId=r0
.Llo4:
	slw		r4,r4,r0		# objectId=r4 objectId=r4 objectId=r0
.Llo9:
	mr		r4,r4		# abit=r4 abit=r4
#                                         (Os_AccessStorageType) 1U << (Os_AccessStorageType) (objectId % OS_ACCESS_SIZE);
#     return ((Os_AccessStorageType)0U != ( abyte & abit)) ? Os_Access_Granted : Os_Access_Denied;
	.d2line		47
	and.		r3,r3,r4		# abyte=?a7 abit=?a8
	diab.li		r0,0		# objectId=r0
	isel		r0,r3,r0,2		# objectId=r0 abyte=r3 objectId=r0
.L11345:
.Llo7:
	diab.li		r3,1		# abyte=r3
.Llo8:
	isel		r3,r3,r0,2		# abyte=r3 abyte=r3 objectId=r0
.L11346:
# }
	.d2line		48
	.d2epilogue_begin
.Llo5:
	lwz		r0,20(r1)		# objectId=r0
	mtspr		lr,r0		# objectId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11360:
	.type		Os_Access_Check,@function
	.size		Os_Access_Check,.-Os_Access_Check
# Number of nodes = 31

# Allocations for Os_Access_Check
#	?a4		accessStorage
#	?a5		objectId
#	?a6		$$2350
#	?a7		abyte
#	?a8		abit

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L11379:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Access.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11353:
.L11361:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_Access.c"
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
	.uleb128	6
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_Access.c"
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
.L11350:
	.4byte		.L11351-.L11349
.L11349:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11355-.L11350
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\core\\Os_Access.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11352
	.4byte		.L11353
	.4byte		.L11356
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11364:
	.sleb128	2
	.4byte		.L11358-.L11350
	.byte		"Os_Access_Check"
	.byte		0
	.4byte		.L11361
	.uleb128	39
	.uleb128	31
	.4byte		.L11362
	.byte		0x1
	.byte		0x1
	.4byte		.L11359
	.4byte		.L11360
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11361
	.uleb128	39
	.uleb128	31
	.byte		"accessStorage"
	.byte		0
	.4byte		.L11365
	.4byte		.L11371
	.sleb128	3
	.4byte		.L11361
	.uleb128	39
	.uleb128	31
	.byte		"objectId"
	.byte		0
	.4byte		.L11372
	.4byte		.L11374
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11375:
	.sleb128	4
	.4byte		.L11361
	.uleb128	44
	.uleb128	44
	.byte		"abyte"
	.byte		0
	.4byte		.L11368
	.4byte		.L11376
.L11377:
	.sleb128	4
	.4byte		.L11361
	.uleb128	45
	.uleb128	44
	.byte		"abit"
	.byte		0
	.4byte		.L11368
	.4byte		.L11378
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11358:
	.section	.debug_info,,n
.L11363:
	.sleb128	5
	.4byte		.L11379
	.uleb128	32
	.uleb128	1
	.4byte		.L11380-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	6
	.byte		"Os_Access_Granted"
	.byte		0
	.sleb128	0
	.sleb128	6
	.byte		"Os_Access_Denied"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11380:
	.section	.debug_info,,n
.L11362:
	.sleb128	7
	.byte		"Os_AccessType"
	.byte		0
	.4byte		.L11363
	.section	.debug_info,,n
.L11370:
	.sleb128	8
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11369:
	.sleb128	7
	.byte		"uint32"
	.byte		0
	.4byte		.L11370
.L11368:
	.sleb128	7
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11369
	.section	.debug_info,,n
.L11367:
	.sleb128	9
	.4byte		.L11368
	.section	.debug_info,,n
.L11366:
	.sleb128	10
	.4byte		.L11367
.L11365:
	.sleb128	9
	.4byte		.L11366
.L11373:
	.sleb128	7
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11369
.L11372:
	.sleb128	9
	.4byte		.L11373
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11355:
	.sleb128	0
.L11351:

	.section	.debug_loc,,n
	.align	0
.L11371:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11374:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),0
	.d2locend
.L11376:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),3
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo5),3
	.d2locend
.L11378:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo7),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_Access_Check"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Access.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Access.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Access.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Access.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Access.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Access.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\core\Os_Access.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
