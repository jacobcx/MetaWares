#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Application.c"
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
# FUNC(Os_BoolType,OS_CODE) Os_ApplicationOnOtherCore(VAR(ApplicationType,AUTOMATIC) ApplicationId )
	.section	.Os_TEXT,,c
	.align		2
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11390:
	.section	.Os_TEXT,,c
#$$ld
.L11386:
	.0byte		.L11384
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_Application.c"
        .d2line         49,27
#$$ld
.L11393:

#$$bf	Os_ApplicationOnOtherCore,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.globl		Os_ApplicationOnOtherCore
	.d2_cfa_start __cie
Os_ApplicationOnOtherCore:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# ApplicationId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# ApplicationId=r0 ApplicationId=r3
	.d2prologue_end
# {
#     VAR(Os_BoolType,AUTOMATIC) retVal;
#     CONST(CoreIdType,AUTOMATIC) coreId = OS_GETCOREID();
	.d2line		52
	mfspr		r4,286		# coreId=r4
.Llo9:
	mr		r4,r4		# coreId=r4 coreId=r4
#     if (((Os_ObjectType)ApplicationId >= Os_ApplicationRange[coreId].Os_ObjStartId) &&
	.d2line		53
	rlwinm		r6,r0,0,24,31		# ApplicationId=r0
	lis		r3,Os_ApplicationRange@ha
.Llo2:
	e_add16i		r3,r3,Os_ApplicationRange@l
	rlwinm		r5,r4,3,13,28		# coreId=r4
	lwzx		r3,r3,r5
	se_cmpl		r6,r3
	bc		1,0,.L11348	# lt
.Llo3:
	rlwinm		r0,r0,0,24,31		# ApplicationId=r0 ApplicationId=r0
	lis		r3,(Os_ApplicationRange+4)@ha
	e_add16i		r3,r3,(Os_ApplicationRange+4)@l
.Llo10:
	rlwinm		r4,r4,3,13,28		# coreId=r4 coreId=r4
.Llo11:
	lwzx		r3,r3,r4
	se_cmpl		r0,r3		# ApplicationId=r0
	bc		1,1,.L11348	# gt
#         ((Os_ObjectType)ApplicationId <= Os_ApplicationRange[coreId].Os_ObjEndId) )
#     {
#         retVal = Os_false;
	.d2line		56
.Llo4:
	diab.li		r3,0		# retVal=r3
.Llo7:
	b		.L11349
.L11348:
#     }
#     else
#     {
#         retVal = Os_true;
	.d2line		60
.Llo5:
	diab.li		r3,1		# retVal=r3
.L11349:
#     }
#     return retVal;
	.d2line		62
.Llo6:
	mr		r3,r3		# retVal=r3 retVal=r3
# }
	.d2line		63
	.d2epilogue_begin
.Llo8:
	lwz		r0,20(r1)		# ApplicationId=r0
	mtspr		lr,r0		# ApplicationId=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11394:
	.type		Os_ApplicationOnOtherCore,@function
	.size		Os_ApplicationOnOtherCore,.-Os_ApplicationOnOtherCore
# Number of nodes = 40

# Allocations for Os_ApplicationOnOtherCore
#	?a4		ApplicationId
#	?a5		retVal
#	?a6		coreId
# FUNC (void, OS_CODE) Os_ApplicationInit(CONST(CoreIdType,AUTOMATIC) coreID)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         72,22
#$$ld
.L11413:

#$$bf	Os_ApplicationInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		Os_ApplicationInit
	.d2_cfa_start __cie
Os_ApplicationInit:
.Llo12:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# coreID=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# coreID=r0 coreID=r3
	.d2prologue_end
# {
#     VAR (ApplicationType, AUTOMATIC) appId;
# 
#     for ( appId  = (ApplicationType)Os_ApplicationRange[coreID].Os_ObjStartId;
	.d2line		76
.Llo13:
	lis		r3,Os_ApplicationRange@ha
.Llo14:
	e_add16i		r3,r3,Os_ApplicationRange@l
	rlwinm		r5,r0,3,13,28		# coreID=r0
	lwzx		r3,r3,r5
.Llo16:
	mr		r3,r3		# appId=r3 appId=r3
.L11353:
	rlwinm		r6,r3,0,24,31		# appId=r3
	lis		r4,(Os_ApplicationRange+4)@ha
	e_add16i		r4,r4,(Os_ApplicationRange+4)@l
	rlwinm		r5,r0,3,13,28		# coreID=r0
	lwzx		r4,r4,r5
	rlwinm		r4,r4,0,24,31
	se_cmp		r6,r4
	bc		1,1,.L11352	# gt
#           appId <= (ApplicationType)Os_ApplicationRange[coreID].Os_ObjEndId;
#           appId++ )
#     {
#         Os_Applications_Stat[appId].Os_AppDyn->Os_AppState =   APPLICATION_ACCESSIBLE; /* [OS500] [OS-MGC-0004] */
	.d2line		80
	rlwinm		r5,r3,0,24,31		# appId=r3
	diab.li		r7,0
	lis		r4,Os_Applications_Stat@ha
	e_add16i		r4,r4,Os_Applications_Stat@l
	rlwinm		r6,r5,6,0,25
	se_slwi		r5,4
	subf		r5,r5,r6
	lwzx		r4,r4,r5
	stb		r7,0(r4)
#     } /* End for */
	.d2line		81
	diab.addi		r5,r3,1		# appId=r3
	se_addi		r3,1		# appId=r3 appId=r3
	b		.L11353
.L11352:
# }
	.d2line		82
	.d2epilogue_begin
.Llo15:
	lwz		r0,20(r1)		# coreID=r0
	mtspr		lr,r0		# coreID=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11414:
	.type		Os_ApplicationInit,@function
	.size		Os_ApplicationInit,.-Os_ApplicationInit
# Number of nodes = 40

# Allocations for Os_ApplicationInit
#	?a4		coreID
#	?a5		$$2354
#	?a6		appId
# FUNC (void, OS_CODE) Os_Application_DisableProcs(CONSTP2CONST(Os_ApplicationStatType,AUTOMATIC,OS_CONST)   Os_App,
	.align		2
	.section	.Os_TEXT,,c
        .d2line         90,22
#$$ld
.L11421:

#$$bf	Os_Application_DisableProcs,interprocedural,rasave,nostackparams
	.globl		Os_Application_DisableProcs
	.d2_cfa_start __cie
Os_Application_DisableProcs:
.Llo17:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_App=r31 Os_App=r3
	mr		r30,r4		# except=r30 except=r4
	.d2prologue_end
#                                                  CONSTP2CONST (Os_ProcStatType,     AUTOMATIC, OS_CONST)   except)
# {
#     VAR(ProcType, AUTOMATIC) procIdx;
# 
#     for(procIdx = (ProcType)0U; Os_App->Os_AppProcIDs[procIdx] != OS_INVALID_PROC; procIdx++)
	.d2line		95
	diab.li		r28,0		# procIdx=r28
.L11359:
.Llo18:
	lwz		r3,28(r31)		# Os_App=r31
.Llo19:
	rlwinm		r0,r28,2,0,29		# procIdx=r28
	lwzx		r0,r3,r0
	cmpi		0,0,r0,-1
	bc		1,2,.L11358	# eq
	.section	.Os_TEXT,,c
.L11442:
#     {
#         CONSTP2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST) proc = &Os_Proc_Stat[Os_App->Os_AppProcIDs[procIdx]];
	.d2line		97
	lis		r29,Os_Proc_Stat@ha		# proc=r29
.Llo23:
	e_add16i		r29,r29,Os_Proc_Stat@l		# proc=r29 proc=r29
	lwz		r3,28(r31)		# Os_App=r31
	rlwinm		r0,r28,2,0,29		# procIdx=r28
	lwzx		r0,r3,r0
	e_mulli		r0,r0,80
	se_add		r0,r29		# proc=r29
	mr		r29,r0		# proc=r29 proc=r0
#         if(except != proc)
	.d2line		98
.Llo24:
	se_cmpl		r30,r29		# except=r30 proc=r29
.Llo25:
	bc		1,2,.L11362	# eq
#         {
#             if(    ( (uint8)0U == proc->Os_ProcDyn->Os_ProcEnabled )
	.d2line		100
.Llo26:
	lwz		r3,8(r29)		# proc=r29
.Llo27:
	lbz		r0,32(r3)
	se_cmpi		r0,0
	bc		0,2,.L11363	# ne
	lwz		r0,16(r29)		# proc=r29
	se_cmpi		r0,1
	bc		0,2,.L11363	# ne
#                  &&( Os_Proc_ISR_CAT2 == proc->Os_ProcKind ) )
#             {
#                 Os_Isr_Platform_DisableChannel(proc->Os_ProcIsrPlatformConfig); /* [OS563-02] [OS110-04] [OS447-02] */
	.d2line		103
	lwz		r3,76(r29)		# proc=r29
	bl		Os_Isr_Platform_DisableChannel
.L11363:
#             }
#             proc->Os_ProcDyn->Os_ProcEnabled++; /* [OS563-01] */
	.d2line		105
	lwz		r4,8(r29)		# proc=r29
	lbz		r3,32(r4)
	se_addi		r3,1
	stb		r3,32(r4)
.L11362:
	.section	.Os_TEXT,,c
.L11443:
#         }
#     }
	.d2line		107
.Llo28:
	diab.addi		r0,r28,1		# procIdx=r28
	se_addi		r28,1		# procIdx=r28 procIdx=r28
	b		.L11359
.L11358:
# }
	.d2line		108
	.d2epilogue_begin
.Llo20:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo21:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo22:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11422:
	.type		Os_Application_DisableProcs,@function
	.size		Os_Application_DisableProcs,.-Os_Application_DisableProcs
# Number of nodes = 67

# Allocations for Os_Application_DisableProcs
#	?a4		Os_App
#	?a5		except
#	?a6		$$2352
#	?a7		procIdx
#	?a8		proc
# FUNC (void, OS_CODE) Os_Application_EnableProcs(CONSTP2CONST(Os_ApplicationStatType,AUTOMATIC,OS_CONST) Os_App,
	.align		2
	.section	.Os_TEXT,,c
        .d2line         115,22
#$$ld
.L11450:

#$$bf	Os_Application_EnableProcs,interprocedural,rasave,nostackparams
	.globl		Os_Application_EnableProcs
	.d2_cfa_start __cie
Os_Application_EnableProcs:
.Llo29:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_App=r31 Os_App=r3
	mr		r30,r4		# except=r30 except=r4
	.d2prologue_end
#                                                 CONSTP2CONST (Os_ProcStatType,     AUTOMATIC, OS_CONST)   except)
# {
#     VAR(ProcType,AUTOMATIC) procIdx;
# 
#     for(procIdx = (ProcType)0U; Os_App->Os_AppProcIDs[procIdx] != OS_INVALID_PROC; procIdx++)
	.d2line		120
	diab.li		r29,0		# procIdx=r29
.L11369:
.Llo30:
	lwz		r3,28(r31)		# Os_App=r31
.Llo31:
	rlwinm		r0,r29,2,0,29		# procIdx=r29
	lwzx		r0,r3,r0
	cmpi		0,0,r0,-1
	bc		1,2,.L11368	# eq
	.section	.Os_TEXT,,c
.L11457:
#     {
#         CONSTP2CONST(Os_ProcStatType,AUTOMATIC,OS_CONST) proc = &Os_Proc_Stat[Os_App->Os_AppProcIDs[procIdx]];
	.d2line		122
	lis		r28,Os_Proc_Stat@ha
	e_add16i		r28,r28,Os_Proc_Stat@l
	lwz		r3,28(r31)		# Os_App=r31
	rlwinm		r0,r29,2,0,29		# procIdx=r29
	lwzx		r0,r3,r0
	e_mulli		r0,r0,80
	se_add		r0,r28
.Llo35:
	mr		r28,r0		# proc=r28 proc=r0
# 
#         if(proc != except)
	.d2line		124
	se_cmpl		r28,r30		# proc=r28 except=r30
	bc		1,2,.L11372	# eq
#         {
#             OS_ASSERT((uint8)0U !=proc->Os_ProcDyn->Os_ProcEnabled,E_OS_SYS_PROCENABLEDALREADY);
	.d2line		126
.Llo36:
	lwz		r3,8(r28)		# proc=r28
.Llo37:
	lbz		r0,32(r3)
	se_cmpi		r0,0
	bc		0,2,.L11375	# ne
	diab.li		r4,62
	lis		r3,(Os_Core_DynShared+12)@ha
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0
	diab.li		r3,30
	bl		Os_ShutdownAllCores
.L11375:
# 
#             proc->Os_ProcDyn->Os_ProcEnabled--;
	.d2line		128
	lwz		r4,8(r28)		# proc=r28
	lbz		r3,32(r4)
	diab.addi		r3,r3,255
	stb		r3,32(r4)
# 
#             if(   ( (uint8)0U == proc->Os_ProcDyn->Os_ProcEnabled )
	.d2line		130
	lwz		r3,8(r28)		# proc=r28
	lbz		r0,32(r3)
	se_cmpi		r0,0
	bc		0,2,.L11372	# ne
	lwz		r0,16(r28)		# proc=r28
	se_cmpi		r0,1
	bc		0,2,.L11372	# ne
#                 &&( Os_Proc_ISR_CAT2 == proc->Os_ProcKind ) )
#             {
#                 Os_Isr_Platform_EnableChannel(proc->Os_ProcIsrPlatformConfig); /* [OS563-03] */
	.d2line		133
	lwz		r3,76(r28)		# proc=r28
	bl		Os_Isr_Platform_EnableChannel
.L11372:
	.section	.Os_TEXT,,c
.L11458:
#             }
#         }
#     }
	.d2line		136
.Llo38:
	diab.addi		r0,r29,1		# procIdx=r29
	se_addi		r29,1		# procIdx=r29 procIdx=r29
	b		.L11369
.L11368:
# }
	.d2line		137
	.d2epilogue_begin
.Llo32:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo33:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo34:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11451:
	.type		Os_Application_EnableProcs,@function
	.size		Os_Application_EnableProcs,.-Os_Application_EnableProcs
# Number of nodes = 97

# Allocations for Os_Application_EnableProcs
#	?a4		Os_App
#	?a5		except
#	?a6		$$2353
#	?a7		procIdx
#	?a8		proc

# Allocations for module
	.section	.text_vle
	.0byte		.L11463
	.section	.text_vle
	.0byte		.L11473
	.section	.Os_BSS,,b
	.0byte		.L11477
	.section	.text_vle
#$$ld
.L5:
.L11689:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L11687:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L11685:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L11683:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L11672:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L11669:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11623:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L11609:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11489:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11483:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11478:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11474:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11464:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11387:
.L11395:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_Application.c"
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
	.uleb128	11
	.byte		0x1
	.uleb128	1
	.uleb128	16
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	15
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
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	5
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_Application.c"
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
.L11384:
	.4byte		.L11385-.L11383
.L11383:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11389-.L11384
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\application\\Os_Application.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11386
	.4byte		.L11387
	.4byte		.L11390
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11398:
	.sleb128	2
	.4byte		.L11392-.L11384
	.byte		"Os_ApplicationOnOtherCore"
	.byte		0
	.4byte		.L11395
	.uleb128	49
	.uleb128	27
	.4byte		.L11396
	.byte		0x1
	.byte		0x1
	.4byte		.L11393
	.4byte		.L11394
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11395
	.uleb128	49
	.uleb128	27
	.byte		"ApplicationId"
	.byte		0
	.4byte		.L11399
	.4byte		.L11402
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11403:
	.sleb128	4
	.4byte		.L11395
	.uleb128	51
	.uleb128	32
	.byte		"retVal"
	.byte		0
	.4byte		.L11396
	.4byte		.L11404
.L11405:
	.sleb128	4
	.4byte		.L11395
	.uleb128	52
	.uleb128	33
	.byte		"coreId"
	.byte		0
	.4byte		.L11406
	.4byte		.L11410
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11392:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11415:
	.sleb128	5
	.4byte		.L11412-.L11384
	.byte		"Os_ApplicationInit"
	.byte		0
	.4byte		.L11395
	.uleb128	72
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11413
	.4byte		.L11414
	.sleb128	3
	.4byte		.L11395
	.uleb128	72
	.uleb128	22
	.byte		"coreID"
	.byte		0
	.4byte		.L11406
	.4byte		.L11416
.L11417:
	.sleb128	4
	.4byte		.L11395
	.uleb128	74
	.uleb128	38
	.byte		"appId"
	.byte		0
	.4byte		.L11399
	.4byte		.L11418
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11412:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11423:
	.sleb128	5
	.4byte		.L11420-.L11384
	.byte		"Os_Application_DisableProcs"
	.byte		0
	.4byte		.L11395
	.uleb128	90
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11421
	.4byte		.L11422
	.sleb128	3
	.4byte		.L11395
	.uleb128	90
	.uleb128	22
	.byte		"Os_App"
	.byte		0
	.4byte		.L11424
	.4byte		.L11429
	.sleb128	3
	.4byte		.L11395
	.uleb128	90
	.uleb128	22
	.byte		"except"
	.byte		0
	.4byte		.L11430
	.4byte		.L11435
.L11436:
	.sleb128	4
	.4byte		.L11395
	.uleb128	93
	.uleb128	30
	.byte		"procIdx"
	.byte		0
	.4byte		.L11437
	.4byte		.L11441
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11445
	.4byte		.L11442
	.4byte		.L11443
.L11446:
	.sleb128	4
	.4byte		.L11395
	.uleb128	97
	.uleb128	58
	.byte		"proc"
	.byte		0
	.4byte		.L11430
	.4byte		.L11447
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11445:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11420:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11452:
	.sleb128	5
	.4byte		.L11449-.L11384
	.byte		"Os_Application_EnableProcs"
	.byte		0
	.4byte		.L11395
	.uleb128	115
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11450
	.4byte		.L11451
	.sleb128	3
	.4byte		.L11395
	.uleb128	115
	.uleb128	22
	.byte		"Os_App"
	.byte		0
	.4byte		.L11424
	.4byte		.L11453
	.sleb128	3
	.4byte		.L11395
	.uleb128	115
	.uleb128	22
	.byte		"except"
	.byte		0
	.4byte		.L11430
	.4byte		.L11454
.L11455:
	.sleb128	4
	.4byte		.L11395
	.uleb128	118
	.uleb128	29
	.byte		"procIdx"
	.byte		0
	.4byte		.L11437
	.4byte		.L11456
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11460
	.4byte		.L11457
	.4byte		.L11458
.L11461:
	.sleb128	4
	.4byte		.L11395
	.uleb128	122
	.uleb128	58
	.byte		"proc"
	.byte		0
	.4byte		.L11430
	.4byte		.L11462
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11460:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11449:
	.section	.debug_info,,n
.L11463:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L11464
	.uleb128	100
	.uleb128	48
	.byte		"Os_Applications_Stat"
	.byte		0
	.4byte		.L11465
	.section	.debug_info,,n
.L11467:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L11464
	.uleb128	102
	.uleb128	44
	.byte		"Os_ApplicationRange"
	.byte		0
	.4byte		.L11468
.L11473:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L11474
	.uleb128	211
	.uleb128	45
	.byte		"Os_Proc_Stat"
	.byte		0
	.4byte		.L11475
	.section	.debug_info,,n
.L11477:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L11478
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11479
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11482:
	.sleb128	8
	.4byte		.L11483
	.uleb128	69
	.uleb128	1
	.4byte		.L11484-.L2
	.uleb128	152
	.section	.debug_info,,n
.L776:
	.sleb128	9
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11485
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L777:
	.sleb128	9
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11487
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11484:
.L11486:
	.sleb128	8
	.4byte		.L11489
	.uleb128	612
	.uleb128	1
	.4byte		.L11490-.L2
	.uleb128	8
.L735:
	.sleb128	9
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L736:
	.sleb128	9
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11490:
	.section	.debug_info,,n
.L11434:
	.sleb128	10
	.4byte		.L11474
	.uleb128	80
	.uleb128	13
	.4byte		.L11491-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L511:
	.sleb128	9
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11492
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	9
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11406
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L513:
	.sleb128	9
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11494
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L514:
	.sleb128	9
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11498
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L515:
	.sleb128	9
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11503
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L516:
	.sleb128	9
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11506
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L517:
	.sleb128	9
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11510
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L518:
	.sleb128	9
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11510
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L519:
	.sleb128	9
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11512
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L520:
	.sleb128	9
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11514
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L521:
	.sleb128	9
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11424
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L522:
	.sleb128	9
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11517
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L523:
	.sleb128	9
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11521
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L524:
	.sleb128	9
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11517
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L525:
	.sleb128	9
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11526
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L526:
	.sleb128	9
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L527:
	.sleb128	9
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11534
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L528:
	.sleb128	9
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11537
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11491:
.L11536:
	.sleb128	10
	.4byte		.L11489
	.uleb128	612
	.uleb128	1
	.4byte		.L11542-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L750:
	.sleb128	9
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11543
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L751:
	.sleb128	9
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L752:
	.sleb128	9
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11542:
.L11502:
	.sleb128	10
	.4byte		.L11474
	.uleb128	80
	.uleb128	13
	.4byte		.L11545-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L509:
	.sleb128	9
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11546
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	9
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11514
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11545:
.L11497:
	.sleb128	8
	.4byte		.L11474
	.uleb128	80
	.uleb128	13
	.4byte		.L11548-.L2
	.uleb128	56
.L496:
	.sleb128	9
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11549
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	9
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11551
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L498:
	.sleb128	9
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11507
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L499:
	.sleb128	9
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11507
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L500:
	.sleb128	9
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11513
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L501:
	.sleb128	9
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L502:
	.sleb128	9
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L503:
	.sleb128	9
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11425
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L504:
	.sleb128	9
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11553
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L505:
	.sleb128	9
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L506:
	.sleb128	9
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11511
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L507:
	.sleb128	9
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11400
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L508:
	.sleb128	9
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11548:
.L11555:
	.sleb128	10
	.4byte		.L11464
	.uleb128	52
	.uleb128	1
	.4byte		.L11557-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L448:
	.sleb128	9
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11558
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	9
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11558
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	9
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11560
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	9
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11517
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L452:
	.sleb128	9
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11564
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11557:
.L11563:
	.sleb128	8
	.4byte		.L11464
	.uleb128	52
	.uleb128	1
	.4byte		.L11567-.L2
	.uleb128	12
.L445:
	.sleb128	9
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11543
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	9
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11553
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	9
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11530
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11567:
.L11428:
	.sleb128	10
	.4byte		.L11464
	.uleb128	52
	.uleb128	1
	.4byte		.L11568-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	9
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11569
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	9
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11573
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	9
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11492
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	9
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11574
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	9
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	9
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11582
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	9
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11587
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	9
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11592
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	9
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11595
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	9
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11599
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	9
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11603
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	9
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11406
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11568:
.L11572:
	.sleb128	8
	.4byte		.L11464
	.uleb128	52
	.uleb128	1
	.4byte		.L11607-.L2
	.uleb128	1
.L432:
	.sleb128	9
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11608
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11607:
.L11533:
	.sleb128	8
	.4byte		.L11609
	.uleb128	32
	.uleb128	1
	.4byte		.L11610-.L2
	.uleb128	12
.L429:
	.sleb128	9
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11510
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	9
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11518
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	9
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L11611
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11610:
.L11613:
	.sleb128	8
	.4byte		.L11609
	.uleb128	32
	.uleb128	1
	.4byte		.L11614-.L2
	.uleb128	4
.L428:
	.sleb128	9
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11543
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11614:
.L11488:
	.sleb128	8
	.4byte		.L11609
	.uleb128	32
	.uleb128	1
	.4byte		.L11615-.L2
	.uleb128	144
.L423:
	.sleb128	9
	.byte		"Os_Error"
	.byte		0
	.4byte		.L11616
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	9
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L11618
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L11615:
.L11619:
	.sleb128	8
	.4byte		.L11609
	.uleb128	32
	.uleb128	1
	.4byte		.L11620-.L2
	.uleb128	20
.L412:
	.sleb128	9
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L11621
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L413:
	.sleb128	9
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	9
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11439
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	9
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	9
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11620:
.L11617:
	.sleb128	8
	.4byte		.L11623
	.uleb128	174
	.uleb128	1
	.4byte		.L11624-.L2
	.uleb128	120
.L409:
	.sleb128	9
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L11625
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	9
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L11627
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L411:
	.sleb128	9
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L11629
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L11624:
.L11630:
	.sleb128	8
	.4byte		.L11623
	.uleb128	174
	.uleb128	1
	.4byte		.L11631-.L2
	.uleb128	8
.L406:
	.sleb128	9
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L11632
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	9
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L408:
	.sleb128	9
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L11633
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11631:
.L11628:
	.sleb128	8
	.4byte		.L11623
	.uleb128	174
	.uleb128	1
	.4byte		.L11635-.L2
	.uleb128	104
.L381:
	.sleb128	9
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11493
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	9
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11527
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L383:
	.sleb128	9
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11507
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L384:
	.sleb128	9
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11602
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	9
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	9
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	9
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11637
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L388:
	.sleb128	9
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L389:
	.sleb128	9
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11399
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L390:
	.sleb128	9
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11641
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L391:
	.sleb128	9
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11643
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L392:
	.sleb128	9
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11606
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L393:
	.sleb128	9
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11606
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L394:
	.sleb128	9
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11598
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L395:
	.sleb128	9
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11645
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L396:
	.sleb128	9
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11646
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L397:
	.sleb128	9
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L398:
	.sleb128	9
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11650
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L399:
	.sleb128	9
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11652
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L400:
	.sleb128	9
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11656
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L401:
	.sleb128	9
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11658
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L402:
	.sleb128	9
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11650
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L403:
	.sleb128	9
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11438
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L404:
	.sleb128	9
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11559
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L405:
	.sleb128	9
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L11662
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11635:
.L11626:
	.sleb128	8
	.4byte		.L11623
	.uleb128	174
	.uleb128	1
	.4byte		.L11666-.L2
	.uleb128	8
.L379:
	.sleb128	9
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11556
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L380:
	.sleb128	9
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L11667
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11666:
.L11655:
	.sleb128	8
	.4byte		.L11669
	.uleb128	50
	.uleb128	1
	.4byte		.L11670-.L2
	.uleb128	12
.L376:
	.sleb128	9
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	9
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	9
	.byte		"mincycle"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11670:
.L11472:
	.sleb128	8
	.4byte		.L11669
	.uleb128	50
	.uleb128	1
	.4byte		.L11671-.L2
	.uleb128	8
.L374:
	.sleb128	9
	.byte		"Os_ObjStartId"
	.byte		0
	.4byte		.L11438
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L375:
	.sleb128	9
	.byte		"Os_ObjEndId"
	.byte		0
	.4byte		.L11438
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11671:
.L11541:
	.sleb128	8
	.4byte		.L11672
	.uleb128	87
	.uleb128	7
	.4byte		.L11673-.L2
	.uleb128	8
.L364:
	.sleb128	9
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11674
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	9
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L11675
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11673:
	.section	.debug_info,,n
.L11552:
	.sleb128	11
	.4byte		.L11474
	.uleb128	80
	.uleb128	13
	.4byte		.L11677-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"Os_ProcContextInvalid"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"Os_ProcContextActive"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"Os_ProcContextPrepared"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11677:
.L11505:
	.sleb128	11
	.4byte		.L11474
	.uleb128	61
	.uleb128	1
	.4byte		.L11678-.L2
	.uleb128	4
	.sleb128	12
	.byte		"Os_Proc_Task"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"Os_Proc_ISR_CAT2"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11678:
.L11576:
	.sleb128	11
	.4byte		.L11464
	.uleb128	52
	.uleb128	1
	.4byte		.L11679-.L2
	.uleb128	4
	.sleb128	12
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11679:
.L11622:
	.sleb128	11
	.4byte		.L11609
	.uleb128	32
	.uleb128	1
	.4byte		.L11680-.L2
	.uleb128	4
	.sleb128	12
	.byte		"OS_EXCEPTION_NONE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"OS_EXCEPTION_CRITICAL_INPUT"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"OS_EXCEPTION_MACHINE_CHECK"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"OS_EXCEPTION_DATA_STORAGE"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"OS_EXCEPTION_INSTRUCTION_STORAGE"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"OS_EXCEPTION_EXTERNAL_INPUT"
	.byte		0
	.sleb128	5
	.sleb128	12
	.byte		"OS_EXCEPTION_ALIGNMENT"
	.byte		0
	.sleb128	6
	.sleb128	12
	.byte		"OS_EXCEPTION_PROGRAM"
	.byte		0
	.sleb128	7
	.sleb128	12
	.byte		"OS_EXCEPTION_FLOATINGPOINT_UNAVAILABLE"
	.byte		0
	.sleb128	8
	.sleb128	12
	.byte		"OS_EXCEPTION_AUX_PROC_UNAVAILABLE"
	.byte		0
	.sleb128	9
	.sleb128	12
	.byte		"OS_EXCEPTION_DECREMENTER"
	.byte		0
	.sleb128	10
	.sleb128	12
	.byte		"OS_EXCEPTION_FIXED_INTERVAL_TIMER"
	.byte		0
	.sleb128	11
	.sleb128	12
	.byte		"OS_EXCEPTION_WATCHDOG"
	.byte		0
	.sleb128	12
	.sleb128	12
	.byte		"OS_EXCEPTION_DATA_TLB_ERROR"
	.byte		0
	.sleb128	13
	.sleb128	12
	.byte		"OS_EXCEPTION_INSTRUCTION_TLB_ERROR"
	.byte		0
	.sleb128	14
	.sleb128	12
	.byte		"OS_EXCEPTION_DEBUG"
	.byte		0
	.sleb128	15
	.sleb128	12
	.byte		"OS_EXCEPTION_SPE_UNAVAILABLE"
	.byte		0
	.sleb128	16
	.sleb128	12
	.byte		"OS_EXCEPTION_SPE_DATA"
	.byte		0
	.sleb128	17
	.sleb128	12
	.byte		"OS_EXCEPTION_SPE_ROUND"
	.byte		0
	.sleb128	18
	.sleb128	12
	.byte		"OS_EXCEPTION_COUNT"
	.byte		0
	.sleb128	19
	.sleb128	0
.L11680:
.L11668:
	.sleb128	11
	.4byte		.L11623
	.uleb128	174
	.uleb128	1
	.4byte		.L11681-.L2
	.uleb128	4
	.sleb128	12
	.byte		"E_OS_SYS_OK"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"E_OS_SYS_UNKNOWN_API"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_STARTSTATE"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_MASTERAPPMODE"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_SLAVEAPPMODE"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"E_OS_SYS_COUNTERACTION_OVERFLOW"
	.byte		0
	.sleb128	5
	.sleb128	12
	.byte		"E_OS_SYS_COUNTEREP_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_COUNTEROWNER"
	.byte		0
	.sleb128	7
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_APIMAGIC"
	.byte		0
	.sleb128	8
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND1"
	.byte		0
	.sleb128	9
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND2"
	.byte		0
	.sleb128	10
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND3"
	.byte		0
	.sleb128	11
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND4"
	.byte		0
	.sleb128	12
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND5"
	.byte		0
	.sleb128	13
	.sleb128	12
	.byte		"E_OS_SYS_DISPATCHER_OVERFLOW"
	.byte		0
	.sleb128	14
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_ALARMACTION"
	.byte		0
	.sleb128	15
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_SCHTBLSTARTKIND"
	.byte		0
	.sleb128	16
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_ISRPROCKIND"
	.byte		0
	.sleb128	17
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TPSTATE1"
	.byte		0
	.sleb128	18
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TPSTATE2"
	.byte		0
	.sleb128	19
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TPSTATE3"
	.byte		0
	.sleb128	20
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TPSTATE4"
	.byte		0
	.sleb128	21
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TPSTATE5"
	.byte		0
	.sleb128	22
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION0"
	.byte		0
	.sleb128	23
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION1"
	.byte		0
	.sleb128	24
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION2"
	.byte		0
	.sleb128	25
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION3"
	.byte		0
	.sleb128	26
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION4"
	.byte		0
	.sleb128	27
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION5"
	.byte		0
	.sleb128	28
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_QUEUEHEAD"
	.byte		0
	.sleb128	29
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_QUEUEINDEX"
	.byte		0
	.sleb128	30
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_PROCSTATE"
	.byte		0
	.sleb128	31
	.sleb128	12
	.byte		"E_OS_SYS_LINKTIMEGUARD_ERROR"
	.byte		0
	.sleb128	32
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_CORESTATE"
	.byte		0
	.sleb128	33
	.sleb128	12
	.byte		"E_OS_SYS_COUNTERID"
	.byte		0
	.sleb128	34
	.sleb128	12
	.byte		"E_OS_SYS_COUNTER_CANCELEDNOTFOUND"
	.byte		0
	.sleb128	35
	.sleb128	12
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN"
	.byte		0
	.sleb128	36
	.sleb128	12
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN2"
	.byte		0
	.sleb128	37
	.sleb128	12
	.byte		"E_OS_SYS_COUNTER_EPCHAINISBROKEN"
	.byte		0
	.sleb128	38
	.sleb128	12
	.byte		"E_OS_SYS_ALARMID"
	.byte		0
	.sleb128	39
	.sleb128	12
	.byte		"E_OS_SYS_RESUMEPROC_MAXACTIVATION"
	.byte		0
	.sleb128	40
	.sleb128	12
	.byte		"E_OS_SYS_QUEUEELEMENT_OVERFLOW"
	.byte		0
	.sleb128	41
	.sleb128	12
	.byte		"E_OS_SYS_SCHEDULER_ERROR"
	.byte		0
	.sleb128	42
	.sleb128	12
	.byte		"E_OS_SYS_EVENTSTAT"
	.byte		0
	.sleb128	43
	.sleb128	12
	.byte		"E_OS_SYS_TASKID"
	.byte		0
	.sleb128	44
	.sleb128	12
	.byte		"E_OS_SYS_TASKMISSINGEND_PROCKIND"
	.byte		0
	.sleb128	45
	.sleb128	12
	.byte		"E_OS_SYS_TASKMISSINGEND_COREID"
	.byte		0
	.sleb128	46
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_TIMINGPROTECTIONSTATE"
	.byte		0
	.sleb128	47
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_EXCEPTION"
	.byte		0
	.sleb128	48
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_PLATFORM_TIMER"
	.byte		0
	.sleb128	49
	.sleb128	12
	.byte		"E_OS_SYS_KERNELSTACK_OVERFLOW"
	.byte		0
	.sleb128	50
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_SECTION_SIZE"
	.byte		0
	.sleb128	51
	.sleb128	12
	.byte		"E_OS_SYS_MEMPROT_INVALID_APP"
	.byte		0
	.sleb128	52
	.sleb128	12
	.byte		"E_OS_SYS_CALLEVEL"
	.byte		0
	.sleb128	53
	.sleb128	12
	.byte		"E_OS_SYS_TIMER_RUNNING"
	.byte		0
	.sleb128	54
	.sleb128	12
	.byte		"E_OS_SYS_TIMER_STOPPED"
	.byte		0
	.sleb128	55
	.sleb128	12
	.byte		"E_OS_SYS_TIMER_TOO_MUCH_JITTER"
	.byte		0
	.sleb128	56
	.sleb128	12
	.byte		"E_OS_SYS_SSG_NESTING"
	.byte		0
	.sleb128	57
	.sleb128	12
	.byte		"E_OS_SYS_SSG_OVERFLOW"
	.byte		0
	.sleb128	58
	.sleb128	12
	.byte		"E_OS_SYS_CORELOCK_LOCKED"
	.byte		0
	.sleb128	59
	.sleb128	12
	.byte		"E_OS_SYS_CORELOCK_UNLOCKED"
	.byte		0
	.sleb128	60
	.sleb128	12
	.byte		"E_OS_SYS_TFPROCAPPINCONSISTENCY"
	.byte		0
	.sleb128	61
	.sleb128	12
	.byte		"E_OS_SYS_PROCENABLEDALREADY"
	.byte		0
	.sleb128	62
	.sleb128	0
.L11681:
.L11634:
	.sleb128	11
	.4byte		.L11623
	.uleb128	86
	.uleb128	1
	.4byte		.L11682-.L2
	.uleb128	4
	.sleb128	12
	.byte		"OSServiceId_GetApplicationID"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"OSServiceId_GetISRID"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"OSServiceId_CallTrustedFunction"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"OSServiceId_CheckISRMemoryAccess"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"OSServiceId_CheckTaskMemoryAccess"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"OSServiceId_CheckObjectAccess"
	.byte		0
	.sleb128	5
	.sleb128	12
	.byte		"OSServiceId_CheckObjectOwnership"
	.byte		0
	.sleb128	6
	.sleb128	12
	.byte		"OSServiceId_StartScheduleTableRel"
	.byte		0
	.sleb128	7
	.sleb128	12
	.byte		"OSServiceId_StartScheduleTableAbs"
	.byte		0
	.sleb128	8
	.sleb128	12
	.byte		"OSServiceId_StopScheduleTable"
	.byte		0
	.sleb128	9
	.sleb128	12
	.byte		"OSServiceId_NextScheduleTable"
	.byte		0
	.sleb128	10
	.sleb128	12
	.byte		"OSServiceId_StartScheduleTableSynchron"
	.byte		0
	.sleb128	11
	.sleb128	12
	.byte		"OSServiceId_SyncScheduleTable"
	.byte		0
	.sleb128	12
	.sleb128	12
	.byte		"OSServiceId_SetScheduleTableAsync"
	.byte		0
	.sleb128	13
	.sleb128	12
	.byte		"OSServiceId_GetScheduleTableStatus"
	.byte		0
	.sleb128	14
	.sleb128	12
	.byte		"OSServiceId_IncrementCounter"
	.byte		0
	.sleb128	15
	.sleb128	12
	.byte		"OSServiceId_GetCounterValue"
	.byte		0
	.sleb128	16
	.sleb128	12
	.byte		"OSServiceId_GetElapsedValue"
	.byte		0
	.sleb128	17
	.sleb128	12
	.byte		"OSServiceId_TerminateApplication"
	.byte		0
	.sleb128	18
	.sleb128	12
	.byte		"OSServiceId_AllowAcess"
	.byte		0
	.sleb128	19
	.sleb128	12
	.byte		"OSServiceId_GetApplicationState"
	.byte		0
	.sleb128	20
	.sleb128	12
	.byte		"OSServiceId_GetNumberOfActivatedCores"
	.byte		0
	.sleb128	21
	.sleb128	12
	.byte		"OSServiceId_GetCoreID"
	.byte		0
	.sleb128	22
	.sleb128	12
	.byte		"OSServiceId_StartCore"
	.byte		0
	.sleb128	23
	.sleb128	12
	.byte		"OSServiceId_StartNonAutosarCore"
	.byte		0
	.sleb128	24
	.sleb128	12
	.byte		"OSServiceId_GetSpinlock"
	.byte		0
	.sleb128	25
	.sleb128	12
	.byte		"OSServiceId_ReleaseSpinlock"
	.byte		0
	.sleb128	26
	.sleb128	12
	.byte		"OSServiceId_TryToGetSpinlock"
	.byte		0
	.sleb128	27
	.sleb128	12
	.byte		"OSServiceId_ShutdownAllCores"
	.byte		0
	.sleb128	28
	.sleb128	12
	.byte		"OSServiceId_ControlIdle"
	.byte		0
	.sleb128	29
	.sleb128	12
	.byte		"OSServiceId_IOC_Send"
	.byte		0
	.sleb128	30
	.sleb128	12
	.byte		"OSServiceId_IOC_Write"
	.byte		0
	.sleb128	31
	.sleb128	12
	.byte		"OSServiceId_IOC_SendGroup"
	.byte		0
	.sleb128	32
	.sleb128	12
	.byte		"OSServiceId_IOC_WriteFGroup"
	.byte		0
	.sleb128	33
	.sleb128	12
	.byte		"OSServiceId_IOC_Receive"
	.byte		0
	.sleb128	34
	.sleb128	12
	.byte		"OSServiceId_IOC_Read"
	.byte		0
	.sleb128	35
	.sleb128	12
	.byte		"OSServiceId_IOC_ReceiveGroup"
	.byte		0
	.sleb128	36
	.sleb128	12
	.byte		"OSServiceId_IOC_ReadGroup"
	.byte		0
	.sleb128	37
	.sleb128	12
	.byte		"OSServiceId_IOC_EmptyQueue"
	.byte		0
	.sleb128	38
	.sleb128	12
	.byte		"OSServiceId_IOC_ReceiverPullCB"
	.byte		0
	.sleb128	39
	.sleb128	12
	.byte		"OSServiceId_ActivateTask"
	.byte		0
	.sleb128	128
	.sleb128	12
	.byte		"OSServiceId_TerminateTask"
	.byte		0
	.sleb128	129
	.sleb128	12
	.byte		"OSServiceId_ChainTask"
	.byte		0
	.sleb128	130
	.sleb128	12
	.byte		"OSServiceId_Schedule"
	.byte		0
	.sleb128	131
	.sleb128	12
	.byte		"OSServiceId_GetTaskID"
	.byte		0
	.sleb128	132
	.sleb128	12
	.byte		"OSServiceId_GetTaskState"
	.byte		0
	.sleb128	133
	.sleb128	12
	.byte		"OSServiceId_EnableAllInterrupts"
	.byte		0
	.sleb128	134
	.sleb128	12
	.byte		"OSServiceId_DisableAllInterrupts"
	.byte		0
	.sleb128	135
	.sleb128	12
	.byte		"OSServiceId_ResumeAllInterrupts"
	.byte		0
	.sleb128	136
	.sleb128	12
	.byte		"OSServiceId_SuspendAllInterrupts"
	.byte		0
	.sleb128	137
	.sleb128	12
	.byte		"OSServiceId_ResumeOSInterrupts"
	.byte		0
	.sleb128	138
	.sleb128	12
	.byte		"OSServiceId_SuspendOSInterrupts"
	.byte		0
	.sleb128	139
	.sleb128	12
	.byte		"OSServiceId_GetResource"
	.byte		0
	.sleb128	140
	.sleb128	12
	.byte		"OSServiceId_ReleaseResource"
	.byte		0
	.sleb128	141
	.sleb128	12
	.byte		"OSServiceId_SetEvent"
	.byte		0
	.sleb128	142
	.sleb128	12
	.byte		"OSServiceId_ClearEvent"
	.byte		0
	.sleb128	143
	.sleb128	12
	.byte		"OSServiceId_GetEvent"
	.byte		0
	.sleb128	144
	.sleb128	12
	.byte		"OSServiceId_WaitEvent"
	.byte		0
	.sleb128	145
	.sleb128	12
	.byte		"OSServiceId_GetAlarmBase"
	.byte		0
	.sleb128	146
	.sleb128	12
	.byte		"OSServiceId_GetAlarm"
	.byte		0
	.sleb128	147
	.sleb128	12
	.byte		"OSServiceId_SetRelAlarm"
	.byte		0
	.sleb128	148
	.sleb128	12
	.byte		"OSServiceId_SetAbsAlarm"
	.byte		0
	.sleb128	149
	.sleb128	12
	.byte		"OSServiceId_CancelAlarm"
	.byte		0
	.sleb128	150
	.sleb128	12
	.byte		"OSServiceId_GetActiveApplicationMode"
	.byte		0
	.sleb128	151
	.sleb128	12
	.byte		"OSServiceId_StartOS"
	.byte		0
	.sleb128	152
	.sleb128	12
	.byte		"OSServiceId_ShutdownOS"
	.byte		0
	.sleb128	153
	.sleb128	12
	.byte		"OSServiceId_INVALIDSERVICE"
	.byte		0
	.sleb128	255
	.sleb128	0
.L11682:
.L11665:
	.sleb128	11
	.4byte		.L11683
	.uleb128	43
	.uleb128	1
	.4byte		.L11684-.L2
	.uleb128	4
	.sleb128	12
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11684:
.L11550:
	.sleb128	11
	.4byte		.L11685
	.uleb128	37
	.uleb128	1
	.4byte		.L11686-.L2
	.uleb128	4
	.sleb128	12
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L11686:
.L11661:
	.sleb128	11
	.4byte		.L11687
	.uleb128	40
	.uleb128	1
	.4byte		.L11688-.L2
	.uleb128	4
	.sleb128	12
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L11688:
.L11644:
	.sleb128	11
	.4byte		.L11689
	.uleb128	47
	.uleb128	1
	.4byte		.L11690-.L2
	.uleb128	4
	.sleb128	12
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L11690:
.L11397:
	.sleb128	11
	.4byte		.L11669
	.uleb128	50
	.uleb128	1
	.4byte		.L11691-.L2
	.uleb128	4
	.sleb128	12
	.byte		"Os_false"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"Os_true"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11691:
	.section	.debug_info,,n
.L11396:
	.sleb128	13
	.byte		"Os_BoolType"
	.byte		0
	.4byte		.L11397
	.section	.debug_info,,n
.L11401:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11400:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L11401
.L11399:
	.sleb128	13
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11400
.L11409:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11408:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L11409
.L11407:
	.sleb128	13
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11408
	.section	.debug_info,,n
.L11406:
	.sleb128	15
	.4byte		.L11407
.L11427:
	.sleb128	13
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11428
.L11426:
	.sleb128	15
	.4byte		.L11427
	.section	.debug_info,,n
.L11425:
	.sleb128	16
	.4byte		.L11426
.L11424:
	.sleb128	15
	.4byte		.L11425
.L11433:
	.sleb128	13
	.byte		"Os_ProcStatType"
	.byte		0
	.4byte		.L11434
.L11432:
	.sleb128	15
	.4byte		.L11433
.L11431:
	.sleb128	16
	.4byte		.L11432
.L11430:
	.sleb128	15
	.4byte		.L11431
.L11440:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11439:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L11440
.L11438:
	.sleb128	13
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11439
.L11437:
	.sleb128	13
	.byte		"ProcType"
	.byte		0
	.4byte		.L11438
	.section	.debug_info,,n
.L11465:
	.sleb128	17
	.4byte		.L11466-.L2
	.4byte		.L11426
	.section	.debug_info,,n
	.sleb128	18
	.sleb128	0
.L11466:
.L11471:
	.sleb128	13
	.byte		"Os_ObjectRangeType"
	.byte		0
	.4byte		.L11472
.L11470:
	.sleb128	15
	.4byte		.L11471
.L11468:
	.sleb128	17
	.4byte		.L11469-.L2
	.4byte		.L11470
	.section	.debug_info,,n
	.sleb128	19
	.uleb128	1
	.sleb128	0
.L11469:
.L11475:
	.sleb128	17
	.4byte		.L11476-.L2
	.4byte		.L11432
	.sleb128	18
	.sleb128	0
.L11476:
.L11481:
	.sleb128	13
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11482
.L11479:
	.sleb128	17
	.4byte		.L11480-.L2
	.4byte		.L11481
	.sleb128	19
	.uleb128	1
	.sleb128	0
.L11480:
.L11485:
	.sleb128	13
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11486
.L11487:
	.sleb128	13
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11488
.L11493:
	.sleb128	13
	.byte		"TaskType"
	.byte		0
	.4byte		.L11437
.L11492:
	.sleb128	15
	.4byte		.L11493
.L11496:
	.sleb128	13
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11497
.L11495:
	.sleb128	16
	.4byte		.L11496
.L11494:
	.sleb128	15
	.4byte		.L11495
.L11501:
	.sleb128	13
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11502
.L11500:
	.sleb128	15
	.4byte		.L11501
.L11499:
	.sleb128	16
	.4byte		.L11500
.L11498:
	.sleb128	15
	.4byte		.L11499
.L11504:
	.sleb128	13
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11505
.L11503:
	.sleb128	15
	.4byte		.L11504
.L11509:
	.sleb128	14
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11508:
	.sleb128	13
	.byte		"uint64"
	.byte		0
	.4byte		.L11509
.L11507:
	.sleb128	13
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11508
.L11506:
	.sleb128	15
	.4byte		.L11507
.L11511:
	.sleb128	13
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11439
.L11510:
	.sleb128	15
	.4byte		.L11511
.L11513:
	.sleb128	13
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11439
.L11512:
	.sleb128	15
	.4byte		.L11513
.L11516:
	.sleb128	13
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11439
.L11515:
	.sleb128	16
	.4byte		.L11516
.L11514:
	.sleb128	15
	.4byte		.L11515
.L11520:
	.sleb128	13
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11439
.L11519:
	.sleb128	15
	.4byte		.L11520
.L11518:
	.sleb128	16
	.4byte		.L11519
.L11517:
	.sleb128	15
	.4byte		.L11518
	.section	.debug_info,,n
.L11524:
	.sleb128	20
	.4byte		.L11525-.L2
	.byte		0x1
	.sleb128	0
.L11525:
.L11523:
	.sleb128	16
	.4byte		.L11524
.L11522:
	.sleb128	13
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11523
.L11521:
	.sleb128	15
	.4byte		.L11522
.L11527:
	.sleb128	13
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11439
.L11526:
	.sleb128	15
	.4byte		.L11527
.L11532:
	.sleb128	13
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11533
.L11531:
	.sleb128	15
	.4byte		.L11532
.L11530:
	.sleb128	16
	.4byte		.L11531
.L11529:
	.sleb128	13
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11530
.L11528:
	.sleb128	16
	.4byte		.L11529
.L11535:
	.sleb128	16
	.4byte		.L11536
.L11534:
	.sleb128	15
	.4byte		.L11535
.L11540:
	.sleb128	13
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11541
.L11539:
	.sleb128	15
	.4byte		.L11540
.L11538:
	.sleb128	16
	.4byte		.L11539
.L11537:
	.sleb128	15
	.4byte		.L11538
.L11544:
	.sleb128	15
	.4byte		.L11434
.L11543:
	.sleb128	16
	.4byte		.L11544
.L11547:
	.sleb128	13
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11439
.L11546:
	.sleb128	15
	.4byte		.L11547
.L11549:
	.sleb128	13
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11550
.L11551:
	.sleb128	13
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11552
.L11554:
	.sleb128	15
	.4byte		.L11555
.L11553:
	.sleb128	16
	.4byte		.L11554
.L11556:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11400
.L11559:
	.sleb128	13
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11408
.L11558:
	.sleb128	15
	.4byte		.L11559
.L11562:
	.sleb128	13
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11563
.L11561:
	.sleb128	16
	.4byte		.L11562
.L11560:
	.sleb128	15
	.4byte		.L11561
.L11566:
	.sleb128	13
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11400
.L11565:
	.sleb128	16
	.4byte		.L11566
.L11564:
	.sleb128	15
	.4byte		.L11565
.L11571:
	.sleb128	13
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11572
.L11570:
	.sleb128	16
	.4byte		.L11571
.L11569:
	.sleb128	15
	.4byte		.L11570
.L11573:
	.sleb128	15
	.4byte		.L11399
.L11575:
	.sleb128	13
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11576
.L11574:
	.sleb128	15
	.4byte		.L11575
.L11580:
	.sleb128	20
	.4byte		.L11581-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	21
	.4byte		.L11556
	.sleb128	0
.L11581:
.L11579:
	.sleb128	16
	.4byte		.L11580
.L11578:
	.sleb128	13
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11579
.L11577:
	.sleb128	15
	.4byte		.L11578
.L11585:
	.sleb128	20
	.4byte		.L11586-.L2
	.byte		0x1
	.sleb128	0
.L11586:
.L11584:
	.sleb128	16
	.4byte		.L11585
.L11583:
	.sleb128	13
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11584
.L11582:
	.sleb128	15
	.4byte		.L11583
.L11590:
	.sleb128	20
	.4byte		.L11591-.L2
	.byte		0x1
	.sleb128	21
	.4byte		.L11556
	.sleb128	0
.L11591:
.L11589:
	.sleb128	16
	.4byte		.L11590
.L11588:
	.sleb128	13
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11589
.L11587:
	.sleb128	15
	.4byte		.L11588
.L11594:
	.sleb128	15
	.4byte		.L11437
.L11593:
	.sleb128	16
	.4byte		.L11594
.L11592:
	.sleb128	15
	.4byte		.L11593
.L11598:
	.sleb128	13
	.byte		"CounterType"
	.byte		0
	.4byte		.L11439
.L11597:
	.sleb128	15
	.4byte		.L11598
.L11596:
	.sleb128	16
	.4byte		.L11597
.L11595:
	.sleb128	15
	.4byte		.L11596
.L11602:
	.sleb128	13
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11438
.L11601:
	.sleb128	15
	.4byte		.L11602
.L11600:
	.sleb128	16
	.4byte		.L11601
.L11599:
	.sleb128	15
	.4byte		.L11600
.L11606:
	.sleb128	13
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11439
.L11605:
	.sleb128	15
	.4byte		.L11606
.L11604:
	.sleb128	16
	.4byte		.L11605
.L11603:
	.sleb128	15
	.4byte		.L11604
.L11608:
	.sleb128	13
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11400
.L11612:
	.sleb128	13
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11613
.L11611:
	.sleb128	16
	.4byte		.L11612
.L11616:
	.sleb128	13
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L11617
.L11618:
	.sleb128	13
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L11619
.L11621:
	.sleb128	13
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L11622
.L11625:
	.sleb128	13
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L11626
.L11627:
	.sleb128	13
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L11628
.L11629:
	.sleb128	13
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L11630
.L11632:
	.sleb128	13
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11400
.L11633:
	.sleb128	13
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L11634
.L11636:
	.sleb128	13
	.byte		"TickType"
	.byte		0
	.4byte		.L11439
.L11637:
	.sleb128	13
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11439
	.section	.debug_info,,n
.L11640:
	.sleb128	22
	.byte		"void"
	.byte		0
	.byte		0x0
.L11639:
	.sleb128	16
	.4byte		.L11640
.L11638:
	.sleb128	13
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11639
.L11642:
	.sleb128	16
	.4byte		.L11608
.L11641:
	.sleb128	13
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11642
.L11643:
	.sleb128	13
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11644
.L11645:
	.sleb128	13
	.byte		"RestartType"
	.byte		0
	.4byte		.L11400
.L11647:
	.sleb128	16
	.4byte		.L11507
.L11646:
	.sleb128	13
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11647
.L11649:
	.sleb128	16
	.4byte		.L11549
.L11648:
	.sleb128	13
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11649
.L11651:
	.sleb128	16
	.4byte		.L11636
.L11650:
	.sleb128	13
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11651
.L11654:
	.sleb128	13
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11655
.L11653:
	.sleb128	16
	.4byte		.L11654
.L11652:
	.sleb128	13
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11653
.L11657:
	.sleb128	16
	.4byte		.L11493
.L11656:
	.sleb128	13
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11657
.L11660:
	.sleb128	13
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11661
.L11659:
	.sleb128	16
	.4byte		.L11660
.L11658:
	.sleb128	13
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11659
.L11664:
	.sleb128	13
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11665
.L11663:
	.sleb128	16
	.4byte		.L11664
.L11662:
	.sleb128	13
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11663
.L11667:
	.sleb128	13
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L11668
.L11674:
	.sleb128	15
	.4byte		.L11439
.L11676:
	.sleb128	13
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11408
.L11675:
	.sleb128	15
	.4byte		.L11676
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11389:
	.sleb128	0
.L11385:

	.section	.debug_loc,,n
	.align	0
.L11402:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locend
.L11404:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo5),3
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo8),3
	.d2locend
.L11410:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),4
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),4
	.d2locend
.L11416:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),0
	.d2locend
.L11418:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo15),3
	.d2locend
.L11429:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),31
	.d2locend
.L11435:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),4
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),30
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),4
	.d2locend
.L11441:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo20),28
	.d2locend
.L11447:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),29
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),29
	.d2locend
.L11453:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),31
	.d2locend
.L11454:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),4
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),30
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),4
	.d2locend
.L11456:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo32),29
	.d2locend
.L11462:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),0
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),28
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_Application_EnableProcs"
	.wrcm.nstrlist "calls", "Os_Isr_Platform_EnableChannel","Os_ShutdownAllCores"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_Application_DisableProcs"
	.wrcm.nstrlist "calls", "Os_Isr_Platform_DisableChannel"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Os_ApplicationInit"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Os_ApplicationOnOtherCore"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Application.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Application.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Application.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Application.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Application.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Application.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\application\Os_Application.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
