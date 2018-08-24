#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"LinIf_FrameHandler.c"
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
# FUNC(const LinIfEntry *, LINIF_CODE) LinIf_GetNextScheduleEntry
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_FrameHandler.c"
        .d2line         350,38
#$$ld
.L322:

#$$bf	LinIf_GetNextScheduleEntry,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6
	.d2_cfa_start __cie
LinIf_GetNextScheduleEntry:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# crntChannel_p=r4 crntChannel_p=r3
	.d2prologue_end
#     (CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p)
# {
# 
#     /* Get the schedule table index */
#     CONST(LinIf_SchHandleType, AUTOMATIC) schIndex =
	.d2line		355
.Llo2:
	lwz		r3,28(r4)		# CrntScheduleTable_p=r3 crntChannel_p=r4
.Llo3:
	lbz		r3,12(r3)		# CrntScheduleTable_p=r3 CrntScheduleTable_p=r3
.Llo5:
	mr		r3,r3		# schIndex=r3 schIndex=r3
#         crntChannel_p->LinIf_channelManager_p->LinIf_ScheduleTableIndex;
# 
#     /* Pointer to hold the current channel relocatable config */
#     CONSTP2CONST(LinIfChannelReloc,AUTOMATIC, LINIF_CONST) LinIf_Channel_Reloc_p =
	.d2line		359
	lbz		r5,12(r4)		# crntChannel_p=r4
	lis		r4,LinIf_ConfigChannel_Reloc_p@ha		# crntChannel_p=r4
	lwz		r4,LinIf_ConfigChannel_Reloc_p@l(r4)		# crntChannel_p=r4 crntChannel_p=r4
	rlwinm		r6,r5,5,0,26
	se_slwi		r5,3
	subf		r5,r5,r6
	se_add		r4,r5		# crntChannel_p=r4 crntChannel_p=r4
.Llo4:
	mr		r4,r4		# LinIf_Channel_Reloc_p=r4 LinIf_Channel_Reloc_p=r4
#         &(LinIf_ConfigChannel_Reloc_p[crntChannel_p->LinIfChannelIndex]);
# 
#     /* Get the Schedule table of the current channel */
#     CONSTP2CONST (LinIfScheduleTable, AUTOMATIC, LINIF_APPL_CONST) CrntScheduleTable_p =
	.d2line		363
	lwz		r5,8(r4)		# LinIf_Channel_Reloc_p=r4
	rlwinm		r6,r3,0,24,31		# schIndex=r3
	e_mulli		r3,r6,20		# schIndex=r3
	se_add		r3,r5		# schIndex=r3 schIndex=r3
.Llo6:
	mr		r3,r3		# CrntScheduleTable_p=r3 CrntScheduleTable_p=r3
#         &(LinIf_Channel_Reloc_p->LinIfScheduleTable_p[schIndex]);
# 
#     /* Get the Schedule entry Index of the current schedule entry */
#     CONST (uint8, AUTOMATIC) EntryIndex_u8 =
	.d2line		367
	lwz		r4,20(r4)		# LinIf_Channel_Reloc_p=r4 LinIf_Channel_Reloc_p=r4
	lbzx		r4,r4,r6		# LinIf_Channel_Reloc_p=r4 LinIf_Channel_Reloc_p=r4
.Llo7:
	mr		r4,r4		# EntryIndex_u8=r4 EntryIndex_u8=r4
#         LinIf_Channel_Reloc_p->LinIf_ScheduleTableEntry_p[schIndex];
# 
#     /* Get the Schedule entry of the current schedule table */
#     return &(CrntScheduleTable_p->LinIfEntry_p[EntryIndex_u8]);
	.d2line		371
	lwz		r3,16(r3)		# CrntScheduleTable_p=r3 CrntScheduleTable_p=r3
	rlwinm		r4,r4,3,21,28		# EntryIndex_u8=r4 EntryIndex_u8=r4
	se_add		r3,r4		# CrntScheduleTable_p=r3 CrntScheduleTable_p=r3 EntryIndex_u8=r4
# 
# }/* End of LinIf_GetNextScheduleEntry */
	.d2line		373
	.d2epilogue_begin
.Llo8:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo9:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L323:
	.type		LinIf_GetNextScheduleEntry,@function
	.size		LinIf_GetNextScheduleEntry,.-LinIf_GetNextScheduleEntry
# Number of nodes = 51

# Allocations for LinIf_GetNextScheduleEntry
#	?a4		crntChannel_p
#	?a5		$$84
#	?a6		schIndex
#	?a7		LinIf_Channel_Reloc_p
#	?a8		CrntScheduleTable_p
#	?a9		EntryIndex_u8
# FUNC (void, LINIF_CODE) LinIf_setHeaderInfo(CONSTP2VAR (Lin_PduType, AUTOMATIC, LINIF_APPL_DATA) lin_PduInfo,
	.align		1
	.section	.text_vle
        .d2line         384,25
#$$ld
.L361:

#$$bf	LinIf_setHeaderInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
LinIf_setHeaderInfo:
.Llo10:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# lin_PduInfo=r3 lin_PduInfo=r3
	mr		r5,r4		# frameRef=r5 frameRef=r4
	.d2prologue_end
#         CONSTP2CONST (LinIfFrame, AUTOMATIC, LINIF_APPL_DATA) frameRef)
# {
#     lin_PduInfo->Pid = frameRef->LinIfPid;
	.d2line		387
.Llo12:
	lbz		r4,9(r5)		# frameRef=r5
.Llo13:
	stb		r4,0(r3)		# lin_PduInfo=r3
#     lin_PduInfo->Cs  = frameRef->LinIfChecksumType;
	.d2line		388
	lbz		r4,0(r5)		# frameRef=r5
	stb		r4,1(r3)		# lin_PduInfo=r3
#     lin_PduInfo->Drc = frameRef->LinIfPduDirection;
	.d2line		389
	lbz		r4,12(r5)		# frameRef=r5
	stb		r4,2(r3)		# lin_PduInfo=r3
#     lin_PduInfo->Dl  = frameRef->LinIfLength;
	.d2line		390
	lbz		r4,8(r5)		# frameRef=r5
	stb		r4,3(r3)		# lin_PduInfo=r3
# }
	.d2line		391
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo11:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L362:
	.type		LinIf_setHeaderInfo,@function
	.size		LinIf_setHeaderInfo,.-LinIf_setHeaderInfo
# Number of nodes = 32

# Allocations for LinIf_setHeaderInfo
#	?a4		lin_PduInfo
#	?a5		frameRef
# FUNC (Std_ReturnType, LINIF_CODE) LinIf_sendFrame (CONSTP2VAR (Lin_PduType, AUTOMATIC, LINIF_APPL_DATA) PduInfoPtr,
	.align		1
	.section	.text_vle
        .d2line         406,35
#$$ld
.L377:

#$$bf	LinIf_sendFrame,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
LinIf_sendFrame:
.Llo14:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r6,r3		# PduInfoPtr=r6 PduInfoPtr=r3
.Llo15:
	mr		r4,r4		# crntChannel_p=r4 crntChannel_p=r4
.Llo16:
	mr		r7,r5		# Entry_p=r7 Entry_p=r5
	.d2prologue_end
#               CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p,
#               CONSTP2CONST (LinIfEntry, AUTOMATIC, LINIF_APPL_CONST) Entry_p)
# {
#     CONSTP2VAR (LinIfChannelManager, AUTOMATIC, LINIF_APPL_DATA) channelManager_p = crntChannel_p->LinIf_channelManager_p;
	.d2line		410
	lwz		r3,28(r4)		# crntChannel_p=r4
.Llo21:
	mr		r3,r3		# channelManager_p=r3 channelManager_p=r3
#     /* Get the Schedule table of the current channel */
#     CONSTP2CONST (LinIf_LinDrvCalls_t, AUTOMATIC, LINIF_APPL_CONST) linDrvCalls = crntChannel_p->LinDrvCalls_p;
	.d2line		412
	lwz		r5,24(r4)		# crntChannel_p=r4
.Llo19:
	mr		r5,r5		# linDrvCalls=r5 linDrvCalls=r5
# 
#     if (LIN_MASTER_RESPONSE == PduInfoPtr->Drc)
	.d2line		414
	lbz		r0,2(r6)		# PduInfoPtr=r6
	se_cmpi		r0,0
	bc		0,2,.L296	# ne
#     {
#         channelManager_p->LinIf_BusStatus.LinIf_frameStatus = LINIF_FRAME_TX_ONGOING;
	.d2line		416
.Llo20:
	diab.li		r0,2
	stw		r0,24(r3)		# channelManager_p=r3
	b		.L297
.L296:
#     }
#     else /* LIN_SLAVE_RESPONSE or LIN_SLAVE_TO_SLAVE */
#     {
#         channelManager_p->LinIf_BusStatus.LinIf_frameStatus = LINIF_FRAME_RX_ONGOING;
	.d2line		420
	diab.li		r0,1
	stw		r0,24(r3)		# channelManager_p=r3
.L297:
#     }
#     /* store Entry point for LinIf_FrameStatusManager() which handles Rx/Tx indication/confirmation */
#     channelManager_p->LinIf_BusStatus.LinIf_frameEntry_p = Entry_p;
	.d2line		423
	stw		r7,28(r3)		# channelManager_p=r3 Entry_p=r7
# 
#     /*[LINIF462]*/ /*[LINIF129]*/ /*[LINIF419]*/
#     return (linDrvCalls)->Lin_SendFrame_p( LinIf_ChannelIdentifier_p[crntChannel_p->LinIfChannelIndex].LinIfChannelRef,PduInfoPtr );
	.d2line		426
	lwz		r0,0(r5)		# linDrvCalls=r5
	mtspr		ctr,r0
	lis		r3,LinIf_ChannelIdentifier_p@ha		# channelManager_p=r3
	lwz		r3,LinIf_ChannelIdentifier_p@l(r3)		# channelManager_p=r3 channelManager_p=r3
	lbz		r0,12(r4)		# crntChannel_p=r4
	e_mulli		r0,r0,3
	se_add		r3,r0		# channelManager_p=r3 channelManager_p=r3
	lbz		r3,2(r3)		# channelManager_p=r3 channelManager_p=r3
.Llo22:
	mr		r4,r6		# PduInfoPtr=r4 PduInfoPtr=r6
.Llo18:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo17:
	rlwinm		r3,r3,0,24,31		# channelManager_p=r3 channelManager_p=r3
# }
	.d2line		427
	.d2epilogue_begin
.Llo23:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L378:
	.type		LinIf_sendFrame,@function
	.size		LinIf_sendFrame,.-LinIf_sendFrame
# Number of nodes = 59

# Allocations for LinIf_sendFrame
#	?a4		PduInfoPtr
#	?a5		crntChannel_p
#	?a6		Entry_p
#	?a7		channelManager_p
#	?a8		linDrvCalls
# static FUNC (void, LINIF_CODE) LinIf_ExecuteUCFrames(CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p)
	.align		1
	.section	.text_vle
        .d2line         114,32
#$$ld
.L400:

#$$bf	LinIf_ExecuteUCFrames,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
LinIf_ExecuteUCFrames:
.Llo24:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r30,40(r1)		# offset r1+40  0x28
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# crntChannel_p=r31 crntChannel_p=r3
	.d2prologue_end
# {
#     /* Structure to hold the currently selected frames data */
#     VAR (Lin_PduType, AUTOMATIC) PduInfo_s;
# 
#     /*Return Value of functions*/
#     VAR(Std_ReturnType,LINIF_APPL_DATA) retVal = E_OK;
	.d2line		120
	diab.li		r7,0		# retVal=r7
# 
#     /* Temporary variable to store the address */
#     VAR (uint8, AUTOMATIC) dataBuffer[8];
# 
#     /* Get the current schedule entry */
#     CONSTP2CONST (LinIfEntry, AUTOMATIC, LINIF_APPL_CONST) Entry_p = LinIf_GetNextScheduleEntry (crntChannel_p);
	.d2line		126
.Llo28:
	mr		r3,r31		# crntChannel_p=r3 crntChannel_p=r31
.Llo25:
	bl		LinIf_GetNextScheduleEntry
	mr		r30,r3		# Entry_p=r30 Entry_p=r3
# 
#     /* Store the address */
#     PduInfo_s.SduPtr = dataBuffer;
	.d2line		129
.Llo33:
	diab.addi		r0,r1,24
.Llo34:
	stw		r0,12(r1)
# 
#     /* Set the Header Information before sending the frame and response */
#     LinIf_setHeaderInfo(&PduInfo_s, Entry_p->LinIfFrameRef);
	.d2line		132
	lwz		r4,4(r30)		# Entry_p=r30
	diab.addi		r3,r1,8
.Llo35:
	bl		LinIf_setHeaderInfo
# 
#     /* Check if frame direction is of data transmission type */
#     if (LIN_MASTER_RESPONSE == PduInfo_s.Drc)
	.d2line		135
	lbz		r0,10(r1)
	se_cmpi		r0,0
	bc		0,2,.L279	# ne
	.section	.text_vle
.L412:
#     {
#         /* The PduInfoPtr passed to PduR */
#         VAR (PduInfoType, AUTOMATIC) linIfInfo;
# 
#         CONST(uint16,AUTOMATIC) LinIfFrameFunctionIndex = Entry_p->LinIfFrameRef->LinIfFunctionIndex;
	.d2line		140
.Llo26:
	lwz		r3,4(r30)		# LinIfFrameFunctionIndex=r3 Entry_p=r30
.Llo36:
	lhz		r3,30(r3)		# LinIfFrameFunctionIndex=r3 LinIfFrameFunctionIndex=r3
	mr		r3,r3		# LinIfFrameFunctionIndex=r3 LinIfFrameFunctionIndex=r3
# 
#         /* Prepare buffer */
#         linIfInfo.SduLength = (PduLengthType) PduInfo_s.Dl;
	.d2line		143
	lbz		r0,11(r1)
	sth		r0,20(r1)
#         linIfInfo.SduDataPtr = PduInfo_s.SduPtr;
	.d2line		144
	lwz		r0,12(r1)
	stw		r0,16(r1)
# 
#         /* Get the data from PDU Router */
#         retVal = LinIfFrameFunctions_p[LinIfFrameFunctionIndex].User_LinIfTriggerTransmit_p /*[LINIF225]*/
	.d2line		147
	rlwinm		r0,r3,0,16,31		# LinIfFrameFunctionIndex=r3
	lis		r3,LinIfFrameFunctions_p@ha		# LinIfFrameFunctionIndex=r3
	lwz		r4,LinIfFrameFunctions_p@l(r3)		# LinIfFrameFunctionIndex=r3
	rlwinm		r3,r0,4,0,27		# LinIfFrameFunctionIndex=r3
	se_slwi		r0,2
	subf		r0,r0,r3		# LinIfFrameFunctionIndex=r3
	se_add		r4,r0
	lwz		r0,8(r4)
	mtspr		ctr,r0
	lwz		r3,4(r30)		# LinIfFrameFunctionIndex=r3 Entry_p=r30
	lhz		r3,10(r3)		# LinIfFrameFunctionIndex=r3 LinIfFrameFunctionIndex=r3
.Llo37:
	diab.addi		r4,r1,16
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo29:
	mr		r7,r3		# retVal=r7 retVal=r3
#             (Entry_p->LinIfFrameRef->LinIfTxConfirmationId, &linIfInfo);
# 
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#         if(retVal != E_OK)
#         {
#             (void)Det_ReportError (LINIF_MODULE_ID,
#                                    LINIF_INSTANCE_ID,
#                                    LINIF_MAIN_FUN_ID,
#                                    LINIF_E_RESPONSE);
#         }
# #endif
# 
#         /* Use the length given by the upper layer in transmission */
#         PduInfo_s.Dl = (Lin_FrameDlType)linIfInfo.SduLength;
	.d2line		161
	lhz		r0,20(r1)
	stb		r0,11(r1)
	.section	.text_vle
.L413:
.L279:
#     }
# 
#     if(E_NOT_OK != retVal)
	.d2line		164
.Llo30:
	rlwinm		r7,r7,0,24,31		# retVal=r7 retVal=r7
.Llo31:
	se_cmpi		r7,1		# retVal=r7
	bc		1,2,.L278	# eq
#     {
#         /* Send Data to the Driver */
#         (void)LinIf_sendFrame (&PduInfo_s, crntChannel_p, Entry_p);  /*[LINIF224]*/ /*[LINIF226]*/ /*[LINIF416]*/
	.d2line		167
.Llo32:
	diab.addi		r3,r1,8		# LinIfFrameFunctionIndex=r3
	mr		r4,r31		# crntChannel_p=r4 crntChannel_p=r31
	mr		r5,r30		# Entry_p=r5 Entry_p=r30
	bl		LinIf_sendFrame
.L278:
#     }
# }/* End of LinIf_ExecuteUCFrames() */
	.d2line		169
	.d2epilogue_begin
.Llo27:
	lmw		r30,40(r1)		# offset r1+40  0x28
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L401:
	.type		LinIf_ExecuteUCFrames,@function
	.size		LinIf_ExecuteUCFrames,.-LinIf_ExecuteUCFrames
# Number of nodes = 115

# Allocations for LinIf_ExecuteUCFrames
#	?a4		crntChannel_p
#	?a5		$$85
#	SP,8		PduInfo_s
#	?a6		retVal
#	SP,24		dataBuffer
#	?a7		Entry_p
#	SP,16		linIfInfo
#	?a8		LinIfFrameFunctionIndex
# static FUNC (void, LINIF_CODE) LinIf_ExecuteSPFrames(
	.align		1
	.section	.text_vle
        .d2line         179,32
#$$ld
.L426:

#$$bf	LinIf_ExecuteSPFrames,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
LinIf_ExecuteSPFrames:
.Llo38:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
	stmw		r29,52(r1)		# offset r1+52  0x34
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,68(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# crntChannel_p=r31 crntChannel_p=r3
	.d2prologue_end
#         CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p)
# {
#     /* Index to check which sporadic frame is ready */
#     VAR (uint16, AUTOMATIC) sporadicIndex = LINIF_INVALID_FRAME_INDEX;
	.d2line		183
.Llo39:
	diab.li		r0,65535
.Llo40:
	sth		r0,8(r1)
# 
#     /*Return Value of functions*/
#     VAR(Std_ReturnType,AUTOMATIC) retVal = E_OK;
	.d2line		186
	diab.li		r30,0		# retVal=r30
# 
#     /* Get the current schedule entry */
#     CONSTP2CONST (LinIfEntry, AUTOMATIC, LINIF_APPL_CONST) Entry_p
	.d2line		189
.Llo42:
	mr		r3,r31		# crntChannel_p=r3 crntChannel_p=r31
	bl		LinIf_GetNextScheduleEntry
	mr		r29,r3		# Entry_p=r29 Entry_p=r3
#             = LinIf_GetNextScheduleEntry (crntChannel_p);
# 
#     /* Get the sporadic frame */
#     P2CONST (LinIfFrame, AUTOMATIC, LINIF_APPL_CONST) FrameInfo_p
	.d2line		193
.Llo48:
	lwz		r4,4(r29)		# Entry_p=r29
.Llo49:
	mr		r4,r4		# FrameInfo_p=r4 FrameInfo_p=r4
#             = Entry_p->LinIfFrameRef;
# 
#     /* Get the sporadic frame to transmit in the frame slot */
#     LinIf_GetSporadicSlotFrame(crntChannel_p,FrameInfo_p,&sporadicIndex); /*[LINIF471] [LINIF014]*/
	.d2line		197
	diab.addi		r5,r1,8
	mr		r3,r31		# crntChannel_p=r3 crntChannel_p=r31
.Llo50:
	mr		r4,r4		# FrameInfo_p=r4 FrameInfo_p=r4
.Llo52:
	bl		LinIf_GetSporadicSlotFrame
# 
#     /* Check whether any frame is ready to transmit */
#     if (LINIF_INVALID_FRAME_INDEX != sporadicIndex) /*[LINIF436]*/
	.d2line		200
	lhz		r0,8(r1)
	cmpli		0,0,r0,65535
	bc		1,2,.L283	# eq
	.section	.text_vle
.L437:
#     {
#         /* Pointer to hold the current channel relocatable config */
#         CONSTP2CONST(LinIfChannelReloc,AUTOMATIC, LINIF_CONST)LinIf_Channel_Reloc_p =
	.d2line		203
.Llo51:
	lbz		r0,12(r31)		# crntChannel_p=r31
	lis		r3,LinIf_ConfigChannel_Reloc_p@ha		# LinIf_Channel_Reloc_p=r3
.Llo55:
	lwz		r3,LinIf_ConfigChannel_Reloc_p@l(r3)		# LinIf_Channel_Reloc_p=r3 LinIf_Channel_Reloc_p=r3
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r4
	se_add		r0,r3		# LinIf_Channel_Reloc_p=r3
	mr		r3,r0		# LinIf_Channel_Reloc_p=r3 LinIf_Channel_Reloc_p=r0
#                 &(LinIf_ConfigChannel_Reloc_p[crntChannel_p->LinIfChannelIndex]);
# 
#         /* Structure to hold the currently selected frames data */
#         VAR (Lin_PduType, AUTOMATIC) PduInfo_s;
# 
#         /* Variable to store temp address */
#         VAR (uint8, AUTOMATIC) dataBuffer[LINIF_FRAME_DATA_BYTE];
# 
#         /* Get the frame pointer */
#         FrameInfo_p = &(LinIf_Channel_Reloc_p->LinIfFrame_p[sporadicIndex]);
	.d2line		213
.Llo56:
	lwz		r6,4(r3)		# LinIf_Channel_Reloc_p=r3
.Llo57:
	lhz		r0,8(r1)
.Llo58:
	rlwinm		r0,r0,5,11,26
	se_add		r0,r6
.Llo53:
	mr		r6,r0		# FrameInfo_p=r6 FrameInfo_p=r0
# 
#         /* Set the Header Information before sending the frame and response */
#         LinIf_setHeaderInfo(&PduInfo_s, FrameInfo_p);
	.d2line		216
	diab.addi		r3,r1,12		# LinIf_Channel_Reloc_p=r3
	mr		r4,r6		# FrameInfo_p=r4 FrameInfo_p=r6
	bl		LinIf_setHeaderInfo
# 
#         /* Store the temp address */
#         PduInfo_s.SduPtr = dataBuffer;
	.d2line		219
.Llo54:
	diab.addi		r0,r1,28
	stw		r0,16(r1)
# 
#         /* Check if frame direction is of data transmission type */
#         if (LIN_MASTER_RESPONSE == PduInfo_s.Drc)
	.d2line		222
	lbz		r0,14(r1)
	se_cmpi		r0,0
	bc		0,2,.L285	# ne
	.section	.text_vle
.L447:
#         {
#             /* The PduInfoPtr passed to PduR */
#             VAR (PduInfoType, AUTOMATIC) info;
# 
#             /*Index of LinIf framefunction*/
#             CONST(uint16,AUTOMATIC) LinIfFrameFunctionIndex =  FrameInfo_p->LinIfFunctionIndex;
	.d2line		228
.Llo43:
	lhz		r3,30(r6)		# LinIf_Channel_Reloc_p=r3 FrameInfo_p=r6
.Llo59:
	mr		r3,r3		# LinIfFrameFunctionIndex=r3 LinIfFrameFunctionIndex=r3
# 
#             info.SduLength = (PduLengthType) PduInfo_s.Dl;
	.d2line		230
	lbz		r0,15(r1)
	sth		r0,24(r1)
#             info.SduDataPtr = PduInfo_s.SduPtr;
	.d2line		231
	lwz		r0,16(r1)
	stw		r0,20(r1)
# 
#             /* Get the data from PDU Router */
#             retVal = LinIfFrameFunctions_p[LinIfFrameFunctionIndex].User_LinIfTriggerTransmit_p(
	.d2line		234
	rlwinm		r0,r3,0,16,31		# LinIfFrameFunctionIndex=r3
	lis		r3,LinIfFrameFunctions_p@ha		# LinIfFrameFunctionIndex=r3
	lwz		r4,LinIfFrameFunctions_p@l(r3)		# LinIfFrameFunctionIndex=r3
	rlwinm		r3,r0,4,0,27		# LinIfFrameFunctionIndex=r3
	se_slwi		r0,2
	subf		r0,r0,r3		# LinIfFrameFunctionIndex=r3
	se_add		r4,r0
	lwz		r0,8(r4)
	mtspr		ctr,r0
	lhz		r3,10(r6)		# LinIfFrameFunctionIndex=r3 FrameInfo_p=r6
.Llo60:
	diab.addi		r4,r1,20
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo44:
	mr		r30,r3		# retVal=r30 retVal=r3
	.section	.text_vle
.L448:
.L285:
#             FrameInfo_p->LinIfTxConfirmationId, &info); /*[LINIF225]*/
# 
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#             if(retVal != E_OK)
#             {
#                 (void)Det_ReportError (LINIF_MODULE_ID,LINIF_INSTANCE_ID,
#                 LINIF_MAIN_FUN_ID, LINIF_E_RESPONSE);
#             }
# #endif
#         }
# 
#         if (E_OK == retVal)
	.d2line		246
.Llo45:
	rlwinm		r30,r30,0,24,31		# retVal=r30 retVal=r30
.Llo46:
	se_cmpi		r30,0		# retVal=r30
	bc		0,2,.L283	# ne
#         {
#             /* Send Data to the Driver */
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#             retVal = LinIf_sendFrame(&PduInfo_s, crntChannel_p, Entry_p);  /*[LINIF224]*/ /*[LINIF226]*/
# #else
#             (void)LinIf_sendFrame(&PduInfo_s, crntChannel_p, Entry_p); /*[LINIF012]*/ /*[LINIF224]*/ /*[LINIF226]*/
	.d2line		252
.Llo47:
	diab.addi		r3,r1,12		# LinIf_Channel_Reloc_p=r3
	mr		r4,r31		# crntChannel_p=r4 crntChannel_p=r31
	mr		r5,r29		# Entry_p=r5 Entry_p=r29
	bl		LinIf_sendFrame
	.section	.text_vle
.L438:
.L283:
# #endif
#         }
# 
# #if ( LINIF_DEV_ERROR_DETECT == STD_ON )
#         if(retVal != E_OK)
#         {
#             (void)Det_ReportError (LINIF_MODULE_ID,LINIF_INSTANCE_ID,
#             LINIF_MAIN_FUN_ID, LINIF_E_RESPONSE);
#         }
# #endif
# 
#     }
#     /* else: if the sporadic frame is not pending for transmission */
# 
# } /* End of LinIf_ExecuteSPFrames( ) */
	.d2line		267
	.d2epilogue_begin
.Llo41:
	lmw		r29,52(r1)		# offset r1+52  0x34
	.d2_cfa_restore_list	3,10
	lwz		r0,68(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L427:
	.type		LinIf_ExecuteSPFrames,@function
	.size		LinIf_ExecuteSPFrames,.-LinIf_ExecuteSPFrames
# Number of nodes = 138

# Allocations for LinIf_ExecuteSPFrames
#	?a4		crntChannel_p
#	?a5		$$87
#	?a6		$$86
#	SP,8		sporadicIndex
#	?a7		retVal
#	?a8		Entry_p
#	?a9		FrameInfo_p
#	?a10		LinIf_Channel_Reloc_p
#	SP,12		PduInfo_s
#	SP,28		dataBuffer
#	SP,20		info
#	?a11		LinIfFrameFunctionIndex
# static FUNC (void, LINIF_CODE) LinIf_ExecuteFixedFrames(CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p)
	.align		1
	.section	.text_vle
        .d2line         278,32
#$$ld
.L456:

#$$bf	LinIf_ExecuteFixedFrames,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
LinIf_ExecuteFixedFrames:
.Llo61:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# crntChannel_p=r7 crntChannel_p=r3
	.d2prologue_end
# {
#     /* Structure to hold the currently selected frames data */
#     VAR (Lin_PduType, AUTOMATIC) PduInfo_s;
# 
#     /* Get the current schedule entry */
#     CONSTP2CONST (LinIfEntry, AUTOMATIC, LINIF_APPL_CONST) Entry_p = LinIf_GetNextScheduleEntry (crntChannel_p);
	.d2line		284
.Llo62:
	mr		r3,r7		# crntChannel_p=r3 crntChannel_p=r7
.Llo63:
	bl		LinIf_GetNextScheduleEntry
.Llo65:
	mr		r6,r3		# Entry_p=r6 Entry_p=r3
# 
#     /* PRQA S 0311 2 */ /* Verified suppression*/
#     /* Store the address */
#     PduInfo_s.SduPtr = (uint8*) &(Entry_p->LinIfFrameRef->LinIfFixedFrameSduData[0]);
	.d2line		288
.Llo66:
	lwz		r3,4(r6)		# Entry_p=r6
.Llo67:
	se_addi		r3,13
	stw		r3,12(r1)
# 
#     /* Set the Header Information before sending the frame and response */
#     LinIf_setHeaderInfo(&PduInfo_s, Entry_p->LinIfFrameRef);
	.d2line		291
	lwz		r4,4(r6)		# Entry_p=r6
	diab.addi		r3,r1,8
	bl		LinIf_setHeaderInfo
# 
#     /* Send Data to the Driver */
#     (void)LinIf_sendFrame (&PduInfo_s, crntChannel_p, Entry_p); /*[LINIF224]*/ /*[LINIF479]*/
	.d2line		294
	diab.addi		r3,r1,8
	mr		r4,r7		# crntChannel_p=r4 crntChannel_p=r7
	mr		r5,r6		# Entry_p=r5 Entry_p=r6
	bl		LinIf_sendFrame
# 
# }/* End of LinIf_ExecuteFixedFrames() */
	.d2line		296
	.d2epilogue_begin
.Llo64:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L457:
	.type		LinIf_ExecuteFixedFrames,@function
	.size		LinIf_ExecuteFixedFrames,.-LinIf_ExecuteFixedFrames
# Number of nodes = 37

# Allocations for LinIf_ExecuteFixedFrames
#	?a4		crntChannel_p
#	SP,8		PduInfo_s
#	?a5		Entry_p
# static FUNC (void, LINIF_CODE) LinIf_UpdateGlobalFrame (CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p)
	.align		1
	.section	.text_vle
        .d2line         306,32
#$$ld
.L465:

#$$bf	LinIf_UpdateGlobalFrame,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
LinIf_UpdateGlobalFrame:
.Llo68:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# crntChannel_p=r31 crntChannel_p=r3
	.d2prologue_end
# {
#     /* Pointer to Internal variables LinIfChannelManager */
#     CONSTP2VAR (LinIfChannelManager, AUTOMATIC, LINIF_APPL_DATA) channelManager_p = crntChannel_p->LinIf_channelManager_p;
	.d2line		309
	lwz		r30,28(r31)		# crntChannel_p=r31
.Llo72:
	mr		r30,r30		# channelManager_p=r30 channelManager_p=r30
# 
#     /* Exclusive area handling */
#     SchM_Enter_LinIf_ExclusiveArea0();
	.d2line		312
	bl		SchM_Enter_LinIf_ExclusiveArea0
	.section	.text_vle
.L471:
#     {
#         /* Variable for schedule index */
#         CONST(LinIf_SchHandleType, AUTOMATIC) scheduleIndex = channelManager_p->LinIf_ScheduleTableIndex;
	.d2line		315
.Llo69:
	lbz		r7,12(r30)		# scheduleIndex=r7 channelManager_p=r30
.Llo70:
	mr		r7,r7		# scheduleIndex=r7 scheduleIndex=r7
# 
#         /* Pointer to hold the current channel relocatable config */
#         CONSTP2CONST(LinIfChannelReloc, AUTOMATIC, LINIF_CONST) LinIf_Channel_Reloc_p =
	.d2line		318
	lbz		r0,12(r31)		# crntChannel_p=r31
	lis		r4,LinIf_ConfigChannel_Reloc_p@ha		# CrntScheduleTable_p=r4
.Llo78:
	lwz		r3,LinIf_ConfigChannel_Reloc_p@l(r4)		# LinIf_Channel_Reloc_p=r3 CrntScheduleTable_p=r4
.Llo75:
	rlwinm		r5,r0,5,0,26
	se_slwi		r0,3
	subf		r0,r0,r5
	se_add		r3,r0		# LinIf_Channel_Reloc_p=r3 LinIf_Channel_Reloc_p=r3
	mr		r3,r3		# LinIf_Channel_Reloc_p=r3 LinIf_Channel_Reloc_p=r3
#             &(LinIf_ConfigChannel_Reloc_p[crntChannel_p->LinIfChannelIndex]);
# 
#         /* Get the Schedule table of the current channel */
#         CONSTP2CONST (LinIfScheduleTable, AUTOMATIC, LINIF_APPL_DATA) CrntScheduleTable_p =
	.d2line		322
	lwz		r4,LinIf_ConfigChannel_Reloc_p@l(r4)		# CrntScheduleTable_p=r4 CrntScheduleTable_p=r4
	se_add		r4,r0		# CrntScheduleTable_p=r4 CrntScheduleTable_p=r4
	lwz		r5,8(r4)		# CrntScheduleTable_p=r4
	rlwinm		r0,r7,0,24,31		# scheduleIndex=r7
	e_mulli		r4,r0,20		# CrntScheduleTable_p=r4
	se_add		r4,r5		# CrntScheduleTable_p=r4 CrntScheduleTable_p=r4
	mr		r4,r4		# CrntScheduleTable_p=r4 CrntScheduleTable_p=r4
#             &(LinIf_ConfigChannel_Reloc_p[crntChannel_p->LinIfChannelIndex].LinIfScheduleTable_p[scheduleIndex]);
# 
#         /* Point the schedule entry to the next entry in the table */
#         LinIf_Channel_Reloc_p->LinIf_ScheduleTableEntry_p[channelManager_p->LinIf_ScheduleTableIndex]++;
	.d2line		326
	lwz		r6,20(r3)		# LinIf_Channel_Reloc_p=r3
	mr		r7,r7		# scheduleIndex=r7 scheduleIndex=r7
.Llo74:
	lbzx		r5,r6,r7
	se_addi		r5,1
	stbx		r5,r6,r7
# 
#         if((CrntScheduleTable_p->LinIfMaxSchEntry <= LinIf_Channel_Reloc_p->LinIf_ScheduleTableEntry_p[scheduleIndex])
	.d2line		328
	lbz		r6,13(r4)		# CrntScheduleTable_p=r4
	lwz		r5,20(r3)		# LinIf_Channel_Reloc_p=r3
	lbzx		r0,r5,r0
	se_cmp		r6,r0
	bc		1,1,.L291	# gt
.Llo71:
	lwz		r0,4(r4)		# CrntScheduleTable_p=r4
	se_cmpi		r0,0
	bc		0,2,.L291	# ne
#            && (CrntScheduleTable_p->LinIfRunMode == RUN_CONTINUOUS))
#         {
#             LinIf_Channel_Reloc_p->LinIf_ScheduleTableEntry_p[channelManager_p->LinIf_ScheduleTableIndex] = LINIF_FIRST_ENTRY;
	.d2line		331
.Llo76:
	diab.li		r0,0
.Llo77:
	lwz		r3,20(r3)		# LinIf_Channel_Reloc_p=r3 LinIf_Channel_Reloc_p=r3
	lbz		r4,12(r30)		# CrntScheduleTable_p=r4 channelManager_p=r30
	stbx		r0,r3,r4		# LinIf_Channel_Reloc_p=r3
.L291:
	.section	.text_vle
.L472:
#         }
#     }
#     /* Exclusive area handling */
#     SchM_Exit_LinIf_ExclusiveArea0();
	.d2line		335
.Llo73:
	bl		SchM_Exit_LinIf_ExclusiveArea0
# } /* End of LinIf_UpdateGlobalFrame() */
	.d2line		336
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L466:
	.type		LinIf_UpdateGlobalFrame,@function
	.size		LinIf_UpdateGlobalFrame,.-LinIf_UpdateGlobalFrame
# Number of nodes = 92

# Allocations for LinIf_UpdateGlobalFrame
#	?a4		crntChannel_p
#	?a5		$$89
#	?a6		$$88
#	?a7		$$83
#	?a8		channelManager_p
#	?a9		scheduleIndex
#	?a10		LinIf_Channel_Reloc_p
#	?a11		CrntScheduleTable_p
# FUNC (void, LINIF_CODE) LinIf_ExecuteFrameTransmit (CONSTP2CONST (LinIfChannel, AUTOMATIC, LINIF_APPL_CONST) crntChannel_p)
	.align		2
	.section	.text_vle
        .d2line         435,25
#$$ld
.L484:

#$$bf	LinIf_ExecuteFrameTransmit,interprocedural,rasave,nostackparams
	.globl		LinIf_ExecuteFrameTransmit
	.d2_cfa_start __cie
LinIf_ExecuteFrameTransmit:
.Llo79:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# crntChannel_p=r31 crntChannel_p=r3
	.d2prologue_end
# {
#     /* Pointer for the entry information */
#     CONSTP2CONST (LinIfEntry, AUTOMATIC, LINIF_APPL_CONST) Entry_p =
	.d2line		438
	mr		r3,r31		# crntChannel_p=r3 crntChannel_p=r31
.Llo80:
	bl		LinIf_GetNextScheduleEntry
	.d2line		446
.Llo81:
	mr.		r30,r3		# Entry_p=?a5 Entry_p=r3
#         LinIf_GetNextScheduleEntry (crntChannel_p);
# 
#     /* Pointer to Internal variables LinIfChannelManager */
#     CONSTP2VAR (LinIfChannelManager, AUTOMATIC, LINIF_APPL_DATA) channelManager_p=
	.d2line		442
.Llo85:
	lwz		r29,28(r31)		# crntChannel_p=r31
.Llo87:
	mr		r29,r29		# channelManager_p=r29 channelManager_p=r29
#         crntChannel_p->LinIf_channelManager_p;
# 
#     /* Check whether the Entry is not Null, NULL_SCHEDULE can be switched on during mainfunction run */
#     if ((NULL_PTR != Entry_p) && (NULL_SCHEDULE != channelManager_p->LinIf_ScheduleTableType))
	bc		1,2,.L300	# eq
	.d2line		446
.Llo82:
	lwz		r0,16(r29)		# channelManager_p=r29
.Llo83:
	se_cmpi		r0,0
	bc		1,2,.L300	# eq
	.section	.text_vle
.L492:
#     {
#         /* Get the type of frame in the current schedule entry */
#         CONST (LinIfFrameType_t, AUTOMATIC) FrameType = Entry_p->LinIfFrameRef->LinIfFrameType;
	.d2line		449
	lwz		r3,4(r30)		# crntChannel_p=r3 Entry_p=r30
	lwz		r6,4(r3)		# crntChannel_p=r3
.Llo88:
	mr		r6,r6		# FrameType=r6 FrameType=r6
# 
#         switch (FrameType) /*[LINIF308]*/ /*[LINIF408]*/
	.d2line		451
	mr		r6,r6		# FrameType=r6 FrameType=r6
.Llo89:
	se_cmpli	r6,9
	se_slwi		r6,2
	e_add2is		r6,.L501@ha
	bc		1,1,.L307	# gt
	lwz		r7,.L501@l(r6)
	mtspr		ctr,r7
	bcctr		20,0
.L501:
#$$sl
	.long		.L307
	.long		.L306
	.long		.L306
	.long		.L306
	.long		.L310
	.long		.L306
	.long		.L311
	.long		.L310
	.long		.L306
	.long		.L310
#$$se
.L306:
#         {
#             case ASSIGN:
#             case ASSIGN_FRAME_ID_RANGE: /* Frame type is Assign frame ID Range */
# #if ( LINIF_OPTIONAL_REQUEST_SUPPORTED == STD_ON ) /*[LINIF310]*/
#             case ASSIGN_NAD:
#             case CONDITIONAL:
# #endif  /* #if LINIF_OPTIONAL_REQUEST_SUPPORTED  */
#             case SAVE_CONFIGURATION:/* Frame type is Save configuration */
#             case UNASSIGN:/*[LINIF401]*/
#             case FREE: /*[LINIF409]*/
#                 /* Execute the Fixed frames */
#                 LinIf_ExecuteFixedFrames (crntChannel_p);
	.d2line		463
	mr		r3,r31		# crntChannel_p=r3 crntChannel_p=r31
	bl		LinIf_ExecuteFixedFrames
	b		.L307
.L310:
#                 break;
# #if ( LINIF_TP_SUPPORTED == STD_ON )
#             case MRF:
#                 LinTp_ExecuteMRFFrames (crntChannel_p);
#                 break;
# #endif /* End of LINIF_TP_SUPPORTED */
#             case SRF: /* necessary for mandatory diagnostic */ /*[LINIF023]*/
#             case EVENT_TRIGGERED:
#             case UNCONDITIONAL:
#                 /* Execute Un-Conditional frame */
#                 LinIf_ExecuteUCFrames (crntChannel_p);
	.d2line		474
	mr		r3,r31		# crntChannel_p=r3 crntChannel_p=r31
	bl		LinIf_ExecuteUCFrames
	b		.L307
.L311:
#                 break;
#             case SPORADIC: /*[LINIF470]*/
#                 /* Execute the Sporadic frame */
#                 LinIf_ExecuteSPFrames (crntChannel_p);
	.d2line		478
	mr		r3,r31		# crntChannel_p=r3 crntChannel_p=r31
	bl		LinIf_ExecuteSPFrames
.L307:
#                 break;
#             default:
#                 /*Do nothing*/ /*[LINIF472]*/
#                 break;
#         }/* PRQA S 2016*/ /* switch statement default clause is left intentionally empty */
# 
#         /* Get the delay for the next frame due */
#         channelManager_p->LinIf_EntryDelayCounter =  Entry_p->LinIfDelay; /*[LINIF261]*/
	.d2line		486
	lhz		r0,0(r30)		# Entry_p=r30
	sth		r0,6(r29)		# channelManager_p=r29
# 
#         /* Check whether the delay counter is not zero */
#         if (LINIF_MAIN_AT_ENTRY != channelManager_p->LinIf_EntryDelayCounter)
	.d2line		489
	se_cmpi		r0,0
	bc		1,2,.L313	# eq
#         {
#             /* Decrement the counter by one */
#             channelManager_p->LinIf_EntryDelayCounter--;
	.d2line		492
.Llo86:
	lhz		r0,6(r29)		# channelManager_p=r29
	diab.li		r3,65535		# crntChannel_p=r3
	se_add		r0,r3		# crntChannel_p=r3
	sth		r0,6(r29)		# channelManager_p=r29
.L313:
#         }
# 
#         LinIf_UpdateGlobalFrame (crntChannel_p);
	.d2line		495
	mr		r3,r31		# crntChannel_p=r3 crntChannel_p=r31
	bl		LinIf_UpdateGlobalFrame
	.section	.text_vle
.L493:
.L300:
#     }
# } /* End of LinIf_ExecuteFrameTransmit */
	.d2line		497
	.d2epilogue_begin
.Llo84:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L485:
	.type		LinIf_ExecuteFrameTransmit,@function
	.size		LinIf_ExecuteFrameTransmit,.-LinIf_ExecuteFrameTransmit
# Number of nodes = 69

# Allocations for LinIf_ExecuteFrameTransmit
#	?a4		crntChannel_p
#	?a5		Entry_p
#	?a6		channelManager_p
#	?a7		FrameType

# Allocations for module
	.section	.text_vle
	.0byte		.L504
	.section	.text_vle
#$$ld
.L5:
.L634:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L632:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
.L516:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Types.h"
.L503:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\inc\\LinIf_Private.h"
.L324:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_FrameHandler.c"
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
	.uleb128	7
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
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
	.uleb128	12
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
	.uleb128	13
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
	.uleb128	14
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.uleb128	38
	.byte		0x0
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
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\LinIf\\ssc\\make\\..\\src\\LinIf_FrameHandler.c"
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
.L329:
	.sleb128	2
	.4byte		.L321-.L2
	.byte		"LinIf_GetNextScheduleEntry"
	.byte		0
	.4byte		.L324
	.uleb128	350
	.uleb128	38
	.4byte		.L325
	.byte		0x1
	.4byte		.L322
	.4byte		.L323
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L324
	.uleb128	350
	.uleb128	38
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L330
	.4byte		.L335
	.section	.debug_info,,n
.L336:
	.sleb128	4
	.4byte		.L324
	.uleb128	355
	.uleb128	43
	.byte		"schIndex"
	.byte		0
	.4byte		.L337
	.4byte		.L341
.L342:
	.sleb128	4
	.4byte		.L324
	.uleb128	359
	.uleb128	60
	.byte		"LinIf_Channel_Reloc_p"
	.byte		0
	.4byte		.L343
	.4byte		.L348
.L349:
	.sleb128	4
	.4byte		.L324
	.uleb128	363
	.uleb128	68
	.byte		"CrntScheduleTable_p"
	.byte		0
	.4byte		.L350
	.4byte		.L355
.L356:
	.sleb128	4
	.4byte		.L324
	.uleb128	367
	.uleb128	30
	.byte		"EntryIndex_u8"
	.byte		0
	.4byte		.L357
	.4byte		.L358
	.section	.debug_info,,n
	.sleb128	0
.L321:
	.section	.debug_info,,n
.L363:
	.sleb128	5
	.4byte		.L360-.L2
	.byte		"LinIf_setHeaderInfo"
	.byte		0
	.4byte		.L324
	.uleb128	384
	.uleb128	25
	.byte		0x1
	.4byte		.L361
	.4byte		.L362
	.sleb128	3
	.4byte		.L324
	.uleb128	384
	.uleb128	25
	.byte		"lin_PduInfo"
	.byte		0
	.4byte		.L364
	.4byte		.L368
	.sleb128	3
	.4byte		.L324
	.uleb128	384
	.uleb128	25
	.byte		"frameRef"
	.byte		0
	.4byte		.L369
	.4byte		.L374
	.section	.debug_info,,n
	.sleb128	0
.L360:
	.section	.debug_info,,n
.L380:
	.sleb128	2
	.4byte		.L376-.L2
	.byte		"LinIf_sendFrame"
	.byte		0
	.4byte		.L324
	.uleb128	406
	.uleb128	35
	.4byte		.L379
	.byte		0x1
	.4byte		.L377
	.4byte		.L378
	.sleb128	3
	.4byte		.L324
	.uleb128	406
	.uleb128	35
	.byte		"PduInfoPtr"
	.byte		0
	.4byte		.L364
	.4byte		.L381
	.sleb128	3
	.4byte		.L324
	.uleb128	406
	.uleb128	35
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L330
	.4byte		.L382
	.sleb128	3
	.4byte		.L324
	.uleb128	406
	.uleb128	35
	.byte		"Entry_p"
	.byte		0
	.4byte		.L383
	.4byte		.L384
.L385:
	.sleb128	4
	.4byte		.L324
	.uleb128	410
	.uleb128	66
	.byte		"channelManager_p"
	.byte		0
	.4byte		.L386
	.4byte		.L390
.L391:
	.sleb128	4
	.4byte		.L324
	.uleb128	412
	.uleb128	69
	.byte		"linDrvCalls"
	.byte		0
	.4byte		.L392
	.4byte		.L397
	.section	.debug_info,,n
	.sleb128	0
.L376:
	.section	.debug_info,,n
.L402:
	.sleb128	5
	.4byte		.L399-.L2
	.byte		"LinIf_ExecuteUCFrames"
	.byte		0
	.4byte		.L324
	.uleb128	114
	.uleb128	32
	.byte		0x1
	.4byte		.L400
	.4byte		.L401
	.sleb128	3
	.4byte		.L324
	.uleb128	114
	.uleb128	32
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L330
	.4byte		.L403
	.section	.debug_info,,n
.L404:
	.sleb128	6
	.4byte		.L324
	.uleb128	117
	.uleb128	34
	.byte		"PduInfo_s"
	.byte		0
	.4byte		.L366
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L405:
	.sleb128	4
	.4byte		.L324
	.uleb128	120
	.uleb128	41
	.byte		"retVal"
	.byte		0
	.4byte		.L379
	.4byte		.L406
.L407:
	.sleb128	6
	.4byte		.L324
	.uleb128	123
	.uleb128	28
	.byte		"dataBuffer"
	.byte		0
	.4byte		.L408
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	24
.L410:
	.sleb128	4
	.4byte		.L324
	.uleb128	126
	.uleb128	60
	.byte		"Entry_p"
	.byte		0
	.4byte		.L383
	.4byte		.L411
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L415
	.4byte		.L412
	.4byte		.L413
.L416:
	.sleb128	6
	.4byte		.L324
	.uleb128	138
	.uleb128	38
	.byte		"linIfInfo"
	.byte		0
	.4byte		.L417
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	16
.L419:
	.sleb128	4
	.4byte		.L324
	.uleb128	140
	.uleb128	33
	.byte		"LinIfFrameFunctionIndex"
	.byte		0
	.4byte		.L420
	.4byte		.L423
	.section	.debug_info,,n
	.sleb128	0
.L415:
	.section	.debug_info,,n
	.sleb128	0
.L399:
	.section	.debug_info,,n
.L428:
	.sleb128	5
	.4byte		.L425-.L2
	.byte		"LinIf_ExecuteSPFrames"
	.byte		0
	.4byte		.L324
	.uleb128	179
	.uleb128	32
	.byte		0x1
	.4byte		.L426
	.4byte		.L427
	.sleb128	3
	.4byte		.L324
	.uleb128	179
	.uleb128	32
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L330
	.4byte		.L429
.L430:
	.sleb128	6
	.4byte		.L324
	.uleb128	183
	.uleb128	29
	.byte		"sporadicIndex"
	.byte		0
	.4byte		.L421
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L431:
	.sleb128	4
	.4byte		.L324
	.uleb128	186
	.uleb128	35
	.byte		"retVal"
	.byte		0
	.4byte		.L379
	.4byte		.L432
.L433:
	.sleb128	4
	.4byte		.L324
	.uleb128	189
	.uleb128	60
	.byte		"Entry_p"
	.byte		0
	.4byte		.L383
	.4byte		.L434
.L435:
	.sleb128	4
	.4byte		.L324
	.uleb128	193
	.uleb128	55
	.byte		"FrameInfo_p"
	.byte		0
	.4byte		.L370
	.4byte		.L436
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L440
	.4byte		.L437
	.4byte		.L438
.L441:
	.sleb128	4
	.4byte		.L324
	.uleb128	203
	.uleb128	63
	.byte		"LinIf_Channel_Reloc_p"
	.byte		0
	.4byte		.L343
	.4byte		.L442
.L443:
	.sleb128	6
	.4byte		.L324
	.uleb128	207
	.uleb128	38
	.byte		"PduInfo_s"
	.byte		0
	.4byte		.L366
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L444:
	.sleb128	6
	.4byte		.L324
	.uleb128	210
	.uleb128	32
	.byte		"dataBuffer"
	.byte		0
	.4byte		.L445
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	28
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L450
	.4byte		.L447
	.4byte		.L448
.L451:
	.sleb128	6
	.4byte		.L324
	.uleb128	225
	.uleb128	42
	.byte		"info"
	.byte		0
	.4byte		.L417
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	20
.L452:
	.sleb128	4
	.4byte		.L324
	.uleb128	228
	.uleb128	37
	.byte		"LinIfFrameFunctionIndex"
	.byte		0
	.4byte		.L420
	.4byte		.L453
	.section	.debug_info,,n
	.sleb128	0
.L450:
	.section	.debug_info,,n
	.sleb128	0
.L440:
	.section	.debug_info,,n
	.sleb128	0
.L425:
	.section	.debug_info,,n
.L458:
	.sleb128	5
	.4byte		.L455-.L2
	.byte		"LinIf_ExecuteFixedFrames"
	.byte		0
	.4byte		.L324
	.uleb128	278
	.uleb128	32
	.byte		0x1
	.4byte		.L456
	.4byte		.L457
	.sleb128	3
	.4byte		.L324
	.uleb128	278
	.uleb128	32
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L330
	.4byte		.L459
.L460:
	.sleb128	6
	.4byte		.L324
	.uleb128	281
	.uleb128	34
	.byte		"PduInfo_s"
	.byte		0
	.4byte		.L366
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L461:
	.sleb128	4
	.4byte		.L324
	.uleb128	284
	.uleb128	60
	.byte		"Entry_p"
	.byte		0
	.4byte		.L383
	.4byte		.L462
	.section	.debug_info,,n
	.sleb128	0
.L455:
	.section	.debug_info,,n
.L467:
	.sleb128	5
	.4byte		.L464-.L2
	.byte		"LinIf_UpdateGlobalFrame"
	.byte		0
	.4byte		.L324
	.uleb128	306
	.uleb128	32
	.byte		0x1
	.4byte		.L465
	.4byte		.L466
	.sleb128	3
	.4byte		.L324
	.uleb128	306
	.uleb128	32
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L330
	.4byte		.L468
.L469:
	.sleb128	4
	.4byte		.L324
	.uleb128	309
	.uleb128	66
	.byte		"channelManager_p"
	.byte		0
	.4byte		.L386
	.4byte		.L470
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L474
	.4byte		.L471
	.4byte		.L472
.L475:
	.sleb128	4
	.4byte		.L324
	.uleb128	315
	.uleb128	47
	.byte		"scheduleIndex"
	.byte		0
	.4byte		.L337
	.4byte		.L476
.L477:
	.sleb128	4
	.4byte		.L324
	.uleb128	318
	.uleb128	65
	.byte		"LinIf_Channel_Reloc_p"
	.byte		0
	.4byte		.L343
	.4byte		.L478
.L479:
	.sleb128	4
	.4byte		.L324
	.uleb128	322
	.uleb128	71
	.byte		"CrntScheduleTable_p"
	.byte		0
	.4byte		.L350
	.4byte		.L480
	.section	.debug_info,,n
	.sleb128	0
.L474:
	.section	.debug_info,,n
	.sleb128	0
.L464:
	.section	.debug_info,,n
.L486:
	.sleb128	8
	.4byte		.L483-.L2
	.byte		"LinIf_ExecuteFrameTransmit"
	.byte		0
	.4byte		.L324
	.uleb128	435
	.uleb128	25
	.byte		0x1
	.byte		0x1
	.4byte		.L484
	.4byte		.L485
	.sleb128	3
	.4byte		.L324
	.uleb128	435
	.uleb128	25
	.byte		"crntChannel_p"
	.byte		0
	.4byte		.L330
	.4byte		.L487
.L488:
	.sleb128	4
	.4byte		.L324
	.uleb128	438
	.uleb128	60
	.byte		"Entry_p"
	.byte		0
	.4byte		.L383
	.4byte		.L489
.L490:
	.sleb128	4
	.4byte		.L324
	.uleb128	442
	.uleb128	66
	.byte		"channelManager_p"
	.byte		0
	.4byte		.L386
	.4byte		.L491
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L495
	.4byte		.L492
	.4byte		.L493
.L496:
	.sleb128	4
	.4byte		.L324
	.uleb128	449
	.uleb128	45
	.byte		"FrameType"
	.byte		0
	.4byte		.L497
	.4byte		.L500
	.section	.debug_info,,n
	.sleb128	0
.L495:
	.section	.debug_info,,n
	.sleb128	0
.L483:
	.section	.debug_info,,n
.L502:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L503
	.uleb128	228
	.uleb128	64
	.byte		"LinIf_ConfigChannel_Reloc_p"
	.byte		0
	.4byte		.L344
	.0byte		.L502
.L504:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L503
	.uleb128	238
	.uleb128	76
	.byte		"LinIf_ChannelIdentifier_p"
	.byte		0
	.4byte		.L505
	.section	.debug_info,,n
.L510:
	.sleb128	9
	.byte		0x1
	.byte		0x1
	.4byte		.L503
	.uleb128	243
	.uleb128	73
	.byte		"LinIfFrameFunctions_p"
	.byte		0
	.4byte		.L511
	.section	.debug_info,,n
.L509:
	.sleb128	10
	.4byte		.L516
	.uleb128	322
	.uleb128	1
	.4byte		.L517-.L2
	.uleb128	3
	.section	.debug_info,,n
.L249:
	.sleb128	11
	.byte		"LinIfTrcvIdRef"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L250:
	.sleb128	11
	.byte		"LinIfChannelId"
	.byte		0
	.4byte		.L518
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L251:
	.sleb128	11
	.byte		"LinIfChannelRef"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L517:
.L334:
	.sleb128	10
	.4byte		.L516
	.uleb128	322
	.uleb128	1
	.4byte		.L520-.L2
	.uleb128	32
.L240:
	.sleb128	11
	.byte		"LinTrcvDrvCalls_p"
	.byte		0
	.4byte		.L521
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L241:
	.sleb128	11
	.byte		"WakeupSourceIdLin"
	.byte		0
	.4byte		.L525
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L242:
	.sleb128	11
	.byte		"WakeupSourceIdTrcv"
	.byte		0
	.4byte		.L525
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L243:
	.sleb128	11
	.byte		"LinIfChannelIndex"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L244:
	.sleb128	11
	.byte		"ExternalChannelIndex"
	.byte		0
	.4byte		.L518
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L245:
	.sleb128	11
	.byte		"LinIfDelayForSleep"
	.byte		0
	.4byte		.L525
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L246:
	.sleb128	11
	.byte		"LinIfStartupState"
	.byte		0
	.4byte		.L528
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L247:
	.sleb128	11
	.byte		"LinDrvCalls_p"
	.byte		0
	.4byte		.L393
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L248:
	.sleb128	11
	.byte		"LinIf_channelManager_p"
	.byte		0
	.4byte		.L386
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L520:
.L347:
	.sleb128	10
	.4byte		.L516
	.uleb128	322
	.uleb128	1
	.4byte		.L531-.L2
	.uleb128	24
.L233:
	.sleb128	11
	.byte		"LinIfMaxLinFrames"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L234:
	.sleb128	11
	.byte		"LinIfMaxSchedules"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L235:
	.sleb128	11
	.byte		"LinIfFrame_p"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L236:
	.sleb128	11
	.byte		"LinIfScheduleTable_p"
	.byte		0
	.4byte		.L351
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L237:
	.sleb128	11
	.byte		"ETCollisionDetectd_p"
	.byte		0
	.4byte		.L532
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L238:
	.sleb128	11
	.byte		"SPPendingRequest_p"
	.byte		0
	.4byte		.L532
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L239:
	.sleb128	11
	.byte		"LinIf_ScheduleTableEntry_p"
	.byte		0
	.4byte		.L534
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L531:
.L389:
	.sleb128	10
	.4byte		.L516
	.uleb128	322
	.uleb128	1
	.4byte		.L535-.L2
	.uleb128	48
.L223:
	.sleb128	11
	.byte		"LinIf_NewScheduleTableType"
	.byte		0
	.4byte		.L536
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L224:
	.sleb128	11
	.byte		"LinIf_RunContSchTableIndexRequested"
	.byte		0
	.4byte		.L338
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L225:
	.sleb128	11
	.byte		"LinIf_RunOnceSchTableRequested"
	.byte		0
	.4byte		.L338
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L226:
	.sleb128	11
	.byte		"LinIf_EntryDelayCounter"
	.byte		0
	.4byte		.L421
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L227:
	.sleb128	11
	.byte		"LinIf_SleepDelayCounter"
	.byte		0
	.4byte		.L526
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L228:
	.sleb128	11
	.byte		"LinIf_ScheduleTableIndex"
	.byte		0
	.4byte		.L338
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L229:
	.sleb128	11
	.byte		"LinIf_ScheduleTableType"
	.byte		0
	.4byte		.L536
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L230:
	.sleb128	11
	.byte		"LinIf_BusStatus"
	.byte		0
	.4byte		.L538
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L231:
	.sleb128	11
	.byte		"LinIf_ChannelSubState"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L232:
	.sleb128	11
	.byte		"LinIf_ChannelState"
	.byte		0
	.4byte		.L529
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L535:
.L539:
	.sleb128	10
	.4byte		.L516
	.uleb128	322
	.uleb128	1
	.4byte		.L542-.L2
	.uleb128	20
.L219:
	.sleb128	11
	.byte		"Lin_DriverGetStatusVal"
	.byte		0
	.4byte		.L543
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L220:
	.sleb128	11
	.byte		"LinIf_frameStatus"
	.byte		0
	.4byte		.L544
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L221:
	.sleb128	11
	.byte		"LinIf_frameEntry_p"
	.byte		0
	.4byte		.L325
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L222:
	.sleb128	11
	.byte		"LinIf_RxData"
	.byte		0
	.4byte		.L546
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L542:
.L354:
	.sleb128	10
	.4byte		.L516
	.uleb128	322
	.uleb128	1
	.4byte		.L548-.L2
	.uleb128	20
.L213:
	.sleb128	11
	.byte		"LinIfResumePosition"
	.byte		0
	.4byte		.L549
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L214:
	.sleb128	11
	.byte		"LinIfRunMode"
	.byte		0
	.4byte		.L552
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L215:
	.sleb128	11
	.byte		"LinIfScheduleMode"
	.byte		0
	.4byte		.L555
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L216:
	.sleb128	11
	.byte		"LinIfScheduleTableIndex"
	.byte		0
	.4byte		.L337
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L217:
	.sleb128	11
	.byte		"LinIfMaxSchEntry"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L218:
	.sleb128	11
	.byte		"LinIfEntry_p"
	.byte		0
	.4byte		.L325
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L548:
.L328:
	.sleb128	10
	.4byte		.L516
	.uleb128	322
	.uleb128	1
	.4byte		.L558-.L2
	.uleb128	8
.L210:
	.sleb128	11
	.byte		"LinIfDelay"
	.byte		0
	.4byte		.L420
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L211:
	.sleb128	11
	.byte		"LinIfCollisionResolvingRef"
	.byte		0
	.4byte		.L337
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L212:
	.sleb128	11
	.byte		"LinIfFrameRef"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L558:
.L515:
	.sleb128	10
	.4byte		.L516
	.uleb128	322
	.uleb128	1
	.4byte		.L559-.L2
	.uleb128	12
.L207:
	.sleb128	11
	.byte		"User_LinIfRxIndication_p"
	.byte		0
	.4byte		.L560
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L208:
	.sleb128	11
	.byte		"User_LinIfTxConfirmation_p"
	.byte		0
	.4byte		.L565
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L209:
	.sleb128	11
	.byte		"User_LinIfTriggerTransmit_p"
	.byte		0
	.4byte		.L568
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L559:
.L373:
	.sleb128	10
	.4byte		.L516
	.uleb128	322
	.uleb128	1
	.4byte		.L571-.L2
	.uleb128	32
.L196:
	.sleb128	11
	.byte		"LinIfChecksumType"
	.byte		0
	.4byte		.L572
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L197:
	.sleb128	11
	.byte		"LinIfFrameType"
	.byte		0
	.4byte		.L497
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L198:
	.sleb128	11
	.byte		"LinIfLength"
	.byte		0
	.4byte		.L574
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L199:
	.sleb128	11
	.byte		"LinIfPid"
	.byte		0
	.4byte		.L576
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L200:
	.sleb128	11
	.byte		"LinIfTxConfirmationId"
	.byte		0
	.4byte		.L578
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L201:
	.sleb128	11
	.byte		"LinIfPduDirection"
	.byte		0
	.4byte		.L579
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L202:
	.sleb128	11
	.byte		"LinIfFixedFrameSduData"
	.byte		0
	.4byte		.L581
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L203:
	.sleb128	11
	.byte		"LinIfRxTxTargetPduRef"
	.byte		0
	.4byte		.L578
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L204:
	.sleb128	11
	.byte		"LinIfSubsFrames_p"
	.byte		0
	.4byte		.L583
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L205:
	.sleb128	11
	.byte		"LinIfNoOfSubEntry"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L206:
	.sleb128	11
	.byte		"LinIfFunctionIndex"
	.byte		0
	.4byte		.L420
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
	.sleb128	0
.L571:
.L586:
	.sleb128	10
	.4byte		.L516
	.uleb128	322
	.uleb128	1
	.4byte		.L587-.L2
	.uleb128	2
.L194:
	.sleb128	11
	.byte		"LinIfSubFrameIndex"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L195:
	.sleb128	11
	.byte		"LinIfSubFramePriority"
	.byte		0
	.4byte		.L357
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L587:
.L524:
	.sleb128	10
	.4byte		.L516
	.uleb128	232
	.uleb128	14
	.4byte		.L588-.L2
	.uleb128	20
.L183:
	.sleb128	11
	.byte		"LinTrcv_SetOpMode_p"
	.byte		0
	.4byte		.L589
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L184:
	.sleb128	11
	.byte		"LinTrcv_GetOpMode_p"
	.byte		0
	.4byte		.L594
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L185:
	.sleb128	11
	.byte		"LinTrcv_GetBusWuReason_p"
	.byte		0
	.4byte		.L598
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L186:
	.sleb128	11
	.byte		"LinTrcv_SetWakeupMode_p"
	.byte		0
	.4byte		.L604
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L187:
	.sleb128	11
	.byte		"LinTrcv_CheckWakeup_p"
	.byte		0
	.4byte		.L609
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L588:
.L396:
	.sleb128	10
	.4byte		.L516
	.uleb128	184
	.uleb128	1
	.4byte		.L612-.L2
	.uleb128	24
.L177:
	.sleb128	11
	.byte		"Lin_SendFrame_p"
	.byte		0
	.4byte		.L613
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L178:
	.sleb128	11
	.byte		"Lin_GoToSleep_p"
	.byte		0
	.4byte		.L616
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L179:
	.sleb128	11
	.byte		"Lin_GoToSleepInternal_p"
	.byte		0
	.4byte		.L619
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L180:
	.sleb128	11
	.byte		"Lin_Wakeup_p"
	.byte		0
	.4byte		.L622
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L181:
	.sleb128	11
	.byte		"Lin_GetStatus_p"
	.byte		0
	.4byte		.L625
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L182:
	.sleb128	11
	.byte		"Lin_CheckWakeup_p"
	.byte		0
	.4byte		.L629
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L612:
.L367:
	.sleb128	10
	.4byte		.L632
	.uleb128	59
	.uleb128	13
	.4byte		.L633-.L2
	.uleb128	8
.L92:
	.sleb128	11
	.byte		"Pid"
	.byte		0
	.4byte		.L577
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L93:
	.sleb128	11
	.byte		"Cs"
	.byte		0
	.4byte		.L573
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L94:
	.sleb128	11
	.byte		"Drc"
	.byte		0
	.4byte		.L580
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L95:
	.sleb128	11
	.byte		"Dl"
	.byte		0
	.4byte		.L575
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L96:
	.sleb128	11
	.byte		"SduPtr"
	.byte		0
	.4byte		.L534
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L633:
	.section	.debug_info,,n
.L418:
	.sleb128	12
	.4byte		.L634
	.uleb128	69
	.uleb128	1
	.4byte		.L635-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L88:
	.sleb128	11
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L534
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L89:
	.sleb128	11
	.byte		"SduLength"
	.byte		0
	.4byte		.L636
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L635:
	.section	.debug_info,,n
.L557:
	.sleb128	13
	.4byte		.L516
	.uleb128	232
	.uleb128	14
	.4byte		.L637-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	14
	.byte		"LINTP_APPLICATIVE_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"LINTP_DIAG_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"LINTP_DIAG_RESPONSE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L637:
.L545:
	.sleb128	13
	.4byte		.L516
	.uleb128	184
	.uleb128	1
	.4byte		.L638-.L2
	.uleb128	4
	.sleb128	14
	.byte		"LINIF_FRAME_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"LINIF_FRAME_RX_ONGOING"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"LINIF_FRAME_TX_ONGOING"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"LINIF_FRAME_FINISHED"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"LINIF_FRAME_ERROR"
	.byte		0
	.sleb128	4
	.sleb128	0
.L638:
.L499:
	.sleb128	13
	.4byte		.L516
	.uleb128	110
	.uleb128	1
	.4byte		.L639-.L2
	.uleb128	4
	.sleb128	14
	.byte		"INVALID_STATE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"FREE"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"ASSIGN"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"ASSIGN_FRAME_ID_RANGE"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"EVENT_TRIGGERED"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"SAVE_CONFIGURATION"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"SPORADIC"
	.byte		0
	.sleb128	6
	.sleb128	14
	.byte		"SRF"
	.byte		0
	.sleb128	7
	.sleb128	14
	.byte		"UNASSIGN"
	.byte		0
	.sleb128	8
	.sleb128	14
	.byte		"UNCONDITIONAL"
	.byte		0
	.sleb128	9
	.sleb128	0
.L639:
.L551:
	.sleb128	13
	.4byte		.L516
	.uleb128	102
	.uleb128	1
	.4byte		.L640-.L2
	.uleb128	4
	.sleb128	14
	.byte		"CONTINUE_AT_IT_POINT"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"START_FROM_BEGINNING"
	.byte		0
	.sleb128	1
	.sleb128	0
.L640:
.L541:
	.sleb128	13
	.4byte		.L516
	.uleb128	87
	.uleb128	1
	.4byte		.L641-.L2
	.uleb128	4
	.sleb128	14
	.byte		"LINIF_CHANNEL_SUBSTATE_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"LINIF_CHANNEL_SLEEP_REQUEST"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"LINIF_CHANNEL_SLEEP_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"LINIF_CHANNEL_GOTO_SLEEP_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_FALSE"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"LINIF_CHANNEL_WAKEUP_CONFIRMATION_PENDING_TYPE_TRUE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L641:
.L530:
	.sleb128	13
	.4byte		.L516
	.uleb128	79
	.uleb128	1
	.4byte		.L642-.L2
	.uleb128	4
	.sleb128	14
	.byte		"LINIF_CHANNEL_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"LINIF_CHANNEL_OPERATIONAL"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"LINIF_CHANNEL_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L642:
.L537:
	.sleb128	13
	.4byte		.L516
	.uleb128	70
	.uleb128	1
	.4byte		.L643-.L2
	.uleb128	4
	.sleb128	14
	.byte		"NULL_SCHEDULE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"ACTIVE_RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"ACTIVE_RUN_CONTINUOUS"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"ACTIVE_SCHEDULE_MANAGER_OFF"
	.byte		0
	.sleb128	3
	.sleb128	0
.L643:
.L554:
	.sleb128	13
	.4byte		.L516
	.uleb128	63
	.uleb128	1
	.4byte		.L644-.L2
	.uleb128	4
	.sleb128	14
	.byte		"RUN_CONTINUOUS"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"RUN_ONCE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L644:
.L593:
	.sleb128	13
	.4byte		.L632
	.uleb128	59
	.uleb128	13
	.4byte		.L645-.L2
	.uleb128	4
	.sleb128	14
	.byte		"LINTRCV_TRCV_MODE_NORMAL"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"LINTRCV_TRCV_MODE_STANDBY"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"LINTRCV_TRCV_MODE_SLEEP"
	.byte		0
	.sleb128	2
	.sleb128	0
.L645:
.L603:
	.sleb128	13
	.4byte		.L632
	.uleb128	49
	.uleb128	13
	.4byte		.L646-.L2
	.uleb128	4
	.sleb128	14
	.byte		"LINTRCV_WU_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"LINTRCV_WU_NOT_SUPPORTED"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"LINTRCV_WU_BY_BUS"
	.byte		0
	.sleb128	2
	.sleb128	14
	.byte		"LINTRCV_WU_BY_PIN"
	.byte		0
	.sleb128	3
	.sleb128	14
	.byte		"LINTRCV_WU_INTERNALLY"
	.byte		0
	.sleb128	4
	.sleb128	14
	.byte		"LINTRCV_WU_RESET"
	.byte		0
	.sleb128	5
	.sleb128	14
	.byte		"LINTRCV_WU_POWER_ON"
	.byte		0
	.sleb128	6
	.sleb128	0
.L646:
.L608:
	.sleb128	13
	.4byte		.L632
	.uleb128	42
	.uleb128	13
	.4byte		.L647-.L2
	.uleb128	4
	.sleb128	14
	.byte		"LINTRCV_WUMODE_ENABLE"
	.byte		0
	.sleb128	0
	.sleb128	14
	.byte		"LINTRCV_WUMODE_DISABLE"
	.byte		0
	.sleb128	1
	.sleb128	14
	.byte		"LINTRCV_WUMODE_CLEAR"
	.byte		0
	.sleb128	2
	.sleb128	0
.L647:
	.section	.debug_info,,n
.L327:
	.sleb128	15
	.byte		"LinIfEntry"
	.byte		0
	.4byte		.L328
	.section	.debug_info,,n
.L326:
	.sleb128	16
	.4byte		.L327
	.section	.debug_info,,n
.L325:
	.sleb128	17
	.4byte		.L326
.L333:
	.sleb128	15
	.byte		"LinIfChannel"
	.byte		0
	.4byte		.L334
.L332:
	.sleb128	16
	.4byte		.L333
.L331:
	.sleb128	17
	.4byte		.L332
.L330:
	.sleb128	16
	.4byte		.L331
	.section	.debug_info,,n
.L340:
	.sleb128	18
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L339:
	.sleb128	15
	.byte		"uint8"
	.byte		0
	.4byte		.L340
.L338:
	.sleb128	15
	.byte		"LinIf_SchHandleType"
	.byte		0
	.4byte		.L339
.L337:
	.sleb128	16
	.4byte		.L338
.L346:
	.sleb128	15
	.byte		"LinIfChannelReloc"
	.byte		0
	.4byte		.L347
.L345:
	.sleb128	16
	.4byte		.L346
.L344:
	.sleb128	17
	.4byte		.L345
.L343:
	.sleb128	16
	.4byte		.L344
.L353:
	.sleb128	15
	.byte		"LinIfScheduleTable"
	.byte		0
	.4byte		.L354
.L352:
	.sleb128	16
	.4byte		.L353
.L351:
	.sleb128	17
	.4byte		.L352
.L350:
	.sleb128	16
	.4byte		.L351
.L357:
	.sleb128	16
	.4byte		.L339
.L366:
	.sleb128	15
	.byte		"Lin_PduType"
	.byte		0
	.4byte		.L367
.L365:
	.sleb128	17
	.4byte		.L366
.L364:
	.sleb128	16
	.4byte		.L365
.L372:
	.sleb128	15
	.byte		"LinIfFrame"
	.byte		0
	.4byte		.L373
.L371:
	.sleb128	16
	.4byte		.L372
.L370:
	.sleb128	17
	.4byte		.L371
.L369:
	.sleb128	16
	.4byte		.L370
.L379:
	.sleb128	15
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L339
.L383:
	.sleb128	16
	.4byte		.L325
.L388:
	.sleb128	15
	.byte		"LinIfChannelManager"
	.byte		0
	.4byte		.L389
.L387:
	.sleb128	17
	.4byte		.L388
.L386:
	.sleb128	16
	.4byte		.L387
.L395:
	.sleb128	15
	.byte		"LinIf_LinDrvCalls_t"
	.byte		0
	.4byte		.L396
.L394:
	.sleb128	16
	.4byte		.L395
.L393:
	.sleb128	17
	.4byte		.L394
.L392:
	.sleb128	16
	.4byte		.L393
	.section	.debug_info,,n
.L408:
	.sleb128	19
	.4byte		.L409-.L2
	.4byte		.L339
	.section	.debug_info,,n
	.sleb128	20
	.uleb128	7
	.sleb128	0
.L409:
.L417:
	.sleb128	15
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L418
.L422:
	.sleb128	18
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L421:
	.sleb128	15
	.byte		"uint16"
	.byte		0
	.4byte		.L422
.L420:
	.sleb128	16
	.4byte		.L421
.L445:
	.sleb128	19
	.4byte		.L446-.L2
	.4byte		.L339
	.sleb128	20
	.uleb128	7
	.sleb128	0
.L446:
.L498:
	.sleb128	15
	.byte		"LinIfFrameType_t"
	.byte		0
	.4byte		.L499
.L497:
	.sleb128	16
	.4byte		.L498
.L508:
	.sleb128	15
	.byte		"LinIfChannelIdentifier"
	.byte		0
	.4byte		.L509
.L507:
	.sleb128	16
	.4byte		.L508
.L506:
	.sleb128	17
	.4byte		.L507
.L505:
	.sleb128	16
	.4byte		.L506
.L514:
	.sleb128	15
	.byte		"LinIfFrameFunctions"
	.byte		0
	.4byte		.L515
.L513:
	.sleb128	16
	.4byte		.L514
.L512:
	.sleb128	17
	.4byte		.L513
.L511:
	.sleb128	16
	.4byte		.L512
.L519:
	.sleb128	15
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L339
.L518:
	.sleb128	16
	.4byte		.L519
.L523:
	.sleb128	15
	.byte		"LinIf_LinTrcvDrvCalls_t"
	.byte		0
	.4byte		.L524
.L522:
	.sleb128	16
	.4byte		.L523
.L521:
	.sleb128	17
	.4byte		.L522
.L527:
	.sleb128	18
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L526:
	.sleb128	15
	.byte		"uint32"
	.byte		0
	.4byte		.L527
.L525:
	.sleb128	16
	.4byte		.L526
.L529:
	.sleb128	15
	.byte		"LinIf_ChannelState_t"
	.byte		0
	.4byte		.L530
.L528:
	.sleb128	16
	.4byte		.L529
.L533:
	.sleb128	15
	.byte		"boolean"
	.byte		0
	.4byte		.L340
.L532:
	.sleb128	17
	.4byte		.L533
.L534:
	.sleb128	17
	.4byte		.L339
.L536:
	.sleb128	15
	.byte		"LinIfSchTableType_t"
	.byte		0
	.4byte		.L537
.L538:
	.sleb128	15
	.byte		"LinIf_BusStatusStruct"
	.byte		0
	.4byte		.L539
.L540:
	.sleb128	15
	.byte		"LinIf_ChannelSubState_t"
	.byte		0
	.4byte		.L541
.L543:
	.sleb128	15
	.byte		"Lin_StatusType"
	.byte		0
	.4byte		.L339
.L544:
	.sleb128	15
	.byte		"LinIf_frameStatusType"
	.byte		0
	.4byte		.L545
.L546:
	.sleb128	19
	.4byte		.L547-.L2
	.4byte		.L339
	.sleb128	20
	.uleb128	7
	.sleb128	0
.L547:
.L550:
	.sleb128	15
	.byte		"LinIfResumePosition_t"
	.byte		0
	.4byte		.L551
.L549:
	.sleb128	16
	.4byte		.L550
.L553:
	.sleb128	15
	.byte		"LinIfRunMode_t"
	.byte		0
	.4byte		.L554
.L552:
	.sleb128	16
	.4byte		.L553
.L556:
	.sleb128	15
	.byte		"LinTp_Mode"
	.byte		0
	.4byte		.L557
.L555:
	.sleb128	16
	.4byte		.L556
	.section	.debug_info,,n
.L561:
	.sleb128	21
	.4byte		.L562-.L2
	.byte		0x1
.L563:
	.sleb128	15
	.byte		"PduIdType"
	.byte		0
	.4byte		.L421
	.section	.debug_info,,n
	.sleb128	22
	.4byte		.L563
.L564:
	.sleb128	17
	.4byte		.L417
	.sleb128	22
	.4byte		.L564
	.sleb128	0
.L562:
.L560:
	.sleb128	17
	.4byte		.L561
.L566:
	.sleb128	21
	.4byte		.L567-.L2
	.byte		0x1
	.sleb128	22
	.4byte		.L563
	.sleb128	0
.L567:
.L565:
	.sleb128	17
	.4byte		.L566
	.section	.debug_info,,n
.L569:
	.sleb128	23
	.4byte		.L570-.L2
	.4byte		.L379
	.byte		0x1
	.sleb128	22
	.4byte		.L563
	.sleb128	22
	.4byte		.L564
	.sleb128	0
.L570:
.L568:
	.sleb128	17
	.4byte		.L569
.L573:
	.sleb128	15
	.byte		"Lin_FrameCsModelType"
	.byte		0
	.4byte		.L339
.L572:
	.sleb128	16
	.4byte		.L573
.L575:
	.sleb128	15
	.byte		"Lin_FrameDlType"
	.byte		0
	.4byte		.L339
.L574:
	.sleb128	16
	.4byte		.L575
.L577:
	.sleb128	15
	.byte		"Lin_FramePidType"
	.byte		0
	.4byte		.L339
.L576:
	.sleb128	16
	.4byte		.L577
.L578:
	.sleb128	16
	.4byte		.L563
.L580:
	.sleb128	15
	.byte		"Lin_FrameResponseType"
	.byte		0
	.4byte		.L339
.L579:
	.sleb128	16
	.4byte		.L580
.L581:
	.sleb128	19
	.4byte		.L582-.L2
	.4byte		.L357
	.sleb128	20
	.uleb128	7
	.sleb128	0
.L582:
.L585:
	.sleb128	15
	.byte		"LinIfSubstitutionFrames"
	.byte		0
	.4byte		.L586
.L584:
	.sleb128	16
	.4byte		.L585
.L583:
	.sleb128	17
	.4byte		.L584
.L590:
	.sleb128	23
	.4byte		.L591-.L2
	.4byte		.L379
	.byte		0x1
	.sleb128	22
	.4byte		.L339
.L592:
	.sleb128	15
	.byte		"LinTrcv_TrcvModeType"
	.byte		0
	.4byte		.L593
	.sleb128	22
	.4byte		.L592
	.sleb128	0
.L591:
.L589:
	.sleb128	17
	.4byte		.L590
.L595:
	.sleb128	23
	.4byte		.L596-.L2
	.4byte		.L379
	.byte		0x1
	.sleb128	22
	.4byte		.L339
.L597:
	.sleb128	17
	.4byte		.L592
	.sleb128	22
	.4byte		.L597
	.sleb128	0
.L596:
.L594:
	.sleb128	17
	.4byte		.L595
.L599:
	.sleb128	23
	.4byte		.L600-.L2
	.4byte		.L379
	.byte		0x1
	.sleb128	22
	.4byte		.L339
.L602:
	.sleb128	15
	.byte		"LinTrcv_TrcvWakeupReasonType"
	.byte		0
	.4byte		.L603
.L601:
	.sleb128	17
	.4byte		.L602
	.sleb128	22
	.4byte		.L601
	.sleb128	0
.L600:
.L598:
	.sleb128	17
	.4byte		.L599
.L605:
	.sleb128	23
	.4byte		.L606-.L2
	.4byte		.L379
	.byte		0x1
	.sleb128	22
	.4byte		.L339
.L607:
	.sleb128	15
	.byte		"LinTrcv_TrcvWakeupModeType"
	.byte		0
	.4byte		.L608
	.sleb128	22
	.4byte		.L607
	.sleb128	0
.L606:
.L604:
	.sleb128	17
	.4byte		.L605
.L610:
	.sleb128	23
	.4byte		.L611-.L2
	.4byte		.L379
	.byte		0x1
	.sleb128	22
	.4byte		.L339
	.sleb128	0
.L611:
.L609:
	.sleb128	17
	.4byte		.L610
.L614:
	.sleb128	23
	.4byte		.L615-.L2
	.4byte		.L379
	.byte		0x1
	.sleb128	22
	.4byte		.L339
	.sleb128	22
	.4byte		.L365
	.sleb128	0
.L615:
.L613:
	.sleb128	17
	.4byte		.L614
.L617:
	.sleb128	23
	.4byte		.L618-.L2
	.4byte		.L379
	.byte		0x1
	.sleb128	22
	.4byte		.L339
	.sleb128	0
.L618:
.L616:
	.sleb128	17
	.4byte		.L617
.L620:
	.sleb128	23
	.4byte		.L621-.L2
	.4byte		.L379
	.byte		0x1
	.sleb128	22
	.4byte		.L339
	.sleb128	0
.L621:
.L619:
	.sleb128	17
	.4byte		.L620
.L623:
	.sleb128	23
	.4byte		.L624-.L2
	.4byte		.L379
	.byte		0x1
	.sleb128	22
	.4byte		.L339
	.sleb128	0
.L624:
.L622:
	.sleb128	17
	.4byte		.L623
.L626:
	.sleb128	23
	.4byte		.L627-.L2
	.4byte		.L543
	.byte		0x1
	.sleb128	22
	.4byte		.L339
.L628:
	.sleb128	17
	.4byte		.L534
	.sleb128	22
	.4byte		.L628
	.sleb128	0
.L627:
.L625:
	.sleb128	17
	.4byte		.L626
.L630:
	.sleb128	23
	.4byte		.L631-.L2
	.4byte		.L379
	.byte		0x1
	.sleb128	22
	.4byte		.L339
	.sleb128	0
.L631:
.L629:
	.sleb128	17
	.4byte		.L630
.L636:
	.sleb128	15
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L421
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L335:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),4
	.d2locend
.L341:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L348:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo7),4
	.d2locend
.L355:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo5),3
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo8),3
	.d2locend
.L358:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo9),4
	.d2locend
.L368:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locend
.L374:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo12),4
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo11),5
	.d2locend
.L381:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),6
	.d2locend
.L382:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo18),4
	.d2locend
.L384:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo19),5
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo17),7
	.d2locend
.L390:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo23),3
	.d2locend
.L397:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo17),5
	.d2locend
.L403:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),31
	.d2locend
.L406:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo26),7
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),7
	.d2locend
.L411:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo33),30
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),30
	.d2locend
.L423:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),3
	.d2locend
.L429:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),3
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),31
	.d2locend
.L432:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),30
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),3
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),30
	.d2locend
.L434:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo48),29
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),3
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo41),29
	.d2locend
.L436:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo52),4
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),0
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),6
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo47),6
	.d2locend
.L442:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),3
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),0
	.d2locend
.L453:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),3
	.d2locend
.L459:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),3
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),7
	.d2locend
.L462:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo64),6
	.d2locend
.L468:
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),3
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),31
	.d2locend
.L470:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),30
	.d2locend
.L476:
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo74),7
	.d2locend
.L478:
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),3
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo73),3
	.d2locend
.L480:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo76),4
	.d2locend
.L487:
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),3
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),3
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),31
	.d2locend
.L489:
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),30
	.d2locend
.L491:
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo84),29
	.d2locend
.L500:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),6
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "LinIf_ExecuteFrameTransmit"
	.wrcm.nstrlist "calls", "LinIf_ExecuteFixedFrames","LinIf_ExecuteSPFrames","LinIf_ExecuteUCFrames","LinIf_GetNextScheduleEntry","LinIf_UpdateGlobalFrame"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "LinIf_UpdateGlobalFrame"
	.wrcm.nstrlist "calls", "SchM_Enter_LinIf_ExclusiveArea0","SchM_Exit_LinIf_ExclusiveArea0"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "LinIf_ExecuteFixedFrames"
	.wrcm.nstrlist "calls", "LinIf_GetNextScheduleEntry","LinIf_sendFrame","LinIf_setHeaderInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "LinIf_ExecuteSPFrames"
	.wrcm.nstrlist "calls", "LinIf_GetNextScheduleEntry","LinIf_GetSporadicSlotFrame","LinIf_sendFrame","LinIf_setHeaderInfo"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 64
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "LinIf_ExecuteUCFrames"
	.wrcm.nstrlist "calls", "LinIf_GetNextScheduleEntry","LinIf_sendFrame","LinIf_setHeaderInfo"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "LinIf_sendFrame"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "LinIf_setHeaderInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "LinIf_GetNextScheduleEntry"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_FrameHandler.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_FrameHandler.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_FrameHandler.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\LinIf_FrameHandler.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\LinIf_FrameHandler.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\LinIf_FrameHandler.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\LinIf\ssc\make\..\src\LinIf_FrameHandler.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
