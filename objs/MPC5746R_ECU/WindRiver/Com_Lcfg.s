#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Com_Lcfg.c"
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
	.0byte		.L173
	.section	.text_vle
	.type		Com_TimeOutFunction_Array,@object
	.size		Com_TimeOutFunction_Array,4
	.align		2
	.globl		Com_TimeOutFunction_Array
Com_TimeOutFunction_Array:
	.long		0
	.section	.text_vle
	.type		Com_NotifyFunction_Array,@object
	.size		Com_NotifyFunction_Array,4
	.align		2
	.globl		Com_NotifyFunction_Array
Com_NotifyFunction_Array:
	.long		0
	.section	.text_vle
	.type		Com_LTHashValue,@object
	.size		Com_LTHashValue,4
	.align		2
	.globl		Com_LTHashValue
Com_LTHashValue:
	.long		1707314851
	.section	.text_vle
	.type		Com_LTtoPCHashValue,@object
	.size		Com_LTtoPCHashValue,4
	.align		2
	.globl		Com_LTtoPCHashValue
Com_LTtoPCHashValue:
	.long		-774768237
	.section	.text_vle
#$$ld
.L5:
.L277:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L273:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\ComXf_CommonTypes.h"
.L194:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\Com_Types.h"
.L165:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\Com_Lcfg.c"
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
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
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
	.uleb128	11
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
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
	.uleb128	14
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\Com_Lcfg.c"
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
.L164:
	.sleb128	2
	.byte		0x1
	.4byte		.L165
	.uleb128	31
	.uleb128	29
	.byte		"Com_Status"
	.byte		0
	.4byte		.L166
	.sleb128	5
	.byte		0x3
	.4byte		Com_Status
	.0byte		.L164
	.comm		Com_Status,4,2
.L168:
	.sleb128	2
	.byte		0x1
	.4byte		.L165
	.uleb128	35
	.uleb128	48
	.byte		"Com_Main"
	.byte		0
	.4byte		.L169
	.sleb128	5
	.byte		0x3
	.4byte		Com_Main
	.comm		Com_Main,4,2
.L173:
	.sleb128	2
	.byte		0x1
	.4byte		.L165
	.uleb128	44
	.uleb128	42
	.byte		"Com_TimeOutFunction_Array"
	.byte		0
	.4byte		.L174
	.sleb128	5
	.byte		0x3
	.4byte		Com_TimeOutFunction_Array
	.section	.debug_info,,n
	.section	.debug_info,,n
.L181:
	.sleb128	2
	.byte		0x1
	.4byte		.L165
	.uleb128	50
	.uleb128	41
	.byte		"Com_NotifyFunction_Array"
	.byte		0
	.4byte		.L182
	.sleb128	5
	.byte		0x3
	.4byte		Com_NotifyFunction_Array
	.section	.debug_info,,n
.L189:
	.sleb128	2
	.byte		0x1
	.4byte		.L165
	.uleb128	65
	.uleb128	27
	.byte		"Com_LTHashValue"
	.byte		0
	.4byte		.L190
	.sleb128	5
	.byte		0x3
	.4byte		Com_LTHashValue
	.section	.debug_info,,n
.L193:
	.sleb128	2
	.byte		0x1
	.4byte		.L165
	.uleb128	68
	.uleb128	27
	.byte		"Com_LTtoPCHashValue"
	.byte		0
	.4byte		.L190
	.sleb128	5
	.byte		0x3
	.4byte		Com_LTtoPCHashValue
	.section	.debug_info,,n
.L172:
	.sleb128	3
	.4byte		.L194
	.uleb128	82
	.uleb128	1
	.4byte		.L195-.L2
	.uleb128	100
	.section	.debug_info,,n
.L120:
	.sleb128	4
	.byte		"ConfigurationId"
	.byte		0
	.4byte		.L191
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L121:
	.sleb128	4
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L196
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L122:
	.sleb128	4
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L196
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L123:
	.sleb128	4
	.byte		"IpduGroups_Ref"
	.byte		0
	.4byte		.L197
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L124:
	.sleb128	4
	.byte		"RxIpdus_Ref"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L125:
	.sleb128	4
	.byte		"RxIpdusDeferred_Ref"
	.byte		0
	.4byte		.L207
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L126:
	.sleb128	4
	.byte		"RxIpdusImmediate_Ref"
	.byte		0
	.4byte		.L207
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L127:
	.sleb128	4
	.byte		"RxIpdusRxDM_Ref"
	.byte		0
	.4byte		.L207
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L128:
	.sleb128	4
	.byte		"TxIpdus_Ref"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L129:
	.sleb128	4
	.byte		"Signals_Ref"
	.byte		0
	.4byte		.L214
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L130:
	.sleb128	4
	.byte		"IpduToSignal_Ref"
	.byte		0
	.4byte		.L219
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L131:
	.sleb128	4
	.byte		"GroupSignalToIPdu_Ref"
	.byte		0
	.4byte		.L219
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L132:
	.sleb128	4
	.byte		"TxModes_Ref"
	.byte		0
	.4byte		.L225
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L133:
	.sleb128	4
	.byte		"CycleTimers_Ref"
	.byte		0
	.4byte		.L230
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L134:
	.sleb128	4
	.byte		"DeferredLength_Ref"
	.byte		0
	.4byte		.L233
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L135:
	.sleb128	4
	.byte		"DeferredReceivedIPdu_Ref"
	.byte		0
	.4byte		.L236
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L136:
	.sleb128	4
	.byte		"DeferredReceivedIPduArrayLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L137:
	.sleb128	4
	.byte		"RxIpdusFlags"
	.byte		0
	.4byte		.L238
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L138:
	.sleb128	4
	.byte		"Com_ZeroMask"
	.byte		0
	.4byte		.L238
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L139:
	.sleb128	4
	.byte		"SignalGroup_base"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L140:
	.sleb128	4
	.byte		"MemberSignal_base"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	78
	.byte		0x1
.L141:
	.sleb128	4
	.byte		"SignalArrayLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L142:
	.sleb128	4
	.byte		"SignalGroupArrayLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	82
	.byte		0x1
.L143:
	.sleb128	4
	.byte		"MemberSignalArrayLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L144:
	.sleb128	4
	.byte		"TxIpduIdArrayLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	86
	.byte		0x1
.L145:
	.sleb128	4
	.byte		"RxIpduIdArrayLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L146:
	.sleb128	4
	.byte		"RxIPduDeferredArrayLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	90
	.byte		0x1
.L147:
	.sleb128	4
	.byte		"RxIPduImmediateArralLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L148:
	.sleb128	4
	.byte		"RxIPduRxDMArralLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	94
	.byte		0x1
.L149:
	.sleb128	4
	.byte		"IpduGroupArrayLength"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
	.sleb128	0
.L195:
.L201:
	.sleb128	3
	.4byte		.L194
	.uleb128	82
	.uleb128	1
	.4byte		.L242-.L2
	.uleb128	24
.L109:
	.sleb128	4
	.byte		"DescendentGroupList_Ref"
	.byte		0
	.4byte		.L243
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L110:
	.sleb128	4
	.byte		"ChildGroupList_Ref"
	.byte		0
	.4byte		.L243
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L111:
	.sleb128	4
	.byte		"AncestorGroupList_Ref"
	.byte		0
	.4byte		.L243
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L112:
	.sleb128	4
	.byte		"DescendentListLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L113:
	.sleb128	4
	.byte		"ChildListLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L114:
	.sleb128	4
	.byte		"AncestorListLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L115:
	.sleb128	4
	.byte		"ParentListLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L116:
	.sleb128	4
	.byte		"Flags"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L242:
.L206:
	.sleb128	3
	.4byte		.L194
	.uleb128	82
	.uleb128	1
	.4byte		.L246-.L2
	.uleb128	40
.L97:
	.sleb128	4
	.byte		"RxIPduId"
	.byte		0
	.4byte		.L237
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L98:
	.sleb128	4
	.byte		"RxGroupList_Ref"
	.byte		0
	.4byte		.L243
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L99:
	.sleb128	4
	.byte		"SignalIndex_Ref"
	.byte		0
	.4byte		.L219
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L100:
	.sleb128	4
	.byte		"ForeGroundBuffer_Ref"
	.byte		0
	.4byte		.L238
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L101:
	.sleb128	4
	.byte		"BackGroundBuffer_Ref"
	.byte		0
	.4byte		.L238
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L102:
	.sleb128	4
	.byte		"RxIpduFlags_Ref"
	.byte		0
	.4byte		.L247
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L103:
	.sleb128	4
	.byte		"IsBackGroundBufferUpdated_Ref"
	.byte		0
	.4byte		.L251
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L104:
	.sleb128	4
	.byte		"RxGroupListLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L105:
	.sleb128	4
	.byte		"NumberOfSignals"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L106:
	.sleb128	4
	.byte		"IpduLength"
	.byte		0
	.4byte		.L235
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L107:
	.sleb128	4
	.byte		"IPduFlags"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L108:
	.sleb128	4
	.byte		"Com_DeferredNotificationCall_Ref"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L246:
.L256:
	.sleb128	3
	.4byte		.L194
	.uleb128	82
	.uleb128	1
	.4byte		.L257-.L2
	.uleb128	4
.L95:
	.sleb128	4
	.byte		"Com_DeferredNotificationIndex"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L96:
	.sleb128	4
	.byte		"Com_DeferredNotificationIndexType"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L257:
.L250:
	.sleb128	3
	.4byte		.L194
	.uleb128	82
	.uleb128	1
	.4byte		.L258-.L2
	.uleb128	2
.L93:
	.sleb128	4
	.byte		"DeferredIPduReceived"
	.byte		0
	.4byte		.L253
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L94:
	.sleb128	4
	.byte		"IsBackGroundBufferUpdated"
	.byte		0
	.4byte		.L253
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L258:
.L213:
	.sleb128	3
	.4byte		.L194
	.uleb128	82
	.uleb128	1
	.4byte		.L259-.L2
	.uleb128	60
.L75:
	.sleb128	4
	.byte		"TxGroupList_Ref"
	.byte		0
	.4byte		.L243
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L76:
	.sleb128	4
	.byte		"IsIPduGroupEnabled_Ref"
	.byte		0
	.4byte		.L251
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L77:
	.sleb128	4
	.byte		"IsTxPending_Ref"
	.byte		0
	.4byte		.L251
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L78:
	.sleb128	4
	.byte		"IsConfirmationPending_Ref"
	.byte		0
	.4byte		.L251
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L79:
	.sleb128	4
	.byte		"IsConfirmationDeferred_Ref"
	.byte		0
	.4byte		.L251
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L80:
	.sleb128	4
	.byte		"CurrentTxMode_Ref"
	.byte		0
	.4byte		.L251
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L81:
	.sleb128	4
	.byte		"IsTransmissionFailed_Ref"
	.byte		0
	.4byte		.L251
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L82:
	.sleb128	4
	.byte		"Pdu"
	.byte		0
	.4byte		.L260
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L83:
	.sleb128	4
	.byte		"TxGroupListLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L84:
	.sleb128	4
	.byte		"Signals_Index"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L85:
	.sleb128	4
	.byte		"NumberOfSignals"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L86:
	.sleb128	4
	.byte		"SignalsWithUpdateBit_Ref"
	.byte		0
	.4byte		.L262
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L87:
	.sleb128	4
	.byte		"NumberOfSignalsWithUpdateBit"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L88:
	.sleb128	4
	.byte		"InitializeLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
.L89:
	.sleb128	4
	.byte		"TxMode"
	.byte		0
	.4byte		.L264
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L90:
	.sleb128	4
	.byte		"TargetId"
	.byte		0
	.4byte		.L237
	.sleb128	2
	.byte		0x23
	.uleb128	54
	.byte		0x1
.L91:
	.sleb128	4
	.byte		"IpduFlags"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L92:
	.sleb128	4
	.byte		"UnusedValue"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	58
	.byte		0x1
	.sleb128	0
.L259:
.L218:
	.sleb128	3
	.4byte		.L194
	.uleb128	82
	.uleb128	1
	.4byte		.L266-.L2
	.uleb128	56
.L54:
	.sleb128	4
	.byte		"ForeGroundBuffer_Ref"
	.byte		0
	.4byte		.L238
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L55:
	.sleb128	4
	.byte		"BackGroundBuffer_Ref"
	.byte		0
	.4byte		.L238
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L56:
	.sleb128	4
	.byte		"ShadowBuffer_Ref"
	.byte		0
	.4byte		.L238
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L57:
	.sleb128	4
	.byte		"UpdateBit_Ref"
	.byte		0
	.4byte		.L238
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L58:
	.sleb128	4
	.byte		"InitValue_Ref"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L59:
	.sleb128	4
	.byte		"IPDU"
	.byte		0
	.4byte		.L237
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L60:
	.sleb128	4
	.byte		"InvalidIndex"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L61:
	.sleb128	4
	.byte		"BytePosition"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L62:
	.sleb128	4
	.byte		"NotifyFunctionIndex"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L63:
	.sleb128	4
	.byte		"TimeoutFunctionIndex"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L64:
	.sleb128	4
	.byte		"SignalFlagsLT"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L65:
	.sleb128	4
	.byte		"UpdateBitMask"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L66:
	.sleb128	4
	.byte		"NotifyLength"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L67:
	.sleb128	4
	.byte		"MinimumReceiveLength"
	.byte		0
	.4byte		.L235
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L68:
	.sleb128	4
	.byte		"ComXf_Signal"
	.byte		0
	.4byte		.L270
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L266:
.L229:
	.sleb128	3
	.4byte		.L194
	.uleb128	82
	.uleb128	1
	.4byte		.L272-.L2
	.uleb128	4
.L52:
	.sleb128	4
	.byte		"Period"
	.byte		0
	.4byte		.L232
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L53:
	.sleb128	4
	.byte		"Offset"
	.byte		0
	.4byte		.L232
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L272:
.L271:
	.sleb128	3
	.4byte		.L273
	.uleb128	44
	.uleb128	1
	.4byte		.L274-.L2
	.uleb128	20
.L43:
	.sleb128	4
	.byte		"SignBitMask"
	.byte		0
	.4byte		.L191
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L44:
	.sleb128	4
	.byte		"BufferLength"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L45:
	.sleb128	4
	.byte		"Flags"
	.byte		0
	.4byte		.L223
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L46:
	.sleb128	4
	.byte		"Type"
	.byte		0
	.4byte		.L275
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L47:
	.sleb128	4
	.byte		"TransferProperty"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L48:
	.sleb128	4
	.byte		"PackingType"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L49:
	.sleb128	4
	.byte		"Mask1"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L50:
	.sleb128	4
	.byte		"Mask2"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L51:
	.sleb128	4
	.byte		"shift"
	.byte		0
	.4byte		.L240
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L274:
	.section	.debug_info,,n
.L261:
	.sleb128	5
	.4byte		.L277
	.uleb128	69
	.uleb128	1
	.4byte		.L278-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L39:
	.sleb128	4
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L239
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L40:
	.sleb128	4
	.byte		"SduLength"
	.byte		0
	.4byte		.L235
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L278:
	.section	.debug_info,,n
.L167:
	.sleb128	6
	.4byte		.L194
	.uleb128	82
	.uleb128	1
	.4byte		.L279-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"COM_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"COM_INIT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L279:
.L276:
	.sleb128	6
	.4byte		.L273
	.uleb128	44
	.uleb128	1
	.4byte		.L280-.L2
	.uleb128	4
	.sleb128	7
	.byte		"COM_BOOLEAN"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"COM_UINT8"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"COM_UINT16"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"COM_UINT32"
	.byte		0
	.sleb128	3
	.sleb128	7
	.byte		"COM_SINT8"
	.byte		0
	.sleb128	4
	.sleb128	7
	.byte		"COM_SINT16"
	.byte		0
	.sleb128	5
	.sleb128	7
	.byte		"COM_SINT32"
	.byte		0
	.sleb128	6
	.sleb128	7
	.byte		"COM_BYTES"
	.byte		0
	.sleb128	7
	.sleb128	7
	.byte		"COM_UINT8_DYN"
	.byte		0
	.sleb128	8
	.sleb128	7
	.byte		"COM_FLOAT32"
	.byte		0
	.sleb128	9
	.sleb128	7
	.byte		"COM_FLOAT64"
	.byte		0
	.sleb128	10
	.sleb128	0
.L280:
	.section	.debug_info,,n
.L166:
	.sleb128	8
	.byte		"Com_StatusType"
	.byte		0
	.4byte		.L167
.L171:
	.sleb128	8
	.byte		"Com_ConfigType"
	.byte		0
	.4byte		.L172
	.section	.debug_info,,n
.L170:
	.sleb128	9
	.4byte		.L171
	.section	.debug_info,,n
.L169:
	.sleb128	10
	.4byte		.L170
	.section	.debug_info,,n
.L179:
	.sleb128	11
	.4byte		.L180-.L2
	.byte		0x1
	.sleb128	0
.L180:
.L178:
	.sleb128	10
	.4byte		.L179
.L177:
	.sleb128	8
	.byte		"Com_TimeOutFunction"
	.byte		0
	.4byte		.L178
.L176:
	.sleb128	9
	.4byte		.L177
	.section	.debug_info,,n
.L174:
	.sleb128	12
	.4byte		.L175-.L2
	.4byte		.L176
	.section	.debug_info,,n
	.sleb128	13
	.uleb128	0
	.sleb128	0
.L175:
.L187:
	.sleb128	11
	.4byte		.L188-.L2
	.byte		0x1
	.sleb128	0
.L188:
.L186:
	.sleb128	10
	.4byte		.L187
.L185:
	.sleb128	8
	.byte		"Com_NotifyFunction"
	.byte		0
	.4byte		.L186
.L184:
	.sleb128	9
	.4byte		.L185
.L182:
	.sleb128	12
	.4byte		.L183-.L2
	.4byte		.L184
	.sleb128	13
	.uleb128	0
	.sleb128	0
.L183:
	.section	.debug_info,,n
.L192:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L191:
	.sleb128	8
	.byte		"uint32"
	.byte		0
	.4byte		.L192
.L190:
	.sleb128	9
	.4byte		.L191
.L196:
	.sleb128	10
	.4byte		.L190
.L200:
	.sleb128	8
	.byte		"Com_IpduGroup"
	.byte		0
	.4byte		.L201
.L199:
	.sleb128	9
	.4byte		.L200
.L198:
	.sleb128	10
	.4byte		.L199
.L197:
	.sleb128	9
	.4byte		.L198
.L205:
	.sleb128	8
	.byte		"Com_RxIpdu"
	.byte		0
	.4byte		.L206
.L204:
	.sleb128	9
	.4byte		.L205
.L203:
	.sleb128	10
	.4byte		.L204
.L202:
	.sleb128	9
	.4byte		.L203
.L208:
	.sleb128	10
	.4byte		.L202
.L207:
	.sleb128	9
	.4byte		.L208
.L212:
	.sleb128	8
	.byte		"Com_TxIpdu"
	.byte		0
	.4byte		.L213
.L211:
	.sleb128	9
	.4byte		.L212
.L210:
	.sleb128	10
	.4byte		.L211
.L209:
	.sleb128	9
	.4byte		.L210
.L217:
	.sleb128	8
	.byte		"Com_SignalsPB"
	.byte		0
	.4byte		.L218
.L216:
	.sleb128	9
	.4byte		.L217
.L215:
	.sleb128	10
	.4byte		.L216
.L214:
	.sleb128	9
	.4byte		.L215
.L224:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L223:
	.sleb128	8
	.byte		"uint16"
	.byte		0
	.4byte		.L224
.L222:
	.sleb128	8
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L223
.L221:
	.sleb128	9
	.4byte		.L222
.L220:
	.sleb128	10
	.4byte		.L221
.L219:
	.sleb128	9
	.4byte		.L220
.L228:
	.sleb128	8
	.byte		"Com_TxModeType"
	.byte		0
	.4byte		.L229
.L227:
	.sleb128	9
	.4byte		.L228
.L226:
	.sleb128	10
	.4byte		.L227
.L225:
	.sleb128	9
	.4byte		.L226
.L232:
	.sleb128	8
	.byte		"Com_Timer"
	.byte		0
	.4byte		.L223
.L231:
	.sleb128	10
	.4byte		.L232
.L230:
	.sleb128	9
	.4byte		.L231
.L235:
	.sleb128	8
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L223
.L234:
	.sleb128	10
	.4byte		.L235
.L233:
	.sleb128	9
	.4byte		.L234
.L237:
	.sleb128	8
	.byte		"PduIdType"
	.byte		0
	.4byte		.L223
.L236:
	.sleb128	10
	.4byte		.L237
.L241:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L240:
	.sleb128	8
	.byte		"uint8"
	.byte		0
	.4byte		.L241
.L239:
	.sleb128	10
	.4byte		.L240
.L238:
	.sleb128	9
	.4byte		.L239
.L245:
	.sleb128	9
	.4byte		.L237
.L244:
	.sleb128	10
	.4byte		.L245
.L243:
	.sleb128	9
	.4byte		.L244
.L249:
	.sleb128	8
	.byte		"Com_RxIPduFlag"
	.byte		0
	.4byte		.L250
.L248:
	.sleb128	10
	.4byte		.L249
.L247:
	.sleb128	9
	.4byte		.L248
.L253:
	.sleb128	8
	.byte		"boolean"
	.byte		0
	.4byte		.L241
.L252:
	.sleb128	10
	.4byte		.L253
.L251:
	.sleb128	9
	.4byte		.L252
.L255:
	.sleb128	8
	.byte		"Com_DeferredNotificationCall"
	.byte		0
	.4byte		.L256
.L254:
	.sleb128	10
	.4byte		.L255
.L260:
	.sleb128	8
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L261
.L263:
	.sleb128	9
	.4byte		.L223
.L262:
	.sleb128	10
	.4byte		.L263
.L264:
	.sleb128	12
	.4byte		.L265-.L2
	.4byte		.L223
	.sleb128	13
	.uleb128	0
	.sleb128	0
.L265:
.L269:
	.sleb128	9
	.4byte		.L240
.L268:
	.sleb128	10
	.4byte		.L269
.L267:
	.sleb128	9
	.4byte		.L268
.L270:
	.sleb128	8
	.byte		"ComXf_SignalsPB"
	.byte		0
	.4byte		.L271
.L275:
	.sleb128	8
	.byte		"Com_SignalType"
	.byte		0
	.4byte		.L276
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Com_Lcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Com_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Com_Lcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Com_Lcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Com_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Com_Lcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\Com_Lcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
