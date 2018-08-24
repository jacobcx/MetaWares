#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanTp_Lcfg.c"
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
# FUNC(void, CANTP_CODE) CanTp_Enter_Area
	.align		2
	.section	.text_vle
	.d2file		"gen\\MPC5746R_ECU\\WindRiver\\CanTp_Lcfg.c"
        .d2line         92,24
#$$ld
.L145:

#$$bf	CanTp_Enter_Area,interprocedural,rasave,nostackparams
	.globl		CanTp_Enter_Area
	.d2_cfa_start __cie
CanTp_Enter_Area:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r6,r3		# ExclusiveArea=r6 ExclusiveArea=r3
	.d2prologue_end
# (
#     CONST(uint8,AUTOMATIC) ExclusiveArea
# )
# {
#     /* PRQA S 2016 ++ */ /* 'switch' statement 'default' clause is empty */
#     switch (ExclusiveArea)
	.d2line		98
	rlwinm		r6,r6,0,24,31		# ExclusiveArea=r6 ExclusiveArea=r6
	se_cmpi		r6,0		# ExclusiveArea=r6
	bc		1,2,.L128	# eq
.Llo2:
	se_cmpi		r6,1		# ExclusiveArea=r6
.Llo3:
	bc		1,2,.L130	# eq
.Llo4:
	b		.L127
.L128:
#     {
#         case 0U:
#         {
#             SchM_Enter_CanTp_Area_0();
	.d2line		102
.Llo5:
	bl		SchM_Enter_CanTp_Area_0
.Llo6:
	b		.L127
.L130:
#             break;
#         }
#         case 1U:
#         {
#             SchM_Enter_CanTp_Area_1();
	.d2line		107
.Llo7:
	bl		SchM_Enter_CanTp_Area_1
.L127:
#             break;
#         }
#         default:
#         {
#             break;
#         }
#     }
#     /* PRQA S 2016 -- */
# }
	.d2line		116
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo8:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L146:
	.type		CanTp_Enter_Area,@function
	.size		CanTp_Enter_Area,.-CanTp_Enter_Area
# Number of nodes = 9

# Allocations for CanTp_Enter_Area
#	?a4		ExclusiveArea
# FUNC(void, CANTP_CODE) CanTp_Exit_Area
	.align		2
	.section	.text_vle
        .d2line         118,24
#$$ld
.L155:

#$$bf	CanTp_Exit_Area,interprocedural,rasave,nostackparams
	.globl		CanTp_Exit_Area
	.d2_cfa_start __cie
CanTp_Exit_Area:
.Llo9:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r6,r3		# ExclusiveArea=r6 ExclusiveArea=r3
	.d2prologue_end
# (
#     CONST(uint8,AUTOMATIC) ExclusiveArea
# )
# {
#     /* PRQA S 2016 ++ */ /* 'switch' statement 'default' clause is empty */
#     switch (ExclusiveArea)
	.d2line		124
	rlwinm		r6,r6,0,24,31		# ExclusiveArea=r6 ExclusiveArea=r6
	se_cmpi		r6,0		# ExclusiveArea=r6
	bc		1,2,.L136	# eq
.Llo10:
	se_cmpi		r6,1		# ExclusiveArea=r6
.Llo11:
	bc		1,2,.L138	# eq
.Llo12:
	b		.L135
.L136:
#     {
#         case 0U:
#         {
#             SchM_Exit_CanTp_Area_0();
	.d2line		128
.Llo13:
	bl		SchM_Exit_CanTp_Area_0
.Llo14:
	b		.L135
.L138:
#             break;
#         }
#         case 1U:
#         {
#             SchM_Exit_CanTp_Area_1();
	.d2line		133
.Llo15:
	bl		SchM_Exit_CanTp_Area_1
.L135:
#             break;
#         }
#         default:
#         {
#             break;
#         }
#     }
#     /* PRQA S 2016 -- */
# }
	.d2line		142
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo16:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L156:
	.type		CanTp_Exit_Area,@function
	.size		CanTp_Exit_Area,.-CanTp_Exit_Area
# Number of nodes = 9

# Allocations for CanTp_Exit_Area
#	?a4		ExclusiveArea

# Allocations for module
	.section	.text_vle
	.0byte		.L159
	.section	.text_vle
	.type		CanTp_LTtoPCHashValue,@object
	.size		CanTp_LTtoPCHashValue,4
	.align		2
	.globl		CanTp_LTtoPCHashValue
CanTp_LTtoPCHashValue:
	.long		550543017
	.section	.text_vle
	.type		CanTp_LTHashValue,@object
	.size		CanTp_LTHashValue,4
	.align		2
	.globl		CanTp_LTHashValue
CanTp_LTHashValue:
	.long		1964356413
	.section	.text_vle
#$$ld
.L5:
.L213:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanTp\\ssc\\make\\..\\inc\\CanTp_Types.h"
.L147:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\CanTp_Lcfg.c"
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
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	6
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
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\CanTp_Lcfg.c"
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
.L148:
	.sleb128	2
	.4byte		.L144-.L2
	.byte		"CanTp_Enter_Area"
	.byte		0
	.4byte		.L147
	.uleb128	92
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L145
	.4byte		.L146
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L147
	.uleb128	92
	.uleb128	24
	.byte		"ExclusiveArea"
	.byte		0
	.4byte		.L149
	.4byte		.L152
	.section	.debug_info,,n
	.sleb128	0
.L144:
	.section	.debug_info,,n
.L157:
	.sleb128	2
	.4byte		.L154-.L2
	.byte		"CanTp_Exit_Area"
	.byte		0
	.4byte		.L147
	.uleb128	118
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L155
	.4byte		.L156
	.sleb128	3
	.4byte		.L147
	.uleb128	118
	.uleb128	24
	.byte		"ExclusiveArea"
	.byte		0
	.4byte		.L149
	.4byte		.L158
	.section	.debug_info,,n
	.sleb128	0
.L154:
	.section	.debug_info,,n
.L159:
	.sleb128	4
	.byte		0x1
	.4byte		.L147
	.uleb128	35
	.uleb128	28
	.byte		"CanTp_LTtoPCHashValue"
	.byte		0
	.4byte		.L160
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_LTtoPCHashValue
	.section	.debug_info,,n
	.section	.debug_info,,n
.L163:
	.sleb128	4
	.byte		0x1
	.4byte		.L147
	.uleb128	38
	.uleb128	28
	.byte		"CanTp_LTHashValue"
	.byte		0
	.4byte		.L160
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_LTHashValue
	.section	.debug_info,,n
.L164:
	.sleb128	4
	.byte		0x1
	.4byte		.L147
	.uleb128	47
	.uleb128	46
	.byte		"CanTp_RxNsduFound_p"
	.byte		0
	.4byte		.L165
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_RxNsduFound_p
	.0byte		.L164
	.comm		CanTp_RxNsduFound_p,4,2
.L169:
	.sleb128	4
	.byte		0x1
	.4byte		.L147
	.uleb128	50
	.uleb128	54
	.byte		"CanTp_RxNSdu_p"
	.byte		0
	.4byte		.L170
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_RxNSdu_p
	.comm		CanTp_RxNSdu_p,4,2
.L174:
	.sleb128	4
	.byte		0x1
	.4byte		.L147
	.uleb128	53
	.uleb128	60
	.byte		"CanTp_RxNSduConfig_p"
	.byte		0
	.4byte		.L175
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_RxNSduConfig_p
	.comm		CanTp_RxNSduConfig_p,4,2
.L179:
	.sleb128	4
	.byte		0x1
	.4byte		.L147
	.uleb128	56
	.uleb128	54
	.byte		"CanTp_TxNSdu_p"
	.byte		0
	.4byte		.L180
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_TxNSdu_p
	.comm		CanTp_TxNSdu_p,4,2
.L184:
	.sleb128	4
	.byte		0x1
	.4byte		.L147
	.uleb128	59
	.uleb128	60
	.byte		"CanTp_TxNSduConfig_p"
	.byte		0
	.4byte		.L185
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_TxNSduConfig_p
	.comm		CanTp_TxNSduConfig_p,4,2
.L189:
	.sleb128	4
	.byte		0x1
	.4byte		.L147
	.uleb128	62
	.uleb128	57
	.byte		"CanTp_RxNSduParams_p"
	.byte		0
	.4byte		.L190
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_RxNSduParams_p
	.comm		CanTp_RxNSduParams_p,4,2
.L193:
	.sleb128	4
	.byte		0x1
	.4byte		.L147
	.uleb128	65
	.uleb128	56
	.byte		"CanTp_RxLookup_p"
	.byte		0
	.4byte		.L194
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_RxLookup_p
	.comm		CanTp_RxLookup_p,4,2
.L198:
	.sleb128	4
	.byte		0x1
	.4byte		.L147
	.uleb128	68
	.uleb128	61
	.byte		"CanTp_GeneralConfig_p"
	.byte		0
	.4byte		.L199
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_GeneralConfig_p
	.comm		CanTp_GeneralConfig_p,4,2
.L203:
	.sleb128	4
	.byte		0x1
	.4byte		.L147
	.uleb128	71
	.uleb128	52
	.byte		"CanTp_ChannelList_p"
	.byte		0
	.4byte		.L204
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_ChannelList_p
	.comm		CanTp_ChannelList_p,4,2
.L207:
	.sleb128	4
	.byte		0x1
	.4byte		.L147
	.uleb128	73
	.uleb128	44
	.byte		"CanTp_ConfirmationPending_p"
	.byte		0
	.4byte		.L208
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_ConfirmationPending_p
	.comm		CanTp_ConfirmationPending_p,4,2
.L210:
	.sleb128	4
	.byte		0x1
	.4byte		.L147
	.uleb128	82
	.uleb128	32
	.byte		"CanTp_Status"
	.byte		0
	.4byte		.L211
	.sleb128	5
	.byte		0x3
	.4byte		CanTp_Status
	.comm		CanTp_Status,4,2
	.section	.debug_info,,n
.L192:
	.sleb128	5
	.4byte		.L213
	.uleb128	117
	.uleb128	1
	.4byte		.L214-.L2
	.uleb128	2
	.section	.debug_info,,n
.L105:
	.sleb128	6
	.byte		"CanTpBs_u8"
	.byte		0
	.4byte		.L150
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L106:
	.sleb128	6
	.byte		"CanTpSTmin_u8"
	.byte		0
	.4byte		.L150
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L214:
.L202:
	.sleb128	5
	.4byte		.L213
	.uleb128	117
	.uleb128	1
	.4byte		.L215-.L2
	.uleb128	16
.L97:
	.sleb128	6
	.byte		"TxNSduId_Max"
	.byte		0
	.4byte		.L216
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L98:
	.sleb128	6
	.byte		"RxNPduId_Max"
	.byte		0
	.4byte		.L216
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L99:
	.sleb128	6
	.byte		"RxNSduId_Count"
	.byte		0
	.4byte		.L216
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L100:
	.sleb128	6
	.byte		"Channel_Max_u8"
	.byte		0
	.4byte		.L149
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L101:
	.sleb128	6
	.byte		"CanTp_Mf_Resolution_u16"
	.byte		0
	.4byte		.L166
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L102:
	.sleb128	6
	.byte		"CanTp_Cfg_PaddingByte_u8"
	.byte		0
	.4byte		.L149
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L103:
	.sleb128	6
	.byte		"RxNsduId_Max_u16"
	.byte		0
	.4byte		.L166
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L104:
	.sleb128	6
	.byte		"ConfirmationLength"
	.byte		0
	.4byte		.L166
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L215:
.L197:
	.sleb128	5
	.4byte		.L213
	.uleb128	117
	.uleb128	1
	.4byte		.L218-.L2
	.uleb128	12
.L92:
	.sleb128	6
	.byte		"PduIndex"
	.byte		0
	.4byte		.L216
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	6
	.byte		"NextPdu"
	.byte		0
	.4byte		.L216
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L94:
	.sleb128	6
	.byte		"AddressingFormat"
	.byte		0
	.4byte		.L219
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L95:
	.sleb128	6
	.byte		"N_SA_AE_u8"
	.byte		0
	.4byte		.L149
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L96:
	.sleb128	6
	.byte		"Direction_b"
	.byte		0
	.4byte		.L222
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
	.sleb128	0
.L218:
.L188:
	.sleb128	5
	.4byte		.L213
	.uleb128	117
	.uleb128	1
	.4byte		.L223-.L2
	.uleb128	12
.L86:
	.sleb128	6
	.byte		"CanTpNas_u16"
	.byte		0
	.4byte		.L166
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L87:
	.sleb128	6
	.byte		"CanTpNbs_u16"
	.byte		0
	.4byte		.L166
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L88:
	.sleb128	6
	.byte		"CanTpNcs_u16"
	.byte		0
	.4byte		.L166
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L89:
	.sleb128	6
	.byte		"CanTpTxCanIfNPduId"
	.byte		0
	.4byte		.L216
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L90:
	.sleb128	6
	.byte		"CanTpTxConfirmationId"
	.byte		0
	.4byte		.L216
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L91:
	.sleb128	6
	.byte		"CanTpPduRConfId"
	.byte		0
	.4byte		.L166
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
	.sleb128	0
.L223:
.L183:
	.sleb128	5
	.4byte		.L213
	.uleb128	117
	.uleb128	1
	.4byte		.L224-.L2
	.uleb128	28
.L79:
	.sleb128	6
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L219
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L80:
	.sleb128	6
	.byte		"CanTpTxChannel_u8"
	.byte		0
	.4byte		.L149
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L81:
	.sleb128	6
	.byte		"CanTpTxPaddingActivation"
	.byte		0
	.4byte		.L225
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L82:
	.sleb128	6
	.byte		"CanTpTc_b"
	.byte		0
	.4byte		.L225
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L83:
	.sleb128	6
	.byte		"CanTpTxTaType"
	.byte		0
	.4byte		.L226
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L84:
	.sleb128	6
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L149
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L85:
	.sleb128	6
	.byte		"FrameType"
	.byte		0
	.4byte		.L229
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L224:
.L178:
	.sleb128	5
	.4byte		.L213
	.uleb128	117
	.uleb128	1
	.4byte		.L232-.L2
	.uleb128	16
.L71:
	.sleb128	6
	.byte		"CanTpBsConf_u8"
	.byte		0
	.4byte		.L149
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L72:
	.sleb128	6
	.byte		"CanTpNar_u16"
	.byte		0
	.4byte		.L166
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L73:
	.sleb128	6
	.byte		"CanTpNbr_u16"
	.byte		0
	.4byte		.L166
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L74:
	.sleb128	6
	.byte		"CanTpNcr_u16"
	.byte		0
	.4byte		.L166
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L75:
	.sleb128	6
	.byte		"CanTpRxWftMax_u16"
	.byte		0
	.4byte		.L166
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L76:
	.sleb128	6
	.byte		"CanTpSTminConf_u8"
	.byte		0
	.4byte		.L149
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L77:
	.sleb128	6
	.byte		"CanTpTxFcNPduIdConf"
	.byte		0
	.4byte		.L216
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L78:
	.sleb128	6
	.byte		"CanTpTxFcNPduCanIf"
	.byte		0
	.4byte		.L216
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L232:
.L173:
	.sleb128	5
	.4byte		.L213
	.uleb128	117
	.uleb128	1
	.4byte		.L233-.L2
	.uleb128	24
.L64:
	.sleb128	6
	.byte		"CanTpAddressingMode"
	.byte		0
	.4byte		.L219
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L65:
	.sleb128	6
	.byte		"CanTpRxChannel_u8"
	.byte		0
	.4byte		.L149
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L66:
	.sleb128	6
	.byte		"CanTpRxPaddingActivation"
	.byte		0
	.4byte		.L225
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L67:
	.sleb128	6
	.byte		"CanTpRxTaType"
	.byte		0
	.4byte		.L226
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L68:
	.sleb128	6
	.byte		"CanTp_TargetAddress_u8"
	.byte		0
	.4byte		.L149
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L69:
	.sleb128	6
	.byte		"CanTpRxNSduId"
	.byte		0
	.4byte		.L216
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L70:
	.sleb128	6
	.byte		"FrameType"
	.byte		0
	.4byte		.L229
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L233:
.L206:
	.sleb128	5
	.4byte		.L213
	.uleb128	117
	.uleb128	1
	.4byte		.L234-.L2
	.uleb128	52
.L39:
	.sleb128	6
	.byte		"ChannelIdx_u8"
	.byte		0
	.4byte		.L150
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L40:
	.sleb128	6
	.byte		"IPduId"
	.byte		0
	.4byte		.L217
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L41:
	.sleb128	6
	.byte		"TimeoutTicks_u16"
	.byte		0
	.4byte		.L167
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L42:
	.sleb128	6
	.byte		"StMinTicks_u16"
	.byte		0
	.4byte		.L167
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L43:
	.sleb128	6
	.byte		"TotalLength"
	.byte		0
	.4byte		.L235
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L44:
	.sleb128	6
	.byte		"ProcessedLength"
	.byte		0
	.4byte		.L235
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L45:
	.sleb128	6
	.byte		"ProvidedBufferSize"
	.byte		0
	.4byte		.L235
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L46:
	.sleb128	6
	.byte		"State_u8"
	.byte		0
	.4byte		.L150
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L47:
	.sleb128	6
	.byte		"NextState_u8"
	.byte		0
	.4byte		.L150
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L48:
	.sleb128	6
	.byte		"BlockSize_u16"
	.byte		0
	.4byte		.L167
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L49:
	.sleb128	6
	.byte		"WftCounter_u16"
	.byte		0
	.4byte		.L167
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L50:
	.sleb128	6
	.byte		"SequenceNumber_u8"
	.byte		0
	.4byte		.L150
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L51:
	.sleb128	6
	.byte		"StMin_u8"
	.byte		0
	.4byte		.L150
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L52:
	.sleb128	6
	.byte		"TempBuffer_au8"
	.byte		0
	.4byte		.L236
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L53:
	.sleb128	6
	.byte		"TempLength_u8"
	.byte		0
	.4byte		.L150
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L54:
	.sleb128	6
	.byte		"CanIfDLC_u8"
	.byte		0
	.4byte		.L150
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L55:
	.sleb128	6
	.byte		"CanIfData_au8"
	.byte		0
	.4byte		.L238
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L56:
	.sleb128	6
	.byte		"ULayerIndFlag_b"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L57:
	.sleb128	6
	.byte		"ShutdownFlag_b"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L58:
	.sleb128	6
	.byte		"RemainingCFInBlock_u16"
	.byte		0
	.4byte		.L167
	.sleb128	2
	.byte		0x23
	.uleb128	42
	.byte		0x1
.L59:
	.sleb128	6
	.byte		"LastCFofNSduFlag_b"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L60:
	.sleb128	6
	.byte		"RequiredBufferSize"
	.byte		0
	.4byte		.L235
	.sleb128	2
	.byte		0x23
	.uleb128	46
	.byte		0x1
.L61:
	.sleb128	6
	.byte		"CallerApiId"
	.byte		0
	.4byte		.L150
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L62:
	.sleb128	6
	.byte		"FrameSize"
	.byte		0
	.4byte		.L150
	.sleb128	2
	.byte		0x23
	.uleb128	49
	.byte		0x1
.L63:
	.sleb128	6
	.byte		"CriticalSectionStatus_b"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
	.sleb128	0
.L234:
	.section	.debug_info,,n
.L231:
	.sleb128	7
	.4byte		.L213
	.uleb128	117
	.uleb128	1
	.4byte		.L240-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	8
	.byte		"CANTP_FRAME_TYPE_CAN20"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"CANTP_FRAME_TYPE_CANFD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L240:
.L228:
	.sleb128	7
	.4byte		.L213
	.uleb128	108
	.uleb128	1
	.4byte		.L241-.L2
	.uleb128	4
	.sleb128	8
	.byte		"CANTP_FUNCTIONAL"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"CANTP_PHYSICAL"
	.byte		0
	.sleb128	1
	.sleb128	0
.L241:
.L212:
	.sleb128	7
	.4byte		.L213
	.uleb128	98
	.uleb128	1
	.4byte		.L242-.L2
	.uleb128	4
	.sleb128	8
	.byte		"CANTP_OFF"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"CANTP_ON"
	.byte		0
	.sleb128	1
	.sleb128	0
.L242:
.L221:
	.sleb128	7
	.4byte		.L213
	.uleb128	87
	.uleb128	1
	.4byte		.L243-.L2
	.uleb128	4
	.sleb128	8
	.byte		"CANTP_STANDARD"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"CANTP_EXTENDED"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"CANTP_MIXED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L243:
	.section	.debug_info,,n
.L151:
	.sleb128	9
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L150:
	.sleb128	10
	.byte		"uint8"
	.byte		0
	.4byte		.L151
	.section	.debug_info,,n
.L149:
	.sleb128	11
	.4byte		.L150
.L162:
	.sleb128	9
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L161:
	.sleb128	10
	.byte		"uint32"
	.byte		0
	.4byte		.L162
.L160:
	.sleb128	11
	.4byte		.L161
.L168:
	.sleb128	9
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L167:
	.sleb128	10
	.byte		"uint16"
	.byte		0
	.4byte		.L168
.L166:
	.sleb128	11
	.4byte		.L167
	.section	.debug_info,,n
.L165:
	.sleb128	12
	.4byte		.L166
.L172:
	.sleb128	10
	.byte		"CanTp_RxNSdu_t"
	.byte		0
	.4byte		.L173
.L171:
	.sleb128	11
	.4byte		.L172
.L170:
	.sleb128	12
	.4byte		.L171
.L177:
	.sleb128	10
	.byte		"CanTp_RxNSduConfig_t"
	.byte		0
	.4byte		.L178
.L176:
	.sleb128	11
	.4byte		.L177
.L175:
	.sleb128	12
	.4byte		.L176
.L182:
	.sleb128	10
	.byte		"CanTp_TxNSdu_t"
	.byte		0
	.4byte		.L183
.L181:
	.sleb128	11
	.4byte		.L182
.L180:
	.sleb128	12
	.4byte		.L181
.L187:
	.sleb128	10
	.byte		"CanTp_TxNSduConfig_t"
	.byte		0
	.4byte		.L188
.L186:
	.sleb128	11
	.4byte		.L187
.L185:
	.sleb128	12
	.4byte		.L186
.L191:
	.sleb128	10
	.byte		"CanTp_RxNSduParams_t"
	.byte		0
	.4byte		.L192
.L190:
	.sleb128	12
	.4byte		.L191
.L196:
	.sleb128	10
	.byte		"CanTp_RxLookup_t"
	.byte		0
	.4byte		.L197
.L195:
	.sleb128	11
	.4byte		.L196
.L194:
	.sleb128	12
	.4byte		.L195
.L201:
	.sleb128	10
	.byte		"CanTp_GeneralConfig_t"
	.byte		0
	.4byte		.L202
.L200:
	.sleb128	11
	.4byte		.L201
.L199:
	.sleb128	12
	.4byte		.L200
.L205:
	.sleb128	10
	.byte		"CanTp_Channel_t"
	.byte		0
	.4byte		.L206
.L204:
	.sleb128	12
	.4byte		.L205
.L209:
	.sleb128	10
	.byte		"boolean"
	.byte		0
	.4byte		.L151
.L208:
	.sleb128	12
	.4byte		.L209
.L211:
	.sleb128	10
	.byte		"CanTp_Status_t"
	.byte		0
	.4byte		.L212
.L217:
	.sleb128	10
	.byte		"PduIdType"
	.byte		0
	.4byte		.L167
.L216:
	.sleb128	11
	.4byte		.L217
.L220:
	.sleb128	10
	.byte		"CanTp_AddressingMode_t"
	.byte		0
	.4byte		.L221
.L219:
	.sleb128	11
	.4byte		.L220
.L222:
	.sleb128	11
	.4byte		.L209
.L225:
	.sleb128	11
	.4byte		.L211
.L227:
	.sleb128	10
	.byte		"CanTp_TaType_t"
	.byte		0
	.4byte		.L228
.L226:
	.sleb128	11
	.4byte		.L227
.L230:
	.sleb128	10
	.byte		"CanTp_FrameType_t"
	.byte		0
	.4byte		.L231
.L229:
	.sleb128	11
	.4byte		.L230
.L235:
	.sleb128	10
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L167
	.section	.debug_info,,n
.L236:
	.sleb128	13
	.4byte		.L237-.L2
	.4byte		.L150
	.section	.debug_info,,n
	.sleb128	14
	.uleb128	6
	.sleb128	0
.L237:
.L238:
	.sleb128	13
	.4byte		.L239-.L2
	.4byte		.L150
	.sleb128	14
	.uleb128	7
	.sleb128	0
.L239:
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L152:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),6
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L158:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),6
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanTp_Exit_Area"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "SchM_Exit_CanTp_Area_0","SchM_Exit_CanTp_Area_1"
	.wrcm.end
	.wrcm.nelem "CanTp_Enter_Area"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "SchM_Enter_CanTp_Area_0","SchM_Enter_CanTp_Area_1"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_Lcfg.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_Lcfg.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanTp_Lcfg.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanTp_Lcfg.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanTp_Lcfg.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\CanTp_Lcfg.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
