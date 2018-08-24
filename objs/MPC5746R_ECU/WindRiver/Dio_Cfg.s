#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Dio_Cfg.c"
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
	.0byte		.L390
	.section	.mcal_const_cfg,,r
	.type		Dio_aAvailablePinsForWrite,@object
	.size		Dio_aAvailablePinsForWrite,32
	.align		1
	.globl		Dio_aAvailablePinsForWrite
Dio_aAvailablePinsForWrite:
	.short		65532
	.short		49152
	.short		65532
	.short		65535
	.short		32768
	.short		65532
	.short		32639
	.short		65535
	.short		64512
	.short		65535
	.short		60926
	.short		0
	.short		0
	.short		0
	.short		0
	.short		0
	.section	.mcal_const_cfg,,r
	.type		Dio_aAvailablePinsForRead,@object
	.size		Dio_aAvailablePinsForRead,32
	.align		1
	.globl		Dio_aAvailablePinsForRead
Dio_aAvailablePinsForRead:
	.short		65532
	.short		49152
	.short		65532
	.short		65535
	.short		32768
	.short		65532
	.short		32639
	.short		65535
	.short		64512
	.short		65535
	.short		60926
	.short		0
	.short		61440
	.short		65535
	.short		65535
	.short		65535
	.section	.mcal_const_cfg,,r
	.0byte		.L401
	.section	.mcal_const_cfg,,r
	.type		DioConfig,@object
	.size		DioConfig,8
	.align		2
	.globl		DioConfig
DioConfig:
	.byte		0
	.space		3
	.long		0
	.section	.text_vle
#$$ld
.L5:
.L405:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L391:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\src\\Dio_Cfg.c"
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
	.uleb128	3
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
	.uleb128	4
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\src\\Dio_Cfg.c"
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
.L390:
	.sleb128	2
	.byte		0x1
	.4byte		.L391
	.uleb128	165
	.uleb128	37
	.byte		"Dio_aAvailablePinsForWrite"
	.byte		0
	.4byte		.L392
	.sleb128	5
	.byte		0x3
	.4byte		Dio_aAvailablePinsForWrite
	.section	.debug_info,,n
	.section	.debug_info,,n
.L398:
	.sleb128	2
	.byte		0x1
	.4byte		.L391
	.uleb128	187
	.uleb128	37
	.byte		"Dio_aAvailablePinsForRead"
	.byte		0
	.4byte		.L399
	.sleb128	5
	.byte		0x3
	.4byte		Dio_aAvailablePinsForRead
	.section	.debug_info,,n
.L401:
	.sleb128	2
	.byte		0x1
	.4byte		.L391
	.uleb128	215
	.uleb128	34
	.byte		"DioConfig"
	.byte		0
	.4byte		.L402
	.sleb128	5
	.byte		0x3
	.4byte		DioConfig
	.section	.debug_info,,n
	.section	.debug_info,,n
.L404:
	.sleb128	3
	.4byte		.L405
	.uleb128	34
	.uleb128	14
	.4byte		.L406-.L2
	.uleb128	8
	.section	.debug_info,,n
.L388:
	.sleb128	4
	.byte		"u8NumChannelGroups"
	.byte		0
	.4byte		.L407
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L389:
	.sleb128	4
	.byte		"pChannelGroupList"
	.byte		0
	.4byte		.L409
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L406:
.L412:
	.sleb128	3
	.4byte		.L405
	.uleb128	34
	.uleb128	14
	.4byte		.L413-.L2
	.uleb128	4
.L385:
	.sleb128	4
	.byte		"port"
	.byte		0
	.4byte		.L414
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L386:
	.sleb128	4
	.byte		"offset"
	.byte		0
	.4byte		.L407
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L387:
	.sleb128	4
	.byte		"mask"
	.byte		0
	.4byte		.L395
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L413:
	.section	.debug_info,,n
.L397:
	.sleb128	5
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L396:
	.sleb128	6
	.byte		"uint16"
	.byte		0
	.4byte		.L397
.L395:
	.sleb128	6
	.byte		"Dio_PortLevelType"
	.byte		0
	.4byte		.L396
	.section	.debug_info,,n
.L394:
	.sleb128	7
	.4byte		.L395
	.section	.debug_info,,n
.L392:
	.sleb128	8
	.4byte		.L393-.L2
	.4byte		.L394
	.section	.debug_info,,n
	.sleb128	9
	.uleb128	15
	.sleb128	0
.L393:
.L399:
	.sleb128	8
	.4byte		.L400-.L2
	.4byte		.L394
	.sleb128	9
	.uleb128	15
	.sleb128	0
.L400:
.L403:
	.sleb128	6
	.byte		"Dio_ConfigType"
	.byte		0
	.4byte		.L404
.L402:
	.sleb128	7
	.4byte		.L403
.L408:
	.sleb128	5
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L407:
	.sleb128	6
	.byte		"uint8"
	.byte		0
	.4byte		.L408
.L411:
	.sleb128	6
	.byte		"Dio_ChannelGroupType"
	.byte		0
	.4byte		.L412
.L410:
	.sleb128	7
	.4byte		.L411
	.section	.debug_info,,n
.L409:
	.sleb128	10
	.4byte		.L410
.L414:
	.sleb128	6
	.byte		"Dio_PortType"
	.byte		0
	.4byte		.L407
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dio_Cfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dio_Cfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dio_Cfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dio_Cfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dio_Cfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dio_Cfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\src\Dio_Cfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
