#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"COM.c"
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
# FUNC(Com_StatusType, COM_CODE) Com_GetStatus(void)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\COM.c"
        .d2line         125,32
#$$ld
.L173:

#$$bf	Com_GetStatus,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		Com_GetStatus
	.d2_cfa_start __cie
Com_GetStatus:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     return Com_Status;
	.d2line		127
	lis		r3,Com_Status@ha
	lwz		r3,Com_Status@l(r3)
# }
	.d2line		128
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L174:
	.type		Com_GetStatus,@function
	.size		Com_GetStatus,.-Com_GetStatus
# Number of nodes = 2

# Allocations for Com_GetStatus
# FUNC(uint32, COM_CODE) Com_GetConfigurationId(void)
	.align		2
	.section	.text_vle
        .d2line         138,24
#$$ld
.L181:

#$$bf	Com_GetConfigurationId,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		Com_GetConfigurationId
	.d2_cfa_start __cie
Com_GetConfigurationId:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(uint32, AUTOMATIC) ReturnValue;
# 
# #if COM_DEV_ERROR_DETECT == STD_ON
#     if (Com_Status == COM_UNINIT)
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                 COM_INSTANCE_ID,
#                 COMServiceId_GetConfigurationId,
#                 COM_E_UNINIT);
#         ReturnValue = 0U;
#     }
#     else
# #endif /* COM_DEV_ERROR_DETECT */
#     {
#         ReturnValue = Com_Main->ConfigurationId;
	.d2line		154
	lis		r3,Com_Main@ha
	lwz		r3,Com_Main@l(r3)
	lwz		r3,0(r3)
.Llo1:
	mr		r3,r3		# ReturnValue=r3 ReturnValue=r3
#     }
# 
#     return ReturnValue;
	.d2line		157
	mr		r3,r3		# ReturnValue=r3 ReturnValue=r3
# }
	.d2line		158
	.d2epilogue_begin
.Llo2:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L182:
	.type		Com_GetConfigurationId,@function
	.size		Com_GetConfigurationId,.-Com_GetConfigurationId
# Number of nodes = 6

# Allocations for Com_GetConfigurationId
#	?a4		ReturnValue
# FUNC(void, COM_CODE) Com_GetVersionInfo(
	.align		2
	.section	.text_vle
        .d2line         919,22
#$$ld
.L190:

#$$bf	Com_GetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		Com_GetVersionInfo
	.d2_cfa_start __cie
Com_GetVersionInfo:
.Llo3:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# versioninfo=r4 versioninfo=r3
	.d2prologue_end
#         P2VAR(Std_VersionInfoType, AUTOMATIC, COM_APPL_DATA) versioninfo)
# {
# #if COM_DEV_ERROR_DETECT == STD_ON
#     if(versioninfo == NULL_PTR)
#     {
#         (void)Det_ReportError(COM_MODULE_ID,COM_INSTANCE_ID,
#                 COMServiceId_GetVersionInfo,COM_E_PARAM_POINTER);
#     }
#     else
#     {
# #endif /* COM_DEV_ERROR_DETECT */
#        versioninfo->vendorID = COM_VENDOR_ID;
	.d2line		931
.Llo4:
	diab.li		r3,31
.Llo5:
	sth		r3,0(r4)		# versioninfo=r4
#        versioninfo->moduleID = COM_MODULE_ID;
	.d2line		932
	diab.li		r3,50
	sth		r3,2(r4)		# versioninfo=r4
#        versioninfo->sw_major_version = COM_CFG_H_SW_MAJOR_VERSION;
	.d2line		933
	diab.li		r3,5
	stb		r3,4(r4)		# versioninfo=r4
#        versioninfo->sw_minor_version = COM_CFG_H_SW_MINOR_VERSION;
	.d2line		934
	diab.li		r3,1
	stb		r3,5(r4)		# versioninfo=r4
#        versioninfo->sw_patch_version = COM_CFG_H_SW_PATCH_VERSION;
	.d2line		935
	diab.li		r3,0
	stb		r3,6(r4)		# versioninfo=r4
# 
# #if COM_DEV_ERROR_DETECT == STD_ON
#    }
# #endif /* COM_DEV_ERROR_DETECT */
# }
	.d2line		940
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo6:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L191:
	.type		Com_GetVersionInfo,@function
	.size		Com_GetVersionInfo,.-Com_GetVersionInfo
# Number of nodes = 28

# Allocations for Com_GetVersionInfo
#	?a4		versioninfo

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L291:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L287:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\ComXf_CommonTypes.h"
.L211:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\Com_Types.h"
.L198:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\Com_i.h"
.L175:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\COM.c"
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
	.uleb128	4
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
	.uleb128	5
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
	.uleb128	6
	.uleb128	52
	.byte		0x0
	.uleb128	63
	.uleb128	12
	.uleb128	60
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
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
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
	.uleb128	12
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
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
	.uleb128	15
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\COM.c"
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
.L178:
	.sleb128	2
	.4byte		.L172-.L2
	.byte		"Com_GetStatus"
	.byte		0
	.4byte		.L175
	.uleb128	125
	.uleb128	32
	.4byte		.L176
	.byte		0x1
	.byte		0x1
	.4byte		.L173
	.4byte		.L174
	.section	.debug_info,,n
	.sleb128	0
.L172:
	.section	.debug_info,,n
.L185:
	.sleb128	2
	.4byte		.L180-.L2
	.byte		"Com_GetConfigurationId"
	.byte		0
	.4byte		.L175
	.uleb128	138
	.uleb128	24
	.4byte		.L183
	.byte		0x1
	.byte		0x1
	.4byte		.L181
	.4byte		.L182
	.section	.debug_info,,n
.L186:
	.sleb128	3
	.4byte		.L175
	.uleb128	140
	.uleb128	28
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L183
	.4byte		.L187
	.section	.debug_info,,n
	.sleb128	0
.L180:
	.section	.debug_info,,n
.L192:
	.sleb128	4
	.4byte		.L189-.L2
	.byte		"Com_GetVersionInfo"
	.byte		0
	.4byte		.L175
	.uleb128	919
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L190
	.4byte		.L191
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L175
	.uleb128	919
	.uleb128	22
	.byte		"versioninfo"
	.byte		0
	.4byte		.L193
	.4byte		.L196
	.section	.debug_info,,n
	.sleb128	0
.L189:
	.section	.debug_info,,n
.L197:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L198
	.uleb128	511
	.uleb128	36
	.byte		"Com_Status"
	.byte		0
	.4byte		.L176
	.0byte		.L197
.L199:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L198
	.uleb128	513
	.uleb128	55
	.byte		"Com_Main"
	.byte		0
	.4byte		.L200
	.section	.debug_info,,n
.L204:
	.sleb128	7
	.byte		0x1
	.4byte		.L175
	.uleb128	71
	.uleb128	25
	.byte		"Com_DeferredReceivedIPduWriter"
	.byte		0
	.4byte		.L205
	.sleb128	5
	.byte		0x3
	.4byte		Com_DeferredReceivedIPduWriter
	.comm		Com_DeferredReceivedIPduWriter,2,1
.L208:
	.sleb128	7
	.byte		0x1
	.4byte		.L175
	.uleb128	72
	.uleb128	25
	.byte		"Com_DeferredReceivedIPduReader"
	.byte		0
	.4byte		.L205
	.sleb128	5
	.byte		0x3
	.4byte		Com_DeferredReceivedIPduReader
	.comm		Com_DeferredReceivedIPduReader,2,1
.L209:
	.sleb128	7
	.byte		0x1
	.4byte		.L175
	.uleb128	73
	.uleb128	38
	.byte		"Com_DeferredReceivedIPduFifo"
	.byte		0
	.4byte		.L210
	.sleb128	5
	.byte		0x3
	.4byte		Com_DeferredReceivedIPduFifo
	.comm		Com_DeferredReceivedIPduFifo,4,2
	.section	.debug_info,,n
.L203:
	.sleb128	8
	.4byte		.L211
	.uleb128	82
	.uleb128	1
	.4byte		.L212-.L2
	.uleb128	100
	.section	.debug_info,,n
.L120:
	.sleb128	9
	.byte		"ConfigurationId"
	.byte		0
	.4byte		.L183
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L121:
	.sleb128	9
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L213
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L122:
	.sleb128	9
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L213
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L123:
	.sleb128	9
	.byte		"IpduGroups_Ref"
	.byte		0
	.4byte		.L215
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L124:
	.sleb128	9
	.byte		"RxIpdus_Ref"
	.byte		0
	.4byte		.L220
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L125:
	.sleb128	9
	.byte		"RxIpdusDeferred_Ref"
	.byte		0
	.4byte		.L225
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L126:
	.sleb128	9
	.byte		"RxIpdusImmediate_Ref"
	.byte		0
	.4byte		.L225
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L127:
	.sleb128	9
	.byte		"RxIpdusRxDM_Ref"
	.byte		0
	.4byte		.L225
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L128:
	.sleb128	9
	.byte		"TxIpdus_Ref"
	.byte		0
	.4byte		.L227
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L129:
	.sleb128	9
	.byte		"Signals_Ref"
	.byte		0
	.4byte		.L232
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L130:
	.sleb128	9
	.byte		"IpduToSignal_Ref"
	.byte		0
	.4byte		.L237
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L131:
	.sleb128	9
	.byte		"GroupSignalToIPdu_Ref"
	.byte		0
	.4byte		.L237
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L132:
	.sleb128	9
	.byte		"TxModes_Ref"
	.byte		0
	.4byte		.L241
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L133:
	.sleb128	9
	.byte		"CycleTimers_Ref"
	.byte		0
	.4byte		.L246
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L134:
	.sleb128	9
	.byte		"DeferredLength_Ref"
	.byte		0
	.4byte		.L249
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L135:
	.sleb128	9
	.byte		"DeferredReceivedIPdu_Ref"
	.byte		0
	.4byte		.L210
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L136:
	.sleb128	9
	.byte		"DeferredReceivedIPduArrayLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L137:
	.sleb128	9
	.byte		"RxIpdusFlags"
	.byte		0
	.4byte		.L252
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L138:
	.sleb128	9
	.byte		"Com_ZeroMask"
	.byte		0
	.4byte		.L252
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L139:
	.sleb128	9
	.byte		"SignalGroup_base"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L140:
	.sleb128	9
	.byte		"MemberSignal_base"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	78
	.byte		0x1
.L141:
	.sleb128	9
	.byte		"SignalArrayLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L142:
	.sleb128	9
	.byte		"SignalGroupArrayLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	82
	.byte		0x1
.L143:
	.sleb128	9
	.byte		"MemberSignalArrayLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L144:
	.sleb128	9
	.byte		"TxIpduIdArrayLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	86
	.byte		0x1
.L145:
	.sleb128	9
	.byte		"RxIpduIdArrayLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L146:
	.sleb128	9
	.byte		"RxIPduDeferredArrayLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	90
	.byte		0x1
.L147:
	.sleb128	9
	.byte		"RxIPduImmediateArralLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L148:
	.sleb128	9
	.byte		"RxIPduRxDMArralLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	94
	.byte		0x1
.L149:
	.sleb128	9
	.byte		"IpduGroupArrayLength"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
	.sleb128	0
.L212:
.L219:
	.sleb128	8
	.4byte		.L211
	.uleb128	82
	.uleb128	1
	.4byte		.L256-.L2
	.uleb128	24
.L109:
	.sleb128	9
	.byte		"DescendentGroupList_Ref"
	.byte		0
	.4byte		.L257
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L110:
	.sleb128	9
	.byte		"ChildGroupList_Ref"
	.byte		0
	.4byte		.L257
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L111:
	.sleb128	9
	.byte		"AncestorGroupList_Ref"
	.byte		0
	.4byte		.L257
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L112:
	.sleb128	9
	.byte		"DescendentListLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L113:
	.sleb128	9
	.byte		"ChildListLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L114:
	.sleb128	9
	.byte		"AncestorListLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L115:
	.sleb128	9
	.byte		"ParentListLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L116:
	.sleb128	9
	.byte		"Flags"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L256:
.L224:
	.sleb128	8
	.4byte		.L211
	.uleb128	82
	.uleb128	1
	.4byte		.L260-.L2
	.uleb128	40
.L97:
	.sleb128	9
	.byte		"RxIPduId"
	.byte		0
	.4byte		.L205
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L98:
	.sleb128	9
	.byte		"RxGroupList_Ref"
	.byte		0
	.4byte		.L257
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L99:
	.sleb128	9
	.byte		"SignalIndex_Ref"
	.byte		0
	.4byte		.L237
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L100:
	.sleb128	9
	.byte		"ForeGroundBuffer_Ref"
	.byte		0
	.4byte		.L252
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L101:
	.sleb128	9
	.byte		"BackGroundBuffer_Ref"
	.byte		0
	.4byte		.L252
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L102:
	.sleb128	9
	.byte		"RxIpduFlags_Ref"
	.byte		0
	.4byte		.L261
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L103:
	.sleb128	9
	.byte		"IsBackGroundBufferUpdated_Ref"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L104:
	.sleb128	9
	.byte		"RxGroupListLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L105:
	.sleb128	9
	.byte		"NumberOfSignals"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L106:
	.sleb128	9
	.byte		"IpduLength"
	.byte		0
	.4byte		.L251
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L107:
	.sleb128	9
	.byte		"IPduFlags"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L108:
	.sleb128	9
	.byte		"Com_DeferredNotificationCall_Ref"
	.byte		0
	.4byte		.L268
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L260:
.L270:
	.sleb128	8
	.4byte		.L211
	.uleb128	82
	.uleb128	1
	.4byte		.L271-.L2
	.uleb128	4
.L95:
	.sleb128	9
	.byte		"Com_DeferredNotificationIndex"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L96:
	.sleb128	9
	.byte		"Com_DeferredNotificationIndexType"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L271:
.L264:
	.sleb128	8
	.4byte		.L211
	.uleb128	82
	.uleb128	1
	.4byte		.L272-.L2
	.uleb128	2
.L93:
	.sleb128	9
	.byte		"DeferredIPduReceived"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L94:
	.sleb128	9
	.byte		"IsBackGroundBufferUpdated"
	.byte		0
	.4byte		.L267
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L272:
.L231:
	.sleb128	8
	.4byte		.L211
	.uleb128	82
	.uleb128	1
	.4byte		.L273-.L2
	.uleb128	60
.L75:
	.sleb128	9
	.byte		"TxGroupList_Ref"
	.byte		0
	.4byte		.L257
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L76:
	.sleb128	9
	.byte		"IsIPduGroupEnabled_Ref"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L77:
	.sleb128	9
	.byte		"IsTxPending_Ref"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L78:
	.sleb128	9
	.byte		"IsConfirmationPending_Ref"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L79:
	.sleb128	9
	.byte		"IsConfirmationDeferred_Ref"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L80:
	.sleb128	9
	.byte		"CurrentTxMode_Ref"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L81:
	.sleb128	9
	.byte		"IsTransmissionFailed_Ref"
	.byte		0
	.4byte		.L265
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L82:
	.sleb128	9
	.byte		"Pdu"
	.byte		0
	.4byte		.L274
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L83:
	.sleb128	9
	.byte		"TxGroupListLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L84:
	.sleb128	9
	.byte		"Signals_Index"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L85:
	.sleb128	9
	.byte		"NumberOfSignals"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L86:
	.sleb128	9
	.byte		"SignalsWithUpdateBit_Ref"
	.byte		0
	.4byte		.L276
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L87:
	.sleb128	9
	.byte		"NumberOfSignalsWithUpdateBit"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L88:
	.sleb128	9
	.byte		"InitializeLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
.L89:
	.sleb128	9
	.byte		"TxMode"
	.byte		0
	.4byte		.L278
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L90:
	.sleb128	9
	.byte		"TargetId"
	.byte		0
	.4byte		.L205
	.sleb128	2
	.byte		0x23
	.uleb128	54
	.byte		0x1
.L91:
	.sleb128	9
	.byte		"IpduFlags"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L92:
	.sleb128	9
	.byte		"UnusedValue"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	58
	.byte		0x1
	.sleb128	0
.L273:
.L236:
	.sleb128	8
	.4byte		.L211
	.uleb128	82
	.uleb128	1
	.4byte		.L280-.L2
	.uleb128	56
.L54:
	.sleb128	9
	.byte		"ForeGroundBuffer_Ref"
	.byte		0
	.4byte		.L252
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L55:
	.sleb128	9
	.byte		"BackGroundBuffer_Ref"
	.byte		0
	.4byte		.L252
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L56:
	.sleb128	9
	.byte		"ShadowBuffer_Ref"
	.byte		0
	.4byte		.L252
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L57:
	.sleb128	9
	.byte		"UpdateBit_Ref"
	.byte		0
	.4byte		.L252
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L58:
	.sleb128	9
	.byte		"InitValue_Ref"
	.byte		0
	.4byte		.L281
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L59:
	.sleb128	9
	.byte		"IPDU"
	.byte		0
	.4byte		.L205
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L60:
	.sleb128	9
	.byte		"InvalidIndex"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L61:
	.sleb128	9
	.byte		"BytePosition"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L62:
	.sleb128	9
	.byte		"NotifyFunctionIndex"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L63:
	.sleb128	9
	.byte		"TimeoutFunctionIndex"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L64:
	.sleb128	9
	.byte		"SignalFlagsLT"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L65:
	.sleb128	9
	.byte		"UpdateBitMask"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L66:
	.sleb128	9
	.byte		"NotifyLength"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L67:
	.sleb128	9
	.byte		"MinimumReceiveLength"
	.byte		0
	.4byte		.L251
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L68:
	.sleb128	9
	.byte		"ComXf_Signal"
	.byte		0
	.4byte		.L284
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L280:
.L245:
	.sleb128	8
	.4byte		.L211
	.uleb128	82
	.uleb128	1
	.4byte		.L286-.L2
	.uleb128	4
.L52:
	.sleb128	9
	.byte		"Period"
	.byte		0
	.4byte		.L248
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L53:
	.sleb128	9
	.byte		"Offset"
	.byte		0
	.4byte		.L248
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L286:
.L285:
	.sleb128	8
	.4byte		.L287
	.uleb128	44
	.uleb128	1
	.4byte		.L288-.L2
	.uleb128	20
.L43:
	.sleb128	9
	.byte		"SignBitMask"
	.byte		0
	.4byte		.L183
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L44:
	.sleb128	9
	.byte		"BufferLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L45:
	.sleb128	9
	.byte		"Flags"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L46:
	.sleb128	9
	.byte		"Type"
	.byte		0
	.4byte		.L289
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L47:
	.sleb128	9
	.byte		"TransferProperty"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L48:
	.sleb128	9
	.byte		"PackingType"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L49:
	.sleb128	9
	.byte		"Mask1"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L50:
	.sleb128	9
	.byte		"Mask2"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L51:
	.sleb128	9
	.byte		"shift"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L288:
	.section	.debug_info,,n
.L275:
	.sleb128	10
	.4byte		.L291
	.uleb128	69
	.uleb128	1
	.4byte		.L292-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L39:
	.sleb128	9
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L253
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L40:
	.sleb128	9
	.byte		"SduLength"
	.byte		0
	.4byte		.L251
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L292:
.L195:
	.sleb128	8
	.4byte		.L291
	.uleb128	69
	.uleb128	1
	.4byte		.L293-.L2
	.uleb128	8
.L34:
	.sleb128	9
	.byte		"vendorID"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L35:
	.sleb128	9
	.byte		"moduleID"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L36:
	.sleb128	9
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L37:
	.sleb128	9
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L38:
	.sleb128	9
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L254
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L293:
	.section	.debug_info,,n
.L177:
	.sleb128	11
	.4byte		.L211
	.uleb128	82
	.uleb128	1
	.4byte		.L294-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"COM_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"COM_INIT"
	.byte		0
	.sleb128	1
	.sleb128	0
.L294:
.L290:
	.sleb128	11
	.4byte		.L287
	.uleb128	44
	.uleb128	1
	.4byte		.L295-.L2
	.uleb128	4
	.sleb128	12
	.byte		"COM_BOOLEAN"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"COM_UINT8"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"COM_UINT16"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"COM_UINT32"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"COM_SINT8"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"COM_SINT16"
	.byte		0
	.sleb128	5
	.sleb128	12
	.byte		"COM_SINT32"
	.byte		0
	.sleb128	6
	.sleb128	12
	.byte		"COM_BYTES"
	.byte		0
	.sleb128	7
	.sleb128	12
	.byte		"COM_UINT8_DYN"
	.byte		0
	.sleb128	8
	.sleb128	12
	.byte		"COM_FLOAT32"
	.byte		0
	.sleb128	9
	.sleb128	12
	.byte		"COM_FLOAT64"
	.byte		0
	.sleb128	10
	.sleb128	0
.L295:
	.section	.debug_info,,n
.L176:
	.sleb128	13
	.byte		"Com_StatusType"
	.byte		0
	.4byte		.L177
	.section	.debug_info,,n
.L184:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L183:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L184
.L194:
	.sleb128	13
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L195
	.section	.debug_info,,n
.L193:
	.sleb128	15
	.4byte		.L194
.L202:
	.sleb128	13
	.byte		"Com_ConfigType"
	.byte		0
	.4byte		.L203
	.section	.debug_info,,n
.L201:
	.sleb128	16
	.4byte		.L202
.L200:
	.sleb128	15
	.4byte		.L201
.L207:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L206:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L207
.L205:
	.sleb128	13
	.byte		"PduIdType"
	.byte		0
	.4byte		.L206
.L210:
	.sleb128	15
	.4byte		.L205
.L214:
	.sleb128	16
	.4byte		.L183
.L213:
	.sleb128	15
	.4byte		.L214
.L218:
	.sleb128	13
	.byte		"Com_IpduGroup"
	.byte		0
	.4byte		.L219
.L217:
	.sleb128	16
	.4byte		.L218
.L216:
	.sleb128	15
	.4byte		.L217
.L215:
	.sleb128	16
	.4byte		.L216
.L223:
	.sleb128	13
	.byte		"Com_RxIpdu"
	.byte		0
	.4byte		.L224
.L222:
	.sleb128	16
	.4byte		.L223
.L221:
	.sleb128	15
	.4byte		.L222
.L220:
	.sleb128	16
	.4byte		.L221
.L226:
	.sleb128	15
	.4byte		.L220
.L225:
	.sleb128	16
	.4byte		.L226
.L230:
	.sleb128	13
	.byte		"Com_TxIpdu"
	.byte		0
	.4byte		.L231
.L229:
	.sleb128	16
	.4byte		.L230
.L228:
	.sleb128	15
	.4byte		.L229
.L227:
	.sleb128	16
	.4byte		.L228
.L235:
	.sleb128	13
	.byte		"Com_SignalsPB"
	.byte		0
	.4byte		.L236
.L234:
	.sleb128	16
	.4byte		.L235
.L233:
	.sleb128	15
	.4byte		.L234
.L232:
	.sleb128	16
	.4byte		.L233
.L240:
	.sleb128	13
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L206
.L239:
	.sleb128	16
	.4byte		.L240
.L238:
	.sleb128	15
	.4byte		.L239
.L237:
	.sleb128	16
	.4byte		.L238
.L244:
	.sleb128	13
	.byte		"Com_TxModeType"
	.byte		0
	.4byte		.L245
.L243:
	.sleb128	16
	.4byte		.L244
.L242:
	.sleb128	15
	.4byte		.L243
.L241:
	.sleb128	16
	.4byte		.L242
.L248:
	.sleb128	13
	.byte		"Com_Timer"
	.byte		0
	.4byte		.L206
.L247:
	.sleb128	15
	.4byte		.L248
.L246:
	.sleb128	16
	.4byte		.L247
.L251:
	.sleb128	13
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L206
.L250:
	.sleb128	15
	.4byte		.L251
.L249:
	.sleb128	16
	.4byte		.L250
.L255:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L254:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L255
.L253:
	.sleb128	15
	.4byte		.L254
.L252:
	.sleb128	16
	.4byte		.L253
.L259:
	.sleb128	16
	.4byte		.L205
.L258:
	.sleb128	15
	.4byte		.L259
.L257:
	.sleb128	16
	.4byte		.L258
.L263:
	.sleb128	13
	.byte		"Com_RxIPduFlag"
	.byte		0
	.4byte		.L264
.L262:
	.sleb128	15
	.4byte		.L263
.L261:
	.sleb128	16
	.4byte		.L262
.L267:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L255
.L266:
	.sleb128	15
	.4byte		.L267
.L265:
	.sleb128	16
	.4byte		.L266
.L269:
	.sleb128	13
	.byte		"Com_DeferredNotificationCall"
	.byte		0
	.4byte		.L270
.L268:
	.sleb128	15
	.4byte		.L269
.L274:
	.sleb128	13
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L275
.L277:
	.sleb128	16
	.4byte		.L206
.L276:
	.sleb128	15
	.4byte		.L277
	.section	.debug_info,,n
.L278:
	.sleb128	17
	.4byte		.L279-.L2
	.4byte		.L206
	.section	.debug_info,,n
	.sleb128	18
	.uleb128	0
	.sleb128	0
.L279:
.L283:
	.sleb128	16
	.4byte		.L254
.L282:
	.sleb128	15
	.4byte		.L283
.L281:
	.sleb128	16
	.4byte		.L282
.L284:
	.sleb128	13
	.byte		"ComXf_SignalsPB"
	.byte		0
	.4byte		.L285
.L289:
	.sleb128	13
	.byte		"Com_SignalType"
	.byte		0
	.4byte		.L290
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L187:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L196:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Com_GetVersionInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Com_GetConfigurationId"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Com_GetStatus"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\COM.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\COM.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\COM.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\COM.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\COM.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\COM.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\Com\ssc\make\..\src\COM.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
