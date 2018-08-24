#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"PduR_PBcfg.c"
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
	.0byte		.L43
	.section	.text_vle
	.type		PduR_CANIF_Rx_Array,@object
	.size		PduR_CANIF_Rx_Array,228
	.align		1
PduR_CANIF_Rx_Array:
	.short		5
	.byte		31
	.space		1
	.short		27
	.byte		31
	.space		1
	.short		10
	.byte		31
	.space		1
	.short		3
	.byte		31
	.space		1
	.short		47
	.byte		31
	.space		1
	.short		4
	.byte		31
	.space		1
	.short		48
	.byte		31
	.space		1
	.short		49
	.byte		31
	.space		1
	.short		42
	.byte		31
	.space		1
	.short		14
	.byte		31
	.space		1
	.short		6
	.byte		31
	.space		1
	.short		50
	.byte		31
	.space		1
	.short		51
	.byte		31
	.space		1
	.short		38
	.byte		31
	.space		1
	.short		29
	.byte		31
	.space		1
	.short		28
	.byte		31
	.space		1
	.short		22
	.byte		31
	.space		1
	.short		46
	.byte		31
	.space		1
	.short		56
	.byte		31
	.space		1
	.short		13
	.byte		31
	.space		1
	.short		34
	.byte		31
	.space		1
	.short		39
	.byte		31
	.space		1
	.short		40
	.byte		31
	.space		1
	.short		41
	.byte		31
	.space		1
	.short		11
	.byte		31
	.space		1
	.short		12
	.byte		31
	.space		1
	.short		36
	.byte		31
	.space		1
	.short		2
	.byte		31
	.space		1
	.short		37
	.byte		31
	.space		1
	.short		35
	.byte		31
	.space		1
	.short		7
	.byte		31
	.space		1
	.short		30
	.byte		31
	.space		1
	.short		24
	.byte		31
	.space		1
	.short		23
	.byte		31
	.space		1
	.short		31
	.byte		31
	.space		1
	.short		32
	.byte		31
	.space		1
	.short		25
	.byte		31
	.space		1
	.short		0
	.byte		31
	.space		1
	.short		33
	.byte		31
	.space		1
	.short		8
	.byte		31
	.space		1
	.short		9
	.byte		31
	.space		1
	.short		52
	.byte		31
	.space		1
	.short		53
	.byte		31
	.space		1
	.short		44
	.byte		31
	.space		1
	.short		45
	.byte		31
	.space		1
	.short		43
	.byte		31
	.space		1
	.short		1
	.byte		31
	.space		1
	.short		26
	.byte		31
	.space		1
	.short		16
	.byte		31
	.space		1
	.short		15
	.byte		31
	.space		1
	.short		17
	.byte		31
	.space		1
	.short		18
	.byte		31
	.space		1
	.short		21
	.byte		31
	.space		1
	.short		20
	.byte		31
	.space		1
	.short		19
	.byte		31
	.space		1
	.short		54
	.byte		31
	.space		1
	.short		55
	.byte		31
	.space		1
	.section	.text_vle
	.type		PduR_CANIF_Tx_Array,@object
	.size		PduR_CANIF_Tx_Array,32
	.align		1
PduR_CANIF_Tx_Array:
	.short		7
	.byte		30
	.space		1
	.short		2
	.byte		30
	.space		1
	.short		4
	.byte		30
	.space		1
	.short		5
	.byte		30
	.space		1
	.short		1
	.byte		30
	.space		1
	.short		0
	.byte		30
	.space		1
	.short		3
	.byte		30
	.space		1
	.short		6
	.byte		30
	.space		1
	.section	.text_vle
	.type		PduR_LINIF_Tx_Array,@object
	.size		PduR_LINIF_Tx_Array,4
	.align		1
PduR_LINIF_Tx_Array:
	.short		8
	.byte		29
	.space		1
	.section	.text_vle
	.type		PduR_COM_Tx_Array,@object
	.size		PduR_COM_Tx_Array,36
	.align		1
PduR_COM_Tx_Array:
	.short		7
	.byte		23
	.space		1
	.short		2
	.byte		23
	.space		1
	.short		4
	.byte		23
	.space		1
	.short		5
	.byte		23
	.space		1
	.short		1
	.byte		23
	.space		1
	.short		0
	.byte		23
	.space		1
	.short		3
	.byte		23
	.space		1
	.short		6
	.byte		23
	.space		1
	.short		0
	.byte		37
	.space		1
	.section	.text_vle
	.type		PduR_DCM_Tx_Array,@object
	.size		PduR_DCM_Tx_Array,4
	.align		1
PduR_DCM_Tx_Array:
	.short		0
	.byte		25
	.space		1
	.section	.text_vle
	.type		PduR_DCM_RxFromUp_Array,@object
	.size		PduR_DCM_RxFromUp_Array,8
	.align		1
PduR_DCM_RxFromUp_Array:
	.short		1
	.byte		25
	.space		1
	.short		0
	.byte		25
	.space		1
	.section	.text_vle
	.type		PduR_CANTP_Rx_Array,@object
	.size		PduR_CANTP_Rx_Array,8
	.align		1
PduR_CANTP_Rx_Array:
	.short		0
	.byte		32
	.space		1
	.short		1
	.byte		32
	.space		1
	.section	.text_vle
	.type		PduR_CANTP_Tx_Array,@object
	.size		PduR_CANTP_Tx_Array,4
	.align		1
PduR_CANTP_Tx_Array:
	.short		0
	.byte		35
	.space		1
	.section	.text_vle
	.type		RoutingArrays,@object
	.size		RoutingArrays,36
	.align		2
RoutingArrays:
	.long		PduR_CANIF_Rx_Array
	.long		PduR_CANIF_Tx_Array
	.long		0
	.long		PduR_LINIF_Tx_Array
	.long		PduR_CANTP_Rx_Array
	.long		PduR_CANTP_Tx_Array
	.long		PduR_COM_Tx_Array
	.long		PduR_DCM_Tx_Array
	.long		PduR_DCM_RxFromUp_Array
	.section	.text_vle
	.type		RoutingArraySizes,@object
	.size		RoutingArraySizes,18
	.align		1
RoutingArraySizes:
	.short		57
	.short		8
	.short		0
	.short		1
	.short		2
	.short		1
	.short		9
	.short		1
	.short		2
	.section	.text_vle
	.type		PduR_PBtoPCHashValue,@object
	.size		PduR_PBtoPCHashValue,4
	.align		2
PduR_PBtoPCHashValue:
	.long		212217955
	.section	.text_vle
	.type		PduR_PBtoLTHashValue,@object
	.size		PduR_PBtoLTHashValue,4
	.align		2
PduR_PBtoLTHashValue:
	.long		-1554277896
	.section	.text_vle
	.type		PduRRoutingTables,@object
	.size		PduRRoutingTables,20
	.align		2
	.globl		PduRRoutingTables
PduRRoutingTables:
	.long		0
	.long		PduR_PBtoLTHashValue
	.long		PduR_PBtoPCHashValue
	.long		RoutingArrays
	.long		RoutingArraySizes
	.section	.text_vle
#$$ld
.L5:
.L93:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\PduR\\ssc\\make\\..\\inc\\PduR_Types.h"
.L44:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\PduR_PBcfg.c"
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
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\PduR_PBcfg.c"
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
.L43:
	.sleb128	2
	.4byte		.L44
	.uleb128	63
	.uleb128	42
	.byte		"PduR_CANIF_Rx_Array"
	.byte		0
	.4byte		.L45
	.sleb128	5
	.byte		0x3
	.4byte		PduR_CANIF_Rx_Array
	.section	.debug_info,,n
	.section	.debug_info,,n
.L50:
	.sleb128	2
	.4byte		.L44
	.uleb128	409
	.uleb128	41
	.byte		"PduR_CANIF_Tx_Array"
	.byte		0
	.4byte		.L51
	.sleb128	5
	.byte		0x3
	.4byte		PduR_CANIF_Tx_Array
	.section	.debug_info,,n
.L53:
	.sleb128	2
	.4byte		.L44
	.uleb128	464
	.uleb128	42
	.byte		"PduR_LINIF_Tx_Array"
	.byte		0
	.4byte		.L54
	.sleb128	5
	.byte		0x3
	.4byte		PduR_LINIF_Tx_Array
	.section	.debug_info,,n
.L56:
	.sleb128	2
	.4byte		.L44
	.uleb128	478
	.uleb128	42
	.byte		"PduR_COM_Tx_Array"
	.byte		0
	.4byte		.L57
	.sleb128	5
	.byte		0x3
	.4byte		PduR_COM_Tx_Array
	.section	.debug_info,,n
.L59:
	.sleb128	2
	.4byte		.L44
	.uleb128	529
	.uleb128	42
	.byte		"PduR_DCM_Tx_Array"
	.byte		0
	.4byte		.L60
	.sleb128	5
	.byte		0x3
	.4byte		PduR_DCM_Tx_Array
	.section	.debug_info,,n
.L62:
	.sleb128	2
	.4byte		.L44
	.uleb128	543
	.uleb128	42
	.byte		"PduR_DCM_RxFromUp_Array"
	.byte		0
	.4byte		.L63
	.sleb128	5
	.byte		0x3
	.4byte		PduR_DCM_RxFromUp_Array
	.section	.debug_info,,n
.L65:
	.sleb128	2
	.4byte		.L44
	.uleb128	565
	.uleb128	42
	.byte		"PduR_CANTP_Rx_Array"
	.byte		0
	.4byte		.L66
	.sleb128	5
	.byte		0x3
	.4byte		PduR_CANTP_Rx_Array
	.section	.debug_info,,n
.L68:
	.sleb128	2
	.4byte		.L44
	.uleb128	582
	.uleb128	41
	.byte		"PduR_CANTP_Tx_Array"
	.byte		0
	.4byte		.L69
	.sleb128	5
	.byte		0x3
	.4byte		PduR_CANTP_Tx_Array
	.section	.debug_info,,n
.L71:
	.sleb128	2
	.4byte		.L44
	.uleb128	616
	.uleb128	55
	.byte		"RoutingArrays"
	.byte		0
	.4byte		.L72
	.sleb128	5
	.byte		0x3
	.4byte		RoutingArrays
	.section	.debug_info,,n
.L78:
	.sleb128	2
	.4byte		.L44
	.uleb128	637
	.uleb128	37
	.byte		"RoutingArraySizes"
	.byte		0
	.4byte		.L79
	.sleb128	5
	.byte		0x3
	.4byte		RoutingArraySizes
	.section	.debug_info,,n
.L84:
	.sleb128	2
	.4byte		.L44
	.uleb128	750
	.uleb128	36
	.byte		"PduR_PBtoPCHashValue"
	.byte		0
	.4byte		.L85
	.sleb128	5
	.byte		0x3
	.4byte		PduR_PBtoPCHashValue
	.section	.debug_info,,n
.L88:
	.sleb128	2
	.4byte		.L44
	.uleb128	751
	.uleb128	36
	.byte		"PduR_PBtoLTHashValue"
	.byte		0
	.4byte		.L85
	.sleb128	5
	.byte		0x3
	.4byte		PduR_PBtoLTHashValue
	.section	.debug_info,,n
.L89:
	.sleb128	3
	.byte		0x1
	.4byte		.L44
	.uleb128	753
	.uleb128	40
	.byte		"PduRRoutingTables"
	.byte		0
	.4byte		.L90
	.sleb128	5
	.byte		0x3
	.4byte		PduRRoutingTables
	.section	.debug_info,,n
.L92:
	.sleb128	4
	.4byte		.L93
	.uleb128	53
	.uleb128	1
	.4byte		.L94-.L2
	.uleb128	20
	.section	.debug_info,,n
.L38:
	.sleb128	5
	.byte		"ConfigurationId"
	.byte		0
	.4byte		.L95
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L39:
	.sleb128	5
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L96
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L40:
	.sleb128	5
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L96
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L41:
	.sleb128	5
	.byte		"RoutingArraysCfg"
	.byte		0
	.4byte		.L97
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L42:
	.sleb128	5
	.byte		"RoutingArraysSizesCfg"
	.byte		0
	.4byte		.L99
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L94:
.L49:
	.sleb128	4
	.4byte		.L93
	.uleb128	53
	.uleb128	1
	.4byte		.L101-.L2
	.uleb128	4
.L36:
	.sleb128	5
	.byte		"TargetId"
	.byte		0
	.4byte		.L102
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L37:
	.sleb128	5
	.byte		"TargetFunction_Index"
	.byte		0
	.4byte		.L103
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L101:
	.section	.debug_info,,n
.L48:
	.sleb128	6
	.byte		"PduR_MainRtA"
	.byte		0
	.4byte		.L49
	.section	.debug_info,,n
.L47:
	.sleb128	7
	.4byte		.L48
	.section	.debug_info,,n
.L45:
	.sleb128	8
	.4byte		.L46-.L2
	.4byte		.L47
	.section	.debug_info,,n
	.sleb128	9
	.uleb128	56
	.sleb128	0
.L46:
.L51:
	.sleb128	8
	.4byte		.L52-.L2
	.4byte		.L47
	.sleb128	9
	.uleb128	7
	.sleb128	0
.L52:
.L54:
	.sleb128	8
	.4byte		.L55-.L2
	.4byte		.L47
	.sleb128	9
	.uleb128	0
	.sleb128	0
.L55:
.L57:
	.sleb128	8
	.4byte		.L58-.L2
	.4byte		.L47
	.sleb128	9
	.uleb128	8
	.sleb128	0
.L58:
.L60:
	.sleb128	8
	.4byte		.L61-.L2
	.4byte		.L47
	.sleb128	9
	.uleb128	0
	.sleb128	0
.L61:
.L63:
	.sleb128	8
	.4byte		.L64-.L2
	.4byte		.L47
	.sleb128	9
	.uleb128	1
	.sleb128	0
.L64:
.L66:
	.sleb128	8
	.4byte		.L67-.L2
	.4byte		.L47
	.sleb128	9
	.uleb128	1
	.sleb128	0
.L67:
.L69:
	.sleb128	8
	.4byte		.L70-.L2
	.4byte		.L47
	.sleb128	9
	.uleb128	0
	.sleb128	0
.L70:
	.section	.debug_info,,n
.L77:
	.sleb128	10
	.byte		"void"
	.byte		0
	.byte		0x0
.L76:
	.sleb128	7
	.4byte		.L77
	.section	.debug_info,,n
.L75:
	.sleb128	11
	.4byte		.L76
.L74:
	.sleb128	7
	.4byte		.L75
.L72:
	.sleb128	8
	.4byte		.L73-.L2
	.4byte		.L74
	.sleb128	9
	.uleb128	8
	.sleb128	0
.L73:
	.section	.debug_info,,n
.L83:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L82:
	.sleb128	6
	.byte		"uint16"
	.byte		0
	.4byte		.L83
.L81:
	.sleb128	7
	.4byte		.L82
.L79:
	.sleb128	8
	.4byte		.L80-.L2
	.4byte		.L81
	.sleb128	9
	.uleb128	8
	.sleb128	0
.L80:
.L87:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L86:
	.sleb128	6
	.byte		"uint32"
	.byte		0
	.4byte		.L87
.L85:
	.sleb128	7
	.4byte		.L86
.L91:
	.sleb128	6
	.byte		"PduR_PBConfigType"
	.byte		0
	.4byte		.L92
.L90:
	.sleb128	7
	.4byte		.L91
.L95:
	.sleb128	6
	.byte		"PduR_PBConfigIdType"
	.byte		0
	.4byte		.L86
.L96:
	.sleb128	11
	.4byte		.L85
.L98:
	.sleb128	11
	.4byte		.L74
.L97:
	.sleb128	7
	.4byte		.L98
.L100:
	.sleb128	11
	.4byte		.L81
.L99:
	.sleb128	7
	.4byte		.L100
.L102:
	.sleb128	6
	.byte		"PduIdType"
	.byte		0
	.4byte		.L82
.L104:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L103:
	.sleb128	6
	.byte		"uint8"
	.byte		0
	.4byte		.L104
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\PduR_PBcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\PduR_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\PduR_PBcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\PduR_PBcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\PduR_PBcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\PduR_PBcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\PduR_PBcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
