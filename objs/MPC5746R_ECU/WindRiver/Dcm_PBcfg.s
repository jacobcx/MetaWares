#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Dcm_PBcfg.c"
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
	.0byte		.L523
	.section	.text_vle
	.type		dcmCfgServiceSupport_0,@object
	.size		dcmCfgServiceSupport_0,8
	.align		2
dcmCfgServiceSupport_0:
	.byte		0
	.byte		0
	.byte		17
	.byte		2
	.byte		132
	.byte		64
	.byte		0
	.byte		64
	.section	.text_vle
	.type		PBtoPCHashValue,@object
	.size		PBtoPCHashValue,4
	.align		2
PBtoPCHashValue:
	.long		-2121275950
	.section	.text_vle
	.type		PBtoLTHashValue,@object
	.size		PBtoLTHashValue,4
	.align		2
PBtoLTHashValue:
	.long		-418497547
	.section	.text_vle
	.type		dcmCfgBuffers,@object
	.size		dcmCfgBuffers,32
	.align		2
dcmCfgBuffers:
	.byte		0
	.space		1
	.short		256
	.long		dcmCfgBuffer_0
	.long		dcmCfgBufferStatus
	.long		dcmCfgBufferPduInfo
	.byte		1
	.space		1
	.short		256
	.long		dcmCfgBuffer_1
	.long		dcmCfgBufferStatus+12
	.long		dcmCfgBufferPduInfo+8
	.section	.text_vle
	.type		dcmCfgProtocols,@object
	.size		dcmCfgProtocols,10
	.align		1
dcmCfgProtocols:
	.byte		3
	.byte		0
	.byte		0
	.byte		1
	.short		50
	.short		0
	.short		0
	.section	.text_vle
	.type		dcmCfgTxChannels,@object
	.size		dcmCfgTxChannels,20
	.align		2
dcmCfgTxChannels:
	.short		0
	.short		0
	.long		dcmCfgBuffers
	.long		dcmCfgActiveTxBufferPointers
	.long		dcmCfgRxChannelPointers
	.long		dcmCfgTxChannelBusy
	.section	.text_vle
	.type		dcmCfgRxChannels,@object
	.size		dcmCfgRxChannels,88
	.align		2
dcmCfgRxChannels:
	.short		0
	.byte		0
	.space		1
	.short		0
	.short		0
	.byte		0
	.space		3
	.long		dcmCfgBuffers
	.long		dcmCfgBuffers+16
	.long		dcmCfgProtocols
	.long		dcmCfgTxChannels
	.long		1
	.long		dcmCfgChannelState
	.long		dcmCfgChannelCommMode
	.long		0
	.short		1
	.byte		0
	.space		1
	.short		0
	.short		0
	.byte		0
	.space		3
	.long		dcmCfgBuffers
	.long		dcmCfgBuffers+16
	.long		dcmCfgProtocols
	.long		dcmCfgTxChannels
	.long		0
	.long		dcmCfgChannelState+4
	.long		dcmCfgChannelCommMode
	.long		0
	.section	.text_vle
	.type		dcmCfgServiceSupportTable,@object
	.size		dcmCfgServiceSupportTable,8
	.align		2
dcmCfgServiceSupportTable:
	.byte		0
	.space		3
	.long		dcmCfgServiceSupport_0
	.section	.text_vle
	.type		DcmConfigSet,@object
	.size		DcmConfigSet,52
	.align		2
	.globl		DcmConfigSet
DcmConfigSet:
	.short		1
	.short		1
	.short		1
	.short		2
	.long		dcmCfgRxChannels
	.long		dcmCfgTxChannels
	.long		0
	.byte		10
	.space		3
	.long		0
	.long		0
	.long		0
	.long		0
	.long		dcmCfgServiceSupportTable
	.long		PBtoPCHashValue
	.long		PBtoLTHashValue
	.section	.text_vle
#$$ld
.L5:
.L625:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L560:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dcm\\ssc\\make\\..\\inc\\Dcm_PBCfg_Types.h"
.L475:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\Dcm_PBcfg.c"
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
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\Dcm_PBcfg.c"
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
.L474:
	.sleb128	2
	.4byte		.L475
	.uleb128	98
	.uleb128	30
	.byte		"dcmCfgBuffer_0"
	.byte		0
	.4byte		.L476
	.sleb128	5
	.byte		0x3
	.4byte		dcmCfgBuffer_0
	.0byte		.L474
	.lcomm		dcmCfgBuffer_0,256,2
.L480:
	.sleb128	2
	.4byte		.L475
	.uleb128	99
	.uleb128	30
	.byte		"dcmCfgBuffer_1"
	.byte		0
	.4byte		.L481
	.sleb128	5
	.byte		0x3
	.4byte		dcmCfgBuffer_1
	.lcomm		dcmCfgBuffer_1,3,2
.L483:
	.sleb128	2
	.4byte		.L475
	.uleb128	107
	.uleb128	47
	.byte		"dcmCfgBufferStatus"
	.byte		0
	.4byte		.L484
	.sleb128	5
	.byte		0x3
	.4byte		dcmCfgBufferStatus
	.lcomm		dcmCfgBufferStatus,24,2
.L488:
	.sleb128	2
	.4byte		.L475
	.uleb128	109
	.uleb128	35
	.byte		"dcmCfgBufferPduInfo"
	.byte		0
	.4byte		.L489
	.sleb128	5
	.byte		0x3
	.4byte		dcmCfgBufferPduInfo
	.lcomm		dcmCfgBufferPduInfo,16,2
.L493:
	.sleb128	2
	.4byte		.L475
	.uleb128	117
	.uleb128	30
	.byte		"dcmCfgTxChannelBusy"
	.byte		0
	.4byte		.L494
	.sleb128	5
	.byte		0x3
	.4byte		dcmCfgTxChannelBusy
	.lcomm		dcmCfgTxChannelBusy,1,2
.L497:
	.sleb128	2
	.4byte		.L475
	.uleb128	125
	.uleb128	47
	.byte		"dcmCfgChannelState"
	.byte		0
	.4byte		.L498
	.sleb128	5
	.byte		0x3
	.4byte		dcmCfgChannelState
	.lcomm		dcmCfgChannelState,8,2
.L502:
	.sleb128	2
	.4byte		.L475
	.uleb128	127
	.uleb128	50
	.byte		"dcmCfgChannelCommMode"
	.byte		0
	.4byte		.L503
	.sleb128	5
	.byte		0x3
	.4byte		dcmCfgChannelCommMode
	.lcomm		dcmCfgChannelCommMode,4,2
.L507:
	.sleb128	2
	.4byte		.L475
	.uleb128	129
	.uleb128	51
	.byte		"dcmCfgRxChannelPointers"
	.byte		0
	.4byte		.L508
	.sleb128	5
	.byte		0x3
	.4byte		dcmCfgRxChannelPointers
	.lcomm		dcmCfgRxChannelPointers,4,2
.L515:
	.sleb128	2
	.4byte		.L475
	.uleb128	131
	.uleb128	48
	.byte		"dcmCfgActiveTxBufferPointers"
	.byte		0
	.4byte		.L516
	.sleb128	5
	.byte		0x3
	.4byte		dcmCfgActiveTxBufferPointers
	.lcomm		dcmCfgActiveTxBufferPointers,4,2
.L523:
	.sleb128	2
	.4byte		.L475
	.uleb128	139
	.uleb128	32
	.byte		"dcmCfgServiceSupport_0"
	.byte		0
	.4byte		.L524
	.sleb128	5
	.byte		0x3
	.4byte		dcmCfgServiceSupport_0
	.section	.debug_info,,n
	.section	.debug_info,,n
.L527:
	.sleb128	2
	.4byte		.L475
	.uleb128	151
	.uleb128	33
	.byte		"PBtoPCHashValue"
	.byte		0
	.4byte		.L528
	.sleb128	5
	.byte		0x3
	.4byte		PBtoPCHashValue
	.section	.debug_info,,n
.L531:
	.sleb128	2
	.4byte		.L475
	.uleb128	152
	.uleb128	33
	.byte		"PBtoLTHashValue"
	.byte		0
	.4byte		.L528
	.sleb128	5
	.byte		0x3
	.4byte		PBtoLTHashValue
	.section	.debug_info,,n
.L532:
	.sleb128	2
	.4byte		.L475
	.uleb128	160
	.uleb128	45
	.byte		"dcmCfgBuffers"
	.byte		0
	.4byte		.L533
	.sleb128	5
	.byte		0x3
	.4byte		dcmCfgBuffers
	.section	.debug_info,,n
.L535:
	.sleb128	2
	.4byte		.L475
	.uleb128	181
	.uleb128	47
	.byte		"dcmCfgProtocols"
	.byte		0
	.4byte		.L536
	.sleb128	5
	.byte		0x3
	.4byte		dcmCfgProtocols
	.section	.debug_info,,n
.L541:
	.sleb128	2
	.4byte		.L475
	.uleb128	195
	.uleb128	48
	.byte		"dcmCfgTxChannels"
	.byte		0
	.4byte		.L542
	.sleb128	5
	.byte		0x3
	.4byte		dcmCfgTxChannels
	.section	.debug_info,,n
.L547:
	.sleb128	2
	.4byte		.L475
	.uleb128	208
	.uleb128	48
	.byte		"dcmCfgRxChannels"
	.byte		0
	.4byte		.L548
	.sleb128	5
	.byte		0x3
	.4byte		dcmCfgRxChannels
	.section	.debug_info,,n
.L550:
	.sleb128	2
	.4byte		.L475
	.uleb128	244
	.uleb128	54
	.byte		"dcmCfgServiceSupportTable"
	.byte		0
	.4byte		.L551
	.sleb128	5
	.byte		0x3
	.4byte		dcmCfgServiceSupportTable
	.section	.debug_info,,n
.L556:
	.sleb128	3
	.byte		0x1
	.4byte		.L475
	.uleb128	253
	.uleb128	34
	.byte		"DcmConfigSet"
	.byte		0
	.4byte		.L557
	.sleb128	5
	.byte		0x3
	.4byte		DcmConfigSet
	.section	.debug_info,,n
.L559:
	.sleb128	4
	.4byte		.L560
	.uleb128	247
	.uleb128	1
	.4byte		.L561-.L2
	.byte		"Dcm_ConfigType_Tag"
	.byte		0
	.uleb128	52
	.section	.debug_info,,n
.L160:
	.sleb128	5
	.byte		"first_periodic_tx_confirmation_id_value"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L161:
	.sleb128	5
	.byte		"first_roe_tx_confirmation_id_value"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L162:
	.sleb128	5
	.byte		"first_invalid_tx_confirmation_id_value"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L163:
	.sleb128	5
	.byte		"num_rx_channels"
	.byte		0
	.4byte		.L563
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L164:
	.sleb128	5
	.byte		"p_rx_channels"
	.byte		0
	.4byte		.L565
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L165:
	.sleb128	5
	.byte		"p_tx_channels"
	.byte		0
	.4byte		.L566
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L166:
	.sleb128	5
	.byte		"p_periodic_tx_lookup_table"
	.byte		0
	.4byte		.L568
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L167:
	.sleb128	5
	.byte		"max_num_resp_pend"
	.byte		0
	.4byte		.L478
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L168:
	.sleb128	5
	.byte		"p_pids_support_01"
	.byte		0
	.4byte		.L576
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L169:
	.sleb128	5
	.byte		"p_pids_support_02"
	.byte		0
	.4byte		.L576
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L170:
	.sleb128	5
	.byte		"p_req_ctrl_support"
	.byte		0
	.4byte		.L576
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L171:
	.sleb128	5
	.byte		"p_vehicle_info_type_support"
	.byte		0
	.4byte		.L576
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L172:
	.sleb128	5
	.byte		"p_service_table_support"
	.byte		0
	.4byte		.L578
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L173:
	.sleb128	5
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L580
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L174:
	.sleb128	5
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L580
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
	.sleb128	0
.L561:
.L555:
	.sleb128	4
	.4byte		.L560
	.uleb128	247
	.uleb128	1
	.4byte		.L582-.L2
	.byte		"Dcm_Cfg_ServiceTableSupport_Tag"
	.byte		0
	.uleb128	8
.L158:
	.sleb128	5
	.byte		"service_table_id"
	.byte		0
	.4byte		.L478
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L159:
	.sleb128	5
	.byte		"p_service_support"
	.byte		0
	.4byte		.L576
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L582:
.L514:
	.sleb128	4
	.4byte		.L560
	.uleb128	191
	.uleb128	1
	.4byte		.L583-.L2
	.byte		"Dcm_Cfg_RxChannelType_Tag"
	.byte		0
	.uleb128	44
.L142:
	.sleb128	5
	.byte		"pdu_id"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L143:
	.sleb128	5
	.byte		"networkId"
	.byte		0
	.4byte		.L478
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L144:
	.sleb128	5
	.byte		"tester_source_addr"
	.byte		0
	.4byte		.L563
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L145:
	.sleb128	5
	.byte		"roe_pdu_id"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L146:
	.sleb128	5
	.byte		"is_roe"
	.byte		0
	.4byte		.L496
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L147:
	.sleb128	5
	.byte		"p_buffer"
	.byte		0
	.4byte		.L584
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L148:
	.sleb128	5
	.byte		"p_2ndReqBuffer"
	.byte		0
	.4byte		.L584
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L149:
	.sleb128	5
	.byte		"p_protocol"
	.byte		0
	.4byte		.L585
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L150:
	.sleb128	5
	.byte		"p_txchannel"
	.byte		0
	.4byte		.L566
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L151:
	.sleb128	5
	.byte		"addr_type"
	.byte		0
	.4byte		.L587
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L152:
	.sleb128	5
	.byte		"p_state"
	.byte		0
	.4byte		.L589
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L153:
	.sleb128	5
	.byte		"p_commMode"
	.byte		0
	.4byte		.L591
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L154:
	.sleb128	5
	.byte		"p_periodic"
	.byte		0
	.4byte		.L593
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L583:
.L597:
	.sleb128	4
	.4byte		.L560
	.uleb128	191
	.uleb128	1
	.4byte		.L598-.L2
	.byte		"Dcm_Cfg_PeriodicResponseType_Tag"
	.byte		0
	.uleb128	12
.L139:
	.sleb128	5
	.byte		"num_tx_channels"
	.byte		0
	.4byte		.L478
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L140:
	.sleb128	5
	.byte		"tx_channels"
	.byte		0
	.4byte		.L599
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L141:
	.sleb128	5
	.byte		"p_commMode"
	.byte		0
	.4byte		.L591
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L598:
.L540:
	.sleb128	4
	.4byte		.L560
	.uleb128	191
	.uleb128	1
	.4byte		.L600-.L2
	.byte		"Dcm_Cfg_ProtocolType_Tag"
	.byte		0
	.uleb128	10
.L132:
	.sleb128	5
	.byte		"identifier"
	.byte		0
	.4byte		.L601
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L133:
	.sleb128	5
	.byte		"priority"
	.byte		0
	.4byte		.L478
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L134:
	.sleb128	5
	.byte		"identifier_table_id"
	.byte		0
	.4byte		.L478
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L135:
	.sleb128	5
	.byte		"send_resp_pend_on_trans_to_boot"
	.byte		0
	.4byte		.L496
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L136:
	.sleb128	5
	.byte		"preempt_timeout"
	.byte		0
	.4byte		.L563
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L137:
	.sleb128	5
	.byte		"p2_adjust_timeout"
	.byte		0
	.4byte		.L563
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L138:
	.sleb128	5
	.byte		"p2_star_adjust_timeout"
	.byte		0
	.4byte		.L563
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L600:
.L575:
	.sleb128	4
	.4byte		.L560
	.uleb128	91
	.uleb128	1
	.4byte		.L602-.L2
	.byte		"Dcm_Cfg_PeriodicTxChannelType_Tag"
	.byte		0
	.uleb128	8
.L129:
	.sleb128	5
	.byte		"tx_pdu_id"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L130:
	.sleb128	5
	.byte		"conf_pdu_id"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L131:
	.sleb128	5
	.byte		"channel_status"
	.byte		0
	.4byte		.L603
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L602:
.L606:
	.sleb128	4
	.4byte		.L560
	.uleb128	91
	.uleb128	1
	.4byte		.L607-.L2
	.byte		"Dcm_Cfg_PeriodicTxStatusType_Tag"
	.byte		0
	.uleb128	20
.L124:
	.sleb128	5
	.byte		"size"
	.byte		0
	.4byte		.L608
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L125:
	.sleb128	5
	.byte		"buf_pos"
	.byte		0
	.4byte		.L608
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L126:
	.sleb128	5
	.byte		"buf_ptr"
	.byte		0
	.4byte		.L609
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L127:
	.sleb128	5
	.byte		"pdu_info"
	.byte		0
	.4byte		.L491
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L128:
	.sleb128	5
	.byte		"state"
	.byte		0
	.4byte		.L610
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L607:
.L546:
	.sleb128	4
	.4byte		.L560
	.uleb128	91
	.uleb128	1
	.4byte		.L612-.L2
	.byte		"Dcm_Cfg_TxChannelType_Tag"
	.byte		0
	.uleb128	20
.L118:
	.sleb128	5
	.byte		"tx_pdu_id"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L119:
	.sleb128	5
	.byte		"conf_pdu_id"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L120:
	.sleb128	5
	.byte		"p_buffer"
	.byte		0
	.4byte		.L519
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L121:
	.sleb128	5
	.byte		"pp_active_buffer"
	.byte		0
	.4byte		.L613
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L122:
	.sleb128	5
	.byte		"pp_rx_channel"
	.byte		0
	.4byte		.L614
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L123:
	.sleb128	5
	.byte		"p_busy"
	.byte		0
	.4byte		.L615
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L612:
.L522:
	.sleb128	4
	.4byte		.L560
	.uleb128	91
	.uleb128	1
	.4byte		.L616-.L2
	.byte		"Dcm_Cfg_BufferType_Tag"
	.byte		0
	.uleb128	16
.L113:
	.sleb128	5
	.byte		"identifier"
	.byte		0
	.4byte		.L478
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L114:
	.sleb128	5
	.byte		"size"
	.byte		0
	.4byte		.L608
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L115:
	.sleb128	5
	.byte		"ptr"
	.byte		0
	.4byte		.L617
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L116:
	.sleb128	5
	.byte		"p_status"
	.byte		0
	.4byte		.L618
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L117:
	.sleb128	5
	.byte		"pdu_info"
	.byte		0
	.4byte		.L620
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L616:
.L487:
	.sleb128	4
	.4byte		.L560
	.uleb128	91
	.uleb128	1
	.4byte		.L622-.L2
	.byte		"Dcm_Cfg_BufferStatusType_Tag"
	.byte		0
	.uleb128	12
.L110:
	.sleb128	5
	.byte		"pdu_id"
	.byte		0
	.4byte		.L562
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L111:
	.sleb128	5
	.byte		"state"
	.byte		0
	.4byte		.L623
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L112:
	.sleb128	5
	.byte		"buf_pos"
	.byte		0
	.4byte		.L608
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L622:
.L492:
	.sleb128	4
	.4byte		.L625
	.uleb128	69
	.uleb128	1
	.4byte		.L626-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L88:
	.sleb128	5
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L609
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L89:
	.sleb128	5
	.byte		"SduLength"
	.byte		0
	.4byte		.L608
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L626:
	.section	.debug_info,,n
.L506:
	.sleb128	6
	.4byte		.L560
	.uleb128	191
	.uleb128	1
	.4byte		.L627-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	7
	.byte		"DCM_NO_COMM_MODE"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"DCM_SILENT_COMM_MODE"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"DCM_FULL_COMM_MODE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L627:
.L501:
	.sleb128	6
	.4byte		.L560
	.uleb128	180
	.uleb128	1
	.4byte		.L628-.L2
	.uleb128	4
	.sleb128	7
	.byte		"DCM_CHANNEL_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"DCM_CHANNEL_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"DCM_CHANNEL_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"DCM_CHANNEL_2ND_REQ"
	.byte		0
	.sleb128	3
	.sleb128	0
.L628:
.L611:
	.sleb128	6
	.4byte		.L560
	.uleb128	91
	.uleb128	1
	.4byte		.L629-.L2
	.uleb128	4
	.sleb128	7
	.byte		"DCM_PERIODIC_TX_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"DCM_PERIODIC_TX_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	7
	.byte		"DCM_PERIODIC_TX_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	7
	.byte		"DCM_PERIODIC_TX_CONFIRMED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L629:
.L624:
	.sleb128	6
	.4byte		.L560
	.uleb128	82
	.uleb128	1
	.4byte		.L630-.L2
	.uleb128	4
	.sleb128	7
	.byte		"DCM_BUF_EMPTY"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"DCM_BUF_BUSY"
	.byte		0
	.sleb128	1
	.sleb128	0
.L630:
.L588:
	.sleb128	6
	.4byte		.L560
	.uleb128	73
	.uleb128	1
	.4byte		.L631-.L2
	.uleb128	4
	.sleb128	7
	.byte		"DCM_PHYSICAL_TYPE"
	.byte		0
	.sleb128	0
	.sleb128	7
	.byte		"DCM_FUNCTIONAL_TYPE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L631:
	.section	.debug_info,,n
.L479:
	.sleb128	8
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L478:
	.sleb128	9
	.byte		"uint8"
	.byte		0
	.4byte		.L479
	.section	.debug_info,,n
.L476:
	.sleb128	10
	.4byte		.L477-.L2
	.4byte		.L478
	.section	.debug_info,,n
	.sleb128	11
	.uleb128	255
	.sleb128	0
.L477:
.L481:
	.sleb128	10
	.4byte		.L482-.L2
	.4byte		.L478
	.sleb128	11
	.uleb128	2
	.sleb128	0
.L482:
.L486:
	.sleb128	9
	.byte		"Dcm_Cfg_BufferStatusType"
	.byte		0
	.4byte		.L487
.L484:
	.sleb128	10
	.4byte		.L485-.L2
	.4byte		.L486
	.sleb128	11
	.uleb128	1
	.sleb128	0
.L485:
.L491:
	.sleb128	9
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L492
.L489:
	.sleb128	10
	.4byte		.L490-.L2
	.4byte		.L491
	.sleb128	11
	.uleb128	1
	.sleb128	0
.L490:
.L496:
	.sleb128	9
	.byte		"boolean"
	.byte		0
	.4byte		.L479
.L494:
	.sleb128	10
	.4byte		.L495-.L2
	.4byte		.L496
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L495:
.L500:
	.sleb128	9
	.byte		"Dcm_Cfg_ChannelStateType"
	.byte		0
	.4byte		.L501
.L498:
	.sleb128	10
	.4byte		.L499-.L2
	.4byte		.L500
	.sleb128	11
	.uleb128	1
	.sleb128	0
.L499:
.L505:
	.sleb128	9
	.byte		"Dcm_Cfg_ChannelCommModeType"
	.byte		0
	.4byte		.L506
.L503:
	.sleb128	10
	.4byte		.L504-.L2
	.4byte		.L505
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L504:
.L513:
	.sleb128	9
	.byte		"Dcm_Cfg_RxChannelType"
	.byte		0
	.4byte		.L514
	.section	.debug_info,,n
.L512:
	.sleb128	12
	.4byte		.L513
	.section	.debug_info,,n
.L511:
	.sleb128	13
	.4byte		.L512
.L510:
	.sleb128	9
	.byte		"Dcm_Cfg_RxChannelPointerType"
	.byte		0
	.4byte		.L511
.L508:
	.sleb128	10
	.4byte		.L509-.L2
	.4byte		.L510
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L509:
.L521:
	.sleb128	9
	.byte		"Dcm_Cfg_BufferType"
	.byte		0
	.4byte		.L522
.L520:
	.sleb128	12
	.4byte		.L521
.L519:
	.sleb128	13
	.4byte		.L520
.L518:
	.sleb128	9
	.byte		"Dcm_Cfg_BufferPointerType"
	.byte		0
	.4byte		.L519
.L516:
	.sleb128	10
	.4byte		.L517-.L2
	.4byte		.L518
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L517:
.L526:
	.sleb128	12
	.4byte		.L478
.L524:
	.sleb128	10
	.4byte		.L525-.L2
	.4byte		.L526
	.sleb128	11
	.uleb128	7
	.sleb128	0
.L525:
.L530:
	.sleb128	8
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L529:
	.sleb128	9
	.byte		"uint32"
	.byte		0
	.4byte		.L530
.L528:
	.sleb128	12
	.4byte		.L529
.L533:
	.sleb128	10
	.4byte		.L534-.L2
	.4byte		.L520
	.sleb128	11
	.uleb128	1
	.sleb128	0
.L534:
.L539:
	.sleb128	9
	.byte		"Dcm_Cfg_ProtocolType"
	.byte		0
	.4byte		.L540
.L538:
	.sleb128	12
	.4byte		.L539
.L536:
	.sleb128	10
	.4byte		.L537-.L2
	.4byte		.L538
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L537:
.L545:
	.sleb128	9
	.byte		"Dcm_Cfg_TxChannelType"
	.byte		0
	.4byte		.L546
.L544:
	.sleb128	12
	.4byte		.L545
.L542:
	.sleb128	10
	.4byte		.L543-.L2
	.4byte		.L544
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L543:
.L548:
	.sleb128	10
	.4byte		.L549-.L2
	.4byte		.L512
	.sleb128	11
	.uleb128	1
	.sleb128	0
.L549:
.L554:
	.sleb128	9
	.byte		"Dcm_Cfg_ServiceTableSupport"
	.byte		0
	.4byte		.L555
.L553:
	.sleb128	12
	.4byte		.L554
.L551:
	.sleb128	10
	.4byte		.L552-.L2
	.4byte		.L553
	.sleb128	11
	.uleb128	0
	.sleb128	0
.L552:
.L558:
	.sleb128	9
	.byte		"Dcm_ConfigType"
	.byte		0
	.4byte		.L559
.L557:
	.sleb128	12
	.4byte		.L558
.L564:
	.sleb128	8
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L563:
	.sleb128	9
	.byte		"uint16"
	.byte		0
	.4byte		.L564
.L562:
	.sleb128	9
	.byte		"PduIdType"
	.byte		0
	.4byte		.L563
.L565:
	.sleb128	12
	.4byte		.L511
.L567:
	.sleb128	13
	.4byte		.L544
.L566:
	.sleb128	12
	.4byte		.L567
.L574:
	.sleb128	9
	.byte		"Dcm_Cfg_PeriodicTxChannelType"
	.byte		0
	.4byte		.L575
.L573:
	.sleb128	12
	.4byte		.L574
.L572:
	.sleb128	13
	.4byte		.L573
.L571:
	.sleb128	9
	.byte		"Dcm_Cfg_PeriodicTxChannelPointerType"
	.byte		0
	.4byte		.L572
.L570:
	.sleb128	12
	.4byte		.L571
.L569:
	.sleb128	13
	.4byte		.L570
.L568:
	.sleb128	12
	.4byte		.L569
.L577:
	.sleb128	13
	.4byte		.L526
.L576:
	.sleb128	12
	.4byte		.L577
.L579:
	.sleb128	13
	.4byte		.L553
.L578:
	.sleb128	12
	.4byte		.L579
.L581:
	.sleb128	13
	.4byte		.L528
.L580:
	.sleb128	12
	.4byte		.L581
.L584:
	.sleb128	12
	.4byte		.L519
.L586:
	.sleb128	13
	.4byte		.L538
.L585:
	.sleb128	12
	.4byte		.L586
.L587:
	.sleb128	9
	.byte		"Dcm_Cfg_AddrTypeType"
	.byte		0
	.4byte		.L588
.L590:
	.sleb128	13
	.4byte		.L500
.L589:
	.sleb128	12
	.4byte		.L590
.L592:
	.sleb128	13
	.4byte		.L505
.L591:
	.sleb128	12
	.4byte		.L592
.L596:
	.sleb128	9
	.byte		"Dcm_Cfg_PeriodicResponseType"
	.byte		0
	.4byte		.L597
.L595:
	.sleb128	12
	.4byte		.L596
.L594:
	.sleb128	13
	.4byte		.L595
.L593:
	.sleb128	12
	.4byte		.L594
.L599:
	.sleb128	12
	.4byte		.L572
.L601:
	.sleb128	9
	.byte		"Dcm_ProtocolType"
	.byte		0
	.4byte		.L478
.L605:
	.sleb128	9
	.byte		"Dcm_Cfg_PeriodicTxStatusType"
	.byte		0
	.4byte		.L606
.L604:
	.sleb128	13
	.4byte		.L605
.L603:
	.sleb128	12
	.4byte		.L604
.L608:
	.sleb128	9
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L563
.L609:
	.sleb128	13
	.4byte		.L478
.L610:
	.sleb128	9
	.byte		"Dcm_Cfg_PeriodicTxChannelStateType"
	.byte		0
	.4byte		.L611
.L613:
	.sleb128	13
	.4byte		.L518
.L614:
	.sleb128	13
	.4byte		.L510
.L615:
	.sleb128	13
	.4byte		.L496
.L617:
	.sleb128	12
	.4byte		.L609
.L619:
	.sleb128	13
	.4byte		.L486
.L618:
	.sleb128	12
	.4byte		.L619
.L621:
	.sleb128	13
	.4byte		.L491
.L620:
	.sleb128	12
	.4byte		.L621
.L623:
	.sleb128	9
	.byte		"Dcm_Cfg_BufferStateType"
	.byte		0
	.4byte		.L624
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dcm_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dcm_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dcm_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dcm_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dcm_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dcm_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\Dcm_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
