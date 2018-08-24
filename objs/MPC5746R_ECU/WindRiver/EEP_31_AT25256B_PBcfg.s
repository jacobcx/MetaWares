#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"EEP_31_AT25256B_PBcfg.c"
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
	.section	.text_vle
	.0byte		.L129
	.section	.text_vle
	.type		Eep_31_AT25256B_PBtoPCHashValue,@object
	.size		Eep_31_AT25256B_PBtoPCHashValue,4
	.align		2
Eep_31_AT25256B_PBtoPCHashValue:
	.long		-2134304290
	.section	.text_vle
	.type		Eep_31_AT25256B_PBtoLTHashValue,@object
	.size		Eep_31_AT25256B_PBtoLTHashValue,4
	.align		2
Eep_31_AT25256B_PBtoLTHashValue:
	.long		163342455
	.section	.text_vle
	.type		Eep_DemEventidList,@object
	.size		Eep_DemEventidList,8
	.align		1
Eep_DemEventidList:
	.short		1
	.short		1
	.short		1
	.short		1
	.section	.text_vle
	.type		EepInit_Config,@object
	.size		EepInit_Config,48
	.align		2
	.globl		EepInit_Config
EepInit_Config:
	.long		Ea_JobEndNotification
	.long		Ea_JobErrorNotification
	.short		0
	.space		2
	.long		0
	.short		0
	.short		0
	.short		64
	.short		64
	.short		32768
	.space		2
	.long		Eep_DemEventidList
	.short		100
	.short		100
	.short		100
	.space		2
	.long		Eep_31_AT25256B_PBtoPCHashValue
	.long		Eep_31_AT25256B_PBtoLTHashValue
	.section	.text_vle
#$$ld
.L5:
.L143:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\MemIf\\ssc\\make\\..\\inc\\MemIf_Types.h"
.L130:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\EEP_31_AT25256B_PBcfg.c"
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
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
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
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	8
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
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
	.uleb128	10
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\EEP_31_AT25256B_PBcfg.c"
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
.L129:
	.sleb128	2
	.4byte		.L130
	.uleb128	38
	.uleb128	46
	.byte		"Eep_31_AT25256B_PBtoPCHashValue"
	.byte		0
	.4byte		.L131
	.sleb128	5
	.byte		0x3
	.4byte		Eep_31_AT25256B_PBtoPCHashValue
	.section	.debug_info,,n
	.section	.debug_info,,n
.L134:
	.sleb128	2
	.4byte		.L130
	.uleb128	41
	.uleb128	46
	.byte		"Eep_31_AT25256B_PBtoLTHashValue"
	.byte		0
	.4byte		.L131
	.sleb128	5
	.byte		0x3
	.4byte		Eep_31_AT25256B_PBtoLTHashValue
	.section	.debug_info,,n
.L135:
	.sleb128	2
	.4byte		.L130
	.uleb128	51
	.uleb128	56
	.byte		"Eep_DemEventidList"
	.byte		0
	.4byte		.L136
	.sleb128	5
	.byte		0x3
	.4byte		Eep_DemEventidList
	.section	.debug_info,,n
.L139:
	.sleb128	3
	.byte		0x1
	.4byte		.L130
	.uleb128	60
	.uleb128	46
	.byte		"EepInit_Config"
	.byte		0
	.4byte		.L140
	.sleb128	5
	.byte		0x3
	.4byte		EepInit_Config
	.section	.debug_info,,n
.L142:
	.sleb128	4
	.4byte		.L143
	.uleb128	133
	.uleb128	14
	.4byte		.L144-.L2
	.uleb128	48
	.section	.debug_info,,n
.L114:
	.sleb128	5
	.byte		"JobEndNotification"
	.byte		0
	.4byte		.L145
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L115:
	.sleb128	5
	.byte		"JobErrorNotification"
	.byte		0
	.4byte		.L149
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L116:
	.sleb128	5
	.byte		"BaseAddress"
	.byte		0
	.4byte		.L153
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L117:
	.sleb128	5
	.byte		"DefaultMode"
	.byte		0
	.4byte		.L156
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L118:
	.sleb128	5
	.byte		"FastReadBlockSize"
	.byte		0
	.4byte		.L158
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L119:
	.sleb128	5
	.byte		"FastWriteBlockSize"
	.byte		0
	.4byte		.L158
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L120:
	.sleb128	5
	.byte		"NormalReadBlockSize"
	.byte		0
	.4byte		.L158
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L121:
	.sleb128	5
	.byte		"NormalWriteBlockSize"
	.byte		0
	.4byte		.L158
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L122:
	.sleb128	5
	.byte		"EepSize"
	.byte		0
	.4byte		.L153
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L123:
	.sleb128	5
	.byte		"Eep_DemConfigPtr"
	.byte		0
	.4byte		.L159
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L124:
	.sleb128	5
	.byte		"EepWriteTimeTicks"
	.byte		0
	.4byte		.L154
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L125:
	.sleb128	5
	.byte		"EepReadTimeTicks"
	.byte		0
	.4byte		.L154
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L126:
	.sleb128	5
	.byte		"EepEraseTimeTicks"
	.byte		0
	.4byte		.L154
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L127:
	.sleb128	5
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L161
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L128:
	.sleb128	5
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L161
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L144:
	.section	.debug_info,,n
.L138:
	.sleb128	6
	.4byte		.L143
	.uleb128	133
	.uleb128	14
	.4byte		.L163-.L2
	.byte		"Eep_DemConfigType_Tag"
	.byte		0
	.uleb128	8
.L110:
	.sleb128	5
	.byte		"dem_event_compare_failed"
	.byte		0
	.4byte		.L164
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L111:
	.sleb128	5
	.byte		"dem_event_write_failed"
	.byte		0
	.4byte		.L164
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L112:
	.sleb128	5
	.byte		"dem_event_read_failed"
	.byte		0
	.4byte		.L164
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L113:
	.sleb128	5
	.byte		"dem_event_erase_failed"
	.byte		0
	.4byte		.L164
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L163:
	.section	.debug_info,,n
.L157:
	.sleb128	7
	.4byte		.L143
	.uleb128	133
	.uleb128	14
	.4byte		.L165-.L2
	.byte		"MemIf_ModeType_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	8
	.byte		"MEMIF_MODE_SLOW"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"MEMIF_MODE_FAST"
	.byte		0
	.sleb128	1
	.sleb128	0
.L165:
	.section	.debug_info,,n
.L133:
	.sleb128	9
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L132:
	.sleb128	10
	.byte		"uint32"
	.byte		0
	.4byte		.L133
	.section	.debug_info,,n
.L131:
	.sleb128	11
	.4byte		.L132
.L137:
	.sleb128	10
	.byte		"Eep_31_AT25256B_DemConfigType"
	.byte		0
	.4byte		.L138
.L136:
	.sleb128	11
	.4byte		.L137
.L141:
	.sleb128	10
	.byte		"Eep_31_AT25256B_ConfigType"
	.byte		0
	.4byte		.L142
.L140:
	.sleb128	11
	.4byte		.L141
	.section	.debug_info,,n
.L147:
	.sleb128	12
	.4byte		.L148-.L2
	.byte		0x1
	.sleb128	0
.L148:
	.section	.debug_info,,n
.L146:
	.sleb128	13
	.4byte		.L147
.L145:
	.sleb128	10
	.byte		"Eep_JobEndNotificationPtrType"
	.byte		0
	.4byte		.L146
.L151:
	.sleb128	12
	.4byte		.L152-.L2
	.byte		0x1
	.sleb128	0
.L152:
.L150:
	.sleb128	13
	.4byte		.L151
.L149:
	.sleb128	10
	.byte		"Eep_JobErrorNotificationPtrType"
	.byte		0
	.4byte		.L150
.L155:
	.sleb128	9
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L154:
	.sleb128	10
	.byte		"uint16"
	.byte		0
	.4byte		.L155
.L153:
	.sleb128	10
	.byte		"Eep_31_AT25256B_AddressType"
	.byte		0
	.4byte		.L154
.L156:
	.sleb128	10
	.byte		"MemIf_ModeType"
	.byte		0
	.4byte		.L157
.L158:
	.sleb128	10
	.byte		"Eep_31_AT25256B_LengthType"
	.byte		0
	.4byte		.L154
.L160:
	.sleb128	13
	.4byte		.L136
.L159:
	.sleb128	11
	.4byte		.L160
.L162:
	.sleb128	13
	.4byte		.L131
.L161:
	.sleb128	11
	.4byte		.L162
.L164:
	.sleb128	10
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L154
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\EEP_31_AT25256B_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\EEP_31_AT25256B_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
