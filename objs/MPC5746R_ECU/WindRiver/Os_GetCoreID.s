#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_GetCoreID.c"
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
# FUNC (CoreIdType,OS_CODE) GetCoreID(void)
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11353:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11349:
	.0byte		.L11347
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\misc\\Os_GetCoreID.c"
        .d2line         65,27
#$$ld
.L11356:

#$$bf	GetCoreID,interprocedural,rasave,nostackparams
	.globl		GetCoreID
	.d2_cfa_start __cie
GetCoreID:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* Must be call able before StartOS [OS625-02] */
#     return Os_GetCoreIDFunc();
	.d2line		68
	lis		r3,Os_GetCoreIDFunc@ha
	lwz		r0,Os_GetCoreIDFunc@l(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 2 u
	bcctrl		20,0
	rlwinm		r3,r3,0,16,31
# }
	.d2line		69
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11357:
	.type		GetCoreID,@function
	.size		GetCoreID,.-GetCoreID
# Number of nodes = 4

# Allocations for GetCoreID
# static FUNC(CoreIdType,OS_CODE)  Os_GetCoreID(void)
	.align		1
	.section	.Os_PUBLIC_TEXT,,c
        .d2line         72,34
#$$ld
.L11365:

#$$bf	Os_GetCoreID,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_GetCoreID:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     return OS_GETCOREIDASUSER(); /* [OS625-01] */
	.d2line		74
	bl		OS_COREID_SYS_CALL
	rlwinm		r3,r3,0,16,31
# }
	.d2line		75
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11366:
	.type		Os_GetCoreID,@function
	.size		Os_GetCoreID,.-Os_GetCoreID
# Number of nodes = 4

# Allocations for Os_GetCoreID
# FUNC(CoreIdType,OS_CODE)  Os_GetCoreIDAPI(void)
	.align		2
	.section	.Os_PUBLIC_TEXT,,c
        .d2line         78,27
#$$ld
.L11370:

#$$bf	Os_GetCoreIDAPI,interprocedural,rasave,nostackparams
	.globl		Os_GetCoreIDAPI
	.d2_cfa_start __cie
Os_GetCoreIDAPI:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(Os_APICallType,AUTOMATIC) Os_GetCoreIDAPI_Call;
# 
#     OS_LIGHT_SYSCALL ( Os_GetCoreIDAPI_Call, GetCoreID );
	.d2line		82
	diab.addi		r3,r1,8
	lis		r4,Os_API_GetCoreID@ha
	e_add16i		r4,r4,Os_API_GetCoreID@l
	bl		OS_SYS_CALL
# 
#     return Os_GetCoreIDAPI_Call.Os_API_Data.Os_ApiGetCoreID.CoreID;
	.d2line		84
	lhz		r3,24(r1)
# }
	.d2line		85
	.d2epilogue_begin
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11371:
	.type		Os_GetCoreIDAPI,@function
	.size		Os_GetCoreIDAPI,.-Os_GetCoreIDAPI
# Number of nodes = 14

# Allocations for Os_GetCoreIDAPI
#	SP,8		Os_GetCoreIDAPI_Call
# OS_APILIGHT(GetCoreID)
	.section	.Os_TEXT,,c
	.align		2
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11383:
	.section	.Os_TEXT,,c
#$$ld
.L11379:
	.0byte		.L11377
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\misc\\Os_GetCoreID.c"
        .d2line         97,1
#$$ld
.L11386:

#$$bf	Os_API_GetCoreID,interprocedural,rasave,nostackparams
	.globl		Os_API_GetCoreID
	.d2_cfa_start __cie
Os_API_GetCoreID:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	.d2prologue_end
# {
#      /* List of requirements that are not checked (automatically satisfied):
#      * [OS088-01-183] [OS088-01-184] [OS088-01-185] [OS088-01-186] [OS088-01-187]
#      * [OS088-01-188] [OS088-01-189] [OS088-01-190] [OS088-01-191] [OS088-01-192]
#      * [OS088-01-223] [OS088-01-244] [OS088-01-245] [OS-MGC-0055-14] [OS-MGC-0055-28]
#      */
# 
#     Os_APICall->Os_API_Data.Os_ApiGetCoreID.CoreID = Os_GetCoreID();
	.d2line		105
.Llo2:
	bl		Os_GetCoreID
.Llo3:
	sth		r3,16(r31)		# Os_APICall=r31
# } /* End GetCoreID */
	.d2line		106
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo4:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11387:
	.type		Os_API_GetCoreID,@function
	.size		Os_API_GetCoreID,.-Os_API_GetCoreID
# Number of nodes = 7

# Allocations for Os_API_GetCoreID
#	?a4		Os_APICall

# Allocations for module
	.section	.Os_PUBLIC_DATA,,d
	.0byte		.L11392
	.section	.Os_PUBLIC_DATA,,d
	.type		Os_GetCoreIDFunc,@object
	.size		Os_GetCoreIDFunc,4
	.align		2
	.globl		Os_GetCoreIDFunc
Os_GetCoreIDFunc:
	.long		Os_GetCoreID
	.section	.text_vle
#$$ld
.L5:
.L11787:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L11784:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L11782:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L11780:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L11778:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L11768:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L11766:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11760:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11715:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11652:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11627:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11398:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11393:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\misc\\Os_GetCoreID.c"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11350:
.L11358:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\misc\\Os_GetCoreID.c"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11380:
.L11388:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\misc\\Os_GetCoreID.c"
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
	.uleb128	39
	.uleb128	12
	.uleb128	17
	.uleb128	1
	.uleb128	18
	.uleb128	1
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	4
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
	.uleb128	5
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
	.uleb128	6
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	23
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
	.uleb128	11
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
	.uleb128	12
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
	.uleb128	13
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
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
	.uleb128	15
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
	.uleb128	16
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	24
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\misc\\Os_GetCoreID.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11347:
	.4byte		.L11348-.L11346
.L11346:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11352-.L11347
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\misc\\Os_GetCoreID.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11349
	.4byte		.L11350
	.4byte		.L11353
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11362:
	.sleb128	2
	.4byte		.L11355-.L11347
	.byte		"GetCoreID"
	.byte		0
	.4byte		.L11358
	.uleb128	65
	.uleb128	27
	.4byte		.L11359
	.byte		0x1
	.byte		0x1
	.4byte		.L11356
	.4byte		.L11357
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11355:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11367:
	.sleb128	3
	.4byte		.L11364-.L11347
	.byte		"Os_GetCoreID"
	.byte		0
	.4byte		.L11358
	.uleb128	72
	.uleb128	34
	.4byte		.L11359
	.byte		0x1
	.4byte		.L11365
	.4byte		.L11366
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11364:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11372:
	.sleb128	2
	.4byte		.L11369-.L11347
	.byte		"Os_GetCoreIDAPI"
	.byte		0
	.4byte		.L11358
	.uleb128	78
	.uleb128	27
	.4byte		.L11359
	.byte		0x1
	.byte		0x1
	.4byte		.L11370
	.4byte		.L11371
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11373:
	.sleb128	4
	.4byte		.L11358
	.uleb128	80
	.uleb128	35
	.byte		"Os_GetCoreIDAPI_Call"
	.byte		0
	.4byte		.L11374
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11369:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11377:
	.4byte		.L11378-.L11376
.L11376:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11382-.L11377
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\misc\\Os_GetCoreID.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11379
	.4byte		.L11380
	.4byte		.L11383
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11389:
	.sleb128	5
	.4byte		.L11385-.L11377
	.byte		"Os_API_GetCoreID"
	.byte		0
	.4byte		.L11388
	.uleb128	97
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11386
	.4byte		.L11387
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11388
	.uleb128	97
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11390
	.4byte		.L11391
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11385:
	.section	.debug_info,,n
.L11392:
	.sleb128	7
	.byte		0x1
	.4byte		.L11393
	.uleb128	48
	.uleb128	37
	.byte		"Os_GetCoreIDFunc"
	.byte		0
	.4byte		.L11394
	.sleb128	5
	.byte		0x3
	.4byte		Os_GetCoreIDFunc
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11375:
	.sleb128	8
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11399-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
	.section	.debug_info,,n
.L720:
	.sleb128	9
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	9
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L722:
	.sleb128	9
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11405
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L723:
	.sleb128	9
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11407
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L724:
	.sleb128	9
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11415
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11399:
	.section	.debug_info,,n
.L11415:
	.sleb128	10
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11416-.L2
	.uleb128	24
.L672:
	.sleb128	9
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L673:
	.sleb128	9
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11419
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	9
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11421
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L675:
	.sleb128	9
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11423
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	9
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11425
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L677:
	.sleb128	9
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11427
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	9
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11429
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L679:
	.sleb128	9
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11431
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	9
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11433
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	9
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11435
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	9
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11437
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	9
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	9
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11441
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	9
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11443
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	9
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11445
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	9
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11447
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	9
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11449
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	9
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11451
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	9
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11453
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	9
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11455
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	9
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11457
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	9
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11459
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	9
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11461
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	9
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11463
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	9
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	9
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11467
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	9
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11469
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	9
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11471
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	9
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	9
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11475
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	9
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11477
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	9
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11479
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	9
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11481
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	9
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	9
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11485
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	9
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11487
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	9
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11489
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	9
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11491
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	9
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11493
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	9
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11495
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	9
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11497
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	9
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11499
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	9
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11501
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	9
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11503
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	9
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11505
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	9
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11507
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	9
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11509
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	9
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11511
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11416:
	.section	.debug_info,,n
.L11512:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11513-.L2
	.uleb128	8
.L670:
	.sleb128	9
	.byte		"CoreID"
	.byte		0
	.4byte		.L11359
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L671:
	.sleb128	9
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11514
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11513:
.L11510:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11516-.L2
	.uleb128	8
.L668:
	.sleb128	9
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11517
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L669:
	.sleb128	9
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11521
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11516:
.L11508:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11527-.L2
	.uleb128	8
.L666:
	.sleb128	9
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L667:
	.sleb128	9
	.byte		"Success"
	.byte		0
	.4byte		.L11529
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11527:
.L11506:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11532-.L2
	.uleb128	2
.L665:
	.sleb128	9
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11532:
.L11504:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11533-.L2
	.uleb128	2
.L664:
	.sleb128	9
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11533:
.L11502:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11534-.L2
	.uleb128	20
.L659:
	.sleb128	9
	.byte		"ProcId"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L660:
	.sleb128	9
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11403
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L661:
	.sleb128	9
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11538
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L662:
	.sleb128	9
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11403
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L663:
	.sleb128	9
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11538
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11534:
.L11500:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11539-.L2
	.uleb128	12
.L656:
	.sleb128	9
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11540
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L657:
	.sleb128	9
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11541
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L658:
	.sleb128	9
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11542
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11539:
.L11498:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11544-.L2
	.uleb128	12
.L653:
	.sleb128	9
	.byte		"AppID"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L654:
	.sleb128	9
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11546
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L655:
	.sleb128	9
	.byte		"Object"
	.byte		0
	.4byte		.L11537
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11544:
.L11496:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11548-.L2
	.uleb128	12
.L650:
	.sleb128	9
	.byte		"AppID"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L651:
	.sleb128	9
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11546
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L652:
	.sleb128	9
	.byte		"Object"
	.byte		0
	.4byte		.L11537
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11548:
.L11462:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11549-.L2
	.uleb128	4
.L649:
	.sleb128	9
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11550
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11549:
.L11460:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11551-.L2
	.uleb128	12
.L646:
	.sleb128	9
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11550
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	9
	.byte		"Start"
	.byte		0
	.4byte		.L11552
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L648:
	.sleb128	9
	.byte		"Cycle"
	.byte		0
	.4byte		.L11552
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11551:
.L11458:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11553-.L2
	.uleb128	12
.L643:
	.sleb128	9
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11550
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L644:
	.sleb128	9
	.byte		"Increment"
	.byte		0
	.4byte		.L11552
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L645:
	.sleb128	9
	.byte		"Cycle"
	.byte		0
	.4byte		.L11552
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11553:
.L11456:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11554-.L2
	.uleb128	8
.L641:
	.sleb128	9
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11550
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L642:
	.sleb128	9
	.byte		"TickRef"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11554:
.L11454:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11557-.L2
	.uleb128	8
.L639:
	.sleb128	9
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11550
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L640:
	.sleb128	9
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11558
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11557:
.L11494:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11562-.L2
	.uleb128	4
.L638:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11562:
.L11492:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11564-.L2
	.uleb128	8
.L636:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L637:
	.sleb128	9
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11552
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11564:
.L11490:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11565-.L2
	.uleb128	4
.L635:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11565:
.L11488:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11566-.L2
	.uleb128	8
.L633:
	.sleb128	9
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	9
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11566:
.L11486:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11567-.L2
	.uleb128	8
.L631:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L632:
	.sleb128	9
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11568
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11567:
.L11484:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11572-.L2
	.uleb128	4
.L630:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11572:
.L11482:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11573-.L2
	.uleb128	8
.L628:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L629:
	.sleb128	9
	.byte		"Offset"
	.byte		0
	.4byte		.L11552
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11573:
.L11480:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11574-.L2
	.uleb128	8
.L626:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11563
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L627:
	.sleb128	9
	.byte		"Start"
	.byte		0
	.4byte		.L11552
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11574:
.L11478:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11575-.L2
	.uleb128	12
.L623:
	.sleb128	9
	.byte		"CounterId"
	.byte		0
	.4byte		.L11576
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L624:
	.sleb128	9
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L625:
	.sleb128	9
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11575:
.L11476:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11577-.L2
	.uleb128	12
.L620:
	.sleb128	9
	.byte		"CounterId"
	.byte		0
	.4byte		.L11576
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L621:
	.sleb128	9
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11555
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L622:
	.sleb128	9
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11578
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11577:
.L11474:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11582-.L2
	.uleb128	4
.L619:
	.sleb128	9
	.byte		"CounterId"
	.byte		0
	.4byte		.L11576
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11582:
.L11470:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11583-.L2
	.uleb128	4
.L618:
	.sleb128	9
	.byte		"ISRId"
	.byte		0
	.4byte		.L11584
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11583:
.L11466:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11585-.L2
	.uleb128	2
.L616:
	.sleb128	9
	.byte		"Application"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L617:
	.sleb128	9
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11586
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11585:
.L11468:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11587-.L2
	.uleb128	1
.L615:
	.sleb128	9
	.byte		"Application"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11587:
.L11464:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11588-.L2
	.uleb128	8
.L613:
	.sleb128	9
	.byte		"Application"
	.byte		0
	.4byte		.L11545
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L614:
	.sleb128	9
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11589
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11588:
.L11448:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11592-.L2
	.uleb128	8
.L612:
	.sleb128	9
	.byte		"EventMask"
	.byte		0
	.4byte		.L11593
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11592:
.L11446:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11596-.L2
	.uleb128	24
.L609:
	.sleb128	9
	.byte		"TaskId"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L610:
	.sleb128	9
	.byte		"EventMask"
	.byte		0
	.4byte		.L11593
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L611:
	.sleb128	9
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11597
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11596:
.L11444:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11599-.L2
	.uleb128	8
.L608:
	.sleb128	9
	.byte		"EventMask"
	.byte		0
	.4byte		.L11593
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11599:
.L11442:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11600-.L2
	.uleb128	16
.L606:
	.sleb128	9
	.byte		"TaskId"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L607:
	.sleb128	9
	.byte		"EventMask"
	.byte		0
	.4byte		.L11593
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11600:
.L11440:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11601-.L2
	.uleb128	8
.L604:
	.sleb128	9
	.byte		"TaskId"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L605:
	.sleb128	9
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11602
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11601:
.L11438:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11606-.L2
	.uleb128	4
.L603:
	.sleb128	9
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11607
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11606:
.L11436:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11609-.L2
	.uleb128	4
.L602:
	.sleb128	9
	.byte		"TaskId"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11609:
.L11434:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11610-.L2
	.uleb128	4
.L601:
	.sleb128	9
	.byte		"TaskId"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11610:
.L11452:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11611-.L2
	.uleb128	4
.L600:
	.sleb128	9
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11612
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11611:
.L11450:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11613-.L2
	.uleb128	4
.L599:
	.sleb128	9
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11612
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11613:
.L11472:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11614-.L2
	.uleb128	4
.L598:
	.sleb128	9
	.byte		"AppMode"
	.byte		0
	.4byte		.L11615
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11614:
.L11432:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11616-.L2
	.uleb128	2
.L597:
	.sleb128	9
	.byte		"CoreID"
	.byte		0
	.4byte		.L11359
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11616:
.L11426:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11617-.L2
	.uleb128	2
.L596:
	.sleb128	9
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11359
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11617:
.L11424:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11618-.L2
	.uleb128	1
.L595:
	.sleb128	9
	.byte		"Error"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11618:
.L11422:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11619-.L2
	.uleb128	8
.L593:
	.sleb128	9
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11620
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L594:
	.sleb128	9
	.byte		"Error"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11619:
.L11420:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11622-.L2
	.uleb128	1
.L592:
	.sleb128	9
	.byte		"Error"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11622:
.L11430:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11623-.L2
	.uleb128	8
.L590:
	.sleb128	9
	.byte		"CoreID"
	.byte		0
	.4byte		.L11359
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L591:
	.sleb128	9
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11624
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11623:
.L11428:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11625-.L2
	.uleb128	8
.L588:
	.sleb128	9
	.byte		"CoreID"
	.byte		0
	.4byte		.L11359
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L589:
	.sleb128	9
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11624
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11625:
.L11418:
	.sleb128	11
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11626-.L2
	.uleb128	4
.L587:
	.sleb128	9
	.byte		"AppMode"
	.byte		0
	.4byte		.L11615
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11626:
.L11520:
	.sleb128	11
	.4byte		.L11627
	.uleb128	33
	.uleb128	14
	.4byte		.L11628-.L2
	.uleb128	24
.L580:
	.sleb128	9
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11629
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L581:
	.sleb128	9
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11633
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L582:
	.sleb128	9
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11634
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L583:
	.sleb128	9
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11635
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L584:
	.sleb128	9
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L585:
	.sleb128	9
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L586:
	.sleb128	9
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11628:
.L11642:
	.sleb128	11
	.4byte		.L11627
	.uleb128	33
	.uleb128	14
	.4byte		.L11646-.L2
	.uleb128	4
.L576:
	.sleb128	9
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11647
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L577:
	.sleb128	9
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11649
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11646:
.L11632:
	.sleb128	11
	.4byte		.L11627
	.uleb128	33
	.uleb128	14
	.4byte		.L11651-.L2
	.uleb128	6
.L573:
	.sleb128	9
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11633
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L574:
	.sleb128	9
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11633
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L575:
	.sleb128	9
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11651:
.L11414:
	.sleb128	8
	.4byte		.L11652
	.uleb128	80
	.uleb128	13
	.4byte		.L11653-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L506:
	.sleb128	9
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11654
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L507:
	.sleb128	9
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11655
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L508:
	.sleb128	9
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11656
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L509:
	.sleb128	9
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11660
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L510:
	.sleb128	9
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11665
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L511:
	.sleb128	9
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11668
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L512:
	.sleb128	9
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11669
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L513:
	.sleb128	9
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11669
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L514:
	.sleb128	9
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11671
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L515:
	.sleb128	9
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L516:
	.sleb128	9
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L517:
	.sleb128	9
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11681
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L518:
	.sleb128	9
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11685
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L519:
	.sleb128	9
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11681
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L520:
	.sleb128	9
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11690
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L521:
	.sleb128	9
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11691
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L522:
	.sleb128	9
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11697
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L523:
	.sleb128	9
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11653:
.L11699:
	.sleb128	8
	.4byte		.L11398
	.uleb128	612
	.uleb128	1
	.4byte		.L11705-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L745:
	.sleb128	9
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11412
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L746:
	.sleb128	9
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11698
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L747:
	.sleb128	9
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11698
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11705:
.L11664:
	.sleb128	8
	.4byte		.L11652
	.uleb128	80
	.uleb128	13
	.4byte		.L11706-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L504:
	.sleb128	9
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11707
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L505:
	.sleb128	9
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11706:
.L11659:
	.sleb128	11
	.4byte		.L11652
	.uleb128	80
	.uleb128	13
	.4byte		.L11709-.L2
	.uleb128	56
.L491:
	.sleb128	9
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11604
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L492:
	.sleb128	9
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11710
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L493:
	.sleb128	9
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11593
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L494:
	.sleb128	9
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11593
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L495:
	.sleb128	9
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11672
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L496:
	.sleb128	9
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11612
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L497:
	.sleb128	9
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11403
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L498:
	.sleb128	9
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11677
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L499:
	.sleb128	9
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11712
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L500:
	.sleb128	9
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11698
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L501:
	.sleb128	9
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11670
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L502:
	.sleb128	9
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11403
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L503:
	.sleb128	9
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11402
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11709:
.L11714:
	.sleb128	8
	.4byte		.L11715
	.uleb128	52
	.uleb128	1
	.4byte		.L11716-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L443:
	.sleb128	9
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L444:
	.sleb128	9
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11717
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L445:
	.sleb128	9
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L446:
	.sleb128	9
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11681
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L447:
	.sleb128	9
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11716:
.L11721:
	.sleb128	11
	.4byte		.L11715
	.uleb128	52
	.uleb128	1
	.4byte		.L11722-.L2
	.uleb128	12
.L440:
	.sleb128	9
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11412
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L441:
	.sleb128	9
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11712
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L442:
	.sleb128	9
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11693
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11722:
.L11680:
	.sleb128	8
	.4byte		.L11715
	.uleb128	52
	.uleb128	1
	.4byte		.L11723-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L428:
	.sleb128	9
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11724
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L429:
	.sleb128	9
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11728
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L430:
	.sleb128	9
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11654
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L431:
	.sleb128	9
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L432:
	.sleb128	9
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11732
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L433:
	.sleb128	9
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11737
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L434:
	.sleb128	9
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L435:
	.sleb128	9
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11747
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L436:
	.sleb128	9
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11750
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L437:
	.sleb128	9
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11753
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L438:
	.sleb128	9
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11756
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L439:
	.sleb128	9
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11655
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11723:
.L11727:
	.sleb128	11
	.4byte		.L11715
	.uleb128	52
	.uleb128	1
	.4byte		.L11759-.L2
	.uleb128	1
.L427:
	.sleb128	9
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11759:
.L11696:
	.sleb128	11
	.4byte		.L11760
	.uleb128	32
	.uleb128	1
	.4byte		.L11761-.L2
	.uleb128	12
.L424:
	.sleb128	9
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11669
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L425:
	.sleb128	9
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11682
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L426:
	.sleb128	9
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L11762
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11761:
.L11764:
	.sleb128	11
	.4byte		.L11760
	.uleb128	32
	.uleb128	1
	.4byte		.L11765-.L2
	.uleb128	4
.L423:
	.sleb128	9
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11412
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11765:
.L11561:
	.sleb128	11
	.4byte		.L11766
	.uleb128	50
	.uleb128	1
	.4byte		.L11767-.L2
	.uleb128	12
.L371:
	.sleb128	9
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11552
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L372:
	.sleb128	9
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11552
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L373:
	.sleb128	9
	.byte		"mincycle"
	.byte		0
	.4byte		.L11552
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11767:
.L11704:
	.sleb128	11
	.4byte		.L11768
	.uleb128	87
	.uleb128	7
	.4byte		.L11769-.L2
	.uleb128	8
.L359:
	.sleb128	9
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11770
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L360:
	.sleb128	9
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11769:
	.section	.debug_info,,n
.L11406:
	.sleb128	12
	.4byte		.L11398
	.uleb128	60
	.uleb128	1
	.4byte		.L11773-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"OS_DISPATCH_SINGLE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"OS_DISPATCH_MULTI"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"OS_DISPATCH_ALL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11773:
	.section	.debug_info,,n
.L11543:
	.sleb128	14
	.4byte		.L11627
	.uleb128	33
	.uleb128	14
	.4byte		.L11774-.L2
	.byte		"TrustedFunctionReturnValueType_e"
	.byte		0
	.uleb128	4
	.sleb128	13
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_NONE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_SCHEDULE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11774:
.L11711:
	.sleb128	12
	.4byte		.L11652
	.uleb128	80
	.uleb128	13
	.4byte		.L11775-.L2
	.uleb128	4
	.sleb128	13
	.byte		"Os_ProcContextInvalid"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"Os_ProcContextActive"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"Os_ProcContextPrepared"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11775:
.L11667:
	.sleb128	12
	.4byte		.L11652
	.uleb128	61
	.uleb128	1
	.4byte		.L11776-.L2
	.uleb128	4
	.sleb128	13
	.byte		"Os_Proc_Task"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"Os_Proc_ISR_CAT2"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11776:
.L11731:
	.sleb128	12
	.4byte		.L11715
	.uleb128	52
	.uleb128	1
	.4byte		.L11777-.L2
	.uleb128	4
	.sleb128	13
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11777:
.L11531:
	.sleb128	12
	.4byte		.L11778
	.uleb128	43
	.uleb128	1
	.4byte		.L11779-.L2
	.uleb128	4
	.sleb128	13
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11779:
.L11605:
	.sleb128	12
	.4byte		.L11780
	.uleb128	37
	.uleb128	1
	.4byte		.L11781-.L2
	.uleb128	4
	.sleb128	13
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L11781:
.L11571:
	.sleb128	12
	.4byte		.L11782
	.uleb128	40
	.uleb128	1
	.4byte		.L11783-.L2
	.uleb128	4
	.sleb128	13
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L11783:
.L11547:
	.sleb128	12
	.4byte		.L11784
	.uleb128	47
	.uleb128	1
	.4byte		.L11785-.L2
	.uleb128	4
	.sleb128	13
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L11785:
.L11621:
	.sleb128	12
	.4byte		.L11766
	.uleb128	42
	.uleb128	13
	.4byte		.L11786-.L2
	.uleb128	4
	.sleb128	13
	.byte		"OS_SHUTDOWN_INDIVIDUAL"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"OS_SHUTDOWN_SYNCHRONIZED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11786:
.L11515:
	.sleb128	12
	.4byte		.L11787
	.uleb128	83
	.uleb128	14
	.4byte		.L11788-.L2
	.uleb128	4
	.sleb128	13
	.byte		"IDLE_NO_HALT"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"IDLE_WAIT"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"IDLE_NUMBEROFOPTIONS"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11788:
	.section	.debug_info,,n
.L11361:
	.sleb128	15
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L11360:
	.sleb128	16
	.byte		"uint16"
	.byte		0
	.4byte		.L11361
.L11359:
	.sleb128	16
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11360
.L11374:
	.sleb128	16
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11375
	.section	.debug_info,,n
.L11390:
	.sleb128	17
	.4byte		.L11375
	.section	.debug_info,,n
.L11396:
	.sleb128	18
	.4byte		.L11397-.L2
	.4byte		.L11359
	.byte		0x1
	.sleb128	0
.L11397:
.L11395:
	.sleb128	17
	.4byte		.L11396
.L11394:
	.sleb128	16
	.byte		"Os_GetCoreIDFuncType"
	.byte		0
	.4byte		.L11395
.L11401:
	.sleb128	15
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11400:
	.sleb128	16
	.byte		"uint32"
	.byte		0
	.4byte		.L11401
.L11404:
	.sleb128	15
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11403:
	.sleb128	16
	.byte		"uint8"
	.byte		0
	.4byte		.L11404
.L11402:
	.sleb128	16
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11403
.L11405:
	.sleb128	16
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11406
	.section	.debug_info,,n
.L11409:
	.sleb128	19
	.4byte		.L11410-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	20
	.4byte		.L11390
	.section	.debug_info,,n
.L11413:
	.sleb128	21
	.4byte		.L11414
.L11412:
	.sleb128	17
	.4byte		.L11413
.L11411:
	.sleb128	21
	.4byte		.L11412
	.sleb128	20
	.4byte		.L11411
	.sleb128	0
.L11410:
.L11408:
	.sleb128	17
	.4byte		.L11409
.L11407:
	.sleb128	16
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11408
.L11417:
	.sleb128	16
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11418
.L11419:
	.sleb128	16
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11420
.L11421:
	.sleb128	16
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11422
.L11423:
	.sleb128	16
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11424
.L11425:
	.sleb128	16
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11426
.L11427:
	.sleb128	16
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11428
.L11429:
	.sleb128	16
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11430
.L11431:
	.sleb128	16
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11432
.L11433:
	.sleb128	16
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11434
.L11435:
	.sleb128	16
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11436
.L11437:
	.sleb128	16
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11438
.L11439:
	.sleb128	16
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11440
.L11441:
	.sleb128	16
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11442
.L11443:
	.sleb128	16
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11444
.L11445:
	.sleb128	16
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11446
.L11447:
	.sleb128	16
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11448
.L11449:
	.sleb128	16
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11450
.L11451:
	.sleb128	16
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11452
.L11453:
	.sleb128	16
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11454
.L11455:
	.sleb128	16
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11456
.L11457:
	.sleb128	16
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11458
.L11459:
	.sleb128	16
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11460
.L11461:
	.sleb128	16
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11462
.L11463:
	.sleb128	16
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11464
.L11465:
	.sleb128	16
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11466
.L11467:
	.sleb128	16
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11468
.L11469:
	.sleb128	16
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11470
.L11471:
	.sleb128	16
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11472
.L11473:
	.sleb128	16
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11474
.L11475:
	.sleb128	16
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11476
.L11477:
	.sleb128	16
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11478
.L11479:
	.sleb128	16
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11480
.L11481:
	.sleb128	16
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11482
.L11483:
	.sleb128	16
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11484
.L11485:
	.sleb128	16
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11486
.L11487:
	.sleb128	16
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11488
.L11489:
	.sleb128	16
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11490
.L11491:
	.sleb128	16
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11492
.L11493:
	.sleb128	16
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11494
.L11495:
	.sleb128	16
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11496
.L11497:
	.sleb128	16
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11498
.L11499:
	.sleb128	16
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11500
.L11501:
	.sleb128	16
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11502
.L11503:
	.sleb128	16
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11504
.L11505:
	.sleb128	16
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11506
.L11507:
	.sleb128	16
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11508
.L11509:
	.sleb128	16
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11510
.L11511:
	.sleb128	16
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11512
.L11514:
	.sleb128	16
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11515
.L11519:
	.sleb128	16
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11520
.L11518:
	.sleb128	21
	.4byte		.L11519
.L11517:
	.sleb128	17
	.4byte		.L11518
	.section	.debug_info,,n
.L11526:
	.sleb128	22
	.byte		"void"
	.byte		0
	.byte		0x0
.L11525:
	.sleb128	17
	.4byte		.L11526
	.section	.debug_info,,n
.L11523:
	.sleb128	23
	.4byte		.L11524-.L2
	.4byte		.L11525
	.section	.debug_info,,n
	.sleb128	24
	.uleb128	1
	.sleb128	0
.L11524:
.L11522:
	.sleb128	16
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11523
.L11521:
	.sleb128	17
	.4byte		.L11522
.L11528:
	.sleb128	16
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11360
.L11530:
	.sleb128	16
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11531
.L11529:
	.sleb128	17
	.4byte		.L11530
.L11537:
	.sleb128	16
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11400
.L11536:
	.sleb128	16
	.byte		"ProcType"
	.byte		0
	.4byte		.L11537
.L11535:
	.sleb128	16
	.byte		"TaskType"
	.byte		0
	.4byte		.L11536
.L11538:
	.sleb128	17
	.4byte		.L11403
.L11540:
	.sleb128	16
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11400
.L11541:
	.sleb128	16
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11525
.L11542:
	.sleb128	16
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11543
.L11545:
	.sleb128	16
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11403
.L11546:
	.sleb128	16
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11547
.L11550:
	.sleb128	16
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11537
.L11552:
	.sleb128	16
	.byte		"TickType"
	.byte		0
	.4byte		.L11400
.L11556:
	.sleb128	17
	.4byte		.L11552
.L11555:
	.sleb128	16
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11556
.L11560:
	.sleb128	16
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11561
.L11559:
	.sleb128	17
	.4byte		.L11560
.L11558:
	.sleb128	16
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11559
.L11563:
	.sleb128	16
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11400
.L11570:
	.sleb128	16
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11571
.L11569:
	.sleb128	17
	.4byte		.L11570
.L11568:
	.sleb128	16
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11569
.L11576:
	.sleb128	16
	.byte		"CounterType"
	.byte		0
	.4byte		.L11400
.L11580:
	.sleb128	19
	.4byte		.L11581-.L2
	.byte		0x1
	.sleb128	20
	.4byte		.L11390
	.sleb128	0
.L11581:
.L11579:
	.sleb128	17
	.4byte		.L11580
.L11578:
	.sleb128	16
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11579
.L11584:
	.sleb128	16
	.byte		"ISRType"
	.byte		0
	.4byte		.L11536
.L11586:
	.sleb128	16
	.byte		"RestartType"
	.byte		0
	.4byte		.L11403
.L11591:
	.sleb128	16
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11403
.L11590:
	.sleb128	17
	.4byte		.L11591
.L11589:
	.sleb128	16
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11590
.L11595:
	.sleb128	15
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11594:
	.sleb128	16
	.byte		"uint64"
	.byte		0
	.4byte		.L11595
.L11593:
	.sleb128	16
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11594
.L11598:
	.sleb128	17
	.4byte		.L11593
.L11597:
	.sleb128	16
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11598
.L11604:
	.sleb128	16
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11605
.L11603:
	.sleb128	17
	.4byte		.L11604
.L11602:
	.sleb128	16
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11603
.L11608:
	.sleb128	17
	.4byte		.L11535
.L11607:
	.sleb128	16
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11608
.L11612:
	.sleb128	16
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11400
.L11615:
	.sleb128	16
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11400
.L11620:
	.sleb128	16
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11621
.L11624:
	.sleb128	17
	.4byte		.L11402
.L11631:
	.sleb128	16
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11632
.L11630:
	.sleb128	17
	.4byte		.L11631
.L11629:
	.sleb128	21
	.4byte		.L11630
.L11633:
	.sleb128	16
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11360
.L11634:
	.sleb128	21
	.4byte		.L11525
.L11635:
	.sleb128	21
	.4byte		.L11360
.L11637:
	.sleb128	16
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11403
.L11636:
	.sleb128	21
	.4byte		.L11637
.L11641:
	.sleb128	16
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11642
.L11640:
	.sleb128	21
	.4byte		.L11641
.L11639:
	.sleb128	17
	.4byte		.L11640
.L11638:
	.sleb128	21
	.4byte		.L11639
.L11645:
	.sleb128	16
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11403
.L11644:
	.sleb128	17
	.4byte		.L11645
.L11643:
	.sleb128	21
	.4byte		.L11644
.L11648:
	.sleb128	16
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11360
.L11647:
	.sleb128	21
	.4byte		.L11648
.L11650:
	.sleb128	16
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11360
.L11649:
	.sleb128	21
	.4byte		.L11650
.L11654:
	.sleb128	21
	.4byte		.L11535
.L11655:
	.sleb128	21
	.4byte		.L11359
.L11658:
	.sleb128	16
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11659
.L11657:
	.sleb128	17
	.4byte		.L11658
.L11656:
	.sleb128	21
	.4byte		.L11657
.L11663:
	.sleb128	16
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11664
.L11662:
	.sleb128	21
	.4byte		.L11663
.L11661:
	.sleb128	17
	.4byte		.L11662
.L11660:
	.sleb128	21
	.4byte		.L11661
.L11666:
	.sleb128	16
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11667
.L11665:
	.sleb128	21
	.4byte		.L11666
.L11668:
	.sleb128	21
	.4byte		.L11593
.L11670:
	.sleb128	16
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11400
.L11669:
	.sleb128	21
	.4byte		.L11670
.L11672:
	.sleb128	16
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11400
.L11671:
	.sleb128	21
	.4byte		.L11672
.L11675:
	.sleb128	16
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11400
.L11674:
	.sleb128	17
	.4byte		.L11675
.L11673:
	.sleb128	21
	.4byte		.L11674
.L11679:
	.sleb128	16
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11680
.L11678:
	.sleb128	21
	.4byte		.L11679
.L11677:
	.sleb128	17
	.4byte		.L11678
.L11676:
	.sleb128	21
	.4byte		.L11677
.L11684:
	.sleb128	16
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11400
.L11683:
	.sleb128	21
	.4byte		.L11684
.L11682:
	.sleb128	17
	.4byte		.L11683
.L11681:
	.sleb128	21
	.4byte		.L11682
.L11688:
	.sleb128	19
	.4byte		.L11689-.L2
	.byte		0x1
	.sleb128	0
.L11689:
.L11687:
	.sleb128	17
	.4byte		.L11688
.L11686:
	.sleb128	16
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11687
.L11685:
	.sleb128	21
	.4byte		.L11686
.L11690:
	.sleb128	21
	.4byte		.L11612
.L11695:
	.sleb128	16
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11696
.L11694:
	.sleb128	21
	.4byte		.L11695
.L11693:
	.sleb128	17
	.4byte		.L11694
.L11692:
	.sleb128	16
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11693
.L11691:
	.sleb128	17
	.4byte		.L11692
.L11698:
	.sleb128	17
	.4byte		.L11699
.L11697:
	.sleb128	21
	.4byte		.L11698
.L11703:
	.sleb128	16
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11704
.L11702:
	.sleb128	21
	.4byte		.L11703
.L11701:
	.sleb128	17
	.4byte		.L11702
.L11700:
	.sleb128	21
	.4byte		.L11701
.L11708:
	.sleb128	16
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11400
.L11707:
	.sleb128	21
	.4byte		.L11708
.L11710:
	.sleb128	16
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11711
.L11713:
	.sleb128	21
	.4byte		.L11714
.L11712:
	.sleb128	17
	.4byte		.L11713
.L11717:
	.sleb128	21
	.4byte		.L11528
.L11720:
	.sleb128	16
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11721
.L11719:
	.sleb128	17
	.4byte		.L11720
.L11718:
	.sleb128	21
	.4byte		.L11719
.L11726:
	.sleb128	16
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11727
.L11725:
	.sleb128	17
	.4byte		.L11726
.L11724:
	.sleb128	21
	.4byte		.L11725
.L11728:
	.sleb128	21
	.4byte		.L11545
.L11730:
	.sleb128	16
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11731
.L11729:
	.sleb128	21
	.4byte		.L11730
.L11735:
	.sleb128	19
	.4byte		.L11736-.L2
	.byte		0x1
	.sleb128	20
	.4byte		.L11402
	.sleb128	0
.L11736:
.L11734:
	.sleb128	17
	.4byte		.L11735
.L11733:
	.sleb128	16
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11734
.L11732:
	.sleb128	21
	.4byte		.L11733
.L11740:
	.sleb128	19
	.4byte		.L11741-.L2
	.byte		0x1
	.sleb128	0
.L11741:
.L11739:
	.sleb128	17
	.4byte		.L11740
.L11738:
	.sleb128	16
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11739
.L11737:
	.sleb128	21
	.4byte		.L11738
.L11745:
	.sleb128	19
	.4byte		.L11746-.L2
	.byte		0x1
	.sleb128	20
	.4byte		.L11402
	.sleb128	0
.L11746:
.L11744:
	.sleb128	17
	.4byte		.L11745
.L11743:
	.sleb128	16
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11744
.L11742:
	.sleb128	21
	.4byte		.L11743
.L11749:
	.sleb128	21
	.4byte		.L11536
.L11748:
	.sleb128	17
	.4byte		.L11749
.L11747:
	.sleb128	21
	.4byte		.L11748
.L11752:
	.sleb128	21
	.4byte		.L11576
.L11751:
	.sleb128	17
	.4byte		.L11752
.L11750:
	.sleb128	21
	.4byte		.L11751
.L11755:
	.sleb128	21
	.4byte		.L11550
.L11754:
	.sleb128	17
	.4byte		.L11755
.L11753:
	.sleb128	21
	.4byte		.L11754
.L11758:
	.sleb128	21
	.4byte		.L11563
.L11757:
	.sleb128	17
	.4byte		.L11758
.L11756:
	.sleb128	21
	.4byte		.L11757
.L11763:
	.sleb128	16
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11764
.L11762:
	.sleb128	17
	.4byte		.L11763
.L11770:
	.sleb128	21
	.4byte		.L11400
.L11772:
	.sleb128	16
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11360
.L11771:
	.sleb128	21
	.4byte		.L11772
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11352:
	.sleb128	0
.L11348:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11382:
	.sleb128	0
.L11378:

	.section	.debug_loc,,n
	.align	0
.L11391:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_API_GetCoreID"
	.wrcm.nstrlist "calls", "Os_GetCoreID"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_GetCoreIDAPI"
	.wrcm.nstrlist "calls", "OS_SYS_CALL"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Os_GetCoreID"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "OS_COREID_SYS_CALL"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "GetCoreID"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "indirectCalls", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_GetCoreID.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_GetCoreID.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_GetCoreID.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_GetCoreID.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_GetCoreID.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_GetCoreID.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\misc\Os_GetCoreID.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
