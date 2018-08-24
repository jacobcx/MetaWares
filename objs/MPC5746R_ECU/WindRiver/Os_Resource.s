#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Resource.c"
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
# LOCAL_INLINE FUNC(Os_IsrStateType, OS_CODE) Os_Isr_GetState(CONST(CoreIdType, AUTOMATIC) coreId)
	.section	.Os_TEXT,,c
	.align		1
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11395:
	.section	.Os_TEXT,,c
#$$ld
.L11391:
	.0byte		.L11389
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
        .d2line         227,45
#$$ld
.L11398:

#$$bf	Os_Isr_GetState,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6
	.d2_cfa_start __cie
Os_Isr_GetState:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# coreId=r3 coreId=r3
	.d2prologue_end
# {
#     return (Os_IsrStateType)(OS_GET_CORE_ISR_DYN_INIT(coreId)->Os_DisableAllCount +
	.d2line		229
	lis		r5,Os_Core_Stat@ha
	e_add16i		r5,r5,Os_Core_Stat@l
	rlwinm		r3,r3,0,16,31		# coreId=r3 coreId=r3
	e_mulli		r4,r3,20		# coreId=r3
	lwzux		r3,r5,r4		# coreId=r3
	lwz		r6,8(r3)		# coreId=r3
	lis		r3,Os_Core_Stat@ha		# coreId=r3
	e_add16i		r3,r3,Os_Core_Stat@l		# coreId=r3 coreId=r3
	lwzux		r5,r3,r4		# coreId=r3
	lwz		r3,12(r5)		# coreId=r3
	se_add		r6,r3		# coreId=r3
	lis		r5,Os_Core_Stat@ha
	e_add16i		r5,r5,Os_Core_Stat@l
	lwzx		r4,r5,r4
	lwz		r4,16(r4)
	add		r3,r6,r4		# coreId=r3
#                              OS_GET_CORE_ISR_DYN_INIT(coreId)->Os_SuspendAllCount +
#                              OS_GET_CORE_ISR_DYN_INIT(coreId)->Os_SuspendOSCount);
# }
	.d2line		232
	.d2epilogue_begin
.Llo2:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11399:
	.type		Os_Isr_GetState,@function
	.size		Os_Isr_GetState,.-Os_Isr_GetState
# Number of nodes = 36

# Allocations for Os_Isr_GetState
#	?a4		coreId
# FUNC (void, OS_CODE) Os_Resources_Init(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\resources\\Os_Resource.c"
        .d2line         47,22
#$$ld
.L11411:

#$$bf	Os_Resources_Init,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.globl		Os_Resources_Init
	.d2_cfa_start __cie
Os_Resources_Init:
.Llo3:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# coreID=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# coreID=r0 coreID=r3
	.d2prologue_end
# {
#     VAR(Os_ObjectType,AUTOMATIC) loopCounter;
#     for( loopCounter  = Os_ResourceRange[coreID].Os_ObjStartId;
	.d2line		50
.Llo4:
	lis		r3,Os_ResourceRange@ha
.Llo5:
	e_add16i		r3,r3,Os_ResourceRange@l
	rlwinm		r5,r0,3,13,28		# coreID=r0
	lwzx		r3,r3,r5
.Llo7:
	mr		r3,r3		# loopCounter=r3 loopCounter=r3
.L11360:
	lis		r4,(Os_ResourceRange+4)@ha
	e_add16i		r4,r4,(Os_ResourceRange+4)@l
	rlwinm		r5,r0,3,13,28		# coreID=r0
	lwzx		r4,r4,r5
	se_cmpl		r4,r3		# loopCounter=r3
	bc		1,0,.L11359	# lt
#          loopCounter <= Os_ResourceRange[coreID].Os_ObjEndId;
#          loopCounter++ )
#     {
#         Os_ResourceStat[loopCounter].Os_ResourceDyn->Os_LockerProc = NULL_PTR;
	.d2line		54
	diab.li		r6,0
	lis		r4,(Os_ResourceStat+8)@ha
	e_add16i		r4,r4,(Os_ResourceStat+8)@l
	e_mulli		r5,r3,12		# loopCounter=r3
	lwzx		r4,r4,r5
	stw		r6,0(r4)
#     }
	.d2line		55
	diab.addi		r5,r3,1		# loopCounter=r3
	se_addi		r3,1		# loopCounter=r3 loopCounter=r3
	b		.L11360
.L11359:
# }
	.d2line		56
	.d2epilogue_begin
.Llo6:
	lwz		r0,20(r1)		# coreID=r0
	mtspr		lr,r0		# coreID=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11412:
	.type		Os_Resources_Init,@function
	.size		Os_Resources_Init,.-Os_Resources_Init
# Number of nodes = 37

# Allocations for Os_Resources_Init
#	?a4		coreID
#	?a5		loopCounter
# FUNC(void, OS_CODE) Os_Resource_FreeTaskResources(CONSTP2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST) proc)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         59,21
#$$ld
.L11423:

#$$bf	Os_Resource_FreeTaskResources,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		Os_Resource_FreeTaskResources
	.d2_cfa_start __cie
Os_Resource_FreeTaskResources:
.Llo8:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# proc=r0 proc=r3
	.d2prologue_end
# {
#     VAR(Os_ObjectType, AUTOMATIC) resourceId;
#     CONST(CoreIdType, AUTOMATIC)  coreId = OS_GETCOREID();
	.d2line		62
	mfspr		r5,286
.Llo13:
	mr		r5,r5		# coreId=r5 coreId=r5
# 
#     for( resourceId  = Os_ResourceRange[coreId].Os_ObjStartId;
	.d2line		64
	lis		r3,Os_ResourceRange@ha
.Llo9:
	e_add16i		r3,r3,Os_ResourceRange@l
	rlwinm		r6,r5,3,13,28		# coreId=r5
	lwzx		r3,r3,r6
.Llo12:
	mr		r3,r3		# resourceId=r3 resourceId=r3
.L11366:
.Llo10:
	lis		r4,(Os_ResourceRange+4)@ha
	e_add16i		r4,r4,(Os_ResourceRange+4)@l
	rlwinm		r6,r5,3,13,28		# coreId=r5
	lwzx		r4,r4,r6
	se_cmpl		r4,r3		# resourceId=r3
	bc		1,0,.L11365	# lt
#          resourceId <= Os_ResourceRange[coreId].Os_ObjEndId;
#          resourceId++ )
#     {
#         if(Os_ResourceStat[resourceId].Os_ResourceDyn->Os_LockerProc == proc)
	.d2line		68
	lis		r4,(Os_ResourceStat+8)@ha
	e_add16i		r4,r4,(Os_ResourceStat+8)@l
	e_mulli		r6,r3,12		# resourceId=r3
	lwzx		r4,r4,r6
	lwz		r4,0(r4)
	se_cmpl		r4,r0		# proc=r0
	bc		0,2,.L11369	# ne
#         {
#             Os_ResourceStat[resourceId].Os_ResourceDyn->Os_LockerProc = NULL_PTR;
	.d2line		70
	diab.li		r7,0
	lis		r4,(Os_ResourceStat+8)@ha
	e_add16i		r4,r4,(Os_ResourceStat+8)@l
	e_mulli		r6,r3,12		# resourceId=r3
	lwzx		r4,r4,r6
	stw		r7,0(r4)
.L11369:
# 
#             OS_CALL_RTM_RESOURCE_RELEASE(resourceId, coreId);
#         }
#     }
	.d2line		74
	diab.addi		r6,r3,1		# resourceId=r3
	se_addi		r3,1		# resourceId=r3 resourceId=r3
	b		.L11366
.L11365:
# }
	.d2line		75
	.d2epilogue_begin
.Llo11:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11424:
	.type		Os_Resource_FreeTaskResources,@function
	.size		Os_Resource_FreeTaskResources,.-Os_Resource_FreeTaskResources
# Number of nodes = 56

# Allocations for Os_Resource_FreeTaskResources
#	?a4		proc
#	?a5		resourceId
#	?a6		coreId
# FUNC (StatusType, OS_CODE) Os_Resource_Err(P2CONST(Os_ProcStatType,AUTOMATIC ,OS_CONST)     currentTask,
	.align		2
	.section	.Os_TEXT,,c
        .d2line         78,28
#$$ld
.L11438:

#$$bf	Os_Resource_Err,interprocedural,rasave,nostackparams
	.globl		Os_Resource_Err
	.d2_cfa_start __cie
Os_Resource_Err:
.Llo14:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# currentTask=r7 currentTask=r3
	mr		r30,r4		# resourceId=r30 resourceId=r4
	.d2prologue_end
#                                            VAR (ResourceType, AUTOMATIC)                    resourceId)
# {
#     VAR (StatusType, AUTOMATIC) retVal;
# 
#     if (Os_Isr_Enabled != Os_Isr_GetState(OS_GETCOREID()))
	.d2line		83
	mfspr		r3,286
.Llo15:
	bl		Os_Isr_GetState
.Llo18:
	se_cmpi		r3,0
	bc		1,2,.L11374	# eq
#     {
#         /* [OS093-01-07] [OS093-01-08] [OS093-02-07] [OS093-02-08] */
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_DISABLEDINT);
	.d2line		86
.Llo16:
	diab.li		r3,10		# retVal=r3
.Llo22:
	b		.L11375
.L11374:
#     }
#     else if(Os_false == Os_Resource_CheckId(resourceId))
	.d2line		88
.Llo23:
	lis		r3,(Os_ResourceRange+12)@ha
	lwz		r0,(Os_ResourceRange+12)@l(r3)
	se_cmpl		r0,r30		# resourceId=r30
	isel		r3,0,r0,0
.L11380:
	diab.li		r0,1
	isel		r0,r3,r0,0
.L11381:
	se_cmpi		r0,0
	bc		0,2,.L11376	# ne
#     {
#         /* [OS001-076.v1] [OS001-084.v1] */
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ID);
	.d2line		91
	diab.li		r3,3		# retVal=r3
.Llo24:
	b		.L11375
.L11376:
#     }
#     else if( Os_Access_Denied == Os_Access_Check( Os_ResourceStat[resourceId].Os_ResourceAccessRights,
	.d2line		93
.Llo19:
	lis		r3,(Os_ResourceStat+4)@ha		# retVal=r3
.Llo25:
	e_add16i		r3,r3,(Os_ResourceStat+4)@l		# retVal=r3 retVal=r3
.Llo20:
	e_mulli		r30,r30,12		# resourceId=r30 resourceId=r30
.Llo21:
	lwzx		r3,r3,r30		# retVal=r3 retVal=r3
.Llo26:
	lwz		r4,0(r7)		# currentTask=r7
	bl		Os_Access_Check
.Llo17:
	se_cmpi		r3,1		# retVal=r3
#                                                   (ProcType)currentTask->Os_ProcId) )
#     {
#         /*  [OS448-01-04] [OS448-01-05] */
#         retVal = OS_GET_ERRORCODE(E_OS_SYS_ERROR, E_OS_ACCESS);
	.d2line		97
	diab.li		r3,1		# retVal=r3
	isel		r3,r3,r31,2		# retVal=r3 retVal=r3 retVal=r31
.L11378:
#     }
#     else
#     {
#         retVal = E_OK;
	.d2line		101
	diab.li		r0,0
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3
.L11375:
#     }
# 
#     return retVal;
	.d2line		104
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# 
# }
	.d2line		106
	.d2epilogue_begin
.Llo27:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11439:
	.type		Os_Resource_Err,@function
	.size		Os_Resource_Err,.-Os_Resource_Err
# Number of nodes = 62

# Allocations for Os_Resource_Err
#	?a4		currentTask
#	?a5		resourceId
#	?a6		$$2354
#	?a7		retVal

# Allocations for module
	.section	.text_vle
	.0byte		.L11449
	.section	.text_vle
	.0byte		.L11462
	.section	.text_vle
#$$ld
.L5:
.L11918:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L11915:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L11913:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L11911:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L11909:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L11900:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
.L11895:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L11892:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11880:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11835:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11790:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11787:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_HookApiTypes.h"
.L11762:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11520:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11469:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11463:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11450:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ResourceCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11392:
.L11413:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\resources\\Os_Resource.c"
.L11400:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
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
	.uleb128	6
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
	.uleb128	7
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
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
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
	.uleb128	17
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	33
	.byte		0x0
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	24
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
	.uleb128	25
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\resources\\Os_Resource.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11389:
	.4byte		.L11390-.L11388
.L11388:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11394-.L11389
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\resources\\Os_Resource.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11391
	.4byte		.L11392
	.4byte		.L11395
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11403:
	.sleb128	2
	.4byte		.L11397-.L11389
	.byte		"Os_Isr_GetState"
	.byte		0
	.4byte		.L11400
	.uleb128	227
	.uleb128	45
	.4byte		.L11401
	.byte		0x1
	.4byte		.L11398
	.4byte		.L11399
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11400
	.uleb128	227
	.uleb128	45
	.byte		"coreId"
	.byte		0
	.4byte		.L11404
	.4byte		.L11408
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11397:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11414:
	.sleb128	4
	.4byte		.L11410-.L11389
	.byte		"Os_Resources_Init"
	.byte		0
	.4byte		.L11413
	.uleb128	47
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11411
	.4byte		.L11412
	.sleb128	3
	.4byte		.L11413
	.uleb128	47
	.uleb128	22
	.byte		"coreID"
	.byte		0
	.4byte		.L11404
	.4byte		.L11415
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11416:
	.sleb128	5
	.4byte		.L11413
	.uleb128	49
	.uleb128	34
	.byte		"loopCounter"
	.byte		0
	.4byte		.L11417
	.4byte		.L11420
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11410:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11425:
	.sleb128	4
	.4byte		.L11422-.L11389
	.byte		"Os_Resource_FreeTaskResources"
	.byte		0
	.4byte		.L11413
	.uleb128	59
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L11423
	.4byte		.L11424
	.sleb128	3
	.4byte		.L11413
	.uleb128	59
	.uleb128	21
	.byte		"proc"
	.byte		0
	.4byte		.L11426
	.4byte		.L11431
.L11432:
	.sleb128	5
	.4byte		.L11413
	.uleb128	61
	.uleb128	35
	.byte		"resourceId"
	.byte		0
	.4byte		.L11417
	.4byte		.L11433
.L11434:
	.sleb128	5
	.4byte		.L11413
	.uleb128	62
	.uleb128	35
	.byte		"coreId"
	.byte		0
	.4byte		.L11404
	.4byte		.L11435
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11422:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11443:
	.sleb128	6
	.4byte		.L11437-.L11389
	.byte		"Os_Resource_Err"
	.byte		0
	.4byte		.L11413
	.uleb128	78
	.uleb128	28
	.4byte		.L11440
	.byte		0x1
	.byte		0x1
	.4byte		.L11438
	.4byte		.L11439
	.sleb128	3
	.4byte		.L11413
	.uleb128	78
	.uleb128	28
	.byte		"currentTask"
	.byte		0
	.4byte		.L11427
	.4byte		.L11444
	.sleb128	3
	.4byte		.L11413
	.uleb128	78
	.uleb128	28
	.byte		"resourceId"
	.byte		0
	.4byte		.L11445
	.4byte		.L11446
.L11447:
	.sleb128	5
	.4byte		.L11413
	.uleb128	81
	.uleb128	33
	.byte		"retVal"
	.byte		0
	.4byte		.L11440
	.4byte		.L11448
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11437:
	.section	.debug_info,,n
.L11449:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L11450
	.uleb128	57
	.uleb128	45
	.byte		"Os_ResourceStat"
	.byte		0
	.4byte		.L11451
	.section	.debug_info,,n
.L11456:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L11450
	.uleb128	59
	.uleb128	45
	.byte		"Os_ResourceRange"
	.byte		0
	.4byte		.L11457
.L11462:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L11463
	.uleb128	169
	.uleb128	42
	.byte		"Os_Core_Stat"
	.byte		0
	.4byte		.L11464
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11468:
	.sleb128	8
	.4byte		.L11469
	.uleb128	69
	.uleb128	1
	.4byte		.L11470-.L2
	.uleb128	20
	.section	.debug_info,,n
.L788:
	.sleb128	9
	.byte		"Os_Core_DynInit"
	.byte		0
	.4byte		.L11471
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L789:
	.sleb128	9
	.byte		"Os_Core_Dyn"
	.byte		0
	.4byte		.L11475
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L790:
	.sleb128	9
	.byte		"Os_DispatchElement"
	.byte		0
	.4byte		.L11479
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L791:
	.sleb128	9
	.byte		"Os_PrepareContextFunction"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L792:
	.sleb128	9
	.byte		"Os_GetStackPointerFunction"
	.byte		0
	.4byte		.L11488
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11470:
.L11474:
	.sleb128	8
	.4byte		.L11469
	.uleb128	69
	.uleb128	1
	.4byte		.L11495-.L2
	.uleb128	36
.L785:
	.sleb128	9
	.byte		"Os_IsrDynInit"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L786:
	.sleb128	9
	.byte		"Os_SchedulerDynInit"
	.byte		0
	.4byte		.L11498
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L787:
	.sleb128	9
	.byte		"Os_CurrentApp"
	.byte		0
	.4byte		.L11500
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
	.sleb128	0
.L11495:
.L11478:
	.sleb128	8
	.4byte		.L11469
	.uleb128	69
	.uleb128	1
	.4byte		.L11504-.L2
	.uleb128	104
.L775:
	.sleb128	9
	.byte		"Os_SchedulerDyn"
	.byte		0
	.4byte		.L11505
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L776:
	.sleb128	9
	.byte		"Os_IsrDyn"
	.byte		0
	.4byte		.L11507
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L777:
	.sleb128	9
	.byte		"Os_HooksDyn"
	.byte		0
	.4byte		.L11509
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11504:
.L11499:
	.sleb128	8
	.4byte		.L11469
	.uleb128	69
	.uleb128	1
	.4byte		.L11511-.L2
	.uleb128	4
.L774:
	.sleb128	9
	.byte		"Os_SchedulerCurrentProc"
	.byte		0
	.4byte		.L11512
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11511:
.L11506:
	.sleb128	8
	.4byte		.L11469
	.uleb128	69
	.uleb128	1
	.4byte		.L11514-.L2
	.uleb128	48
.L766:
	.sleb128	9
	.byte		"Os_CurrentContext"
	.byte		0
	.4byte		.L11493
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L767:
	.sleb128	9
	.byte		"Os_PreviousContext"
	.byte		0
	.4byte		.L11493
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L768:
	.sleb128	9
	.byte		"Os_SchedulerScheduleAction"
	.byte		0
	.4byte		.L11515
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L769:
	.sleb128	9
	.byte		"Os_SchedulerLastScheduledPriority"
	.byte		0
	.4byte		.L11517
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L770:
	.sleb128	9
	.byte		"Os_SchedulerCurrentTask"
	.byte		0
	.4byte		.L11512
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L771:
	.sleb128	9
	.byte		"Os_SchedulerLastScheduledProc"
	.byte		0
	.4byte		.L11512
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L772:
	.sleb128	9
	.byte		"Os_SchedulerHeadPivot"
	.byte		0
	.4byte		.L11518
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L773:
	.sleb128	9
	.byte		"Os_SchedulerTailPivot"
	.byte		0
	.4byte		.L11518
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11514:
	.section	.debug_info,,n
.L11519:
	.sleb128	10
	.4byte		.L11520
	.uleb128	612
	.uleb128	1
	.4byte		.L11521-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L752:
	.sleb128	9
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11512
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L753:
	.sleb128	9
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11522
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L754:
	.sleb128	9
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11522
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11521:
.L11497:
	.sleb128	8
	.4byte		.L11520
	.uleb128	612
	.uleb128	1
	.4byte		.L11523-.L2
	.uleb128	28
.L745:
	.sleb128	9
	.byte		"Os_CurrentUserModePriority"
	.byte		0
	.4byte		.L11524
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L746:
	.sleb128	9
	.byte		"Os_UserModePriorityChanged"
	.byte		0
	.4byte		.L11525
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L747:
	.sleb128	9
	.byte		"Os_DisableAllCount"
	.byte		0
	.4byte		.L11418
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L748:
	.sleb128	9
	.byte		"Os_SuspendAllCount"
	.byte		0
	.4byte		.L11418
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L749:
	.sleb128	9
	.byte		"Os_SuspendOSCount"
	.byte		0
	.4byte		.L11418
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L750:
	.sleb128	9
	.byte		"Os_SavedIsrLevel"
	.byte		0
	.4byte		.L11524
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L751:
	.sleb128	9
	.byte		"Os_SavedOSIsrLevel"
	.byte		0
	.4byte		.L11524
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L11523:
.L11508:
	.sleb128	8
	.4byte		.L11520
	.uleb128	612
	.uleb128	1
	.4byte		.L11526-.L2
	.uleb128	52
.L739:
	.sleb128	9
	.byte		"Os_IsrRunningIsr"
	.byte		0
	.4byte		.L11512
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L740:
	.sleb128	9
	.byte		"Os_IsrNeedToClear"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L741:
	.sleb128	9
	.byte		"Os_Isr_NestLevel"
	.byte		0
	.4byte		.L11418
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L742:
	.sleb128	9
	.byte		"Os_Isr_ServicesBackup"
	.byte		0
	.4byte		.L11531
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L743:
	.sleb128	9
	.byte		"Os_SuspendAllPrevIsrState"
	.byte		0
	.4byte		.L11524
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L744:
	.sleb128	9
	.byte		"Os_SuspendCounterpartTrack"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11526:
.L11482:
	.sleb128	10
	.4byte		.L11520
	.uleb128	612
	.uleb128	1
	.4byte		.L11537-.L2
	.byte		"Os_DispatchElementType_s"
	.byte		0
	.uleb128	56
.L732:
	.sleb128	9
	.byte		"Os_DispatchKind"
	.byte		0
	.4byte		.L11538
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L733:
	.sleb128	9
	.byte		"Os_DispatcherLockCoreId"
	.byte		0
	.4byte		.L11405
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L734:
	.sleb128	9
	.byte		"Os_DispatchIsrId"
	.byte		0
	.4byte		.L11540
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L735:
	.sleb128	9
	.byte		"Os_DispatchApiCall"
	.byte		0
	.4byte		.L11542
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L736:
	.sleb128	9
	.byte		"Os_DispatchApiInternal"
	.byte		0
	.4byte		.L11543
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11537:
.L11544:
	.sleb128	10
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11545-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
.L727:
	.sleb128	9
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11418
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L728:
	.sleb128	9
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L729:
	.sleb128	9
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11546
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L730:
	.sleb128	9
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11548
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L731:
	.sleb128	9
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11554
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11545:
	.section	.debug_info,,n
.L11554:
	.sleb128	11
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11555-.L2
	.uleb128	24
.L679:
	.sleb128	9
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	9
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11558
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	9
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11560
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	9
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11562
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	9
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	9
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11566
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	9
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11568
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	9
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11570
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	9
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11572
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	9
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11574
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	9
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11576
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	9
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11578
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	9
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11580
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	9
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11582
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	9
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11584
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	9
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11586
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	9
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11588
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	9
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11590
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	9
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11592
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	9
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11594
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	9
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11596
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	9
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11598
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	9
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11600
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	9
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11602
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	9
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11604
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	9
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11606
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	9
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11608
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	9
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11610
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	9
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11612
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	9
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11614
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	9
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11616
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	9
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11618
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	9
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11620
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	9
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11622
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	9
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11624
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	9
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11626
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	9
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11628
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	9
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11630
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	9
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11632
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	9
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11634
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	9
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	9
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	9
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	9
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11642
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	9
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11644
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	9
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11646
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L725:
	.sleb128	9
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	9
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11650
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11555:
.L11651:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11652-.L2
	.uleb128	8
.L677:
	.sleb128	9
	.byte		"CoreID"
	.byte		0
	.4byte		.L11405
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	9
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11653
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11652:
.L11649:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11655-.L2
	.uleb128	8
.L675:
	.sleb128	9
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11656
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	9
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11660
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11655:
.L11647:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11666-.L2
	.uleb128	8
.L673:
	.sleb128	9
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11667
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	9
	.byte		"Success"
	.byte		0
	.4byte		.L11668
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11666:
.L11645:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11671-.L2
	.uleb128	2
.L672:
	.sleb128	9
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11667
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11671:
.L11643:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11672-.L2
	.uleb128	2
.L671:
	.sleb128	9
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11667
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11672:
.L11641:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11673-.L2
	.uleb128	20
.L666:
	.sleb128	9
	.byte		"ProcId"
	.byte		0
	.4byte		.L11674
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L667:
	.sleb128	9
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11441
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L668:
	.sleb128	9
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11675
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L669:
	.sleb128	9
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11441
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L670:
	.sleb128	9
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11675
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11673:
.L11639:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11676-.L2
	.uleb128	12
.L663:
	.sleb128	9
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11677
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L664:
	.sleb128	9
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L665:
	.sleb128	9
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11679
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11676:
.L11637:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11681-.L2
	.uleb128	12
.L660:
	.sleb128	9
	.byte		"AppID"
	.byte		0
	.4byte		.L11682
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L661:
	.sleb128	9
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L662:
	.sleb128	9
	.byte		"Object"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11681:
.L11635:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11685-.L2
	.uleb128	12
.L657:
	.sleb128	9
	.byte		"AppID"
	.byte		0
	.4byte		.L11682
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L658:
	.sleb128	9
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11683
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L659:
	.sleb128	9
	.byte		"Object"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11685:
.L11601:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11686-.L2
	.uleb128	4
.L656:
	.sleb128	9
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11687
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11686:
.L11599:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11688-.L2
	.uleb128	12
.L653:
	.sleb128	9
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11687
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L654:
	.sleb128	9
	.byte		"Start"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L655:
	.sleb128	9
	.byte		"Cycle"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11688:
.L11597:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11690-.L2
	.uleb128	12
.L650:
	.sleb128	9
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11687
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L651:
	.sleb128	9
	.byte		"Increment"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L652:
	.sleb128	9
	.byte		"Cycle"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11690:
.L11595:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11691-.L2
	.uleb128	8
.L648:
	.sleb128	9
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11687
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	9
	.byte		"TickRef"
	.byte		0
	.4byte		.L11692
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11691:
.L11593:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11694-.L2
	.uleb128	8
.L646:
	.sleb128	9
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11687
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	9
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11695
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11694:
.L11633:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11699-.L2
	.uleb128	4
.L645:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11699:
.L11631:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11701-.L2
	.uleb128	8
.L643:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L644:
	.sleb128	9
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11701:
.L11629:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11702-.L2
	.uleb128	4
.L642:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11702:
.L11627:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11703-.L2
	.uleb128	8
.L640:
	.sleb128	9
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L641:
	.sleb128	9
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11703:
.L11625:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11704-.L2
	.uleb128	8
.L638:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	9
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11705
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11704:
.L11623:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11709-.L2
	.uleb128	4
.L637:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11709:
.L11621:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11710-.L2
	.uleb128	8
.L635:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L636:
	.sleb128	9
	.byte		"Offset"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11710:
.L11619:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11711-.L2
	.uleb128	8
.L633:
	.sleb128	9
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11700
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	9
	.byte		"Start"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11711:
.L11617:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11712-.L2
	.uleb128	12
.L630:
	.sleb128	9
	.byte		"CounterId"
	.byte		0
	.4byte		.L11713
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L631:
	.sleb128	9
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11692
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L632:
	.sleb128	9
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11692
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11712:
.L11615:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11714-.L2
	.uleb128	12
.L627:
	.sleb128	9
	.byte		"CounterId"
	.byte		0
	.4byte		.L11713
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L628:
	.sleb128	9
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11692
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L629:
	.sleb128	9
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11715
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11714:
.L11613:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11719-.L2
	.uleb128	4
.L626:
	.sleb128	9
	.byte		"CounterId"
	.byte		0
	.4byte		.L11713
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11719:
.L11609:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11720-.L2
	.uleb128	4
.L625:
	.sleb128	9
	.byte		"ISRId"
	.byte		0
	.4byte		.L11540
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11720:
.L11605:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11721-.L2
	.uleb128	2
.L623:
	.sleb128	9
	.byte		"Application"
	.byte		0
	.4byte		.L11682
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L624:
	.sleb128	9
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11722
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11721:
.L11607:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11723-.L2
	.uleb128	1
.L622:
	.sleb128	9
	.byte		"Application"
	.byte		0
	.4byte		.L11682
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11723:
.L11603:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11724-.L2
	.uleb128	8
.L620:
	.sleb128	9
	.byte		"Application"
	.byte		0
	.4byte		.L11682
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L621:
	.sleb128	9
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11725
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11724:
.L11587:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11728-.L2
	.uleb128	8
.L619:
	.sleb128	9
	.byte		"EventMask"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11728:
.L11585:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11732-.L2
	.uleb128	24
.L616:
	.sleb128	9
	.byte		"TaskId"
	.byte		0
	.4byte		.L11674
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L617:
	.sleb128	9
	.byte		"EventMask"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L618:
	.sleb128	9
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11733
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11732:
.L11583:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11735-.L2
	.uleb128	8
.L615:
	.sleb128	9
	.byte		"EventMask"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11735:
.L11581:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11736-.L2
	.uleb128	16
.L613:
	.sleb128	9
	.byte		"TaskId"
	.byte		0
	.4byte		.L11674
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L614:
	.sleb128	9
	.byte		"EventMask"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11736:
.L11579:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11737-.L2
	.uleb128	8
.L611:
	.sleb128	9
	.byte		"TaskId"
	.byte		0
	.4byte		.L11674
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	9
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11738
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11737:
.L11577:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11742-.L2
	.uleb128	4
.L610:
	.sleb128	9
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11743
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11742:
.L11575:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11745-.L2
	.uleb128	4
.L609:
	.sleb128	9
	.byte		"TaskId"
	.byte		0
	.4byte		.L11674
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11745:
.L11573:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11746-.L2
	.uleb128	4
.L608:
	.sleb128	9
	.byte		"TaskId"
	.byte		0
	.4byte		.L11674
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11746:
.L11591:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11747-.L2
	.uleb128	4
.L607:
	.sleb128	9
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11445
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11747:
.L11589:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11748-.L2
	.uleb128	4
.L606:
	.sleb128	9
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11445
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11748:
.L11611:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11749-.L2
	.uleb128	4
.L605:
	.sleb128	9
	.byte		"AppMode"
	.byte		0
	.4byte		.L11750
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11749:
.L11571:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11751-.L2
	.uleb128	2
.L604:
	.sleb128	9
	.byte		"CoreID"
	.byte		0
	.4byte		.L11405
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11751:
.L11565:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11752-.L2
	.uleb128	2
.L603:
	.sleb128	9
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11405
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11752:
.L11563:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11753-.L2
	.uleb128	1
.L602:
	.sleb128	9
	.byte		"Error"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11753:
.L11561:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11754-.L2
	.uleb128	8
.L600:
	.sleb128	9
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11755
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L601:
	.sleb128	9
	.byte		"Error"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11754:
.L11559:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11757-.L2
	.uleb128	1
.L599:
	.sleb128	9
	.byte		"Error"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11757:
.L11569:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11758-.L2
	.uleb128	8
.L597:
	.sleb128	9
	.byte		"CoreID"
	.byte		0
	.4byte		.L11405
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L598:
	.sleb128	9
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11758:
.L11567:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11760-.L2
	.uleb128	8
.L595:
	.sleb128	9
	.byte		"CoreID"
	.byte		0
	.4byte		.L11405
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	9
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11760:
.L11557:
	.sleb128	8
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11761-.L2
	.uleb128	4
.L594:
	.sleb128	9
	.byte		"AppMode"
	.byte		0
	.4byte		.L11750
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11761:
.L11659:
	.sleb128	8
	.4byte		.L11762
	.uleb128	33
	.uleb128	14
	.4byte		.L11763-.L2
	.uleb128	24
.L587:
	.sleb128	9
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11764
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L588:
	.sleb128	9
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11768
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L589:
	.sleb128	9
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11769
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L590:
	.sleb128	9
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11770
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L591:
	.sleb128	9
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11771
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L592:
	.sleb128	9
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L593:
	.sleb128	9
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11778
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11763:
.L11777:
	.sleb128	8
	.4byte		.L11762
	.uleb128	33
	.uleb128	14
	.4byte		.L11781-.L2
	.uleb128	4
.L583:
	.sleb128	9
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11782
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L584:
	.sleb128	9
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11784
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11781:
.L11767:
	.sleb128	8
	.4byte		.L11762
	.uleb128	33
	.uleb128	14
	.4byte		.L11786-.L2
	.uleb128	6
.L580:
	.sleb128	9
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11768
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L581:
	.sleb128	9
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11768
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L582:
	.sleb128	9
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11786:
.L11510:
	.sleb128	8
	.4byte		.L11787
	.uleb128	34
	.uleb128	14
	.4byte		.L11788-.L2
	.uleb128	2
.L531:
	.sleb128	9
	.byte		"Os_HookID"
	.byte		0
	.4byte		.L11789
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11788:
.L11430:
	.sleb128	10
	.4byte		.L11790
	.uleb128	80
	.uleb128	13
	.4byte		.L11791-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L513:
	.sleb128	9
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L514:
	.sleb128	9
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11404
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L515:
	.sleb128	9
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11793
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L516:
	.sleb128	9
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11797
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L517:
	.sleb128	9
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L518:
	.sleb128	9
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11805
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L519:
	.sleb128	9
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11806
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L520:
	.sleb128	9
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11806
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L521:
	.sleb128	9
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11807
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L522:
	.sleb128	9
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11809
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L523:
	.sleb128	9
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11810
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L524:
	.sleb128	9
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11811
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L525:
	.sleb128	9
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11815
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L526:
	.sleb128	9
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11811
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L527:
	.sleb128	9
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L528:
	.sleb128	9
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11821
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L529:
	.sleb128	9
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L530:
	.sleb128	9
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11825
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11791:
.L11801:
	.sleb128	10
	.4byte		.L11790
	.uleb128	80
	.uleb128	13
	.4byte		.L11826-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L511:
	.sleb128	9
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11827
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	9
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11809
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11826:
.L11796:
	.sleb128	8
	.4byte		.L11790
	.uleb128	80
	.uleb128	13
	.4byte		.L11829-.L2
	.uleb128	56
.L498:
	.sleb128	9
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11740
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L499:
	.sleb128	9
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11830
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L500:
	.sleb128	9
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L501:
	.sleb128	9
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L502:
	.sleb128	9
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11808
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L503:
	.sleb128	9
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11445
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L504:
	.sleb128	9
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11441
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L505:
	.sleb128	9
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11500
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L506:
	.sleb128	9
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11832
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L507:
	.sleb128	9
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11522
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L508:
	.sleb128	9
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11517
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L509:
	.sleb128	9
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11441
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L510:
	.sleb128	9
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11829:
.L11834:
	.sleb128	10
	.4byte		.L11835
	.uleb128	52
	.uleb128	1
	.4byte		.L11836-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L450:
	.sleb128	9
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L451:
	.sleb128	9
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L452:
	.sleb128	9
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11838
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L453:
	.sleb128	9
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11811
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L454:
	.sleb128	9
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11778
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11836:
.L11841:
	.sleb128	8
	.4byte		.L11835
	.uleb128	52
	.uleb128	1
	.4byte		.L11842-.L2
	.uleb128	12
.L447:
	.sleb128	9
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11512
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L448:
	.sleb128	9
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11832
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L449:
	.sleb128	9
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11823
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11842:
.L11503:
	.sleb128	10
	.4byte		.L11835
	.uleb128	52
	.uleb128	1
	.4byte		.L11843-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L435:
	.sleb128	9
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11844
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L436:
	.sleb128	9
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11848
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L437:
	.sleb128	9
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11792
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L438:
	.sleb128	9
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11849
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L439:
	.sleb128	9
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11852
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L440:
	.sleb128	9
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11857
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L441:
	.sleb128	9
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11862
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L442:
	.sleb128	9
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11867
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L443:
	.sleb128	9
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11870
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L444:
	.sleb128	9
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11873
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L445:
	.sleb128	9
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11876
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L446:
	.sleb128	9
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11404
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11843:
.L11847:
	.sleb128	8
	.4byte		.L11835
	.uleb128	52
	.uleb128	1
	.4byte		.L11879-.L2
	.uleb128	1
.L434:
	.sleb128	9
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11727
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11879:
.L11455:
	.sleb128	8
	.4byte		.L11880
	.uleb128	32
	.uleb128	1
	.4byte		.L11881-.L2
	.uleb128	12
.L431:
	.sleb128	9
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11806
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L432:
	.sleb128	9
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11812
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L433:
	.sleb128	9
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L11882
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11881:
.L11884:
	.sleb128	8
	.4byte		.L11880
	.uleb128	32
	.uleb128	1
	.4byte		.L11885-.L2
	.uleb128	4
.L430:
	.sleb128	9
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11512
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11885:
.L11534:
	.sleb128	8
	.4byte		.L11880
	.uleb128	32
	.uleb128	1
	.4byte		.L11886-.L2
	.uleb128	24
.L419:
	.sleb128	9
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L11887
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L420:
	.sleb128	9
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L11887
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L421:
	.sleb128	9
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L11887
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L422:
	.sleb128	9
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L11887
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L423:
	.sleb128	9
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L11887
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L424:
	.sleb128	9
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L11887
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11886:
.L11698:
	.sleb128	8
	.4byte		.L11892
	.uleb128	50
	.uleb128	1
	.4byte		.L11893-.L2
	.uleb128	12
.L378:
	.sleb128	9
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L379:
	.sleb128	9
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L380:
	.sleb128	9
	.byte		"mincycle"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11893:
.L11461:
	.sleb128	8
	.4byte		.L11892
	.uleb128	50
	.uleb128	1
	.4byte		.L11894-.L2
	.uleb128	8
.L376:
	.sleb128	9
	.byte		"Os_ObjStartId"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	9
	.byte		"Os_ObjEndId"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11894:
.L11530:
	.sleb128	8
	.4byte		.L11895
	.uleb128	87
	.uleb128	7
	.4byte		.L11896-.L2
	.uleb128	8
.L366:
	.sleb128	9
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11897
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L367:
	.sleb128	9
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L11898
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11896:
	.section	.debug_info,,n
.L11402:
	.sleb128	12
	.4byte		.L11900
	.uleb128	155
	.uleb128	1
	.4byte		.L11901-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"Os_Isr_Enabled"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"Os_Isr_Disabled"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11901:
.L11516:
	.sleb128	12
	.4byte		.L11469
	.uleb128	69
	.uleb128	1
	.4byte		.L11902-.L2
	.uleb128	4
	.sleb128	13
	.byte		"Os_Return"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"Os_Load"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"Os_SaveAndLoad"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"Os_SaveAndIdle"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"Os_Idle"
	.byte		0
	.sleb128	4
	.sleb128	0
.L11902:
.L11539:
	.sleb128	12
	.4byte		.L11520
	.uleb128	612
	.uleb128	1
	.4byte		.L11903-.L2
	.uleb128	4
	.sleb128	13
	.byte		"OS_DISPATCH_JUSTSCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"OS_DISPATCH_API"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"OS_DISPATCH_INTERRUPT"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"OS_DISPATCH_APIRE"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"OS_DISPATCH_INTERNAL"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"OS_DISPATCH_INTERNALCROSS"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"OS_DISPATCH_INVALID"
	.byte		0
	.sleb128	6
	.sleb128	0
.L11903:
.L11547:
	.sleb128	12
	.4byte		.L11520
	.uleb128	60
	.uleb128	1
	.4byte		.L11904-.L2
	.uleb128	4
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
.L11904:
	.section	.debug_info,,n
.L11680:
	.sleb128	14
	.4byte		.L11762
	.uleb128	33
	.uleb128	14
	.4byte		.L11905-.L2
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
.L11905:
.L11831:
	.sleb128	12
	.4byte		.L11790
	.uleb128	80
	.uleb128	13
	.4byte		.L11906-.L2
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
.L11906:
.L11804:
	.sleb128	12
	.4byte		.L11790
	.uleb128	61
	.uleb128	1
	.4byte		.L11907-.L2
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
.L11907:
.L11851:
	.sleb128	12
	.4byte		.L11835
	.uleb128	52
	.uleb128	1
	.4byte		.L11908-.L2
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
.L11908:
.L11670:
	.sleb128	12
	.4byte		.L11909
	.uleb128	43
	.uleb128	1
	.4byte		.L11910-.L2
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
.L11910:
.L11741:
	.sleb128	12
	.4byte		.L11911
	.uleb128	37
	.uleb128	1
	.4byte		.L11912-.L2
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
.L11912:
.L11708:
	.sleb128	12
	.4byte		.L11913
	.uleb128	40
	.uleb128	1
	.4byte		.L11914-.L2
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
.L11914:
.L11684:
	.sleb128	12
	.4byte		.L11915
	.uleb128	47
	.uleb128	1
	.4byte		.L11916-.L2
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
.L11916:
.L11756:
	.sleb128	12
	.4byte		.L11892
	.uleb128	42
	.uleb128	13
	.4byte		.L11917-.L2
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
.L11917:
.L11654:
	.sleb128	12
	.4byte		.L11918
	.uleb128	83
	.uleb128	14
	.4byte		.L11919-.L2
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
.L11919:
	.section	.debug_info,,n
.L11401:
	.sleb128	15
	.byte		"Os_IsrStateType"
	.byte		0
	.4byte		.L11402
	.section	.debug_info,,n
.L11407:
	.sleb128	16
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11406:
	.sleb128	15
	.byte		"uint16"
	.byte		0
	.4byte		.L11407
.L11405:
	.sleb128	15
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11406
	.section	.debug_info,,n
.L11404:
	.sleb128	17
	.4byte		.L11405
.L11419:
	.sleb128	16
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11418:
	.sleb128	15
	.byte		"uint32"
	.byte		0
	.4byte		.L11419
.L11417:
	.sleb128	15
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11418
.L11429:
	.sleb128	15
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11430
.L11428:
	.sleb128	17
	.4byte		.L11429
	.section	.debug_info,,n
.L11427:
	.sleb128	18
	.4byte		.L11428
.L11426:
	.sleb128	17
	.4byte		.L11427
.L11442:
	.sleb128	16
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11441:
	.sleb128	15
	.byte		"uint8"
	.byte		0
	.4byte		.L11442
.L11440:
	.sleb128	15
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11441
.L11445:
	.sleb128	15
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11418
.L11454:
	.sleb128	15
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11455
.L11453:
	.sleb128	17
	.4byte		.L11454
	.section	.debug_info,,n
.L11451:
	.sleb128	19
	.4byte		.L11452-.L2
	.4byte		.L11453
	.section	.debug_info,,n
	.sleb128	20
	.sleb128	0
.L11452:
.L11460:
	.sleb128	15
	.byte		"Os_ObjectRangeType"
	.byte		0
	.4byte		.L11461
.L11459:
	.sleb128	17
	.4byte		.L11460
.L11457:
	.sleb128	19
	.4byte		.L11458-.L2
	.4byte		.L11459
	.section	.debug_info,,n
	.sleb128	21
	.uleb128	1
	.sleb128	0
.L11458:
.L11467:
	.sleb128	15
	.byte		"Os_Core_StatType"
	.byte		0
	.4byte		.L11468
.L11466:
	.sleb128	17
	.4byte		.L11467
.L11464:
	.sleb128	19
	.4byte		.L11465-.L2
	.4byte		.L11466
	.sleb128	21
	.uleb128	1
	.sleb128	0
.L11465:
.L11473:
	.sleb128	15
	.byte		"Os_Core_DynInitType"
	.byte		0
	.4byte		.L11474
.L11472:
	.sleb128	18
	.4byte		.L11473
.L11471:
	.sleb128	17
	.4byte		.L11472
.L11477:
	.sleb128	15
	.byte		"Os_Core_DynType"
	.byte		0
	.4byte		.L11478
.L11476:
	.sleb128	18
	.4byte		.L11477
.L11475:
	.sleb128	17
	.4byte		.L11476
.L11481:
	.sleb128	15
	.byte		"Os_DispatchElementType"
	.byte		0
	.4byte		.L11482
.L11480:
	.sleb128	18
	.4byte		.L11481
.L11479:
	.sleb128	17
	.4byte		.L11480
	.section	.debug_info,,n
.L11486:
	.sleb128	22
	.4byte		.L11487-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	23
	.4byte		.L11426
	.sleb128	0
.L11487:
.L11485:
	.sleb128	18
	.4byte		.L11486
.L11484:
	.sleb128	15
	.byte		"Os_PrepareContextFunctionType"
	.byte		0
	.4byte		.L11485
.L11483:
	.sleb128	17
	.4byte		.L11484
.L11494:
	.sleb128	15
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11418
.L11493:
	.sleb128	18
	.4byte		.L11494
	.section	.debug_info,,n
.L11491:
	.sleb128	24
	.4byte		.L11492-.L2
	.4byte		.L11493
	.byte		0x1
	.sleb128	23
	.4byte		.L11427
	.sleb128	0
.L11492:
.L11490:
	.sleb128	18
	.4byte		.L11491
.L11489:
	.sleb128	15
	.byte		"Os_GetStackPointerFunctionType"
	.byte		0
	.4byte		.L11490
.L11488:
	.sleb128	17
	.4byte		.L11489
.L11496:
	.sleb128	15
	.byte		"Os_IsrDynInitType"
	.byte		0
	.4byte		.L11497
.L11498:
	.sleb128	15
	.byte		"Os_SchedulerDynInitType"
	.byte		0
	.4byte		.L11499
.L11502:
	.sleb128	15
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11503
.L11501:
	.sleb128	17
	.4byte		.L11502
.L11500:
	.sleb128	18
	.4byte		.L11501
.L11505:
	.sleb128	15
	.byte		"Os_SchedulerDynType"
	.byte		0
	.4byte		.L11506
.L11507:
	.sleb128	15
	.byte		"Os_IsrDynType"
	.byte		0
	.4byte		.L11508
.L11509:
	.sleb128	15
	.byte		"Os_HooksDynType"
	.byte		0
	.4byte		.L11510
.L11513:
	.sleb128	17
	.4byte		.L11430
.L11512:
	.sleb128	18
	.4byte		.L11513
.L11515:
	.sleb128	15
	.byte		"Os_ScheduleType"
	.byte		0
	.4byte		.L11516
.L11517:
	.sleb128	15
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11418
.L11518:
	.sleb128	15
	.byte		"Os_SchedulerQueueElementType"
	.byte		0
	.4byte		.L11519
.L11522:
	.sleb128	18
	.4byte		.L11519
.L11524:
	.sleb128	15
	.byte		"Os_IsrRegister_t"
	.byte		0
	.4byte		.L11418
.L11525:
	.sleb128	15
	.byte		"boolean"
	.byte		0
	.4byte		.L11442
.L11529:
	.sleb128	15
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11530
.L11528:
	.sleb128	17
	.4byte		.L11529
.L11527:
	.sleb128	18
	.4byte		.L11528
.L11533:
	.sleb128	15
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11534
.L11532:
	.sleb128	17
	.4byte		.L11533
.L11531:
	.sleb128	18
	.4byte		.L11532
.L11535:
	.sleb128	19
	.4byte		.L11536-.L2
	.4byte		.L11418
	.sleb128	21
	.uleb128	7
	.sleb128	0
.L11536:
.L11538:
	.sleb128	15
	.byte		"Os_DispatchKindType"
	.byte		0
	.4byte		.L11539
.L11541:
	.sleb128	15
	.byte		"ProcType"
	.byte		0
	.4byte		.L11417
.L11540:
	.sleb128	15
	.byte		"ISRType"
	.byte		0
	.4byte		.L11541
.L11543:
	.sleb128	15
	.byte		"Os_APICallType"
	.byte		0
	.4byte		.L11544
.L11542:
	.sleb128	18
	.4byte		.L11543
.L11546:
	.sleb128	15
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11547
.L11550:
	.sleb128	22
	.4byte		.L11551-.L2
	.byte		0x1
.L11552:
	.sleb128	18
	.4byte		.L11544
	.sleb128	23
	.4byte		.L11552
.L11553:
	.sleb128	17
	.4byte		.L11512
	.sleb128	23
	.4byte		.L11553
	.sleb128	0
.L11551:
.L11549:
	.sleb128	18
	.4byte		.L11550
.L11548:
	.sleb128	15
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11549
.L11556:
	.sleb128	15
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11557
.L11558:
	.sleb128	15
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11559
.L11560:
	.sleb128	15
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11561
.L11562:
	.sleb128	15
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11563
.L11564:
	.sleb128	15
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11565
.L11566:
	.sleb128	15
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11567
.L11568:
	.sleb128	15
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11569
.L11570:
	.sleb128	15
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11571
.L11572:
	.sleb128	15
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11573
.L11574:
	.sleb128	15
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11575
.L11576:
	.sleb128	15
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11577
.L11578:
	.sleb128	15
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11579
.L11580:
	.sleb128	15
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11581
.L11582:
	.sleb128	15
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11583
.L11584:
	.sleb128	15
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11585
.L11586:
	.sleb128	15
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11587
.L11588:
	.sleb128	15
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11589
.L11590:
	.sleb128	15
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11591
.L11592:
	.sleb128	15
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11593
.L11594:
	.sleb128	15
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11595
.L11596:
	.sleb128	15
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11597
.L11598:
	.sleb128	15
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11599
.L11600:
	.sleb128	15
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11601
.L11602:
	.sleb128	15
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11603
.L11604:
	.sleb128	15
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11605
.L11606:
	.sleb128	15
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11607
.L11608:
	.sleb128	15
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11609
.L11610:
	.sleb128	15
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11611
.L11612:
	.sleb128	15
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11613
.L11614:
	.sleb128	15
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11615
.L11616:
	.sleb128	15
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11617
.L11618:
	.sleb128	15
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11619
.L11620:
	.sleb128	15
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11621
.L11622:
	.sleb128	15
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11623
.L11624:
	.sleb128	15
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11625
.L11626:
	.sleb128	15
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11627
.L11628:
	.sleb128	15
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11629
.L11630:
	.sleb128	15
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11631
.L11632:
	.sleb128	15
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11633
.L11634:
	.sleb128	15
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11635
.L11636:
	.sleb128	15
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11637
.L11638:
	.sleb128	15
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11639
.L11640:
	.sleb128	15
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11641
.L11642:
	.sleb128	15
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11643
.L11644:
	.sleb128	15
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11645
.L11646:
	.sleb128	15
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11647
.L11648:
	.sleb128	15
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11649
.L11650:
	.sleb128	15
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11651
.L11653:
	.sleb128	15
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11654
.L11658:
	.sleb128	15
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11659
.L11657:
	.sleb128	17
	.4byte		.L11658
.L11656:
	.sleb128	18
	.4byte		.L11657
	.section	.debug_info,,n
.L11665:
	.sleb128	25
	.byte		"void"
	.byte		0
	.byte		0x0
.L11664:
	.sleb128	18
	.4byte		.L11665
.L11662:
	.sleb128	19
	.4byte		.L11663-.L2
	.4byte		.L11664
	.sleb128	21
	.uleb128	1
	.sleb128	0
.L11663:
.L11661:
	.sleb128	15
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11662
.L11660:
	.sleb128	18
	.4byte		.L11661
.L11667:
	.sleb128	15
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11406
.L11669:
	.sleb128	15
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11670
.L11668:
	.sleb128	18
	.4byte		.L11669
.L11674:
	.sleb128	15
	.byte		"TaskType"
	.byte		0
	.4byte		.L11541
.L11675:
	.sleb128	18
	.4byte		.L11441
.L11677:
	.sleb128	15
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11418
.L11678:
	.sleb128	15
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11664
.L11679:
	.sleb128	15
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11680
.L11682:
	.sleb128	15
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11441
.L11683:
	.sleb128	15
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11684
.L11687:
	.sleb128	15
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11417
.L11689:
	.sleb128	15
	.byte		"TickType"
	.byte		0
	.4byte		.L11418
.L11693:
	.sleb128	18
	.4byte		.L11689
.L11692:
	.sleb128	15
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11693
.L11697:
	.sleb128	15
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11698
.L11696:
	.sleb128	18
	.4byte		.L11697
.L11695:
	.sleb128	15
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11696
.L11700:
	.sleb128	15
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11418
.L11707:
	.sleb128	15
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11708
.L11706:
	.sleb128	18
	.4byte		.L11707
.L11705:
	.sleb128	15
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11706
.L11713:
	.sleb128	15
	.byte		"CounterType"
	.byte		0
	.4byte		.L11418
.L11717:
	.sleb128	22
	.4byte		.L11718-.L2
	.byte		0x1
	.sleb128	23
	.4byte		.L11552
	.sleb128	0
.L11718:
.L11716:
	.sleb128	18
	.4byte		.L11717
.L11715:
	.sleb128	15
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11716
.L11722:
	.sleb128	15
	.byte		"RestartType"
	.byte		0
	.4byte		.L11441
.L11727:
	.sleb128	15
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11441
.L11726:
	.sleb128	18
	.4byte		.L11727
.L11725:
	.sleb128	15
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11726
.L11731:
	.sleb128	16
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11730:
	.sleb128	15
	.byte		"uint64"
	.byte		0
	.4byte		.L11731
.L11729:
	.sleb128	15
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11730
.L11734:
	.sleb128	18
	.4byte		.L11729
.L11733:
	.sleb128	15
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11734
.L11740:
	.sleb128	15
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11741
.L11739:
	.sleb128	18
	.4byte		.L11740
.L11738:
	.sleb128	15
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11739
.L11744:
	.sleb128	18
	.4byte		.L11674
.L11743:
	.sleb128	15
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11744
.L11750:
	.sleb128	15
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11418
.L11755:
	.sleb128	15
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11756
.L11759:
	.sleb128	18
	.4byte		.L11440
.L11766:
	.sleb128	15
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11767
.L11765:
	.sleb128	18
	.4byte		.L11766
.L11764:
	.sleb128	17
	.4byte		.L11765
.L11768:
	.sleb128	15
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11406
.L11769:
	.sleb128	17
	.4byte		.L11664
.L11770:
	.sleb128	17
	.4byte		.L11406
.L11772:
	.sleb128	15
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11441
.L11771:
	.sleb128	17
	.4byte		.L11772
.L11776:
	.sleb128	15
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11777
.L11775:
	.sleb128	17
	.4byte		.L11776
.L11774:
	.sleb128	18
	.4byte		.L11775
.L11773:
	.sleb128	17
	.4byte		.L11774
.L11780:
	.sleb128	15
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11441
.L11779:
	.sleb128	18
	.4byte		.L11780
.L11778:
	.sleb128	17
	.4byte		.L11779
.L11783:
	.sleb128	15
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11406
.L11782:
	.sleb128	17
	.4byte		.L11783
.L11785:
	.sleb128	15
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11406
.L11784:
	.sleb128	17
	.4byte		.L11785
.L11789:
	.sleb128	15
	.byte		"Os_HookIDType"
	.byte		0
	.4byte		.L11406
.L11792:
	.sleb128	17
	.4byte		.L11674
.L11795:
	.sleb128	15
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11796
.L11794:
	.sleb128	18
	.4byte		.L11795
.L11793:
	.sleb128	17
	.4byte		.L11794
.L11800:
	.sleb128	15
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11801
.L11799:
	.sleb128	17
	.4byte		.L11800
.L11798:
	.sleb128	18
	.4byte		.L11799
.L11797:
	.sleb128	17
	.4byte		.L11798
.L11803:
	.sleb128	15
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11804
.L11802:
	.sleb128	17
	.4byte		.L11803
.L11805:
	.sleb128	17
	.4byte		.L11729
.L11806:
	.sleb128	17
	.4byte		.L11517
.L11808:
	.sleb128	15
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11418
.L11807:
	.sleb128	17
	.4byte		.L11808
.L11809:
	.sleb128	17
	.4byte		.L11493
.L11810:
	.sleb128	17
	.4byte		.L11500
.L11814:
	.sleb128	15
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11418
.L11813:
	.sleb128	17
	.4byte		.L11814
.L11812:
	.sleb128	18
	.4byte		.L11813
.L11811:
	.sleb128	17
	.4byte		.L11812
.L11818:
	.sleb128	22
	.4byte		.L11819-.L2
	.byte		0x1
	.sleb128	0
.L11819:
.L11817:
	.sleb128	18
	.4byte		.L11818
.L11816:
	.sleb128	15
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11817
.L11815:
	.sleb128	17
	.4byte		.L11816
.L11820:
	.sleb128	17
	.4byte		.L11445
.L11823:
	.sleb128	18
	.4byte		.L11453
.L11822:
	.sleb128	15
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11823
.L11821:
	.sleb128	18
	.4byte		.L11822
.L11824:
	.sleb128	17
	.4byte		.L11522
.L11825:
	.sleb128	17
	.4byte		.L11527
.L11828:
	.sleb128	15
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11418
.L11827:
	.sleb128	17
	.4byte		.L11828
.L11830:
	.sleb128	15
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11831
.L11833:
	.sleb128	17
	.4byte		.L11834
.L11832:
	.sleb128	18
	.4byte		.L11833
.L11837:
	.sleb128	17
	.4byte		.L11667
.L11840:
	.sleb128	15
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11841
.L11839:
	.sleb128	18
	.4byte		.L11840
.L11838:
	.sleb128	17
	.4byte		.L11839
.L11846:
	.sleb128	15
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11847
.L11845:
	.sleb128	18
	.4byte		.L11846
.L11844:
	.sleb128	17
	.4byte		.L11845
.L11848:
	.sleb128	17
	.4byte		.L11682
.L11850:
	.sleb128	15
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11851
.L11849:
	.sleb128	17
	.4byte		.L11850
.L11855:
	.sleb128	22
	.4byte		.L11856-.L2
	.byte		0x1
	.sleb128	23
	.4byte		.L11440
	.sleb128	0
.L11856:
.L11854:
	.sleb128	18
	.4byte		.L11855
.L11853:
	.sleb128	15
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11854
.L11852:
	.sleb128	17
	.4byte		.L11853
.L11860:
	.sleb128	22
	.4byte		.L11861-.L2
	.byte		0x1
	.sleb128	0
.L11861:
.L11859:
	.sleb128	18
	.4byte		.L11860
.L11858:
	.sleb128	15
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11859
.L11857:
	.sleb128	17
	.4byte		.L11858
.L11865:
	.sleb128	22
	.4byte		.L11866-.L2
	.byte		0x1
	.sleb128	23
	.4byte		.L11440
	.sleb128	0
.L11866:
.L11864:
	.sleb128	18
	.4byte		.L11865
.L11863:
	.sleb128	15
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11864
.L11862:
	.sleb128	17
	.4byte		.L11863
.L11869:
	.sleb128	17
	.4byte		.L11541
.L11868:
	.sleb128	18
	.4byte		.L11869
.L11867:
	.sleb128	17
	.4byte		.L11868
.L11872:
	.sleb128	17
	.4byte		.L11713
.L11871:
	.sleb128	18
	.4byte		.L11872
.L11870:
	.sleb128	17
	.4byte		.L11871
.L11875:
	.sleb128	17
	.4byte		.L11687
.L11874:
	.sleb128	18
	.4byte		.L11875
.L11873:
	.sleb128	17
	.4byte		.L11874
.L11878:
	.sleb128	17
	.4byte		.L11700
.L11877:
	.sleb128	18
	.4byte		.L11878
.L11876:
	.sleb128	17
	.4byte		.L11877
.L11883:
	.sleb128	15
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11884
.L11882:
	.sleb128	18
	.4byte		.L11883
.L11890:
	.sleb128	22
	.4byte		.L11891-.L2
	.byte		0x1
	.sleb128	0
.L11891:
.L11889:
	.sleb128	18
	.4byte		.L11890
.L11888:
	.sleb128	15
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L11889
.L11887:
	.sleb128	17
	.4byte		.L11888
.L11897:
	.sleb128	17
	.4byte		.L11418
.L11899:
	.sleb128	15
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11406
.L11898:
	.sleb128	17
	.4byte		.L11899
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11394:
	.sleb128	0
.L11390:

	.section	.debug_loc,,n
	.align	0
.L11408:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L11415:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locend
.L11420:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo6),3
	.d2locend
.L11431:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),0
	.d2locend
.L11433:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo11),3
	.d2locend
.L11435:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo11),5
	.d2locend
.L11444:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),7
	.d2locend
.L11446:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo18),4
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo19),30
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),30
	.d2locend
.L11448:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo27),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_Resource_Err"
	.wrcm.nstrlist "calls", "Os_Access_Check","Os_Isr_GetState"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Resource_FreeTaskResources"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Resources_Init"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_Isr_GetState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Resource.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Resource.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Resource.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Resource.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Resource.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Resource.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\resources\Os_Resource.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
