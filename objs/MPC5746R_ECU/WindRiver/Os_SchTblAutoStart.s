#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_SchTblAutoStart.c"
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
# FUNC (void, OS_CODE) Os_SchTblAutoStart(VAR (AppModeType, AUTOMATIC) appModeId,CONST(CoreIdType,AUTOMATIC) coreID)
	.section	.Os_TEXT,,c
	.align		2
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11373:
	.section	.Os_TEXT,,c
#$$ld
.L11369:
	.0byte		.L11367
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_SchTblAutoStart.c"
        .d2line         55,22
#$$ld
.L11376:

#$$bf	Os_SchTblAutoStart,interprocedural,rasave,nostackparams
	.globl		Os_SchTblAutoStart
	.d2_cfa_start __cie
Os_SchTblAutoStart:
.Llo1:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# appModeId=r31 appModeId=r3
	mr		r30,r4		# coreID=r30 coreID=r4
	.d2prologue_end
# {
# 
#     VAR (ScheduleTableType, AUTOMATIC)                        schTblId;
#     P2CONST(Os_SchTblAutoStartStatType, AUTOMATIC, OS_CONST)  currSchTblAutoStart;
# 
#     for( schTblId  = (ScheduleTableType)Os_SchTblRange[coreID].Os_ObjStartId;
	.d2line		61
	lis		r3,Os_SchTblRange@ha
.Llo2:
	e_add16i		r3,r3,Os_SchTblRange@l
	rlwinm		r4,r4,3,13,28		# coreID=r4 coreID=r4
.Llo5:
	lwzx		r29,r3,r4
.Llo6:
	mr		r29,r29		# schTblId=r29 schTblId=r29
.L11345:
.Llo3:
	lis		r3,(Os_SchTblRange+4)@ha		# schTblCounter=r3
.Llo14:
	e_add16i		r3,r3,(Os_SchTblRange+4)@l		# schTblCounter=r3 schTblCounter=r3
	rlwinm		r4,r30,3,13,28		# coreID=r4 coreID=r30
	lwzx		r0,r3,r4		# schTblCounter=r3
	se_cmpl		r0,r29		# schTblId=r29
	bc		1,0,.L11344	# lt
#          schTblId <= (ScheduleTableType)Os_SchTblRange[coreID].Os_ObjEndId;
#          schTblId++ )
#     {
#         currSchTblAutoStart = Os_SchTblStat[schTblId].Os_SchTblAutoStartStat;
	.d2line		65
.Llo15:
	lis		r3,Os_SchTblStat@ha		# schTblCounter=r3
.Llo16:
	lwz		r3,Os_SchTblStat@l(r3)		# schTblCounter=r3 schTblCounter=r3
	e_mulli		r0,r29,40		# schTblId=r29
	se_add		r3,r0		# schTblCounter=r3 schTblCounter=r3
	lwz		r0,36(r3)		# schTblCounter=r3
	.d2line		66
	mr.		r28,r0		# currSchTblAutoStart=?a7 currSchTblAutoStart=?a12
#         if(currSchTblAutoStart != NULL_PTR)
.Llo7:
	bc		1,2,.L11348	# eq
#         {
#             if( Os_Access_Granted == Os_Access_Check( currSchTblAutoStart->Os_SchTblAppModeAutoStart,
	.d2line		68
.Llo17:
	lwz		r3,8(r28)		# schTblCounter=r3 currSchTblAutoStart=r28
	mr		r4,r31		# appModeId=r4 appModeId=r31
	bl		Os_Access_Check
.Llo18:
	se_cmpi		r3,0		# schTblCounter=r3
	bc		0,2,.L11348	# ne
#                                                       (ProcType)appModeId ) )
#             {
#                 switch (currSchTblAutoStart->Os_SchTblAutoStartKind)
	.d2line		71
.Llo19:
	lwz		r6,4(r28)		# currSchTblAutoStart=r28
	se_cmpi		r6,0
	bc		1,2,.L11350	# eq
	se_cmpi		r6,1
	bc		1,2,.L11352	# eq
	se_cmpi		r6,2
	bc		1,2,.L11348	# eq
.Llo8:
	b		.L11354
.L11350:
	.section	.Os_TEXT,,c
.L11398:
#                 {
#                     case OS_ABSOLUTE:
#                     {
#                         CONSTP2CONST( Os_CounterStatType, AUTOMATIC, OS_CONST) schTblCounter =
	.d2line		75
.Llo9:
	lis		r3,Os_SchTblStat@ha		# schTblCounter=r3
.Llo20:
	lwz		r3,Os_SchTblStat@l(r3)		# schTblCounter=r3 schTblCounter=r3
	e_mulli		r0,r29,40		# schTblId=r29
	lwzx		r26,r3,r0		# schTblCounter=r26 schTblCounter=r3
	mr		r26,r26		# schTblCounter=r26 schTblCounter=r26
#                                                                             Os_SchTblStat[schTblId].Os_SchTblCounter;
#                         CONST( TickType, AUTOMATIC) relStartvalue = Os_CounterTickDiff(
	.d2line		77
	mr		r3,r26		# schTblCounter=r3 schTblCounter=r26
.Llo21:
	bl		Os_CounterStopAndGetValue
.Llo22:
	lwz		r0,0(r28)		# currSchTblAutoStart=r28
	se_cmpl		r3,r0		# schTblCounter=r3
	bc		0,0,.L11356	# ge
.Llo23:
	lwz		r28,0(r28)		# currSchTblAutoStart=r28 currSchTblAutoStart=r28
.Llo24:
	mr		r3,r26		# schTblCounter=r3 schTblCounter=r26
	bl		Os_CounterStopAndGetValue
	subf		r3,r3,r28		# schTblCounter=r3 schTblCounter=r3 currSchTblAutoStart=r28
.Llo28:
	mr		r4,r3		# relStartvalue=r4 relStartvalue=r3
	b		.L11357
.L11356:
.Llo29:
	lwz		r27,4(r26)		# schTblCounter=r26
	mr		r3,r26		# schTblCounter=r3 schTblCounter=r26
	bl		Os_CounterStopAndGetValue
	subf		r3,r3,r27		# schTblCounter=r3 schTblCounter=r3
	lwz		r0,0(r28)		# currSchTblAutoStart=r28
	se_add		r3,r0		# schTblCounter=r3 schTblCounter=r3
	se_addi		r3,1		# schTblCounter=r3 schTblCounter=r3
.Llo30:
	mr		r4,r3		# relStartvalue=r4 relStartvalue=r3
.L11357:
#                                                                         schTblCounter,
#                                                                         Os_CounterStopAndGetValue(schTblCounter),
#                                                                         currSchTblAutoStart->Os_SchTblAutoStartValue );
# 
#                         Os_SchTblStartRel(schTblId, relStartvalue);
	.d2line		82
.Llo10:
	mr		r3,r29		# schTblId=r3 schTblId=r29
.Llo31:
	mr		r4,r4		# relStartvalue=r4 relStartvalue=r4
.Llo32:
	bl		Os_SchTblStartRel
#                         Os_CounterExecuteAutoStartCounterEPs(schTblCounter);
	.d2line		83
	mr		r3,r26		# schTblCounter=r3 schTblCounter=r26
	bl		Os_CounterExecuteAutoStartCounterEPs
	.section	.Os_TEXT,,c
.L11399:
.Llo25:
	b		.L11348
.L11352:
#                     }break;
# 
#                     case OS_RELATIVE:
#                     {
#                         Os_SchTblStartRel(schTblId, currSchTblAutoStart->Os_SchTblAutoStartValue);
	.d2line		88
.Llo11:
	lwz		r4,0(r28)		# coreID=r4 currSchTblAutoStart=r28
	mr		r3,r29		# schTblId=r3 schTblId=r29
	bl		Os_SchTblStartRel
#                         Os_CounterExecuteAutoStartCounterEPs(Os_SchTblStat[schTblId].Os_SchTblCounter);
	.d2line		89
	lis		r3,Os_SchTblStat@ha		# schTblId=r3
	lwz		r3,Os_SchTblStat@l(r3)		# schTblId=r3 schTblId=r3
	e_mulli		r0,r29,40		# schTblId=r29
	lwzx		r3,r3,r0		# schTblId=r3 schTblId=r3
	bl		Os_CounterExecuteAutoStartCounterEPs
	b		.L11348
.L11354:
#                     }break;
# 
#                     case OS_SYNCHRON:
#                     {
#                       #ifdef OS_MODULE_SCHEDULETABLE_SYNC
# 
#                         Os_SchTblStat[schTblId].Os_SchTblRegistry->Os_SchTblStatus = SCHEDULETABLE_WAITING;
# 
#                         OS_CALL_RTM_SCHEDULETABLE_STATE_CHANGE(StoppedToWaiting, schTblId, OS_GETCOREID());
# 
#                       #endif /* OS_MODULE_SCHEDULETABLE_SYNC */
#                     }break;
# 
#                     default:
#                         OS_FATAL_ERROR(E_OS_SYS_INVALID_SCHTBLSTARTKIND);
	.d2line		104
.Llo12:
	diab.li		r4,16		# coreID=r4
	lis		r3,(Os_Core_DynShared+12)@ha		# schTblCounter=r3
.Llo26:
	e_add16i		r3,r3,(Os_Core_DynShared+12)@l		# schTblCounter=r3 schTblCounter=r3
	mfspr		r0,286
	rlwinm		r0,r0,0,16,31
	e_mulli		r0,r0,152
	stwx		r4,r3,r0		# schTblCounter=r3 coreID=r4
	diab.li		r3,30		# schTblCounter=r3
.Llo27:
	bl		Os_ShutdownAllCores
.L11348:
#                         break;
#                 }
#             }
#         }
#     }
	.d2line		109
.Llo13:
	diab.addi		r0,r29,1		# schTblId=r29
	se_addi		r29,1		# schTblId=r29 schTblId=r29
	b		.L11345
.L11344:
# }
	.d2line		110
	.d2epilogue_begin
.Llo4:
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11377:
	.type		Os_SchTblAutoStart,@function
	.size		Os_SchTblAutoStart,.-Os_SchTblAutoStart
# Number of nodes = 143

# Allocations for Os_SchTblAutoStart
#	?a4		appModeId
#	?a5		coreID
#	?a6		schTblId
#	?a7		currSchTblAutoStart
#	?a8		schTblCounter
#	?a9		relStartvalue

# Allocations for module
	.section	.text_vle
	.0byte		.L11413
	.section	.Os_BSS,,b
	.0byte		.L11426
	.section	.text_vle
#$$ld
.L5:
.L11638:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L11636:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L11634:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L11632:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L11620:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11573:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L11563:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11518:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11493:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CounterCfgTypes.h"
.L11438:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
.L11432:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_SchedulerCfgTypes.h"
.L11427:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CoreCfgTypes.h"
.L11414:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ScheduleTableCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11370:
.L11378:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_SchTblAutoStart.c"
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
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
	.uleb128	14
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
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
	.uleb128	47
	.uleb128	15
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_SchTblAutoStart.c"
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
.L11367:
	.4byte		.L11368-.L11366
.L11366:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11372-.L11367
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\schedule_table\\Os_SchTblAutoStart.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11369
	.4byte		.L11370
	.4byte		.L11373
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11379:
	.sleb128	2
	.4byte		.L11375-.L11367
	.byte		"Os_SchTblAutoStart"
	.byte		0
	.4byte		.L11378
	.uleb128	55
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11376
	.4byte		.L11377
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11378
	.uleb128	55
	.uleb128	22
	.byte		"appModeId"
	.byte		0
	.4byte		.L11380
	.4byte		.L11383
	.sleb128	3
	.4byte		.L11378
	.uleb128	55
	.uleb128	22
	.byte		"coreID"
	.byte		0
	.4byte		.L11384
	.4byte		.L11388
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11389:
	.sleb128	4
	.4byte		.L11378
	.uleb128	58
	.uleb128	63
	.byte		"schTblId"
	.byte		0
	.4byte		.L11390
	.4byte		.L11391
.L11392:
	.sleb128	4
	.4byte		.L11378
	.uleb128	59
	.uleb128	63
	.byte		"currSchTblAutoStart"
	.byte		0
	.4byte		.L11393
	.4byte		.L11397
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	5
	.4byte		.L11401
	.4byte		.L11398
	.4byte		.L11399
.L11402:
	.sleb128	4
	.4byte		.L11378
	.uleb128	75
	.uleb128	80
	.byte		"schTblCounter"
	.byte		0
	.4byte		.L11403
	.4byte		.L11408
.L11409:
	.sleb128	4
	.4byte		.L11378
	.uleb128	77
	.uleb128	53
	.byte		"relStartvalue"
	.byte		0
	.4byte		.L11410
	.4byte		.L11412
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11401:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11375:
	.section	.debug_info,,n
.L11413:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L11414
	.uleb128	144
	.uleb128	60
	.byte		"Os_SchTblStat"
	.byte		0
	.4byte		.L11415
	.section	.debug_info,,n
.L11420:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L11414
	.uleb128	146
	.uleb128	44
	.byte		"Os_SchTblRange"
	.byte		0
	.4byte		.L11421
.L11426:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L11427
	.uleb128	181
	.uleb128	45
	.byte		"Os_Core_DynShared"
	.byte		0
	.4byte		.L11428
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11431:
	.sleb128	7
	.4byte		.L11432
	.uleb128	69
	.uleb128	1
	.4byte		.L11433-.L2
	.uleb128	152
	.section	.debug_info,,n
.L773:
	.sleb128	8
	.byte		"Os_Dispatcher"
	.byte		0
	.4byte		.L11434
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L774:
	.sleb128	8
	.byte		"Os_PublicDataNoInit"
	.byte		0
	.4byte		.L11436
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11433:
.L11435:
	.sleb128	7
	.4byte		.L11438
	.uleb128	612
	.uleb128	1
	.4byte		.L11439-.L2
	.uleb128	8
.L732:
	.sleb128	8
	.byte		"Os_DHead"
	.byte		0
	.4byte		.L11381
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L733:
	.sleb128	8
	.byte		"Os_DTail"
	.byte		0
	.4byte		.L11381
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11439:
	.section	.debug_info,,n
.L11419:
	.sleb128	9
	.4byte		.L11414
	.uleb128	62
	.uleb128	1
	.4byte		.L11440-.L2
	.byte		"Os_SchTblStatType_s"
	.byte		0
	.uleb128	40
.L541:
	.sleb128	8
	.byte		"Os_SchTblCounter"
	.byte		0
	.4byte		.L11403
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L542:
	.sleb128	8
	.byte		"Os_SchTblSyncStrategy"
	.byte		0
	.4byte		.L11441
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L543:
	.sleb128	8
	.byte		"Os_SchTblRepeating"
	.byte		0
	.4byte		.L11444
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L544:
	.sleb128	8
	.byte		"Os_SchTblInitialEP"
	.byte		0
	.4byte		.L11447
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L545:
	.sleb128	8
	.byte		"Os_SchTblFinalEP"
	.byte		0
	.4byte		.L11447
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L546:
	.sleb128	8
	.byte		"Os_SchTblDuration"
	.byte		0
	.4byte		.L11410
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L547:
	.sleb128	8
	.byte		"Os_SchTblRegistry"
	.byte		0
	.4byte		.L11452
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L548:
	.sleb128	8
	.byte		"Os_SchTblAppAccess"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L549:
	.sleb128	8
	.byte		"Os_SchTblOwnerApp"
	.byte		0
	.4byte		.L11460
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L550:
	.sleb128	8
	.byte		"Os_SchTblAutoStartStat"
	.byte		0
	.4byte		.L11465
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L11440:
.L11396:
	.sleb128	7
	.4byte		.L11414
	.uleb128	62
	.uleb128	1
	.4byte		.L11466-.L2
	.uleb128	12
.L538:
	.sleb128	8
	.byte		"Os_SchTblAutoStartValue"
	.byte		0
	.4byte		.L11410
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L539:
	.sleb128	8
	.byte		"Os_SchTblAutoStartKind"
	.byte		0
	.4byte		.L11467
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L540:
	.sleb128	8
	.byte		"Os_SchTblAppModeAutoStart"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11466:
.L11455:
	.sleb128	7
	.4byte		.L11414
	.uleb128	62
	.uleb128	1
	.4byte		.L11470-.L2
	.uleb128	16
.L534:
	.sleb128	8
	.byte		"Os_SchTblStatus"
	.byte		0
	.4byte		.L11471
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L535:
	.sleb128	8
	.byte		"Os_SchTblNextEP"
	.byte		0
	.4byte		.L11448
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L536:
	.sleb128	8
	.byte		"Os_SchTblNextSchTblId"
	.byte		0
	.4byte		.L11390
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L537:
	.sleb128	8
	.byte		"Os_SchTblNextSchTblBack"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11470:
.L11451:
	.sleb128	7
	.4byte		.L11414
	.uleb128	62
	.uleb128	1
	.4byte		.L11475-.L2
	.uleb128	20
.L529:
	.sleb128	8
	.byte		"Os_SchTblEPDelay"
	.byte		0
	.4byte		.L11410
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L530:
	.sleb128	8
	.byte		"Os_SchTblEPTaskActCount"
	.byte		0
	.4byte		.L11476
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L531:
	.sleb128	8
	.byte		"Os_SchTblEPFirstTaskAct"
	.byte		0
	.4byte		.L11477
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L532:
	.sleb128	8
	.byte		"Os_SchTblEPEventSetCount"
	.byte		0
	.4byte		.L11476
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L533:
	.sleb128	8
	.byte		"Os_SchTblEPFirstEventSet"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11475:
.L11487:
	.sleb128	7
	.4byte		.L11414
	.uleb128	62
	.uleb128	1
	.4byte		.L11488-.L2
	.uleb128	16
.L527:
	.sleb128	8
	.byte		"Os_SchTblEventSetTaskId"
	.byte		0
	.4byte		.L11479
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L528:
	.sleb128	8
	.byte		"Os_SchTblEventSetMask"
	.byte		0
	.4byte		.L11489
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11488:
.L11407:
	.sleb128	9
	.4byte		.L11493
	.uleb128	44
	.uleb128	14
	.4byte		.L11494-.L2
	.byte		"Os_CounterStatStruct"
	.byte		0
	.uleb128	48
.L481:
	.sleb128	8
	.byte		"Os_CounterKind"
	.byte		0
	.4byte		.L11495
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L482:
	.sleb128	8
	.byte		"Os_CounterMaxAllowedValue"
	.byte		0
	.4byte		.L11410
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L483:
	.sleb128	8
	.byte		"Os_CounterMinCycle"
	.byte		0
	.4byte		.L11410
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L484:
	.sleb128	8
	.byte		"Os_CounterTicksPerBase"
	.byte		0
	.4byte		.L11410
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L485:
	.sleb128	8
	.byte		"Os_CounterPoolSize"
	.byte		0
	.4byte		.L11498
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L486:
	.sleb128	8
	.byte		"Os_CounterRegistry"
	.byte		0
	.4byte		.L11499
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L487:
	.sleb128	8
	.byte		"Os_CounterEPs"
	.byte		0
	.4byte		.L11503
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L488:
	.sleb128	8
	.byte		"Os_CounterActions"
	.byte		0
	.4byte		.L11507
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L489:
	.sleb128	8
	.byte		"Os_TimerId"
	.byte		0
	.4byte		.L11511
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L490:
	.sleb128	8
	.byte		"Os_CounterCoreId"
	.byte		0
	.4byte		.L11384
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L491:
	.sleb128	8
	.byte		"Os_CounterAppAccess"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L492:
	.sleb128	8
	.byte		"Os_CounterOwnerApp"
	.byte		0
	.4byte		.L11460
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11494:
.L11502:
	.sleb128	9
	.4byte		.L11493
	.uleb128	44
	.uleb128	14
	.4byte		.L11513-.L2
	.byte		"Os_CounterDynStruct"
	.byte		0
	.uleb128	16
.L477:
	.sleb128	8
	.byte		"Os_CounterValue"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L478:
	.sleb128	8
	.byte		"Os_CounterNextEP"
	.byte		0
	.4byte		.L11504
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L479:
	.sleb128	8
	.byte		"Os_CounterNextFreeEP"
	.byte		0
	.4byte		.L11504
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L480:
	.sleb128	8
	.byte		"Os_CounterNextFreeAction"
	.byte		0
	.4byte		.L11508
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11513:
.L11506:
	.sleb128	9
	.4byte		.L11493
	.uleb128	44
	.uleb128	14
	.4byte		.L11514-.L2
	.byte		"Os_CounterEPStruct"
	.byte		0
	.uleb128	16
.L473:
	.sleb128	8
	.byte		"Os_CounterEPDueValue"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L474:
	.sleb128	8
	.byte		"Os_CounterNextAction"
	.byte		0
	.4byte		.L11508
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L475:
	.sleb128	8
	.byte		"Os_CounterLastAction"
	.byte		0
	.4byte		.L11508
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L476:
	.sleb128	8
	.byte		"Os_CounterEPNextEP"
	.byte		0
	.4byte		.L11504
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11514:
.L11510:
	.sleb128	9
	.4byte		.L11493
	.uleb128	44
	.uleb128	14
	.4byte		.L11515-.L2
	.byte		"Os_CounterEPActionStruct"
	.byte		0
	.uleb128	12
.L470:
	.sleb128	8
	.byte		"Os_CounterActionOwner"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L471:
	.sleb128	8
	.byte		"Os_CounterActionObject"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L472:
	.sleb128	8
	.byte		"Os_CounterActionNextAction"
	.byte		0
	.4byte		.L11508
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11515:
.L11464:
	.sleb128	9
	.4byte		.L11518
	.uleb128	52
	.uleb128	1
	.4byte		.L11519-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L430:
	.sleb128	8
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11520
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L431:
	.sleb128	8
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11524
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L432:
	.sleb128	8
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11479
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L433:
	.sleb128	8
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11528
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L434:
	.sleb128	8
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11531
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L435:
	.sleb128	8
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11537
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L436:
	.sleb128	8
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11542
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L437:
	.sleb128	8
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11547
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L438:
	.sleb128	8
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11550
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L439:
	.sleb128	8
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11554
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L440:
	.sleb128	8
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11558
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L441:
	.sleb128	8
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11384
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11519:
.L11523:
	.sleb128	7
	.4byte		.L11518
	.uleb128	52
	.uleb128	1
	.4byte		.L11561-.L2
	.uleb128	1
.L429:
	.sleb128	8
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11562
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11561:
.L11437:
	.sleb128	7
	.4byte		.L11563
	.uleb128	32
	.uleb128	1
	.4byte		.L11564-.L2
	.uleb128	144
.L420:
	.sleb128	8
	.byte		"Os_Error"
	.byte		0
	.4byte		.L11565
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L421:
	.sleb128	8
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L11567
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L11564:
.L11568:
	.sleb128	7
	.4byte		.L11563
	.uleb128	32
	.uleb128	1
	.4byte		.L11569-.L2
	.uleb128	20
.L409:
	.sleb128	8
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L11570
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	8
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11381
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L411:
	.sleb128	8
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11381
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L412:
	.sleb128	8
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11572
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L413:
	.sleb128	8
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11572
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11569:
.L11566:
	.sleb128	7
	.4byte		.L11573
	.uleb128	174
	.uleb128	1
	.4byte		.L11574-.L2
	.uleb128	120
.L406:
	.sleb128	8
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L11575
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	8
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L11577
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L408:
	.sleb128	8
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L11579
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L11574:
.L11580:
	.sleb128	7
	.4byte		.L11573
	.uleb128	174
	.uleb128	1
	.4byte		.L11581-.L2
	.uleb128	8
.L403:
	.sleb128	8
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L11582
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L404:
	.sleb128	8
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L405:
	.sleb128	8
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L11583
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11581:
.L11578:
	.sleb128	7
	.4byte		.L11573
	.uleb128	174
	.uleb128	1
	.4byte		.L11585-.L2
	.uleb128	104
.L378:
	.sleb128	8
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11480
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L379:
	.sleb128	8
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11586
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L380:
	.sleb128	8
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11490
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L381:
	.sleb128	8
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11557
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L382:
	.sleb128	8
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L383:
	.sleb128	8
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L384:
	.sleb128	8
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11587
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L385:
	.sleb128	8
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11588
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L386:
	.sleb128	8
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11525
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L387:
	.sleb128	8
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11591
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L388:
	.sleb128	8
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11593
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L389:
	.sleb128	8
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11390
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L390:
	.sleb128	8
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11390
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L391:
	.sleb128	8
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11553
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L392:
	.sleb128	8
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11595
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L393:
	.sleb128	8
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11596
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L394:
	.sleb128	8
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11598
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L395:
	.sleb128	8
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11602
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L396:
	.sleb128	8
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11604
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L397:
	.sleb128	8
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11608
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L398:
	.sleb128	8
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11610
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L399:
	.sleb128	8
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11602
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L400:
	.sleb128	8
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L401:
	.sleb128	8
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11612
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L402:
	.sleb128	8
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L11613
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11585:
.L11576:
	.sleb128	7
	.4byte		.L11573
	.uleb128	174
	.uleb128	1
	.4byte		.L11617-.L2
	.uleb128	8
.L376:
	.sleb128	8
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11536
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	8
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L11618
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11617:
.L11607:
	.sleb128	7
	.4byte		.L11620
	.uleb128	50
	.uleb128	1
	.4byte		.L11621-.L2
	.uleb128	12
.L373:
	.sleb128	8
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L374:
	.sleb128	8
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L375:
	.sleb128	8
	.byte		"mincycle"
	.byte		0
	.4byte		.L11411
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11621:
.L11425:
	.sleb128	7
	.4byte		.L11620
	.uleb128	50
	.uleb128	1
	.4byte		.L11622-.L2
	.uleb128	8
.L371:
	.sleb128	8
	.byte		"Os_ObjStartId"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L372:
	.sleb128	8
	.byte		"Os_ObjEndId"
	.byte		0
	.4byte		.L11482
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11622:
	.section	.debug_info,,n
.L11469:
	.sleb128	10
	.4byte		.L11414
	.uleb128	62
	.uleb128	1
	.4byte		.L11623-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"OS_ABSOLUTE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"OS_RELATIVE"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"OS_SYNCHRON"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11623:
.L11446:
	.sleb128	10
	.4byte		.L11414
	.uleb128	54
	.uleb128	1
	.4byte		.L11624-.L2
	.uleb128	4
	.sleb128	11
	.byte		"OS_SINGLESHOT"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"OS_REPEATING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11624:
.L11443:
	.sleb128	10
	.4byte		.L11414
	.uleb128	45
	.uleb128	1
	.4byte		.L11625-.L2
	.uleb128	4
	.sleb128	11
	.byte		"OS_NONE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"OS_IMPLICIT"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"OS_EXPLICIT"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11625:
	.section	.debug_info,,n
.L11517:
	.sleb128	12
	.4byte		.L11493
	.uleb128	44
	.uleb128	14
	.4byte		.L11626-.L2
	.byte		"Os_CounterActionOwnerType_e"
	.byte		0
	.uleb128	4
	.sleb128	11
	.byte		"OS_COUNTERACTION_OWNER_INVALID"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"OS_COUNTERACTION_ALARM"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"OS_COUNTERACTION_SCHTBL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11626:
.L11497:
	.sleb128	12
	.4byte		.L11493
	.uleb128	36
	.uleb128	14
	.4byte		.L11627-.L2
	.byte		"Os_CounterKindType_e"
	.byte		0
	.uleb128	4
	.sleb128	11
	.byte		"OS_HARDWARE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"OS_SOFTWARE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11627:
.L11530:
	.sleb128	10
	.4byte		.L11518
	.uleb128	52
	.uleb128	1
	.4byte		.L11628-.L2
	.uleb128	4
	.sleb128	11
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11628:
.L11571:
	.sleb128	10
	.4byte		.L11563
	.uleb128	32
	.uleb128	1
	.4byte		.L11629-.L2
	.uleb128	4
	.sleb128	11
	.byte		"OS_EXCEPTION_NONE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"OS_EXCEPTION_CRITICAL_INPUT"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"OS_EXCEPTION_MACHINE_CHECK"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"OS_EXCEPTION_DATA_STORAGE"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"OS_EXCEPTION_INSTRUCTION_STORAGE"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"OS_EXCEPTION_EXTERNAL_INPUT"
	.byte		0
	.sleb128	5
	.sleb128	11
	.byte		"OS_EXCEPTION_ALIGNMENT"
	.byte		0
	.sleb128	6
	.sleb128	11
	.byte		"OS_EXCEPTION_PROGRAM"
	.byte		0
	.sleb128	7
	.sleb128	11
	.byte		"OS_EXCEPTION_FLOATINGPOINT_UNAVAILABLE"
	.byte		0
	.sleb128	8
	.sleb128	11
	.byte		"OS_EXCEPTION_AUX_PROC_UNAVAILABLE"
	.byte		0
	.sleb128	9
	.sleb128	11
	.byte		"OS_EXCEPTION_DECREMENTER"
	.byte		0
	.sleb128	10
	.sleb128	11
	.byte		"OS_EXCEPTION_FIXED_INTERVAL_TIMER"
	.byte		0
	.sleb128	11
	.sleb128	11
	.byte		"OS_EXCEPTION_WATCHDOG"
	.byte		0
	.sleb128	12
	.sleb128	11
	.byte		"OS_EXCEPTION_DATA_TLB_ERROR"
	.byte		0
	.sleb128	13
	.sleb128	11
	.byte		"OS_EXCEPTION_INSTRUCTION_TLB_ERROR"
	.byte		0
	.sleb128	14
	.sleb128	11
	.byte		"OS_EXCEPTION_DEBUG"
	.byte		0
	.sleb128	15
	.sleb128	11
	.byte		"OS_EXCEPTION_SPE_UNAVAILABLE"
	.byte		0
	.sleb128	16
	.sleb128	11
	.byte		"OS_EXCEPTION_SPE_DATA"
	.byte		0
	.sleb128	17
	.sleb128	11
	.byte		"OS_EXCEPTION_SPE_ROUND"
	.byte		0
	.sleb128	18
	.sleb128	11
	.byte		"OS_EXCEPTION_COUNT"
	.byte		0
	.sleb128	19
	.sleb128	0
.L11629:
.L11619:
	.sleb128	10
	.4byte		.L11573
	.uleb128	174
	.uleb128	1
	.4byte		.L11630-.L2
	.uleb128	4
	.sleb128	11
	.byte		"E_OS_SYS_OK"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"E_OS_SYS_UNKNOWN_API"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_STARTSTATE"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_MASTERAPPMODE"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_SLAVEAPPMODE"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"E_OS_SYS_COUNTERACTION_OVERFLOW"
	.byte		0
	.sleb128	5
	.sleb128	11
	.byte		"E_OS_SYS_COUNTEREP_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_COUNTEROWNER"
	.byte		0
	.sleb128	7
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_APIMAGIC"
	.byte		0
	.sleb128	8
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND1"
	.byte		0
	.sleb128	9
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND2"
	.byte		0
	.sleb128	10
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND3"
	.byte		0
	.sleb128	11
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND4"
	.byte		0
	.sleb128	12
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND5"
	.byte		0
	.sleb128	13
	.sleb128	11
	.byte		"E_OS_SYS_DISPATCHER_OVERFLOW"
	.byte		0
	.sleb128	14
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_ALARMACTION"
	.byte		0
	.sleb128	15
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_SCHTBLSTARTKIND"
	.byte		0
	.sleb128	16
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_ISRPROCKIND"
	.byte		0
	.sleb128	17
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TPSTATE1"
	.byte		0
	.sleb128	18
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TPSTATE2"
	.byte		0
	.sleb128	19
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TPSTATE3"
	.byte		0
	.sleb128	20
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TPSTATE4"
	.byte		0
	.sleb128	21
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TPSTATE5"
	.byte		0
	.sleb128	22
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION0"
	.byte		0
	.sleb128	23
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION1"
	.byte		0
	.sleb128	24
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION2"
	.byte		0
	.sleb128	25
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION3"
	.byte		0
	.sleb128	26
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION4"
	.byte		0
	.sleb128	27
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION5"
	.byte		0
	.sleb128	28
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_QUEUEHEAD"
	.byte		0
	.sleb128	29
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_QUEUEINDEX"
	.byte		0
	.sleb128	30
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_PROCSTATE"
	.byte		0
	.sleb128	31
	.sleb128	11
	.byte		"E_OS_SYS_LINKTIMEGUARD_ERROR"
	.byte		0
	.sleb128	32
	.sleb128	11
	.byte		"E_OS_SYS_WRONG_CORESTATE"
	.byte		0
	.sleb128	33
	.sleb128	11
	.byte		"E_OS_SYS_COUNTERID"
	.byte		0
	.sleb128	34
	.sleb128	11
	.byte		"E_OS_SYS_COUNTER_CANCELEDNOTFOUND"
	.byte		0
	.sleb128	35
	.sleb128	11
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN"
	.byte		0
	.sleb128	36
	.sleb128	11
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN2"
	.byte		0
	.sleb128	37
	.sleb128	11
	.byte		"E_OS_SYS_COUNTER_EPCHAINISBROKEN"
	.byte		0
	.sleb128	38
	.sleb128	11
	.byte		"E_OS_SYS_ALARMID"
	.byte		0
	.sleb128	39
	.sleb128	11
	.byte		"E_OS_SYS_RESUMEPROC_MAXACTIVATION"
	.byte		0
	.sleb128	40
	.sleb128	11
	.byte		"E_OS_SYS_QUEUEELEMENT_OVERFLOW"
	.byte		0
	.sleb128	41
	.sleb128	11
	.byte		"E_OS_SYS_SCHEDULER_ERROR"
	.byte		0
	.sleb128	42
	.sleb128	11
	.byte		"E_OS_SYS_EVENTSTAT"
	.byte		0
	.sleb128	43
	.sleb128	11
	.byte		"E_OS_SYS_TASKID"
	.byte		0
	.sleb128	44
	.sleb128	11
	.byte		"E_OS_SYS_TASKMISSINGEND_PROCKIND"
	.byte		0
	.sleb128	45
	.sleb128	11
	.byte		"E_OS_SYS_TASKMISSINGEND_COREID"
	.byte		0
	.sleb128	46
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_TIMINGPROTECTIONSTATE"
	.byte		0
	.sleb128	47
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_EXCEPTION"
	.byte		0
	.sleb128	48
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_PLATFORM_TIMER"
	.byte		0
	.sleb128	49
	.sleb128	11
	.byte		"E_OS_SYS_KERNELSTACK_OVERFLOW"
	.byte		0
	.sleb128	50
	.sleb128	11
	.byte		"E_OS_SYS_INVALID_SECTION_SIZE"
	.byte		0
	.sleb128	51
	.sleb128	11
	.byte		"E_OS_SYS_MEMPROT_INVALID_APP"
	.byte		0
	.sleb128	52
	.sleb128	11
	.byte		"E_OS_SYS_CALLEVEL"
	.byte		0
	.sleb128	53
	.sleb128	11
	.byte		"E_OS_SYS_TIMER_RUNNING"
	.byte		0
	.sleb128	54
	.sleb128	11
	.byte		"E_OS_SYS_TIMER_STOPPED"
	.byte		0
	.sleb128	55
	.sleb128	11
	.byte		"E_OS_SYS_TIMER_TOO_MUCH_JITTER"
	.byte		0
	.sleb128	56
	.sleb128	11
	.byte		"E_OS_SYS_SSG_NESTING"
	.byte		0
	.sleb128	57
	.sleb128	11
	.byte		"E_OS_SYS_SSG_OVERFLOW"
	.byte		0
	.sleb128	58
	.sleb128	11
	.byte		"E_OS_SYS_CORELOCK_LOCKED"
	.byte		0
	.sleb128	59
	.sleb128	11
	.byte		"E_OS_SYS_CORELOCK_UNLOCKED"
	.byte		0
	.sleb128	60
	.sleb128	11
	.byte		"E_OS_SYS_TFPROCAPPINCONSISTENCY"
	.byte		0
	.sleb128	61
	.sleb128	11
	.byte		"E_OS_SYS_PROCENABLEDALREADY"
	.byte		0
	.sleb128	62
	.sleb128	0
.L11630:
.L11584:
	.sleb128	10
	.4byte		.L11573
	.uleb128	86
	.uleb128	1
	.4byte		.L11631-.L2
	.uleb128	4
	.sleb128	11
	.byte		"OSServiceId_GetApplicationID"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"OSServiceId_GetISRID"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"OSServiceId_CallTrustedFunction"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"OSServiceId_CheckISRMemoryAccess"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"OSServiceId_CheckTaskMemoryAccess"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"OSServiceId_CheckObjectAccess"
	.byte		0
	.sleb128	5
	.sleb128	11
	.byte		"OSServiceId_CheckObjectOwnership"
	.byte		0
	.sleb128	6
	.sleb128	11
	.byte		"OSServiceId_StartScheduleTableRel"
	.byte		0
	.sleb128	7
	.sleb128	11
	.byte		"OSServiceId_StartScheduleTableAbs"
	.byte		0
	.sleb128	8
	.sleb128	11
	.byte		"OSServiceId_StopScheduleTable"
	.byte		0
	.sleb128	9
	.sleb128	11
	.byte		"OSServiceId_NextScheduleTable"
	.byte		0
	.sleb128	10
	.sleb128	11
	.byte		"OSServiceId_StartScheduleTableSynchron"
	.byte		0
	.sleb128	11
	.sleb128	11
	.byte		"OSServiceId_SyncScheduleTable"
	.byte		0
	.sleb128	12
	.sleb128	11
	.byte		"OSServiceId_SetScheduleTableAsync"
	.byte		0
	.sleb128	13
	.sleb128	11
	.byte		"OSServiceId_GetScheduleTableStatus"
	.byte		0
	.sleb128	14
	.sleb128	11
	.byte		"OSServiceId_IncrementCounter"
	.byte		0
	.sleb128	15
	.sleb128	11
	.byte		"OSServiceId_GetCounterValue"
	.byte		0
	.sleb128	16
	.sleb128	11
	.byte		"OSServiceId_GetElapsedValue"
	.byte		0
	.sleb128	17
	.sleb128	11
	.byte		"OSServiceId_TerminateApplication"
	.byte		0
	.sleb128	18
	.sleb128	11
	.byte		"OSServiceId_AllowAcess"
	.byte		0
	.sleb128	19
	.sleb128	11
	.byte		"OSServiceId_GetApplicationState"
	.byte		0
	.sleb128	20
	.sleb128	11
	.byte		"OSServiceId_GetNumberOfActivatedCores"
	.byte		0
	.sleb128	21
	.sleb128	11
	.byte		"OSServiceId_GetCoreID"
	.byte		0
	.sleb128	22
	.sleb128	11
	.byte		"OSServiceId_StartCore"
	.byte		0
	.sleb128	23
	.sleb128	11
	.byte		"OSServiceId_StartNonAutosarCore"
	.byte		0
	.sleb128	24
	.sleb128	11
	.byte		"OSServiceId_GetSpinlock"
	.byte		0
	.sleb128	25
	.sleb128	11
	.byte		"OSServiceId_ReleaseSpinlock"
	.byte		0
	.sleb128	26
	.sleb128	11
	.byte		"OSServiceId_TryToGetSpinlock"
	.byte		0
	.sleb128	27
	.sleb128	11
	.byte		"OSServiceId_ShutdownAllCores"
	.byte		0
	.sleb128	28
	.sleb128	11
	.byte		"OSServiceId_ControlIdle"
	.byte		0
	.sleb128	29
	.sleb128	11
	.byte		"OSServiceId_IOC_Send"
	.byte		0
	.sleb128	30
	.sleb128	11
	.byte		"OSServiceId_IOC_Write"
	.byte		0
	.sleb128	31
	.sleb128	11
	.byte		"OSServiceId_IOC_SendGroup"
	.byte		0
	.sleb128	32
	.sleb128	11
	.byte		"OSServiceId_IOC_WriteFGroup"
	.byte		0
	.sleb128	33
	.sleb128	11
	.byte		"OSServiceId_IOC_Receive"
	.byte		0
	.sleb128	34
	.sleb128	11
	.byte		"OSServiceId_IOC_Read"
	.byte		0
	.sleb128	35
	.sleb128	11
	.byte		"OSServiceId_IOC_ReceiveGroup"
	.byte		0
	.sleb128	36
	.sleb128	11
	.byte		"OSServiceId_IOC_ReadGroup"
	.byte		0
	.sleb128	37
	.sleb128	11
	.byte		"OSServiceId_IOC_EmptyQueue"
	.byte		0
	.sleb128	38
	.sleb128	11
	.byte		"OSServiceId_IOC_ReceiverPullCB"
	.byte		0
	.sleb128	39
	.sleb128	11
	.byte		"OSServiceId_ActivateTask"
	.byte		0
	.sleb128	128
	.sleb128	11
	.byte		"OSServiceId_TerminateTask"
	.byte		0
	.sleb128	129
	.sleb128	11
	.byte		"OSServiceId_ChainTask"
	.byte		0
	.sleb128	130
	.sleb128	11
	.byte		"OSServiceId_Schedule"
	.byte		0
	.sleb128	131
	.sleb128	11
	.byte		"OSServiceId_GetTaskID"
	.byte		0
	.sleb128	132
	.sleb128	11
	.byte		"OSServiceId_GetTaskState"
	.byte		0
	.sleb128	133
	.sleb128	11
	.byte		"OSServiceId_EnableAllInterrupts"
	.byte		0
	.sleb128	134
	.sleb128	11
	.byte		"OSServiceId_DisableAllInterrupts"
	.byte		0
	.sleb128	135
	.sleb128	11
	.byte		"OSServiceId_ResumeAllInterrupts"
	.byte		0
	.sleb128	136
	.sleb128	11
	.byte		"OSServiceId_SuspendAllInterrupts"
	.byte		0
	.sleb128	137
	.sleb128	11
	.byte		"OSServiceId_ResumeOSInterrupts"
	.byte		0
	.sleb128	138
	.sleb128	11
	.byte		"OSServiceId_SuspendOSInterrupts"
	.byte		0
	.sleb128	139
	.sleb128	11
	.byte		"OSServiceId_GetResource"
	.byte		0
	.sleb128	140
	.sleb128	11
	.byte		"OSServiceId_ReleaseResource"
	.byte		0
	.sleb128	141
	.sleb128	11
	.byte		"OSServiceId_SetEvent"
	.byte		0
	.sleb128	142
	.sleb128	11
	.byte		"OSServiceId_ClearEvent"
	.byte		0
	.sleb128	143
	.sleb128	11
	.byte		"OSServiceId_GetEvent"
	.byte		0
	.sleb128	144
	.sleb128	11
	.byte		"OSServiceId_WaitEvent"
	.byte		0
	.sleb128	145
	.sleb128	11
	.byte		"OSServiceId_GetAlarmBase"
	.byte		0
	.sleb128	146
	.sleb128	11
	.byte		"OSServiceId_GetAlarm"
	.byte		0
	.sleb128	147
	.sleb128	11
	.byte		"OSServiceId_SetRelAlarm"
	.byte		0
	.sleb128	148
	.sleb128	11
	.byte		"OSServiceId_SetAbsAlarm"
	.byte		0
	.sleb128	149
	.sleb128	11
	.byte		"OSServiceId_CancelAlarm"
	.byte		0
	.sleb128	150
	.sleb128	11
	.byte		"OSServiceId_GetActiveApplicationMode"
	.byte		0
	.sleb128	151
	.sleb128	11
	.byte		"OSServiceId_StartOS"
	.byte		0
	.sleb128	152
	.sleb128	11
	.byte		"OSServiceId_ShutdownOS"
	.byte		0
	.sleb128	153
	.sleb128	11
	.byte		"OSServiceId_INVALIDSERVICE"
	.byte		0
	.sleb128	255
	.sleb128	0
.L11631:
.L11616:
	.sleb128	10
	.4byte		.L11632
	.uleb128	43
	.uleb128	1
	.4byte		.L11633-.L2
	.uleb128	4
	.sleb128	11
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11633:
.L11601:
	.sleb128	10
	.4byte		.L11634
	.uleb128	37
	.uleb128	1
	.4byte		.L11635-.L2
	.uleb128	4
	.sleb128	11
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L11635:
.L11472:
	.sleb128	10
	.4byte		.L11636
	.uleb128	40
	.uleb128	1
	.4byte		.L11637-.L2
	.uleb128	4
	.sleb128	11
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L11637:
.L11594:
	.sleb128	10
	.4byte		.L11638
	.uleb128	47
	.uleb128	1
	.4byte		.L11639-.L2
	.uleb128	4
	.sleb128	11
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	11
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	11
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L11639:
	.section	.debug_info,,n
.L11382:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L11381:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L11382
.L11380:
	.sleb128	14
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11381
.L11387:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11386:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L11387
.L11385:
	.sleb128	14
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11386
	.section	.debug_info,,n
.L11384:
	.sleb128	15
	.4byte		.L11385
.L11390:
	.sleb128	14
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11381
.L11395:
	.sleb128	14
	.byte		"Os_SchTblAutoStartStatType"
	.byte		0
	.4byte		.L11396
.L11394:
	.sleb128	15
	.4byte		.L11395
	.section	.debug_info,,n
.L11393:
	.sleb128	16
	.4byte		.L11394
.L11406:
	.sleb128	14
	.byte		"Os_CounterStatType"
	.byte		0
	.4byte		.L11407
.L11405:
	.sleb128	15
	.4byte		.L11406
.L11404:
	.sleb128	16
	.4byte		.L11405
.L11403:
	.sleb128	15
	.4byte		.L11404
.L11411:
	.sleb128	14
	.byte		"TickType"
	.byte		0
	.4byte		.L11381
.L11410:
	.sleb128	15
	.4byte		.L11411
.L11418:
	.sleb128	14
	.byte		"Os_SchTblStatType"
	.byte		0
	.4byte		.L11419
.L11417:
	.sleb128	15
	.4byte		.L11418
.L11416:
	.sleb128	16
	.4byte		.L11417
.L11415:
	.sleb128	15
	.4byte		.L11416
.L11424:
	.sleb128	14
	.byte		"Os_ObjectRangeType"
	.byte		0
	.4byte		.L11425
.L11423:
	.sleb128	15
	.4byte		.L11424
	.section	.debug_info,,n
.L11421:
	.sleb128	17
	.4byte		.L11422-.L2
	.4byte		.L11423
	.section	.debug_info,,n
	.sleb128	18
	.uleb128	1
	.sleb128	0
.L11422:
.L11430:
	.sleb128	14
	.byte		"Os_Core_DynSharedType"
	.byte		0
	.4byte		.L11431
.L11428:
	.sleb128	17
	.4byte		.L11429-.L2
	.4byte		.L11430
	.sleb128	18
	.uleb128	1
	.sleb128	0
.L11429:
.L11434:
	.sleb128	14
	.byte		"Os_DispatcherType"
	.byte		0
	.4byte		.L11435
.L11436:
	.sleb128	14
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11437
.L11442:
	.sleb128	14
	.byte		"Os_SchTblSyncStrategyType"
	.byte		0
	.4byte		.L11443
.L11441:
	.sleb128	15
	.4byte		.L11442
.L11445:
	.sleb128	14
	.byte		"Os_SchTblRepeatingType"
	.byte		0
	.4byte		.L11446
.L11444:
	.sleb128	15
	.4byte		.L11445
.L11450:
	.sleb128	14
	.byte		"Os_SchTblEPStatType"
	.byte		0
	.4byte		.L11451
.L11449:
	.sleb128	15
	.4byte		.L11450
.L11448:
	.sleb128	16
	.4byte		.L11449
.L11447:
	.sleb128	15
	.4byte		.L11448
.L11454:
	.sleb128	14
	.byte		"Os_SchTblDynType"
	.byte		0
	.4byte		.L11455
.L11453:
	.sleb128	16
	.4byte		.L11454
.L11452:
	.sleb128	15
	.4byte		.L11453
.L11459:
	.sleb128	14
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11381
.L11458:
	.sleb128	15
	.4byte		.L11459
.L11457:
	.sleb128	16
	.4byte		.L11458
.L11456:
	.sleb128	15
	.4byte		.L11457
.L11463:
	.sleb128	14
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11464
.L11462:
	.sleb128	15
	.4byte		.L11463
.L11461:
	.sleb128	16
	.4byte		.L11462
.L11460:
	.sleb128	15
	.4byte		.L11461
.L11465:
	.sleb128	15
	.4byte		.L11393
.L11468:
	.sleb128	14
	.byte		"Os_SchTblAutoStartKindType"
	.byte		0
	.4byte		.L11469
.L11467:
	.sleb128	15
	.4byte		.L11468
.L11471:
	.sleb128	14
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11472
.L11474:
	.sleb128	15
	.4byte		.L11419
.L11473:
	.sleb128	16
	.4byte		.L11474
.L11476:
	.sleb128	15
	.4byte		.L11381
.L11482:
	.sleb128	14
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11381
.L11481:
	.sleb128	14
	.byte		"ProcType"
	.byte		0
	.4byte		.L11482
.L11480:
	.sleb128	14
	.byte		"TaskType"
	.byte		0
	.4byte		.L11481
.L11479:
	.sleb128	15
	.4byte		.L11480
.L11478:
	.sleb128	16
	.4byte		.L11479
.L11477:
	.sleb128	15
	.4byte		.L11478
.L11486:
	.sleb128	14
	.byte		"Os_SchTblActionEventSetStatType"
	.byte		0
	.4byte		.L11487
.L11485:
	.sleb128	15
	.4byte		.L11486
.L11484:
	.sleb128	16
	.4byte		.L11485
.L11483:
	.sleb128	15
	.4byte		.L11484
.L11492:
	.sleb128	13
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11491:
	.sleb128	14
	.byte		"uint64"
	.byte		0
	.4byte		.L11492
.L11490:
	.sleb128	14
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11491
.L11489:
	.sleb128	15
	.4byte		.L11490
.L11496:
	.sleb128	14
	.byte		"Os_CounterKindType"
	.byte		0
	.4byte		.L11497
.L11495:
	.sleb128	15
	.4byte		.L11496
.L11498:
	.sleb128	15
	.4byte		.L11482
.L11501:
	.sleb128	14
	.byte		"Os_CounterDynType"
	.byte		0
	.4byte		.L11502
.L11500:
	.sleb128	16
	.4byte		.L11501
.L11499:
	.sleb128	15
	.4byte		.L11500
.L11505:
	.sleb128	14
	.byte		"Os_CounterEPType"
	.byte		0
	.4byte		.L11506
.L11504:
	.sleb128	16
	.4byte		.L11505
.L11503:
	.sleb128	15
	.4byte		.L11504
.L11509:
	.sleb128	14
	.byte		"Os_CounterEPActionType"
	.byte		0
	.4byte		.L11510
.L11508:
	.sleb128	16
	.4byte		.L11509
.L11507:
	.sleb128	15
	.4byte		.L11508
.L11512:
	.sleb128	14
	.byte		"Os_TimerType"
	.byte		0
	.4byte		.L11381
.L11511:
	.sleb128	15
	.4byte		.L11512
.L11516:
	.sleb128	14
	.byte		"Os_CounterActionOwnerType"
	.byte		0
	.4byte		.L11517
.L11522:
	.sleb128	14
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11523
.L11521:
	.sleb128	16
	.4byte		.L11522
.L11520:
	.sleb128	15
	.4byte		.L11521
.L11527:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11526:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L11527
.L11525:
	.sleb128	14
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11526
.L11524:
	.sleb128	15
	.4byte		.L11525
.L11529:
	.sleb128	14
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11530
.L11528:
	.sleb128	15
	.4byte		.L11529
	.section	.debug_info,,n
.L11534:
	.sleb128	19
	.4byte		.L11535-.L2
	.byte		0x1
.L11536:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11526
	.section	.debug_info,,n
	.sleb128	20
	.4byte		.L11536
	.sleb128	0
.L11535:
.L11533:
	.sleb128	16
	.4byte		.L11534
.L11532:
	.sleb128	14
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11533
.L11531:
	.sleb128	15
	.4byte		.L11532
.L11540:
	.sleb128	19
	.4byte		.L11541-.L2
	.byte		0x1
	.sleb128	0
.L11541:
.L11539:
	.sleb128	16
	.4byte		.L11540
.L11538:
	.sleb128	14
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11539
.L11537:
	.sleb128	15
	.4byte		.L11538
.L11545:
	.sleb128	19
	.4byte		.L11546-.L2
	.byte		0x1
	.sleb128	20
	.4byte		.L11536
	.sleb128	0
.L11546:
.L11544:
	.sleb128	16
	.4byte		.L11545
.L11543:
	.sleb128	14
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11544
.L11542:
	.sleb128	15
	.4byte		.L11543
.L11549:
	.sleb128	15
	.4byte		.L11481
.L11548:
	.sleb128	16
	.4byte		.L11549
.L11547:
	.sleb128	15
	.4byte		.L11548
.L11553:
	.sleb128	14
	.byte		"CounterType"
	.byte		0
	.4byte		.L11381
.L11552:
	.sleb128	15
	.4byte		.L11553
.L11551:
	.sleb128	16
	.4byte		.L11552
.L11550:
	.sleb128	15
	.4byte		.L11551
.L11557:
	.sleb128	14
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11482
.L11556:
	.sleb128	15
	.4byte		.L11557
.L11555:
	.sleb128	16
	.4byte		.L11556
.L11554:
	.sleb128	15
	.4byte		.L11555
.L11560:
	.sleb128	15
	.4byte		.L11390
.L11559:
	.sleb128	16
	.4byte		.L11560
.L11558:
	.sleb128	15
	.4byte		.L11559
.L11562:
	.sleb128	14
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11526
.L11565:
	.sleb128	14
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L11566
.L11567:
	.sleb128	14
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L11568
.L11570:
	.sleb128	14
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L11571
.L11572:
	.sleb128	14
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11381
.L11575:
	.sleb128	14
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L11576
.L11577:
	.sleb128	14
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L11578
.L11579:
	.sleb128	14
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L11580
.L11582:
	.sleb128	14
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11526
.L11583:
	.sleb128	14
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L11584
.L11586:
	.sleb128	14
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11381
.L11587:
	.sleb128	14
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11381
	.section	.debug_info,,n
.L11590:
	.sleb128	21
	.byte		"void"
	.byte		0
	.byte		0x0
.L11589:
	.sleb128	16
	.4byte		.L11590
.L11588:
	.sleb128	14
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11589
.L11592:
	.sleb128	16
	.4byte		.L11562
.L11591:
	.sleb128	14
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11592
.L11593:
	.sleb128	14
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11594
.L11595:
	.sleb128	14
	.byte		"RestartType"
	.byte		0
	.4byte		.L11526
.L11597:
	.sleb128	16
	.4byte		.L11490
.L11596:
	.sleb128	14
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11597
.L11600:
	.sleb128	14
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11601
.L11599:
	.sleb128	16
	.4byte		.L11600
.L11598:
	.sleb128	14
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11599
.L11603:
	.sleb128	16
	.4byte		.L11411
.L11602:
	.sleb128	14
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11603
.L11606:
	.sleb128	14
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11607
.L11605:
	.sleb128	16
	.4byte		.L11606
.L11604:
	.sleb128	14
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11605
.L11609:
	.sleb128	16
	.4byte		.L11480
.L11608:
	.sleb128	14
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11609
.L11611:
	.sleb128	16
	.4byte		.L11471
.L11610:
	.sleb128	14
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11611
.L11612:
	.sleb128	14
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11386
.L11615:
	.sleb128	14
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11616
.L11614:
	.sleb128	16
	.4byte		.L11615
.L11613:
	.sleb128	14
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11614
.L11618:
	.sleb128	14
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L11619
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11372:
	.sleb128	0
.L11368:

	.section	.debug_loc,,n
	.align	0
.L11383:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L11388:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),30
	.d2locend
.L11391:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo4),29
	.d2locend
.L11397:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),28
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),28
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),28
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo4),28
	.d2locend
.L11408:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),26
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locend
.L11412:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_SchTblAutoStart"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "Os_Access_Check","Os_CounterExecuteAutoStartCounterEPs","Os_CounterStopAndGetValue","Os_SchTblStartRel","Os_ShutdownAllCores"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_SchTblAutoStart.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_SchTblAutoStart.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_SchTblAutoStart.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_SchTblAutoStart.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_SchTblAutoStart.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_SchTblAutoStart.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\expiry_element\schedule_table\Os_SchTblAutoStart.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
