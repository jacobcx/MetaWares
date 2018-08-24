#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_Alarm_Autostart.c"
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
# FUNC (void, OS_CODE) Os_Alarm_AutoStart( VAR (AppModeType, AUTOMATIC) appModeId,
	.section	.Os_TEXT,,c
	.align		2
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11366:
	.section	.Os_TEXT,,c
#$$ld
.L11362:
	.0byte		.L11360
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\alarms\\Os_Alarm_Autostart.c"
        .d2line         54,22
#$$ld
.L11369:

#$$bf	Os_Alarm_AutoStart,interprocedural,rasave,nostackparams
	.globl		Os_Alarm_AutoStart
	.d2_cfa_start __cie
Os_Alarm_AutoStart:
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
#                                          CONST(CoreIdType,AUTOMATIC)  coreID)
# {
#     VAR(Os_ObjectType, AUTOMATIC) alarmId;
# 
#     for(alarmId = Os_AlarmRange[coreID].Os_ObjStartId; alarmId <= Os_AlarmRange[coreID].Os_ObjEndId; alarmId++)
	.d2line		59
	lis		r3,Os_AlarmRange@ha
.Llo2:
	e_add16i		r3,r3,Os_AlarmRange@l
	rlwinm		r4,r4,3,13,28		# coreID=r4 coreID=r4
.Llo5:
	lwzx		r29,r3,r4
.Llo6:
	mr		r29,r29		# alarmId=r29 alarmId=r29
.L11345:
.Llo3:
	lis		r3,(Os_AlarmRange+4)@ha		# alarmCounter=r3
.Llo13:
	e_add16i		r3,r3,(Os_AlarmRange+4)@l		# alarmCounter=r3 alarmCounter=r3
	rlwinm		r4,r30,3,13,28		# coreID=r4 coreID=r30
	lwzx		r0,r3,r4		# alarmCounter=r0 alarmCounter=r3
	se_cmpl		r0,r29		# alarmCounter=r0 alarmId=r29
	bc		1,0,.L11344	# lt
	.section	.Os_TEXT,,c
.L11385:
#     {
#         CONSTP2CONST(Os_AlarmStatType, AUTOMATIC, OS_CONST) alarm = &Os_AlarmStat[alarmId];
	.d2line		61
.Llo14:
	lis		r3,Os_AlarmStat@ha		# alarmCounter=r3
.Llo15:
	lwz		r28,Os_AlarmStat@l(r3)		# alarm=r28 alarmCounter=r3
.Llo7:
	e_mulli		r5,r29,24		# alarmId=r5 alarmId=r29
	se_add		r5,r28		# alarmId=r5 alarmId=r5 alarm=r28
	mr		r28,r5		# alarm=r28 alarm=r5
# 
#         if(NULL_PTR != alarm->Os_AlarmAutoStart)
	.d2line		63
.Llo8:
	lwz		r0,12(r28)		# alarmCounter=r0 alarm=r28
.Llo9:
	se_cmpi		r0,0		# alarmCounter=r0
	bc		1,2,.L11348	# eq
#         {
#             if(Os_Access_Granted == Os_Access_Check(alarm->Os_AlarmAutoStart->Os_AlarmAppModes, (ProcType)appModeId))
	.d2line		65
.Llo10:
	lwz		r3,12(r28)		# alarmCounter=r3 alarm=r28
.Llo11:
	lwz		r3,12(r3)		# alarmCounter=r3 alarmCounter=r3
.Llo16:
	mr		r4,r31		# appModeId=r4 appModeId=r31
	bl		Os_Access_Check
.Llo17:
	se_cmpi		r3,0		# alarmCounter=r3
	bc		0,2,.L11348	# ne
	.section	.Os_TEXT,,c
.L11396:
#             {
#                 CONSTP2CONST (Os_CounterStatType, AUTOMATIC, OS_CONST) alarmCounter = alarm->Os_AlarmCounterStat;
	.d2line		67
.Llo18:
	lwz		r27,4(r28)		# alarmCounter=r27 alarm=r28
.Llo19:
	mr		r27,r27		# alarmCounter=r27 alarmCounter=r27
#                 CONST        (TickType,           AUTOMATIC)           counterValue = Os_CounterStopAndGetValue(alarmCounter);
	.d2line		68
	mr		r3,r27		# alarmCounter=r3 alarmCounter=r27
	bl		Os_CounterStopAndGetValue
.Llo20:
	mr		r0,r3		# counterValue=r0 counterValue=r3
#                 VAR          (TickType,           AUTOMATIC)                 start  = alarm->Os_AlarmAutoStart->Os_AlarmTime;
	.d2line		69
	lwz		r3,12(r28)		# alarmCounter=r3 alarm=r28
.Llo21:
	lwz		r26,0(r3)		# counterValue=r26 alarmCounter=r3
.Llo22:
	mr		r26,r26		# start=r26 start=r26
# 
#                 if( OS_ALARM_ABSOLUTE == alarm->Os_AlarmAutoStart->Os_AlarmStartKind ) /* [OS476-01] */
	.d2line		71
	lwz		r3,8(r3)		# alarmCounter=r3 alarmCounter=r3
	se_cmpi		r3,1		# alarmCounter=r3
	bc		0,2,.L11350	# ne
#                 {
#                     start = (TickType)Os_CounterTickDiff(alarmCounter, counterValue, start);
	.d2line		73
	se_cmpl		r0,r26		# counterValue=r0 start=r26
	bc		0,0,.L11351	# ge
	subf		r0,r0,r26		# counterValue=r0 counterValue=r0 start=r26
.Llo23:
	b		.L11352
.L11351:
.Llo27:
	lwz		r3,4(r27)		# alarmCounter=r3 alarmCounter=r27
.Llo24:
	subf		r0,r0,r3		# counterValue=r0 counterValue=r0 alarmCounter=r3
.Llo25:
	se_add		r26,r0		# start=r26 start=r26 start=r0
	diab.addi		r0,r26,1		# start=r0 start=r26
.L11352:
	mr		r26,r0		# start=r26 start=r0
.L11350:
#                 }
# 
#                 Os_CounterRegisterIndication(alarmCounter, OS_COUNTERACTION_ALARM, alarmId, start);
	.d2line		76
.Llo28:
	mr		r3,r27		# alarmCounter=r3 alarmCounter=r27
.Llo29:
	diab.li		r4,1		# start=r4
	mr		r5,r29		# alarmId=r5 alarmId=r29
	mr		r6,r26		# start=r6 start=r26
	bl		Os_CounterRegisterIndication
#                 alarm->Os_AlarmDyn->Os_AlarmCycle = alarm->Os_AlarmAutoStart->Os_AlarmCycle;
	.d2line		77
	lwz		r3,12(r28)		# alarmCounter=r3 alarm=r28
	lwz		r0,4(r3)		# alarmCounter=r0 alarmCounter=r3
	lwz		r3,0(r28)		# alarmCounter=r3 alarm=r28
	stw		r0,4(r3)		# alarmCounter=r3 alarmCounter=r0
#                 alarm->Os_AlarmDyn->Os_AlarmValue = Os_CounterRel2Abs(alarmCounter, start);
	.d2line		78
	mr		r3,r27		# alarmCounter=r3 alarmCounter=r27
	mr		r4,r26		# start=r4 start=r26
	bl		Os_CounterRel2Abs
	lwz		r4,0(r28)		# counterValue=r4 alarm=r28
.Llo26:
	stw		r3,8(r4)		# counterValue=r4 alarmCounter=r3
#                 alarm->Os_AlarmDyn->Os_AlarmState = OS_ALARM_SET;
	.d2line		79
	diab.li		r0,1		# alarmCounter=r0
	lwz		r3,0(r28)		# alarmCounter=r3 alarm=r28
	stw		r0,0(r3)		# alarmCounter=r3 alarmCounter=r0
	.section	.Os_TEXT,,c
.L11397:
.L11348:
	.section	.Os_TEXT,,c
.L11386:
# 
#                 OS_CALL_RTM_ALARM_SET(alarmId, coreID);
#             }
#         }
#     }
	.d2line		84
.Llo12:
	diab.addi		r5,r29,1		# alarmId=r5 alarmId=r29
	se_addi		r29,1		# alarmId=r29 alarmId=r29
	b		.L11345
.L11344:
# 
# }
	.d2line		86
	.d2epilogue_begin
.Llo4:
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)		# alarmCounter=r0
	mtspr		lr,r0		# alarmCounter=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11370:
	.type		Os_Alarm_AutoStart,@function
	.size		Os_Alarm_AutoStart,.-Os_Alarm_AutoStart
# Number of nodes = 144

# Allocations for Os_Alarm_AutoStart
#	?a4		appModeId
#	?a5		coreID
#	?a6		$$2350
#	?a7		alarmId
#	?a8		alarm
#	?a9		alarmCounter
#	?a10		counterValue
#	?a11		start

# Allocations for module
	.section	.text_vle
	.0byte		.L11413
	.section	.text_vle
#$$ld
.L5:
.L11550:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11506:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11481:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_CounterCfgTypes.h"
.L11414:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_AlarmCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11363:
.L11371:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\alarms\\Os_Alarm_Autostart.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\alarms\\Os_Alarm_Autostart.c"
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
.L11360:
	.4byte		.L11361-.L11359
.L11359:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11365-.L11360
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\expiry_element\\alarms\\Os_Alarm_Autostart.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11362
	.4byte		.L11363
	.4byte		.L11366
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11372:
	.sleb128	2
	.4byte		.L11368-.L11360
	.byte		"Os_Alarm_AutoStart"
	.byte		0
	.4byte		.L11371
	.uleb128	54
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11369
	.4byte		.L11370
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11371
	.uleb128	54
	.uleb128	22
	.byte		"appModeId"
	.byte		0
	.4byte		.L11373
	.4byte		.L11376
	.sleb128	3
	.4byte		.L11371
	.uleb128	54
	.uleb128	22
	.byte		"coreID"
	.byte		0
	.4byte		.L11377
	.4byte		.L11381
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11382:
	.sleb128	4
	.4byte		.L11371
	.uleb128	57
	.uleb128	35
	.byte		"alarmId"
	.byte		0
	.4byte		.L11383
	.4byte		.L11384
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	5
	.4byte		.L11388
	.4byte		.L11385
	.4byte		.L11386
.L11389:
	.sleb128	4
	.4byte		.L11371
	.uleb128	61
	.uleb128	61
	.byte		"alarm"
	.byte		0
	.4byte		.L11390
	.4byte		.L11395
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	5
	.4byte		.L11399
	.4byte		.L11396
	.4byte		.L11397
.L11400:
	.sleb128	4
	.4byte		.L11371
	.uleb128	67
	.uleb128	72
	.byte		"alarmCounter"
	.byte		0
	.4byte		.L11401
	.4byte		.L11406
.L11407:
	.sleb128	4
	.4byte		.L11371
	.uleb128	68
	.uleb128	72
	.byte		"counterValue"
	.byte		0
	.4byte		.L11408
	.4byte		.L11410
.L11411:
	.sleb128	4
	.4byte		.L11371
	.uleb128	69
	.uleb128	78
	.byte		"start"
	.byte		0
	.4byte		.L11409
	.4byte		.L11412
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11399:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11388:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11368:
	.section	.debug_info,,n
.L11413:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L11414
	.uleb128	157
	.uleb128	59
	.byte		"Os_AlarmStat"
	.byte		0
	.4byte		.L11390
	.section	.debug_info,,n
.L11415:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L11414
	.uleb128	159
	.uleb128	44
	.byte		"Os_AlarmRange"
	.byte		0
	.4byte		.L11416
	.section	.debug_info,,n
.L11394:
	.sleb128	7
	.4byte		.L11414
	.uleb128	121
	.uleb128	1
	.4byte		.L11421-.L2
	.uleb128	24
	.section	.debug_info,,n
.L567:
	.sleb128	8
	.byte		"Os_AlarmDyn"
	.byte		0
	.4byte		.L11422
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L568:
	.sleb128	8
	.byte		"Os_AlarmCounterStat"
	.byte		0
	.4byte		.L11401
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L569:
	.sleb128	8
	.byte		"Os_AlarmAction"
	.byte		0
	.4byte		.L11426
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L570:
	.sleb128	8
	.byte		"Os_AlarmAutoStart"
	.byte		0
	.4byte		.L11431
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L571:
	.sleb128	8
	.byte		"Os_AlarmAppAccessRights"
	.byte		0
	.4byte		.L11436
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L572:
	.sleb128	8
	.byte		"Os_AlarmOwnerApp"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11421:
.L11435:
	.sleb128	7
	.4byte		.L11414
	.uleb128	121
	.uleb128	1
	.4byte		.L11445-.L2
	.uleb128	16
.L563:
	.sleb128	8
	.byte		"Os_AlarmTime"
	.byte		0
	.4byte		.L11408
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L564:
	.sleb128	8
	.byte		"Os_AlarmCycle"
	.byte		0
	.4byte		.L11408
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L565:
	.sleb128	8
	.byte		"Os_AlarmStartKind"
	.byte		0
	.4byte		.L11446
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L566:
	.sleb128	8
	.byte		"Os_AlarmAppModes"
	.byte		0
	.4byte		.L11436
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11445:
.L11430:
	.sleb128	7
	.4byte		.L11414
	.uleb128	96
	.uleb128	1
	.4byte		.L11449-.L2
	.uleb128	32
.L561:
	.sleb128	8
	.byte		"Os_AlarmActionKind"
	.byte		0
	.4byte		.L11450
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L562:
	.sleb128	8
	.byte		"Os_AlarmActionData"
	.byte		0
	.4byte		.L11453
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11449:
.L11425:
	.sleb128	7
	.4byte		.L11414
	.uleb128	96
	.uleb128	1
	.4byte		.L11456-.L2
	.uleb128	12
.L558:
	.sleb128	8
	.byte		"Os_AlarmState"
	.byte		0
	.4byte		.L11457
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L559:
	.sleb128	8
	.byte		"Os_AlarmCycle"
	.byte		0
	.4byte		.L11409
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L560:
	.sleb128	8
	.byte		"Os_AlarmValue"
	.byte		0
	.4byte		.L11409
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11456:
.L11455:
	.sleb128	7
	.4byte		.L11414
	.uleb128	37
	.uleb128	1
	.4byte		.L11459-.L2
	.uleb128	24
.L555:
	.sleb128	8
	.byte		"Os_AlarmActionSeEvent"
	.byte		0
	.4byte		.L11460
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L556:
	.sleb128	8
	.byte		"Os_AlarmActionActivateTask"
	.byte		0
	.4byte		.L11463
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L557:
	.sleb128	8
	.byte		"Os_AlarmActionIncrementCounter"
	.byte		0
	.4byte		.L11466
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11459:
.L11468:
	.sleb128	7
	.4byte		.L11414
	.uleb128	37
	.uleb128	1
	.4byte		.L11469-.L2
	.uleb128	4
.L554:
	.sleb128	8
	.byte		"Os_AlarmActionCounterId"
	.byte		0
	.4byte		.L11470
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11469:
.L11462:
	.sleb128	7
	.4byte		.L11414
	.uleb128	37
	.uleb128	1
	.4byte		.L11472-.L2
	.uleb128	16
.L552:
	.sleb128	8
	.byte		"Os_AlarmActionTaskId"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L553:
	.sleb128	8
	.byte		"Os_AlarmActionEventMask"
	.byte		0
	.4byte		.L11476
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11472:
.L11465:
	.sleb128	7
	.4byte		.L11414
	.uleb128	37
	.uleb128	1
	.4byte		.L11480-.L2
	.uleb128	4
.L551:
	.sleb128	8
	.byte		"Os_AlarmActionTaskId"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11480:
	.section	.debug_info,,n
.L11405:
	.sleb128	9
	.4byte		.L11481
	.uleb128	44
	.uleb128	14
	.4byte		.L11482-.L2
	.byte		"Os_CounterStatStruct"
	.byte		0
	.uleb128	48
.L481:
	.sleb128	8
	.byte		"Os_CounterKind"
	.byte		0
	.4byte		.L11483
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L482:
	.sleb128	8
	.byte		"Os_CounterMaxAllowedValue"
	.byte		0
	.4byte		.L11408
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L483:
	.sleb128	8
	.byte		"Os_CounterMinCycle"
	.byte		0
	.4byte		.L11408
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L484:
	.sleb128	8
	.byte		"Os_CounterTicksPerBase"
	.byte		0
	.4byte		.L11408
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L485:
	.sleb128	8
	.byte		"Os_CounterPoolSize"
	.byte		0
	.4byte		.L11486
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L486:
	.sleb128	8
	.byte		"Os_CounterRegistry"
	.byte		0
	.4byte		.L11487
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L487:
	.sleb128	8
	.byte		"Os_CounterEPs"
	.byte		0
	.4byte		.L11491
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L488:
	.sleb128	8
	.byte		"Os_CounterActions"
	.byte		0
	.4byte		.L11495
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L489:
	.sleb128	8
	.byte		"Os_TimerId"
	.byte		0
	.4byte		.L11499
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L490:
	.sleb128	8
	.byte		"Os_CounterCoreId"
	.byte		0
	.4byte		.L11377
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L491:
	.sleb128	8
	.byte		"Os_CounterAppAccess"
	.byte		0
	.4byte		.L11436
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L492:
	.sleb128	8
	.byte		"Os_CounterOwnerApp"
	.byte		0
	.4byte		.L11440
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11482:
.L11490:
	.sleb128	9
	.4byte		.L11481
	.uleb128	44
	.uleb128	14
	.4byte		.L11501-.L2
	.byte		"Os_CounterDynStruct"
	.byte		0
	.uleb128	16
.L477:
	.sleb128	8
	.byte		"Os_CounterValue"
	.byte		0
	.4byte		.L11409
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L478:
	.sleb128	8
	.byte		"Os_CounterNextEP"
	.byte		0
	.4byte		.L11492
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L479:
	.sleb128	8
	.byte		"Os_CounterNextFreeEP"
	.byte		0
	.4byte		.L11492
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L480:
	.sleb128	8
	.byte		"Os_CounterNextFreeAction"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11501:
.L11494:
	.sleb128	9
	.4byte		.L11481
	.uleb128	44
	.uleb128	14
	.4byte		.L11502-.L2
	.byte		"Os_CounterEPStruct"
	.byte		0
	.uleb128	16
.L473:
	.sleb128	8
	.byte		"Os_CounterEPDueValue"
	.byte		0
	.4byte		.L11409
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L474:
	.sleb128	8
	.byte		"Os_CounterNextAction"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L475:
	.sleb128	8
	.byte		"Os_CounterLastAction"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L476:
	.sleb128	8
	.byte		"Os_CounterEPNextEP"
	.byte		0
	.4byte		.L11492
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11502:
.L11498:
	.sleb128	9
	.4byte		.L11481
	.uleb128	44
	.uleb128	14
	.4byte		.L11503-.L2
	.byte		"Os_CounterEPActionStruct"
	.byte		0
	.uleb128	12
.L470:
	.sleb128	8
	.byte		"Os_CounterActionOwner"
	.byte		0
	.4byte		.L11504
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L471:
	.sleb128	8
	.byte		"Os_CounterActionObject"
	.byte		0
	.4byte		.L11383
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L472:
	.sleb128	8
	.byte		"Os_CounterActionNextAction"
	.byte		0
	.4byte		.L11496
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11503:
.L11444:
	.sleb128	9
	.4byte		.L11506
	.uleb128	52
	.uleb128	1
	.4byte		.L11507-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L430:
	.sleb128	8
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11508
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L431:
	.sleb128	8
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11512
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L432:
	.sleb128	8
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11473
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L433:
	.sleb128	8
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11516
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L434:
	.sleb128	8
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11519
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L435:
	.sleb128	8
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11525
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L436:
	.sleb128	8
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11530
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L437:
	.sleb128	8
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11535
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L438:
	.sleb128	8
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11538
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L439:
	.sleb128	8
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11540
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L440:
	.sleb128	8
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11544
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L441:
	.sleb128	8
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11377
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11507:
.L11511:
	.sleb128	7
	.4byte		.L11506
	.uleb128	52
	.uleb128	1
	.4byte		.L11548-.L2
	.uleb128	1
.L429:
	.sleb128	8
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11549
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11548:
.L11420:
	.sleb128	7
	.4byte		.L11550
	.uleb128	50
	.uleb128	1
	.4byte		.L11551-.L2
	.uleb128	8
.L371:
	.sleb128	8
	.byte		"Os_ObjStartId"
	.byte		0
	.4byte		.L11383
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L372:
	.sleb128	8
	.byte		"Os_ObjEndId"
	.byte		0
	.4byte		.L11383
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11551:
	.section	.debug_info,,n
.L11448:
	.sleb128	10
	.4byte		.L11414
	.uleb128	121
	.uleb128	1
	.4byte		.L11552-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"OS_ALARM_RELATIVE"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"OS_ALARM_ABSOLUTE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11552:
.L11458:
	.sleb128	10
	.4byte		.L11414
	.uleb128	96
	.uleb128	1
	.4byte		.L11553-.L2
	.uleb128	4
	.sleb128	11
	.byte		"OS_ALARM_OFF"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"OS_ALARM_SET"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11553:
.L11452:
	.sleb128	10
	.4byte		.L11414
	.uleb128	37
	.uleb128	1
	.4byte		.L11554-.L2
	.uleb128	4
	.sleb128	11
	.byte		"Os_AlarmAction_ActivateTask"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"Os_AlarmAction_IncrementCounter"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"Os_AlarmAction_SetEvent"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11554:
	.section	.debug_info,,n
.L11505:
	.sleb128	12
	.4byte		.L11481
	.uleb128	44
	.uleb128	14
	.4byte		.L11555-.L2
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
.L11555:
.L11485:
	.sleb128	12
	.4byte		.L11481
	.uleb128	36
	.uleb128	14
	.4byte		.L11556-.L2
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
.L11556:
.L11518:
	.sleb128	10
	.4byte		.L11506
	.uleb128	52
	.uleb128	1
	.4byte		.L11557-.L2
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
.L11557:
	.section	.debug_info,,n
.L11375:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L11374:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L11375
.L11373:
	.sleb128	14
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11374
.L11380:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11379:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L11380
.L11378:
	.sleb128	14
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11379
	.section	.debug_info,,n
.L11377:
	.sleb128	15
	.4byte		.L11378
.L11383:
	.sleb128	14
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11374
.L11393:
	.sleb128	14
	.byte		"Os_AlarmStatType"
	.byte		0
	.4byte		.L11394
.L11392:
	.sleb128	15
	.4byte		.L11393
	.section	.debug_info,,n
.L11391:
	.sleb128	16
	.4byte		.L11392
.L11390:
	.sleb128	15
	.4byte		.L11391
.L11404:
	.sleb128	14
	.byte		"Os_CounterStatType"
	.byte		0
	.4byte		.L11405
.L11403:
	.sleb128	15
	.4byte		.L11404
.L11402:
	.sleb128	16
	.4byte		.L11403
.L11401:
	.sleb128	15
	.4byte		.L11402
.L11409:
	.sleb128	14
	.byte		"TickType"
	.byte		0
	.4byte		.L11374
.L11408:
	.sleb128	15
	.4byte		.L11409
.L11419:
	.sleb128	14
	.byte		"Os_ObjectRangeType"
	.byte		0
	.4byte		.L11420
.L11418:
	.sleb128	15
	.4byte		.L11419
	.section	.debug_info,,n
.L11416:
	.sleb128	17
	.4byte		.L11417-.L2
	.4byte		.L11418
	.section	.debug_info,,n
	.sleb128	18
	.uleb128	1
	.sleb128	0
.L11417:
.L11424:
	.sleb128	14
	.byte		"Os_AlarmDynType"
	.byte		0
	.4byte		.L11425
.L11423:
	.sleb128	16
	.4byte		.L11424
.L11422:
	.sleb128	15
	.4byte		.L11423
.L11429:
	.sleb128	14
	.byte		"Os_AlarmActionType"
	.byte		0
	.4byte		.L11430
.L11428:
	.sleb128	15
	.4byte		.L11429
.L11427:
	.sleb128	16
	.4byte		.L11428
.L11426:
	.sleb128	15
	.4byte		.L11427
.L11434:
	.sleb128	14
	.byte		"Os_AlarmAutoStartType"
	.byte		0
	.4byte		.L11435
.L11433:
	.sleb128	15
	.4byte		.L11434
.L11432:
	.sleb128	16
	.4byte		.L11433
.L11431:
	.sleb128	15
	.4byte		.L11432
.L11439:
	.sleb128	14
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11374
.L11438:
	.sleb128	15
	.4byte		.L11439
.L11437:
	.sleb128	16
	.4byte		.L11438
.L11436:
	.sleb128	15
	.4byte		.L11437
.L11443:
	.sleb128	14
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11444
.L11442:
	.sleb128	15
	.4byte		.L11443
.L11441:
	.sleb128	16
	.4byte		.L11442
.L11440:
	.sleb128	15
	.4byte		.L11441
.L11447:
	.sleb128	14
	.byte		"Os_AlarmStartKindType"
	.byte		0
	.4byte		.L11448
.L11446:
	.sleb128	15
	.4byte		.L11447
.L11451:
	.sleb128	14
	.byte		"Os_AlarmActionKindType"
	.byte		0
	.4byte		.L11452
.L11450:
	.sleb128	15
	.4byte		.L11451
.L11454:
	.sleb128	14
	.byte		"Os_AlarmActionDataType"
	.byte		0
	.4byte		.L11455
.L11453:
	.sleb128	15
	.4byte		.L11454
.L11457:
	.sleb128	14
	.byte		"Os_AlarmStateType"
	.byte		0
	.4byte		.L11458
.L11461:
	.sleb128	14
	.byte		"Os_AlarmActionSeEventType"
	.byte		0
	.4byte		.L11462
.L11460:
	.sleb128	15
	.4byte		.L11461
.L11464:
	.sleb128	14
	.byte		"Os_AlarmActionActivateTaskType"
	.byte		0
	.4byte		.L11465
.L11463:
	.sleb128	15
	.4byte		.L11464
.L11467:
	.sleb128	14
	.byte		"Os_AlarmActionIncrementCounterType"
	.byte		0
	.4byte		.L11468
.L11466:
	.sleb128	15
	.4byte		.L11467
.L11471:
	.sleb128	14
	.byte		"CounterType"
	.byte		0
	.4byte		.L11374
.L11470:
	.sleb128	15
	.4byte		.L11471
.L11475:
	.sleb128	14
	.byte		"ProcType"
	.byte		0
	.4byte		.L11383
.L11474:
	.sleb128	14
	.byte		"TaskType"
	.byte		0
	.4byte		.L11475
.L11473:
	.sleb128	15
	.4byte		.L11474
.L11479:
	.sleb128	13
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11478:
	.sleb128	14
	.byte		"uint64"
	.byte		0
	.4byte		.L11479
.L11477:
	.sleb128	14
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11478
.L11476:
	.sleb128	15
	.4byte		.L11477
.L11484:
	.sleb128	14
	.byte		"Os_CounterKindType"
	.byte		0
	.4byte		.L11485
.L11483:
	.sleb128	15
	.4byte		.L11484
.L11486:
	.sleb128	15
	.4byte		.L11383
.L11489:
	.sleb128	14
	.byte		"Os_CounterDynType"
	.byte		0
	.4byte		.L11490
.L11488:
	.sleb128	16
	.4byte		.L11489
.L11487:
	.sleb128	15
	.4byte		.L11488
.L11493:
	.sleb128	14
	.byte		"Os_CounterEPType"
	.byte		0
	.4byte		.L11494
.L11492:
	.sleb128	16
	.4byte		.L11493
.L11491:
	.sleb128	15
	.4byte		.L11492
.L11497:
	.sleb128	14
	.byte		"Os_CounterEPActionType"
	.byte		0
	.4byte		.L11498
.L11496:
	.sleb128	16
	.4byte		.L11497
.L11495:
	.sleb128	15
	.4byte		.L11496
.L11500:
	.sleb128	14
	.byte		"Os_TimerType"
	.byte		0
	.4byte		.L11374
.L11499:
	.sleb128	15
	.4byte		.L11500
.L11504:
	.sleb128	14
	.byte		"Os_CounterActionOwnerType"
	.byte		0
	.4byte		.L11505
.L11510:
	.sleb128	14
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11511
.L11509:
	.sleb128	16
	.4byte		.L11510
.L11508:
	.sleb128	15
	.4byte		.L11509
.L11515:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11514:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L11515
.L11513:
	.sleb128	14
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11514
.L11512:
	.sleb128	15
	.4byte		.L11513
.L11517:
	.sleb128	14
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11518
.L11516:
	.sleb128	15
	.4byte		.L11517
	.section	.debug_info,,n
.L11522:
	.sleb128	19
	.4byte		.L11523-.L2
	.byte		0x1
.L11524:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11514
	.section	.debug_info,,n
	.sleb128	20
	.4byte		.L11524
	.sleb128	0
.L11523:
.L11521:
	.sleb128	16
	.4byte		.L11522
.L11520:
	.sleb128	14
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11521
.L11519:
	.sleb128	15
	.4byte		.L11520
.L11528:
	.sleb128	19
	.4byte		.L11529-.L2
	.byte		0x1
	.sleb128	0
.L11529:
.L11527:
	.sleb128	16
	.4byte		.L11528
.L11526:
	.sleb128	14
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11527
.L11525:
	.sleb128	15
	.4byte		.L11526
.L11533:
	.sleb128	19
	.4byte		.L11534-.L2
	.byte		0x1
	.sleb128	20
	.4byte		.L11524
	.sleb128	0
.L11534:
.L11532:
	.sleb128	16
	.4byte		.L11533
.L11531:
	.sleb128	14
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11532
.L11530:
	.sleb128	15
	.4byte		.L11531
.L11537:
	.sleb128	15
	.4byte		.L11475
.L11536:
	.sleb128	16
	.4byte		.L11537
.L11535:
	.sleb128	15
	.4byte		.L11536
.L11539:
	.sleb128	16
	.4byte		.L11470
.L11538:
	.sleb128	15
	.4byte		.L11539
.L11543:
	.sleb128	14
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11383
.L11542:
	.sleb128	15
	.4byte		.L11543
.L11541:
	.sleb128	16
	.4byte		.L11542
.L11540:
	.sleb128	15
	.4byte		.L11541
.L11547:
	.sleb128	14
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11374
.L11546:
	.sleb128	15
	.4byte		.L11547
.L11545:
	.sleb128	16
	.4byte		.L11546
.L11544:
	.sleb128	15
	.4byte		.L11545
.L11549:
	.sleb128	14
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11514
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11365:
	.sleb128	0
.L11361:

	.section	.debug_loc,,n
	.align	0
.L11376:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L11381:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),30
	.d2locend
.L11384:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo4),29
	.d2locend
.L11395:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),28
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),5
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),28
	.d2locend
.L11406:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo16),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo12),27
	.d2locend
.L11410:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),0
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),0
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo12),4
	.d2locend
.L11412:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo27),26
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo28),0
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo12),26
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_Alarm_AutoStart"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "Os_Access_Check","Os_CounterRegisterIndication","Os_CounterRel2Abs","Os_CounterStopAndGetValue"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Alarm_Autostart.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Alarm_Autostart.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Alarm_Autostart.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_Alarm_Autostart.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_Alarm_Autostart.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_Alarm_Autostart.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\expiry_element\alarms\Os_Alarm_Autostart.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
