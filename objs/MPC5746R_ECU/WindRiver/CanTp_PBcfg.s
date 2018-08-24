#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTp_PBcfg.c"
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
	.0byte		.L123
	.section	.text_vle
	.type		CanTp_RxNsduFound_a,@object
	.size		CanTp_RxNsduFound_a,4
	.align		1
CanTp_RxNsduFound_a:
	.short		1
	.short		0
	.section	.text_vle
	.type		CanTp_RxNSdu_a,@object
	.size		CanTp_RxNSdu_a,48
	.align		2
CanTp_RxNSdu_a:
	.long		0
	.byte		0
	.space		3
	.long		1
	.long		0
	.byte		0
	.space		1
	.short		0
	.long		0
	.long		0
	.byte		0
	.space		3
	.long		1
	.long		1
	.byte		0
	.space		1
	.short		1
	.long		0
	.section	.text_vle
	.type		CanTp_RxNSduConfig_a,@object
	.size		CanTp_RxNSduConfig_a,32
	.align		1
CanTp_RxNSduConfig_a:
	.byte		0
	.space		1
	.short		101
	.short		11
	.short		0
	.short		255
	.byte		10
	.space		1
	.short		0
	.short		0
	.byte		0
	.space		1
	.short		101
	.short		91
	.short		101
	.short		255
	.byte		10
	.space		1
	.short		0
	.short		8
	.section	.text_vle
	.type		CanTp_TxNSdu_a,@object
	.size		CanTp_TxNSdu_a,28
	.align		2
CanTp_TxNSdu_a:
	.long		0
	.byte		0
	.space		3
	.long		1
	.long		0
	.long		1
	.byte		0
	.space		3
	.long		0
	.section	.text_vle
	.type		CanTp_TxNSduConfig_a,@object
	.size		CanTp_TxNSduConfig_a,12
	.align		1
CanTp_TxNSduConfig_a:
	.short		101
	.short		101
	.short		101
	.short		8
	.short		0
	.short		0
	.section	.text_vle
	.type		CanTp_RxLookup_a,@object
	.size		CanTp_RxLookup_a,36
	.align		2
CanTp_RxLookup_a:
	.short		0
	.short		0
	.long		0
	.byte		0
	.byte		0
	.space		2
	.short		1
	.short		2
	.long		0
	.byte		0
	.byte		0
	.space		2
	.short		0
	.short		0
	.long		0
	.byte		0
	.byte		1
	.space		2
	.section	.text_vle
	.type		CanTp_GeneralConfig,@object
	.size		CanTp_GeneralConfig,16
	.align		1
CanTp_GeneralConfig:
	.short		1
	.short		1
	.short		2
	.byte		1
	.space		1
	.short		100
	.byte		0
	.space		1
	.short		1
	.short		1
	.section	.text_vle
	.type		CANTP_PBtoPCHashValue,@object
	.size		CANTP_PBtoPCHashValue,4
	.align		2
CANTP_PBtoPCHashValue:
	.long		550543017
	.section	.text_vle
	.type		CANTP_PBtoLTHashValue,@object
	.size		CANTP_PBtoLTHashValue,4
	.align		2
CANTP_PBtoLTHashValue:
	.long		1964356413
	.section	.text_vle
	.type		CanTpConfig,@object
	.size		CanTpConfig,48
	.align		2
	.globl		CanTpConfig
CanTpConfig:
	.long		CanTp_RxNSduConfig_a
	.long		CanTp_TxNSduConfig_a
	.long		CanTp_RxNSdu_a
	.long		CanTp_TxNSdu_a
	.long		CanTp_RxLookup_a
	.long		CanTp_GeneralConfig
	.long		CANTP_PBtoPCHashValue
	.long		CANTP_PBtoLTHashValue
	.long		CanTp_RxNSdu_BS_STmin_a
	.long		CanTp_Channel_a
	.long		CanTp_RxNsduFound_a
	.long		CanTp_ConfirmationPending_a
	.section	.text_vle
#$$ld
.L5:
.L188:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Types.h"
.L124:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\CanTp_PBcfg.c"
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\CanTp_PBcfg.c"
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
.L123:
	.sleb128	2
	.4byte		.L124
	.uleb128	35
	.uleb128	38
	.byte		"CanTp_RxNsduFound_a"
	.byte		0
	.4byte		.L125
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_RxNsduFound_a
	.section	.debug_info,,n
	.section	.debug_info,,n
.L130:
	.sleb128	2
	.4byte		.L124
	.uleb128	48
	.uleb128	46
	.byte		"CanTp_RxNSdu_a"
	.byte		0
	.4byte		.L131
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_RxNSdu_a
	.section	.debug_info,,n
.L136:
	.sleb128	2
	.4byte		.L124
	.uleb128	99
	.uleb128	52
	.byte		"CanTp_RxNSduConfig_a"
	.byte		0
	.4byte		.L137
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_RxNSduConfig_a
	.section	.debug_info,,n
.L142:
	.sleb128	2
	.4byte		.L124
	.uleb128	156
	.uleb128	46
	.byte		"CanTp_TxNSdu_a"
	.byte		0
	.4byte		.L143
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_TxNSdu_a
	.section	.debug_info,,n
.L148:
	.sleb128	2
	.4byte		.L124
	.uleb128	184
	.uleb128	52
	.byte		"CanTp_TxNSduConfig_a"
	.byte		0
	.4byte		.L149
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_TxNSduConfig_a
	.section	.debug_info,,n
.L154:
	.sleb128	2
	.4byte		.L124
	.uleb128	209
	.uleb128	48
	.byte		"CanTp_RxLookup_a"
	.byte		0
	.4byte		.L155
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_RxLookup_a
	.section	.debug_info,,n
.L160:
	.sleb128	2
	.4byte		.L124
	.uleb128	265
	.uleb128	53
	.byte		"CanTp_GeneralConfig"
	.byte		0
	.4byte		.L161
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_GeneralConfig
	.section	.debug_info,,n
.L164:
	.sleb128	2
	.4byte		.L124
	.uleb128	301
	.uleb128	43
	.byte		"CanTp_Channel_a"
	.byte		0
	.4byte		.L165
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_Channel_a
	.0byte		.L164
	.lcomm		CanTp_Channel_a,52,1
.L169:
	.sleb128	2
	.4byte		.L124
	.uleb128	304
	.uleb128	48
	.byte		"CanTp_RxNSdu_BS_STmin_a"
	.byte		0
	.4byte		.L170
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_RxNSdu_BS_STmin_a
	.lcomm		CanTp_RxNSdu_BS_STmin_a,4,0
.L174:
	.sleb128	2
	.4byte		.L124
	.uleb128	312
	.uleb128	35
	.byte		"CanTp_ConfirmationPending_a"
	.byte		0
	.4byte		.L175
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_ConfirmationPending_a
	.lcomm		CanTp_ConfirmationPending_a,1,2
.L179:
	.sleb128	2
	.4byte		.L124
	.uleb128	321
	.uleb128	37
	.byte		"CANTP_PBtoPCHashValue"
	.byte		0
	.4byte		.L180
	.sleb128	5
	.byte		0x3
	.4byte		CANTP_PBtoPCHashValue
	.section	.debug_info,,n
.L183:
	.sleb128	2
	.4byte		.L124
	.uleb128	322
	.uleb128	37
	.byte		"CANTP_PBtoLTHashValue"
	.byte		0
	.4byte		.L180
	.sleb128	5
	.byte		0x3
	.4byte		CANTP_PBtoLTHashValue
	.section	.debug_info,,n
.L184:
	.sleb128	3
	.byte		0x1
	.4byte		.L124
	.uleb128	331
	.uleb128	41
	.byte		"CanTpConfig"
	.byte		0
	.4byte		.L185
	.sleb128	5
	.byte		0x3
	.4byte		CanTpConfig
	.section	.debug_info,,n
.L187:
	.sleb128	4
	.4byte		.L188
	.uleb128	117
	.uleb128	1
	.4byte		.L189-.L2
	.uleb128	48
	.section	.debug_info,,n
.L107:
	.sleb128	5
	.byte		"CanTp_RxConfig_p"
	.byte		0
	.4byte		.L190
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L108:
	.sleb128	5
	.byte		"CanTp_TxConfig_p"
	.byte		0
	.4byte		.L191
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L109:
	.sleb128	5
	.byte		"CanTp_CfgRxNSdu_p"
	.byte		0
	.4byte		.L192
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L110:
	.sleb128	5
	.byte		"CanTp_CfgTxNSdu_p"
	.byte		0
	.4byte		.L193
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L111:
	.sleb128	5
	.byte		"CanTp_CfgRxLookup_p"
	.byte		0
	.4byte		.L194
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L112:
	.sleb128	5
	.byte		"CanTp_CfgGeneralConfig_p"
	.byte		0
	.4byte		.L195
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L113:
	.sleb128	5
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L196
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L114:
	.sleb128	5
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L196
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L115:
	.sleb128	5
	.byte		"CanTp_RxNSduParamsConfig_p"
	.byte		0
	.4byte		.L197
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L116:
	.sleb128	5
	.byte		"CanTp_CfgChannel_p"
	.byte		0
	.4byte		.L198
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L117:
	.sleb128	5
	.byte		"CanTp_CfgRxNsduFound_p"
	.byte		0
	.4byte		.L199
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L118:
	.sleb128	5
	.byte		"CanTp_CfgConfirmationPending_p"
	.byte		0
	.4byte		.L200
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L189:
.L173:
	.sleb128	4
	.4byte		.L188
	.uleb128	117
	.uleb128	1
	.4byte		.L201-.L2
	.uleb128	2
.L105:
	.sleb128	5
	.byte		"CanTpBs_u8"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L106:
	.sleb128	5
	.byte		"CanTpSTmin_u8"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L201:
.L163:
	.sleb128	4
	.4byte		.L188
	.uleb128	117
	.uleb128	1
	.4byte		.L203-.L2
	.uleb128	16
.L97:
	.sleb128	5
	.byte		"TxNSduId_Max"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L98:
	.sleb128	5
	.byte		"RxNPduId_Max"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L99:
	.sleb128	5
	.byte		"RxNSduId_Count"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L100:
	.sleb128	5
	.byte		"Channel_Max_u8"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L101:
	.sleb128	5
	.byte		"CanTp_Mf_Resolution_u16"
	.byte		0
	.4byte		.L127
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L102:
	.sleb128	5
	.byte		"CanTp_Cfg_PaddingByte_u8"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L103:
	.sleb128	5
	.byte		"RxNsduId_Max_u16"
	.byte		0
	.4byte		.L127
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L104:
	.sleb128	5
	.byte		"ConfirmationLength"
	.byte		0
	.4byte		.L127
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L203:
.L159:
	.sleb128	4
	.4byte		.L188
	.uleb128	117
	.uleb128	1
	.4byte		.L207-.L2
	.uleb128	12
.L92:
	.sleb128	5
	.byte		"PduIndex"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	5
	.byte		"NextPdu"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L94:
	.sleb128	5
	.byte		"AddressingFormat"
	.byte		0
	.4byte		.L208
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L95:
	.sleb128	5
	.byte		"N_SA_AE_u8"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L96:
	.sleb128	5
	.byte		"Direction_b"
	.byte		0
	.4byte		.L211
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
	.sleb128	0
.L207:
.L153:
	.sleb128	4
	.4byte		.L188
	.uleb128	117
	.uleb128	1
	.4byte		.L212-.L2
	.uleb128	12
.L86:
	.sleb128	5
	.byte		"CanTpNas_u16"
	.byte		0
	.4byte		.L127
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L87:
	.sleb128	5
	.byte		"CanTpNbs_u16"
	.byte		0
	.4byte		.L127
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L88:
	.sleb128	5
	.byte		"CanTpNcs_u16"
	.byte		0
	.4byte		.L127
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L89:
	.sleb128	5
	.byte		"CanTpTxCanIfNPduId"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L90:
	.sleb128	5
	.byte		"CanTpTxConfirmationId"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L91:
	.sleb128	5
	.byte		"CanTpPduRConfId"
	.byte		0
	.4byte		.L127
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L212:
.L147:
	.sleb128	4
	.4byte		.L188
	.uleb128	117
	.uleb128	1
	.4byte		.L213-.L2
	.uleb128	28
.L79:
	.sleb128	5
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L208
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L80:
	.sleb128	5
	.byte		"CanTpTxChannel_u8"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L81:
	.sleb128	5
	.byte		"CanTpTxPaddingActivation"
	.byte		0
	.4byte		.L214
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L82:
	.sleb128	5
	.byte		"CanTpTc_b"
	.byte		0
	.4byte		.L214
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L83:
	.sleb128	5
	.byte		"CanTpTxTaType"
	.byte		0
	.4byte		.L217
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L84:
	.sleb128	5
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L85:
	.sleb128	5
	.byte		"FrameType"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L213:
.L141:
	.sleb128	4
	.4byte		.L188
	.uleb128	117
	.uleb128	1
	.4byte		.L223-.L2
	.uleb128	16
.L71:
	.sleb128	5
	.byte		"CanTpBsConf_u8"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L72:
	.sleb128	5
	.byte		"CanTpNar_u16"
	.byte		0
	.4byte		.L127
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L73:
	.sleb128	5
	.byte		"CanTpNbr_u16"
	.byte		0
	.4byte		.L127
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L74:
	.sleb128	5
	.byte		"CanTpNcr_u16"
	.byte		0
	.4byte		.L127
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L75:
	.sleb128	5
	.byte		"CanTpRxWftMax_u16"
	.byte		0
	.4byte		.L127
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L76:
	.sleb128	5
	.byte		"CanTpSTminConf_u8"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L77:
	.sleb128	5
	.byte		"CanTpTxFcNPduIdConf"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L78:
	.sleb128	5
	.byte		"CanTpTxFcNPduCanIf"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L223:
.L135:
	.sleb128	4
	.4byte		.L188
	.uleb128	117
	.uleb128	1
	.4byte		.L224-.L2
	.uleb128	24
.L64:
	.sleb128	5
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L208
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L65:
	.sleb128	5
	.byte		"CanTpRxChannel_u8"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L66:
	.sleb128	5
	.byte		"CanTpRxPaddingActivation"
	.byte		0
	.4byte		.L214
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L67:
	.sleb128	5
	.byte		"CanTpRxTaType"
	.byte		0
	.4byte		.L217
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L68:
	.sleb128	5
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L69:
	.sleb128	5
	.byte		"CanTpRxNSduId"
	.byte		0
	.4byte		.L204
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L70:
	.sleb128	5
	.byte		"FrameType"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L224:
.L168:
	.sleb128	4
	.4byte		.L188
	.uleb128	117
	.uleb128	1
	.4byte		.L225-.L2
	.uleb128	52
.L39:
	.sleb128	5
	.byte		"ChannelIdx_u8"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L40:
	.sleb128	5
	.byte		"IPduId"
	.byte		0
	.4byte		.L205
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L41:
	.sleb128	5
	.byte		"TimeoutTicks_u16"
	.byte		0
	.4byte		.L128
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L42:
	.sleb128	5
	.byte		"StMinTicks_u16"
	.byte		0
	.4byte		.L128
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L43:
	.sleb128	5
	.byte		"TotalLength"
	.byte		0
	.4byte		.L226
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L44:
	.sleb128	5
	.byte		"ProcessedLength"
	.byte		0
	.4byte		.L226
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L45:
	.sleb128	5
	.byte		"ProvidedBufferSize"
	.byte		0
	.4byte		.L226
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L46:
	.sleb128	5
	.byte		"State_u8"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L47:
	.sleb128	5
	.byte		"NextState_u8"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L48:
	.sleb128	5
	.byte		"BlockSize_u16"
	.byte		0
	.4byte		.L128
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L49:
	.sleb128	5
	.byte		"WftCounter_u16"
	.byte		0
	.4byte		.L128
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L50:
	.sleb128	5
	.byte		"SequenceNumber_u8"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L51:
	.sleb128	5
	.byte		"StMin_u8"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L52:
	.sleb128	5
	.byte		"TempBuffer_au8"
	.byte		0
	.4byte		.L227
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L53:
	.sleb128	5
	.byte		"TempLength_u8"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L54:
	.sleb128	5
	.byte		"CanIfDLC_u8"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L55:
	.sleb128	5
	.byte		"CanIfData_au8"
	.byte		0
	.4byte		.L229
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L56:
	.sleb128	5
	.byte		"ULayerIndFlag_b"
	.byte		0
	.4byte		.L177
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L57:
	.sleb128	5
	.byte		"ShutdownFlag_b"
	.byte		0
	.4byte		.L177
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L58:
	.sleb128	5
	.byte		"RemainingCFInBlock_u16"
	.byte		0
	.4byte		.L128
	.sleb128	2
	.byte		0x23
	.uleb128	42
	.byte		0x1
.L59:
	.sleb128	5
	.byte		"LastCFofNSduFlag_b"
	.byte		0
	.4byte		.L177
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L60:
	.sleb128	5
	.byte		"RequiredBufferSize"
	.byte		0
	.4byte		.L226
	.sleb128	2
	.byte		0x23
	.uleb128	46
	.byte		0x1
.L61:
	.sleb128	5
	.byte		"CallerApiId"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L62:
	.sleb128	5
	.byte		"FrameSize"
	.byte		0
	.4byte		.L202
	.sleb128	2
	.byte		0x23
	.uleb128	49
	.byte		0x1
.L63:
	.sleb128	5
	.byte		"CriticalSectionStatus_b"
	.byte		0
	.4byte		.L177
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
	.sleb128	0
.L225:
	.section	.debug_info,,n
.L222:
	.sleb128	6
	.4byte		.L188
	.uleb128	117
	.uleb128	1
	.4byte		.L231-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"CANTP_FRAME_TYPE_CAN20"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"CANTP_FRAME_TYPE_CANFD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L231:
.L219:
	.sleb128	6
	.4byte		.L188
	.uleb128	108
	.uleb128	1
	.4byte		.L232-.L2
	.uleb128	4
	.sleb128	7
	.byte		"CANTP_FUNCTIONAL"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"CANTP_PHYSICAL"
	.byte		0
	.sleb128	1
	.sleb128	0
.L232:
.L216:
	.sleb128	6
	.4byte		.L188
	.uleb128	98
	.uleb128	1
	.4byte		.L233-.L2
	.uleb128	4
	.sleb128	7
	.byte		"CANTP_OFF"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"CANTP_ON"
	.byte		0
	.sleb128	1
	.sleb128	0
.L233:
.L210:
	.sleb128	6
	.4byte		.L188
	.uleb128	87
	.uleb128	1
	.4byte		.L234-.L2
	.uleb128	4
	.sleb128	7
	.byte		"CANTP_STANDARD"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"CANTP_EXTENDED"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"CANTP_MIXED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L234:
	.section	.debug_info,,n
.L129:
	.sleb128	8
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L128:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L129
	.section	.debug_info,,n
.L127:
	.sleb128	10
	.4byte		.L128
	.section	.debug_info,,n
.L125:
	.sleb128	11
	.4byte		.L126-.L2
	.4byte		.L127
	.section	.debug_info,,n
	.sleb128	12
	.uleb128	1
	.sleb128	0
.L126:
.L134:
	.sleb128	9
	.byte		"CanTp_RxNSdu_t"
	.byte		0
	.4byte		.L135
.L133:
	.sleb128	10
	.4byte		.L134
.L131:
	.sleb128	11
	.4byte		.L132-.L2
	.4byte		.L133
	.sleb128	12
	.uleb128	1
	.sleb128	0
.L132:
.L140:
	.sleb128	9
	.byte		"CanTp_RxNSduConfig_t"
	.byte		0
	.4byte		.L141
.L139:
	.sleb128	10
	.4byte		.L140
.L137:
	.sleb128	11
	.4byte		.L138-.L2
	.4byte		.L139
	.sleb128	12
	.uleb128	1
	.sleb128	0
.L138:
.L146:
	.sleb128	9
	.byte		"CanTp_TxNSdu_t"
	.byte		0
	.4byte		.L147
.L145:
	.sleb128	10
	.4byte		.L146
.L143:
	.sleb128	11
	.4byte		.L144-.L2
	.4byte		.L145
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L144:
.L152:
	.sleb128	9
	.byte		"CanTp_TxNSduConfig_t"
	.byte		0
	.4byte		.L153
.L151:
	.sleb128	10
	.4byte		.L152
.L149:
	.sleb128	11
	.4byte		.L150-.L2
	.4byte		.L151
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L150:
.L158:
	.sleb128	9
	.byte		"CanTp_RxLookup_t"
	.byte		0
	.4byte		.L159
.L157:
	.sleb128	10
	.4byte		.L158
.L155:
	.sleb128	11
	.4byte		.L156-.L2
	.4byte		.L157
	.sleb128	12
	.uleb128	2
	.sleb128	0
.L156:
.L162:
	.sleb128	9
	.byte		"CanTp_GeneralConfig_t"
	.byte		0
	.4byte		.L163
.L161:
	.sleb128	10
	.4byte		.L162
.L167:
	.sleb128	9
	.byte		"CanTp_Channel_t"
	.byte		0
	.4byte		.L168
.L165:
	.sleb128	11
	.4byte		.L166-.L2
	.4byte		.L167
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L166:
.L172:
	.sleb128	9
	.byte		"CanTp_RxNSduParams_t"
	.byte		0
	.4byte		.L173
.L170:
	.sleb128	11
	.4byte		.L171-.L2
	.4byte		.L172
	.sleb128	12
	.uleb128	1
	.sleb128	0
.L171:
.L178:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L177:
	.sleb128	9
	.byte		"boolean"
	.byte		0
	.4byte		.L178
.L175:
	.sleb128	11
	.4byte		.L176-.L2
	.4byte		.L177
	.sleb128	12
	.uleb128	0
	.sleb128	0
.L176:
.L182:
	.sleb128	8
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L181:
	.sleb128	9
	.byte		"uint32"
	.byte		0
	.4byte		.L182
.L180:
	.sleb128	10
	.4byte		.L181
.L186:
	.sleb128	9
	.byte		"CanTp_ConfigType"
	.byte		0
	.4byte		.L187
.L185:
	.sleb128	10
	.4byte		.L186
	.section	.debug_info,,n
.L190:
	.sleb128	13
	.4byte		.L139
.L191:
	.sleb128	13
	.4byte		.L151
.L192:
	.sleb128	13
	.4byte		.L133
.L193:
	.sleb128	13
	.4byte		.L145
.L194:
	.sleb128	13
	.4byte		.L157
.L195:
	.sleb128	13
	.4byte		.L161
.L196:
	.sleb128	13
	.4byte		.L180
.L197:
	.sleb128	13
	.4byte		.L172
.L198:
	.sleb128	13
	.4byte		.L167
.L199:
	.sleb128	13
	.4byte		.L127
.L200:
	.sleb128	13
	.4byte		.L177
.L202:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L178
.L205:
	.sleb128	9
	.byte		"PduIdType"
	.byte		0
	.4byte		.L128
.L204:
	.sleb128	10
	.4byte		.L205
.L206:
	.sleb128	10
	.4byte		.L202
.L209:
	.sleb128	9
	.byte		"CanTp_AddressingMode_t"
	.byte		0
	.4byte		.L210
.L208:
	.sleb128	10
	.4byte		.L209
.L211:
	.sleb128	10
	.4byte		.L177
.L215:
	.sleb128	9
	.byte		"CanTp_Status_t"
	.byte		0
	.4byte		.L216
.L214:
	.sleb128	10
	.4byte		.L215
.L218:
	.sleb128	9
	.byte		"CanTp_TaType_t"
	.byte		0
	.4byte		.L219
.L217:
	.sleb128	10
	.4byte		.L218
.L221:
	.sleb128	9
	.byte		"CanTp_FrameType_t"
	.byte		0
	.4byte		.L222
.L220:
	.sleb128	10
	.4byte		.L221
.L226:
	.sleb128	9
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L128
.L227:
	.sleb128	11
	.4byte		.L228-.L2
	.4byte		.L202
	.sleb128	12
	.uleb128	6
	.sleb128	0
.L228:
.L229:
	.sleb128	11
	.4byte		.L230-.L2
	.4byte		.L202
	.sleb128	12
	.uleb128	7
	.sleb128	0
.L230:
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\CanTp_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
