#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComM_PBcfg.c"
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
	.0byte		.L261
	.section	.text_vle
	.type		User_0_AllChannelIDs,@object
	.size		User_0_AllChannelIDs,1
	.align		2
User_0_AllChannelIDs:
	.byte		0
	.section	.text_vle
	.type		User_1_AllChannelIDs,@object
	.size		User_1_AllChannelIDs,1
	.align		2
User_1_AllChannelIDs:
	.byte		1
	.section	.text_vle
	.type		UserList,@object
	.size		UserList,16
	.align		2
UserList:
	.long		User_0_AllChannelIDs
	.short		1
	.short		1
	.long		User_1_AllChannelIDs
	.short		1
	.short		1
	.section	.text_vle
	.type		Channel_0_UserIDs,@object
	.size		Channel_0_UserIDs,1
	.align		2
Channel_0_UserIDs:
	.byte		0
	.section	.text_vle
	.type		Channel_1_UserIDs,@object
	.size		Channel_1_UserIDs,1
	.align		2
Channel_1_UserIDs:
	.byte		1
	.section	.text_vle
	.type		ChannelList,@object
	.size		ChannelList,96
	.align		2
ChannelList:
	.long		Channel_0_UserIDs
	.short		1
	.short		1
	.long		0
	.long		0
	.long		0
	.byte		0
	.space		1
	.short		250
	.long		2
	.long		0
	.long		0
	.byte		0
	.space		3
	.long		0
	.byte		0
	.space		3
	.long		Channel_1_UserIDs
	.short		1
	.short		1
	.long		0
	.long		0
	.long		0
	.byte		0
	.space		1
	.short		250
	.long		2
	.long		0
	.long		0
	.byte		0
	.space		3
	.long		4
	.byte		0
	.space		3
	.section	.text_vle
	.type		ComM_PBtoPCHashValue,@object
	.size		ComM_PBtoPCHashValue,4
	.align		2
ComM_PBtoPCHashValue:
	.long		1712421427
	.section	.text_vle
	.type		ComM_PBtoLTHashValue,@object
	.size		ComM_PBtoLTHashValue,4
	.align		2
ComM_PBtoLTHashValue:
	.long		-718828917
	.section	.text_vle
	.type		ComMConfigSet,@object
	.size		ComMConfigSet,32
	.align		2
	.globl		ComMConfigSet
ComMConfigSet:
	.long		ComM_PBtoPCHashValue
	.long		ComM_PBtoLTHashValue
	.long		UserList
	.long		ChannelList
	.long		0
	.long		0
	.short		0
	.short		0
	.byte		2
	.byte		0
	.space		2
	.section	.text_vle
#$$ld
.L5:
.L301:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\ComM\\ssc\\make\\..\\inc\\ComM_Types.h"
.L262:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\ComM_PBcfg.c"
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\ComM_PBcfg.c"
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
.L261:
	.sleb128	2
	.4byte		.L262
	.uleb128	41
	.uleb128	48
	.byte		"User_0_AllChannelIDs"
	.byte		0
	.4byte		.L263
	.sleb128	5
	.byte		0x3
	.4byte		User_0_AllChannelIDs
	.section	.debug_info,,n
	.section	.debug_info,,n
.L269:
	.sleb128	2
	.4byte		.L262
	.uleb128	47
	.uleb128	48
	.byte		"User_1_AllChannelIDs"
	.byte		0
	.4byte		.L270
	.sleb128	5
	.byte		0x3
	.4byte		User_1_AllChannelIDs
	.section	.debug_info,,n
.L272:
	.sleb128	2
	.4byte		.L262
	.uleb128	61
	.uleb128	44
	.byte		"UserList"
	.byte		0
	.4byte		.L273
	.sleb128	5
	.byte		0x3
	.4byte		UserList
	.section	.debug_info,,n
.L278:
	.sleb128	2
	.4byte		.L262
	.uleb128	85
	.uleb128	50
	.byte		"Channel_0_UserIDs"
	.byte		0
	.4byte		.L279
	.sleb128	5
	.byte		0x3
	.4byte		Channel_0_UserIDs
	.section	.debug_info,,n
.L283:
	.sleb128	2
	.4byte		.L262
	.uleb128	91
	.uleb128	50
	.byte		"Channel_1_UserIDs"
	.byte		0
	.4byte		.L284
	.sleb128	5
	.byte		0x3
	.4byte		Channel_1_UserIDs
	.section	.debug_info,,n
.L286:
	.sleb128	2
	.4byte		.L262
	.uleb128	115
	.uleb128	47
	.byte		"ChannelList"
	.byte		0
	.4byte		.L287
	.sleb128	5
	.byte		0x3
	.4byte		ChannelList
	.section	.debug_info,,n
.L292:
	.sleb128	2
	.4byte		.L262
	.uleb128	160
	.uleb128	36
	.byte		"ComM_PBtoPCHashValue"
	.byte		0
	.4byte		.L293
	.sleb128	5
	.byte		0x3
	.4byte		ComM_PBtoPCHashValue
	.section	.debug_info,,n
.L296:
	.sleb128	2
	.4byte		.L262
	.uleb128	161
	.uleb128	36
	.byte		"ComM_PBtoLTHashValue"
	.byte		0
	.4byte		.L293
	.sleb128	5
	.byte		0x3
	.4byte		ComM_PBtoLTHashValue
	.section	.debug_info,,n
.L297:
	.sleb128	3
	.byte		0x1
	.4byte		.L262
	.uleb128	174
	.uleb128	39
	.byte		"ComMConfigSet"
	.byte		0
	.4byte		.L298
	.sleb128	5
	.byte		0x3
	.4byte		ComMConfigSet
	.section	.debug_info,,n
.L300:
	.sleb128	4
	.4byte		.L301
	.uleb128	121
	.uleb128	1
	.4byte		.L302-.L2
	.uleb128	32
	.section	.debug_info,,n
.L249:
	.sleb128	5
	.byte		"PBtoPCHashValuePtr"
	.byte		0
	.4byte		.L303
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L250:
	.sleb128	5
	.byte		"PBtoLTHashValuePtr"
	.byte		0
	.4byte		.L303
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L251:
	.sleb128	5
	.byte		"UsersPtr"
	.byte		0
	.4byte		.L304
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L252:
	.sleb128	5
	.byte		"ChannelsPtr"
	.byte		0
	.4byte		.L306
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L253:
	.sleb128	5
	.byte		"PncsPtr"
	.byte		0
	.4byte		.L308
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L254:
	.sleb128	5
	.byte		"PncRxSignalsPtr"
	.byte		0
	.4byte		.L313
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L255:
	.sleb128	5
	.byte		"PncsNum"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L256:
	.sleb128	5
	.byte		"PncRxSignalsNum"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L257:
	.sleb128	5
	.byte		"UsersNum"
	.byte		0
	.4byte		.L321
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L258:
	.sleb128	5
	.byte		"PncEnabled"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
	.sleb128	0
.L302:
.L317:
	.sleb128	4
	.4byte		.L301
	.uleb128	121
	.uleb128	1
	.4byte		.L324-.L2
	.uleb128	12
.L246:
	.sleb128	5
	.byte		"SignalId"
	.byte		0
	.4byte		.L325
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L247:
	.sleb128	5
	.byte		"SignalKind"
	.byte		0
	.4byte		.L327
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L248:
	.sleb128	5
	.byte		"SignalChannel"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L324:
.L312:
	.sleb128	4
	.4byte		.L301
	.uleb128	121
	.uleb128	1
	.4byte		.L330-.L2
	.uleb128	32
.L235:
	.sleb128	5
	.byte		"PncID"
	.byte		0
	.4byte		.L331
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L236:
	.sleb128	5
	.byte		"PncIdByteIndex"
	.byte		0
	.4byte		.L321
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L237:
	.sleb128	5
	.byte		"PncIdBitIndex"
	.byte		0
	.4byte		.L321
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L238:
	.sleb128	5
	.byte		"PncTimerMaxValue"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L239:
	.sleb128	5
	.byte		"PncTimerHandlerChannelID"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L240:
	.sleb128	5
	.byte		"PncChannelIDsPtr"
	.byte		0
	.4byte		.L333
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L241:
	.sleb128	5
	.byte		"PncChannelIDsNum"
	.byte		0
	.4byte		.L321
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L242:
	.sleb128	5
	.byte		"PncComRxSignalIndexesPtr"
	.byte		0
	.4byte		.L335
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L243:
	.sleb128	5
	.byte		"PncComRxSignalIndexesNum"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L244:
	.sleb128	5
	.byte		"PncUserIDsPtr"
	.byte		0
	.4byte		.L337
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L245:
	.sleb128	5
	.byte		"PncUserIDsNum"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L330:
.L277:
	.sleb128	4
	.4byte		.L301
	.uleb128	121
	.uleb128	1
	.4byte		.L339-.L2
	.uleb128	8
.L225:
	.sleb128	5
	.byte		"AllChannelIDsPtr"
	.byte		0
	.4byte		.L333
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L226:
	.sleb128	5
	.byte		"AllChannelIDsNum"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L227:
	.sleb128	5
	.byte		"DirectChannelIDsNum"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L339:
.L291:
	.sleb128	4
	.4byte		.L301
	.uleb128	121
	.uleb128	1
	.4byte		.L340-.L2
	.uleb128	48
.L211:
	.sleb128	5
	.byte		"UserIDsPtr"
	.byte		0
	.4byte		.L337
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L212:
	.sleb128	5
	.byte		"AllUserIDsNum"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L213:
	.sleb128	5
	.byte		"DirectUserIDsNum"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L214:
	.sleb128	5
	.byte		"PncIndexesPtr"
	.byte		0
	.4byte		.L337
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L215:
	.sleb128	5
	.byte		"PncStatesPtr"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L216:
	.sleb128	5
	.byte		"PncRequestsPtr"
	.byte		0
	.4byte		.L345
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L217:
	.sleb128	5
	.byte		"ChannelPncsNum"
	.byte		0
	.4byte		.L321
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L218:
	.sleb128	5
	.byte		"FullComTimerInitValue"
	.byte		0
	.4byte		.L318
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L219:
	.sleb128	5
	.byte		"NmVariant"
	.byte		0
	.4byte		.L348
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L220:
	.sleb128	5
	.byte		"TxSignalIDsPtr"
	.byte		0
	.4byte		.L351
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L221:
	.sleb128	5
	.byte		"TxSignalBufferPtr"
	.byte		0
	.4byte		.L353
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L222:
	.sleb128	5
	.byte		"TxSignalIDsNum"
	.byte		0
	.4byte		.L321
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L223:
	.sleb128	5
	.byte		"BusType"
	.byte		0
	.4byte		.L355
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L224:
	.sleb128	5
	.byte		"PncNmRequestEnabled"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L340:
	.section	.debug_info,,n
.L350:
	.sleb128	6
	.4byte		.L301
	.uleb128	103
	.uleb128	1
	.4byte		.L358-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"COMM_FULL"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"COMM_LIGHT"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"COMM_NONE"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"COMM_PASSIVE"
	.byte		0
	.sleb128	3
	.sleb128	0
.L358:
.L357:
	.sleb128	6
	.4byte		.L301
	.uleb128	93
	.uleb128	1
	.4byte		.L359-.L2
	.uleb128	4
	.sleb128	7
	.byte		"COMM_BUS_TYPE_CAN"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"COMM_BUS_TYPE_ETH"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"COMM_BUS_TYPE_FR"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"COMM_BUS_TYPE_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	7
	.byte		"COMM_BUS_TYPE_LIN"
	.byte		0
	.sleb128	4
	.sleb128	0
.L359:
.L329:
	.sleb128	6
	.4byte		.L301
	.uleb128	86
	.uleb128	1
	.4byte		.L360-.L2
	.uleb128	4
	.sleb128	7
	.byte		"COMM_SIGNAL_KIND_EIRA"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"COMM_SIGNAL_KIND_ERA"
	.byte		0
	.sleb128	1
	.sleb128	0
.L360:
.L344:
	.sleb128	6
	.4byte		.L301
	.uleb128	57
	.uleb128	1
	.4byte		.L361-.L2
	.uleb128	4
	.sleb128	7
	.byte		"PNC_REQUESTED"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"PNC_READY_SLEEP"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"PNC_PREPARE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"PNC_NO_COMMUNICATION"
	.byte		0
	.sleb128	3
	.sleb128	7
	.byte		"PNC_FULL_COMMUNICATION"
	.byte		0
	.sleb128	4
	.sleb128	0
.L361:
	.section	.debug_info,,n
.L268:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L267:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L268
.L266:
	.sleb128	9
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L267
	.section	.debug_info,,n
.L265:
	.sleb128	10
	.4byte		.L266
	.section	.debug_info,,n
.L263:
	.sleb128	11
	.4byte		.L264-.L2
	.4byte		.L265
	.section	.debug_info,,n
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L264:
.L270:
	.sleb128	11
	.4byte		.L271-.L2
	.4byte		.L265
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L271:
.L276:
	.sleb128	9
	.byte		"ComM_UserType"
	.byte		0
	.4byte		.L277
.L275:
	.sleb128	10
	.4byte		.L276
.L273:
	.sleb128	11
	.4byte		.L274-.L2
	.4byte		.L275
	.sleb128	12
	.uleb128	1
	.sleb128	0
.L274:
.L282:
	.sleb128	9
	.byte		"ComM_UserHandleType"
	.byte		0
	.4byte		.L267
.L281:
	.sleb128	10
	.4byte		.L282
.L279:
	.sleb128	11
	.4byte		.L280-.L2
	.4byte		.L281
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L280:
.L284:
	.sleb128	11
	.4byte		.L285-.L2
	.4byte		.L281
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L285:
.L290:
	.sleb128	9
	.byte		"ComM_ChannelType"
	.byte		0
	.4byte		.L291
.L289:
	.sleb128	10
	.4byte		.L290
.L287:
	.sleb128	11
	.4byte		.L288-.L2
	.4byte		.L289
	.sleb128	12
	.uleb128	1
	.sleb128	0
.L288:
.L295:
	.sleb128	8
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L294:
	.sleb128	9
	.byte		"uint32"
	.byte		0
	.4byte		.L295
.L293:
	.sleb128	10
	.4byte		.L294
.L299:
	.sleb128	9
	.byte		"ComM_ConfigType"
	.byte		0
	.4byte		.L300
.L298:
	.sleb128	10
	.4byte		.L299
	.section	.debug_info,,n
.L303:
	.sleb128	13
	.4byte		.L293
.L305:
	.sleb128	13
	.4byte		.L275
.L304:
	.sleb128	10
	.4byte		.L305
.L307:
	.sleb128	13
	.4byte		.L289
.L306:
	.sleb128	10
	.4byte		.L307
.L311:
	.sleb128	9
	.byte		"ComM_PncType"
	.byte		0
	.4byte		.L312
.L310:
	.sleb128	10
	.4byte		.L311
.L309:
	.sleb128	13
	.4byte		.L310
.L308:
	.sleb128	10
	.4byte		.L309
.L316:
	.sleb128	9
	.byte		"ComM_PncRxSignalType"
	.byte		0
	.4byte		.L317
.L315:
	.sleb128	10
	.4byte		.L316
.L314:
	.sleb128	13
	.4byte		.L315
.L313:
	.sleb128	10
	.4byte		.L314
.L320:
	.sleb128	8
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L319:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L320
.L318:
	.sleb128	10
	.4byte		.L319
.L321:
	.sleb128	10
	.4byte		.L267
.L323:
	.sleb128	9
	.byte		"boolean"
	.byte		0
	.4byte		.L268
.L322:
	.sleb128	10
	.4byte		.L323
.L326:
	.sleb128	9
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L319
.L325:
	.sleb128	10
	.4byte		.L326
.L328:
	.sleb128	9
	.byte		"ComM_PncComSignalKindType"
	.byte		0
	.4byte		.L329
.L327:
	.sleb128	10
	.4byte		.L328
.L332:
	.sleb128	9
	.byte		"PNCHandleType"
	.byte		0
	.4byte		.L267
.L331:
	.sleb128	10
	.4byte		.L332
.L334:
	.sleb128	13
	.4byte		.L265
.L333:
	.sleb128	10
	.4byte		.L334
.L336:
	.sleb128	13
	.4byte		.L321
.L335:
	.sleb128	10
	.4byte		.L336
.L338:
	.sleb128	13
	.4byte		.L281
.L337:
	.sleb128	10
	.4byte		.L338
.L343:
	.sleb128	9
	.byte		"ComM_PncModeType"
	.byte		0
	.4byte		.L344
.L342:
	.sleb128	13
	.4byte		.L343
.L341:
	.sleb128	10
	.4byte		.L342
.L347:
	.sleb128	9
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L267
.L346:
	.sleb128	13
	.4byte		.L347
.L345:
	.sleb128	10
	.4byte		.L346
.L349:
	.sleb128	9
	.byte		"ComM_NmVariantType"
	.byte		0
	.4byte		.L350
.L348:
	.sleb128	10
	.4byte		.L349
.L352:
	.sleb128	13
	.4byte		.L318
.L351:
	.sleb128	10
	.4byte		.L352
.L354:
	.sleb128	13
	.4byte		.L267
.L353:
	.sleb128	10
	.4byte		.L354
.L356:
	.sleb128	9
	.byte		"ComM_BusTypeType"
	.byte		0
	.4byte		.L357
.L355:
	.sleb128	10
	.4byte		.L356
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComM_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComM_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComM_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\ComM_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
