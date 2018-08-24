#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Dem_PBcfg.c"
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
	.0byte		.L217
	.section	.text_vle
	.type		PBtoPCHashValue,@object
	.size		PBtoPCHashValue,4
	.align		2
PBtoPCHashValue:
	.long		837593670
	.section	.text_vle
	.type		PBtoLTHashValue,@object
	.size		PBtoLTHashValue,4
	.align		2
PBtoLTHashValue:
	.long		-1383923179
	.section	.text_vle
	.type		CommonFreezeFrameData,@object
	.size		CommonFreezeFrameData,2
	.align		1
CommonFreezeFrameData:
	.short		65535
	.section	.text_vle
	.type		CommonFreezeFrameDataDevA,@object
	.size		CommonFreezeFrameDataDevA,2
	.align		1
CommonFreezeFrameDataDevA:
	.short		65535
	.section	.text_vle
	.type		DTCAttributes_AgingAllowed,@object
	.size		DTCAttributes_AgingAllowed,1
	.align		2
DTCAttributes_AgingAllowed:
	.byte		1
	.section	.text_vle
	.type		DTCAttributes_ImmediateNvStorage,@object
	.size		DTCAttributes_ImmediateNvStorage,1
	.align		2
DTCAttributes_ImmediateNvStorage:
	.byte		0
	.section	.text_vle
	.type		DTCAttributes_InstantAging,@object
	.size		DTCAttributes_InstantAging,1
	.align		2
DTCAttributes_InstantAging:
	.byte		0
	.section	.text_vle
	.type		DTCAttributes_AgingCycle,@object
	.size		DTCAttributes_AgingCycle,1
	.align		2
DTCAttributes_AgingCycle:
	.byte		0
	.section	.text_vle
	.type		DTCAttributes_AgingThreshold,@object
	.size		DTCAttributes_AgingThreshold,1
	.align		2
DTCAttributes_AgingThreshold:
	.byte		100
	.section	.text_vle
	.type		DTCAttributes_MemoryDest,@object
	.size		DTCAttributes_MemoryDest,1
	.align		2
DTCAttributes_MemoryDest:
	.byte		1
	.section	.text_vle
	.type		DTCAttributes_Priority,@object
	.size		DTCAttributes_Priority,1
	.align		2
DTCAttributes_Priority:
	.byte		1
	.section	.text_vle
	.type		DTCAttributes_Significance,@object
	.size		DTCAttributes_Significance,1
	.align		2
DTCAttributes_Significance:
	.byte		0
	.section	.text_vle
	.type		DTCAttributes_FFRecNum,@object
	.size		DTCAttributes_FFRecNum,1
	.align		2
DTCAttributes_FFRecNum:
	.byte		255
	.section	.text_vle
	.type		DTCAttributes_DevFFARecNum,@object
	.size		DTCAttributes_DevFFARecNum,1
	.align		2
DTCAttributes_DevFFARecNum:
	.byte		255
	.section	.text_vle
	.type		DTCAttributes_DevFFBRecNum,@object
	.size		DTCAttributes_DevFFBRecNum,1
	.align		2
DTCAttributes_DevFFBRecNum:
	.byte		255
	.section	.text_vle
	.type		DTCAttributes_ED,@object
	.size		DTCAttributes_ED,1
	.align		2
DTCAttributes_ED:
	.byte		255
	.section	.text_vle
	.type		Dtcs_DTCAttributes,@object
	.size		Dtcs_DTCAttributes,2
	.align		2
Dtcs_DTCAttributes:
	.byte		0
	.byte		0
	.section	.text_vle
	.type		Dtcs_FunctionalUnit,@object
	.size		Dtcs_FunctionalUnit,2
	.align		2
Dtcs_FunctionalUnit:
	.byte		0
	.byte		0
	.section	.text_vle
	.type		Dtcs_Severity,@object
	.size		Dtcs_Severity,2
	.align		2
Dtcs_Severity:
	.byte		0
	.byte		0
	.section	.text_vle
	.type		EventAttributes_ConfirmedThreshold,@object
	.size		EventAttributes_ConfirmedThreshold,1
	.align		2
EventAttributes_ConfirmedThreshold:
	.byte		0
	.section	.text_vle
	.type		EventAttributes_EnableCondGroup,@object
	.size		EventAttributes_EnableCondGroup,1
	.align		2
EventAttributes_EnableCondGroup:
	.byte		255
	.section	.text_vle
	.type		EventAttributes_StorageCondGroup,@object
	.size		EventAttributes_StorageCondGroup,1
	.align		2
EventAttributes_StorageCondGroup:
	.byte		255
	.section	.text_vle
	.type		EventAttributes_OperationCycle,@object
	.size		EventAttributes_OperationCycle,1
	.align		2
EventAttributes_OperationCycle:
	.byte		0
	.section	.text_vle
	.type		Events_EventAvailable,@object
	.size		Events_EventAvailable,1
	.align		2
Events_EventAvailable:
	.byte		15
	.section	.text_vle
	.type		Events_DebounceData,@object
	.size		Events_DebounceData,4
	.align		2
Events_DebounceData:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.section	.text_vle
	.type		Events_EventAttributes,@object
	.size		Events_EventAttributes,4
	.align		2
Events_EventAttributes:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.section	.text_vle
	.type		Events_IndicatorAttributes,@object
	.size		Events_IndicatorAttributes,4
	.align		2
Events_IndicatorAttributes:
	.byte		255
	.byte		255
	.byte		255
	.byte		255
	.section	.text_vle
	.type		Dtcs_ObdDtc,@object
	.size		Dtcs_ObdDtc,4
	.align		1
Dtcs_ObdDtc:
	.short		0
	.short		0
	.section	.text_vle
	.type		Dtcs_FreezeFrame,@object
	.size		Dtcs_FreezeFrame,4
	.align		1
Dtcs_FreezeFrame:
	.short		65535
	.short		65535
	.section	.text_vle
	.type		Dtcs_DevFreezeFrameA,@object
	.size		Dtcs_DevFreezeFrameA,4
	.align		1
Dtcs_DevFreezeFrameA:
	.short		65535
	.short		65535
	.section	.text_vle
	.type		Dtcs_DevFreezeFrameB,@object
	.size		Dtcs_DevFreezeFrameB,4
	.align		1
Dtcs_DevFreezeFrameB:
	.short		65535
	.short		65535
	.section	.text_vle
	.type		Dtcs_UdsDtc,@object
	.size		Dtcs_UdsDtc,8
	.align		2
Dtcs_UdsDtc:
	.long		22938
	.long		22940
	.section	.text_vle
	.type		DbCounter,@object
	.size		DbCounter,16
	.align		1
DbCounter:
	.short		1
	.short		-1
	.short		127
	.short		-128
	.short		127
	.short		0
	.short		0
	.byte		0
	.byte		0
	.section	.text_vle
	.type		IntDtcIndex,@object
	.size		IntDtcIndex,8
	.align		1
IntDtcIndex:
	.short		65535
	.short		65535
	.short		0
	.short		1
	.section	.text_vle
	.type		IntDtcEvents,@object
	.size		IntDtcEvents,4
	.align		1
IntDtcEvents:
	.short		3
	.short		4
	.section	.text_vle
	.type		DemConfigSet,@object
	.size		DemConfigSet,164
	.align		2
	.globl		DemConfigSet
DemConfigSet:
	.long		DTCAttributes_AgingAllowed
	.long		DTCAttributes_ImmediateNvStorage
	.long		DTCAttributes_InstantAging
	.long		DTCAttributes_AgingCycle
	.long		DTCAttributes_AgingThreshold
	.long		DTCAttributes_MemoryDest
	.long		DTCAttributes_Priority
	.long		DTCAttributes_Significance
	.long		DTCAttributes_ED
	.long		DTCAttributes_FFRecNum
	.long		DTCAttributes_DevFFARecNum
	.long		DTCAttributes_DevFFBRecNum
	.long		EventAttributes_ConfirmedThreshold
	.long		EventAttributes_OperationCycle
	.long		EventAttributes_EnableCondGroup
	.long		EventAttributes_StorageCondGroup
	.long		Dtcs_FunctionalUnit
	.long		Dtcs_Severity
	.long		Dtcs_ObdDtc
	.long		Dtcs_UdsDtc
	.long		Dtcs_FreezeFrame
	.long		Dtcs_DevFreezeFrameA
	.long		Dtcs_DevFreezeFrameB
	.long		Dtcs_DTCAttributes
	.long		Events_EventAvailable
	.long		Events_DebounceData
	.long		Events_EventAttributes
	.long		Events_IndicatorAttributes
	.long		CommonFreezeFrameData
	.long		CommonFreezeFrameDataDevA
	.long		DbCounter
	.long		0
	.long		IntDtcIndex
	.long		IntDtcEvents
	.long		0
	.long		0
	.long		0
	.long		0
	.short		2
	.short		4
	.long		PBtoPCHashValue
	.long		PBtoLTHashValue
	.section	.text_vle
#$$ld
.L5:
.L337:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L218:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\Dem_PBcfg.c"
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	11
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\Dem_PBcfg.c"
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
.L217:
	.sleb128	2
	.4byte		.L218
	.uleb128	136
	.uleb128	33
	.byte		"PBtoPCHashValue"
	.byte		0
	.4byte		.L219
	.sleb128	5
	.byte		0x3
	.4byte		PBtoPCHashValue
	.section	.debug_info,,n
	.section	.debug_info,,n
.L222:
	.sleb128	2
	.4byte		.L218
	.uleb128	137
	.uleb128	33
	.byte		"PBtoLTHashValue"
	.byte		0
	.4byte		.L219
	.sleb128	5
	.byte		0x3
	.4byte		PBtoLTHashValue
	.section	.debug_info,,n
.L223:
	.sleb128	2
	.4byte		.L218
	.uleb128	159
	.uleb128	33
	.byte		"CommonFreezeFrameData"
	.byte		0
	.4byte		.L224
	.sleb128	5
	.byte		0x3
	.4byte		CommonFreezeFrameData
	.section	.debug_info,,n
.L227:
	.sleb128	2
	.4byte		.L218
	.uleb128	160
	.uleb128	33
	.byte		"CommonFreezeFrameDataDevA"
	.byte		0
	.4byte		.L224
	.sleb128	5
	.byte		0x3
	.4byte		CommonFreezeFrameDataDevA
	.section	.debug_info,,n
.L228:
	.sleb128	2
	.4byte		.L218
	.uleb128	168
	.uleb128	34
	.byte		"DTCAttributes_AgingAllowed"
	.byte		0
	.4byte		.L229
	.sleb128	5
	.byte		0x3
	.4byte		DTCAttributes_AgingAllowed
	.section	.debug_info,,n
.L234:
	.sleb128	2
	.4byte		.L218
	.uleb128	173
	.uleb128	34
	.byte		"DTCAttributes_ImmediateNvStorage"
	.byte		0
	.4byte		.L235
	.sleb128	5
	.byte		0x3
	.4byte		DTCAttributes_ImmediateNvStorage
	.section	.debug_info,,n
.L237:
	.sleb128	2
	.4byte		.L218
	.uleb128	178
	.uleb128	34
	.byte		"DTCAttributes_InstantAging"
	.byte		0
	.4byte		.L238
	.sleb128	5
	.byte		0x3
	.4byte		DTCAttributes_InstantAging
	.section	.debug_info,,n
.L240:
	.sleb128	2
	.4byte		.L218
	.uleb128	189
	.uleb128	32
	.byte		"DTCAttributes_AgingCycle"
	.byte		0
	.4byte		.L241
	.sleb128	5
	.byte		0x3
	.4byte		DTCAttributes_AgingCycle
	.section	.debug_info,,n
.L245:
	.sleb128	2
	.4byte		.L218
	.uleb128	194
	.uleb128	32
	.byte		"DTCAttributes_AgingThreshold"
	.byte		0
	.4byte		.L246
	.sleb128	5
	.byte		0x3
	.4byte		DTCAttributes_AgingThreshold
	.section	.debug_info,,n
.L248:
	.sleb128	2
	.4byte		.L218
	.uleb128	199
	.uleb128	32
	.byte		"DTCAttributes_MemoryDest"
	.byte		0
	.4byte		.L249
	.sleb128	5
	.byte		0x3
	.4byte		DTCAttributes_MemoryDest
	.section	.debug_info,,n
.L251:
	.sleb128	2
	.4byte		.L218
	.uleb128	204
	.uleb128	32
	.byte		"DTCAttributes_Priority"
	.byte		0
	.4byte		.L252
	.sleb128	5
	.byte		0x3
	.4byte		DTCAttributes_Priority
	.section	.debug_info,,n
.L254:
	.sleb128	2
	.4byte		.L218
	.uleb128	209
	.uleb128	32
	.byte		"DTCAttributes_Significance"
	.byte		0
	.4byte		.L255
	.sleb128	5
	.byte		0x3
	.4byte		DTCAttributes_Significance
	.section	.debug_info,,n
.L257:
	.sleb128	2
	.4byte		.L218
	.uleb128	214
	.uleb128	32
	.byte		"DTCAttributes_FFRecNum"
	.byte		0
	.4byte		.L258
	.sleb128	5
	.byte		0x3
	.4byte		DTCAttributes_FFRecNum
	.section	.debug_info,,n
.L260:
	.sleb128	2
	.4byte		.L218
	.uleb128	219
	.uleb128	32
	.byte		"DTCAttributes_DevFFARecNum"
	.byte		0
	.4byte		.L261
	.sleb128	5
	.byte		0x3
	.4byte		DTCAttributes_DevFFARecNum
	.section	.debug_info,,n
.L263:
	.sleb128	2
	.4byte		.L218
	.uleb128	224
	.uleb128	32
	.byte		"DTCAttributes_DevFFBRecNum"
	.byte		0
	.4byte		.L264
	.sleb128	5
	.byte		0x3
	.4byte		DTCAttributes_DevFFBRecNum
	.section	.debug_info,,n
.L266:
	.sleb128	2
	.4byte		.L218
	.uleb128	229
	.uleb128	32
	.byte		"DTCAttributes_ED"
	.byte		0
	.4byte		.L267
	.sleb128	5
	.byte		0x3
	.4byte		DTCAttributes_ED
	.section	.debug_info,,n
.L269:
	.sleb128	2
	.4byte		.L218
	.uleb128	235
	.uleb128	32
	.byte		"Dtcs_DTCAttributes"
	.byte		0
	.4byte		.L270
	.sleb128	5
	.byte		0x3
	.4byte		Dtcs_DTCAttributes
	.section	.debug_info,,n
.L272:
	.sleb128	2
	.4byte		.L218
	.uleb128	241
	.uleb128	32
	.byte		"Dtcs_FunctionalUnit"
	.byte		0
	.4byte		.L273
	.sleb128	5
	.byte		0x3
	.4byte		Dtcs_FunctionalUnit
	.section	.debug_info,,n
.L275:
	.sleb128	2
	.4byte		.L218
	.uleb128	247
	.uleb128	46
	.byte		"Dtcs_Severity"
	.byte		0
	.4byte		.L276
	.sleb128	5
	.byte		0x3
	.4byte		Dtcs_Severity
	.section	.debug_info,,n
.L280:
	.sleb128	2
	.4byte		.L218
	.uleb128	254
	.uleb128	32
	.byte		"EventAttributes_ConfirmedThreshold"
	.byte		0
	.4byte		.L281
	.sleb128	5
	.byte		0x3
	.4byte		EventAttributes_ConfirmedThreshold
	.section	.debug_info,,n
.L283:
	.sleb128	2
	.4byte		.L218
	.uleb128	259
	.uleb128	32
	.byte		"EventAttributes_EnableCondGroup"
	.byte		0
	.4byte		.L284
	.sleb128	5
	.byte		0x3
	.4byte		EventAttributes_EnableCondGroup
	.section	.debug_info,,n
.L286:
	.sleb128	2
	.4byte		.L218
	.uleb128	264
	.uleb128	32
	.byte		"EventAttributes_StorageCondGroup"
	.byte		0
	.4byte		.L287
	.sleb128	5
	.byte		0x3
	.4byte		EventAttributes_StorageCondGroup
	.section	.debug_info,,n
.L289:
	.sleb128	2
	.4byte		.L218
	.uleb128	269
	.uleb128	32
	.byte		"EventAttributes_OperationCycle"
	.byte		0
	.4byte		.L290
	.sleb128	5
	.byte		0x3
	.4byte		EventAttributes_OperationCycle
	.section	.debug_info,,n
.L292:
	.sleb128	2
	.4byte		.L218
	.uleb128	274
	.uleb128	32
	.byte		"Events_EventAvailable"
	.byte		0
	.4byte		.L293
	.sleb128	5
	.byte		0x3
	.4byte		Events_EventAvailable
	.section	.debug_info,,n
.L295:
	.sleb128	2
	.4byte		.L218
	.uleb128	277
	.uleb128	32
	.byte		"Events_DebounceData"
	.byte		0
	.4byte		.L296
	.sleb128	5
	.byte		0x3
	.4byte		Events_DebounceData
	.section	.debug_info,,n
.L298:
	.sleb128	2
	.4byte		.L218
	.uleb128	285
	.uleb128	32
	.byte		"Events_EventAttributes"
	.byte		0
	.4byte		.L299
	.sleb128	5
	.byte		0x3
	.4byte		Events_EventAttributes
	.section	.debug_info,,n
.L301:
	.sleb128	2
	.4byte		.L218
	.uleb128	293
	.uleb128	32
	.byte		"Events_IndicatorAttributes"
	.byte		0
	.4byte		.L302
	.sleb128	5
	.byte		0x3
	.4byte		Events_IndicatorAttributes
	.section	.debug_info,,n
.L304:
	.sleb128	2
	.4byte		.L218
	.uleb128	308
	.uleb128	33
	.byte		"Dtcs_ObdDtc"
	.byte		0
	.4byte		.L305
	.sleb128	5
	.byte		0x3
	.4byte		Dtcs_ObdDtc
	.section	.debug_info,,n
.L307:
	.sleb128	2
	.4byte		.L218
	.uleb128	314
	.uleb128	33
	.byte		"Dtcs_FreezeFrame"
	.byte		0
	.4byte		.L308
	.sleb128	5
	.byte		0x3
	.4byte		Dtcs_FreezeFrame
	.section	.debug_info,,n
.L310:
	.sleb128	2
	.4byte		.L218
	.uleb128	320
	.uleb128	33
	.byte		"Dtcs_DevFreezeFrameA"
	.byte		0
	.4byte		.L311
	.sleb128	5
	.byte		0x3
	.4byte		Dtcs_DevFreezeFrameA
	.section	.debug_info,,n
.L313:
	.sleb128	2
	.4byte		.L218
	.uleb128	326
	.uleb128	33
	.byte		"Dtcs_DevFreezeFrameB"
	.byte		0
	.4byte		.L314
	.sleb128	5
	.byte		0x3
	.4byte		Dtcs_DevFreezeFrameB
	.section	.debug_info,,n
.L316:
	.sleb128	2
	.4byte		.L218
	.uleb128	338
	.uleb128	33
	.byte		"Dtcs_UdsDtc"
	.byte		0
	.4byte		.L317
	.sleb128	5
	.byte		0x3
	.4byte		Dtcs_UdsDtc
	.section	.debug_info,,n
.L319:
	.sleb128	2
	.4byte		.L218
	.uleb128	350
	.uleb128	52
	.byte		"DbCounter"
	.byte		0
	.4byte		.L320
	.sleb128	5
	.byte		0x3
	.4byte		DbCounter
	.section	.debug_info,,n
.L325:
	.sleb128	2
	.4byte		.L218
	.uleb128	369
	.uleb128	33
	.byte		"IntDtcIndex"
	.byte		0
	.4byte		.L326
	.sleb128	5
	.byte		0x3
	.4byte		IntDtcIndex
	.section	.debug_info,,n
.L328:
	.sleb128	2
	.4byte		.L218
	.uleb128	377
	.uleb128	42
	.byte		"IntDtcEvents"
	.byte		0
	.4byte		.L329
	.sleb128	5
	.byte		0x3
	.4byte		IntDtcEvents
	.section	.debug_info,,n
.L333:
	.sleb128	3
	.byte		0x1
	.4byte		.L218
	.uleb128	396
	.uleb128	34
	.byte		"DemConfigSet"
	.byte		0
	.4byte		.L334
	.sleb128	5
	.byte		0x3
	.4byte		DemConfigSet
	.section	.debug_info,,n
.L336:
	.sleb128	4
	.4byte		.L337
	.uleb128	69
	.uleb128	1
	.4byte		.L338-.L2
	.byte		"Dem_ConfigType_Tag"
	.byte		0
	.uleb128	164
	.section	.debug_info,,n
.L64:
	.sleb128	5
	.byte		"p_dtc_attr_aging_allowed"
	.byte		0
	.4byte		.L339
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L65:
	.sleb128	5
	.byte		"p_dtc_attr_immediate_nv_storage"
	.byte		0
	.4byte		.L339
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L66:
	.sleb128	5
	.byte		"p_dtc_attr_instant_aging"
	.byte		0
	.4byte		.L339
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L67:
	.sleb128	5
	.byte		"p_dtc_attr_aging_cycle"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L68:
	.sleb128	5
	.byte		"p_dtc_attr_aging_threshold"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L69:
	.sleb128	5
	.byte		"p_dtc_attr_memory_dest"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L70:
	.sleb128	5
	.byte		"p_dtc_attr_priority"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L71:
	.sleb128	5
	.byte		"p_dtc_attr_significance"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L72:
	.sleb128	5
	.byte		"p_dtc_attr_ed"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L73:
	.sleb128	5
	.byte		"p_dtc_attr_ff_rec_num_class"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L74:
	.sleb128	5
	.byte		"p_dtc_attr_dev_ff_a_rec_num"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L75:
	.sleb128	5
	.byte		"p_dtc_attr_dev_ff_b_rec_num"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L76:
	.sleb128	5
	.byte		"p_event_attr_confirmed_threshold"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L77:
	.sleb128	5
	.byte		"p_event_attr_op_cycle"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L78:
	.sleb128	5
	.byte		"p_event_attr_enable_cond_group"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L79:
	.sleb128	5
	.byte		"p_event_attr_storage_cond_group"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L80:
	.sleb128	5
	.byte		"p_dtc_functional_unit"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L81:
	.sleb128	5
	.byte		"p_dtc_severity"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L82:
	.sleb128	5
	.byte		"p_dtc_obd_dtc"
	.byte		0
	.4byte		.L342
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L83:
	.sleb128	5
	.byte		"p_dtc_uds_dtc"
	.byte		0
	.4byte		.L343
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L84:
	.sleb128	5
	.byte		"p_dtc_ff_class"
	.byte		0
	.4byte		.L342
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L85:
	.sleb128	5
	.byte		"p_dtc_dev_a_ff_class"
	.byte		0
	.4byte		.L342
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L86:
	.sleb128	5
	.byte		"p_dtc_dev_b_ff_class"
	.byte		0
	.4byte		.L342
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L87:
	.sleb128	5
	.byte		"p_dtc_attributes"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L88:
	.sleb128	5
	.byte		"p_event_available"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L89:
	.sleb128	5
	.byte		"p_event_debounce_data"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
.L90:
	.sleb128	5
	.byte		"p_event_attributes"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	104
	.byte		0x1
.L91:
	.sleb128	5
	.byte		"p_event_indicator_attributes"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	108
	.byte		0x1
.L92:
	.sleb128	5
	.byte		"p_common_ff_data"
	.byte		0
	.4byte		.L342
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
.L93:
	.sleb128	5
	.byte		"p_common_ff_data_dev_a"
	.byte		0
	.4byte		.L342
	.sleb128	2
	.byte		0x23
	.uleb128	116
	.byte		0x1
.L94:
	.sleb128	5
	.byte		"p_db_counter"
	.byte		0
	.4byte		.L344
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
.L95:
	.sleb128	5
	.byte		"p_db_time"
	.byte		0
	.4byte		.L345
	.sleb128	2
	.byte		0x23
	.uleb128	124
	.byte		0x1
.L96:
	.sleb128	5
	.byte		"p_int_dtc_index"
	.byte		0
	.4byte		.L342
	.sleb128	3
	.byte		0x23
	.uleb128	128
	.byte		0x1
.L97:
	.sleb128	5
	.byte		"p_int_dtc_events"
	.byte		0
	.4byte		.L349
	.sleb128	3
	.byte		0x23
	.uleb128	132
	.byte		0x1
.L98:
	.sleb128	5
	.byte		"p_indicator_attributes"
	.byte		0
	.4byte		.L350
	.sleb128	3
	.byte		0x23
	.uleb128	136
	.byte		0x1
.L99:
	.sleb128	5
	.byte		"p_ff_classes"
	.byte		0
	.4byte		.L357
	.sleb128	3
	.byte		0x23
	.uleb128	140
	.byte		0x1
.L100:
	.sleb128	5
	.byte		"p_enable_condition_groups"
	.byte		0
	.4byte		.L361
	.sleb128	3
	.byte		0x23
	.uleb128	144
	.byte		0x1
.L101:
	.sleb128	5
	.byte		"p_storage_condition_groups"
	.byte		0
	.4byte		.L365
	.sleb128	3
	.byte		0x23
	.uleb128	148
	.byte		0x1
.L102:
	.sleb128	5
	.byte		"num_dtcs"
	.byte		0
	.4byte		.L225
	.sleb128	3
	.byte		0x23
	.uleb128	152
	.byte		0x1
.L103:
	.sleb128	5
	.byte		"num_events"
	.byte		0
	.4byte		.L332
	.sleb128	3
	.byte		0x23
	.uleb128	154
	.byte		0x1
.L104:
	.sleb128	5
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L369
	.sleb128	3
	.byte		0x23
	.uleb128	156
	.byte		0x1
.L105:
	.sleb128	5
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L369
	.sleb128	3
	.byte		0x23
	.uleb128	160
	.byte		0x1
	.sleb128	0
.L338:
.L348:
	.sleb128	4
	.4byte		.L337
	.uleb128	69
	.uleb128	1
	.4byte		.L370-.L2
	.byte		"Dem_TimeDebouncing_Tag"
	.byte		0
	.uleb128	8
.L52:
	.sleb128	5
	.byte		"failed_threshold"
	.byte		0
	.4byte		.L371
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L53:
	.sleb128	5
	.byte		"passed_threshold"
	.byte		0
	.4byte		.L371
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L370:
.L324:
	.sleb128	4
	.4byte		.L337
	.uleb128	69
	.uleb128	1
	.4byte		.L373-.L2
	.byte		"Dem_CounterDebouncing_Tag"
	.byte		0
	.uleb128	16
.L43:
	.sleb128	5
	.byte		"incr_step"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L44:
	.sleb128	5
	.byte		"decr_step"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L45:
	.sleb128	5
	.byte		"failed_threshold"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L46:
	.sleb128	5
	.byte		"passed_threshold"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L47:
	.sleb128	5
	.byte		"fdc_threshold"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L48:
	.sleb128	5
	.byte		"jump_up_value"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L49:
	.sleb128	5
	.byte		"jump_down_value"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L50:
	.sleb128	5
	.byte		"jump_up"
	.byte		0
	.4byte		.L232
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L51:
	.sleb128	5
	.byte		"jump_down"
	.byte		0
	.4byte		.L232
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
	.sleb128	0
.L373:
.L368:
	.sleb128	4
	.4byte		.L337
	.uleb128	69
	.uleb128	1
	.4byte		.L376-.L2
	.byte		"Dem_StorageConditionGroupType_Tag"
	.byte		0
	.uleb128	8
.L40:
	.sleb128	5
	.byte		"p_storage_conditions"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L41:
	.sleb128	5
	.byte		"num_storage_conditions"
	.byte		0
	.4byte		.L244
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L376:
.L364:
	.sleb128	4
	.4byte		.L337
	.uleb128	69
	.uleb128	1
	.4byte		.L377-.L2
	.byte		"Dem_EnableConditionGroupType_Tag"
	.byte		0
	.uleb128	8
.L38:
	.sleb128	5
	.byte		"p_enable_conditions"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L39:
	.sleb128	5
	.byte		"num_enable_conditions"
	.byte		0
	.4byte		.L244
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L377:
.L360:
	.sleb128	4
	.4byte		.L337
	.uleb128	69
	.uleb128	1
	.4byte		.L378-.L2
	.byte		"Dem_FreezeFrameClassType_Tag"
	.byte		0
	.uleb128	8
.L36:
	.sleb128	5
	.byte		"p_ff_did_idx"
	.byte		0
	.4byte		.L342
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L37:
	.sleb128	5
	.byte		"num_ff_dids"
	.byte		0
	.4byte		.L244
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L378:
.L356:
	.sleb128	4
	.4byte		.L337
	.uleb128	69
	.uleb128	1
	.4byte		.L379-.L2
	.byte		"Dem_IndicatorListItem_Tag"
	.byte		0
	.uleb128	3
.L33:
	.sleb128	5
	.byte		"behaviour"
	.byte		0
	.4byte		.L244
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L34:
	.sleb128	5
	.byte		"healing_threshold"
	.byte		0
	.4byte		.L244
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L35:
	.sleb128	5
	.byte		"failure_threshold"
	.byte		0
	.4byte		.L244
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L379:
	.section	.debug_info,,n
.L221:
	.sleb128	6
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L220:
	.sleb128	7
	.byte		"uint32"
	.byte		0
	.4byte		.L221
	.section	.debug_info,,n
.L219:
	.sleb128	8
	.4byte		.L220
.L226:
	.sleb128	6
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L225:
	.sleb128	7
	.byte		"uint16"
	.byte		0
	.4byte		.L226
.L224:
	.sleb128	8
	.4byte		.L225
.L233:
	.sleb128	6
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L232:
	.sleb128	7
	.byte		"boolean"
	.byte		0
	.4byte		.L233
.L231:
	.sleb128	8
	.4byte		.L232
	.section	.debug_info,,n
.L229:
	.sleb128	9
	.4byte		.L230-.L2
	.4byte		.L231
	.section	.debug_info,,n
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L230:
.L235:
	.sleb128	9
	.4byte		.L236-.L2
	.4byte		.L231
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L236:
.L238:
	.sleb128	9
	.4byte		.L239-.L2
	.4byte		.L231
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L239:
.L244:
	.sleb128	7
	.byte		"uint8"
	.byte		0
	.4byte		.L233
.L243:
	.sleb128	8
	.4byte		.L244
.L241:
	.sleb128	9
	.4byte		.L242-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L242:
.L246:
	.sleb128	9
	.4byte		.L247-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L247:
.L249:
	.sleb128	9
	.4byte		.L250-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L250:
.L252:
	.sleb128	9
	.4byte		.L253-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L253:
.L255:
	.sleb128	9
	.4byte		.L256-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L256:
.L258:
	.sleb128	9
	.4byte		.L259-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L259:
.L261:
	.sleb128	9
	.4byte		.L262-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L262:
.L264:
	.sleb128	9
	.4byte		.L265-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L265:
.L267:
	.sleb128	9
	.4byte		.L268-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L268:
.L270:
	.sleb128	9
	.4byte		.L271-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	1
	.sleb128	0
.L271:
.L273:
	.sleb128	9
	.4byte		.L274-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	1
	.sleb128	0
.L274:
.L279:
	.sleb128	7
	.byte		"Dem_DTCSeverityType"
	.byte		0
	.4byte		.L244
.L278:
	.sleb128	8
	.4byte		.L279
.L276:
	.sleb128	9
	.4byte		.L277-.L2
	.4byte		.L278
	.sleb128	10
	.uleb128	1
	.sleb128	0
.L277:
.L281:
	.sleb128	9
	.4byte		.L282-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L282:
.L284:
	.sleb128	9
	.4byte		.L285-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L285:
.L287:
	.sleb128	9
	.4byte		.L288-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L288:
.L290:
	.sleb128	9
	.4byte		.L291-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L291:
.L293:
	.sleb128	9
	.4byte		.L294-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L294:
.L296:
	.sleb128	9
	.4byte		.L297-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	3
	.sleb128	0
.L297:
.L299:
	.sleb128	9
	.4byte		.L300-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	3
	.sleb128	0
.L300:
.L302:
	.sleb128	9
	.4byte		.L303-.L2
	.4byte		.L243
	.sleb128	10
	.uleb128	3
	.sleb128	0
.L303:
.L305:
	.sleb128	9
	.4byte		.L306-.L2
	.4byte		.L224
	.sleb128	10
	.uleb128	1
	.sleb128	0
.L306:
.L308:
	.sleb128	9
	.4byte		.L309-.L2
	.4byte		.L224
	.sleb128	10
	.uleb128	1
	.sleb128	0
.L309:
.L311:
	.sleb128	9
	.4byte		.L312-.L2
	.4byte		.L224
	.sleb128	10
	.uleb128	1
	.sleb128	0
.L312:
.L314:
	.sleb128	9
	.4byte		.L315-.L2
	.4byte		.L224
	.sleb128	10
	.uleb128	1
	.sleb128	0
.L315:
.L317:
	.sleb128	9
	.4byte		.L318-.L2
	.4byte		.L219
	.sleb128	10
	.uleb128	1
	.sleb128	0
.L318:
.L323:
	.sleb128	7
	.byte		"Dem_CounterDebouncingType"
	.byte		0
	.4byte		.L324
.L322:
	.sleb128	8
	.4byte		.L323
.L320:
	.sleb128	9
	.4byte		.L321-.L2
	.4byte		.L322
	.sleb128	10
	.uleb128	0
	.sleb128	0
.L321:
.L326:
	.sleb128	9
	.4byte		.L327-.L2
	.4byte		.L224
	.sleb128	10
	.uleb128	3
	.sleb128	0
.L327:
.L332:
	.sleb128	7
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L225
.L331:
	.sleb128	8
	.4byte		.L332
.L329:
	.sleb128	9
	.4byte		.L330-.L2
	.4byte		.L331
	.sleb128	10
	.uleb128	1
	.sleb128	0
.L330:
.L335:
	.sleb128	7
	.byte		"Dem_ConfigType"
	.byte		0
	.4byte		.L336
.L334:
	.sleb128	8
	.4byte		.L335
	.section	.debug_info,,n
.L339:
	.sleb128	11
	.4byte		.L231
.L340:
	.sleb128	11
	.4byte		.L243
.L341:
	.sleb128	11
	.4byte		.L278
.L342:
	.sleb128	11
	.4byte		.L224
.L343:
	.sleb128	11
	.4byte		.L219
.L344:
	.sleb128	11
	.4byte		.L322
.L347:
	.sleb128	7
	.byte		"Dem_TimeDebouncingType"
	.byte		0
	.4byte		.L348
.L346:
	.sleb128	8
	.4byte		.L347
.L345:
	.sleb128	11
	.4byte		.L346
.L349:
	.sleb128	11
	.4byte		.L331
.L355:
	.sleb128	7
	.byte		"Dem_IndicatorListItemType"
	.byte		0
	.4byte		.L356
.L354:
	.sleb128	8
	.4byte		.L355
.L353:
	.sleb128	11
	.4byte		.L354
.L352:
	.sleb128	7
	.byte		"IndicatorListItemPtrType"
	.byte		0
	.4byte		.L353
.L351:
	.sleb128	8
	.4byte		.L352
.L350:
	.sleb128	11
	.4byte		.L351
.L359:
	.sleb128	7
	.byte		"Dem_FreezeFrameClassType"
	.byte		0
	.4byte		.L360
.L358:
	.sleb128	8
	.4byte		.L359
.L357:
	.sleb128	11
	.4byte		.L358
.L363:
	.sleb128	7
	.byte		"Dem_EnableConditionGroupType"
	.byte		0
	.4byte		.L364
.L362:
	.sleb128	8
	.4byte		.L363
.L361:
	.sleb128	11
	.4byte		.L362
.L367:
	.sleb128	7
	.byte		"Dem_StorageConditionGroupType"
	.byte		0
	.4byte		.L368
.L366:
	.sleb128	8
	.4byte		.L367
.L365:
	.sleb128	11
	.4byte		.L366
.L369:
	.sleb128	8
	.4byte		.L343
.L372:
	.sleb128	6
	.byte		"long"
	.byte		0
	.byte		0x5
	.byte		0x4
.L371:
	.sleb128	7
	.byte		"sint32"
	.byte		0
	.4byte		.L372
.L375:
	.sleb128	6
	.byte		"short"
	.byte		0
	.byte		0x5
	.byte		0x2
.L374:
	.sleb128	7
	.byte		"sint16"
	.byte		0
	.4byte		.L375
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dem_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dem_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dem_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dem_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dem_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dem_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\Dem_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
