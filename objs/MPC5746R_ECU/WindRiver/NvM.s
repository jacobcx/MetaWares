#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"NvM.c"
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
# FUNC(Dem_EventIdType,NVM_CODE) NvM_GetDem_EventIdElement
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM.c"
        .d2line         689,32
#$$ld
.L1550:

#$$bf	NvM_GetDem_EventIdElement,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r6,r7,cr0,lr,ctr
	.globl		NvM_GetDem_EventIdElement
	.d2_cfa_start __cie
NvM_GetDem_EventIdElement:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# eventIdsPtr=r3 eventIdsPtr=r3
	mr		r6,r4		# eventIdNumber=r6 eventIdNumber=r4
	.d2prologue_end
# (
#     CONSTP2CONST(NvM_DemEventIdType,AUTOMATIC,NVM_APPL_DATA) eventIdsPtr,
#     CONST(NvM_DemEventIdNumberType, AUTOMATIC) eventIdNumber
# )
# {
#     VAR(Dem_EventIdType, AUTOMATIC) retVal = (Dem_EventIdType)0U;
	.d2line		695
	diab.li		r4,0		# retVal=r4
# 
#     switch(eventIdNumber)
	.d2line		697
.Llo3:
	mr		r6,r6		# eventIdNumber=r6 eventIdNumber=r6
	se_cmpli	r6,8		# retVal=r6
	se_slwi		r6,2		# retVal=r6 retVal=r6
	e_add2is		r6,.L1569@ha		# retVal=r6
	bc		1,1,.L342	# gt
.Llo4:
	lwz		r7,.L1569@l(r6)		# retVal=r6
.Llo5:
	mtspr		ctr,r7
	bcctr		20,0
.L1569:
#$$sl
	.long		.L342
	.long		.L341
	.long		.L343
	.long		.L344
	.long		.L345
	.long		.L346
	.long		.L347
	.long		.L348
	.long		.L349
#$$se
.L341:
#     {
#         case NVM_DEM_EVENT_E_HARDWARE:
#         {
#             retVal = eventIdsPtr -> dem_event_e_hardware;
	.d2line		701
.Llo6:
	lhz		r4,0(r3)		# retVal=r4 eventIdsPtr=r3
.Llo7:
	mr		r4,r4		# retVal=r4 retVal=r4
	b		.L342
.L343:
#         }break;
# 
#         case NVM_DEM_EVENT_E_REQ_FAILED:
#         {
#             retVal = eventIdsPtr -> dem_event_req_failed;
	.d2line		706
	lhz		r4,2(r3)		# retVal=r4 eventIdsPtr=r3
	mr		r4,r4		# retVal=r4 retVal=r4
	b		.L342
.L344:
#         }break;
# 
#         case NVM_DEM_EVENT_E_INTEGRITY_FAILED:
#         {
#             retVal = eventIdsPtr -> dem_event_integrity_failed;
	.d2line		711
	lhz		r4,4(r3)		# retVal=r4 eventIdsPtr=r3
	mr		r4,r4		# retVal=r4 retVal=r4
	b		.L342
.L345:
#         }break;
# 
#         case NVM_DEM_EVENT_E_LOSS_OF_REDUNDANCY:
#         {
#             retVal = eventIdsPtr -> dem_event_lossof_redundancy;
	.d2line		716
	lhz		r4,6(r3)		# retVal=r4 eventIdsPtr=r3
	mr		r4,r4		# retVal=r4 retVal=r4
	b		.L342
.L346:
#         }break;
# 
#         case NVM_DEM_EVENT_E_VERIFY_FAILED:
#         {
#             retVal = eventIdsPtr -> dem_event_verify_failed;
	.d2line		721
	lhz		r4,8(r3)		# retVal=r4 eventIdsPtr=r3
	mr		r4,r4		# retVal=r4 retVal=r4
	b		.L342
.L347:
#         }break;
# 
#         case NVM_DEM_EVENT_E_QUEUE_OVERFLOW:
#         {
#             retVal = eventIdsPtr -> dem_event_queue_overflow;
	.d2line		726
	lhz		r4,10(r3)		# retVal=r4 eventIdsPtr=r3
	mr		r4,r4		# retVal=r4 retVal=r4
	b		.L342
.L348:
#         }break;
# 
#         case NVM_DEM_EVENT_E_WRITE_PROTECTED:
#         {
#             retVal = eventIdsPtr -> dem_event_write_protected;
	.d2line		731
	lhz		r4,12(r3)		# retVal=r4 eventIdsPtr=r3
	mr		r4,r4		# retVal=r4 retVal=r4
	b		.L342
.L349:
#         }break;
# 
#         case NVM_DEM_EVENT_E_WRONG_BLOCK_ID:
#         {
#             retVal = eventIdsPtr -> dem_event_wrong_block_id;
	.d2line		736
	lhz		r4,14(r3)		# retVal=r4 eventIdsPtr=r3
	mr		r4,r4		# retVal=r4 retVal=r4
.L342:
#         }break;
# 
#         default:
#         {
#             /* Do nothing */
#         }break;
#     }
#     return retVal;
	.d2line		744
.Llo2:
	rlwinm		r3,r4,0,16,31		# eventIdsPtr=r3 retVal=r4
# }
	.d2line		745
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
.L1551:
	.type		NvM_GetDem_EventIdElement,@function
	.size		NvM_GetDem_EventIdElement,.-NvM_GetDem_EventIdElement
# Number of nodes = 60

# Allocations for NvM_GetDem_EventIdElement
#	?a4		eventIdsPtr
#	?a5		eventIdNumber
#	?a6		retVal
# FUNC(void,NVM_CODE) NvM_Call_Dem_ReportErrorStatus
	.align		2
	.section	.text_vle
        .d2line         750,21
#$$ld
.L1572:

#$$bf	NvM_Call_Dem_ReportErrorStatus,interprocedural,rasave,nostackparams
	.globl		NvM_Call_Dem_ReportErrorStatus
	.d2_cfa_start __cie
NvM_Call_Dem_ReportErrorStatus:
.Llo9:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# blockId=r31 blockId=r3
.Llo10:
	mr		r8,r4		# eventId=r8 eventId=r4
.Llo11:
	mr		r5,r5		# eventStatus=r5 eventStatus=r5
	.d2prologue_end
# (
#         CONST(NvM_BlockIdType, AUTOMATIC) blockId,
#         CONST(NvM_DemEventIdNumberType, AUTOMATIC) eventId,
#         CONST(Dem_EventStatusType, AUTOMATIC) eventStatus
# )
# {
#     if(NULL_PTR != NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_Block_DemEventIds)
	.d2line		757
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# blockId=r31
	se_add		r3,r0
	lwz		r0,56(r3)
	se_cmpi		r0,0
	bc		1,2,.L361	# eq
#     {
#         if((Dem_EventIdType)0U != NvM_GetDem_EventIdElement(NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_Block_DemEventIds, eventId))
	.d2line		759
.Llo15:
	lis		r3,(NvM_BlockManagementTable+4)@ha
.Llo16:
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# blockId=r31
	se_add		r3,r0
	lwz		r3,56(r3)
	mr		r4,r8		# eventId=r4 eventId=r8
	bl		NvM_GetDem_EventIdElement
	e_and2i.		r3,65535
	bc		1,2,.L362	# eq
#         {
#             Dem_ReportErrorStatus(NvM_GetDem_EventIdElement(NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_Block_DemEventIds, eventId),
	.d2line		761
.Llo12:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
.Llo13:
	rlwinm		r31,r31,6,10,25		# blockId=r31 blockId=r31
	se_add		r31,r0		# blockId=r31 blockId=r31
	lwz		r3,56(r31)		# blockId=r31
	mr		r4,r8		# eventId=r4 eventId=r8
	bl		NvM_GetDem_EventIdElement
	rlwinm		r3,r3,0,16,31
	rlwinm		r4,r5,0,24,31		# eventStatus=r5
	bl		Dem_ReportErrorStatus
.Llo17:
	b		.L360
.L362:
	.section	.text_vle
.L1584:
#                                   eventStatus);
#         }
#         else
#         {
#             CONSTP2CONST(NvM_DemEventIdType,AUTOMATIC,NVM_APPL_DATA) globalDemEventIdPtr = &NvMDemEventId;
#             if(TRUE == IsDemEventIdValid(NvM_GetDem_EventIdElement(globalDemEventIdPtr, eventId)))
	.d2line		767
.Llo14:
	lis		r3,NvMDemEventId@ha
	e_add16i		r3,r3,NvMDemEventId@l
	mr		r4,r8		# eventId=r4 eventId=r8
	bl		NvM_GetDem_EventIdElement
	e_and2i.		r3,65535
	diab.li		r0,1
	isel		r0,r3,r0,2
.L367:
	isel		r0,0,r0,2
.L368:
	se_cmpi		r0,1
	bc		0,2,.L360	# ne
#             {
#                 Dem_ReportErrorStatus(NvM_GetDem_EventIdElement(globalDemEventIdPtr, eventId), eventStatus);
	.d2line		769
	lis		r3,NvMDemEventId@ha
	e_add16i		r3,r3,NvMDemEventId@l
	mr		r4,r8		# eventId=r4 eventId=r8
	bl		NvM_GetDem_EventIdElement
	rlwinm		r3,r3,0,16,31
	rlwinm		r4,r5,0,24,31		# eventStatus=r5
	bl		Dem_ReportErrorStatus
	.section	.text_vle
.L1585:
.Llo18:
	b		.L360
.L361:
	.section	.text_vle
.L1588:
#             }
#         }
#     }
#     else
#     {
#         CONSTP2CONST(NvM_DemEventIdType,AUTOMATIC,NVM_APPL_DATA) globalDemEventIdPtr = &NvMDemEventId;
#         if(TRUE == IsDemEventIdValid(NvM_GetDem_EventIdElement(globalDemEventIdPtr, eventId)))
	.d2line		776
.Llo19:
	lis		r3,NvMDemEventId@ha
	e_add16i		r3,r3,NvMDemEventId@l
	mr		r4,r8		# eventId=r4 eventId=r8
	bl		NvM_GetDem_EventIdElement
	e_and2i.		r3,65535
	diab.li		r0,1
	isel		r0,r3,r0,2
.L369:
	isel		r0,0,r0,2
.L370:
	se_cmpi		r0,1
	bc		0,2,.L360	# ne
#         {
#             Dem_ReportErrorStatus(NvM_GetDem_EventIdElement(globalDemEventIdPtr, eventId), eventStatus);
	.d2line		778
	lis		r3,NvMDemEventId@ha
	e_add16i		r3,r3,NvMDemEventId@l
	mr		r4,r8		# eventId=r4 eventId=r8
	bl		NvM_GetDem_EventIdElement
	rlwinm		r3,r3,0,16,31
	rlwinm		r4,r5,0,24,31		# eventStatus=r5
	bl		Dem_ReportErrorStatus
	.section	.text_vle
.L1589:
.L360:
#         }
#     }
# }
	.d2line		781
	.d2epilogue_begin
.Llo20:
	lwz		r31,28(r1)		# offset r1+28  0x1c
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
.L1573:
	.type		NvM_Call_Dem_ReportErrorStatus,@function
	.size		NvM_Call_Dem_ReportErrorStatus,.-NvM_Call_Dem_ReportErrorStatus
# Number of nodes = 140

# Allocations for NvM_Call_Dem_ReportErrorStatus
#	?a4		blockId
#	?a5		eventId
#	?a6		eventStatus
#	?a7		$$13
#	?a8		$$12
#	?a9		$$11
#	?a10		$$10
#	?a11		$$9
#	not allocated	globalDemEventIdPtr
#	not allocated	globalDemEventIdPtr
# FUNC(void,NVM_CODE) NvM_Call_Dem_ReportErrorStatus_AllPassed
	.align		2
	.section	.text_vle
        .d2line         784,21
#$$ld
.L1594:

#$$bf	NvM_Call_Dem_ReportErrorStatus_AllPassed,interprocedural,rasave,nostackparams
	.globl		NvM_Call_Dem_ReportErrorStatus_AllPassed
	.d2_cfa_start __cie
NvM_Call_Dem_ReportErrorStatus_AllPassed:
.Llo21:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# blockId=r31 blockId=r3
	.d2prologue_end
# (
#     CONST(NvM_BlockIdType, AUTOMATIC) blockId
# )
# {
#     NvM_Call_Dem_ReportErrorStatus(blockId, NVM_DEM_EVENT_E_HARDWARE,           DEM_EVENT_STATUS_PASSED);
	.d2line		789
.Llo22:
	mr		r3,r31		# blockId=r3 blockId=r31
.Llo23:
	diab.li		r4,1
	diab.li		r5,0
	bl		NvM_Call_Dem_ReportErrorStatus
#     /* [DD-NVM00873-MGC01-V1] */
#     NvM_Call_Dem_ReportErrorStatus(blockId, NVM_DEM_EVENT_E_REQ_FAILED,         DEM_EVENT_STATUS_PASSED);
	.d2line		791
	mr		r3,r31		# blockId=r3 blockId=r31
	diab.li		r4,2
	diab.li		r5,0
	bl		NvM_Call_Dem_ReportErrorStatus
#     /* [DD-NVM00872-MGC01-V1] */
#     NvM_Call_Dem_ReportErrorStatus(blockId, NVM_DEM_EVENT_E_INTEGRITY_FAILED,   DEM_EVENT_STATUS_PASSED);
	.d2line		793
	mr		r3,r31		# blockId=r3 blockId=r31
	diab.li		r4,3
	diab.li		r5,0
	bl		NvM_Call_Dem_ReportErrorStatus
#     /* [DD-NVM00876-MGC01-V1] */
#     NvM_Call_Dem_ReportErrorStatus(blockId, NVM_DEM_EVENT_E_LOSS_OF_REDUNDANCY, DEM_EVENT_STATUS_PASSED);
	.d2line		795
	mr		r3,r31		# blockId=r3 blockId=r31
	diab.li		r4,4
	diab.li		r5,0
	bl		NvM_Call_Dem_ReportErrorStatus
#     /* [DD-NVM00875-MGC01-V1] */
#     NvM_Call_Dem_ReportErrorStatus(blockId, NVM_DEM_EVENT_E_VERIFY_FAILED,      DEM_EVENT_STATUS_PASSED);
	.d2line		797
	mr		r3,r31		# blockId=r3 blockId=r31
	diab.li		r4,5
	diab.li		r5,0
	bl		NvM_Call_Dem_ReportErrorStatus
#     /* [DD-NVM00877-MGC01-V1] */
#     NvM_Call_Dem_ReportErrorStatus(blockId, NVM_DEM_EVENT_E_QUEUE_OVERFLOW,     DEM_EVENT_STATUS_PASSED);
	.d2line		799
	mr		r3,r31		# blockId=r3 blockId=r31
	diab.li		r4,6
	diab.li		r5,0
	bl		NvM_Call_Dem_ReportErrorStatus
#     /* [DD-NVM00878-MGC01-V1] */
#     NvM_Call_Dem_ReportErrorStatus(blockId, NVM_DEM_EVENT_E_WRITE_PROTECTED,    DEM_EVENT_STATUS_PASSED);
	.d2line		801
	mr		r3,r31		# blockId=r3 blockId=r31
	diab.li		r4,7
	diab.li		r5,0
	bl		NvM_Call_Dem_ReportErrorStatus
#     /* [DD-NVM00874-MGC01-V1] */
#     NvM_Call_Dem_ReportErrorStatus(blockId, NVM_DEM_EVENT_E_WRONG_BLOCK_ID,     DEM_EVENT_STATUS_PASSED);
	.d2line		803
	mr		r3,r31		# blockId=r3 blockId=r31
	diab.li		r4,8
	diab.li		r5,0
	bl		NvM_Call_Dem_ReportErrorStatus
# }
	.d2line		804
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo24:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1595:
	.type		NvM_Call_Dem_ReportErrorStatus_AllPassed,@function
	.size		NvM_Call_Dem_ReportErrorStatus_AllPassed,.-NvM_Call_Dem_ReportErrorStatus_AllPassed
# Number of nodes = 72

# Allocations for NvM_Call_Dem_ReportErrorStatus_AllPassed
#	?a4		blockId
# FUNC(boolean,NVM_CODE) NvM_IsDem_EventIdConfigured
	.align		2
	.section	.text_vle
        .d2line         807,24
#$$ld
.L1600:

#$$bf	NvM_IsDem_EventIdConfigured,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr,ctr
	.globl		NvM_IsDem_EventIdConfigured
	.d2_cfa_start __cie
NvM_IsDem_EventIdConfigured:
.Llo25:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# blockId=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# blockId=r0 blockId=r3
.Llo26:
	mr		r5,r4		# eventId=r5 eventId=r4
	.d2prologue_end
# (
#         CONST(NvM_BlockIdType, AUTOMATIC) blockId,
#         CONST(NvM_DemEventIdNumberType, AUTOMATIC) eventId
# )
# {
#     VAR(boolean, AUTOMATIC) retVal = FALSE;
	.d2line		813
.Llo27:
	diab.li		r31,0		# retVal=r31
# 
#     if(NULL_PTR != NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_Block_DemEventIds)
	.d2line		815
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r0,6,10,25		# blockId=r0
.Llo35:
	se_add		r3,r4
	lwz		r3,56(r3)
	se_cmpi		r3,0
	bc		1,2,.L380	# eq
#     {
#         if((Dem_EventIdType)0U != NvM_GetDem_EventIdElement(NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_Block_DemEventIds, eventId))
	.d2line		817
.Llo28:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
.Llo29:
	rlwinm		r0,r0,6,10,25		# blockId=r0 blockId=r0
	se_add		r3,r0		# blockId=r0
	lwz		r3,56(r3)
	mr		r4,r5		# eventId=r4 eventId=r5
	bl		NvM_GetDem_EventIdElement
.Llo30:
	e_and2i.		r3,65535
	bc		1,2,.L381	# eq
#         {
#             retVal = TRUE;
	.d2line		819
	diab.li		r31,1		# retVal=r31
	b		.L384
.L381:
	.section	.text_vle
.L1608:
#         }
#         else
#         {
#             CONSTP2CONST(NvM_DemEventIdType,AUTOMATIC,NVM_APPL_DATA) globalDemEventIdPtr = &NvMDemEventId;
#             if(TRUE == IsDemEventIdValid(NvM_GetDem_EventIdElement(globalDemEventIdPtr, eventId)))
	.d2line		824
	lis		r3,NvMDemEventId@ha
	e_add16i		r3,r3,NvMDemEventId@l
	mr		r4,r5		# eventId=r4 eventId=r5
	bl		NvM_GetDem_EventIdElement
	e_and2i.		r3,65535
	diab.li		r0,1		# blockId=r0
.Llo31:
	isel		r0,r3,r0,2		# blockId=r0 blockId=r0
.L386:
.Llo36:
	isel		r0,0,r0,2		# blockId=r0 blockId=r0
.L387:
	se_cmpi		r0,1		# blockId=r0
	bc		0,2,.L384	# ne
#             {
#                 retVal = TRUE;
	.d2line		826
.Llo32:
	diab.li		r31,1		# retVal=r31
	.section	.text_vle
.L1609:
	b		.L384
.L380:
	.section	.text_vle
.L1612:
#             }
#         }
#     }
#     else
#     {
#         CONSTP2CONST(NvM_DemEventIdType,AUTOMATIC,NVM_APPL_DATA) globalDemEventIdPtr = &NvMDemEventId;
#         if(TRUE == IsDemEventIdValid(NvM_GetDem_EventIdElement(globalDemEventIdPtr, eventId)))
	.d2line		833
.Llo37:
	lis		r3,NvMDemEventId@ha
	e_add16i		r3,r3,NvMDemEventId@l
	mr		r4,r5		# eventId=r4 eventId=r5
	bl		NvM_GetDem_EventIdElement
	e_and2i.		r3,65535
	diab.li		r0,1		# blockId=r0
.Llo33:
	isel		r0,r3,r0,2		# blockId=r0 blockId=r0
.L388:
.Llo38:
	isel		r0,0,r0,2		# blockId=r0 blockId=r0
.L389:
	se_cmpi		r0,1		# blockId=r0
	bc		0,2,.L384	# ne
#         {
#             retVal = TRUE;
	.d2line		835
.Llo34:
	diab.li		r31,1		# retVal=r31
	.section	.text_vle
.L1613:
.L384:
#         }
#     }
# 
#     return retVal;
	.d2line		839
	rlwinm		r3,r31,0,24,31		# retVal=r31
# }
	.d2line		840
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo39:
	lwz		r0,36(r1)		# blockId=r0
	mtspr		lr,r0		# blockId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1601:
	.type		NvM_IsDem_EventIdConfigured,@function
	.size		NvM_IsDem_EventIdConfigured,.-NvM_IsDem_EventIdConfigured
# Number of nodes = 92

# Allocations for NvM_IsDem_EventIdConfigured
#	?a4		blockId
#	?a5		eventId
#	?a6		$$15
#	?a7		$$14
#	?a8		retVal
#	not allocated	globalDemEventIdPtr
#	not allocated	globalDemEventIdPtr
#  FUNC(void,NVM_CODE) NvM_MemCopy(P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) dst, CONSTP2CONST(uint8,AUTOMATIC,NVM_APPL_DATA) src, VAR(uint16,AUTOMATIC) length)
	.align		2
	.section	.text_vle
        .d2line         908,22
#$$ld
.L1618:

#$$bf	NvM_MemCopy,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		NvM_MemCopy
	.d2_cfa_start __cie
NvM_MemCopy:
.Llo40:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# dst=r3 dst=r3
	mr		r4,r4		# src=r4 src=r4
.Llo42:
	mr		r0,r5		# length=r0 length=r5
	.d2prologue_end
# {
#    VAR(uint16,AUTOMATIC) index;
#    for(index = 0; index < length ; ++index)
	.d2line		911
	diab.li		r5,0		# index=r5
.L414:
.Llo43:
	rlwinm		r6,r5,0,16,31		# index=r5
.Llo44:
	rlwinm		r7,r0,0,16,31		# length=r0
	se_cmp		r6,r7
	bc		0,0,.L413	# ge
#    {
#       dst[index] = src[index];
	.d2line		913
	rlwinm		r6,r5,0,16,31		# index=r5
	lbzux		r7,r6,r4
	rlwinm		r6,r5,0,16,31		# index=r5
	stbx		r7,r3,r6		# dst=r3
#    }
	.d2line		914
	diab.addi		r6,r5,1		# index=r5
	se_addi		r5,1		# index=r5 index=r5
	b		.L414
.L413:
# }
	.d2line		915
	.d2epilogue_begin
.Llo41:
	lwz		r0,20(r1)		# length=r0
	mtspr		lr,r0		# length=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1619:
	.type		NvM_MemCopy,@function
	.size		NvM_MemCopy,.-NvM_MemCopy
# Number of nodes = 22

# Allocations for NvM_MemCopy
#	?a4		dst
#	?a5		src
#	?a6		length
#	?a7		index
#  FUNC(void,NVM_CODE) NvM_CopyRamToRamMirror(P2CONST(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block)
	.align		2
	.section	.text_vle
        .d2line         848,22
#$$ld
.L1632:

#$$bf	NvM_CopyRamToRamMirror,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		NvM_CopyRamToRamMirror
	.d2_cfa_start __cie
NvM_CopyRamToRamMirror:
.Llo45:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# arg_block=r4 arg_block=r3
	.d2prologue_end
# {
#      CONSTP2CONST(uint8,AUTOMATIC,NVM_APPL_DATA)configIdPtr = (P2CONST(uint8,AUTOMATIC,NVM_APPL_DATA)) &(NvM_Common.NvM_CompiledConfigId);
# 
#      if(Is_Conf_Block_Static_BlockIdCheck(arg_block->block_id))
	.d2line		852
.Llo46:
	lis		r3,(NvM_BlockManagementTable+4)@ha
.Llo47:
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r4)		# arg_block=r4
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	bc		0,2,.L398	# ne
#      {
#          if(arg_block->block_id == NVM_BLOCK_1)
	.d2line		854
	lhz		r0,4(r4)		# arg_block=r4
	se_cmpi		r0,1
	bc		0,2,.L399	# ne
#          {
#              /* [DD-NVM00547-MGC01-V1] */
#              NvM_MemCopy((NvM_Common.NvM_RamMirrorPtr+NVM_BLOCK_HEADER_SIZE),configIdPtr,Get_Conf_Block_Length(arg_block->block_id));
	.d2line		857
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r0,4(r4)		# arg_block=r4
	rlwinm		r0,r0,6,10,25
	se_add		r3,r0
	lhz		r5,20(r3)
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
	se_addi		r3,2
	lis		r4,(NvM_Common+2)@ha		# arg_block=r4
	e_add16i		r4,r4,(NvM_Common+2)@l		# arg_block=r4 arg_block=r4
.Llo48:
	bl		NvM_MemCopy
	b		.L397
.L399:
#          }
#          else
#          {
#              NvM_MemCopy((NvM_Common.NvM_RamMirrorPtr+NVM_BLOCK_HEADER_SIZE),arg_block->ram_block_ptr,Get_Conf_Block_Length(arg_block->block_id));
	.d2line		861
.Llo49:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r4)		# arg_block=r4
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r5,20(r3)
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
	se_addi		r3,2
	lwz		r4,8(r4)		# arg_block=r4 arg_block=r4
.Llo50:
	bl		NvM_MemCopy
	b		.L397
.L398:
#          }
#      }
#      else
#      {
#          if(arg_block->block_id == NVM_BLOCK_1)
	.d2line		866
.Llo51:
	lhz		r0,4(r4)		# arg_block=r4
	se_cmpi		r0,1
	bc		0,2,.L402	# ne
#          {
#              /* [DD-NVM00547-MGC01-V1] */
#              NvM_MemCopy((NvM_Common.NvM_RamMirrorPtr),configIdPtr,Get_Conf_Block_Length(arg_block->block_id));
	.d2line		869
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r0,4(r4)		# arg_block=r4
	rlwinm		r0,r0,6,10,25
	se_add		r3,r0
	lhz		r5,20(r3)
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
	lis		r4,(NvM_Common+2)@ha		# arg_block=r4
	e_add16i		r4,r4,(NvM_Common+2)@l		# arg_block=r4 arg_block=r4
.Llo52:
	bl		NvM_MemCopy
	b		.L397
.L402:
#          }
#          else
#          {
#              NvM_MemCopy((NvM_Common.NvM_RamMirrorPtr),arg_block->ram_block_ptr,Get_Conf_Block_Length(arg_block->block_id));
	.d2line		873
.Llo53:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r4)		# arg_block=r4
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r5,20(r3)
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
	lwz		r4,8(r4)		# arg_block=r4 arg_block=r4
.Llo54:
	bl		NvM_MemCopy
.L397:
#          }
#      }
# }
	.d2line		876
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1633:
	.type		NvM_CopyRamToRamMirror,@function
	.size		NvM_CopyRamToRamMirror,.-NvM_CopyRamToRamMirror
# Number of nodes = 166

# Allocations for NvM_CopyRamToRamMirror
#	?a4		arg_block
#	not allocated	configIdPtr
# FUNC(void,NVM_CODE) NvM_CopyRamMirrorToRam(P2CONST(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block)
	.align		2
	.section	.text_vle
        .d2line         884,21
#$$ld
.L1642:

#$$bf	NvM_CopyRamMirrorToRam,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		NvM_CopyRamMirrorToRam
	.d2_cfa_start __cie
NvM_CopyRamMirrorToRam:
.Llo55:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# arg_block=r3 arg_block=r3
	.d2prologue_end
# {
#    if(Is_Conf_Block_Static_BlockIdCheck(arg_block->block_id))
	.d2line		886
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r4,4(r3)		# arg_block=r3
	rlwinm		r4,r4,6,10,25
	se_add		r4,r0
	lhz		r0,60(r4)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	bc		0,2,.L409	# ne
#    {
#       NvM_MemCopy(arg_block->ram_block_ptr,(NvM_Common.NvM_RamMirrorPtr+NVM_BLOCK_HEADER_SIZE),Get_Conf_Block_Length(arg_block->block_id));
	.d2line		888
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r4,4(r3)		# arg_block=r3
	rlwinm		r4,r4,6,10,25
	se_add		r4,r0
	lhz		r5,20(r4)
	lis		r4,(NvM_Common+24)@ha
	lwz		r4,(NvM_Common+24)@l(r4)
	se_addi		r4,2
	lwz		r3,8(r3)		# arg_block=r3 arg_block=r3
.Llo56:
	bl		NvM_MemCopy
	b		.L408
.L409:
#    }
#    else
#    {
#       NvM_MemCopy(arg_block->ram_block_ptr,(NvM_Common.NvM_RamMirrorPtr),Get_Conf_Block_Length(arg_block->block_id));
	.d2line		892
.Llo57:
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r4,4(r3)		# arg_block=r3
	rlwinm		r4,r4,6,10,25
	se_add		r4,r0
	lhz		r5,20(r4)
	lis		r4,(NvM_Common+24)@ha
	lwz		r4,(NvM_Common+24)@l(r4)
	lwz		r3,8(r3)		# arg_block=r3 arg_block=r3
.Llo58:
	bl		NvM_MemCopy
.L408:
#    }
# }
	.d2line		894
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1643:
	.type		NvM_CopyRamMirrorToRam,@function
	.size		NvM_CopyRamMirrorToRam,.-NvM_CopyRamMirrorToRam
# Number of nodes = 86

# Allocations for NvM_CopyRamMirrorToRam
#	?a4		arg_block
# static FUNC(void,NVM_CODE) NvM_CallSingleBlockCallback
	.align		1
	.section	.text_vle
        .d2line         924,28
#$$ld
.L1648:

#$$bf	NvM_CallSingleBlockCallback,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_CallSingleBlockCallback:
.Llo59:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# arg_block_id=r3 arg_block_id=r3
	mr		r0,r4		# arg_service_id=r0 arg_service_id=r4
	.d2prologue_end
# (
#    VAR(NvM_BlockIdType,AUTOMATIC) arg_block_id,
#    VAR(NvM_ServiceIdType,AUTOMATIC) arg_service_id
# )
# {
#    /* [DD-NVM00742-MGC01-V1] [DD-NVM00347-MGC01-V1] [DD-NVM00350-MGC01-V1] */
#    if(NULL_PTR!=NvM_BlockManagementTable.BlockDescriptorPtr[arg_block_id].NvMSingleBlockCallback)
	.d2line		931
	lis		r4,(NvM_BlockManagementTable+4)@ha
.Llo61:
	lwz		r4,(NvM_BlockManagementTable+4)@l(r4)
	rlwinm		r5,r3,6,10,25		# arg_block_id=r3
	se_add		r4,r5
	lwz		r4,44(r4)
	se_cmpi		r4,0
	bc		1,2,.L419	# eq
#    {
#       NvM_BlockManagementTable.BlockDescriptorPtr[arg_block_id].NvMSingleBlockCallback(
	.d2line		933
.Llo62:
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r5,(NvM_BlockManagementTable+4)@l(r4)
	rlwinm		r4,r3,6,10,25		# arg_block_id=r3
	se_add		r4,r5
	lwz		r4,44(r4)
	mtspr		ctr,r4
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r4,NvM_BlockManagementTable@l(r4)
	rlwinm		r3,r3,3,13,28		# arg_block_id=r3 arg_block_id=r3
	se_add		r3,r4		# arg_block_id=r3 arg_block_id=r3
	lbz		r4,1(r3)		# arg_block_id=r3
	mr		r3,r0		# arg_service_id=r3 arg_service_id=r0
	rlwinm		r3,r3,0,24,31		# arg_block_id=r3 arg_block_id=r3
.Llo60:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.L419:
#          (uint8)arg_service_id, /* [DD-NVM00741-MGC01-V1] */
#          NvM_BlockManagementTable.AdminBlockPtr[arg_block_id].error_status
#          ); /* [DD-NVM00740-MGC01-V1] */
#    }
# }
	.d2line		938
	.d2epilogue_begin
.Llo63:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1649:
	.type		NvM_CallSingleBlockCallback,@function
	.size		NvM_CallSingleBlockCallback,.-NvM_CallSingleBlockCallback
# Number of nodes = 47

# Allocations for NvM_CallSingleBlockCallback
#	?a4		arg_block_id
#	?a5		arg_service_id
# static FUNC(void,NVM_CODE) NvM_CallMultiBlockCallback
	.align		1
	.section	.text_vle
        .d2line         945,28
#$$ld
.L1657:

#$$bf	NvM_CallMultiBlockCallback,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_CallMultiBlockCallback:
.Llo64:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# arg_service_id=r0 arg_service_id=r3
	.d2prologue_end
# (
#    VAR(NvM_ServiceIdType,AUTOMATIC) arg_service_id
# )
# {
#    if (NULL_PTR!=NvM_Common.NvM_MultiBlockCallback)
	.d2line		950
	lis		r3,(NvM_Common+8)@ha
.Llo65:
	lwz		r3,(NvM_Common+8)@l(r3)
	se_cmpi		r3,0
	bc		1,2,.L422	# eq
#    {
#       /* [DD-NVM00260-MGC01-V1] */
#       NvM_Common.NvM_MultiBlockCallback((uint8)arg_service_id, /* [DD-NVM00686-MGC01-V1] */
	.d2line		953
.Llo66:
	lis		r3,(NvM_Common+8)@ha
	lwz		r3,(NvM_Common+8)@l(r3)
	mtspr		ctr,r3
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	lbz		r4,1(r3)
	mr		r3,r0		# arg_service_id=r3 arg_service_id=r0
	rlwinm		r3,r3,0,24,31
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L422:
#                                         NvM_BlockManagementTable.AdminBlockPtr[NVM_BLOCK_0].error_status);
#    }
# }
	.d2line		956
	.d2epilogue_begin
.Llo67:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1658:
	.type		NvM_CallMultiBlockCallback,@function
	.size		NvM_CallMultiBlockCallback,.-NvM_CallMultiBlockCallback
# Number of nodes = 26

# Allocations for NvM_CallMultiBlockCallback
#	?a4		arg_service_id
# static FUNC(void,NVM_CODE) NvM_CallBlockInitCallback
	.align		1
	.section	.text_vle
        .d2line         964,28
#$$ld
.L1663:

#$$bf	NvM_CallBlockInitCallback,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_CallBlockInitCallback:
.Llo68:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# arg_block_id=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# arg_block_id=r0 arg_block_id=r3
	.d2prologue_end
# (
#    VAR(NvM_BlockIdType,AUTOMATIC) arg_block_id
# )
# {
#    if (Is_Conf_Block_Init_Callback(arg_block_id))
	.d2line		969
.Llo69:
	lis		r3,(NvM_BlockManagementTable+4)@ha
.Llo70:
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r0,6,10,25		# arg_block_id=r0
	se_add		r3,r4
	lwz		r3,40(r3)
	se_cmpi		r3,0
	bc		1,2,.L425	# eq
#    {
#       /* [DD-NVM00469-MGC01-V1] */
#       (void)NvM_BlockManagementTable.BlockDescriptorPtr[arg_block_id].NvM_InitBlockCallback();
	.d2line		972
.Llo71:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
.Llo72:
	rlwinm		r0,r0,6,10,25		# arg_block_id=r0 arg_block_id=r0
	se_add		r3,r0		# arg_block_id=r0
	lwz		r0,40(r3)		# arg_block_id=r0
.Llo73:
	mtspr		ctr,r0		# arg_block_id=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.L425:
#    }
# }
	.d2line		974
	.d2epilogue_begin
	lwz		r0,20(r1)		# arg_block_id=r0
	mtspr		lr,r0		# arg_block_id=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1664:
	.type		NvM_CallBlockInitCallback,@function
	.size		NvM_CallBlockInitCallback,.-NvM_CallBlockInitCallback
# Number of nodes = 30

# Allocations for NvM_CallBlockInitCallback
#	?a4		arg_block_id
# static FUNC(boolean,NVM_CODE) NvM_SelectSingleBlockOperation(void)
	.align		1
	.section	.text_vle
        .d2line         983,31
#$$ld
.L1670:

#$$bf	NvM_SelectSingleBlockOperation,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r6,r7,cr0,lr,ctr
	.d2_cfa_start __cie
NvM_SelectSingleBlockOperation:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) stop_processing=FALSE;
	.d2line		985
	diab.li		r3,0		# stop_processing=r3
# 
#    switch(NvM_Current_Block.service_id)
	.d2line		987
.Llo74:
	lis		r4,NvM_Current_Block@ha
	lwz		r6,NvM_Current_Block@l(r4)
	diab.addi		r0,r6,-6
	se_cmpli	r0,18
	rlwinm		r6,r0,2,0,29
	e_add2is		r6,.L1675@ha
	bc		1,1,.L438	# gt
	lwz		r7,.L1675@l(r6)
	mtspr		ctr,r7
	bcctr		20,0
.L1675:
#$$sl
	.long		.L429
	.long		.L432
	.long		.L431
	.long		.L433
	.long		.L438
	.long		.L434
	.long		.L438
	.long		.L438
	.long		.L438
	.long		.L438
	.long		.L438
	.long		.L438
	.long		.L438
	.long		.L438
	.long		.L438
	.long		.L438
	.long		.L435
	.long		.L437
	.long		.L436
#$$se
.L429:
#    {
#        case NVM_READ_BLOCK_ID:
#        {
#           Set_Sub_State_Machine(NVM_SUBSTATE_READBLOCK_INIT);
	.d2line		991
	diab.li		r0,11
	lis		r4,NvM_SubStateDbg@ha
	e_add16i		r4,r4,NvM_SubStateDbg@l
	stw		r0,0(r4)
	b		.L430
.L431:
#        }break;
# 
#        case NVM_RESTORE_BLOCK_DEFAULTS_ID:
#        {
#           Set_Sub_State_Machine(NVM_SUBSTATE_RESTOREBLOCK_READ_DEFAULTS);
	.d2line		996
	diab.li		r0,14
	lis		r4,NvM_SubStateDbg@ha
	e_add16i		r4,r4,NvM_SubStateDbg@l
	stw		r0,0(r4)
	b		.L430
.L432:
#        }break;
# 
#        case NVM_WRITE_BLOCK_ID:
#        {
#           Set_Sub_State_Machine(NVM_SUBSTATE_WRITEBLOCK_INIT);
	.d2line		1001
	diab.li		r0,16
	lis		r4,NvM_SubStateDbg@ha
	e_add16i		r4,r4,NvM_SubStateDbg@l
	stw		r0,0(r4)
	b		.L430
.L433:
#        }break;
# 
#      #if ( NVM_API_CONFIG_CLASS == NVM_API_CONFIG_CLASS_3 )
#        case NVM_ERASE_BLOCK_ID:
#        {
#           Set_Sub_State_Machine(NVM_SUBSTATE_ERASEBLOCK_INIT);
	.d2line		1007
	diab.li		r0,18
	lis		r4,NvM_SubStateDbg@ha
	e_add16i		r4,r4,NvM_SubStateDbg@l
	stw		r0,0(r4)
	b		.L430
.L434:
#        }break;
#      #endif
# 
#      #if ( NVM_API_CONFIG_CLASS == NVM_API_CONFIG_CLASS_3 )
#        case NVM_INVALIDATE_NV_BLOCK_ID:
#        {
#           Set_Sub_State_Machine(NVM_SUBSTATE_INVALIDATEBLOCK_INIT);
	.d2line		1014
	diab.li		r0,21
	lis		r4,NvM_SubStateDbg@ha
	e_add16i		r4,r4,NvM_SubStateDbg@l
	stw		r0,0(r4)
	b		.L430
.L435:
#        }break;
#      #endif
# 
#      #if (NVM_421_FEATURES_ENABLE == STD_ON)
#        case NVM_READ_PRAM_BLOCK_ID:
#        {
#            Set_Sub_State_Machine(NVM_SUBSTATE_READ_PRAM_BLOCK_INIT);
	.d2line		1021
	diab.li		r0,31
	lis		r4,NvM_SubStateDbg@ha
	e_add16i		r4,r4,NvM_SubStateDbg@l
	stw		r0,0(r4)
	b		.L430
.L436:
#        }break;
# 
#        case NVM_RESTORE_PRAM_BLOCK_DEFAULTS_ID:
#        {
#            Set_Sub_State_Machine(NVM_SUBSTATE_RESTORE_PRAM_BLOCK_READ_DEFAULTS);
	.d2line		1026
	diab.li		r0,34
	lis		r4,NvM_SubStateDbg@ha
	e_add16i		r4,r4,NvM_SubStateDbg@l
	stw		r0,0(r4)
	b		.L430
.L437:
#        }break;
# 
#        case NVM_WRITE_PRAM_BLOCK_ID:
#        {
#            Set_Sub_State_Machine(NVM_SUBSTATE_WRITE_PRAM_BLOCK_INIT);
	.d2line		1031
	diab.li		r0,36
	lis		r4,NvM_SubStateDbg@ha
	e_add16i		r4,r4,NvM_SubStateDbg@l
	stw		r0,0(r4)
	b		.L430
.L438:
#        }break;
#      #endif
# 
#        default:
#        {
#       /* unknown service, remove it from queue and reset NvM_Current_Block
#        * variable
#        */
#            NvM_Current_Block.service_id=NVM_NO_SERVICE_PENDING_ID;
	.d2line		1040
	diab.li		r0,26
	lis		r3,NvM_Current_Block@ha		# stop_processing=r3
	e_add16i		r3,r3,NvM_Current_Block@l		# stop_processing=r3 stop_processing=r3
	stw		r0,0(r3)		# stop_processing=r3
#            Set_Main_State_Machine(NVM_MAIN_STATE_IDLE);
	.d2line		1041
	diab.li		r0,0
	lis		r3,NvM_MainStateDbg@ha		# stop_processing=r3
	e_add16i		r3,r3,NvM_MainStateDbg@l		# stop_processing=r3 stop_processing=r3
	stw		r0,0(r3)		# stop_processing=r3
#          #if NVM_JOB_PRIORITIZATION==STD_ON
#            (void) NvM_ListRemoveJob(NvM_Current_Block.block_id);
#          #endif
#            stop_processing=TRUE;
	.d2line		1045
	diab.li		r3,1		# stop_processing=r3
.L430:
#        }break;
#    }
#    return stop_processing;
	.d2line		1048
	rlwinm		r3,r3,0,24,31		# stop_processing=r3 stop_processing=r3
# }
	.d2line		1049
	.d2epilogue_begin
.Llo75:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1671:
	.type		NvM_SelectSingleBlockOperation,@function
	.size		NvM_SelectSingleBlockOperation,.-NvM_SelectSingleBlockOperation
# Number of nodes = 52

# Allocations for NvM_SelectSingleBlockOperation
#	?a4		stop_processing
# static FUNC(boolean,NVM_CODE) NvM_ActMainStateIdle(void)
	.align		1
	.section	.text_vle
        .d2line         1059,31
#$$ld
.L1678:

#$$bf	NvM_ActMainStateIdle,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActMainStateIdle:
.Llo76:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing=FALSE;
	.d2line		1061
	diab.li		r31,0		# tmp_stop_processing=r31
# 
# /* [DD-NVM00155-MGC01-V1] */
# #if (NVM_JOB_PRIORITIZATION == STD_ON)
#    /* [DD-NVM00381-MGC01-V1] [DD-NVM00567-MGC01-V1] [DD-NVM00300-MGC01-V1] */
#    /* [DD-NVM00259-MGC01-V1] */
#    if(TRUE == NvM_QueGetImmediateQueueElement(&NvM_Immediate_Block))
#    {
#       Set_Main_State_Machine(NVM_MAIN_STATE_WRITE_BLOCK_IMEDIATLY); /* [DD-NVM00182-MGC01-V1] */
#       Set_Sub_State_Machine(NVM_SUBSTATE_IM_WRITE_INIT);
#    }
#    else
# #endif
# #if (NVM_API_CONFIG_CLASS==NVM_API_CONFIG_CLASS_2||NVM_API_CONFIG_CLASS==NVM_API_CONFIG_CLASS_3 )
# #if (NVM_JOB_PRIORITIZATION == STD_OFF)
#    /* [DD-NVM00254-MGC01-V1] */
#    if(TRUE == NvM_QueGetStandardQueueElement(&NvM_Current_Block))
	.d2line		1077
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	bl		NvM_QueGetStandardQueueElement
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L450	# ne
# #else
#    if(TRUE == NvM_QueCopyStandardQueueElement(&NvM_Current_Block)) /* [DD-NVM00258-MGC01-V1] */
# #endif
#    {
# 
#       NvM_Call_Dem_ReportErrorStatus_AllPassed(NvM_Current_Block.block_id);
	.d2line		1083
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	bl		NvM_Call_Dem_ReportErrorStatus_AllPassed
# 
#       Set_Main_State_Machine(NVM_MAIN_STATE_SINGLE_BLOCK_OPERATION);
	.d2line		1085
	diab.li		r0,2
	lis		r3,NvM_MainStateDbg@ha
	e_add16i		r3,r3,NvM_MainStateDbg@l
	stw		r0,0(r3)
# 
#       tmp_stop_processing=NvM_SelectSingleBlockOperation();
	.d2line		1087
	bl		NvM_SelectSingleBlockOperation
	mr		r31,r3		# tmp_stop_processing=r31 tmp_stop_processing=r3
	b		.L451
.L450:
#    }
#    else
# #endif
#    /* [DD-NVM00243-MGC01-V1] */
#    if(NVM_READ_ALL_ID==NvM_Req_Multiblock)
	.d2line		1092
	lis		r3,NvM_Req_Multiblock@ha
	lwz		r0,NvM_Req_Multiblock@l(r3)
	se_cmpi		r0,12
	bc		0,2,.L452	# ne
#    {
#       NvM_Current_Block.service_id=NVM_READ_ALL_ID;
	.d2line		1094
	diab.li		r0,12
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	stw		r0,0(r3)
#       NvM_Current_Block.block_id=NVM_BLOCK_1;
	.d2line		1095
	diab.li		r0,1
	lis		r3,(NvM_Current_Block+4)@ha
	sth		r0,(NvM_Current_Block+4)@l(r3)
#       Set_Main_State_Machine(NVM_MAIN_STATE_MULTI_BLOCK_OPERATION);
	.d2line		1096
	lis		r3,NvM_MainStateDbg@ha
	e_add16i		r3,r3,NvM_MainStateDbg@l
	stw		r0,0(r3)
#       Set_Sub_State_Machine(NVM_SUBSTATE_READALL_INIT);
	.d2line		1097
	diab.li		r0,0
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L451
.L452:
#    }
#    else if(NVM_WRITE_ALL_ID==NvM_Req_Multiblock)
	.d2line		1099
	lis		r3,NvM_Req_Multiblock@ha
	lwz		r0,NvM_Req_Multiblock@l(r3)
	se_cmpi		r0,13
	bc		0,2,.L454	# ne
#    {
#       /* job canceled before starting*/
#       if(TRUE==req_cancel_write_all)
	.d2line		1102
	lis		r3,req_cancel_write_all@ha
	lbz		r0,req_cancel_write_all@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L455	# ne
#       {
#          /* [DD-NVM00393-MGC01-V1] */
#          Set_Adm_Block_Error_Status(NVM_BLOCK_0, (NvM_RequestResultType)NVM_REQ_CANCELED);
	.d2line		1105
	diab.li		r0,6
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	stb		r0,1(r3)
#          /* [DD-NVM00234-MGC01-V1] [DD-NVM00235-MGC01-V1] */
#          NvM_Current_Block.service_id=NVM_CANCEL_WRITE_ALL_ID;
	.d2line		1107
	diab.li		r0,10
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	stw		r0,0(r3)
# 
#          /* [DD-NVM00745-MGC01-V1] */
#          if(TRUE == NvM_Common.NvM_BswMMultiBlk)
	.d2line		1110
	lis		r3,(NvM_Common+34)@ha
	lbz		r0,(NvM_Common+34)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L456	# ne
#          {
#             NvM_Common.NvM_BswMJobModeCallback(NVM_WRITE_ALL_ID, Get_Adm_Block_Error_Status(NVM_BLOCK_0));
	.d2line		1112
	lis		r3,(NvM_Common+16)@ha
	lwz		r0,(NvM_Common+16)@l(r3)
	mtspr		ctr,r0
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	lbz		r4,1(r3)
	diab.li		r3,13
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
	b		.L457
.L456:
#          }
#          else
#          {
#             /* [DD-NVM00260-MGC01-V1] */
#             NvM_CallMultiBlockCallback(NvM_Current_Block.service_id);
	.d2line		1117
	lis		r3,NvM_Current_Block@ha
	lwz		r3,NvM_Current_Block@l(r3)
	bl		NvM_CallMultiBlockCallback
.L457:
#          }
# 
#          req_cancel_write_all=FALSE;
	.d2line		1120
	diab.li		r0,0
	lis		r3,req_cancel_write_all@ha
	e_add16i		r3,r3,req_cancel_write_all@l
	stb		r0,0(r3)
#          NvM_Req_Multiblock=NVM_NO_SERVICE_PENDING_ID;
	.d2line		1121
	diab.li		r0,26
	lis		r3,NvM_Req_Multiblock@ha
	e_add16i		r3,r3,NvM_Req_Multiblock@l
	stw		r0,0(r3)
	b		.L451
.L455:
#       }
#       else
#       {
#          NvM_Current_Block.service_id = NVM_WRITE_ALL_ID;
	.d2line		1125
	diab.li		r0,13
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	stw		r0,0(r3)
#          /*
#           * In write all Process the NV blocks are written in the reverse order to ensure
#           * that the block containing the configuration ID is always written at the end of all block writes.
#           */
#          NvM_Current_Block.block_id = Get_Conf_Total_Block_Number();
	.d2line		1130
	lis		r3,(NvM_Common+4)@ha
	lhz		r0,(NvM_Common+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	sth		r0,(NvM_Current_Block+4)@l(r3)
#          Set_Main_State_Machine(NVM_MAIN_STATE_MULTI_BLOCK_OPERATION);
	.d2line		1131
	diab.li		r0,1
	lis		r3,NvM_MainStateDbg@ha
	e_add16i		r3,r3,NvM_MainStateDbg@l
	stw		r0,0(r3)
#          Set_Sub_State_Machine(NVM_SUBSTATE_WRITEALL_INIT);
	.d2line		1132
	diab.li		r0,3
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L451
.L454:
#       }
#    }
# #if (NVM_421_FEATURES_ENABLE == STD_ON)
# #if (   NVM_API_CONFIG_CLASS == NVM_API_CONFIG_CLASS_2 \
#         || NVM_API_CONFIG_CLASS == NVM_API_CONFIG_CLASS_3 )
#    else if(NVM_VALIDATE_ALL_ID==NvM_Req_Multiblock) /* [DD-NVM00858-MGC01-V1] */
	.d2line		1138
	lis		r3,NvM_Req_Multiblock@ha
	lwz		r0,NvM_Req_Multiblock@l(r3)
	se_cmpi		r0,25
	bc		0,2,.L460	# ne
#    {
#        NvM_Current_Block.service_id=NVM_VALIDATE_ALL_ID;
	.d2line		1140
	diab.li		r0,25
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	stw		r0,0(r3)
#        NvM_Current_Block.block_id=NVM_BLOCK_0;
	.d2line		1141
	diab.li		r0,0
	lis		r3,(NvM_Current_Block+4)@ha
	sth		r0,(NvM_Current_Block+4)@l(r3)
#        Set_Main_State_Machine(NVM_MAIN_STATE_MULTI_BLOCK_OPERATION);
	.d2line		1142
	diab.li		r0,1
	lis		r3,NvM_MainStateDbg@ha
	e_add16i		r3,r3,NvM_MainStateDbg@l
	stw		r0,0(r3)
#        /* [DD-NVM00857-MGC01-V1] */
#        Set_Sub_State_Machine(NVM_SUBSTATE_VALIDATEALL_INIT);
	.d2line		1144
	diab.li		r0,6
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L451
.L460:
# 
#    }
# #endif /*( NVM_API_CONFIG_CLASS == NVM_API_CONFIG_CLASS_2 || NVM_API_CONFIG_CLASS == NVM_API_CONFIG_CLASS_3 )*/
# #endif /* NVM_421_FEATURES_ENABLE */
#    else
#    {
#       /* no request to process [DD-NVM00349-MGC01-V1] */
#       tmp_stop_processing=TRUE;
	.d2line		1152
	diab.li		r31,1		# tmp_stop_processing=r31
.L451:
#    }
#    return tmp_stop_processing;
	.d2line		1154
	rlwinm		r3,r31,0,24,31		# tmp_stop_processing=r31
# }
	.d2line		1155
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo77:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1679:
	.type		NvM_ActMainStateIdle,@function
	.size		NvM_ActMainStateIdle,.-NvM_ActMainStateIdle
# Number of nodes = 159

# Allocations for NvM_ActMainStateIdle
#	?a4		tmp_stop_processing
# static FUNC(void,NVM_CODE) NvM_ProcessMainMachineSubstates(void)
	.align		1
	.section	.text_vle
        .d2line         3939,28
#$$ld
.L1685:

#$$bf	NvM_ProcessMainMachineSubstates,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ProcessMainMachineSubstates:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_exit_cond = FALSE;
	.d2line		3941
	diab.li		r3,0		# tmp_exit_cond=r3
.L1019:
#    while(FALSE==tmp_exit_cond)
	.d2line		3942
.Llo78:
	rlwinm		r3,r3,0,24,31		# tmp_exit_cond=r3 tmp_exit_cond=r3
	se_cmpi		r3,0		# tmp_exit_cond=r3
	bc		0,2,.L1018	# ne
#    {
#       /* PRQA S 3689 ++
#        * Calling function by using function pointer - index of function table
#        * is checked in the first condition.
#        */
#       if(   (NvM_SubStateDbg<NVM_SUBSTATE_SERVICE_NB)
	.d2line		3948
.Llo79:
	lis		r3,NvM_SubStateDbg@ha		# tmp_exit_cond=r3
.Llo80:
	lwz		r0,NvM_SubStateDbg@l(r3)		# tmp_exit_cond=r3
	cmpi		0,0,r0,39
	bc		0,0,.L1021	# ge
.Llo81:
	lis		r4,NvM_ActSubStateMachineService@ha
	e_add16i		r4,r4,NvM_ActSubStateMachineService@l
	lis		r3,NvM_SubStateDbg@ha		# tmp_exit_cond=r3
.Llo82:
	lwz		r0,NvM_SubStateDbg@l(r3)		# tmp_exit_cond=r3
	se_slwi		r0,2
	lwzx		r0,r4,r0
	se_cmpi		r0,0
	bc		1,2,.L1021	# eq
#             && (NULL_PTR!=NvM_ActSubStateMachineService[NvM_SubStateDbg])
#         )
#       {
# #if ( NVM_JOB_PRIORITIZATION==STD_ON)
#          /* [DD-NVM00381-MGC01-V1] [DD-NVM00567-MGC01-V1] */
#          if(NvM_SubStateDbg > NVM_SUBSTATE_MULTIBLOCK_OPERATION_DONE)
#          {
#             /* Allow stop operation only in specific states [DD-NVM00182-MGC01-V1] */
#             /* [DD-NVM00259-MGC01-V1] */
#             if(TRUE == NvM_QueGetImmediateQueueElement(&NvM_Immediate_Block))
#             {
#                #if NVM_POLLING_MODE==STD_OFF
#                 if(MEMIF_BUSY == NvM_MemIf_Driver_Status)
#                #else
#                 if(MEMIF_BUSY == MemIf_GetStatus(Get_Conf_Device_Index(NvM_Current_Block.block_id)))
#                #endif
#                 {
#                    MemIf_Cancel(Get_Conf_Device_Index(NvM_Current_Block.block_id));
#                 }
#                 Set_Sub_State_Machine(NVM_SUBSTATE_WAIT_FOR_CANCEL_REQ);
#             }
#          }
# #endif
#          tmp_exit_cond = NvM_ActSubStateMachineService[NvM_SubStateDbg]();
	.d2line		3972
.Llo83:
	lis		r4,NvM_ActSubStateMachineService@ha
	e_add16i		r4,r4,NvM_ActSubStateMachineService@l
	lis		r3,NvM_SubStateDbg@ha		# tmp_exit_cond=r3
.Llo84:
	lwz		r0,NvM_SubStateDbg@l(r3)		# tmp_exit_cond=r3
	se_slwi		r0,2
	lwzx		r0,r4,r0
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
	mr		r3,r3		# tmp_exit_cond=r3 tmp_exit_cond=r3
	b		.L1019
.L1021:
#       }
#       /* PRQA S 3689 -- */
#       else
#       {
#          tmp_exit_cond = TRUE;
	.d2line		3977
.Llo85:
	diab.li		r3,1		# tmp_exit_cond=r3
.Llo86:
	b		.L1019
.L1018:
#       }
#    }
# }
	.d2line		3980
	.d2epilogue_begin
.Llo87:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1686:
	.type		NvM_ProcessMainMachineSubstates,@function
	.size		NvM_ProcessMainMachineSubstates,.-NvM_ProcessMainMachineSubstates
# Number of nodes = 35

# Allocations for NvM_ProcessMainMachineSubstates
#	?a4		tmp_exit_cond
# static FUNC(boolean,NVM_CODE) NvM_ActMainStateMultiBlockOperation(void)
	.align		1
	.section	.text_vle
        .d2line         1163,31
#$$ld
.L1692:

#$$bf	NvM_ActMainStateMultiBlockOperation,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActMainStateMultiBlockOperation:
.Llo88:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing=TRUE;
	.d2line		1165
	diab.li		r31,1		# tmp_stop_processing=r31
#    NvM_ProcessMainMachineSubstates();
	.d2line		1166
	bl		NvM_ProcessMainMachineSubstates
# 
# #if (NVM_JOB_PRIORITIZATION==STD_ON)
#    if(NVM_SUBSTATE_ENTER_IMED_REQ==NvM_SubStateDbg)
#    {
#       Set_Sub_State_Machine(NVM_SUBSTATE_IM_WRITE_INIT);
#       Set_Main_State_Machine(NVM_MAIN_STATE_WRITE_BLOCK_IMEDIATLY);
#       tmp_stop_processing=FALSE;
#    }
#    else
# #endif
#    if((NVM_SUBSTATE_WRITEALL_CANCELED==NvM_SubStateDbg)
	.d2line		1177
	lis		r3,NvM_SubStateDbg@ha
	lwz		r0,NvM_SubStateDbg@l(r3)
	se_cmpi		r0,5
	bc		1,2,.L473	# eq
	lis		r3,NvM_SubStateDbg@ha
	lwz		r0,NvM_SubStateDbg@l(r3)
	se_cmpi		r0,10
	bc		1,2,.L473	# eq
	lis		r3,NvM_SubStateDbg@ha
	lwz		r0,NvM_SubStateDbg@l(r3)
	se_cmpi		r0,8
	bc		0,2,.L472	# ne
.L473:
#       ||(NVM_SUBSTATE_MULTIBLOCK_OPERATION_DONE==NvM_SubStateDbg)
# #if(NVM_421_FEATURES_ENABLE == STD_ON)
# #if (NVM_API_CONFIG_CLASS==NVM_API_CONFIG_CLASS_2||NVM_API_CONFIG_CLASS==NVM_API_CONFIG_CLASS_3)
#       ||(NVM_SUBSTATE_VALIDATEALL_OPERATION_DONE == NvM_SubStateDbg)
# #endif
# #endif
#       )
#    {
#       req_cancel_write_all=FALSE;
	.d2line		1186
	diab.li		r31,0		# tmp_stop_processing=r31
	lis		r3,req_cancel_write_all@ha
	e_add16i		r3,r3,req_cancel_write_all@l
	stb		r31,0(r3)		# tmp_stop_processing=r31
#       NvM_Current_Block.service_id= NVM_NO_SERVICE_PENDING_ID;
	.d2line		1187
	diab.li		r0,26
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	stw		r0,0(r3)
#       NvM_Req_Multiblock= NVM_NO_SERVICE_PENDING_ID;
	.d2line		1188
	lis		r3,NvM_Req_Multiblock@ha
	e_add16i		r3,r3,NvM_Req_Multiblock@l
	stw		r0,0(r3)
#       Set_Main_State_Machine(NVM_MAIN_STATE_IDLE);
	.d2line		1189
	lis		r3,NvM_MainStateDbg@ha
	e_add16i		r3,r3,NvM_MainStateDbg@l
	stw		r31,0(r3)		# tmp_stop_processing=r31
#       tmp_stop_processing=FALSE;
.L472:
#    }
#    else
#    {
#       /*we are still waiting for finish read all operation*/
#    }
# 
#    return tmp_stop_processing;
	.d2line		1197
	rlwinm		r3,r31,0,24,31		# tmp_stop_processing=r31
# }
	.d2line		1198
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo89:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1693:
	.type		NvM_ActMainStateMultiBlockOperation,@function
	.size		NvM_ActMainStateMultiBlockOperation,.-NvM_ActMainStateMultiBlockOperation
# Number of nodes = 33

# Allocations for NvM_ActMainStateMultiBlockOperation
#	?a4		tmp_stop_processing
# static FUNC(boolean,NVM_CODE) NvM_ActMainStateSingleBlockOperation(void)
	.align		1
	.section	.text_vle
        .d2line         1208,31
#$$ld
.L1699:

#$$bf	NvM_ActMainStateSingleBlockOperation,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActMainStateSingleBlockOperation:
.Llo90:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing=TRUE;
	.d2line		1210
	diab.li		r31,1		# tmp_stop_processing=r31
# 
#    NvM_ProcessMainMachineSubstates();
	.d2line		1212
	bl		NvM_ProcessMainMachineSubstates
# 
# #if (NVM_JOB_PRIORITIZATION == STD_ON)
#    if(NVM_SUBSTATE_ENTER_IMED_REQ == NvM_SubStateDbg)
#    {
#       Set_Sub_State_Machine(NVM_SUBSTATE_IM_WRITE_INIT);
#       Set_Main_State_Machine(NVM_MAIN_STATE_WRITE_BLOCK_IMEDIATLY);
#       tmp_stop_processing = FALSE;
#    }
#    else
# #endif
#    if(NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE==NvM_SubStateDbg)
	.d2line		1223
	lis		r3,NvM_SubStateDbg@ha
	lwz		r0,NvM_SubStateDbg@l(r3)
	se_cmpi		r0,9
	bc		0,2,.L479	# ne
#    {
#       tmp_stop_processing=FALSE;
	.d2line		1225
	diab.li		r31,0		# tmp_stop_processing=r31
#       if(TRUE == NvM_BlockMirrorError)
	.d2line		1226
	lis		r3,NvM_BlockMirrorError@ha
	lbz		r0,NvM_BlockMirrorError@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L478	# ne
#       {
#          (void)NvM_QueueInsert(NvM_Current_Block.block_id,
	.d2line		1228
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	lis		r4,(NvM_Current_Block+8)@ha
	lwz		r5,(NvM_Current_Block+8)@l(r4)
	lis		r4,NvM_Current_Block@ha
	lwz		r4,NvM_Current_Block@l(r4)
	bl		NvM_QueueInsert
#                                NvM_Current_Block.service_id,
#                                NvM_Current_Block.ram_block_ptr
# #if (NVM_JOB_PRIORITIZATION==STD_ON)
#                                ,TRUE
# #endif
#                               );
#          NvM_BlockMirrorError= FALSE;
	.d2line		1235
	diab.li		r0,0
	lis		r3,NvM_BlockMirrorError@ha
	e_add16i		r3,r3,NvM_BlockMirrorError@l
	stb		r0,0(r3)
#          tmp_stop_processing = TRUE;
	.d2line		1236
	diab.li		r31,1		# tmp_stop_processing=r31
.L478:
#       }
#       NvM_Current_Block.service_id= NVM_NO_SERVICE_PENDING_ID;
	.d2line		1238
	diab.li		r0,26
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	stw		r0,0(r3)
#       NvM_Current_Block.block_id = NVM_BLOCK_0;
	.d2line		1239
	diab.li		r0,0
	lis		r3,(NvM_Current_Block+4)@ha
	sth		r0,(NvM_Current_Block+4)@l(r3)
#       Set_Main_State_Machine(NVM_MAIN_STATE_IDLE);
	.d2line		1240
	lis		r3,NvM_MainStateDbg@ha
	e_add16i		r3,r3,NvM_MainStateDbg@l
	stw		r0,0(r3)
.L479:
#    }
#    else
#    {
#       /* Do nothing. */
#    }
# 
#    return tmp_stop_processing;
	.d2line		1247
	rlwinm		r3,r31,0,24,31		# tmp_stop_processing=r31
# }
	.d2line		1248
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo91:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1700:
	.type		NvM_ActMainStateSingleBlockOperation,@function
	.size		NvM_ActMainStateSingleBlockOperation,.-NvM_ActMainStateSingleBlockOperation
# Number of nodes = 57

# Allocations for NvM_ActMainStateSingleBlockOperation
#	?a4		tmp_stop_processing
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateReadAllInit(void)
	.align		1
	.section	.text_vle
        .d2line         1296,31
#$$ld
.L1706:

#$$bf	NvM_ActSubStateReadAllInit,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateReadAllInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    NvM_Current_Block.info.state=NVM_BLOCK_NV_READ_INIT;
	.d2line		1298
	diab.li		r0,0
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
#    /* Ram block for block ID 1 has to be configured as Permanent
#     * (it is checked by configuration tool and NVM_Init() function)
#     */
#    NvM_Current_Block.ram_block_ptr = Get_Conf_Ram_Block_Addr(NVM_BLOCK_1);
	.d2line		1302
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lwz		r4,96(r3)
	lis		r3,(NvM_Current_Block+8)@ha
	stw		r4,(NvM_Current_Block+8)@l(r3)
#    id_match=FALSE;
	.d2line		1303
	lis		r3,id_match@ha
	e_add16i		r3,r3,id_match@l
	stb		r0,0(r3)
#    multi_block_err_found=FALSE;
	.d2line		1304
	lis		r3,multi_block_err_found@ha
	e_add16i		r3,r3,multi_block_err_found@l
	stb		r0,0(r3)
#    if (TRUE == NvM_Common.NvM_DrvModeSwitch)
	.d2line		1305
	lis		r3,(NvM_Common+35)@ha
	lbz		r0,(NvM_Common+35)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L483	# ne
#    {
#       /* [DD-NVM00426-MGC01-V1] */
#       MemIf_SetMode(MEMIF_MODE_FAST);
	.d2line		1308
	diab.li		r3,1
	bl		Ea_SetMode
.L483:
#    }
#    /* PRQA S 1431 ++
#     * since the enum typedef NvM_ServiceIdType is defined in NvM_I.h and which is not
#     * accessible by BswM.c file we directly used unit8
#     */
#    /* [DD-NVM00745-MGC01-V1] */
#    if(TRUE == NvM_Common.NvM_BswMMultiBlk)
	.d2line		1315
	lis		r3,(NvM_Common+34)@ha
	lbz		r0,(NvM_Common+34)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L484	# ne
#    {
#       NvM_Common.NvM_BswMJobModeCallback(NvM_Current_Block.service_id, Get_Adm_Block_Error_Status(NVM_BLOCK_0));
	.d2line		1317
	lis		r3,(NvM_Common+16)@ha
	lwz		r0,(NvM_Common+16)@l(r3)
	mtspr		ctr,r0
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	lbz		r4,1(r3)
	lis		r3,NvM_Current_Block@ha
	lwz		r3,NvM_Current_Block@l(r3)
	rlwinm		r3,r3,0,24,31
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L484:
#    }
#    /* PRQA S 1431 -- */
#    Set_Adm_Block_Error_Status(NVM_BLOCK_1, (NvM_RequestResultType)NVM_REQ_PENDING);
	.d2line		1320
	diab.li		r0,2
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	stb		r0,9(r3)
# 
#    NvM_Call_Dem_ReportErrorStatus_AllPassed(NvM_Current_Block.block_id);
	.d2line		1322
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	bl		NvM_Call_Dem_ReportErrorStatus_AllPassed
# 
#    /* [DD-NVM00073-MGC01-V1] */
#    Set_Sub_State_Machine (NVM_SUBSTATE_READALL_READ_CONFIGID);
	.d2line		1325
	diab.li		r3,26
	lis		r4,NvM_SubStateDbg@ha
	e_add16i		r4,r4,NvM_SubStateDbg@l
	stw		r3,0(r4)
#    return FALSE;
	.d2line		1326
	diab.li		r3,0
# }
	.d2line		1327
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1707:
	.type		NvM_ActSubStateReadAllInit,@function
	.size		NvM_ActSubStateReadAllInit,.-NvM_ActSubStateReadAllInit
# Number of nodes = 90

# Allocations for NvM_ActSubStateReadAllInit
# static FUNC(boolean,NVM_CODE)  NvM_ActBlockNvReadInit(void)
	.align		1
	.section	.text_vle
        .d2line         2905,32
#$$ld
.L1711:

#$$bf	NvM_ActBlockNvReadInit,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r30,r31,cr0,lr,ctr
	.d2_cfa_start __cie
NvM_ActBlockNvReadInit:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(uint16,AUTOMATIC) tmp_i;
#     VAR(NvM_BlockIdType,AUTOMATIC) blockId = NvM_Current_Block.block_id;
#     P2CONST(uint8, AUTOMATIC, NVM_CONST) tmp_rom_data_address;
#     VAR(boolean,AUTOMATIC) tmp_stop_processing =FALSE;
	.d2line		2910
	diab.li		r31,0		# tmp_stop_processing=r31
	.d2line		2908
.Llo102:
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r4,(NvM_Current_Block+4)@l(r3)
	sth		r4,8(r1)
	.d2line		2916
	rlwinm		r4,r4,6,10,25
# 
#     /*Clear NV driver Errors*/
#     /* [DD-NVM00206-MGC01-V1] */
#     NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_OK;
	.d2line		2914
	diab.li		r0,0
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
#     NvM_Current_Block.info.dem_err = NVM_DEM_EVENT_E_NO_ERROR;
	.d2line		2915
	lis		r3,(NvM_Current_Block+20)@ha
	stw		r0,(NvM_Current_Block+20)@l(r3)
#     if(    (Is_Conf_Block_Type_Native(blockId))
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	se_add		r4,r0
	lwz		r0,12(r4)
	se_cmpi		r0,0
	bc		1,2,.L754	# eq
	.d2line		2916
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,1
	bc		0,2,.L738	# ne
.L754:
#        || (Is_Conf_Block_Type_Redundant(blockId)) )
#     {
#       /*redundant or native block - we start read from first NV block*/
#       NvM_Current_Block.info.dataset=NVM_REDUNDANT_FIRST_BLOCK;
	.d2line		2920
	diab.li		r0,0
	lis		r3,(NvM_Current_Block+16)@ha
	sth		r0,(NvM_Current_Block+16)@l(r3)
#       NvM_Current_Block.info.state=NVM_BLOCK_NV_READ_START;
	.d2line		2921
	diab.li		r4,1
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r4,(NvM_Current_Block+12)@l(r3)
#       NvM_ReadRetryCounter = (uint8)0U;
	.d2line		2922
	lis		r3,NvM_ReadRetryCounter@ha
	e_add16i		r3,r3,NvM_ReadRetryCounter@l
	stb		r0,0(r3)
	b		.L739
.L738:
#     }
#     else
#     {
#       /* read data set index to temporary location [DD-NVM00340-MGC01-V1] */
#       NvM_Current_Block.info.dataset = Get_Adm_Block_Dataset_Idx_U16(blockId);
	.d2line		2927
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	lhz		r4,8(r1)
	rlwinm		r0,r4,3,13,28
	lbzx		r0,r3,r0
	lis		r3,(NvM_Current_Block+16)@ha
	sth		r0,(NvM_Current_Block+16)@l(r3)
#       if(Is_Dataset_Points_To_Nv(blockId,NvM_Current_Block.info.dataset))
	.d2line		2928
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r4,6,10,25
	se_add		r4,r3
	lbz		r3,16(r4)
	se_cmp		r0,r3
	bc		0,0,.L740	# ge
#       {
#          NvM_Current_Block.info.state=NVM_BLOCK_NV_READ_START;
	.d2line		2930
	diab.li		r0,1
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
#          NvM_ReadRetryCounter = (uint8)0U;
	.d2line		2931
	diab.li		r0,0
	lis		r3,NvM_ReadRetryCounter@ha
	e_add16i		r3,r3,NvM_ReadRetryCounter@l
	stb		r0,0(r3)
	b		.L739
.L740:
#       }
#       /* [DD-NVM00146-MGC01-V1] [DD-NVM00376-MGC01-V1] [DD-NVM00354-MGC01-V1] */
#       else if(    Is_Dataset_Points_To_Rom(blockId,NvM_Current_Block.info.dataset)
	.d2line		2934
	lis		r3,(NvM_Current_Block+16)@ha
	lhz		r0,(NvM_Current_Block+16)@l(r3)
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r4
	lbz		r3,16(r3)
	se_cmp		r0,r3
	bc		1,0,.L742	# lt
	lis		r3,(NvM_Current_Block+16)@ha
	lhz		r0,(NvM_Current_Block+16)@l(r3)
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r4
	lbz		r4,16(r3)
	lbz		r3,17(r3)
	se_add		r4,r3
	rlwinm		r3,r4,0,16,31
	se_cmp		r0,r3
	bc		0,0,.L742	# ge
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,32(r3)
	se_cmpi		r0,0
	bc		1,2,.L742	# eq
#                && Is_Conf_Block_Permanent(blockId)
#              )
#       {
#          /*calculate ROM block dataset offset*/
#          NvM_Current_Block.info.dataset -= Get_Conf_Block_Dataset_Nv_Block_Nb(blockId);
	.d2line		2939
	lis		r5,(NvM_Current_Block+16)@ha
	lhz		r0,(NvM_Current_Block+16)@l(r5)
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r6,8(r1)
	rlwinm		r6,r6,6,10,25
	se_add		r4,r6
	lbz		r4,16(r4)
	subf		r4,r4,r0
	sth		r4,(NvM_Current_Block+16)@l(r5)
# 
#          /*calculate ROM block dataset address*/
# 
#          /* PRQA S 488 ++
#           * MISRA RULE C181 VIOLATION:
#           * Pointer arithmetic - needed for access dataset ROM block
#           */
#          /* PRQA S 4120 ++
#           * Deactivated for Code Optimization
#           */
#          tmp_rom_data_address=Get_Conf_Rom_Block_Addr(blockId) +
	.d2line		2950
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	se_add		r6,r0
	lhz		r0,60(r6)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	diab.li		r3,2
	isel		r3,r3,r0,2
.L755:
	diab.li		r0,0
	isel		r0,r3,r0,2
.L756:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r4
	lwz		r8,36(r3)
	lis		r4,(NvM_Current_Block+16)@ha
	lhz		r5,(NvM_Current_Block+16)@l(r4)
	lhz		r4,20(r3)
	se_add		r4,r0
	rlwinm		r0,r4,0,16,31
	mullw		r5,r5,r0
	add		r8,r8,r5
.Llo100:
	mr		r0,r8		# tmp_rom_data_address=r0 tmp_rom_data_address=r8
#                                ((uint32)(NvM_Current_Block.info.dataset)*Get_Conf_Block_Data_Length(blockId));
#          /* PRQA S 4120 -- */
# 
#          if(Is_Conf_Block_Static_BlockIdCheck(blockId)
	.d2line		2954
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	bc		1,2,.L757	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,25,25
	cmpi		0,0,r0,64
	bc		1,2,.L757	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,31,31
	se_cmpi		r0,1
	bc		0,2,.L743	# ne
.L757:
	.section	.text_vle
.L1721:
#                  || Is_Conf_Block_Use_Synchmechanism(blockId)
#                  || Is_Conf_Block_Use_Crc(blockId))
#          {
#             P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) Buf_ptr = NvM_Common.NvM_RamMirrorPtr;
	.d2line		2958
	lis		r3,(NvM_Common+24)@ha
	lwz		r30,(NvM_Common+24)@l(r3)
.Llo107:
	mr		r30,r30		# Buf_ptr=r30 Buf_ptr=r30
#             /* copy ROM Dataset block to RAM Buffer.*/
#             /* PRQA S 310 ++
#              * MISRA RULE C109 VIOLATION:
#              * Casting of address to uint8 is needed for storing the NvM_BlockRequestType
#              * and the Buf_ptr is a pointer to a uint8 value.THis avoids unaligned access.
#              */
#             if(Is_Conf_Block_Static_BlockIdCheck(blockId))
	.d2line		2965
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	bc		0,2,.L744	# ne
#             {
#                NvM_MemCopy(NvM_Common.NvM_RamMirrorPtr, ((P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))&(blockId)), NVM_BLOCK_HEADER_SIZE);
	.d2line		2967
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
	diab.addi		r4,r1,8
	diab.li		r5,2
	bl		NvM_MemCopy
#                Buf_ptr+=NVM_BLOCK_HEADER_SIZE;
	.d2line		2968
	diab.addi		r0,r30,2		# Buf_ptr=r30
	se_addi		r30,2		# Buf_ptr=r30 Buf_ptr=r30
.L744:
#                /* PRQA S 488 -- */
#                /* PRQA S 310 -- */
#             }
#             for(tmp_i = ((uint16)0U); tmp_i < Get_Conf_Block_Length(blockId); tmp_i++)
	.d2line		2972
	diab.li		r3,0		# tmp_i=r3
.L745:
.Llo92:
	rlwinm		r4,r3,0,16,31		# tmp_i=r3
	lis		r5,(NvM_BlockManagementTable+4)@ha		# rom_data=r5
.Llo108:
	lwz		r5,(NvM_BlockManagementTable+4)@l(r5)		# rom_data=r5 rom_data=r5
	lhz		r0,8(r1)		# rom_data=r0
	rlwinm		r0,r0,6,10,25		# rom_data=r0 rom_data=r0
	se_add		r5,r0		# rom_data=r5 rom_data=r5 rom_data=r0
.Llo109:
	lhz		r0,20(r5)		# rom_data=r0 rom_data=r5
.Llo110:
	se_cmp		r4,r0		# rom_data=r0
	bc		0,0,.L747	# ge
	.section	.text_vle
.L1727:
#             {
#                /* TODO: here the code is not using Synchmechanism */
#                uint8 rom_data = tmp_rom_data_address[tmp_i];
	.d2line		2975
.Llo111:
	rlwinm		r4,r3,0,16,31		# tmp_i=r3
	lbzux		r5,r4,r8		# rom_data=r5
.Llo112:
	mr		r0,r5		# rom_data=r0 rom_data=r5
#                NvM_Current_Block.ram_block_ptr[tmp_i] = rom_data;
	.d2line		2976
	lis		r4,(NvM_Current_Block+8)@ha
	lwz		r4,(NvM_Current_Block+8)@l(r4)
	rlwinm		r0,r3,0,16,31		# rom_data=r0 tmp_i=r3
	stbx		r5,r4,r0		# rom_data=r5
#                *Buf_ptr = rom_data;
	.d2line		2977
	stb		r5,0(r30)		# Buf_ptr=r30 rom_data=r5
#                /* PRQA S 489 ++
#                 * Pointer arithmetic - needed for access dataset ROM block
#                 */
#                Buf_ptr++;
	.d2line		2981
	se_addi		r30,1		# Buf_ptr=r30 Buf_ptr=r30
	.section	.text_vle
.L1728:
#             }
	.d2line		2982
.Llo113:
	diab.addi		r0,r3,1		# rom_data=r0 tmp_i=r3
	se_addi		r3,1		# tmp_i=r3 tmp_i=r3
	b		.L745
.L747:
#             /* PRQA S 489 -- */
#             /*validate Crc field if exist*/
#             Set_Crc_State_Machine(NVM_CALCULATION_CRC_INIT);
	.d2line		2985
.Llo93:
	diab.li		r0,0		# rom_data=r0
.Llo114:
	lis		r3,(NvM_Data_Crc+4)@ha		# tmp_i=r3
.Llo94:
	stw		r0,(NvM_Data_Crc+4)@l(r3)		# tmp_i=r3 rom_data=r0
#             NvM_Current_Block.info.state=NVM_BLOCK_NV_READ_ROM_DATASET_VALIDATE;
	.d2line		2986
	diab.li		r0,2		# rom_data=r0
	lis		r3,(NvM_Current_Block+12)@ha		# tmp_i=r3
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_i=r3 rom_data=r0
	.section	.text_vle
.L1722:
.Llo95:
	b		.L739
.L743:
#          }
#          else
#          {
#             for(tmp_i = ((uint16)0U); tmp_i < Get_Conf_Block_Length(blockId); tmp_i++)
	.d2line		2990
.Llo101:
	diab.li		r4,0		# tmp_i=r4
.L749:
.Llo96:
	rlwinm		r5,r4,0,16,31		# tmp_i=r4
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,20(r3)
	se_cmp		r5,r0
	bc		0,0,.L751	# ge
#             {
#                NvM_Current_Block.ram_block_ptr[tmp_i] = tmp_rom_data_address[tmp_i];
	.d2line		2992
	rlwinm		r3,r4,0,16,31		# tmp_i=r4
	lbzux		r0,r3,r8
	lis		r3,(NvM_Current_Block+8)@ha
	lwz		r3,(NvM_Current_Block+8)@l(r3)
	rlwinm		r5,r4,0,16,31		# tmp_i=r4
	stbx		r0,r3,r5
#             }
	.d2line		2993
	diab.addi		r3,r4,1		# tmp_i=r4
	se_addi		r4,1		# tmp_i=r4 tmp_i=r4
	b		.L749
.L751:
#             Set_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id,NVM_BLOCK_VALID);
	.d2line		2994
.Llo97:
	lis		r4,NvM_BlockManagementTable@ha		# tmp_i=r4
.Llo98:
	lwz		r0,NvM_BlockManagementTable@l(r4)		# tmp_i=r4
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r5,(NvM_Current_Block+4)@l(r3)
	rlwinm		r5,r5,3,13,28
	add		r3,r0,r5
	lwz		r0,4(r3)
	.diab.bseti		r0,1
	lwz		r3,NvM_BlockManagementTable@l(r4)		# tmp_i=r4
	se_add		r5,r3
	stw		r0,4(r5)
#             NvM_Current_Block.info.state=NVM_BLOCK_NV_READ_DONE;
	.d2line		2995
	diab.li		r0,7
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
#             tmp_stop_processing=TRUE;
	.d2line		2996
	diab.li		r31,1		# tmp_stop_processing=r31
.Llo103:
	b		.L739
.L742:
#          }
#       }
#       else
#       {
#          NvM_Current_Block.info.state=NVM_BLOCK_NV_READ_DONE;
	.d2line		3001
.Llo99:
	diab.li		r0,7
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
#          NvM_Current_Block.info.status_err=(NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		3002
	diab.li		r0,1
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
# 
#          if (TRUE == NvM_IsDem_EventIdConfigured(NvM_Current_Block.block_id, NVM_DEM_EVENT_E_REQ_FAILED))
	.d2line		3004
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,2
	bl		NvM_IsDem_EventIdConfigured
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L753	# ne
#          {
#             NvM_Current_Block.info.dem_err = NVM_DEM_EVENT_E_REQ_FAILED;
	.d2line		3006
.Llo104:
	diab.li		r0,2
	lis		r3,(NvM_Current_Block+20)@ha
	stw		r0,(NvM_Current_Block+20)@l(r3)
.L753:
#          }
#          tmp_stop_processing=TRUE;
	.d2line		3008
	diab.li		r31,1		# tmp_stop_processing=r31
.L739:
#       }
#     }
# 
#     /*do not exit loop - go to next state*/
#     return tmp_stop_processing;
	.d2line		3013
.Llo105:
	rlwinm		r3,r31,0,24,31		# tmp_i=r3 tmp_stop_processing=r31
# }
	.d2line		3014
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo106:
	lwz		r0,36(r1)		# rom_data=r0
	mtspr		lr,r0		# rom_data=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1712:
	.type		NvM_ActBlockNvReadInit,@function
	.size		NvM_ActBlockNvReadInit,.-NvM_ActBlockNvReadInit
# Number of nodes = 543

# Allocations for NvM_ActBlockNvReadInit
#	?a4		$$16
#	?a5		tmp_i
#	SP,8		blockId
#	?a6		tmp_rom_data_address
#	?a7		tmp_stop_processing
#	?a8		Buf_ptr
#	?a9		rom_data
# static FUNC(boolean,NVM_CODE)  NvM_ActBlockNvReadStart(void)
	.align		1
	.section	.text_vle
        .d2line         3023,32
#$$ld
.L1735:

#$$bf	NvM_ActBlockNvReadStart,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActBlockNvReadStart:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) Buf_ptr;
# #if (NVM_POLLING_MODE==STD_OFF)
#    VAR(MemIf_StatusType, AUTOMATIC) prevMemIfDrvStatus;
# #endif
# 
#    if (   (Is_Conf_Block_Use_Synchmechanism(NvM_Current_Block.block_id))
	.d2line		3030
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,25,25
	cmpi		0,0,r0,64
	bc		1,2,.L779	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,31,31
	se_cmpi		r0,1
	bc		1,2,.L779	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	bc		0,2,.L774	# ne
.L779:
#        || (Is_Conf_Block_Use_Crc(NvM_Current_Block.block_id))
#        || (Is_Conf_Block_Static_BlockIdCheck(NvM_Current_Block.block_id)))
#    {
#       Buf_ptr = NvM_Common.NvM_RamMirrorPtr;   /*NvM Mirror is used as the buffer to read data*/
	.d2line		3034
	lis		r3,(NvM_Common+24)@ha
	lwz		r5,(NvM_Common+24)@l(r3)
.Llo115:
	mr		r5,r5		# Buf_ptr=r5 Buf_ptr=r5
	b		.L775
.L774:
#    }
#    else
#    {
#       Buf_ptr = NvM_Current_Block.ram_block_ptr; /* Data is copied directly to RAM */
	.d2line		3038
.Llo116:
	lis		r3,(NvM_Current_Block+8)@ha
	lwz		r5,(NvM_Current_Block+8)@l(r3)
.Llo117:
	mr		r5,r5		# Buf_ptr=r5 Buf_ptr=r5
.L775:
#    }
# 
# #if (NVM_POLLING_MODE==STD_OFF)
#    prevMemIfDrvStatus = NvM_MemIf_Driver_Status;
	.d2line		3042
	lis		r3,NvM_MemIf_Driver_Status@ha
	lwz		r31,NvM_MemIf_Driver_Status@l(r3)
.Llo121:
	mr		r31,r31		# prevMemIfDrvStatus=r31 prevMemIfDrvStatus=r31
#    NvM_MemIf_Driver_Status=MEMIF_BUSY;
	.d2line		3043
	diab.li		r4,2
	e_add16i		r3,r3,NvM_MemIf_Driver_Status@l
	stw		r4,0(r3)
# #endif
#    /* [DD-NVM00356-MGC01-V1] */
#    if(E_OK==MemIf_Read( /* [DD-NVM00010-MGC01-V1] */
	.d2line		3046
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	isel		r3,r4,r0,2
.L780:
	diab.li		r0,0
	isel		r6,r3,r0,2
.L781:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,31,31
	se_cmpi		r0,1
	bc		0,2,.L782	# ne
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r4,(NvM_Current_Block+4)@l(r4)
	rlwinm		r4,r4,6,10,25
	lwzx		r3,r3,r4
	se_cmpi		r3,2
	bc		0,2,.L784	# ne
	diab.li		r0,4
	b		.L783
.L784:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	lwzx		r3,r4,r3
	se_cmpi		r3,1
	diab.li		r3,2
	isel		r3,r3,r0,2
.L786:
	diab.li		r0,1
	isel		r0,r3,r0,2
	b		.L783
.L782:
	diab.li		r0,0
.L783:
.Llo118:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r4,r3
	lhz		r7,22(r4)
	lis		r3,(NvM_Common+32)@ha
	lbz		r3,(NvM_Common+32)@l(r3)
	slw		r7,r7,r3
	lis		r3,(NvM_Current_Block+16)@ha
	lhz		r3,(NvM_Current_Block+16)@l(r3)
	se_add		r7,r3
	rlwinm		r3,r7,0,16,31
	lhz		r4,20(r4)
	se_add		r4,r6
	se_add		r4,r0
	rlwinm		r6,r4,0,16,31
	diab.li		r4,0
.Llo119:
	mr		r5,r5		# Buf_ptr=r5 Buf_ptr=r5
.Llo120:
	bl		Ea_Read
	e_andi.		r3,r3,255
	bc		0,2,.L776	# ne
#          Get_Conf_Device_Index(NvM_Current_Block.block_id),
#          /* [DD-NVM00343-MGC01-V1] [DD-NVM00123-MGC01-V1] [DD-NVM00340-MGC01-V1] */
#          Get_Block_Number(NvM_Current_Block.block_id,NvM_Current_Block.info.dataset),
#          0,
#          Buf_ptr,
#          Get_Conf_Block_Length_Total(NvM_Current_Block.block_id)
#          )
#       )
#    {
#       NvM_Current_Block.info.state=NVM_BLOCK_NV_READ_IN_PROGRESS;
	.d2line		3056
	diab.li		r0,3
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
	b		.L777
.L776:
# 
#    }
#    else
#    {
# #if (NVM_POLLING_MODE==STD_OFF)
#       NvM_MemIf_Driver_Status=prevMemIfDrvStatus;
	.d2line		3062
	lis		r3,NvM_MemIf_Driver_Status@ha
	e_add16i		r3,r3,NvM_MemIf_Driver_Status@l
	stw		r31,0(r3)		# prevMemIfDrvStatus=r31
# #endif
# 
#       if (TRUE == NvM_IsDem_EventIdConfigured(NvM_Current_Block.block_id, NVM_DEM_EVENT_E_REQ_FAILED))
	.d2line		3065
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,2
	bl		NvM_IsDem_EventIdConfigured
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L778	# ne
#       {
#          NvM_Current_Block.info.dem_err = NVM_DEM_EVENT_E_REQ_FAILED;
	.d2line		3067
.Llo122:
	diab.li		r0,2
	lis		r3,(NvM_Current_Block+20)@ha
	stw		r0,(NvM_Current_Block+20)@l(r3)
.L778:
#       }
# 
#       /* [DD-NVM00302-MGC01-V1] */
#       NvM_Current_Block.info.status_err=(NvM_RequestResultType)NVM_REQ_INTEGRITY_FAILED;
	.d2line		3071
	diab.li		r0,3
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
#       NvM_Current_Block.info.state=NVM_BLOCK_NV_READ_PROCESS_ERR;
	.d2line		3072
	diab.li		r0,6
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
.L777:
#    }
#    return FALSE;
	.d2line		3074
	diab.li		r3,0
# }
	.d2line		3075
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
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
.L1736:
	.type		NvM_ActBlockNvReadStart,@function
	.size		NvM_ActBlockNvReadStart,.-NvM_ActBlockNvReadStart
# Number of nodes = 299

# Allocations for NvM_ActBlockNvReadStart
#	?a4		$$18
#	?a5		$$17
#	?a6		Buf_ptr
#	?a7		prevMemIfDrvStatus
# FUNC(void,NVM_CODE)NvM_GetCrcResult
	.align		2
	.section	.text_vle
        .d2line         4335,20
#$$ld
.L1746:

#$$bf	NvM_GetCrcResult,interprocedural,rasave,nostackparams
	.globl		NvM_GetCrcResult
	.d2_cfa_start __cie
NvM_GetCrcResult:
.Llo123:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# crcFunctionPtr=r3 crcFunctionPtr=r3
	.d2prologue_end
# (
#    VAR(NVM_CRC32_FUNC,AUTOMATIC) crcFunctionPtr
# )
# {
#         switch (NvM_Data_Crc.crcType)
	.d2line		4340
	lis		r4,(NvM_Data_Crc+8)@ha
	lwz		r6,(NvM_Data_Crc+8)@l(r4)
	se_cmpi		r6,0
	bc		1,2,.L1137	# eq
	se_cmpi		r6,1
	bc		1,2,.L1139	# eq
	se_cmpi		r6,2
	bc		1,2,.L1140	# eq
	b		.L1138
.L1137:
#         {
#             case NVM_CRC8:
#             {
#                 NvM_Data_Crc.result = (uint32)((NVM_CRC8_FUNC)crcFunctionPtr)(NvM_Data_Crc.buf_ptr, NvM_Data_Crc.one_step_data_length, (uint8)NvM_Data_Crc.result, NvM_Data_Crc.isFirstCrcCall);
	.d2line		4344
	mtspr		ctr,r3		# crcFunctionPtr=ctr crcFunctionPtr=r3
	lis		r3,(NvM_Data_Crc+12)@ha
.Llo124:
	lhz		r4,(NvM_Data_Crc+12)@l(r3)
	lis		r3,(NvM_Data_Crc+20)@ha
	lbz		r6,(NvM_Data_Crc+20)@l(r3)
	lis		r3,(NvM_Data_Crc+16)@ha
	lwz		r3,(NvM_Data_Crc+16)@l(r3)
	lis		r5,NvM_Data_Crc@ha
	lwz		r5,NvM_Data_Crc@l(r5)
	rlwinm		r5,r5,0,24,31
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x78 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
	rlwinm		r3,r3,0,24,31
	lis		r4,NvM_Data_Crc@ha
	e_add16i		r4,r4,NvM_Data_Crc@l
	stw		r3,0(r4)
	b		.L1138
.L1139:
#             }break;
#             case NVM_CRC16:
#             {
#                 NvM_Data_Crc.result = (uint32)((NVM_CRC16_FUNC)crcFunctionPtr)(NvM_Data_Crc.buf_ptr, NvM_Data_Crc.one_step_data_length, (uint16)NvM_Data_Crc.result, NvM_Data_Crc.isFirstCrcCall);
	.d2line		4348
.Llo125:
	mtspr		ctr,r3		# crcFunctionPtr=ctr crcFunctionPtr=r3
	lis		r3,(NvM_Data_Crc+12)@ha
.Llo126:
	lhz		r4,(NvM_Data_Crc+12)@l(r3)
	lis		r3,(NvM_Data_Crc+20)@ha
	lbz		r6,(NvM_Data_Crc+20)@l(r3)
	lis		r3,(NvM_Data_Crc+16)@ha
	lwz		r3,(NvM_Data_Crc+16)@l(r3)
	lis		r5,NvM_Data_Crc@ha
	lwz		r5,NvM_Data_Crc@l(r5)
	rlwinm		r5,r5,0,16,31
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x78 0x0 0x0 0x1
#$$rs 2 u
	bcctrl		20,0
	rlwinm		r3,r3,0,16,31
	lis		r4,NvM_Data_Crc@ha
	e_add16i		r4,r4,NvM_Data_Crc@l
	stw		r3,0(r4)
	b		.L1138
.L1140:
#             }break;
# 
#             case NVM_CRC32:
#             {
#                 NvM_Data_Crc.result = crcFunctionPtr(NvM_Data_Crc.buf_ptr, NvM_Data_Crc.one_step_data_length, NvM_Data_Crc.result, NvM_Data_Crc.isFirstCrcCall);
	.d2line		4353
.Llo127:
	mtspr		ctr,r3		# crcFunctionPtr=ctr crcFunctionPtr=r3
	lis		r3,(NvM_Data_Crc+12)@ha
.Llo128:
	lhz		r4,(NvM_Data_Crc+12)@l(r3)
	lis		r3,(NvM_Data_Crc+20)@ha
	lbz		r6,(NvM_Data_Crc+20)@l(r3)
	lis		r3,(NvM_Data_Crc+16)@ha
	lwz		r3,(NvM_Data_Crc+16)@l(r3)
	lis		r5,NvM_Data_Crc@ha
	lwz		r5,NvM_Data_Crc@l(r5)
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x78 0x0 0x0 0x1
#$$rs 4 u
	bcctrl		20,0
	lis		r4,NvM_Data_Crc@ha
	e_add16i		r4,r4,NvM_Data_Crc@l
	stw		r3,0(r4)
.L1138:
#             }break;
# 
#             default:
#             {
#                /*do nothing*/
#             }break;
#         }
# 
#         if(NvM_Data_Crc.isFirstCrcCall == TRUE)
	.d2line		4362
	lis		r3,(NvM_Data_Crc+20)@ha
	lbz		r0,(NvM_Data_Crc+20)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L1136	# ne
#         {
#             /* [DD-NVM00351-MGC01-V1] */
#             NvM_Data_Crc.isFirstCrcCall = FALSE;
	.d2line		4365
	diab.li		r0,0
	lis		r3,(NvM_Data_Crc+20)@ha
	stb		r0,(NvM_Data_Crc+20)@l(r3)
.L1136:
#         }
# }
	.d2line		4367
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1747:
	.type		NvM_GetCrcResult,@function
	.size		NvM_GetCrcResult,.-NvM_GetCrcResult
# Number of nodes = 122

# Allocations for NvM_GetCrcResult
#	?a4		crcFunctionPtr
# static FUNC(void,NVM_CODE) NvM_UpdateCrc
	.align		1
	.section	.text_vle
        .d2line         4372,28
#$$ld
.L1758:

#$$bf	NvM_UpdateCrc,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r29,r30,r31,cr0,lr
	.d2_cfa_start __cie
NvM_UpdateCrc:
.Llo129:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	mr		r30,r4		# arg_operation=r30 arg_operation=r4
	mr		r5,r5		# isItRecalc=r5 isItRecalc=r5
	.d2prologue_end
# (
#    CONSTP2CONST(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block,
#    VAR(NvM_CrcBufferUpdateType,AUTOMATIC) arg_operation,
#    VAR(boolean, AUTOMATIC) isItRecalc
# )
# {
#     /* This variable shows whether the data is consistent with its CRC */
#     VAR(boolean, AUTOMATIC) noMismatch = FALSE;
	.d2line		4380
	diab.li		r29,0		# noMismatch=r29
# 
#     if(FALSE == isItRecalc)
	.d2line		4382
	rlwinm		r5,r5,0,24,31		# isItRecalc=r5 isItRecalc=r5
	se_cmpi		r5,0		# isItRecalc=r5
	bc		0,2,.L1149	# ne
#     {
#         /* In this case the NvM_Data_Crc.buf_ptr needs to point at the corresponding CRC in RamMirror */
#         NvM_Data_Crc.buf_ptr += NvM_Data_Crc.data_length_to_process;
	.d2line		4385
.Llo130:
	lis		r4,(NvM_Data_Crc+16)@ha
.Llo131:
	lwz		r0,(NvM_Data_Crc+16)@l(r4)
	lis		r3,(NvM_Data_Crc+14)@ha
	lhz		r5,(NvM_Data_Crc+14)@l(r3)		# isItRecalc=r5
.Llo140:
	se_add		r0,r5		# isItRecalc=r5
	stw		r0,(NvM_Data_Crc+16)@l(r4)
#         NvM_Data_Crc.data_length_to_process = (uint16)0U;
	.d2line		4386
	diab.li		r0,0
	sth		r0,(NvM_Data_Crc+14)@l(r3)
# 
#         /* Check of the consistent data in the RamMirror with casting the pointer because of the endianness*/
#         switch (NvM_Data_Crc.crcType)
	.d2line		4389
	lis		r3,(NvM_Data_Crc+8)@ha
	lwz		r6,(NvM_Data_Crc+8)@l(r3)
	se_cmpi		r6,0
	bc		1,2,.L1150	# eq
.Llo141:
	se_cmpi		r6,1
	bc		1,2,.L1153	# eq
	se_cmpi		r6,2
	bc		1,2,.L1155	# eq
	b		.L1152
.L1150:
#         {
#             case NVM_CRC8:
#             {
#                 if(*(NvM_Data_Crc.buf_ptr) == (uint8)NvM_Data_Crc.result)
	.d2line		4393
	lis		r3,(NvM_Data_Crc+16)@ha
	lwz		r3,(NvM_Data_Crc+16)@l(r3)
	lbz		r0,0(r3)
	lis		r3,NvM_Data_Crc@ha
	lwz		r3,NvM_Data_Crc@l(r3)
	rlwinm		r3,r3,0,24,31
	se_cmp		r0,r3
	bc		0,2,.L1152	# ne
#                 {
#                     noMismatch = TRUE;
	.d2line		4395
	diab.li		r29,1		# noMismatch=r29
	b		.L1152
.L1153:
	.section	.text_vle
.L1769:
#                 }
#             }break;
# 
#             case NVM_CRC16:
#             {
#                 VAR(uint16,AUTOMATIC) tmp_crc16;
#                 NvM_MemCopy((P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))&tmp_crc16,NvM_Data_Crc.buf_ptr,NVM_CRC16_FIELD_SIZE);
	.d2line		4402
	lis		r3,(NvM_Data_Crc+16)@ha
	lwz		r4,(NvM_Data_Crc+16)@l(r3)
	diab.addi		r3,r1,8
	diab.li		r5,2		# isItRecalc=r5
	bl		NvM_MemCopy
#                 if (tmp_crc16 == (uint16)NvM_Data_Crc.result)
	.d2line		4403
	lhz		r0,8(r1)
	lis		r3,NvM_Data_Crc@ha
	lwz		r3,NvM_Data_Crc@l(r3)
	rlwinm		r3,r3,0,16,31
	se_cmp		r0,r3
	bc		0,2,.L1152	# ne
#                 {
#                     noMismatch = TRUE;
	.d2line		4405
	diab.li		r29,1		# noMismatch=r29
	.section	.text_vle
.L1770:
	b		.L1152
.L1155:
	.section	.text_vle
.L1774:
#                 }
#             }break;
# 
#             case NVM_CRC32:
#             {
#                 VAR(uint32,AUTOMATIC) tmp_crc32;
#                 NvM_MemCopy((P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))&tmp_crc32,NvM_Data_Crc.buf_ptr,NVM_CRC32_FIELD_SIZE);
	.d2line		4412
	lis		r3,(NvM_Data_Crc+16)@ha
	lwz		r4,(NvM_Data_Crc+16)@l(r3)
	diab.addi		r3,r1,12
	diab.li		r5,4		# isItRecalc=r5
	bl		NvM_MemCopy
#                 if(tmp_crc32 == NvM_Data_Crc.result)
	.d2line		4413
	lis		r3,NvM_Data_Crc@ha
	lwz		r0,NvM_Data_Crc@l(r3)
	lwz		r3,12(r1)
	se_cmpl		r0,r3
	bc		0,2,.L1152	# ne
#                 {
#                     noMismatch = TRUE;
	.d2line		4415
	diab.li		r29,1		# noMismatch=r29
	.section	.text_vle
.L1775:
.L1152:
#                 }
#             }break;
# 
#             default:
#             {
#                 /*do nothing*/
#             }break;
#         }
# 
#         if (FALSE == noMismatch)
	.d2line		4425
	rlwinm		r29,r29,0,24,31		# noMismatch=r29 noMismatch=r29
	se_cmpi		r29,0		# noMismatch=r29
	bc		0,2,.L1158	# ne
#         {
#             Set_Crc_State_Machine(NVM_CALCULATION_CRC_FINISHED_NOK);
	.d2line		4427
.Llo142:
	diab.li		r0,3
	lis		r3,(NvM_Data_Crc+4)@ha
	stw		r0,(NvM_Data_Crc+4)@l(r3)
# 
#             if (NVM_UPDATE_CRC_FIELD == arg_operation)
	.d2line		4429
	se_cmpi		r30,0		# arg_operation=r30
	bc		0,2,.L1148	# ne
#             {
#                 /* Update the stored CRC value */
#                 NvM_Common.NvM_BlockCRCPtr[arg_block->block_id] = NvM_Data_Crc.result;
	.d2line		4432
.Llo135:
	lis		r3,NvM_Data_Crc@ha
	lwz		r0,NvM_Data_Crc@l(r3)
	lis		r3,(NvM_Common+20)@ha
	lwz		r3,(NvM_Common+20)@l(r3)
	lhz		r4,4(r31)		# arg_block=r31
	rlwinm		r4,r4,2,14,29
	stwx		r0,r3,r4
# 
#                 /* Write the CRC after the Data in RamMirror*/
#                 switch (NvM_Data_Crc.crcType)
	.d2line		4435
	lis		r3,(NvM_Data_Crc+8)@ha
	lwz		r6,(NvM_Data_Crc+8)@l(r3)
	se_cmpi		r6,0
	bc		1,2,.L1160	# eq
.Llo132:
	se_cmpi		r6,1
	bc		1,2,.L1162	# eq
	se_cmpi		r6,2
	bc		1,2,.L1163	# eq
	b		.L1148
.L1160:
#                 {
#                     case NVM_CRC8:
#                     {
#                         *NvM_Data_Crc.buf_ptr = (uint8)NvM_Data_Crc.result;
	.d2line		4439
	lis		r3,NvM_Data_Crc@ha
	lwz		r0,NvM_Data_Crc@l(r3)
	lis		r3,(NvM_Data_Crc+16)@ha
	lwz		r3,(NvM_Data_Crc+16)@l(r3)
	stb		r0,0(r3)
	b		.L1148
.L1162:
	.section	.text_vle
.L1779:
#                     }break;
#                     case NVM_CRC16:
#                     {
#                         VAR(uint16,AUTOMATIC) tmp_crc16 = (uint16)NvM_Data_Crc.result;
	.d2line		4443
	lis		r3,NvM_Data_Crc@ha
	lwz		r0,NvM_Data_Crc@l(r3)
	sth		r0,10(r1)
#                         NvM_MemCopy(NvM_Data_Crc.buf_ptr,(P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))&tmp_crc16,NVM_CRC16_FIELD_SIZE);
	.d2line		4444
	lis		r3,(NvM_Data_Crc+16)@ha
	lwz		r3,(NvM_Data_Crc+16)@l(r3)
	diab.addi		r4,r1,10
	diab.li		r5,2		# isItRecalc=r5
	bl		NvM_MemCopy
	.section	.text_vle
.L1780:
	b		.L1148
.L1163:
#                     }break;
# 
#                     case NVM_CRC32:
#                     {
#                         NvM_MemCopy(NvM_Data_Crc.buf_ptr,(P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))&(NvM_Data_Crc.result),NVM_CRC32_FIELD_SIZE);
	.d2line		4449
	lis		r3,(NvM_Data_Crc+16)@ha
	lwz		r3,(NvM_Data_Crc+16)@l(r3)
	lis		r4,NvM_Data_Crc@ha
	e_add16i		r4,r4,NvM_Data_Crc@l
	diab.li		r5,4		# isItRecalc=r5
	bl		NvM_MemCopy
	b		.L1148
.L1158:
#                     }break;
#                     default:
#                     {
#                         /*do nothing*/
#                     }break;
#                 }
#             }
#         }
#         else
#         {
#             /* Update the CRC value */
#             NvM_Common.NvM_BlockCRCPtr[arg_block->block_id] = NvM_Data_Crc.result;
	.d2line		4461
.Llo133:
	lis		r3,NvM_Data_Crc@ha
	lwz		r0,NvM_Data_Crc@l(r3)
	lis		r3,(NvM_Common+20)@ha
	lwz		r3,(NvM_Common+20)@l(r3)
	lhz		r4,4(r31)		# arg_block=r31
	rlwinm		r4,r4,2,14,29
	stwx		r0,r3,r4
# 
#             Set_Crc_State_Machine(NVM_CALCULATION_CRC_FINISHED_OK);
	.d2line		4463
	diab.li		r0,2
	lis		r3,(NvM_Data_Crc+4)@ha
	stw		r0,(NvM_Data_Crc+4)@l(r3)
	b		.L1148
.L1149:
#         }
# 
#     }
#     else
#     {
#         /* Compare the CRC calculation result with the RAM block`s stored CRC */
#         switch (NvM_Data_Crc.crcType)
	.d2line		4470
.Llo143:
	lis		r3,(NvM_Data_Crc+8)@ha
	lwz		r6,(NvM_Data_Crc+8)@l(r3)
	se_cmpi		r6,0
	bc		1,2,.L1167	# eq
	se_cmpi		r6,1
	bc		1,2,.L1170	# eq
	se_cmpi		r6,2
	bc		1,2,.L1172	# eq
	b		.L1169
.L1167:
#         {
#             case NVM_CRC8:
#             {
#                 if((uint8)NvM_Common.NvM_BlockCRCPtr[arg_block->block_id] == (uint8)NvM_Data_Crc.result)
	.d2line		4474
	lis		r3,(NvM_Common+20)@ha
	lwz		r3,(NvM_Common+20)@l(r3)
	lhz		r0,4(r31)		# arg_block=r31
	rlwinm		r0,r0,2,14,29
	lwzx		r0,r3,r0
	rlwinm		r0,r0,0,24,31
	lis		r3,NvM_Data_Crc@ha
	lwz		r3,NvM_Data_Crc@l(r3)
	rlwinm		r3,r3,0,24,31
	se_cmp		r0,r3
	bc		0,2,.L1169	# ne
#                 {
#                     noMismatch = TRUE;
	.d2line		4476
	diab.li		r29,1		# noMismatch=r29
	b		.L1169
.L1170:
#                 }
#             }break;
# 
#             case NVM_CRC16:
#             {
#                 if ((uint16)NvM_Common.NvM_BlockCRCPtr[arg_block->block_id] == (uint16)NvM_Data_Crc.result)
	.d2line		4482
	lis		r3,(NvM_Common+20)@ha
	lwz		r3,(NvM_Common+20)@l(r3)
	lhz		r0,4(r31)		# arg_block=r31
	rlwinm		r0,r0,2,14,29
	lwzx		r0,r3,r0
	rlwinm		r0,r0,0,16,31
	lis		r3,NvM_Data_Crc@ha
	lwz		r3,NvM_Data_Crc@l(r3)
	rlwinm		r3,r3,0,16,31
	se_cmp		r0,r3
	bc		0,2,.L1169	# ne
#                 {
#                     noMismatch = TRUE;
	.d2line		4484
	diab.li		r29,1		# noMismatch=r29
	b		.L1169
.L1172:
#                 }
#             }break;
# 
#             case NVM_CRC32:
#             {
#                 if(NvM_Common.NvM_BlockCRCPtr[arg_block->block_id] == NvM_Data_Crc.result)
	.d2line		4490
	lis		r3,(NvM_Common+20)@ha
	lwz		r3,(NvM_Common+20)@l(r3)
	lhz		r0,4(r31)		# arg_block=r31
	rlwinm		r0,r0,2,14,29
	lwzx		r0,r3,r0
	lis		r3,NvM_Data_Crc@ha
	lwz		r3,NvM_Data_Crc@l(r3)
	se_cmpl		r0,r3
#                 {
#                     noMismatch = TRUE;
	.d2line		4492
	diab.li		r3,1
	isel		r29,r3,r29,2		# noMismatch=r29 noMismatch=r29
.L1169:
#                 }
#             }break;
# 
#             default:
#             {
#                 /*do nothing*/
#             }break;
#         }
# 
#         if (TRUE == noMismatch)
	.d2line		4502
	rlwinm		r29,r29,0,24,31		# noMismatch=r29 noMismatch=r29
	se_cmpi		r29,1		# noMismatch=r29
	bc		0,2,.L1175	# ne
#         {
#             Set_Crc_State_Machine(NVM_CALCULATION_CRC_FINISHED_OK);
	.d2line		4504
.Llo144:
	diab.li		r0,2
	lis		r3,(NvM_Data_Crc+4)@ha
	stw		r0,(NvM_Data_Crc+4)@l(r3)
	b		.L1176
.L1175:
#         }
#         else
#         {
#             Set_Crc_State_Machine(NVM_CALCULATION_CRC_FINISHED_NOK);
	.d2line		4508
	diab.li		r0,3
	lis		r3,(NvM_Data_Crc+4)@ha
	stw		r0,(NvM_Data_Crc+4)@l(r3)
.L1176:
#         }
# 
#         /* Validation of the RAM Block */
#         if (NVM_UPDATE_CRC_FIELD == arg_operation)
	.d2line		4512
	se_cmpi		r30,0		# arg_operation=r30
	bc		0,2,.L1148	# ne
#         {
#             /* Update the stored CRC value */
#             NvM_Common.NvM_BlockCRCPtr[arg_block->block_id] = NvM_Data_Crc.result;
	.d2line		4515
.Llo136:
	lis		r3,NvM_Data_Crc@ha
.Llo137:
	lwz		r0,NvM_Data_Crc@l(r3)
	lis		r3,(NvM_Common+20)@ha
	lwz		r3,(NvM_Common+20)@l(r3)
	lhz		r4,4(r31)		# arg_block=r31
.Llo138:
	rlwinm		r4,r4,2,14,29
	stwx		r0,r3,r4
.L1148:
#         }
#     }
# 
# }
	.d2line		4519
	.d2epilogue_begin
.Llo134:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo139:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1759:
	.type		NvM_UpdateCrc,@function
	.size		NvM_UpdateCrc,.-NvM_UpdateCrc
# Number of nodes = 324

# Allocations for NvM_UpdateCrc
#	?a4		arg_block
#	?a5		arg_operation
#	?a6		isItRecalc
#	?a7		noMismatch
#	SP,8		tmp_crc16
#	SP,12		tmp_crc32
#	SP,10		tmp_crc16
# static FUNC(void,NVM_CODE) NvM_CheckCrcValue
	.align		1
	.section	.text_vle
        .d2line         4524,28
#$$ld
.L1786:

#$$bf	NvM_CheckCrcValue,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_CheckCrcValue:
.Llo145:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# crcFunctionPtr=r3 crcFunctionPtr=r3
	mr		r31,r4		# arg_block=r31 arg_block=r4
	mr		r30,r5		# arg_operation=r30 arg_operation=r5
	mr		r29,r6		# isItRecalc=r29 isItRecalc=r6
	.d2prologue_end
# (
#    VAR(NVM_CRC32_FUNC,AUTOMATIC) crcFunctionPtr,
#    CONSTP2CONST(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block,
#    VAR(NvM_CrcBufferUpdateType,AUTOMATIC) arg_operation,
#    VAR(boolean, AUTOMATIC) isItRecalc
# )
# {
# 
#     if (NvM_Data_Crc.data_length_to_process > Get_Conf_One_Step_Crc_Length()) /* [DD-NVM00180-MGC01-V1] */
	.d2line		4533
	lis		r4,(NvM_Data_Crc+14)@ha
.Llo151:
	lhz		r0,(NvM_Data_Crc+14)@l(r4)
	lis		r4,NvM_Common@ha
	lhz		r4,NvM_Common@l(r4)
	se_cmp		r0,r4
	bc		0,1,.L1195	# le
#     {
#         /* The actual step size is the biggest */
#         NvM_Data_Crc.one_step_data_length = Get_Conf_One_Step_Crc_Length();
	.d2line		4536
.Llo146:
	lis		r4,NvM_Common@ha
.Llo153:
	lhz		r0,NvM_Common@l(r4)
	lis		r4,(NvM_Data_Crc+12)@ha
	sth		r0,(NvM_Data_Crc+12)@l(r4)
# 
#         /* In this function call we call the functions from the CRC library with the parameters in the NvM_Data_Crc*/
#         NvM_GetCrcResult(crcFunctionPtr);
	.d2line		4539
.Llo147:
	mr		r3,r3		# crcFunctionPtr=r3 crcFunctionPtr=r3
.Llo148:
	bl		NvM_GetCrcResult
# 
#         /* PRQA S 488 ++
#          * MISRA RULE C181 VIOLATION:
#          * Pointer arithmetic - needed for multi-step CRC calculation
#          */
# 
#         NvM_Data_Crc.buf_ptr += Get_Conf_One_Step_Crc_Length();
	.d2line		4546
	lis		r4,(NvM_Data_Crc+16)@ha
	lwz		r0,(NvM_Data_Crc+16)@l(r4)
	lis		r3,NvM_Common@ha
	lhz		r5,NvM_Common@l(r3)
	se_add		r0,r5
	stw		r0,(NvM_Data_Crc+16)@l(r4)
# 
#         /* PRQA S 488 -- */
#         NvM_Data_Crc.data_length_to_process -= Get_Conf_One_Step_Crc_Length();
	.d2line		4549
	lis		r4,(NvM_Data_Crc+14)@ha
	lhz		r0,(NvM_Data_Crc+14)@l(r4)
	lhz		r3,NvM_Common@l(r3)
	subf		r3,r3,r0
	sth		r3,(NvM_Data_Crc+14)@l(r4)
	b		.L1194
.L1195:
#     }
#     else
#     {
#         NvM_Data_Crc.one_step_data_length = NvM_Data_Crc.data_length_to_process;
	.d2line		4553
	lis		r4,(NvM_Data_Crc+14)@ha
	lhz		r0,(NvM_Data_Crc+14)@l(r4)
	lis		r4,(NvM_Data_Crc+12)@ha
	sth		r0,(NvM_Data_Crc+12)@l(r4)
# 
#         /* The last step of the CRC library call */
#         NvM_GetCrcResult(crcFunctionPtr);
	.d2line		4556
.Llo149:
	mr		r3,r3		# crcFunctionPtr=r3 crcFunctionPtr=r3
.Llo150:
	bl		NvM_GetCrcResult
# 
#         /* This function is using the NvM_Data_Crc structure */
#         NvM_UpdateCrc(arg_block, arg_operation, isItRecalc);
	.d2line		4559
	mr		r3,r31		# arg_block=r3 arg_block=r31
	mr		r4,r30		# arg_operation=r4 arg_operation=r30
	mr		r5,r29		# isItRecalc=r5 isItRecalc=r29
	bl		NvM_UpdateCrc
.L1194:
#     }
# }
	.d2line		4561
	.d2epilogue_begin
.Llo152:
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
.L1787:
	.type		NvM_CheckCrcValue,@function
	.size		NvM_CheckCrcValue,.-NvM_CheckCrcValue
# Number of nodes = 68

# Allocations for NvM_CheckCrcValue
#	?a4		crcFunctionPtr
#	?a5		arg_block
#	?a6		arg_operation
#	?a7		isItRecalc
# static FUNC(NvM_CalculationCrcStateType,NVM_CODE) NvM_ValidateBlockCRC
	.align		1
	.section	.text_vle
        .d2line         4566,51
#$$ld
.L1795:

#$$bf	NvM_ValidateBlockCRC,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ValidateBlockCRC:
.Llo154:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	mr		r30,r4		# arg_operation=r30 arg_operation=r4
	mr		r29,r5		# dataPtr=r29 dataPtr=r5
	mr		r28,r6		# isItRecalc=r28 isItRecalc=r6
	.d2prologue_end
# (
#            CONSTP2CONST(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block,
#            VAR(NvM_CrcBufferUpdateType,AUTOMATIC) arg_operation,
#            P2VAR(uint8,NVM_VAR,NVM_APPL_DATA) dataPtr,
#            VAR(boolean, AUTOMATIC) isItRecalc
# )
# {
#     VAR(NvM_BlockIdType, AUTOMATIC) blockId = arg_block->block_id;
	.d2line		4574
	lhz		r0,4(r31)		# arg_block=r31
	sth		r0,8(r1)
# 
#     switch(NvM_Data_Crc.state)
	.d2line		4576
	lis		r3,(NvM_Data_Crc+4)@ha
.Llo155:
	lwz		r6,(NvM_Data_Crc+4)@l(r3)
.Llo166:
	se_cmpi		r6,0
	bc		1,2,.L1200	# eq
.Llo156:
	se_cmpi		r6,1
.Llo158:
	bc		1,2,.L1204	# eq
.Llo161:
	b		.L1206
.L1200:
#     {
#         /* Init the NvM_Data_Crc structure and get the CRC result of the header if it is a RAMBlock */
#         case NVM_CALCULATION_CRC_INIT:
#         {
#             /* This variable shows that the first call of the CRC will come and it will use its initial values */
#             NvM_Data_Crc.isFirstCrcCall = TRUE; /* [DD-NVM00351-MGC01-V1] */
	.d2line		4582
.Llo162:
	diab.li		r0,1
	lis		r3,(NvM_Data_Crc+20)@ha
	stb		r0,(NvM_Data_Crc+20)@l(r3)
#             NvM_Data_Crc.crcType = NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvM_BlockCRC;
	.d2line		4583
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r0,8(r1)
	rlwinm		r0,r0,6,10,25
	lwzx		r0,r3,r0
	lis		r3,(NvM_Data_Crc+8)@ha
	stw		r0,(NvM_Data_Crc+8)@l(r3)
#             /* NvM_Data_Crc.result is not here: it will be set by the the first CRC call and then the others */
#             /* NvM_Data_Crc.one_step_data_length will be set just before the actual call */
# 
#             /* If the dataPtr points to a RAM block, then the Header needs to be calculated first */
#             if (isItRecalc)
	.d2line		4588
	rlwinm		r6,r28,0,24,31		# isItRecalc=r28
	se_cmpi		r6,0
	bc		1,2,.L1201	# eq
#             {
#                 if(Is_Conf_Block_Static_BlockIdCheck(blockId))
	.d2line		4590
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	bc		0,2,.L1202	# ne
#                 {
#                     NvM_Data_Crc.one_step_data_length = NVM_BLOCK_HEADER_SIZE;
	.d2line		4592
	diab.li		r0,2
	lis		r3,(NvM_Data_Crc+12)@ha
	sth		r0,(NvM_Data_Crc+12)@l(r3)
#                     NvM_Data_Crc.buf_ptr = (P2VAR(uint8,NVM_VAR,NVM_APPL_DATA))&blockId;
	.d2line		4593
	diab.addi		r0,r1,8
	lis		r3,(NvM_Data_Crc+16)@ha
	stw		r0,(NvM_Data_Crc+16)@l(r3)
# 
#                     /* NvM_Data_Crc.result and NvM_Data_Crc.isFirstCrcCall will be set by this function call */
#                     NvM_GetCrcResult(NvM_BlockManagementTable.BlockDescriptorPtr[blockId].CrcFunctionPtr);
	.d2line		4596
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r3,4(r3)
	bl		NvM_GetCrcResult
.L1202:
#                 }
#                 NvM_Data_Crc.data_length_to_process = Get_Conf_Block_Length(blockId);
	.d2line		4598
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,20(r3)
	lis		r3,(NvM_Data_Crc+14)@ha
	sth		r0,(NvM_Data_Crc+14)@l(r3)
	b		.L1203
.L1201:
#             }
#             else
#             {
#                 NvM_Data_Crc.data_length_to_process = Get_Conf_Block_Data_Length(blockId);
	.d2line		4602
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	diab.li		r3,2
	isel		r3,r3,r0,2
.L1207:
	diab.li		r0,0
	isel		r0,r3,r0,2
.L1208:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r4
	lhz		r3,20(r3)
	se_add		r0,r3
	lis		r3,(NvM_Data_Crc+14)@ha
	sth		r0,(NvM_Data_Crc+14)@l(r3)
.L1203:
#             }
# 
#             /* It points to the RAMBlock or RAMMirror */
#             NvM_Data_Crc.buf_ptr = dataPtr;
	.d2line		4606
	lis		r3,(NvM_Data_Crc+16)@ha
	stw		r29,(NvM_Data_Crc+16)@l(r3)		# dataPtr=r29
# 
#             Set_Crc_State_Machine(NVM_CALCULATION_CRC_IN_PROGRESS);
	.d2line		4608
	diab.li		r0,1
	lis		r3,(NvM_Data_Crc+4)@ha
	stw		r0,(NvM_Data_Crc+4)@l(r3)
.L1204:
#         }/* intentionally no break */
#         case NVM_CALCULATION_CRC_IN_PROGRESS:
#         {
#             /*one step CRC calculation*/
#             NvM_CheckCrcValue(NvM_BlockManagementTable.BlockDescriptorPtr[blockId].CrcFunctionPtr,arg_block,arg_operation,isItRecalc);
	.d2line		4613
.Llo163:
	lis		r3,(NvM_BlockManagementTable+4)@ha
.Llo164:
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,8(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r3,4(r3)
	mr		r5,r30		# arg_operation=r5 arg_operation=r30
.Llo165:
	mr		r4,r31		# arg_block=r4 arg_block=r31
	mr		r6,r28		# isItRecalc=r6 isItRecalc=r28
	bl		NvM_CheckCrcValue
	b		.L1205
.L1206:
# 
#         }break;
#         default:
#         {
#             Set_Crc_State_Machine(NVM_CALCULATION_CRC_FINISHED_NOK);
	.d2line		4618
.Llo157:
	diab.li		r0,3
.Llo159:
	lis		r3,(NvM_Data_Crc+4)@ha
	stw		r0,(NvM_Data_Crc+4)@l(r3)
.L1205:
#         }break;
#     }
#     return NvM_Data_Crc.state;
	.d2line		4621
	lis		r3,(NvM_Data_Crc+4)@ha
	lwz		r3,(NvM_Data_Crc+4)@l(r3)
# }
	.d2line		4622
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo160:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1796:
	.type		NvM_ValidateBlockCRC,@function
	.size		NvM_ValidateBlockCRC,.-NvM_ValidateBlockCRC
# Number of nodes = 206

# Allocations for NvM_ValidateBlockCRC
#	?a4		arg_block
#	?a5		arg_operation
#	?a6		dataPtr
#	?a7		isItRecalc
#	?a8		$$26
#	SP,8		blockId
# FUNC(NvM_CalculationCrcStateType,NVM_CODE) NvM_ValidateCrc(
	.align		2
	.section	.text_vle
        .d2line         1691,44
#$$ld
.L1807:

#$$bf	NvM_ValidateCrc,interprocedural,rasave,nostackparams
	.globl		NvM_ValidateCrc
	.d2_cfa_start __cie
NvM_ValidateCrc:
.Llo167:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# argBlock=r3 argBlock=r3
	mr		r4,r4		# updateCrcField=r4 updateCrcField=r4
	mr		r5,r5		# dataPtr=r5 dataPtr=r5
	mr		r6,r6		# isItRecalc=r6 isItRecalc=r6
	.d2prologue_end
#    CONSTP2CONST(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) argBlock,
#    CONST(NvM_CrcBufferUpdateType,AUTOMATIC) updateCrcField,
#    P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) dataPtr,
#    VAR(boolean,AUTOMATIC) isItRecalc
# )
# {
#     VAR(NvM_CalculationCrcStateType,AUTOMATIC) tmp_crc_state = NVM_CALCULATION_CRC_FINISHED_NOK;
	.d2line		1698
	diab.li		r31,3		# tmp_crc_state=r31
# 
#     if(   (NVM_CRC8  == Get_Conf_NvM_BlockCrcType(argBlock->block_id))
	.d2line		1700
	lis		r7,(NvM_BlockManagementTable+4)@ha
	lwz		r7,(NvM_BlockManagementTable+4)@l(r7)
	lhz		r0,4(r3)		# argBlock=r3
	rlwinm		r0,r0,6,10,25
	lwzx		r0,r7,r0
	se_cmpi		r0,0
	bc		1,2,.L552	# eq
	lis		r7,(NvM_BlockManagementTable+4)@ha
	lwz		r7,(NvM_BlockManagementTable+4)@l(r7)
	lhz		r0,4(r3)		# argBlock=r3
	rlwinm		r0,r0,6,10,25
	lwzx		r0,r7,r0
	se_cmpi		r0,1
	bc		1,2,.L552	# eq
	lis		r7,(NvM_BlockManagementTable+4)@ha
	lwz		r7,(NvM_BlockManagementTable+4)@l(r7)
	lhz		r0,4(r3)		# argBlock=r3
	rlwinm		r0,r0,6,10,25
	lwzx		r0,r7,r0
	se_cmpi		r0,2
	bc		0,2,.L551	# ne
.L552:
#         ||(NVM_CRC16 == Get_Conf_NvM_BlockCrcType(argBlock->block_id))
#         ||(NVM_CRC32 == Get_Conf_NvM_BlockCrcType(argBlock->block_id))
#       )
#     {
#        /* PRQA S 3689 ++
#         * Indexing array with value that will apparently be out of bounds. -
#         * index of function table depends on CRC block type NVM_CRC8 or NVM_CRC16 or NVM_CRC32
#         * which is checked in line before.
#         */
#        tmp_crc_state=NvM_ValidateBlockCRC(argBlock, updateCrcField, dataPtr,isItRecalc);
	.d2line		1710
.Llo169:
	mr		r3,r3		# argBlock=r3 argBlock=r3
.Llo168:
	mr		r4,r4		# updateCrcField=r4 updateCrcField=r4
.Llo170:
	mr		r5,r5		# dataPtr=r5 dataPtr=r5
.Llo171:
	mr		r6,r6		# isItRecalc=r6 isItRecalc=r6
.Llo172:
	bl		NvM_ValidateBlockCRC
	mr		r31,r3		# tmp_crc_state=r31 tmp_crc_state=r3
.L551:
#        /* PRQA S 3689 -- */
#     }
# 
#     return tmp_crc_state;
	.d2line		1714
	mr		r3,r31		# tmp_crc_state=r3 tmp_crc_state=r31
# }
	.d2line		1715
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo173:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1808:
	.type		NvM_ValidateCrc,@function
	.size		NvM_ValidateCrc,.-NvM_ValidateCrc
# Number of nodes = 66

# Allocations for NvM_ValidateCrc
#	?a4		argBlock
#	?a5		updateCrcField
#	?a6		dataPtr
#	?a7		isItRecalc
#	?a8		tmp_crc_state
# static FUNC(boolean,NVM_CODE)  NvM_ActBlockNvReadRomDatasetValidate(void)
	.align		1
	.section	.text_vle
        .d2line         3084,32
#$$ld
.L1819:

#$$bf	NvM_ActBlockNvReadRomDatasetValidate,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActBlockNvReadRomDatasetValidate:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(NvM_CalculationCrcStateType,AUTOMATIC) tmp_crc_state= NvM_ValidateCrc(&NvM_Current_Block,NVM_UPDATE_CRC_FIELD,NvM_Common.NvM_RamMirrorPtr,FALSE);
	.d2line		3086
	lis		r3,(NvM_Common+24)@ha
	lwz		r5,(NvM_Common+24)@l(r3)
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	diab.li		r4,0
	diab.li		r6,0
	bl		NvM_ValidateCrc
.Llo174:
	mr		r3,r3		# tmp_crc_state=r3 tmp_crc_state=r3
# 
#    /* CRC configured, calculation finished, or CRC not configured */
#    if(0U!=(((uint8)tmp_crc_state) & NVM_CALCULATION_CRC_FINISHED_MASK))
	.d2line		3089
	mr		r3,r3		# tmp_crc_state=r3 tmp_crc_state=r3
.Llo175:
	rlwinm		r3,r3,0,24,31
	se_btsti		r3,30
	bc		1,2,.L801	# eq
#    {
#       Set_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id,NVM_BLOCK_VALID);
	.d2line		3091
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r0,NvM_BlockManagementTable@l(r4)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r5,(NvM_Current_Block+4)@l(r3)
	rlwinm		r5,r5,3,13,28
	add		r3,r0,r5
	lwz		r0,4(r3)
	.diab.bseti		r0,1
	lwz		r3,NvM_BlockManagementTable@l(r4)
	se_add		r5,r3
	stw		r0,4(r5)
#       NvM_Current_Block.info.state=NVM_BLOCK_NV_READ_DONE;
	.d2line		3092
	diab.li		r0,7
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
.L801:
#    }
#    return TRUE;
	.d2line		3094
	diab.li		r3,1
# }
	.d2line		3095
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1820:
	.type		NvM_ActBlockNvReadRomDatasetValidate,@function
	.size		NvM_ActBlockNvReadRomDatasetValidate,.-NvM_ActBlockNvReadRomDatasetValidate
# Number of nodes = 51

# Allocations for NvM_ActBlockNvReadRomDatasetValidate
#	?a4		tmp_crc_state
# static FUNC(boolean,NVM_CODE)  NvM_ActBlockNvProcessValidRead
	.align		1
	.section	.text_vle
        .d2line         3168,32
#$$ld
.L1826:

#$$bf	NvM_ActBlockNvProcessValidRead,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActBlockNvProcessValidRead:
.Llo176:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	.d2prologue_end
# (
#    P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block
# )
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing = TRUE;
	.d2line		3173
.Llo177:
	diab.li		r30,1		# tmp_stop_processing=r30
#    VAR(boolean,AUTOMATIC) Continue_processing_data = TRUE;
# 
#    /* Check of the header configuration */
#    if(Is_Conf_Block_Static_BlockIdCheck(arg_block->block_id))
	.d2line		3177
.Llo178:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	bc		0,2,.L821	# ne
	.section	.text_vle
.L1835:
#    {
#       VAR(NvM_BlockIdType, AUTOMATIC) stored_block_id;
# 
#       /* PRQA S 310 ++
#       * MISRA RULE C109 VIOLATION:
#       * Casting of address to uint8 is needed for storing the block ID(16 bit value)
#       * in the Buf_ptr as unaligned access needs to be avoided.
#       */
#       NvM_MemCopy((P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))(&stored_block_id), NvM_Common.NvM_RamMirrorPtr, NVM_BLOCK_HEADER_SIZE);
	.d2line		3186
	lis		r3,(NvM_Common+24)@ha
	lwz		r4,(NvM_Common+24)@l(r3)
	diab.addi		r3,r1,8
	diab.li		r5,2
	bl		NvM_MemCopy
#       if(stored_block_id != arg_block->block_id) /* [DD-NVM00524-MGC01-V1] */
	.d2line		3187
	lhz		r0,8(r1)
	lhz		r3,4(r31)		# arg_block=r31
	se_cmp		r0,r3
	bc		1,2,.L821	# eq
#       {
#          Continue_processing_data = FALSE;
	.d2line		3189
	diab.li		r30,0		# Continue_processing_data=r30
	.section	.text_vle
.L1836:
.L821:
#       }
#       /* PRQA S 310 -- */
#    }
# 
#    if(TRUE == Continue_processing_data)
	.d2line		3194
	rlwinm		r30,r30,0,24,31		# Continue_processing_data=r30 Continue_processing_data=r30
	se_cmpi		r30,1		# Continue_processing_data=r30
	bc		0,2,.L823	# ne
#    {
#       if(Is_Conf_Block_Use_Crc(arg_block->block_id))
	.d2line		3196
.Llo187:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,31,31
	se_cmpi		r0,1
	bc		0,2,.L824	# ne
#       {
#          Set_Crc_State_Machine(NVM_CALCULATION_CRC_INIT);
	.d2line		3198
	diab.li		r0,0
	lis		r3,(NvM_Data_Crc+4)@ha
	stw		r0,(NvM_Data_Crc+4)@l(r3)
#          arg_block->info.state = NVM_BLOCK_NV_READ_CHECK_CRC;
	.d2line		3199
	diab.li		r3,4
	stw		r3,12(r31)		# arg_block=r31
#          tmp_stop_processing =FALSE;
	.d2line		3200
	diab.li		r3,0
.Llo180:
	b		.L828
.L824:
#       }
#       else
#       {
#          if(   (Is_Conf_Block_Static_BlockIdCheck(arg_block->block_id))
	.d2line		3204
.Llo181:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	bc		1,2,.L829	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r0,4(r31)		# arg_block=r31
	rlwinm		r0,r0,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,25,25
	cmpi		0,0,r0,64
	bc		0,2,.L826	# ne
.L829:
#             || (Is_Conf_Block_Use_Synchmechanism(arg_block->block_id)))
#          {
#              arg_block->info.state  = NVM_BLOCK_NV_READ_RAMMIRROR;
	.d2line		3207
	diab.li		r0,5
	stw		r0,12(r31)		# arg_block=r31
#              tmp_stop_processing = FALSE;
	.d2line		3208
	diab.li		r3,0		# tmp_stop_processing=r3
#              NvM_ReadRepeatMirrorCount = (uint8)0U;
	.d2line		3209
.Llo182:
	diab.li		r0,0
	lis		r4,NvM_ReadRepeatMirrorCount@ha
	e_add16i		r4,r4,NvM_ReadRepeatMirrorCount@l
	stb		r0,0(r4)
#              NvM_BlockMirrorError = FALSE;
	.d2line		3210
	lis		r4,NvM_BlockMirrorError@ha
	e_add16i		r4,r4,NvM_BlockMirrorError@l
	stb		r0,0(r4)
	b		.L828
.L826:
#          }
#          else
#          {
#              /* [DD-NVM00270-MGC01-V1] [DD-NVM00366-MGC01-V1] [DD-NVM00206-MGC01-V1] */
#              arg_block->info.status_err = (NvM_RequestResultType)NVM_REQ_OK;
	.d2line		3215
.Llo183:
	diab.li		r0,0
	stb		r0,24(r31)		# arg_block=r31
#              arg_block->info.state = NVM_BLOCK_NV_READ_DONE;
	.d2line		3216
	diab.li		r0,7
	stw		r0,12(r31)		# arg_block=r31
#              tmp_stop_processing = TRUE;
	.d2line		3217
	diab.li		r3,1		# tmp_stop_processing=r3
.Llo184:
	b		.L828
.L823:
#          }
#       }
#    }
#    else
#    {
#        /* [DD-NVM00525-MGC01-V1] */
#        NvM_Call_Dem_ReportErrorStatus(arg_block->block_id, NVM_DEM_EVENT_E_WRONG_BLOCK_ID, DEM_EVENT_STATUS_FAILED);
	.d2line		3224
.Llo185:
	lhz		r3,4(r31)		# tmp_stop_processing=r3 arg_block=r31
	diab.li		r4,8
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
# 
#       arg_block->info.status_err = (NvM_RequestResultType)NVM_REQ_INTEGRITY_FAILED;
	.d2line		3226
	diab.li		r0,3
	stb		r0,24(r31)		# arg_block=r31
#       arg_block->info.state = NVM_BLOCK_NV_READ_PROCESS_ERR; /* [DD-NVM00580-MGC01-V1] */
	.d2line		3227
	diab.li		r0,6
	stw		r0,12(r31)		# arg_block=r31
#       tmp_stop_processing = FALSE;
	.d2line		3228
	diab.li		r3,0		# tmp_stop_processing=r3
.L828:
#    }
#    return tmp_stop_processing;
	.d2line		3230
.Llo179:
	rlwinm		r3,r3,0,24,31		# tmp_stop_processing=r3 tmp_stop_processing=r3
# }
	.d2line		3231
	.d2epilogue_begin
.Llo186:
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
.L1827:
	.type		NvM_ActBlockNvProcessValidRead,@function
	.size		NvM_ActBlockNvProcessValidRead,.-NvM_ActBlockNvProcessValidRead
# Number of nodes = 196

# Allocations for NvM_ActBlockNvProcessValidRead
#	?a4		arg_block
#	?a5		tmp_stop_processing
#	?a6		Continue_processing_data
#	SP,8		stored_block_id
# static FUNC(boolean,NVM_CODE)  NvM_ActBlockNvReadInProgress(void)
	.align		1
	.section	.text_vle
        .d2line         3106,32
#$$ld
.L1842:

#$$bf	NvM_ActBlockNvReadInProgress,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActBlockNvReadInProgress:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing =TRUE;
	.d2line		3108
	diab.li		r4,1		# tmp_stop_processing=r4
#    VAR(MemIf_JobResultType,AUTOMATIC) tmp_result;
# 
# #if (NVM_POLLING_MODE==STD_ON)
#    /* [DD-NVM00346-MGC01-V1] */
#    if(MEMIF_IDLE == MemIf_GetStatus(Get_Conf_Device_Index(NvM_Current_Block.block_id)))
# #else
#    if(MEMIF_IDLE==NvM_MemIf_Driver_Status)
	.d2line		3115
.Llo188:
	lis		r3,NvM_MemIf_Driver_Status@ha
	lwz		r0,NvM_MemIf_Driver_Status@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L804	# ne
# #endif
#    {
#       tmp_result=MemIf_GetJobResult(Get_Conf_Device_Index(NvM_Current_Block.block_id));
	.d2line		3118
.Llo189:
	bl		Ea_GetJobResult
	.d2line		3119
	mr.		r0,r3		# tmp_result=?a5 tmp_result=r3
#       if(MEMIF_JOB_OK==tmp_result)
.Llo194:
	bc		0,2,.L805	# ne
#       {
#          tmp_stop_processing = NvM_ActBlockNvProcessValidRead(&NvM_Current_Block);
	.d2line		3121
.Llo195:
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	bl		NvM_ActBlockNvProcessValidRead
.Llo190:
	mr		r4,r3		# tmp_stop_processing=r4 tmp_stop_processing=r3
	b		.L804
.L805:
#       }
#       else
#       {
#          if(MEMIF_JOB_FAILED==tmp_result)
	.d2line		3125
.Llo191:
	se_cmpi		r0,1		# tmp_result=r0
	bc		0,2,.L807	# ne
#          {
#             /* [DD-NVM00654-MGC01-V1] [DD-NVM00678-MGC01-V1] */
#             if (TRUE == NvM_IsDem_EventIdConfigured(NvM_Current_Block.block_id, NVM_DEM_EVENT_E_REQ_FAILED))
	.d2line		3128
.Llo196:
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,2		# tmp_stop_processing=r4
	bl		NvM_IsDem_EventIdConfigured
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L808	# ne
#             {
#                NvM_Current_Block.info.dem_err = NVM_DEM_EVENT_E_REQ_FAILED;
	.d2line		3130
	diab.li		r0,2		# tmp_result=r0
.Llo197:
	lis		r3,(NvM_Current_Block+20)@ha
	stw		r0,(NvM_Current_Block+20)@l(r3)		# tmp_result=r0
.L808:
#             }
# 
#             /* [DD-NVM00359-MGC01-V1] [DD-NVM00361-MGC01-V1] */
#             NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		3134
.Llo198:
	diab.li		r0,1		# tmp_result=r0
.Llo199:
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)		# tmp_result=r0
	b		.L809
.L807:
#          }
#          /* [DD-NVM00651-MGC01-V1] */
#          else if(MEMIF_BLOCK_INCONSISTENT==tmp_result)
	.d2line		3137
	se_cmpi		r0,4		# tmp_result=r0
	bc		0,2,.L810	# ne
#          {
#             /* [DD-NVM00653-MGC01-V1] [DD-NVM00677-MGC01-V1] */
#             if (TRUE == NvM_IsDem_EventIdConfigured(NvM_Current_Block.block_id, NVM_DEM_EVENT_E_INTEGRITY_FAILED))
	.d2line		3140
.Llo200:
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,3		# tmp_stop_processing=r4
	bl		NvM_IsDem_EventIdConfigured
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L811	# ne
#             {
#                NvM_Current_Block.info.dem_err = NVM_DEM_EVENT_E_INTEGRITY_FAILED;
	.d2line		3142
	diab.li		r0,3		# tmp_result=r0
.Llo201:
	lis		r3,(NvM_Current_Block+20)@ha
	stw		r0,(NvM_Current_Block+20)@l(r3)		# tmp_result=r0
.L811:
#             }
# 
#             /* [DD-NVM00358-MGC01-V1] [DD-NVM00360-MGC01-V1] */
#             NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_INTEGRITY_FAILED;
	.d2line		3146
.Llo202:
	diab.li		r0,3		# tmp_result=r0
.Llo203:
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)		# tmp_result=r0
	b		.L809
.L810:
#          }
#          else
#          {
#             /*Block Invalid or request cancelled */
#             /* [DD-NVM00355-MGC01-V1] [DD-NVM00341-MGC01-V1] [DD-NVM00317-MGC01-V1] */
#             /* [DD-NVM00342-MGC01-V1] */
#             NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_NV_INVALIDATED;
	.d2line		3153
.Llo204:
	diab.li		r0,5		# tmp_result=r0
.Llo205:
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)		# tmp_result=r0
.L809:
#          }
#          NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_PROCESS_ERR;
	.d2line		3155
.Llo206:
	diab.li		r0,6		# tmp_result=r0
.Llo207:
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_result=r0
#          tmp_stop_processing = FALSE;
	.d2line		3156
	diab.li		r4,0		# tmp_stop_processing=r4
.L804:
#       }
#    }
#    return tmp_stop_processing;
	.d2line		3159
.Llo192:
	rlwinm		r3,r4,0,24,31		# tmp_stop_processing=r4
# }
	.d2line		3160
	.d2epilogue_begin
	lwz		r0,20(r1)		# tmp_result=r0
	mtspr		lr,r0		# tmp_result=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo193:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1843:
	.type		NvM_ActBlockNvReadInProgress,@function
	.size		NvM_ActBlockNvReadInProgress,.-NvM_ActBlockNvReadInProgress
# Number of nodes = 104

# Allocations for NvM_ActBlockNvReadInProgress
#	?a4		tmp_stop_processing
#	?a5		tmp_result
# static FUNC(boolean,NVM_CODE)  NvM_ActBlockNvReadRamMirror(void)
	.align		1
	.section	.text_vle
        .d2line         3241,32
#$$ld
.L1853:

#$$bf	NvM_ActBlockNvReadRamMirror,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActBlockNvReadRamMirror:
.Llo208:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing =TRUE;
	.d2line		3243
	diab.li		r31,1		# tmp_stop_processing=r31
#    VAR(Std_ReturnType,AUTOMATIC) tmp_result;
#    if(Is_Conf_Block_Use_Synchmechanism(NvM_Current_Block.block_id))
	.d2line		3245
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,25,25
	cmpi		0,0,r0,64
	bc		0,2,.L837	# ne
#    {
#       /* [DD-NVM00516-MGC01-V1] [DD-NVM00540-MGC01-V2] [DD-NVM00542-MGC01-V1] */
#       tmp_result = NvM_BlockManagementTable.BlockDescriptorPtr[NvM_Current_Block.block_id].NvM_ReadRamBlockFromNvCallback(NvM_Common.NvM_RamMirrorPtr);
	.d2line		3248
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,48(r3)
	mtspr		ctr,r0
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo210:
	mr		r3,r3		# tmp_result=r3 tmp_result=r3
#       if(E_OK == tmp_result)
	.d2line		3249
	rlwinm		r3,r3,0,24,31		# tmp_result=r3 tmp_result=r3
	se_cmpi		r3,0		# tmp_result=r3
	bc		0,2,.L838	# ne
#       {
#          NvM_BlockMirrorError = FALSE;
	.d2line		3251
.Llo211:
	diab.li		r0,0
	lis		r3,NvM_BlockMirrorError@ha		# tmp_result=r3
.Llo212:
	e_add16i		r3,r3,NvM_BlockMirrorError@l		# tmp_result=r3 tmp_result=r3
	stb		r0,0(r3)		# tmp_result=r3
#          NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_DONE;
	.d2line		3252
	diab.li		r0,7
	lis		r3,(NvM_Current_Block+12)@ha		# tmp_result=r3
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_result=r3
	b		.L842
.L838:
#       }
#       else
#       {
#          if(NvM_ReadRepeatMirrorCount == NvM_Common.NvM_RptMirrorCnt)
	.d2line		3256
.Llo213:
	lis		r3,NvM_ReadRepeatMirrorCount@ha		# tmp_result=r3
.Llo214:
	lbz		r0,NvM_ReadRepeatMirrorCount@l(r3)		# tmp_result=r3
	lis		r3,(NvM_Common+33)@ha		# tmp_result=r3
	lbz		r3,(NvM_Common+33)@l(r3)		# tmp_result=r3 tmp_result=r3
	se_cmp		r0,r3		# tmp_result=r3
	bc		0,2,.L840	# ne
#          {
#             /* [DD-NVM00517-MGC01-V1] [DD-NVM00838-MGC01-V1] */
#             NvM_BlockMirrorError = TRUE;
	.d2line		3259
.Llo215:
	diab.li		r4,1
	lis		r3,NvM_BlockMirrorError@ha		# tmp_result=r3
.Llo216:
	e_add16i		r3,r3,NvM_BlockMirrorError@l		# tmp_result=r3 tmp_result=r3
	stb		r4,0(r3)		# tmp_result=r3
#             NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_DONE;
	.d2line		3260
	diab.li		r0,7
	lis		r3,(NvM_Current_Block+12)@ha		# tmp_result=r3
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_result=r3
#             NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		3261
	lis		r3,(NvM_Current_Block+24)@ha		# tmp_result=r3
	stb		r4,(NvM_Current_Block+24)@l(r3)		# tmp_result=r3
	b		.L842
.L840:
#          }
#          else
#          {
#             /* [DD-NVM00839-MGC01-V1] */
#             NvM_ReadRepeatMirrorCount++;
	.d2line		3266
.Llo217:
	lis		r3,NvM_ReadRepeatMirrorCount@ha		# tmp_result=r3
.Llo218:
	lbz		r3,NvM_ReadRepeatMirrorCount@l(r3)		# tmp_result=r3 tmp_result=r3
	diab.addi		r0,r3,1		# tmp_result=r3
	lis		r3,NvM_ReadRepeatMirrorCount@ha		# tmp_result=r3
	e_add16i		r3,r3,NvM_ReadRepeatMirrorCount@l		# tmp_result=r3 tmp_result=r3
	stb		r0,0(r3)		# tmp_result=r3
#             NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_RAMMIRROR;
	.d2line		3267
	diab.li		r0,5
	lis		r3,(NvM_Current_Block+12)@ha		# tmp_result=r3
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_result=r3
#             tmp_stop_processing = FALSE;
	.d2line		3268
	diab.li		r31,0		# tmp_stop_processing=r31
	b		.L842
.L837:
#          }
#       }
#    }
#    else
#    {
#       NvM_CopyRamMirrorToRam(&NvM_Current_Block);
	.d2line		3274
.Llo219:
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	bl		NvM_CopyRamMirrorToRam
#       NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_DONE;
	.d2line		3275
	diab.li		r0,7
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
.L842:
#    }
# 
#    return tmp_stop_processing;
	.d2line		3278
	rlwinm		r3,r31,0,24,31		# tmp_result=r3 tmp_stop_processing=r31
# }
	.d2line		3279
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo209:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1854:
	.type		NvM_ActBlockNvReadRamMirror,@function
	.size		NvM_ActBlockNvReadRamMirror,.-NvM_ActBlockNvReadRamMirror
# Number of nodes = 121

# Allocations for NvM_ActBlockNvReadRamMirror
#	?a4		tmp_stop_processing
#	?a5		tmp_result
# static FUNC(boolean,NVM_CODE)  NvM_ActBlockNvReadCheckCrc(void)
	.align		1
	.section	.text_vle
        .d2line         3288,32
#$$ld
.L1863:

#$$bf	NvM_ActBlockNvReadCheckCrc,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActBlockNvReadCheckCrc:
.Llo220:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing =TRUE;
	.d2line		3290
	diab.li		r31,1		# tmp_stop_processing=r31
#    VAR(NvM_CalculationCrcStateType,AUTOMATIC) tmp_crc_state= NvM_ValidateCrc(&NvM_Current_Block,NVM_NOT_UPDATE_CRC_FIELD,NvM_Common.NvM_RamMirrorPtr,FALSE);
	.d2line		3291
	lis		r3,(NvM_Common+24)@ha		# tmp_crc_state=r3
.Llo224:
	lwz		r5,(NvM_Common+24)@l(r3)		# tmp_crc_state=r3
	lis		r3,NvM_Current_Block@ha		# tmp_crc_state=r3
	e_add16i		r3,r3,NvM_Current_Block@l		# tmp_crc_state=r3 tmp_crc_state=r3
.Llo225:
	diab.li		r4,1
	diab.li		r6,0
	bl		NvM_ValidateCrc
.Llo226:
	mr		r3,r3		# tmp_crc_state=r3 tmp_crc_state=r3
# 
#    /* crc configured, calculation finished and crc correct.*/
#    if(NVM_CALCULATION_CRC_FINISHED_OK==tmp_crc_state)
	.d2line		3294
	se_cmpi		r3,2		# tmp_crc_state=r3
	bc		0,2,.L848	# ne
#    {
#       NvM_Current_Block.info.state= NVM_BLOCK_NV_READ_RAMMIRROR;
	.d2line		3296
.Llo227:
	diab.li		r0,5
	lis		r3,(NvM_Current_Block+12)@ha		# tmp_crc_state=r3
.Llo228:
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_crc_state=r3
#       NvM_BlockMirrorError = FALSE;
	.d2line		3297
	diab.li		r31,0		# tmp_stop_processing=r31
	lis		r3,NvM_BlockMirrorError@ha		# tmp_crc_state=r3
	e_add16i		r3,r3,NvM_BlockMirrorError@l		# tmp_crc_state=r3 tmp_crc_state=r3
	stb		r31,0(r3)		# tmp_crc_state=r3 tmp_stop_processing=r31
#       NvM_ReadRepeatMirrorCount = 0;
	.d2line		3298
	lis		r3,NvM_ReadRepeatMirrorCount@ha		# tmp_crc_state=r3
	e_add16i		r3,r3,NvM_ReadRepeatMirrorCount@l		# tmp_crc_state=r3 tmp_crc_state=r3
	stb		r31,0(r3)		# tmp_crc_state=r3 tmp_stop_processing=r31
#       tmp_stop_processing = FALSE;
	.d2line		3299
	b		.L849
.L848:
#    }
#    /* CRC configured, calculation finished and CRC not correct*/
#    else if(NVM_CALCULATION_CRC_FINISHED_NOK==tmp_crc_state)
	.d2line		3302
	se_cmpi		r3,3		# tmp_crc_state=r3
	bc		0,2,.L849	# ne
#    {
#       /* [DD-NVM00204-MGC01-V1] [DD-NVM00295-MGC01-V1] */
#       NvM_Current_Block.info.status_err= (NvM_RequestResultType)NVM_REQ_INTEGRITY_FAILED;
	.d2line		3305
.Llo229:
	diab.li		r4,3
	lis		r3,(NvM_Current_Block+24)@ha		# tmp_crc_state=r3
.Llo230:
	stb		r4,(NvM_Current_Block+24)@l(r3)		# tmp_crc_state=r3
# 
#       /* [DD-NVM00203-MGC01-V1] [DD-NVM00294-MGC01-V1] */
#       if (TRUE == NvM_IsDem_EventIdConfigured(NvM_Current_Block.block_id, NVM_DEM_EVENT_E_INTEGRITY_FAILED))
	.d2line		3308
	lis		r3,(NvM_Current_Block+4)@ha		# tmp_crc_state=r3
	lhz		r3,(NvM_Current_Block+4)@l(r3)		# tmp_crc_state=r3 tmp_crc_state=r3
.Llo231:
	bl		NvM_IsDem_EventIdConfigured
.Llo232:
	rlwinm		r3,r3,0,24,31		# tmp_crc_state=r3 tmp_crc_state=r3
	se_cmpi		r3,1		# tmp_crc_state=r3
	bc		0,2,.L851	# ne
#       {
#          NvM_Current_Block.info.dem_err = NVM_DEM_EVENT_E_INTEGRITY_FAILED;
	.d2line		3310
.Llo221:
	diab.li		r0,3
	lis		r3,(NvM_Current_Block+20)@ha		# tmp_crc_state=r3
.Llo233:
	stw		r0,(NvM_Current_Block+20)@l(r3)		# tmp_crc_state=r3
.L851:
#       }
# 
#       NvM_Current_Block.info.state= NVM_BLOCK_NV_READ_PROCESS_ERR;
	.d2line		3313
.Llo234:
	diab.li		r0,6
	lis		r3,(NvM_Current_Block+12)@ha		# tmp_crc_state=r3
.Llo235:
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_crc_state=r3
#       tmp_stop_processing = FALSE;
	.d2line		3314
	diab.li		r31,0		# tmp_stop_processing=r31
.L849:
#    }
#    /*CRC calculation in progress*/
#    else
#    {
#       /*Do nothing*/
#    }
# 
#    return tmp_stop_processing;
	.d2line		3322
.Llo222:
	rlwinm		r3,r31,0,24,31		# tmp_crc_state=r3 tmp_stop_processing=r31
# }
	.d2line		3323
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo223:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1864:
	.type		NvM_ActBlockNvReadCheckCrc,@function
	.size		NvM_ActBlockNvReadCheckCrc,.-NvM_ActBlockNvReadCheckCrc
# Number of nodes = 83

# Allocations for NvM_ActBlockNvReadCheckCrc
#	?a4		tmp_stop_processing
#	?a5		tmp_crc_state
# static FUNC(boolean,NVM_CODE)  NvM_ActBlockNvReadProcessErr(void) /* [DD-NVM00580-MGC01-V1] */
	.align		1
	.section	.text_vle
        .d2line         3335,32
#$$ld
.L1872:

#$$bf	NvM_ActBlockNvReadProcessErr,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr,ctr
	.d2_cfa_start __cie
NvM_ActBlockNvReadProcessErr:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo236:
	stw		r0,20(r1)		# tmp_stop_processing=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing = TRUE;
	.d2line		3337
	diab.li		r0,1		# tmp_stop_processing=r0
# 
#    /* [DD-NVM00526-MGC01-V1] [DD-NVM00581-MGC01-V1] [DD-NVM00582-MGC01-V1] [DD-NVM00583-MGC01-V1] */
#    if(NvM_ReadRetryCounter == NvM_BlockManagementTable.BlockDescriptorPtr[NvM_Current_Block.block_id].NvM_MaxNoOfReadRetry)
	.d2line		3340
.Llo237:
	lis		r3,NvM_ReadRetryCounter@ha
	lbz		r0,NvM_ReadRetryCounter@l(r3)		# tmp_stop_processing=r0
.Llo238:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r4
	lbz		r3,26(r3)
	se_cmp		r0,r3		# tmp_stop_processing=r0
	bc		0,2,.L857	# ne
#    {
#       if(Is_Conf_Block_Type_Redundant(NvM_Current_Block.block_id))
	.d2line		3342
.Llo239:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# tmp_stop_processing=r0
.Llo240:
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0		# tmp_stop_processing=r0
	lwz		r0,12(r3)		# tmp_stop_processing=r0
	se_cmpi		r0,1		# tmp_stop_processing=r0
	bc		0,2,.L858	# ne
#       {
#          /* [DD-NVM00390-MGC01-V1] */
#          if(NVM_REDUNDANT_FIRST_BLOCK == NvM_Current_Block.info.dataset)
	.d2line		3345
.Llo241:
	lis		r3,(NvM_Current_Block+16)@ha
	lhz		r0,(NvM_Current_Block+16)@l(r3)		# tmp_stop_processing=r0
.Llo242:
	se_cmpi		r0,0		# tmp_stop_processing=r0
	bc		0,2,.L859	# ne
#          {
#             NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_OK; /* [DD-NVM00279-MGC01-V1] */
	.d2line		3347
.Llo243:
	diab.li		r4,0
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r4,(NvM_Current_Block+24)@l(r3)
#             NvM_Current_Block.info.dem_err = NVM_DEM_EVENT_E_NO_ERROR; /* [DD-NVM00655-MGC01-V1] */
	.d2line		3348
	lis		r3,(NvM_Current_Block+20)@ha
	stw		r4,(NvM_Current_Block+20)@l(r3)
#             /* [DD-NVM00199-MGC01-V1] [DD-NVM00315-MGC01-V1] [DD-NVM00288-MGC01-V1] */
#             NvM_Current_Block.info.dataset = NVM_REDUNDANT_SECOND_BLOCK;
	.d2line		3350
	diab.li		r0,1		# tmp_stop_processing=r0
.Llo244:
	lis		r3,(NvM_Current_Block+16)@ha
	sth		r0,(NvM_Current_Block+16)@l(r3)		# tmp_stop_processing=r0
#             /* [DD-NVM00291-MGC01-V1] */
#             NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_START; /* if 1st block fails, try second */
	.d2line		3352
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_stop_processing=r0
#             NvM_ReadRetryCounter = 0; /* no DEM error after 1st fail */
	.d2line		3353
	lis		r3,NvM_ReadRetryCounter@ha
	e_add16i		r3,r3,NvM_ReadRetryCounter@l
	stb		r4,0(r3)
#             tmp_stop_processing = FALSE;
	.d2line		3354
	diab.li		r3,0
	b		.L863
.L859:
#          }
#          else /* NVM_REDUNDANT_SECOND_BLOCK */
#          {
#             NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_REDUNDANCY_FAILED; /* if both 1st and 2nd failed*/
	.d2line		3358
.Llo245:
	diab.li		r0,7		# tmp_stop_processing=r0
.Llo246:
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)		# tmp_stop_processing=r0
# 
#             if (TRUE == NvM_IsDem_EventIdConfigured(NvM_Current_Block.block_id, NVM_DEM_EVENT_E_LOSS_OF_REDUNDANCY))
	.d2line		3360
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,4
	bl		NvM_IsDem_EventIdConfigured
.Llo247:
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L861	# ne
#             {
#                NvM_Current_Block.info.dem_err = NVM_DEM_EVENT_E_LOSS_OF_REDUNDANCY;
	.d2line		3362
	diab.li		r0,4		# tmp_stop_processing=r0
.Llo248:
	lis		r3,(NvM_Current_Block+20)@ha
	stw		r0,(NvM_Current_Block+20)@l(r3)		# tmp_stop_processing=r0
.L861:
#             }
# 
#             NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_DONE;
	.d2line		3365
.Llo249:
	diab.li		r0,7		# tmp_stop_processing=r0
.Llo250:
	lis		r3,(NvM_Current_Block+12)@ha		# tmp_stop_processing=r3
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_stop_processing=r3 tmp_stop_processing=r0
#             tmp_stop_processing = TRUE;
	.d2line		3366
	diab.li		r3,1		# tmp_stop_processing=r3
	b		.L863
.L858:
#          }
#       }
#       else
#       {
#          NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_DONE;
	.d2line		3371
.Llo251:
	diab.li		r0,7		# tmp_stop_processing=r0
.Llo252:
	lis		r3,(NvM_Current_Block+12)@ha		# tmp_stop_processing=r3
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_stop_processing=r3 tmp_stop_processing=r0
#          tmp_stop_processing = TRUE;
	.d2line		3372
	diab.li		r3,1		# tmp_stop_processing=r3
	b		.L863
.L857:
#       }
#    }
#    else
#    {
#       NvM_ReadRetryCounter++;
	.d2line		3377
.Llo253:
	lis		r3,NvM_ReadRetryCounter@ha
	lbz		r3,NvM_ReadRetryCounter@l(r3)
	diab.addi		r0,r3,1		# tmp_stop_processing=r0
.Llo254:
	lis		r3,NvM_ReadRetryCounter@ha
	e_add16i		r3,r3,NvM_ReadRetryCounter@l
	stb		r0,0(r3)		# tmp_stop_processing=r0
#       NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_PENDING;
	.d2line		3378
	diab.li		r0,2		# tmp_stop_processing=r0
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)		# tmp_stop_processing=r0
#       NvM_Current_Block.info.dem_err = NVM_DEM_EVENT_E_NO_ERROR;
	.d2line		3379
	diab.li		r4,0
	lis		r3,(NvM_Current_Block+20)@ha
	stw		r4,(NvM_Current_Block+20)@l(r3)
#       NvM_Current_Block.info.state = NVM_BLOCK_NV_READ_START;
	.d2line		3380
	diab.li		r0,1		# tmp_stop_processing=r0
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_stop_processing=r0
#       tmp_stop_processing = FALSE;
	.d2line		3381
	diab.li		r3,0
.L863:
#    }
#    return tmp_stop_processing;
	.d2line		3383
.Llo255:
	rlwinm		r3,r3,0,24,31		# tmp_stop_processing=r3 tmp_stop_processing=r3
# }
	.d2line		3384
	.d2epilogue_begin
	lwz		r0,20(r1)		# tmp_stop_processing=r0
	mtspr		lr,r0		# tmp_stop_processing=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1873:
	.type		NvM_ActBlockNvReadProcessErr,@function
	.size		NvM_ActBlockNvReadProcessErr,.-NvM_ActBlockNvReadProcessErr
# Number of nodes = 164

# Allocations for NvM_ActBlockNvReadProcessErr
#	?a4		tmp_stop_processing
# static FUNC(void, NVM_CODE) NvM_ProcessReadingNvBlockStates
	.align		1
	.section	.text_vle
        .d2line         3988,29
#$$ld
.L1880:

#$$bf	NvM_ProcessReadingNvBlockStates,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ProcessReadingNvBlockStates:
.Llo256:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	.d2prologue_end
# (
#     P2VAR(NvM_BlockRequestType, AUTOMATIC, NVM_APPL_DATA) arg_block
# )
# {
#     VAR(boolean, AUTOMATIC) stopProcessing = FALSE;
	.d2line		3993
.Llo260:
	diab.li		r3,0		# stopProcessing=r3
.L1027:
# 
#     while(FALSE == stopProcessing)
	.d2line		3995
.Llo257:
	rlwinm		r3,r3,0,24,31		# stopProcessing=r3 stopProcessing=r3
.Llo258:
	se_cmpi		r3,0		# stopProcessing=r3
	bc		0,2,.L1026	# ne
#     {
#         switch(arg_block->info.state)
	.d2line		3997
.Llo261:
	lwz		r6,12(r31)		# arg_block=r31
	se_cmpli	r6,6
	se_slwi		r6,2
	e_add2is		r6,.L1886@ha
	bc		1,1,.L1037	# gt
	lwz		r7,.L1886@l(r6)
	mtspr		ctr,r7
	bcctr		20,0
.L1886:
#$$sl
	.long		.L1029
	.long		.L1031
	.long		.L1032
	.long		.L1033
	.long		.L1034
	.long		.L1035
	.long		.L1036
#$$se
.L1029:
#         {
#             case NVM_BLOCK_NV_READ_INIT:
#             {
#                 stopProcessing = NvM_ActBlockNvReadInit();
	.d2line		4001
	bl		NvM_ActBlockNvReadInit
.Llo262:
	mr		r3,r3		# stopProcessing=r3 stopProcessing=r3
	b		.L1027
.L1031:
#             }break;
# 
#             case NVM_BLOCK_NV_READ_START:
#             {
#                 stopProcessing = NvM_ActBlockNvReadStart();
	.d2line		4006
.Llo263:
	bl		NvM_ActBlockNvReadStart
.Llo264:
	mr		r3,r3		# stopProcessing=r3 stopProcessing=r3
	b		.L1027
.L1032:
#             }break;
# 
#             case NVM_BLOCK_NV_READ_ROM_DATASET_VALIDATE:
#             {
#                 stopProcessing = NvM_ActBlockNvReadRomDatasetValidate();
	.d2line		4011
.Llo265:
	bl		NvM_ActBlockNvReadRomDatasetValidate
.Llo266:
	mr		r3,r3		# stopProcessing=r3 stopProcessing=r3
	b		.L1027
.L1033:
#             }break;
# 
#             case NVM_BLOCK_NV_READ_IN_PROGRESS:
#             {
#                 stopProcessing = NvM_ActBlockNvReadInProgress();
	.d2line		4016
.Llo267:
	bl		NvM_ActBlockNvReadInProgress
.Llo268:
	mr		r3,r3		# stopProcessing=r3 stopProcessing=r3
	b		.L1027
.L1034:
#             }break;
# 
#             case NVM_BLOCK_NV_READ_CHECK_CRC:
#             {
#                 stopProcessing = NvM_ActBlockNvReadCheckCrc();
	.d2line		4021
.Llo269:
	bl		NvM_ActBlockNvReadCheckCrc
.Llo270:
	mr		r3,r3		# stopProcessing=r3 stopProcessing=r3
	b		.L1027
.L1035:
#             }break;
# 
#             case NVM_BLOCK_NV_READ_RAMMIRROR:
#             {
#                 stopProcessing = NvM_ActBlockNvReadRamMirror();
	.d2line		4026
.Llo271:
	bl		NvM_ActBlockNvReadRamMirror
.Llo272:
	mr		r3,r3		# stopProcessing=r3 stopProcessing=r3
	b		.L1027
.L1036:
#             }break;
# 
#             case NVM_BLOCK_NV_READ_PROCESS_ERR:
#             {
#                 stopProcessing = NvM_ActBlockNvReadProcessErr();
	.d2line		4031
.Llo273:
	bl		NvM_ActBlockNvReadProcessErr
.Llo274:
	mr		r3,r3		# stopProcessing=r3 stopProcessing=r3
	b		.L1027
.L1037:
#             }break;
# 
#             default:
#             {
#                 stopProcessing = TRUE;
	.d2line		4036
.Llo275:
	diab.li		r3,1		# stopProcessing=r3
.Llo276:
	b		.L1027
.L1026:
#             }break;
#         }
#     }
# }
	.d2line		4040
	.d2epilogue_begin
.Llo259:
	lwz		r31,28(r1)		# offset r1+28  0x1c
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
.L1881:
	.type		NvM_ProcessReadingNvBlockStates,@function
	.size		NvM_ProcessReadingNvBlockStates,.-NvM_ProcessReadingNvBlockStates
# Number of nodes = 51

# Allocations for NvM_ProcessReadingNvBlockStates
#	?a4		arg_block
#	?a5		stopProcessing
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateReadAllReadConfigId(void)
	.align		1
	.section	.text_vle
        .d2line         1371,31
#$$ld
.L1889:

#$$bf	NvM_ActSubStateReadAllReadConfigId,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateReadAllReadConfigId:
.Llo277:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing=TRUE;
	.d2line		1373
	diab.li		r31,1		# tmp_stop_processing=r31
#    P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) Buf_ptr;
#    VAR(uint16, AUTOMATIC) Nv_Read_Id = 0U;
	.d2line		1375
	diab.li		r0,0
	sth		r0,8(r1)
# 
#    NvM_ProcessReadingNvBlockStates(&NvM_Current_Block);
	.d2line		1377
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	bl		NvM_ProcessReadingNvBlockStates
# 
#    if (NVM_BLOCK_NV_READ_DONE==NvM_Current_Block.info.state)
	.d2line		1379
	lis		r3,(NvM_Current_Block+12)@ha
	lwz		r0,(NvM_Current_Block+12)@l(r3)
	se_cmpi		r0,7
	bc		0,2,.L488	# ne
#    {
#       /* PRQA S 3344 ++
#        * PRQA S 3396 ++ Deactivated for Code Optimization
#        * PRQA S 310 ++
#        * MISRA RULE C109 VIOLATION:
#        * Casting of address to uint8 is needed for storing the Configuration ID(16 bit value)
#        * in the NvM_Current_Block.ram_block_ptr as unaligned access needs to be avoided.
#        */
#       NvM_MemCopy(((P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))(&Nv_Read_Id)),
	.d2line		1388
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lwz		r4,96(r3)
	diab.addi		r3,r1,8
	diab.li		r5,2
	bl		NvM_MemCopy
#                   (NvM_BlockManagementTable.BlockDescriptorPtr[NVM_BLOCK_1].NvM_RamBlockDataAddress),
#                   NVM_BLOCK_CONFIGID_SIZE); /* [DD-NVM00669-MGC01-V1] */
# 
#       if (     ((NvM_RequestResultType)NVM_REQ_OK==NvM_Current_Block.info.status_err)
	.d2line		1392
	lis		r3,(NvM_Current_Block+24)@ha
	lbz		r0,(NvM_Current_Block+24)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L489	# ne
.Llo278:
	lis		r3,(NvM_Current_Block+20)@ha
	lwz		r0,(NvM_Current_Block+20)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L489	# ne
	lis		r3,(NvM_Common+2)@ha
	lhz		r0,(NvM_Common+2)@l(r3)
	lhz		r3,8(r1)
	se_cmp		r0,r3
	bc		0,2,.L489	# ne
#             && (NVM_DEM_EVENT_E_NO_ERROR == NvM_Current_Block.info.dem_err)
#             && (Get_Conf_Compiled_Id() == Nv_Read_Id )) /* [DD-NVM00246-MGC01-V1] */
#       {
#          /* PRQA S 310 -- */
#          /* PRQA S 3344 -- */
#          /* PRQA S 3396 -- */
#          id_match=TRUE;
	.d2line		1399
	diab.li		r3,1
	lis		r4,id_match@ha
	e_add16i		r4,r4,id_match@l
	stb		r3,0(r4)
#          /* [DD-NVM00251-MGC01-V1] */
#          Set_Adm_Block_Attrib_Block_Valid (NVM_BLOCK_1,NVM_BLOCK_VALID);
	.d2line		1401
	lis		r5,NvM_BlockManagementTable@ha
	lwz		r4,NvM_BlockManagementTable@l(r5)
	lwz		r0,12(r4)
	.diab.bseti		r0,1
	lwz		r4,NvM_BlockManagementTable@l(r5)
	stw		r0,12(r4)
#          Set_Adm_Block_Attrib_Block_Changed (NVM_BLOCK_1,NVM_BLOCK_UNCHANGED);
	.d2line		1402
	lwz		r4,NvM_BlockManagementTable@l(r5)
	lwz		r0,12(r4)
	.diab.bclri		r0,2
	lwz		r4,NvM_BlockManagementTable@l(r5)
	stw		r0,12(r4)
#          /* [DD-NVM00670-MGC01-V1] */
#          Set_Adm_Block_Error_Status(NVM_BLOCK_1, (NvM_RequestResultType)NVM_REQ_OK);
	.d2line		1404
	diab.li		r0,0
	lwz		r4,NvM_BlockManagementTable@l(r5)
	stb		r0,9(r4)
#          /* [DD-NVM00281-MGC01-V1] */
#          NvM_CallSingleBlockCallback( NVM_BLOCK_1,NVM_READ_ALL_ID);
	.d2line		1406
	diab.li		r4,12
	bl		NvM_CallSingleBlockCallback
#          Set_Sub_State_Machine (NVM_SUBSTATE_READALL_SELECT_READ_METHOD);
	.d2line		1407
	diab.li		r0,1
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L490
.L489:
#       }
#       else
#       {
#          if (   ((NvM_RequestResultType)NVM_REQ_OK == NvM_Current_Block.info.status_err)
	.d2line		1411
	lis		r3,(NvM_Current_Block+24)@ha
	lbz		r0,(NvM_Current_Block+24)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L491	# ne
	lis		r3,(NvM_Current_Block+20)@ha
	lwz		r0,(NvM_Current_Block+20)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L491	# ne
#               &&(NVM_DEM_EVENT_E_NO_ERROR == NvM_Current_Block.info.dem_err))
#          {
#             /* ID mismatch [DD-NVM00307-MGC01-V1] */
#             NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		1415
	diab.li		r0,1
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
	b		.L492
.L491:
#          }
#          else if ((NvM_RequestResultType)NVM_REQ_NOT_OK == NvM_Current_Block.info.status_err)
	.d2line		1417
	lis		r3,(NvM_Current_Block+24)@ha
	lbz		r0,(NvM_Current_Block+24)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L493	# ne
#          {
#             /* read ram mirror failure [DD-NVM00671-MGC01-V1] */
#             NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_INTEGRITY_FAILED;
	.d2line		1420
	diab.li		r0,3
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
	b		.L492
.L493:
#          }
#          else
#          {   /* Redundant block with (NvM_RequestResultType)NVM_REQ_REDUNDANCY_FAILED error */
#              if (MEMIF_BLOCK_INVALID == MemIf_GetJobResult((Get_Conf_Device_Index(NvM_Current_Block.block_id))))
	.d2line		1424
	bl		Ea_GetJobResult
	se_cmpi		r3,5
	bc		0,2,.L495	# ne
#              {
#                  /* block empty or invalid [DD-NVM00672-MGC01-V1] */
#                  NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_NV_INVALIDATED;
	.d2line		1427
	diab.li		r0,5
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
#                  /* [DD-NVM00306-MGC01-V1] */
#                  NvM_Current_Block.info.dem_err = NVM_DEM_EVENT_E_NO_ERROR;
	.d2line		1429
	diab.li		r0,0
	lis		r3,(NvM_Current_Block+20)@ha
	stw		r0,(NvM_Current_Block+20)@l(r3)
	b		.L492
.L495:
#              }
#              else
#              {
#                  /*block redundancy failed due to MEMIF_BLOCK_INCONSISTENT or MEMIF_JOB_FAILED.*/
#                  /* [DD-NVM00671-MGC01-V1] */
#                  NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_INTEGRITY_FAILED;
	.d2line		1435
	diab.li		r0,3
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
.L492:
#              }
#          }
# 
#          Set_Adm_Block_Error_Status (NVM_BLOCK_1, NvM_Current_Block.info.status_err);
	.d2line		1439
	lis		r3,(NvM_Current_Block+24)@ha
	lbz		r0,(NvM_Current_Block+24)@l(r3)
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	stb		r0,9(r3)
# 
#          /* Signal production error [DD-NVM00305-MGC01-V1] */
#          NvM_Call_Dem_ReportErrorStatus(NvM_Current_Block.block_id, NvM_Current_Block.info.dem_err, DEM_EVENT_STATUS_FAILED);
	.d2line		1442
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	lis		r4,(NvM_Current_Block+20)@ha
	lwz		r4,(NvM_Current_Block+20)@l(r4)
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
# 
#          /* PRQA S 3305 ++ MISRA RULE C109 VIOLATION
#           * PRQA S 310 ++  MISRA RULE C109 VIOLATION
#           * PRQA S 311 ++  MISRA RULE C109 VIOLATION
#           * Casting of address to uint8 is needed for storing the Configuration ID(16 bit value)
#           * in the NvM_Current_Block.ram_block_ptr as unaligned access needs to be avoided.
#           * PRQA S 488 ++
#           * Pointer arithmetic is required to read the correct NvM_CompiledConfigId from configuration
#           */
#          if (TRUE == NvM_Common.NvM_DynConfig)
	.d2line		1452
	lis		r3,(NvM_Common+36)@ha
	lbz		r0,(NvM_Common+36)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L497	# ne
#          {
#             Buf_ptr = NvM_Common.NvM_RamMirrorPtr;
	.d2line		1454
	lis		r3,(NvM_Common+24)@ha
	lwz		r31,(NvM_Common+24)@l(r3)		# tmp_stop_processing=r31
.Llo283:
	mr		r31,r31		# Buf_ptr=r31 Buf_ptr=r31
#             /* [DD-NVM00673-MGC01-V1] */
#             NvM_MemCopy(NvM_Current_Block.ram_block_ptr, ((P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))&(Get_Conf_Compiled_Id())), NVM_BLOCK_CONFIGID_SIZE);
	.d2line		1456
	lis		r3,(NvM_Current_Block+8)@ha
	lwz		r3,(NvM_Current_Block+8)@l(r3)
	lis		r4,(NvM_Common+2)@ha
	e_add16i		r4,r4,(NvM_Common+2)@l
	diab.li		r5,2
	bl		NvM_MemCopy
#             if(Is_Conf_Block_Static_BlockIdCheck(NvM_Current_Block.block_id))
	.d2line		1457
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	bc		0,2,.L498	# ne
#             {
#                NvM_MemCopy((Buf_ptr), ((P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))&(NvM_Current_Block.block_id)), NVM_BLOCK_HEADER_SIZE);
	.d2line		1459
	lis		r4,(NvM_Current_Block+4)@ha
	e_add16i		r4,r4,(NvM_Current_Block+4)@l
	mr		r3,r31		# Buf_ptr=r3 Buf_ptr=r31
	diab.li		r5,2
	bl		NvM_MemCopy
#                NvM_MemCopy((Buf_ptr + NVM_BLOCK_HEADER_SIZE), ((P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))&(Get_Conf_Compiled_Id())), NVM_BLOCK_CONFIGID_SIZE);
	.d2line		1460
	lis		r4,(NvM_Common+2)@ha
	e_add16i		r4,r4,(NvM_Common+2)@l
	diab.addi		r3,r31,2		# tmp_stop_processing=r3 Buf_ptr=r31
	diab.li		r5,2
	bl		NvM_MemCopy
	b		.L499
.L498:
#             }
#             else
#             {
#                NvM_MemCopy((Buf_ptr), ((P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))&(Get_Conf_Compiled_Id())), NVM_BLOCK_CONFIGID_SIZE);
	.d2line		1464
	lis		r4,(NvM_Common+2)@ha
	e_add16i		r4,r4,(NvM_Common+2)@l
	mr		r3,r31		# Buf_ptr=r3 Buf_ptr=r31
	diab.li		r5,2
	bl		NvM_MemCopy
.L499:
#             }
#             Set_Crc_State_Machine(NVM_CALCULATION_CRC_INIT);
	.d2line		1466
.Llo284:
	diab.li		r0,0
	lis		r3,(NvM_Data_Crc+4)@ha		# tmp_stop_processing=r3
.Llo279:
	stw		r0,(NvM_Data_Crc+4)@l(r3)		# tmp_stop_processing=r3
#             Set_Sub_State_Machine(NVM_SUBSTATE_READALL_VALIDATE_DEFAULTS);
	.d2line		1467
	diab.li		r0,25
	lis		r3,NvM_SubStateDbg@ha		# tmp_stop_processing=r3
	e_add16i		r3,r3,NvM_SubStateDbg@l		# tmp_stop_processing=r3 tmp_stop_processing=r3
	stw		r0,0(r3)		# tmp_stop_processing=r3
	b		.L490
.L497:
#             /* PRQA S 310 -- */
#             /* PRQA S 311 -- */
#             /* PRQA S 3305 -- */
#             /* PRQA S 488 -- */
#          }
#          else
#          {
#             Set_Adm_Block_Attrib_Block_Valid(NVM_BLOCK_1,NVM_BLOCK_INVALID);
	.d2line		1475
.Llo280:
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r4,NvM_BlockManagementTable@l(r3)
	lwz		r0,12(r4)
	.diab.bclri		r0,1
	lwz		r4,NvM_BlockManagementTable@l(r3)
	stw		r0,12(r4)
#             Set_Adm_Block_Attrib_Block_Changed (NVM_BLOCK_1,NVM_BLOCK_UNCHANGED);
	.d2line		1476
	lwz		r4,NvM_BlockManagementTable@l(r3)
	lwz		r0,12(r4)
	.diab.bclri		r0,2
	lwz		r3,NvM_BlockManagementTable@l(r3)
	stw		r0,12(r3)
#             /* [DD-NVM00281-MGC01-V1] */
#             NvM_CallSingleBlockCallback( NVM_BLOCK_1,NVM_READ_ALL_ID);
	.d2line		1478
	diab.li		r3,1
	diab.li		r4,12
	bl		NvM_CallSingleBlockCallback
#             Set_Sub_State_Machine (NVM_SUBSTATE_READALL_SELECT_READ_METHOD);
	.d2line		1479
	diab.li		r0,1
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
.L490:
#          }
#       }
#       tmp_stop_processing=FALSE;
	.d2line		1482
	diab.li		r31,0		# tmp_stop_processing=r31
.L488:
#    }
#    return tmp_stop_processing;
	.d2line		1484
.Llo281:
	rlwinm		r3,r31,0,24,31		# tmp_stop_processing=r3 tmp_stop_processing=r31
# }
	.d2line		1485
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo282:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1890:
	.type		NvM_ActSubStateReadAllReadConfigId,@function
	.size		NvM_ActSubStateReadAllReadConfigId,.-NvM_ActSubStateReadAllReadConfigId
# Number of nodes = 322

# Allocations for NvM_ActSubStateReadAllReadConfigId
#	?a4		tmp_stop_processing
#	?a5		Buf_ptr
#	SP,8		Nv_Read_Id
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateReadAllSelectReadMethod(void)
	.align		1
	.section	.text_vle
        .d2line         1495,31
#$$ld
.L1899:

#$$bf	NvM_ActSubStateReadAllSelectReadMethod,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateReadAllSelectReadMethod:
.Llo285:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean, AUTOMATIC) tmp_exit = FALSE;
	.d2line		1497
	diab.li		r31,0		# tmp_exit=r31
#    NvM_Current_Block.info.state=NVM_BLOCK_NV_READ_INIT;
	.d2line		1498
	diab.li		r0,0
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
.L512:
# 
#    /* [DD-NVM00244-MGC01-V1] */
#    while(FALSE==tmp_exit)
	.d2line		1501
	rlwinm		r31,r31,0,24,31		# tmp_exit=r31 tmp_exit=r31
	se_cmpi		r31,0		# tmp_exit=r31
	bc		0,2,.L513	# ne
#    {
#        tmp_exit=TRUE;
	.d2line		1503
.Llo286:
	diab.li		r31,1		# tmp_exit=r31
#        NvM_Current_Block.block_id++;
	.d2line		1504
.Llo287:
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r4)
	diab.addi		r0,r3,1
	sth		r0,(NvM_Current_Block+4)@l(r4)
# 
#        if(NvM_Current_Block.block_id < Get_Conf_Total_Block_Number())
	.d2line		1506
	se_extzh		r0
	lis		r3,(NvM_Common+4)@ha
	lhz		r3,(NvM_Common+4)@l(r3)
	se_cmp		r0,r3
	bc		0,0,.L514	# ge
#        {
#            /* [DD-NVM00118-MGC01-V1] */
#            if(Is_Conf_Block_Selected_For_Read_All(NvM_Current_Block.block_id)
	.d2line		1509
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,26,26
	cmpi		0,0,r0,32
	bc		0,2,.L515	# ne
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,32(r3)
	se_cmpi		r0,0
	bc		1,2,.L515	# eq
#                    &&  Is_Conf_Block_Permanent(NvM_Current_Block.block_id))
#            {
#                    /* [DD-NVM00396-MGC01-V1] [DD-NVM00185-MGC01-V1] [DD-NVM00304-MGC01-V1] */
#                    Set_Adm_Block_Error_Status(NvM_Current_Block.block_id, (NvM_RequestResultType)NVM_REQ_PENDING);
	.d2line		1513
	diab.li		r0,2
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r5,NvM_BlockManagementTable@l(r3)
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r4)
	rlwinm		r3,r3,3,13,28
	se_add		r3,r5
	stb		r0,1(r3)
# 
#                    NvM_Call_Dem_ReportErrorStatus_AllPassed(NvM_Current_Block.block_id);
	.d2line		1515
	lhz		r3,(NvM_Current_Block+4)@l(r4)
	bl		NvM_Call_Dem_ReportErrorStatus_AllPassed
# 
#                    NvM_Current_Block.ram_block_ptr = Get_Conf_Ram_Block_Addr(NvM_Current_Block.block_id);
	.d2line		1517
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,32(r3)
	lis		r3,(NvM_Current_Block+8)@ha
	stw		r0,(NvM_Current_Block+8)@l(r3)
# 
#                     if(TRUE == id_match)
	.d2line		1519
	lis		r3,id_match@ha
	lbz		r0,id_match@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L516	# ne
#                     {
# #if(NVM_SET_RAM_BLOCK_STATUS_API == STD_ON)
#                        if(Is_Conf_Block_Use_Set_RamBlock_Status(NvM_Current_Block.block_id)
	.d2line		1522
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,18,18
	cmpi		0,0,r0,8192
	bc		0,2,.L517	# ne
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,31,31
	se_cmpi		r0,1
	bc		0,2,.L517	# ne
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,30,30
	se_cmpi		r0,2
	bc		0,2,.L517	# ne
#                         && Is_Conf_Block_Use_Crc(NvM_Current_Block.block_id)
#                         && Is_Conf_Block_Calculate_Crc(NvM_Current_Block.block_id) /* [DD-NVM00362-MGC01-V1] */
#                          ) /* [DD-NVM00345-MGC01-V1] */
#                        {
#                           /* [DD-NVM00387-MGC01-V1] [DD-NVM00226-MGC01-V1] [DD-NVM00571-MGC01-V1] */
#                           /* [DD-NVM00364-MGC01-V1] */
#                           Set_Crc_State_Machine(NVM_CALCULATION_CRC_INIT);
	.d2line		1529
	diab.li		r0,0
	lis		r3,(NvM_Data_Crc+4)@ha
	stw		r0,(NvM_Data_Crc+4)@l(r3)
#                           Set_Sub_State_Machine(NVM_SUBSTATE_READALL_CHECK_DATA_VALID);
	.d2line		1530
	diab.li		r0,24
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L512
.L517:
#                        }
#                        else
# #endif
#                        {
#                           /* [DD-NVM00247-MGC01-V1] */
#                           Set_Sub_State_Machine(NVM_SUBSTATE_READALL_STANDARD_METHOD);
	.d2line		1536
	diab.li		r0,27
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L512
.L516:
#                        }
#                     }
#                    else
#                    {
#                        /* [DD-NVM00688-MGC01-V1] */
#                        if (TRUE == NvM_Common.NvM_DynConfig)
	.d2line		1542
	lis		r3,(NvM_Common+36)@ha
	lbz		r0,(NvM_Common+36)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L520	# ne
#                        {
#                            if(Is_Conf_Block_Resistant_To_Conf_Change(NvM_Current_Block.block_id))
	.d2line		1544
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,27,27
	se_cmpi		r0,16
	bc		0,2,.L521	# ne
#                            {
#                                /* [DD-NVM00674-MGC01-V1] */
#                                Set_Sub_State_Machine(NVM_SUBSTATE_READALL_STANDARD_METHOD);
	.d2line		1547
	diab.li		r0,27
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L512
.L521:
#                            }
#                            else
#                            {
#                                /* [DD-NVM00249-MGC01-V1] */
#                                Set_Sub_State_Machine(NVM_SUBSTATE_READALL_EXTENDED_METHOD);
	.d2line		1552
	diab.li		r0,2
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L512
.L520:
#                            }
#                        }
#                        else
#                        {
#                            /* [DD-NVM00248-MGC01-V1] */
#                            Set_Sub_State_Machine(NVM_SUBSTATE_READALL_STANDARD_METHOD);
	.d2line		1558
	diab.li		r0,27
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L512
.L515:
#                        }
#                    }
#            }
#            else
#            {
#                /* [DD-NVM00396-MGC01-V1] [DD-NVM00287-MGC01-V1] */
#                Set_Adm_Block_Error_Status (NvM_Current_Block.block_id, (NvM_RequestResultType)NVM_REQ_BLOCK_SKIPPED);
	.d2line		1565
	diab.li		r0,4
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r4,NvM_BlockManagementTable@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,3,13,28
	se_add		r3,r4
	stb		r0,1(r3)
# 
#                tmp_exit=FALSE;
	.d2line		1567
	diab.li		r31,0		# tmp_exit=r31
	b		.L512
.L514:
#            }
#        }
#        else
#        {
#            Set_Sub_State_Machine(NVM_SUBSTATE_MULTIBLOCK_OPERATION_DONE);
	.d2line		1572
	diab.li		r0,10
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L512
.L513:
#        }
#    }
#    return FALSE;
	.d2line		1575
.Llo288:
	diab.li		r3,0
# }
	.d2line		1576
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
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
.L1900:
	.type		NvM_ActSubStateReadAllSelectReadMethod,@function
	.size		NvM_ActSubStateReadAllSelectReadMethod,.-NvM_ActSubStateReadAllSelectReadMethod
# Number of nodes = 280

# Allocations for NvM_ActSubStateReadAllSelectReadMethod
#	?a4		tmp_exit
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateReadAllStandardMethod(void)
	.align		1
	.section	.text_vle
        .d2line         1586,31
#$$ld
.L1906:

#$$bf	NvM_ActSubStateReadAllStandardMethod,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateReadAllStandardMethod:
.Llo289:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing=TRUE;
	.d2line		1588
	diab.li		r31,1		# tmp_stop_processing=r31
# 
#    NvM_ProcessReadingNvBlockStates(&NvM_Current_Block);
	.d2line		1590
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	bl		NvM_ProcessReadingNvBlockStates
# 
#    if(NvM_Current_Block.info.state==NVM_BLOCK_NV_READ_DONE)
	.d2line		1592
	lis		r3,(NvM_Current_Block+12)@ha
	lwz		r0,(NvM_Current_Block+12)@l(r3)
	se_cmpi		r0,7
	bc		0,2,.L535	# ne
#    {
#       tmp_stop_processing=FALSE;
	.d2line		1594
	diab.li		r31,0		# tmp_stop_processing=r31
# 
#       /* [DD-NVM00652-MGC01-V1] [DD-NVM00676-MGC01-V1] */
#       if(    ((NvM_RequestResultType)NVM_REQ_OK == NvM_Current_Block.info.status_err)
	.d2line		1597
	lis		r3,(NvM_Current_Block+24)@ha
	lbz		r0,(NvM_Current_Block+24)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L536	# ne
	lis		r3,(NvM_Current_Block+20)@ha
	lwz		r0,(NvM_Current_Block+20)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L536	# ne
#           && (NVM_DEM_EVENT_E_NO_ERROR == NvM_Current_Block.info.dem_err))
#       {
#          /* [DD-NVM00251-MGC01-V1] */
#          Set_Adm_Block_Attrib_Block_Valid (NvM_Current_Block.block_id,NVM_BLOCK_VALID);
	.d2line		1601
	lis		r5,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r6,4(r3)
	.diab.bseti		r6,1
	lwz		r3,NvM_BlockManagementTable@l(r5)
	se_add		r3,r0
	stw		r6,4(r3)
#          Set_Adm_Block_Attrib_Block_Changed (NvM_Current_Block.block_id,NVM_BLOCK_UNCHANGED);
	.d2line		1602
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r3,4(r3)
	.diab.bclri		r3,2
	lwz		r5,NvM_BlockManagementTable@l(r5)
	se_add		r5,r0
	stw		r3,4(r5)
# 
#          if(Is_Conf_Block_Type_Write_Once(NvM_Current_Block.block_id))
	.d2line		1604
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,28,28
	se_cmpi		r0,8
	bc		0,2,.L537	# ne
#          {
#             /* [DD-NVM00397-MGC01-V1] [DD-NVM00314-MGC01-V1] */
#             Set_Adm_Block_Attrib_Wr_Protection (NvM_Current_Block.block_id, NVM_WR_PROTECTION_ON);
	.d2line		1607
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r0,NvM_BlockManagementTable@l(r4)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r5,(NvM_Current_Block+4)@l(r3)
	rlwinm		r5,r5,3,13,28
	add		r3,r0,r5
	lwz		r0,4(r3)
	.diab.bseti		r0,0
	lwz		r3,NvM_BlockManagementTable@l(r4)
	se_add		r5,r3
	stw		r0,4(r5)
.L537:
#          }
#          /* [DD-NVM00396-MGC01-V1] [DD-NVM00270-MGC01-V1] [DD-NVM00290-MGC01-V1] */
#          /* [DD-NVM00291-MGC01-V1] */
#          Set_Adm_Block_Error_Status (NvM_Current_Block.block_id, NVM_REQ_OK);
	.d2line		1611
	diab.li		r0,0
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r5,NvM_BlockManagementTable@l(r3)
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r4)
	rlwinm		r3,r3,3,13,28
	se_add		r3,r5
	stb		r0,1(r3)
#          /* [DD-NVM00281-MGC01-V1] */
#          NvM_CallSingleBlockCallback (NvM_Current_Block.block_id,NVM_READ_ALL_ID);
	.d2line		1613
	lhz		r3,(NvM_Current_Block+4)@l(r4)
	diab.li		r4,12
	bl		NvM_CallSingleBlockCallback
#          Set_Sub_State_Machine (NVM_SUBSTATE_READALL_SELECT_READ_METHOD);
	.d2line		1614
	diab.li		r0,1
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L535
.L536:
#       }
#       else
#       {
#          /* [DD-NVM00396-MGC01-V1] */
#          Set_Adm_Block_Error_Status(   NvM_Current_Block.block_id,
	.d2line		1619
	lis		r3,(NvM_Current_Block+24)@ha
	lbz		r4,(NvM_Current_Block+24)@l(r3)
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r5,NvM_BlockManagementTable@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r3)
	rlwinm		r0,r0,3,13,28
	se_add		r5,r0
	stb		r4,1(r5)
#                                        NvM_Current_Block.info.status_err);
#          /* Signal production error if it exists */
#          /* [DD-NVM00302-MGC01-V1] */
#          NvM_Call_Dem_ReportErrorStatus(NvM_Current_Block.block_id, NvM_Current_Block.info.dem_err, DEM_EVENT_STATUS_FAILED);
	.d2line		1623
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	lis		r4,(NvM_Current_Block+20)@ha
	lwz		r4,(NvM_Current_Block+20)@l(r4)
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
# 
#          /* [DD-NVM00047-MGC01-V1] [DD-NVM00389-MGC01-V1] [DD-NVM00363-MGC01-V1] */
#          Set_Sub_State_Machine (NVM_SUBSTATE_READALL_RESTORE);
	.d2line		1626
	diab.li		r0,28
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
.L535:
#       }
#    }
#    return tmp_stop_processing;
	.d2line		1629
	rlwinm		r3,r31,0,24,31		# tmp_stop_processing=r31
# }
	.d2line		1630
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo290:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1907:
	.type		NvM_ActSubStateReadAllStandardMethod,@function
	.size		NvM_ActSubStateReadAllStandardMethod,.-NvM_ActSubStateReadAllStandardMethod
# Number of nodes = 184

# Allocations for NvM_ActSubStateReadAllStandardMethod
#	?a4		tmp_stop_processing
# FUNC(void, NVM_CODE) NvM_RestoreDefaultData
	.align		2
	.section	.text_vle
        .d2line         4273,22
#$$ld
.L1913:

#$$bf	NvM_RestoreDefaultData,interprocedural,rasave,nostackparams
	.globl		NvM_RestoreDefaultData
	.d2_cfa_start __cie
NvM_RestoreDefaultData:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	sth		r3,10(r1)
	.d2prologue_end
# (
#    VAR(NvM_BlockIdType,AUTOMATIC) arg_block_id
# )
# {
#    /* [DD-NVM00047-MGC01-V1] [DD-NVM00171-MGC01-V1] [DD-NVM00172-MGC01-V1] [DD-NVM00389-MGC01-V1] */
#    VAR(uint16,AUTOMATIC) tmp_i;
#    P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) Buf_ptr;
# 
#    /* no write protection check */
#    /* [DD-NVM00267-MGC01-V1] [DD-NVM00816-MGC01-V1] [DD-NVM00309-MGC01-V1] */
#    if(Is_Conf_Block_Default_Data(arg_block_id))
	.d2line		4284
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,10(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,36(r3)
	se_cmpi		r0,0
	bc		1,2,.L1114	# eq
#    {
#       /* Restore data from ROM */
#       if ((Is_Conf_Block_Use_Synchmechanism(NvM_Current_Block.block_id)) ||
	.d2line		4287
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,25,25
	cmpi		0,0,r0,64
	bc		1,2,.L1126	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,31,31
	se_cmpi		r0,1
	bc		1,2,.L1126	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	bc		0,2,.L1115	# ne
.L1126:
#           (Is_Conf_Block_Use_Crc(NvM_Current_Block.block_id)) ||
#           (Is_Conf_Block_Static_BlockIdCheck(NvM_Current_Block.block_id)))
#       {
#           Buf_ptr = NvM_Common.NvM_RamMirrorPtr;  /* NvM Mirror is used as the buffer to read data*/
	.d2line		4291
	lis		r3,(NvM_Common+24)@ha
	lwz		r31,(NvM_Common+24)@l(r3)
.Llo297:
	mr		r31,r31		# Buf_ptr=r31 Buf_ptr=r31
	b		.L1116
.L1115:
#       }
#       else
#       {
#           Buf_ptr = NvM_Current_Block.ram_block_ptr;  /* Data is copied directly without buffer usage */
	.d2line		4295
.Llo298:
	lis		r3,(NvM_Current_Block+8)@ha
	lwz		r31,(NvM_Current_Block+8)@l(r3)
.Llo299:
	mr		r31,r31		# Buf_ptr=r31 Buf_ptr=r31
.L1116:
#       }
# 
#       if(Is_Conf_Block_Static_BlockIdCheck(arg_block_id))
	.d2line		4298
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,10(r1)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	bc		0,2,.L1117	# ne
#       {
#          NvM_MemCopy(Buf_ptr, ((P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))&(arg_block_id)), NVM_BLOCK_HEADER_SIZE);
	.d2line		4300
	diab.addi		r4,r1,10
	mr		r3,r31		# Buf_ptr=r3 Buf_ptr=r31
	diab.li		r5,2
	bl		NvM_MemCopy
#          Buf_ptr+=NVM_BLOCK_HEADER_SIZE;
	.d2line		4301
	diab.addi		r3,r31,2		# Buf_ptr=r3 Buf_ptr=r31
	se_addi		r31,2		# Buf_ptr=r31 Buf_ptr=r31
#          for(tmp_i=0; tmp_i<Get_Conf_Block_Length(arg_block_id); tmp_i++)
	.d2line		4302
	diab.li		r3,0		# tmp_i=r3
.L1118:
.Llo291:
	rlwinm		r0,r3,0,16,31		# tmp_i=r3
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r5,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r4,10(r1)
	rlwinm		r4,r4,6,10,25
	se_add		r4,r5
	lhz		r4,20(r4)
	se_cmp		r0,r4
	bc		0,0,.L1121	# ge
#          {
#             NvM_Current_Block.ram_block_ptr[tmp_i]=Get_Conf_Rom_Block_Addr(arg_block_id)[tmp_i];
	.d2line		4304
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r5,10(r1)
	rlwinm		r5,r5,6,10,25
	se_add		r5,r0
	lwz		r5,36(r5)
	rlwinm		r0,r3,0,16,31		# tmp_i=r3
	lbzux		r6,r5,r0
	lis		r5,(NvM_Current_Block+8)@ha
	lwz		r5,(NvM_Current_Block+8)@l(r5)
	stbux		r6,r5,r0
#             *Buf_ptr=Get_Conf_Rom_Block_Addr(arg_block_id)[tmp_i];
	.d2line		4305
	lwz		r5,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r4,10(r1)
	rlwinm		r4,r4,6,10,25
	se_add		r4,r5
	lwz		r4,36(r4)
	lbzx		r0,r4,r0
	stb		r0,0(r31)		# Buf_ptr=r31
#             Buf_ptr++;
	.d2line		4306
	se_addi		r31,1		# Buf_ptr=r31 Buf_ptr=r31
#          }
	.d2line		4307
	diab.addi		r0,r3,1		# tmp_i=r3
	se_addi		r3,1		# tmp_i=r3 tmp_i=r3
	b		.L1118
.L1117:
#       }
# /* PRQA S 310 --
#  * PRQA S 488 -- */
#       else
#       {
#          for(tmp_i=0; tmp_i<Get_Conf_Block_Length(arg_block_id); tmp_i++)
	.d2line		4313
.Llo292:
	diab.li		r3,0		# tmp_i=r3
.L1122:
.Llo293:
	rlwinm		r0,r3,0,16,31		# tmp_i=r3
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r5,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r4,10(r1)
	rlwinm		r4,r4,6,10,25
	se_add		r4,r5
	lhz		r4,20(r4)
	se_cmp		r0,r4
	bc		0,0,.L1121	# ge
#          {
#             NvM_Current_Block.ram_block_ptr[tmp_i]=Get_Conf_Rom_Block_Addr(arg_block_id)[tmp_i];
	.d2line		4315
	lis		r5,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r5)
	lhz		r4,10(r1)
	rlwinm		r4,r4,6,10,25
	se_add		r4,r0
	lwz		r4,36(r4)
	rlwinm		r0,r3,0,16,31		# tmp_i=r3
	lbzux		r6,r4,r0
	lis		r4,(NvM_Current_Block+8)@ha
	lwz		r4,(NvM_Current_Block+8)@l(r4)
	stbux		r6,r4,r0
#             *Buf_ptr=Get_Conf_Rom_Block_Addr(arg_block_id)[tmp_i];
	.d2line		4316
	lwz		r5,(NvM_BlockManagementTable+4)@l(r5)
	lhz		r4,10(r1)
	rlwinm		r4,r4,6,10,25
	se_add		r4,r5
	lwz		r4,36(r4)
	lbzx		r0,r4,r0
	stb		r0,0(r31)		# Buf_ptr=r31
#             Buf_ptr++;
	.d2line		4317
	se_addi		r31,1		# Buf_ptr=r31 Buf_ptr=r31
#          }
	.d2line		4318
	diab.addi		r0,r3,1		# tmp_i=r3
	se_addi		r3,1		# tmp_i=r3 tmp_i=r3
	b		.L1122
.L1121:
#       }
#       /* [DD-NVM00657-MGC03-V1] [DD-NVM00657-MGC04-V1] */
#       /* [DD-NVM00882-MGC03-V1] [DD-NVM00882-MGC04-V1] */
#       NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_RESTORED_FROM_ROM;
	.d2line		4322
.Llo294:
	diab.li		r0,8
	lis		r3,(NvM_Current_Block+24)@ha		# tmp_i=r3
.Llo295:
	stb		r0,(NvM_Current_Block+24)@l(r3)		# tmp_i=r3
	b		.L1113
.L1114:
#    }
#    else
#    {
#       /* Callout restores data (if exists) */
#       NvM_CallBlockInitCallback(arg_block_id);
	.d2line		4327
.Llo296:
	lhz		r3,10(r1)
	bl		NvM_CallBlockInitCallback
.L1113:
#    }
# }
	.d2line		4329
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
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
.L1914:
	.type		NvM_RestoreDefaultData,@function
	.size		NvM_RestoreDefaultData,.-NvM_RestoreDefaultData
# Number of nodes = 283

# Allocations for NvM_RestoreDefaultData
#	SP,10		arg_block_id
#	?a4		tmp_i
#	?a5		Buf_ptr
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateReadAllExtendedMethod(void)
	.align		1
	.section	.text_vle
        .d2line         1641,31
#$$ld
.L1922:

#$$bf	NvM_ActSubStateReadAllExtendedMethod,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateReadAllExtendedMethod:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* [DD-NVM00309-MGC01-V1] */
#     NvM_RestoreDefaultData(NvM_Current_Block.block_id);
	.d2line		1644
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	bl		NvM_RestoreDefaultData
# 
#     Set_Crc_State_Machine(NVM_CALCULATION_CRC_INIT);
	.d2line		1646
	diab.li		r3,0
	lis		r4,(NvM_Data_Crc+4)@ha
	stw		r3,(NvM_Data_Crc+4)@l(r4)
#     Set_Sub_State_Machine(NVM_SUBSTATE_READALL_VALIDATE_DEFAULTS);
	.d2line		1647
	diab.li		r4,25
	lis		r5,NvM_SubStateDbg@ha
	e_add16i		r5,r5,NvM_SubStateDbg@l
	stw		r4,0(r5)
# 
#    return FALSE;
# }
	.d2line		1650
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1923:
	.type		NvM_ActSubStateReadAllExtendedMethod,@function
	.size		NvM_ActSubStateReadAllExtendedMethod,.-NvM_ActSubStateReadAllExtendedMethod
# Number of nodes = 21

# Allocations for NvM_ActSubStateReadAllExtendedMethod
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateReadAllRestore(void)
	.align		1
	.section	.text_vle
        .d2line         1662,31
#$$ld
.L1927:

#$$bf	NvM_ActSubStateReadAllRestore,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateReadAllRestore:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /* [DD-NVM00572-MGC01-V1] */
#    if((Is_Conf_Block_Default_Data(NvM_Current_Block.block_id))
	.d2line		1665
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,36(r3)
	se_cmpi		r0,0
	bc		0,2,.L546	# ne
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,40(r3)
	se_cmpi		r0,0
	bc		1,2,.L544	# eq
.L546:
#     || (Is_Conf_Block_Init_Callback(NvM_Current_Block.block_id)))
#    {
#       /* [DD-NVM00363-MGC01-V1] [DD-NVM00293-MGC01-V1] */
#       /* [DD-NVM00679-MGC01-V1] [DD-NVM00679-MGC02-V1] */
#       NvM_RestoreDefaultData(NvM_Current_Block.block_id);
	.d2line		1670
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	bl		NvM_RestoreDefaultData
# 
#       Set_Crc_State_Machine(NVM_CALCULATION_CRC_INIT);
	.d2line		1672
	diab.li		r0,0
	lis		r3,(NvM_Data_Crc+4)@ha
	stw		r0,(NvM_Data_Crc+4)@l(r3)
#       Set_Sub_State_Machine(NVM_SUBSTATE_READALL_RESTORE_VALIDATE);
	.d2line		1673
	diab.li		r0,29
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L545
.L544:
#    }
#    else
#    {
#       /* [DD-NVM00301-MGC01-V1] */
#       multi_block_err_found=TRUE;
	.d2line		1678
	diab.li		r0,1
	lis		r3,multi_block_err_found@ha
	e_add16i		r3,r3,multi_block_err_found@l
	stb		r0,0(r3)
#       /* [DD-NVM00315-MGC01-V1] [DD-NVM00680-MGC01-V1] */
#       Set_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id,NVM_BLOCK_INVALID);
	.d2line		1680
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r5,NvM_BlockManagementTable@l(r4)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r7,(NvM_Current_Block+4)@l(r3)
	rlwinm		r7,r7,3,13,28
	se_add		r5,r7
	lwz		r0,4(r5)
	.diab.bclri		r0,1
	lwz		r5,NvM_BlockManagementTable@l(r4)
	se_add		r5,r7
	stw		r0,4(r5)
#       Set_Adm_Block_Attrib_Block_Changed(NvM_Current_Block.block_id,NVM_BLOCK_UNCHANGED);
	.d2line		1681
	lwz		r5,NvM_BlockManagementTable@l(r4)
	lhz		r0,(NvM_Current_Block+4)@l(r3)
	rlwinm		r0,r0,3,13,28
	se_add		r5,r0
	lwz		r5,4(r5)
	.diab.bclri		r5,2
	lwz		r6,NvM_BlockManagementTable@l(r4)
	se_add		r6,r0
	stw		r5,4(r6)
#       /* [DD-NVM00396-MGC01-V1] [DD-NVM00281-MGC01-V1] */
#       Set_Adm_Block_Error_Status (NvM_Current_Block.block_id, NvM_Current_Block.info.status_err);
	.d2line		1683
	lis		r5,(NvM_Current_Block+24)@ha
	lbz		r0,(NvM_Current_Block+24)@l(r5)
	lwz		r5,NvM_BlockManagementTable@l(r4)
	lhz		r4,(NvM_Current_Block+4)@l(r3)
	rlwinm		r4,r4,3,13,28
	se_add		r4,r5
	stb		r0,1(r4)
#       NvM_CallSingleBlockCallback (NvM_Current_Block.block_id,NVM_READ_ALL_ID);
	.d2line		1684
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,12
	bl		NvM_CallSingleBlockCallback
#       Set_Sub_State_Machine (NVM_SUBSTATE_READALL_SELECT_READ_METHOD);
	.d2line		1685
	diab.li		r0,1
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
.L545:
#    }
#    return FALSE;
	.d2line		1687
	diab.li		r3,0
# }
	.d2line		1688
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1928:
	.type		NvM_ActSubStateReadAllRestore,@function
	.size		NvM_ActSubStateReadAllRestore,.-NvM_ActSubStateReadAllRestore
# Number of nodes = 134

# Allocations for NvM_ActSubStateReadAllRestore
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateReadAllCheckDataValid(void)
	.align		1
	.section	.text_vle
        .d2line         1727,31
#$$ld
.L1932:

#$$bf	NvM_ActSubStateReadAllCheckDataValid,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateReadAllCheckDataValid:
.Llo300:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing=FALSE;
	.d2line		1729
	diab.li		r31,0		# tmp_stop_processing=r31
#    /* [DD-NVM00362-MGC01-V1] [DD-NVM00333-MGC01-V1] */
#    VAR(NvM_CalculationCrcStateType,AUTOMATIC) tmp_crc_state = NvM_ValidateCrc(&NvM_Current_Block, NVM_NOT_UPDATE_CRC_FIELD,Get_Conf_Ram_Block_Addr(NvM_Current_Block.block_id),TRUE);
	.d2line		1731
	lis		r3,(NvM_BlockManagementTable+4)@ha		# tmp_crc_state=r3
.Llo302:
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# tmp_crc_state=r3
	lis		r3,(NvM_Current_Block+4)@ha		# tmp_crc_state=r3
	lhz		r3,(NvM_Current_Block+4)@l(r3)		# tmp_crc_state=r3 tmp_crc_state=r3
	rlwinm		r3,r3,6,10,25		# tmp_crc_state=r3 tmp_crc_state=r3
	se_add		r3,r0		# tmp_crc_state=r3 tmp_crc_state=r3
	lwz		r5,32(r3)		# tmp_crc_state=r3
	lis		r3,NvM_Current_Block@ha		# tmp_crc_state=r3
	e_add16i		r3,r3,NvM_Current_Block@l		# tmp_crc_state=r3 tmp_crc_state=r3
.Llo303:
	diab.li		r4,1
	diab.li		r6,1
	bl		NvM_ValidateCrc
.Llo304:
	mr		r3,r3		# tmp_crc_state=r3 tmp_crc_state=r3
# 
#    /* crc configured, calculation finished and crc correct*/
#    if(NVM_CALCULATION_CRC_FINISHED_OK == tmp_crc_state)
	.d2line		1734
	se_cmpi		r3,2		# tmp_crc_state=r3
	bc		0,2,.L556	# ne
#    {
#       /* [DD-NVM00251-MGC01-V1] */
#       Set_Adm_Block_Attrib_Block_Valid (NvM_Current_Block.block_id,NVM_BLOCK_VALID);
	.d2line		1737
.Llo305:
	lis		r5,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r5)		# tmp_crc_state=r3
.Llo306:
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0		# tmp_crc_state=r3 tmp_crc_state=r3
	lwz		r6,4(r3)		# tmp_crc_state=r3
	.diab.bseti		r6,1
	lwz		r3,NvM_BlockManagementTable@l(r5)		# tmp_crc_state=r3
	se_add		r3,r0		# tmp_crc_state=r3 tmp_crc_state=r3
	stw		r6,4(r3)		# tmp_crc_state=r3
#       Set_Adm_Block_Attrib_Block_Changed (NvM_Current_Block.block_id,NVM_BLOCK_UNCHANGED);
	.d2line		1738
	lwz		r3,NvM_BlockManagementTable@l(r5)		# tmp_crc_state=r3
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0		# tmp_crc_state=r3 tmp_crc_state=r3
	lwz		r3,4(r3)		# tmp_crc_state=r3 tmp_crc_state=r3
	.diab.bclri		r3,2		# tmp_crc_state=r3
	lwz		r5,NvM_BlockManagementTable@l(r5)
	se_add		r5,r0
	stw		r3,4(r5)		# tmp_crc_state=r3
# 
#       if(Is_Conf_Block_Type_Write_Once(NvM_Current_Block.block_id))
	.d2line		1740
	lis		r3,(NvM_BlockManagementTable+4)@ha		# tmp_crc_state=r3
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)		# tmp_crc_state=r3 tmp_crc_state=r3
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,6,10,25
	se_add		r3,r0		# tmp_crc_state=r3 tmp_crc_state=r3
	lhz		r0,60(r3)		# tmp_crc_state=r3
	rlwinm		r0,r0,0,28,28
	se_cmpi		r0,8
	bc		0,2,.L557	# ne
#       {
#           /* [DD-NVM00397-MGC01-V1] [DD-NVM00314-MGC01-V1] */
#          Set_Adm_Block_Attrib_Wr_Protection (NvM_Current_Block.block_id, NVM_WR_PROTECTION_ON);
	.d2line		1743
.Llo307:
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r0,NvM_BlockManagementTable@l(r4)
	lis		r3,(NvM_Current_Block+4)@ha		# tmp_crc_state=r3
.Llo308:
	lhz		r5,(NvM_Current_Block+4)@l(r3)		# tmp_crc_state=r3
	rlwinm		r5,r5,3,13,28
	add		r3,r0,r5		# tmp_crc_state=r3
	lwz		r0,4(r3)		# tmp_crc_state=r3
	.diab.bseti		r0,0
	lwz		r3,NvM_BlockManagementTable@l(r4)		# tmp_crc_state=r3
	se_add		r5,r3		# tmp_crc_state=r3
	stw		r0,4(r5)
.L557:
#       }
# 
#       /* [DD-NVM00396-MGC01-V1] [DD-NVM00270-MGC01-V1] [DD-NVM00364-MGC01-V1] */
#       /* [DD-NVM00290-MGC01-V1] [DD-NVM00281-MGC01-V1] */
#       Set_Adm_Block_Error_Status (NvM_Current_Block.block_id, NVM_REQ_OK);
	.d2line		1748
.Llo309:
	diab.li		r4,0
	lis		r3,NvM_BlockManagementTable@ha		# tmp_crc_state=r3
.Llo310:
	lwz		r5,NvM_BlockManagementTable@l(r3)		# tmp_crc_state=r3
	lis		r3,(NvM_Current_Block+4)@ha		# tmp_crc_state=r3
	lhz		r0,(NvM_Current_Block+4)@l(r3)		# tmp_crc_state=r3
	rlwinm		r0,r0,3,13,28
	se_add		r5,r0
	stb		r4,1(r5)
#       NvM_CallSingleBlockCallback (NvM_Current_Block.block_id,NVM_READ_ALL_ID);
	.d2line		1749
	lhz		r3,(NvM_Current_Block+4)@l(r3)		# tmp_crc_state=r3 tmp_crc_state=r3
.Llo311:
	diab.li		r4,12
	bl		NvM_CallSingleBlockCallback
#       Set_Sub_State_Machine (NVM_SUBSTATE_READALL_SELECT_READ_METHOD);
	.d2line		1750
	diab.li		r0,1
	lis		r3,NvM_SubStateDbg@ha		# tmp_crc_state=r3
.Llo312:
	e_add16i		r3,r3,NvM_SubStateDbg@l		# tmp_crc_state=r3 tmp_crc_state=r3
	stw		r0,0(r3)		# tmp_crc_state=r3
	b		.L558
.L556:
#    }
#    /* CRC configured, calculation finished and CRC not correct, or CRC not
#     * configured
#     */
#    else if (NVM_CALCULATION_CRC_FINISHED_NOK==tmp_crc_state)
	.d2line		1755
	se_cmpi		r3,3		# tmp_crc_state=r3
	bc		0,2,.L559	# ne
#    {
#       Set_Sub_State_Machine (NVM_SUBSTATE_READALL_STANDARD_METHOD);
	.d2line		1757
.Llo313:
	diab.li		r0,27
	lis		r3,NvM_SubStateDbg@ha		# tmp_crc_state=r3
.Llo314:
	e_add16i		r3,r3,NvM_SubStateDbg@l		# tmp_crc_state=r3 tmp_crc_state=r3
	stw		r0,0(r3)		# tmp_crc_state=r3
	b		.L558
.L559:
#    }
#    /*CRC calculation in progress*/
#    else
#    {
#       tmp_stop_processing=TRUE;
	.d2line		1762
.Llo315:
	diab.li		r31,1		# tmp_stop_processing=r31
.L558:
#    }
# 
#    return tmp_stop_processing;
	.d2line		1765
	rlwinm		r3,r31,0,24,31		# tmp_crc_state=r3 tmp_stop_processing=r31
# }
	.d2line		1766
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo301:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1933:
	.type		NvM_ActSubStateReadAllCheckDataValid,@function
	.size		NvM_ActSubStateReadAllCheckDataValid,.-NvM_ActSubStateReadAllCheckDataValid
# Number of nodes = 155

# Allocations for NvM_ActSubStateReadAllCheckDataValid
#	?a4		tmp_stop_processing
#	?a5		tmp_crc_state
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateReadAllValidateDefaults(void)
	.align		1
	.section	.text_vle
        .d2line         1778,31
#$$ld
.L1941:

#$$bf	NvM_ActSubStateReadAllValidateDefaults,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateReadAllValidateDefaults:
.Llo316:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing=TRUE;
	.d2line		1780
	diab.li		r31,1		# tmp_stop_processing=r31
#    VAR(NvM_CalculationCrcStateType,AUTOMATIC) tmp_crc_state = NvM_ValidateCrc(&NvM_Current_Block,NVM_UPDATE_CRC_FIELD,NvM_Common.NvM_RamMirrorPtr,FALSE);
	.d2line		1781
	lis		r3,(NvM_Common+24)@ha		# tmp_crc_state=r3
.Llo320:
	lwz		r5,(NvM_Common+24)@l(r3)		# tmp_crc_state=r3
	lis		r3,NvM_Current_Block@ha		# tmp_crc_state=r3
	e_add16i		r3,r3,NvM_Current_Block@l		# tmp_crc_state=r3 tmp_crc_state=r3
.Llo321:
	diab.li		r4,0
	diab.li		r6,0
	bl		NvM_ValidateCrc
.Llo322:
	mr		r3,r3		# tmp_crc_state=r3 tmp_crc_state=r3
# 
#    /* CRC configured, calculation finished, or CRC not configured */
#    if(((uint8)0) != ((uint8)(((uint8)tmp_crc_state) & ((uint8)NVM_CALCULATION_CRC_FINISHED_MASK))))
	.d2line		1784
	rlwinm		r3,r3,0,30,30		# tmp_crc_state=r3 tmp_crc_state=r3
	se_cmpi		r3,0		# tmp_crc_state=r3
	bc		1,2,.L566	# eq
#    {
#       /* [DD-NVM00367-MGC01-V1] */
#       Set_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id,NVM_BLOCK_VALID);
	.d2line		1787
.Llo323:
	lis		r5,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r5)		# tmp_crc_state=r3
.Llo324:
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0		# tmp_crc_state=r3 tmp_crc_state=r3
	lwz		r6,4(r3)		# tmp_crc_state=r3
	.diab.bseti		r6,1
	lwz		r3,NvM_BlockManagementTable@l(r5)		# tmp_crc_state=r3
	se_add		r3,r0		# tmp_crc_state=r3 tmp_crc_state=r3
	stw		r6,4(r3)		# tmp_crc_state=r3
#       Set_Adm_Block_Attrib_Block_Changed(NvM_Current_Block.block_id,NVM_BLOCK_CHANGED);
	.d2line		1788
	lwz		r3,NvM_BlockManagementTable@l(r5)		# tmp_crc_state=r3
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0		# tmp_crc_state=r3 tmp_crc_state=r3
	lwz		r3,4(r3)		# tmp_crc_state=r3 tmp_crc_state=r3
	.diab.bseti		r3,2		# tmp_crc_state=r3
	lwz		r5,NvM_BlockManagementTable@l(r5)
	se_add		r5,r0
	stw		r3,4(r5)		# tmp_crc_state=r3
#       if(NvM_Current_Block.block_id!=NVM_BLOCK_1)
	.d2line		1789
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	se_cmpi		r0,1
	bc		1,2,.L567	# eq
#       {
#          /* [DD-NVM00270-MGC01-V1] [DD-NVM00308-MGC01-V1] [DD-NVM00290-MGC01-V1] */
#          /* [DD-NVM00281-MGC01-V1] */
#          Set_Adm_Block_Error_Status (NvM_Current_Block.block_id,(NvM_RequestResultType)NVM_REQ_OK);
	.d2line		1793
.Llo317:
	diab.li		r0,0
	lis		r3,NvM_BlockManagementTable@ha		# tmp_crc_state=r3
.Llo325:
	lwz		r4,NvM_BlockManagementTable@l(r3)		# tmp_crc_state=r3
	lis		r3,(NvM_Current_Block+4)@ha		# tmp_crc_state=r3
	lhz		r3,(NvM_Current_Block+4)@l(r3)		# tmp_crc_state=r3 tmp_crc_state=r3
	rlwinm		r3,r3,3,13,28		# tmp_crc_state=r3 tmp_crc_state=r3
	se_add		r3,r4		# tmp_crc_state=r3 tmp_crc_state=r3
	stb		r0,1(r3)		# tmp_crc_state=r3
.L567:
#       }
#       NvM_CallSingleBlockCallback (NvM_Current_Block.block_id,NVM_READ_ALL_ID);
	.d2line		1795
.Llo326:
	lis		r3,(NvM_Current_Block+4)@ha		# tmp_crc_state=r3
.Llo327:
	lhz		r3,(NvM_Current_Block+4)@l(r3)		# tmp_crc_state=r3 tmp_crc_state=r3
.Llo328:
	diab.li		r4,12
	bl		NvM_CallSingleBlockCallback
#       Set_Sub_State_Machine (NVM_SUBSTATE_READALL_SELECT_READ_METHOD);
	.d2line		1796
	diab.li		r0,1
	lis		r3,NvM_SubStateDbg@ha		# tmp_crc_state=r3
.Llo329:
	e_add16i		r3,r3,NvM_SubStateDbg@l		# tmp_crc_state=r3 tmp_crc_state=r3
	stw		r0,0(r3)		# tmp_crc_state=r3
#       tmp_stop_processing=FALSE;
	.d2line		1797
	diab.li		r31,0		# tmp_stop_processing=r31
.L566:
#    }
#    return tmp_stop_processing;
	.d2line		1799
.Llo318:
	rlwinm		r3,r31,0,24,31		# tmp_crc_state=r3 tmp_stop_processing=r31
# }
	.d2line		1800
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo319:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1942:
	.type		NvM_ActSubStateReadAllValidateDefaults,@function
	.size		NvM_ActSubStateReadAllValidateDefaults,.-NvM_ActSubStateReadAllValidateDefaults
# Number of nodes = 107

# Allocations for NvM_ActSubStateReadAllValidateDefaults
#	?a4		tmp_stop_processing
#	?a5		tmp_crc_state
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateReadAllRestoreValidate(void)
	.align		1
	.section	.text_vle
        .d2line         1812,31
#$$ld
.L1950:

#$$bf	NvM_ActSubStateReadAllRestoreValidate,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateReadAllRestoreValidate:
.Llo330:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) tmp_stop_processing = TRUE;
	.d2line		1814
	diab.li		r31,1		# tmp_stop_processing=r31
#     VAR(NvM_CalculationCrcStateType,AUTOMATIC) tmp_crc_state = NvM_ValidateCrc(&NvM_Current_Block,
	.d2line		1815
	lis		r3,(NvM_Common+24)@ha		# tmp_crc_state=r3
.Llo332:
	lwz		r5,(NvM_Common+24)@l(r3)		# tmp_crc_state=r3
	lis		r3,NvM_Current_Block@ha		# tmp_crc_state=r3
	e_add16i		r3,r3,NvM_Current_Block@l		# tmp_crc_state=r3 tmp_crc_state=r3
.Llo333:
	diab.li		r4,0
	diab.li		r6,0
	bl		NvM_ValidateCrc
.Llo334:
	mr		r3,r3		# tmp_crc_state=r3 tmp_crc_state=r3
#                                                                                NVM_UPDATE_CRC_FIELD,
#                                                                                NvM_Common.NvM_RamMirrorPtr,
#                                                                                FALSE);
# 
#     /* CRC is configured and calculation is finished, or CRC is not configured */
#     if((NVM_CALCULATION_CRC_FINISHED_OK == tmp_crc_state)
	.d2line		1821
	se_cmpi		r3,2		# tmp_crc_state=r3
	bc		1,2,.L572	# eq
	se_cmpi		r3,3		# tmp_crc_state=r3
	bc		0,2,.L571	# ne
.L572:
#      || (NVM_CALCULATION_CRC_FINISHED_NOK == tmp_crc_state))
#     {
#         /* [DD-NVM00367-MGC01-V1] */
#         Set_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id, NVM_BLOCK_VALID);
	.d2line		1825
.Llo335:
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r5,NvM_BlockManagementTable@l(r4)
	lis		r3,(NvM_Current_Block+4)@ha		# tmp_crc_state=r3
.Llo336:
	lhz		r7,(NvM_Current_Block+4)@l(r3)		# tmp_crc_state=r3
	rlwinm		r7,r7,3,13,28
	se_add		r5,r7
	lwz		r0,4(r5)
	.diab.bseti		r0,1
	lwz		r5,NvM_BlockManagementTable@l(r4)
	se_add		r5,r7
	stw		r0,4(r5)
#         Set_Adm_Block_Attrib_Block_Changed(NvM_Current_Block.block_id, NVM_BLOCK_CHANGED);
	.d2line		1826
	lwz		r5,NvM_BlockManagementTable@l(r4)
	lhz		r0,(NvM_Current_Block+4)@l(r3)		# tmp_crc_state=r3
	rlwinm		r0,r0,3,13,28
	se_add		r5,r0
	lwz		r5,4(r5)
	.diab.bseti		r5,2
	lwz		r6,NvM_BlockManagementTable@l(r4)
	se_add		r6,r0
	stw		r5,4(r6)
#         /* [DD-NVM00396-MGC01-V1] [DD-NVM00293-MGC01-V1] [DD-NVM00281-MGC01-V1] */
#         /* [DD-NVM00679-MGC01-V1] [DD-NVM00679-MGC02-V1] */
#         Set_Adm_Block_Error_Status(NvM_Current_Block.block_id, (NvM_RequestResultType)NVM_REQ_RESTORED_FROM_ROM);
	.d2line		1829
	diab.li		r0,8
	lwz		r5,NvM_BlockManagementTable@l(r4)
	lhz		r4,(NvM_Current_Block+4)@l(r3)		# tmp_crc_state=r3
	rlwinm		r4,r4,3,13,28
	se_add		r4,r5
	stb		r0,1(r4)
# 
#         NvM_CallSingleBlockCallback (NvM_Current_Block.block_id, NVM_READ_ALL_ID);
	.d2line		1831
	lhz		r3,(NvM_Current_Block+4)@l(r3)		# tmp_crc_state=r3 tmp_crc_state=r3
.Llo337:
	diab.li		r4,12
	bl		NvM_CallSingleBlockCallback
#         Set_Sub_State_Machine(NVM_SUBSTATE_READALL_SELECT_READ_METHOD);
	.d2line		1832
	diab.li		r0,1
	lis		r3,NvM_SubStateDbg@ha		# tmp_crc_state=r3
.Llo338:
	e_add16i		r3,r3,NvM_SubStateDbg@l		# tmp_crc_state=r3 tmp_crc_state=r3
	stw		r0,0(r3)		# tmp_crc_state=r3
#         tmp_stop_processing = FALSE;
	.d2line		1833
	diab.li		r31,0		# tmp_stop_processing=r31
.L571:
#     }
#     return tmp_stop_processing;
	.d2line		1835
.Llo339:
	rlwinm		r3,r31,0,24,31		# tmp_crc_state=r3 tmp_stop_processing=r31
# }
	.d2line		1836
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo331:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1951:
	.type		NvM_ActSubStateReadAllRestoreValidate,@function
	.size		NvM_ActSubStateReadAllRestoreValidate,.-NvM_ActSubStateReadAllRestoreValidate
# Number of nodes = 98

# Allocations for NvM_ActSubStateReadAllRestoreValidate
#	?a4		tmp_stop_processing
#	?a5		tmp_crc_state
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateWriteAllInit(void)
	.align		1
	.section	.text_vle
        .d2line         1845,31
#$$ld
.L1959:

#$$bf	NvM_ActSubStateWriteAllInit,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateWriteAllInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    multi_block_err_found=FALSE;
	.d2line		1847
	diab.li		r0,0
	lis		r3,multi_block_err_found@ha
	e_add16i		r3,r3,multi_block_err_found@l
	stb		r0,0(r3)
# 
#    if (TRUE == NvM_Common.NvM_DrvModeSwitch)
	.d2line		1849
	lis		r3,(NvM_Common+35)@ha
	lbz		r0,(NvM_Common+35)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L576	# ne
#    {
#       MemIf_SetMode(MEMIF_MODE_FAST); /* [DD-NVM00430-MGC01-V1] */
	.d2line		1851
	diab.li		r3,1
	bl		Ea_SetMode
.L576:
#    }
#     /* PRQA S 1431 ++
#    * since the enum typedef NvM_ServiceIdType is defined in NvM_I.h and which is not
#    * accessible by BswM.c file we directly used unit8
#    */
#    /* [DD-NVM00745-MGC01-V1] */
#    if(TRUE == NvM_Common.NvM_BswMMultiBlk)
	.d2line		1858
	lis		r3,(NvM_Common+34)@ha
	lbz		r0,(NvM_Common+34)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L577	# ne
#    {
#        NvM_Common.NvM_BswMJobModeCallback(NvM_Current_Block.service_id, Get_Adm_Block_Error_Status(NVM_BLOCK_0));
	.d2line		1860
	lis		r3,(NvM_Common+16)@ha
	lwz		r0,(NvM_Common+16)@l(r3)
	mtspr		ctr,r0
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	lbz		r4,1(r3)
	lis		r3,NvM_Current_Block@ha
	lwz		r3,NvM_Current_Block@l(r3)
	rlwinm		r3,r3,0,24,31
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L577:
#    }
#    /* PRQA S 1431 -- */
#    Set_Sub_State_Machine(NVM_SUBSTATE_WRITEALL_FIND_BLOCK);
	.d2line		1863
	diab.li		r3,4
	lis		r4,NvM_SubStateDbg@ha
	e_add16i		r4,r4,NvM_SubStateDbg@l
	stw		r3,0(r4)
#    return FALSE;
	.d2line		1864
	diab.li		r3,0
# }
	.d2line		1865
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1960:
	.type		NvM_ActSubStateWriteAllInit,@function
	.size		NvM_ActSubStateWriteAllInit,.-NvM_ActSubStateWriteAllInit
# Number of nodes = 49

# Allocations for NvM_ActSubStateWriteAllInit
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateWriteAllFindBlock(void)
	.align		1
	.section	.text_vle
        .d2line         1908,31
#$$ld
.L1964:

#$$bf	NvM_ActSubStateWriteAllFindBlock,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateWriteAllFindBlock:
.Llo340:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_exit=FALSE;
	.d2line		1910
	diab.li		r31,0		# tmp_exit=r31
# 
#    NvM_Current_Block.info.state=NVM_BLOCK_NV_WRITE_PREINIT;
	.d2line		1912
	diab.li		r0,8
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
.L581:
# 
#    while(FALSE==tmp_exit)
	.d2line		1914
	rlwinm		r31,r31,0,24,31		# tmp_exit=r31 tmp_exit=r31
	se_cmpi		r31,0		# tmp_exit=r31
	bc		0,2,.L582	# ne
#    {
#       tmp_exit=TRUE;
	.d2line		1916
.Llo341:
	diab.li		r31,1		# tmp_exit=r31
#       /*
#        * In write all Process the NV blocks are written in the reverse order to ensure
#        * that the block containing the configuration ID is always written at the end of all block writes.
#        */
#       NvM_Current_Block.block_id--;
	.d2line		1921
.Llo342:
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,65535
	se_add		r0,r4
	sth		r0,(NvM_Current_Block+4)@l(r3)
#       if(NvM_Current_Block.block_id > NVM_BLOCK_0)
	.d2line		1922
	e_and2i.		r0,65535
	bc		0,1,.L583	# le
#       {
#          /* [DD-NVM00252-MGC01-V1] */
#          if(Is_Conf_Block_WriteAll(NvM_Current_Block.block_id))
	.d2line		1925
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,24,24
	cmpi		0,0,r0,128
	bc		0,2,.L584	# ne
#          {
#             if(TRUE==req_cancel_write_all)
	.d2line		1927
	lis		r3,req_cancel_write_all@ha
	lbz		r0,req_cancel_write_all@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L585	# ne
#             {
#                /* [DD-NVM00238-MGC01-V1] */
#                Set_Sub_State_Machine (NVM_SUBSTATE_WRITEALL_CANCELED);
	.d2line		1930
	diab.li		r0,5
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L581
.L585:
#             }
#             /* [DD-NVM00751-MGC01-V1] [DD-NVM00753-MGC01-V1] [DD-NVM00750-MGC01-V1] */
#             else if(!(Is_Adm_Block_Attrib_Block_LockStatus(NvM_Current_Block.block_id)))
	.d2line		1933
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r0,NvM_BlockManagementTable@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,3,13,28
	se_add		r3,r0
	lwz		r0,4(r3)
	se_btsti		r0,3
	bc		0,2,.L587	# ne
#             {
#                /* [DD-NVM00018-MGC01-V1] [DD-NVM00252-MGC01-V1] */
#                if(Is_Conf_Block_Permanent(NvM_Current_Block.block_id)
	.d2line		1936
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,32(r3)
	se_cmpi		r0,0
	bc		1,2,.L588	# eq
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r0,NvM_BlockManagementTable@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,3,13,28
	se_add		r3,r0
	lwz		r0,4(r3)
	se_btsti		r0,0
	bc		0,2,.L588	# ne
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,2
	bc		0,2,.L595	# ne
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r4,NvM_BlockManagementTable@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r0,3,13,28
	lbzx		r4,r4,r3
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r0,6,10,25
	se_add		r3,r0
	lbz		r0,16(r3)
	se_cmp		r4,r0
	bc		0,0,.L588	# ge
.L595:
#                   /* [DD-NVM00375-MGC01-V1] [DD-NVM00432-MGC01-V1] [DD-NVM00433-MGC01-V1] */
#                   /* [DD-NVM00434-MGC01-V1] */
#                 &&(!Is_Adm_Block_Attrib_Wr_Protection(NvM_Current_Block.block_id))
#                     /* [DD-NVM00339-MGC01-V1] */
#                 && ((!Is_Conf_Block_Type_Dataset(NvM_Current_Block.block_id))
#                   || Is_Adm_Dataset_Idx_Points_To_Nv(NvM_Current_Block.block_id)
#                    )
#                  )
#                {
# #if (NVM_SET_RAM_BLOCK_STATUS_API == STD_ON)
#                   /* [DD-NVM00344-MGC01-V1] [DD-NVM00682-MGC01-V1] */
#                   if((!Is_Conf_Block_Use_Set_RamBlock_Status(NvM_Current_Block.block_id))
	.d2line		1948
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,18,18
	cmpi		0,0,r0,8192
	bc		0,2,.L596	# ne
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,18,18
	cmpi		0,0,r0,8192
	bc		0,2,.L589	# ne
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r0,NvM_BlockManagementTable@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,3,13,28
	se_add		r3,r0
	lwz		r0,4(r3)
	rlwinm		r0,r0,0,1,2
	e_lis		r3,24576
	se_cmpl		r0,r3
	bc		0,2,.L589	# ne
.L596:
#                     || (Is_Conf_Block_Use_Set_RamBlock_Status(NvM_Current_Block.block_id)
#                       && Is_Adm_Block_Attrib_Block_Changed(NvM_Current_Block.block_id)
#                       && Is_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id)
#                        )
#                      )
# #endif
#                   {
#                      NvM_Current_Block.ram_block_ptr = Get_Conf_Ram_Block_Addr(NvM_Current_Block.block_id);
	.d2line		1956
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r4)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,32(r3)
	lis		r3,(NvM_Current_Block+8)@ha
	stw		r0,(NvM_Current_Block+8)@l(r3)
# 
#                      /* [DD-NVM00549-MGC01-V1] */
#                      Set_Adm_Block_Error_Status (NvM_Current_Block.block_id,
	.d2line		1959
	diab.li		r0,2
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r5,NvM_BlockManagementTable@l(r3)
	lhz		r3,(NvM_Current_Block+4)@l(r4)
	rlwinm		r3,r3,3,13,28
	se_add		r3,r5
	stb		r0,1(r3)
#                                                  (NvM_RequestResultType)NVM_REQ_PENDING);
# 
#                      NvM_Call_Dem_ReportErrorStatus_AllPassed(NvM_Current_Block.block_id);
	.d2line		1962
	lhz		r3,(NvM_Current_Block+4)@l(r4)
	bl		NvM_Call_Dem_ReportErrorStatus_AllPassed
# 
#                      Set_Sub_State_Machine(NVM_SUBSTATE_WRITEALL_WRITING);
	.d2line		1964
	diab.li		r0,30
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L581
.L589:
#                   }
# #if (NVM_SET_RAM_BLOCK_STATUS_API == STD_ON)
#                   else
#                   {
#                      /* [DD-NVM00396-MGC01-V1] [DD-NVM00298-MGC01-V2] */
#                      Set_Adm_Block_Error_Status(NvM_Current_Block.block_id,
	.d2line		1970
	diab.li		r0,4
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r4,NvM_BlockManagementTable@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,3,13,28
	se_add		r3,r4
	stb		r0,1(r3)
#                                                 (NvM_RequestResultType)NVM_REQ_BLOCK_SKIPPED);
#                      tmp_exit=FALSE;
	.d2line		1972
	diab.li		r31,0		# tmp_exit=r31
	b		.L581
.L588:
#                   }
# #endif
#                }
#                else
#                {
#                   /* [DD-NVM00396-MGC01-V1] [DD-NVM00434-MGC01-V1] [DD-NVM00298-MGC01-V2] */
#                   Set_Adm_Block_Error_Status(NvM_Current_Block.block_id,
	.d2line		1979
	diab.li		r0,4
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r4,NvM_BlockManagementTable@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,3,13,28
	se_add		r3,r4
	stb		r0,1(r3)
#                                              (NvM_RequestResultType)NVM_REQ_BLOCK_SKIPPED);
#                   tmp_exit=FALSE;
	.d2line		1981
	diab.li		r31,0		# tmp_exit=r31
	b		.L581
.L587:
#                }
#             }
#             else
#             {
#                /* [DD-NVM00396-MGC01-V1] [DD-NVM00750-MGC01-V1] [DD-NVM00298-MGC01-V2] */
#                Set_Adm_Block_Error_Status(NvM_Current_Block.block_id,
	.d2line		1987
	diab.li		r0,4
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r4,NvM_BlockManagementTable@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,3,13,28
	se_add		r3,r4
	stb		r0,1(r3)
#                                           (NvM_RequestResultType)NVM_REQ_BLOCK_SKIPPED);
#                tmp_exit=FALSE;
	.d2line		1989
	diab.li		r31,0		# tmp_exit=r31
	b		.L581
.L584:
#             }
#          }
#          /* [DD-NVM-0252-MGC03-V1] */
#          else
#          {
#             /* [DD-NVM00396-MGC01-V1] [DD-NVM00298-MGC01-V2] */
#             Set_Adm_Block_Error_Status(NvM_Current_Block.block_id,
	.d2line		1996
	diab.li		r0,4
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r4,NvM_BlockManagementTable@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,3,13,28
	se_add		r3,r4
	stb		r0,1(r3)
#                                        (NvM_RequestResultType)NVM_REQ_BLOCK_SKIPPED);
#             tmp_exit=FALSE;
	.d2line		1998
	diab.li		r31,0		# tmp_exit=r31
	b		.L581
.L583:
#          }
#       }
#       else
#       {
#          Set_Sub_State_Machine(NVM_SUBSTATE_MULTIBLOCK_OPERATION_DONE);
	.d2line		2003
	diab.li		r0,10
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L581
.L582:
#       }
#    }
#    return FALSE;
	.d2line		2006
.Llo343:
	diab.li		r3,0
# }
	.d2line		2007
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
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
.L1965:
	.type		NvM_ActSubStateWriteAllFindBlock,@function
	.size		NvM_ActSubStateWriteAllFindBlock,.-NvM_ActSubStateWriteAllFindBlock
# Number of nodes = 391

# Allocations for NvM_ActSubStateWriteAllFindBlock
#	?a4		tmp_exit
# static FUNC(boolean,NVM_CODE) NvM_ActBlockNvWriteInit
	.align		1
	.section	.text_vle
        .d2line         3394,31
#$$ld
.L1971:

#$$bf	NvM_ActBlockNvWriteInit,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.d2_cfa_start __cie
NvM_ActBlockNvWriteInit:
.Llo344:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	.d2prologue_end
# (
#    P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block
# )
# {
#    VAR(uint32, AUTOMATIC) tmp_crc = 0U;
	.d2line		3399
.Llo345:
	diab.li		r0,0
.Llo346:
	stw		r0,12(r1)
#    VAR(uint16, AUTOMATIC) tmp_crc16 = 0U;
	.d2line		3400
	sth		r0,8(r1)
#    /* [DD-NVM00338-MGC01-V1] [DD-NVM00339-MGC01-V1] */
#    arg_block->info.dataset = Get_Adm_Block_Dataset_Idx_U16(arg_block->block_id);
	.d2line		3402
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	lhz		r5,4(r31)		# arg_block=r31
	rlwinm		r4,r5,3,13,28
	lbzx		r3,r3,r4
	sth		r3,16(r31)		# arg_block=r31
#    arg_block->info.status_err = (NvM_RequestResultType)NVM_REQ_OK;
	.d2line		3403
	stb		r0,24(r31)		# arg_block=r31
#    arg_block->info.dem_err = NVM_DEM_EVENT_E_NO_ERROR;
	.d2line		3404
	stw		r0,20(r31)		# arg_block=r31
# 
#    if( Is_Conf_Block_Type_Native(arg_block->block_id)
	.d2line		3406
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r5,r5,6,10,25
	se_add		r5,r0
	lwz		r0,12(r5)
	se_cmpi		r0,0
	bc		1,2,.L878	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,1
	bc		0,2,.L870	# ne
.L878:
#        || Is_Conf_Block_Type_Redundant(arg_block->block_id))
#    {
#       arg_block->info.dataset = NVM_REDUNDANT_FIRST_BLOCK;
	.d2line		3409
	diab.li		r0,0
	sth		r0,16(r31)		# arg_block=r31
.L870:
#    }
#    /* [DD-NVM00168-MGC01-V1] */
#    NvM_Counter_Wr_Retries[NVM_REDUNDANT_FIRST_BLOCK] = NvM_BlockManagementTable.BlockDescriptorPtr[arg_block->block_id].NvM_MaxNoOfWriteRetry;
	.d2line		3412
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lbz		r0,27(r3)
	lis		r3,NvM_Counter_Wr_Retries@ha
	e_add16i		r3,r3,NvM_Counter_Wr_Retries@l
	stb		r0,0(r3)
#    NvM_Counter_Wr_Retries[NVM_REDUNDANT_SECOND_BLOCK] = NvM_BlockManagementTable.BlockDescriptorPtr[arg_block->block_id].NvM_MaxNoOfWriteRetry;
	.d2line		3413
	lwz		r0,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lbz		r0,27(r3)
	lis		r3,(NvM_Counter_Wr_Retries+1)@ha
	stb		r0,(NvM_Counter_Wr_Retries+1)@l(r3)
#    if(Is_Conf_Block_Static_BlockIdCheck(arg_block->block_id))
	.d2line		3414
	lwz		r0,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	bc		0,2,.L871	# ne
#    {
#       /* PRQA S 310 ++
#        * MISRA RULE C109 VIOLATION:
#        * Casting of address to uint8 is needed to store the static block ID and avoid unaligned access
#        */
#        /* [DD-NVM00523-MGC01-V1] */
#        NvM_MemCopy(NvM_Common.NvM_RamMirrorPtr, ((P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))&(arg_block->block_id)), NVM_BLOCK_HEADER_SIZE);
	.d2line		3421
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
	diab.addi		r4,r31,4		# arg_block=r31
	diab.li		r5,2
	bl		NvM_MemCopy
.L871:
#    }
# 
#    /* PRQA S 488 ++
#     * MISRA RULE C181 VIOLATION:
#     * Pointer arithmetic - needed for access of crc data in block
#     */
#    if(NVM_CRC16 == Get_Conf_NvM_BlockCrcType(arg_block->block_id))
	.d2line		3428
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r0,4(r31)		# arg_block=r31
	rlwinm		r0,r0,6,10,25
	lwzx		r0,r3,r0
	se_cmpi		r0,1
	bc		0,2,.L872	# ne
#    {
#      /*
#       * The entire 32 bit data is copied into the temporary CRC location to avoid errors on big endian systems.
#       * The CRC is then truncated based on the CRC type configured
#       */
#       NvM_MemCopy(((P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))&tmp_crc), (P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))(&(NvM_Common.NvM_BlockCRCPtr[arg_block->block_id])), NVM_CRC32_FIELD_SIZE);
	.d2line		3434
	lis		r3,(NvM_Common+20)@ha
	lwz		r4,(NvM_Common+20)@l(r3)
	lhz		r0,4(r31)		# arg_block=r31
	rlwinm		r0,r0,2,14,29
	se_add		r4,r0
	diab.addi		r3,r1,12
	diab.li		r5,4
	bl		NvM_MemCopy
#       tmp_crc16 = (VAR(uint16, AUTOMATIC))tmp_crc;
	.d2line		3435
	lwz		r0,12(r1)
	sth		r0,8(r1)
#       NvM_MemCopy((NvM_Common.NvM_RamMirrorPtr + Get_Conf_Block_Data_Length(arg_block->block_id)), (P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))&tmp_crc16, NVM_CRC16_FIELD_SIZE);
	.d2line		3436
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	diab.li		r3,2
	isel		r3,r3,r0,2
.L879:
	diab.li		r0,0
	isel		r0,r3,r0,2
.L880:
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r5,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r4,4(r31)		# arg_block=r31
	rlwinm		r4,r4,6,10,25
	se_add		r4,r5
	lhz		r4,20(r4)
	se_add		r4,r0
	rlwinm		r0,r4,0,16,31
	se_add		r3,r0
	diab.addi		r4,r1,8
	diab.li		r5,2
	bl		NvM_MemCopy
	b		.L873
.L872:
#    }
#    else if(NVM_CRC32 == Get_Conf_NvM_BlockCrcType(arg_block->block_id))
	.d2line		3438
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r0,4(r31)		# arg_block=r31
	rlwinm		r0,r0,6,10,25
	lwzx		r0,r3,r0
	se_cmpi		r0,2
	bc		0,2,.L874	# ne
#    {
#       NvM_MemCopy((NvM_Common.NvM_RamMirrorPtr + Get_Conf_Block_Data_Length(arg_block->block_id)), (P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))(&(NvM_Common.NvM_BlockCRCPtr[arg_block->block_id])), NVM_CRC32_FIELD_SIZE);
	.d2line		3440
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	diab.li		r3,2
	isel		r3,r3,r0,2
.L881:
	diab.li		r0,0
	isel		r5,r3,r0,2
.L882:
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r0,4(r31)		# arg_block=r31
	rlwinm		r6,r0,6,10,25
	se_add		r4,r6
	lhz		r4,20(r4)
	se_add		r4,r5
	rlwinm		r4,r4,0,16,31
	se_add		r3,r4
	lis		r4,(NvM_Common+20)@ha
	lwz		r4,(NvM_Common+20)@l(r4)
	rlwinm		r0,r0,2,14,29
	se_add		r4,r0
	diab.li		r5,4
	bl		NvM_MemCopy
	b		.L873
.L874:
#    }
#    else if(NVM_CRC8 == Get_Conf_NvM_BlockCrcType(arg_block->block_id))
	.d2line		3442
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r0,4(r31)		# arg_block=r31
	rlwinm		r0,r0,6,10,25
	lwzx		r0,r3,r0
	se_cmpi		r0,0
	bc		0,2,.L873	# ne
#    {
#       NvM_MemCopy(((P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))&tmp_crc), (P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))(&(NvM_Common.NvM_BlockCRCPtr[arg_block->block_id])), NVM_CRC32_FIELD_SIZE);
	.d2line		3444
	lis		r3,(NvM_Common+20)@ha
	lwz		r4,(NvM_Common+20)@l(r3)
	lhz		r0,4(r31)		# arg_block=r31
	rlwinm		r0,r0,2,14,29
	se_add		r4,r0
	diab.addi		r3,r1,12
	diab.li		r5,4
	bl		NvM_MemCopy
#       *(NvM_Common.NvM_RamMirrorPtr + Get_Conf_Block_Data_Length(arg_block->block_id)) = (VAR(uint8, AUTOMATIC))tmp_crc;
	.d2line		3445
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	diab.li		r3,2
	isel		r3,r3,r0,2
.L883:
	diab.li		r0,0
	isel		r0,r3,r0,2
.L884:
	lwz		r5,12(r1)
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r6,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r4,4(r31)		# arg_block=r31
	rlwinm		r4,r4,6,10,25
	se_add		r4,r6
	lhz		r4,20(r4)
	se_add		r4,r0
	rlwinm		r0,r4,0,16,31
	stbx		r5,r3,r0
.L873:
#    }
#    else
#    {
#       /*nothing*/
#    }
#    /* PRQA S 488 -- */
#    /* PRQA S 310 -- */
#    /* [DD-NVM00253-MGC01-V1] [DD-NVM00334-MGC01-V1] */
#    Set_Crc_State_Machine(NVM_CALCULATION_CRC_INIT); /* [DD-NVM00212-MGC01-V1] */
	.d2line		3454
	diab.li		r3,0
	lis		r4,(NvM_Data_Crc+4)@ha
	stw		r3,(NvM_Data_Crc+4)@l(r4)
#    arg_block->info.state = NVM_BLOCK_NV_WRITE_VALIDATE;
	.d2line		3455
	diab.li		r4,11
	stw		r4,12(r31)		# arg_block=r31
#    return FALSE;
# }
	.d2line		3457
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo347:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1972:
	.type		NvM_ActBlockNvWriteInit,@function
	.size		NvM_ActBlockNvWriteInit,.-NvM_ActBlockNvWriteInit
# Number of nodes = 456

# Allocations for NvM_ActBlockNvWriteInit
#	?a4		arg_block
#	?a5		$$21
#	?a6		$$20
#	?a7		$$19
#	SP,12		tmp_crc
#	SP,8		tmp_crc16
# static FUNC(boolean,NVM_CODE) NvM_ActBlockNvWritePreInit
	.align		1
	.section	.text_vle
        .d2line         3468,31
#$$ld
.L1979:

#$$bf	NvM_ActBlockNvWritePreInit,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActBlockNvWritePreInit:
.Llo348:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo352:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# tmp_stop_processing=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	.d2prologue_end
# (
#    P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block
# )
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing=TRUE;
	.d2line		3473
.Llo349:
	diab.li		r0,1		# tmp_stop_processing=r0
#    VAR(Std_ReturnType,AUTOMATIC) tmp_result=E_NOT_OK;
#    arg_block->info.dataset = Get_Adm_Block_Dataset_Idx_U16(arg_block->block_id); /* [DD-NVM00339-MGC01-V1] */
	.d2line		3475
.Llo350:
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	lhz		r0,4(r31)		# tmp_stop_processing=r0 arg_block=r31
.Llo353:
	rlwinm		r4,r0,3,13,28		# tmp_stop_processing=r0
	lbzx		r3,r3,r4
	sth		r3,16(r31)		# arg_block=r31
#    arg_block->info.status_err = (NvM_RequestResultType)NVM_REQ_OK;
	.d2line		3476
	diab.li		r3,0
	stb		r3,24(r31)		# arg_block=r31
#    arg_block->info.dem_err = NVM_DEM_EVENT_E_NO_ERROR;
	.d2line		3477
	stw		r3,20(r31)		# arg_block=r31
# 
#    if(Is_Conf_Block_Use_Synchmechanism(arg_block->block_id))
	.d2line		3479
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r0,6,10,25		# tmp_stop_processing=r0 tmp_stop_processing=r0
	se_add		r3,r0		# tmp_stop_processing=r0
	lhz		r0,60(r3)		# tmp_stop_processing=r0
	rlwinm		r0,r0,0,25,25		# tmp_stop_processing=r0 tmp_stop_processing=r0
	cmpi		0,0,r0,64		# tmp_stop_processing=r0
	bc		0,2,.L898	# ne
#    {
#       /* [DD-NVM00515-MGC01-V1] [DD-NVM00539-MGC01-V2] [DD-NVM00018-MGC02-V1] */
#       /* [DD-NVM00252-MGC02-V1] */
#       tmp_result = NvM_BlockManagementTable.BlockDescriptorPtr[arg_block->block_id].NvMWriteRamBlockToNvCallback(NvM_Common.NvM_RamMirrorPtr);
	.d2line		3483
.Llo354:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# tmp_stop_processing=r0
.Llo355:
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0		# tmp_stop_processing=r0
	lwz		r0,52(r3)		# tmp_stop_processing=r0
.Llo356:
	mtspr		ctr,r0		# tmp_stop_processing=ctr
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo370:
	mr		r3,r3		# tmp_result=r3 tmp_result=r3
#       if(E_OK == tmp_result)
	.d2line		3484
	rlwinm		r3,r3,0,24,31		# tmp_result=r3 tmp_result=r3
	se_cmpi		r3,0		# tmp_result=r3
	bc		0,2,.L899	# ne
#       {
#          NvM_BlockMirrorError = FALSE;
	.d2line		3486
.Llo371:
	diab.li		r0,0		# tmp_stop_processing=r0
.Llo357:
	lis		r3,NvM_BlockMirrorError@ha		# tmp_result=r3
.Llo372:
	e_add16i		r3,r3,NvM_BlockMirrorError@l		# tmp_result=r3 tmp_result=r3
	stb		r0,0(r3)		# tmp_result=r3 tmp_stop_processing=r0
#          arg_block->info.state = NVM_BLOCK_NV_WRITE_INIT;
	.d2line		3487
	diab.li		r3,9		# tmp_result=r3
	stw		r3,12(r31)		# arg_block=r31 tmp_result=r3
#          tmp_stop_processing = FALSE;
	.d2line		3488
	diab.li		r3,0		# tmp_result=r3
.Llo373:
	b		.L903
.L899:
#       }
#       else
#       {
#          if(NvM_WriteRepeatMirrorCount == NvM_Common.NvM_RptMirrorCnt)
	.d2line		3492
.Llo358:
	lis		r3,NvM_WriteRepeatMirrorCount@ha		# tmp_result=r3
.Llo374:
	lbz		r0,NvM_WriteRepeatMirrorCount@l(r3)		# tmp_stop_processing=r0 tmp_result=r3
.Llo359:
	lis		r3,(NvM_Common+33)@ha		# tmp_result=r3
	lbz		r3,(NvM_Common+33)@l(r3)		# tmp_result=r3 tmp_result=r3
	se_cmp		r0,r3		# tmp_stop_processing=r0 tmp_result=r3
	bc		0,2,.L901	# ne
#          {
#             /* [DD-NVM00837-MGC01-V1] [DD-NVM00579-MGC01-V1] */
#             NvM_BlockMirrorError = TRUE;
	.d2line		3495
.Llo360:
	diab.li		r0,1		# tmp_stop_processing=r0
.Llo361:
	lis		r3,NvM_BlockMirrorError@ha		# tmp_result=r3
.Llo375:
	e_add16i		r3,r3,NvM_BlockMirrorError@l		# tmp_result=r3 tmp_result=r3
	stb		r0,0(r3)		# tmp_result=r3 tmp_stop_processing=r0
#             arg_block->info.state =NVM_BLOCK_NV_WRITE_DONE;
	.d2line		3496
	diab.li		r3,16		# tmp_result=r3
	stw		r3,12(r31)		# arg_block=r31 tmp_result=r3
#             arg_block->info.status_err = (NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		3497
	stb		r0,24(r31)		# arg_block=r31 tmp_stop_processing=r0
#             arg_block->info.dem_err = NVM_DEM_EVENT_E_REQ_FAILED;
	.d2line		3498
	diab.li		r3,2		# tmp_result=r3
	stw		r3,20(r31)		# arg_block=r31 tmp_result=r3
#             tmp_stop_processing = TRUE;
	.d2line		3499
	diab.li		r3,1		# tmp_result=r3
.Llo376:
	b		.L903
.L901:
#          }
#          else
#          {
#             /* [DD-NVM00840-MGC01-V1] */
#             arg_block->info.state = NVM_BLOCK_NV_WRITE_PREINIT;
	.d2line		3504
.Llo362:
	diab.li		r0,8		# tmp_stop_processing=r0
.Llo363:
	stw		r0,12(r31)		# arg_block=r31 tmp_stop_processing=r0
#             NvM_WriteRepeatMirrorCount++;
	.d2line		3505
	lis		r3,NvM_WriteRepeatMirrorCount@ha		# tmp_result=r3
.Llo377:
	lbz		r3,NvM_WriteRepeatMirrorCount@l(r3)		# tmp_result=r3 tmp_result=r3
	diab.addi		r0,r3,1		# tmp_stop_processing=r0 tmp_result=r3
	lis		r3,NvM_WriteRepeatMirrorCount@ha		# tmp_result=r3
	e_add16i		r3,r3,NvM_WriteRepeatMirrorCount@l		# tmp_result=r3 tmp_result=r3
	stb		r0,0(r3)		# tmp_result=r3 tmp_stop_processing=r0
#             tmp_stop_processing = FALSE;
	.d2line		3506
	diab.li		r3,0		# tmp_stop_processing=r3
.Llo378:
	b		.L903
.L898:
#          }
#       }
#    }
#    else
#    {
#       if ((Is_Conf_Block_Use_Crc(arg_block->block_id))||(Is_Conf_Block_Static_BlockIdCheck(arg_block->block_id)))
	.d2line		3512
.Llo364:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# tmp_stop_processing=r0
.Llo365:
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0		# tmp_stop_processing=r0
	lhz		r0,60(r3)		# tmp_stop_processing=r0
	rlwinm		r0,r0,0,31,31		# tmp_stop_processing=r0 tmp_stop_processing=r0
	se_cmpi		r0,1		# tmp_stop_processing=r0
	bc		1,2,.L905	# eq
.Llo366:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# tmp_stop_processing=r0
.Llo367:
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0		# tmp_stop_processing=r0
	lhz		r0,60(r3)		# tmp_stop_processing=r0
	rlwinm		r0,r0,0,22,22		# tmp_stop_processing=r0 tmp_stop_processing=r0
	cmpi		0,0,r0,512		# tmp_stop_processing=r0
	bc		0,2,.L904	# ne
.L905:
#       {
#           /* only if above condition is true. Else data is directly copied from RAM */
#           NvM_CopyRamToRamMirror(arg_block);
	.d2line		3515
.Llo368:
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_CopyRamToRamMirror
.L904:
#       }
#       arg_block->info.state = NVM_BLOCK_NV_WRITE_INIT;
	.d2line		3517
	diab.li		r0,9		# tmp_stop_processing=r0
.Llo369:
	stw		r0,12(r31)		# arg_block=r31 tmp_stop_processing=r0
#       tmp_stop_processing = FALSE;
	.d2line		3518
	diab.li		r3,0		# tmp_stop_processing=r3
.L903:
#    }
# 
#    return tmp_stop_processing;
	.d2line		3521
.Llo351:
	rlwinm		r3,r3,0,24,31		# tmp_stop_processing=r3 tmp_stop_processing=r3
# }
	.d2line		3522
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# tmp_stop_processing=r0
	mtspr		lr,r0		# tmp_stop_processing=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1980:
	.type		NvM_ActBlockNvWritePreInit,@function
	.size		NvM_ActBlockNvWritePreInit,.-NvM_ActBlockNvWritePreInit
# Number of nodes = 203

# Allocations for NvM_ActBlockNvWritePreInit
#	?a4		arg_block
#	?a5		tmp_stop_processing
#	?a6		tmp_result
# static FUNC(boolean,NVM_CODE) NvM_ActBlockNvWriteVerification
	.align		1
	.section	.text_vle
        .d2line         3532,31
#$$ld
.L1989:

#$$bf	NvM_ActBlockNvWriteVerification,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActBlockNvWriteVerification:
.Llo379:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	.d2prologue_end
# (
#    P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block
# )
# {
#    NvM_CompareData.ram_buf_ptr = NvM_Common.NvM_WriteVfyBuffPtr;
	.d2line		3537
.Llo380:
	lis		r3,(NvM_Common+28)@ha
.Llo381:
	lwz		r0,(NvM_Common+28)@l(r3)
	lis		r3,(NvM_CompareData+12)@ha
	stw		r0,(NvM_CompareData+12)@l(r3)
#    if(NvM_CompareData.NvM_DataLengthToRead > NvM_BlockManagementTable.BlockDescriptorPtr[arg_block->block_id].NvM_WriteVerificationDataSize)
	.d2line		3538
	lis		r3,(NvM_CompareData+2)@ha
	lhz		r0,(NvM_CompareData+2)@l(r3)
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r4
	lhz		r3,28(r3)
	se_cmp		r0,r3
	bc		0,1,.L913	# le
#    {
#       if(E_OK == MemIf_Read( /* [DD-NVM00038-MGC01-V1] */
	.d2line		3540
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r4,4(r31)		# arg_block=r31
	rlwinm		r4,r4,6,10,25
	se_add		r4,r0
	lhz		r0,22(r4)
	lis		r3,(NvM_Common+32)@ha
	lbz		r3,(NvM_Common+32)@l(r3)
	slw		r0,r0,r3
	lhz		r3,16(r31)		# arg_block=r31
	se_add		r0,r3
	rlwinm		r3,r0,0,16,31
	lhz		r6,28(r4)
	lis		r4,(NvM_CompareData+4)@ha
	lhz		r4,(NvM_CompareData+4)@l(r4)
	lis		r5,(NvM_CompareData+12)@ha
	lwz		r5,(NvM_CompareData+12)@l(r5)
	bl		Ea_Read
	e_andi.		r3,r3,255
	bc		0,2,.L914	# ne
#             Get_Conf_Device_Index(arg_block->block_id),
#             /* [DD-NVM00343-MGC01-V1] [DD-NVM00123-MGC01-V1] */
#             Get_Block_Number(arg_block->block_id,arg_block->info.dataset),
#             /* [DD-NVM00141-MGC01-V1] */
#             NvM_CompareData.NvM_ReadDataOffset,
#             NvM_CompareData.ram_buf_ptr,
#             NvM_BlockManagementTable.BlockDescriptorPtr[arg_block->block_id].NvM_WriteVerificationDataSize)
#          )
#       {
#          arg_block->info.state = NVM_BLOCK_NV_WRITE_VERIFICATION_IN_PROGRESS;
	.d2line		3550
	diab.li		r0,15
	stw		r0,12(r31)		# arg_block=r31
#          NvM_CompareData.NvM_DataLengthToRead -= NvM_BlockManagementTable.BlockDescriptorPtr[arg_block->block_id].NvM_WriteVerificationDataSize;
	.d2line		3551
	lis		r5,(NvM_CompareData+2)@ha
	lhz		r0,(NvM_CompareData+2)@l(r5)
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r6,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r4,4(r31)		# arg_block=r31
	rlwinm		r4,r4,6,10,25
	se_add		r4,r6
	lhz		r4,28(r4)
	subf		r4,r4,r0
	sth		r4,(NvM_CompareData+2)@l(r5)
#          NvM_CompareData.NvM_DataLengthToCompare = NvM_BlockManagementTable.BlockDescriptorPtr[arg_block->block_id].NvM_WriteVerificationDataSize;
	.d2line		3552
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r0,4(r31)		# arg_block=r31
	rlwinm		r0,r0,6,10,25
	se_add		r3,r0
	lhz		r0,28(r3)
	lis		r3,NvM_CompareData@ha
	e_add16i		r3,r3,NvM_CompareData@l
	sth		r0,0(r3)
	b		.L916
.L914:
#       }
#       else
#       {
#           /* [DD-NVM00528-MGC01-V1] */
#           NvM_Call_Dem_ReportErrorStatus(arg_block->block_id, NVM_DEM_EVENT_E_VERIFY_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		3557
	lhz		r3,4(r31)		# arg_block=r31
	diab.li		r4,5
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
#           /* [DD-NVM00530-MGC01-V1] */
#           arg_block->info.state = NVM_BLOCK_NV_WRITE_PROCESS_ERR;
	.d2line		3559
	diab.li		r0,12
	stw		r0,12(r31)		# arg_block=r31
	b		.L916
.L913:
#       }
#    }
#    else /* Read at once */
#    {
#       if(E_OK == MemIf_Read( /* [DD-NVM00038-MGC01-V1] */
	.d2line		3564
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,22(r3)
	lis		r3,(NvM_Common+32)@ha
	lbz		r3,(NvM_Common+32)@l(r3)
	slw		r0,r0,r3
	lhz		r3,16(r31)		# arg_block=r31
	se_add		r0,r3
	rlwinm		r3,r0,0,16,31
	lis		r4,(NvM_CompareData+4)@ha
	lhz		r4,(NvM_CompareData+4)@l(r4)
	lis		r5,(NvM_CompareData+2)@ha
	lhz		r6,(NvM_CompareData+2)@l(r5)
	lis		r5,(NvM_CompareData+12)@ha
	lwz		r5,(NvM_CompareData+12)@l(r5)
	bl		Ea_Read
	e_andi.		r3,r3,255
	bc		0,2,.L917	# ne
#             Get_Conf_Device_Index(arg_block->block_id),
#             /* [DD-NVM00343-MGC01-V1] [DD-NVM00123-MGC01-V1] */
#             Get_Block_Number(arg_block->block_id,arg_block->info.dataset),
#             NvM_CompareData.NvM_ReadDataOffset,
#             NvM_CompareData.ram_buf_ptr,
#             NvM_CompareData.NvM_DataLengthToRead)
#          )
#       {
#          arg_block->info.state = NVM_BLOCK_NV_WRITE_VERIFICATION_IN_PROGRESS;
	.d2line		3573
	diab.li		r0,15
	stw		r0,12(r31)		# arg_block=r31
#          NvM_CompareData.NvM_DataLengthToCompare = NvM_CompareData.NvM_DataLengthToRead;
	.d2line		3574
	lis		r3,(NvM_CompareData+2)@ha
	lhz		r0,(NvM_CompareData+2)@l(r3)
	lis		r4,NvM_CompareData@ha
	e_add16i		r4,r4,NvM_CompareData@l
	sth		r0,0(r4)
#          NvM_CompareData.NvM_DataLengthToRead = (uint16)0U;
	.d2line		3575
	diab.li		r0,0
	sth		r0,(NvM_CompareData+2)@l(r3)
	b		.L916
.L917:
#       }
#       else
#       {
#           /* [DD-NVM00528-MGC01-V1] */
#           NvM_Call_Dem_ReportErrorStatus(arg_block->block_id, NVM_DEM_EVENT_E_VERIFY_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		3580
	lhz		r3,4(r31)		# arg_block=r31
	diab.li		r4,5
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
#           /* [DD-NVM00530-MGC01-V1] */
#           arg_block->info.state = NVM_BLOCK_NV_WRITE_PROCESS_ERR;
	.d2line		3582
	diab.li		r0,12
	stw		r0,12(r31)		# arg_block=r31
.L916:
#       }
#    }
#    return FALSE;
	.d2line		3585
.Llo382:
	diab.li		r3,0
# }
	.d2line		3586
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
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
.L1990:
	.type		NvM_ActBlockNvWriteVerification,@function
	.size		NvM_ActBlockNvWriteVerification,.-NvM_ActBlockNvWriteVerification
# Number of nodes = 267

# Allocations for NvM_ActBlockNvWriteVerification
#	?a4		arg_block
# static FUNC(Std_ReturnType,NVM_CODE) NvM_ActBlockNvCompareData
	.align		1
	.section	.text_vle
        .d2line         3651,38
#$$ld
.L1995:

#$$bf	NvM_ActBlockNvCompareData,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.d2_cfa_start __cie
NvM_ActBlockNvCompareData:
.Llo383:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# arg_block=r5 arg_block=r3
.Llo384:
	mr		r6,r4		# CompareData_ptr=r6 CompareData_ptr=r4
	.d2prologue_end
# (
#    P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block,
#    P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) CompareData_ptr
# )
# {
#    VAR(Std_ReturnType,AUTOMATIC) Compare_result=E_OK;
	.d2line		3657
.Llo385:
	diab.li		r3,0		# Compare_result=r3
#    VAR(uint16,AUTOMATIC) index;
#    P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) Block_Ram_ptr;
#    P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) temp_ram_ptr;
# 
#    if (   (Is_Conf_Block_Use_Synchmechanism(arg_block->block_id))
	.d2line		3662
.Llo392:
	lis		r4,(NvM_BlockManagementTable+4)@ha
.Llo391:
	lwz		r0,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r4,4(r5)		# arg_block=r5
	rlwinm		r4,r4,6,10,25
	se_add		r4,r0
	lhz		r0,60(r4)
	rlwinm		r0,r0,0,25,25
	cmpi		0,0,r0,64
	bc		1,2,.L947	# eq
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r4,4(r5)		# arg_block=r5
	rlwinm		r4,r4,6,10,25
	se_add		r4,r0
	lhz		r0,60(r4)
	rlwinm		r0,r0,0,31,31
	se_cmpi		r0,1
	bc		1,2,.L947	# eq
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r4,4(r5)		# arg_block=r5
	rlwinm		r4,r4,6,10,25
	se_add		r4,r0
	lhz		r0,60(r4)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	bc		0,2,.L939	# ne
.L947:
#        || (Is_Conf_Block_Use_Crc(arg_block->block_id))
#        || (Is_Conf_Block_Static_BlockIdCheck(arg_block->block_id)))
#    {
#        /* NvM Mirror contains the original data */
#        Block_Ram_ptr = NvM_Common.NvM_RamMirrorPtr + NvM_CompareData.NvM_ReadDataOffset;
	.d2line		3667
.Llo386:
	lis		r4,(NvM_Common+24)@ha
	lwz		r5,(NvM_Common+24)@l(r4)		# arg_block=r5
.Llo387:
	lis		r4,(NvM_CompareData+4)@ha
	lhz		r0,(NvM_CompareData+4)@l(r4)
	se_add		r0,r5		# arg_block=r5
.Llo396:
	mr		r5,r0		# Block_Ram_ptr=r5 Block_Ram_ptr=r0
.Llo388:
	b		.L940
.L939:
#    }
#    else
#    {
#        /* Data was copied directly to RAM */
#        Block_Ram_ptr = arg_block->ram_block_ptr + NvM_CompareData.NvM_ReadDataOffset;
	.d2line		3672
.Llo389:
	lwz		r5,8(r5)		# arg_block=r5 arg_block=r5
	lis		r4,(NvM_CompareData+4)@ha
	lhz		r0,(NvM_CompareData+4)@l(r4)
	se_add		r0,r5		# arg_block=r5
.Llo397:
	mr		r5,r0		# Block_Ram_ptr=r5 Block_Ram_ptr=r0
.L940:
#    }
# 
#    temp_ram_ptr = CompareData_ptr;
	.d2line		3675
.Llo390:
	mr		r6,r6		# temp_ram_ptr=r6 temp_ram_ptr=r6
#    for (index = (uint16)0U; index < NvM_CompareData.NvM_DataLengthToCompare; index++)
	.d2line		3676
.Llo398:
	diab.li		r4,0		# index=r4
.L941:
.Llo394:
	rlwinm		r0,r4,0,16,31		# index=r4
	lis		r7,NvM_CompareData@ha
	lhz		r7,NvM_CompareData@l(r7)
	se_cmp		r0,r7
	bc		0,0,.L945	# ge
#    {
#       if(*temp_ram_ptr != (*(P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))Block_Ram_ptr) )
	.d2line		3678
	lbz		r7,0(r6)		# temp_ram_ptr=r6
	lbz		r0,0(r5)		# Block_Ram_ptr=r5
	se_cmp		r7,r0
	bc		1,2,.L944	# eq
#       {
#          Compare_result = E_NOT_OK;
	.d2line		3680
	diab.li		r3,1		# Compare_result=r3
	b		.L945
.L944:
#          break;
#       }
#       else
#       {
#          temp_ram_ptr++;
	.d2line		3685
	se_addi		r6,1		# temp_ram_ptr=r6 temp_ram_ptr=r6
#          Block_Ram_ptr++;
	.d2line		3686
	se_addi		r5,1		# Block_Ram_ptr=r5 Block_Ram_ptr=r5
#       }
#    }
	.d2line		3688
	diab.addi		r0,r4,1		# index=r4
	se_addi		r4,1		# index=r4 index=r4
	b		.L941
.L945:
# 
#    return Compare_result;
	.d2line		3690
.Llo395:
	rlwinm		r3,r3,0,24,31		# Compare_result=r3 Compare_result=r3
# }
	.d2line		3691
	.d2epilogue_begin
.Llo393:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1996:
	.type		NvM_ActBlockNvCompareData,@function
	.size		NvM_ActBlockNvCompareData,.-NvM_ActBlockNvCompareData
# Number of nodes = 127

# Allocations for NvM_ActBlockNvCompareData
#	?a4		arg_block
#	?a5		CompareData_ptr
#	?a6		Compare_result
#	?a7		index
#	?a8		Block_Ram_ptr
#	?a9		temp_ram_ptr
# static FUNC(boolean,NVM_CODE) NvM_ActBlockNvWriteVerifyInProgress
	.align		1
	.section	.text_vle
        .d2line         3589,31
#$$ld
.L2010:

#$$bf	NvM_ActBlockNvWriteVerifyInProgress,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActBlockNvWriteVerifyInProgress:
.Llo399:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	.d2prologue_end
# (
#    P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block
# )
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing =TRUE;
	.d2line		3594
	diab.li		r30,1		# tmp_stop_processing=r30
#    VAR(MemIf_JobResultType,AUTOMATIC) tmp_result;
# 
# #if (NVM_POLLING_MODE==STD_ON)
#    /* [DD-NVM00346-MGC01-V1] */
#    if(MEMIF_IDLE == MemIf_GetStatus(Get_Conf_Device_Index(arg_block->block_id)))
# #else
#    if(MEMIF_IDLE == NvM_MemIf_Driver_Status)
	.d2line		3601
	lis		r3,NvM_MemIf_Driver_Status@ha
.Llo400:
	lwz		r0,NvM_MemIf_Driver_Status@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L924	# ne
# #endif
#    {
#       tmp_result=MemIf_GetJobResult(Get_Conf_Device_Index(arg_block->block_id));
	.d2line		3604
.Llo401:
	bl		Ea_GetJobResult
	.d2line		3605
	mr.		r0,r3		# tmp_result=?a6 tmp_result=r3
#       if(MEMIF_JOB_OK == tmp_result)
	bc		0,2,.L925	# ne
#       {
#          if(E_OK == NvM_ActBlockNvCompareData(arg_block,NvM_CompareData.ram_buf_ptr))
	.d2line		3607
.Llo403:
	lis		r3,(NvM_CompareData+12)@ha
	lwz		r4,(NvM_CompareData+12)@l(r3)
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_ActBlockNvCompareData
	e_andi.		r3,r3,255
	bc		0,2,.L926	# ne
#          {
#             if((uint16)0U == NvM_CompareData.NvM_DataLengthToRead)
	.d2line		3609
	lis		r3,(NvM_CompareData+2)@ha
	lhz		r0,(NvM_CompareData+2)@l(r3)		# tmp_result=r0
.Llo413:
	se_cmpi		r0,0		# tmp_result=r0
	bc		0,2,.L927	# ne
#             {
#                 if(  Is_Conf_Block_Type_Redundant (arg_block->block_id)
	.d2line		3611
.Llo414:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# tmp_result=r0
.Llo415:
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0		# tmp_result=r0
	lwz		r0,12(r3)		# tmp_result=r0
	se_cmpi		r0,1		# tmp_result=r0
	bc		0,2,.L928	# ne
.Llo416:
	lhz		r0,16(r31)		# tmp_result=r0 arg_block=r31
.Llo417:
	se_cmpi		r0,0		# tmp_result=r0
	bc		0,2,.L928	# ne
#                      &&(NVM_REDUNDANT_FIRST_BLOCK == arg_block->info.dataset))
#                 {
#                    NvM_WriteFirstBlockWasSuccess = TRUE;
	.d2line		3614
.Llo418:
	diab.li		r0,1		# tmp_result=r0
.Llo419:
	lis		r3,NvM_WriteFirstBlockWasSuccess@ha
	e_add16i		r3,r3,NvM_WriteFirstBlockWasSuccess@l
	stb		r0,0(r3)		# tmp_result=r0
#                    arg_block->info.dataset = NVM_REDUNDANT_SECOND_BLOCK;
	.d2line		3615
	sth		r0,16(r31)		# arg_block=r31 tmp_result=r0
#                    arg_block->info.state = NVM_BLOCK_NV_WRITE_START_WRITE;
	.d2line		3616
	diab.li		r0,13		# tmp_result=r0
	stw		r0,12(r31)		# arg_block=r31 tmp_result=r0
#                    tmp_stop_processing = FALSE;
	.d2line		3617
	diab.li		r30,0		# tmp_stop_processing=r30
.Llo404:
	b		.L924
.L928:
#                 }
#                 else
#                 {
#                     tmp_stop_processing = TRUE;
	.d2line		3621
.Llo405:
	diab.li		r30,1		# tmp_stop_processing=r30
#                     arg_block->info.state = NVM_BLOCK_NV_WRITE_DONE; /*Completed write and write verification*/
	.d2line		3622
.Llo406:
	diab.li		r0,16		# tmp_result=r0
.Llo420:
	stw		r0,12(r31)		# arg_block=r31 tmp_result=r0
	b		.L924
.L927:
#                 }
#             }
#             else
#             {
#                arg_block->info.state = NVM_BLOCK_NV_WRITE_VERIFICATION;
	.d2line		3627
.Llo407:
	diab.li		r0,14		# tmp_result=r0
.Llo421:
	stw		r0,12(r31)		# arg_block=r31 tmp_result=r0
#                NvM_CompareData.NvM_ReadDataOffset += NvM_CompareData.NvM_DataLengthToCompare;
	.d2line		3628
	lis		r3,(NvM_CompareData+4)@ha
	lhz		r0,(NvM_CompareData+4)@l(r3)		# tmp_result=r0
	lis		r4,NvM_CompareData@ha
	lhz		r4,NvM_CompareData@l(r4)
	se_add		r0,r4		# tmp_result=r0 tmp_result=r0
	sth		r0,(NvM_CompareData+4)@l(r3)		# tmp_result=r0
#                tmp_stop_processing =FALSE;
	.d2line		3629
	diab.li		r30,0		# tmp_stop_processing=r30
.Llo408:
	b		.L924
.L926:
#             }
#          }
#          else
#          {
#             tmp_stop_processing =FALSE;
	.d2line		3634
.Llo409:
	diab.li		r30,0		# tmp_stop_processing=r30
#             /* [DD-NVM00528-MGC01-V1] */
#             NvM_Call_Dem_ReportErrorStatus(arg_block->block_id, NVM_DEM_EVENT_E_VERIFY_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		3636
.Llo410:
	lhz		r3,4(r31)		# arg_block=r31
	diab.li		r4,5
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
# 
#             arg_block->info.state = NVM_BLOCK_NV_WRITE_PROCESS_ERR;  /*Write Retry*/
	.d2line		3638
	diab.li		r0,12		# tmp_result=r0
.Llo422:
	stw		r0,12(r31)		# arg_block=r31 tmp_result=r0
	b		.L924
.L925:
#          }
#       }
#       else
#       {
#          arg_block->info.state = NVM_BLOCK_NV_WRITE_PROCESS_ERR;
	.d2line		3643
.Llo411:
	diab.li		r0,12		# tmp_result=r0
.Llo423:
	stw		r0,12(r31)		# arg_block=r31 tmp_result=r0
#          tmp_stop_processing = FALSE;
	.d2line		3644
	diab.li		r30,0		# tmp_stop_processing=r30
.L924:
#       }
#    }
#    return tmp_stop_processing;
	.d2line		3647
.Llo402:
	rlwinm		r3,r30,0,24,31		# tmp_stop_processing=r30
# }
	.d2line		3648
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo412:
	lwz		r0,36(r1)		# tmp_result=r0
	mtspr		lr,r0		# tmp_result=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2011:
	.type		NvM_ActBlockNvWriteVerifyInProgress,@function
	.size		NvM_ActBlockNvWriteVerifyInProgress,.-NvM_ActBlockNvWriteVerifyInProgress
# Number of nodes = 140

# Allocations for NvM_ActBlockNvWriteVerifyInProgress
#	?a4		arg_block
#	?a5		tmp_stop_processing
#	?a6		tmp_result
# static FUNC(boolean,NVM_CODE) NvM_ActBlockNvWriteInProgress
	.align		1
	.section	.text_vle
        .d2line         3705,31
#$$ld
.L2020:

#$$bf	NvM_ActBlockNvWriteInProgress,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActBlockNvWriteInProgress:
.Llo424:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	.d2prologue_end
# (
#    P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block
# )
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing = TRUE;
	.d2line		3710
	diab.li		r4,1		# tmp_stop_processing=r4
#    VAR(MemIf_JobResultType,AUTOMATIC) tmp_result;
# 
# #if (NVM_POLLING_MODE==STD_ON)
#    /* [DD-NVM00346-MGC01-V1] */
#    if(MEMIF_IDLE == MemIf_GetStatus(Get_Conf_Device_Index(arg_block->block_id)))
# #else
#    if(MEMIF_IDLE==NvM_MemIf_Driver_Status)
	.d2line		3717
.Llo428:
	lis		r3,NvM_MemIf_Driver_Status@ha
.Llo425:
	lwz		r0,NvM_MemIf_Driver_Status@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L955	# ne
# #endif
#    {
#       tmp_result=MemIf_GetJobResult(Get_Conf_Device_Index(arg_block->block_id));
	.d2line		3720
.Llo426:
	bl		Ea_GetJobResult
	.d2line		3721
	mr.		r0,r3		# tmp_result=?a8 tmp_result=r3
#       if(MEMIF_JOB_OK == tmp_result)
	bc		0,2,.L956	# ne
#       {
#          if(Is_Conf_Block_Write_Verification(arg_block->block_id))
	.d2line		3723
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# tmp_result=r0
.Llo442:
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0		# tmp_result=r0
	lhz		r0,60(r3)		# tmp_result=r0
	rlwinm		r0,r0,0,23,23		# tmp_result=r0 tmp_result=r0
	cmpi		0,0,r0,256		# tmp_result=r0
	bc		0,2,.L957	# ne
#          {
#             NvM_CompareData.NvM_DataLengthToRead = Get_Conf_Block_Length_Total(arg_block->block_id);
	.d2line		3725
.Llo443:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# tmp_result=r0
.Llo444:
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0		# tmp_result=r0
	lhz		r0,60(r3)		# tmp_result=r0
	rlwinm		r0,r0,0,22,22		# tmp_result=r0 tmp_result=r0
	cmpi		0,0,r0,512		# tmp_result=r0
	diab.li		r3,2
	isel		r3,r3,r0,2		# tmp_result=r0
.L962:
.Llo445:
	diab.li		r0,0		# tmp_result=r0
.Llo446:
	isel		r0,r3,r0,2		# tmp_result=r0 tmp_result=r0
.L963:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)		# tmp_stop_processing=r4
.Llo429:
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r4		# tmp_stop_processing=r4
	lhz		r3,60(r3)
	rlwinm		r3,r3,0,31,31
	se_cmpi		r3,1
	bc		0,2,.L964	# ne
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r5,4(r31)		# arg_block=r31
	rlwinm		r5,r5,6,10,25
	lwzx		r3,r3,r5
	se_cmpi		r3,2
	bc		0,2,.L966	# ne
.Llo430:
	diab.li		r4,4		# tmp_stop_processing=r4
.Llo431:
	b		.L965
.L966:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r5,4(r31)		# arg_block=r31
	rlwinm		r5,r5,6,10,25
	lwzx		r3,r3,r5
	se_cmpi		r3,1
	diab.li		r3,2
	isel		r3,r3,r4,2		# tmp_stop_processing=r4
.L968:
.Llo432:
	diab.li		r4,1		# tmp_stop_processing=r4
.Llo433:
	isel		r4,r3,r4,2		# tmp_stop_processing=r4 tmp_stop_processing=r4
	b		.L965
.L964:
.Llo434:
	diab.li		r4,0		# tmp_stop_processing=r4
.L965:
.Llo435:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r5,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r5
	lhz		r3,20(r3)
	se_add		r3,r0		# tmp_result=r0
	se_add		r4,r3		# tmp_stop_processing=r4 tmp_stop_processing=r4
	lis		r3,(NvM_CompareData+2)@ha
	sth		r4,(NvM_CompareData+2)@l(r3)		# tmp_stop_processing=r4
#             NvM_CompareData.NvM_ReadDataOffset = (uint16)0U;
	.d2line		3726
	diab.li		r4,0		# tmp_stop_processing=r4
	lis		r3,(NvM_CompareData+4)@ha
	sth		r4,(NvM_CompareData+4)@l(r3)		# tmp_stop_processing=r4
#             arg_block->info.state = NVM_BLOCK_NV_WRITE_VERIFICATION;
	.d2line		3727
	diab.li		r0,14		# tmp_result=r0
	stw		r0,12(r31)		# arg_block=r31 tmp_result=r0
#             tmp_stop_processing = FALSE;
	.d2line		3728
	b		.L955
.L957:
#          }
#          else
#          {
#            if(  Is_Conf_Block_Type_Redundant (arg_block->block_id)
	.d2line		3732
.Llo436:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r0,4(r31)		# tmp_result=r0 arg_block=r31
.Llo447:
	rlwinm		r0,r0,6,10,25		# tmp_result=r0 tmp_result=r0
	se_add		r3,r0		# tmp_result=r0
	lwz		r0,12(r3)		# tmp_result=r0
	se_cmpi		r0,1		# tmp_result=r0
	bc		0,2,.L959	# ne
.Llo448:
	lhz		r0,16(r31)		# tmp_result=r0 arg_block=r31
.Llo449:
	se_cmpi		r0,0		# tmp_result=r0
	bc		0,2,.L959	# ne
#                 &&(NVM_REDUNDANT_FIRST_BLOCK == arg_block->info.dataset))
#            {
#               NvM_WriteFirstBlockWasSuccess = TRUE;
	.d2line		3735
.Llo450:
	diab.li		r0,1		# tmp_result=r0
.Llo451:
	lis		r3,NvM_WriteFirstBlockWasSuccess@ha
	e_add16i		r3,r3,NvM_WriteFirstBlockWasSuccess@l
	stb		r0,0(r3)		# tmp_result=r0
#               /* [DD-NVM00760-MGC01-V1] [DD-NVM00762-MGC01-V1] */
#               arg_block->info.dataset = NVM_REDUNDANT_SECOND_BLOCK;
	.d2line		3737
	sth		r0,16(r31)		# arg_block=r31 tmp_result=r0
#               arg_block->info.state = NVM_BLOCK_NV_WRITE_START_WRITE;
	.d2line		3738
	diab.li		r0,13		# tmp_result=r0
	stw		r0,12(r31)		# arg_block=r31 tmp_result=r0
#               tmp_stop_processing = FALSE;
	.d2line		3739
	diab.li		r4,0		# tmp_stop_processing=r4
.Llo437:
	b		.L955
.L959:
#            }
#            else
#            {
#              arg_block->info.state = NVM_BLOCK_NV_WRITE_DONE;
	.d2line		3743
.Llo438:
	diab.li		r0,16		# tmp_result=r0
.Llo452:
	stw		r0,12(r31)		# arg_block=r31 tmp_result=r0
#              tmp_stop_processing = TRUE;
	.d2line		3744
	diab.li		r4,1		# tmp_stop_processing=r4
.Llo439:
	b		.L955
.L956:
#            }
#          }
#       }
#       else
#       {
#          arg_block->info.state= NVM_BLOCK_NV_WRITE_PROCESS_ERR;
	.d2line		3750
.Llo440:
	diab.li		r0,12		# tmp_result=r0
.Llo453:
	stw		r0,12(r31)		# arg_block=r31 tmp_result=r0
#          tmp_stop_processing = FALSE;
	.d2line		3751
	diab.li		r4,0		# tmp_stop_processing=r4
.L955:
#       }
#    }
#    return tmp_stop_processing;
	.d2line		3754
.Llo427:
	rlwinm		r3,r4,0,24,31		# tmp_stop_processing=r4
# }
	.d2line		3755
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# tmp_result=r0
	mtspr		lr,r0		# tmp_result=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo441:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2021:
	.type		NvM_ActBlockNvWriteInProgress,@function
	.size		NvM_ActBlockNvWriteInProgress,.-NvM_ActBlockNvWriteInProgress
# Number of nodes = 238

# Allocations for NvM_ActBlockNvWriteInProgress
#	?a4		arg_block
#	?a5		$$23
#	?a6		$$22
#	?a7		tmp_stop_processing
#	?a8		tmp_result
# static FUNC(boolean,NVM_CODE) NvM_ActBlockNvWriteValidate
	.align		1
	.section	.text_vle
        .d2line         3764,31
#$$ld
.L2030:

#$$bf	NvM_ActBlockNvWriteValidate,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActBlockNvWriteValidate:
.Llo454:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r30,r3		# arg_block=r30 arg_block=r3
	.d2prologue_end
# (
#    P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block
# )
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing=TRUE;
	.d2line		3769
.Llo455:
	diab.li		r31,1		# tmp_stop_processing=r31
#    VAR(NvM_CalculationCrcStateType,AUTOMATIC) tmp_crc_state = NvM_ValidateCrc(arg_block,NVM_UPDATE_CRC_FIELD,NvM_Common.NvM_RamMirrorPtr,FALSE);
	.d2line		3770
.Llo456:
	lis		r3,(NvM_Common+24)@ha
	lwz		r5,(NvM_Common+24)@l(r3)
	mr		r3,r30		# arg_block=r3 arg_block=r30
	diab.li		r4,0
	diab.li		r6,0
	bl		NvM_ValidateCrc
.Llo459:
	mr		r3,r3		# tmp_crc_state=r3 tmp_crc_state=r3
# 
#    /* CRC configured, calculation finished, or CRC not configured */
#    if(0U!=(((uint8)tmp_crc_state) & NVM_CALCULATION_CRC_FINISHED_MASK))
	.d2line		3773
	mr		r3,r3		# tmp_crc_state=r3 tmp_crc_state=r3
.Llo460:
	rlwinm		r3,r3,0,24,31
	se_btsti		r3,30
	bc		1,2,.L981	# eq
#    {
#       /* [DD-NVM00303-MGC01-V1] [DD-NVM00303-MGC02-V1] */
#       Set_Adm_Block_Attrib_Block_Valid(arg_block->block_id,NVM_BLOCK_VALID);
	.d2line		3776
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r4)
	lhz		r0,4(r30)		# arg_block=r30
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r3,4(r3)
	.diab.bseti		r3,1
	lwz		r4,NvM_BlockManagementTable@l(r4)
	se_add		r4,r0
	stw		r3,4(r4)
#       arg_block->info.state = NVM_BLOCK_NV_WRITE_START_WRITE;
	.d2line		3777
	diab.li		r0,13
	stw		r0,12(r30)		# arg_block=r30
#       NvM_WriteFirstBlockWasSuccess = FALSE;
	.d2line		3778
	diab.li		r31,0		# tmp_stop_processing=r31
	lis		r3,NvM_WriteFirstBlockWasSuccess@ha
	e_add16i		r3,r3,NvM_WriteFirstBlockWasSuccess@l
	stb		r31,0(r3)		# tmp_stop_processing=r31
#       tmp_stop_processing = FALSE;
.L981:
#    }
#    return tmp_stop_processing;
	.d2line		3781
.Llo457:
	rlwinm		r3,r31,0,24,31		# tmp_stop_processing=r31
# }
	.d2line		3782
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo458:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2031:
	.type		NvM_ActBlockNvWriteValidate,@function
	.size		NvM_ActBlockNvWriteValidate,.-NvM_ActBlockNvWriteValidate
# Number of nodes = 57

# Allocations for NvM_ActBlockNvWriteValidate
#	?a4		arg_block
#	?a5		tmp_stop_processing
#	?a6		tmp_crc_state
# static FUNC(boolean,NVM_CODE) NvM_ActBlockNvWriteProcessErr
	.align		1
	.section	.text_vle
        .d2line         3792,31
#$$ld
.L2040:

#$$bf	NvM_ActBlockNvWriteProcessErr,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr,ctr
	.d2_cfa_start __cie
NvM_ActBlockNvWriteProcessErr:
.Llo461:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	.d2prologue_end
# (
#    P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block
# )
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing =FALSE;
	.d2line		3797
.Llo462:
	diab.li		r4,0		# tmp_stop_processing=r4
# 
#    arg_block->info.state = NVM_BLOCK_NV_WRITE_START_WRITE;
	.d2line		3799
.Llo463:
	diab.li		r0,13
	stw		r0,12(r31)		# arg_block=r31
# 
#    if(Is_Conf_Block_Type_Redundant (arg_block->block_id))
	.d2line		3801
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,1
	bc		0,2,.L984	# ne
#    {
#       if(NVM_REDUNDANT_FIRST_BLOCK == arg_block->info.dataset)
	.d2line		3803
	lhz		r0,16(r31)		# arg_block=r31
	se_cmpi		r0,0
	bc		0,2,.L985	# ne
#       {
#          if(NvM_Counter_Wr_Retries [NVM_REDUNDANT_FIRST_BLOCK] > (uint8)0U)
	.d2line		3805
	lis		r3,NvM_Counter_Wr_Retries@ha
	lbz		r0,NvM_Counter_Wr_Retries@l(r3)
	se_cmpi		r0,0
	bc		0,1,.L986	# le
#          {
#             /* [DD-NVM00529-MGC01-V1] [DD-NVM00213-MGC01-V1] [DD-NVM00296-MGC01-V1] */
#             NvM_Counter_Wr_Retries [NVM_REDUNDANT_FIRST_BLOCK]--;
	.d2line		3808
	lis		r5,NvM_Counter_Wr_Retries@ha
	e_add16i		r5,r5,NvM_Counter_Wr_Retries@l
	lbz		r3,0(r5)
	diab.addi		r3,r3,255
	stb		r3,0(r5)
	b		.L994
.L986:
#          }
#          else
#          {
#             NvM_WriteFirstBlockWasSuccess = FALSE;
	.d2line		3812
	diab.li		r0,0
	lis		r3,NvM_WriteFirstBlockWasSuccess@ha
	e_add16i		r3,r3,NvM_WriteFirstBlockWasSuccess@l
	stb		r0,0(r3)
#             /* [DD-NVM00284-MGC01-V1] [DD-NVM00762-MGC01-V1] */
#             arg_block->info.dataset= NVM_REDUNDANT_SECOND_BLOCK;
	.d2line		3814
	diab.li		r0,1
	sth		r0,16(r31)		# arg_block=r31
	b		.L994
.L985:
#          }
#       }
#       else
#       {
#          if(NvM_Counter_Wr_Retries [NVM_REDUNDANT_SECOND_BLOCK] > (uint8)0U)
	.d2line		3819
	lis		r3,(NvM_Counter_Wr_Retries+1)@ha
	lbz		r0,(NvM_Counter_Wr_Retries+1)@l(r3)
	se_cmpi		r0,0
	bc		0,1,.L989	# le
#          {
#             /* [DD-NVM00529-MGC01-V1] [DD-NVM00213-MGC01-V1] [DD-NVM00296-MGC01-V1] */
#             NvM_Counter_Wr_Retries [NVM_REDUNDANT_SECOND_BLOCK]--;
	.d2line		3822
	lis		r5,(NvM_Counter_Wr_Retries+1)@ha
	lbz		r3,(NvM_Counter_Wr_Retries+1)@l(r5)
	diab.addi		r3,r3,255
	stb		r3,(NvM_Counter_Wr_Retries+1)@l(r5)
	b		.L994
.L989:
#          }
#          else
#          {
#             /*check if first block was written not correctly*/
#             if(FALSE == NvM_WriteFirstBlockWasSuccess)
	.d2line		3827
	lis		r3,NvM_WriteFirstBlockWasSuccess@ha
	lbz		r0,NvM_WriteFirstBlockWasSuccess@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L991	# ne
#             {
#                /* [DD-NVM00213-MGC01-V1] [DD-NVM00683-MGC01-V1] */
#                arg_block->info.status_err = (NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		3830
.Llo465:
	diab.li		r0,1
	stb		r0,24(r31)		# arg_block=r31
# 
#                /* [DD-NVM00659-MGC01-V1] [DD-NVM00684-MGC01-V1] */
#                if (TRUE == NvM_IsDem_EventIdConfigured(arg_block->block_id, NVM_DEM_EVENT_E_REQ_FAILED))
	.d2line		3833
	lhz		r3,4(r31)		# arg_block=r31
	diab.li		r4,2		# tmp_stop_processing=r4
	bl		NvM_IsDem_EventIdConfigured
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L993	# ne
#                {
#                    arg_block->info.dem_err = NVM_DEM_EVENT_E_REQ_FAILED;
	.d2line		3835
	diab.li		r0,2
	stw		r0,20(r31)		# arg_block=r31
	b		.L993
.L991:
#                }
#             }
#             else
#             {
#                /*
#                 * First block of redundant block written correctly
#                 * that error is not signaled
#                 * [DD-NVM00270-MGC01-V1] [DD-NVM00284-MGC01-V1] [DD-NVM00337-MGC01-V1]
#                 */
#                arg_block->info.status_err = (NvM_RequestResultType)NVM_REQ_OK;
	.d2line		3845
	diab.li		r0,0
	stb		r0,24(r31)		# arg_block=r31
#                arg_block->info.dem_err = NVM_DEM_EVENT_E_NO_ERROR;
	.d2line		3846
	stw		r0,20(r31)		# arg_block=r31
.L993:
#             }
#             arg_block->info.state = NVM_BLOCK_NV_WRITE_DONE;
	.d2line		3848
	diab.li		r0,16
	stw		r0,12(r31)		# arg_block=r31
#             tmp_stop_processing = TRUE;
	.d2line		3849
	diab.li		r4,1		# tmp_stop_processing=r4
.Llo466:
	b		.L994
.L984:
#          }
#       }
#    }
#    else /* not redundant block */
#    {
#       if(NvM_Counter_Wr_Retries [NVM_REDUNDANT_FIRST_BLOCK] > (uint8)0U)
	.d2line		3855
	lis		r3,NvM_Counter_Wr_Retries@ha
	lbz		r0,NvM_Counter_Wr_Retries@l(r3)
	se_cmpi		r0,0
	bc		0,1,.L995	# le
#       {
#          /* [DD-NVM00529-MGC01-V1] */
#          NvM_Counter_Wr_Retries [NVM_REDUNDANT_FIRST_BLOCK]--;
	.d2line		3858
	lis		r5,NvM_Counter_Wr_Retries@ha
	e_add16i		r5,r5,NvM_Counter_Wr_Retries@l
	lbz		r3,0(r5)
	diab.addi		r3,r3,255
	stb		r3,0(r5)
	b		.L994
.L995:
#       }
#       else
#       {
#          /* [DD-NVM00683-MGC01-V1] */
#          arg_block->info.status_err = (NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		3863
.Llo467:
	diab.li		r0,1
	stb		r0,24(r31)		# arg_block=r31
# 
#          /* [DD-NVM00684-MGC01-V1] */
#          if (TRUE == NvM_IsDem_EventIdConfigured(arg_block->block_id, NVM_DEM_EVENT_E_REQ_FAILED))
	.d2line		3866
	lhz		r3,4(r31)		# arg_block=r31
	diab.li		r4,2		# tmp_stop_processing=r4
	bl		NvM_IsDem_EventIdConfigured
	rlwinm		r3,r3,0,24,31
	se_cmpi		r3,1
	bc		0,2,.L997	# ne
#          {
#              arg_block->info.dem_err = NVM_DEM_EVENT_E_REQ_FAILED;
	.d2line		3868
	diab.li		r0,2
	stw		r0,20(r31)		# arg_block=r31
.L997:
#          }
# 
#          arg_block->info.state = NVM_BLOCK_NV_WRITE_DONE;
	.d2line		3871
	diab.li		r0,16
	stw		r0,12(r31)		# arg_block=r31
#          tmp_stop_processing = TRUE;
	.d2line		3872
	diab.li		r4,1		# tmp_stop_processing=r4
.L994:
#       }
#    }
#    return tmp_stop_processing;
	.d2line		3875
.Llo464:
	rlwinm		r3,r4,0,24,31		# tmp_stop_processing=r4
# }
	.d2line		3876
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo468:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2041:
	.type		NvM_ActBlockNvWriteProcessErr,@function
	.size		NvM_ActBlockNvWriteProcessErr,.-NvM_ActBlockNvWriteProcessErr
# Number of nodes = 169

# Allocations for NvM_ActBlockNvWriteProcessErr
#	?a4		arg_block
#	?a5		$$25
#	?a6		$$24
#	?a7		tmp_stop_processing
# static FUNC(boolean,NVM_CODE) NvM_ActBlockNvWriteStartWrite
	.align		1
	.section	.text_vle
        .d2line         3887,31
#$$ld
.L2048:

#$$bf	NvM_ActBlockNvWriteStartWrite,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActBlockNvWriteStartWrite:
.Llo469:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	.d2prologue_end
# (
#    P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block
# )
# {
#    P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) Buf_ptr;
# #if (NVM_POLLING_MODE==STD_OFF)
#    VAR(MemIf_StatusType, AUTOMATIC) prevMemIfDrvStatus;
# #endif
# 
#    if (   (Is_Conf_Block_Use_Synchmechanism(arg_block->block_id))
	.d2line		3897
.Llo470:
	lis		r3,(NvM_BlockManagementTable+4)@ha
.Llo471:
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,25,25
	cmpi		0,0,r0,64
	bc		1,2,.L1012	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,31,31
	se_cmpi		r0,1
	bc		1,2,.L1012	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,22,22
	cmpi		0,0,r0,512
	bc		0,2,.L1008	# ne
.L1012:
#        || (Is_Conf_Block_Use_Crc(arg_block->block_id))
#        || (Is_Conf_Block_Static_BlockIdCheck(arg_block->block_id)))
#    {
#        Buf_ptr = NvM_Common.NvM_RamMirrorPtr;   /*NvM Mirror is used as the buffer to write data*/
	.d2line		3901
	lis		r3,(NvM_Common+24)@ha
	lwz		r4,(NvM_Common+24)@l(r3)
.Llo473:
	mr		r4,r4		# Buf_ptr=r4 Buf_ptr=r4
	b		.L1009
.L1008:
#    }
#    else
#    {
#        Buf_ptr = arg_block->ram_block_ptr;    /* Data is directly copied from RAM */
	.d2line		3905
.Llo474:
	lwz		r4,8(r31)		# arg_block=r31
.Llo475:
	mr		r4,r4		# Buf_ptr=r4 Buf_ptr=r4
.L1009:
#    }
# 
# 
# #if (NVM_POLLING_MODE==STD_OFF)
#     prevMemIfDrvStatus = NvM_MemIf_Driver_Status;
	.d2line		3910
	lis		r3,NvM_MemIf_Driver_Status@ha
	lwz		r30,NvM_MemIf_Driver_Status@l(r3)
.Llo477:
	mr		r30,r30		# prevMemIfDrvStatus=r30 prevMemIfDrvStatus=r30
#     NvM_MemIf_Driver_Status=MEMIF_BUSY;
	.d2line		3911
	diab.li		r0,2
	e_add16i		r3,r3,NvM_MemIf_Driver_Status@l
	stw		r0,0(r3)
# #endif
#    /* [DD-NVM00038-MGC02-V1] [DD-NVM00410-MGC01-V1] */
#    if(E_OK==MemIf_Write(Get_Conf_Device_Index(arg_block->block_id),
	.d2line		3914
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r31)		# arg_block=r31
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,22(r3)
	lis		r3,(NvM_Common+32)@ha
	lbz		r3,(NvM_Common+32)@l(r3)
	slw		r0,r0,r3
	lhz		r3,16(r31)		# arg_block=r31
	se_add		r0,r3
	rlwinm		r3,r0,0,16,31
	mr		r4,r4		# Buf_ptr=r4 Buf_ptr=r4
.Llo476:
	bl		Ea_Write
	e_andi.		r3,r3,255
	bc		0,2,.L1010	# ne
#                         /* [DD-NVM00343-MGC01-V1] [DD-NVM00123-MGC01-V1] [DD-NVM00338-MGC01-V1] */
#                         Get_Block_Number(arg_block->block_id, arg_block->info.dataset),
#                         Buf_ptr  ))
# 
#    {
#       arg_block->info.state=NVM_BLOCK_NV_WRITE_IN_PROGRESS;
	.d2line		3920
	diab.li		r0,10
	stw		r0,12(r31)		# arg_block=r31
	b		.L1011
.L1010:
#    }
#    else
#    {
#     #if (NVM_POLLING_MODE==STD_OFF)
#        NvM_MemIf_Driver_Status=prevMemIfDrvStatus;
	.d2line		3925
	lis		r3,NvM_MemIf_Driver_Status@ha
	e_add16i		r3,r3,NvM_MemIf_Driver_Status@l
	stw		r30,0(r3)		# prevMemIfDrvStatus=r30
#     #endif
# 
#        arg_block->info.state=NVM_BLOCK_NV_WRITE_PROCESS_ERR;
	.d2line		3928
	diab.li		r0,12
	stw		r0,12(r31)		# arg_block=r31
.L1011:
#    }
#    return FALSE;
	.d2line		3930
.Llo472:
	diab.li		r3,0
# }
	.d2line		3931
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
.L2049:
	.type		NvM_ActBlockNvWriteStartWrite,@function
	.size		NvM_ActBlockNvWriteStartWrite,.-NvM_ActBlockNvWriteStartWrite
# Number of nodes = 138

# Allocations for NvM_ActBlockNvWriteStartWrite
#	?a4		arg_block
#	?a5		Buf_ptr
#	?a6		prevMemIfDrvStatus
# static FUNC(void, NVM_CODE) NvM_ProcessWritingNvBlockStates
	.align		1
	.section	.text_vle
        .d2line         4048,29
#$$ld
.L2059:

#$$bf	NvM_ProcessWritingNvBlockStates,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ProcessWritingNvBlockStates:
.Llo478:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	.d2prologue_end
# (
#     P2VAR(NvM_BlockRequestType, AUTOMATIC, NVM_APPL_DATA) arg_block
# )
# {
#     VAR(boolean, AUTOMATIC) stopProcessing = FALSE;
	.d2line		4053
.Llo482:
	diab.li		r3,0		# stopProcessing=r3
.L1049:
# 
#     while(FALSE == stopProcessing)
	.d2line		4055
.Llo479:
	rlwinm		r3,r3,0,24,31		# stopProcessing=r3 stopProcessing=r3
.Llo480:
	se_cmpi		r3,0		# stopProcessing=r3
	bc		0,2,.L1048	# ne
#     {
#         switch(arg_block->info.state)
	.d2line		4057
.Llo483:
	lwz		r6,12(r31)		# arg_block=r31
	diab.addi		r0,r6,-8
	se_cmpli	r0,7
	rlwinm		r6,r0,2,0,29
	e_add2is		r6,.L2065@ha
	bc		1,1,.L1060	# gt
	lwz		r7,.L2065@l(r6)
	mtspr		ctr,r7
	bcctr		20,0
.L2065:
#$$sl
	.long		.L1051
	.long		.L1053
	.long		.L1054
	.long		.L1055
	.long		.L1056
	.long		.L1057
	.long		.L1058
	.long		.L1059
#$$se
.L1051:
#         {
#             case NVM_BLOCK_NV_WRITE_PREINIT:
#             {
#                 stopProcessing = NvM_ActBlockNvWritePreInit(arg_block);
	.d2line		4061
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_ActBlockNvWritePreInit
.Llo484:
	mr		r3,r3		# stopProcessing=r3 stopProcessing=r3
	b		.L1049
.L1053:
#             }break;
# 
#             case NVM_BLOCK_NV_WRITE_INIT:
#             {
#                 stopProcessing = NvM_ActBlockNvWriteInit(arg_block);
	.d2line		4066
.Llo485:
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_ActBlockNvWriteInit
.Llo486:
	mr		r3,r3		# stopProcessing=r3 stopProcessing=r3
	b		.L1049
.L1054:
#             }break;
# 
#             case NVM_BLOCK_NV_WRITE_IN_PROGRESS:
#             {
#                 stopProcessing = NvM_ActBlockNvWriteInProgress(arg_block);
	.d2line		4071
.Llo487:
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_ActBlockNvWriteInProgress
.Llo488:
	mr		r3,r3		# stopProcessing=r3 stopProcessing=r3
	b		.L1049
.L1055:
#             }break;
# 
#             case NVM_BLOCK_NV_WRITE_VALIDATE:
#             {
#                 stopProcessing = NvM_ActBlockNvWriteValidate(arg_block);
	.d2line		4076
.Llo489:
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_ActBlockNvWriteValidate
.Llo490:
	mr		r3,r3		# stopProcessing=r3 stopProcessing=r3
	b		.L1049
.L1056:
#             }break;
# 
#             case NVM_BLOCK_NV_WRITE_PROCESS_ERR:
#             {
#                 stopProcessing = NvM_ActBlockNvWriteProcessErr(arg_block);
	.d2line		4081
.Llo491:
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_ActBlockNvWriteProcessErr
.Llo492:
	mr		r3,r3		# stopProcessing=r3 stopProcessing=r3
	b		.L1049
.L1057:
#             }break;
# 
#             case NVM_BLOCK_NV_WRITE_START_WRITE:
#             {
#                 stopProcessing = NvM_ActBlockNvWriteStartWrite(arg_block);
	.d2line		4086
.Llo493:
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_ActBlockNvWriteStartWrite
.Llo494:
	mr		r3,r3		# stopProcessing=r3 stopProcessing=r3
	b		.L1049
.L1058:
#             }break;
# 
#             case NVM_BLOCK_NV_WRITE_VERIFICATION:
#             {
#                 stopProcessing = NvM_ActBlockNvWriteVerification(arg_block);
	.d2line		4091
.Llo495:
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_ActBlockNvWriteVerification
.Llo496:
	mr		r3,r3		# stopProcessing=r3 stopProcessing=r3
	b		.L1049
.L1059:
#             }break;
# 
#             case NVM_BLOCK_NV_WRITE_VERIFICATION_IN_PROGRESS:
#             {
#                 stopProcessing = NvM_ActBlockNvWriteVerifyInProgress(arg_block);
	.d2line		4096
.Llo497:
	mr		r3,r31		# arg_block=r3 arg_block=r31
	bl		NvM_ActBlockNvWriteVerifyInProgress
.Llo498:
	mr		r3,r3		# stopProcessing=r3 stopProcessing=r3
	b		.L1049
.L1060:
#             }break;
# 
#             default:
#             {
#                 stopProcessing = TRUE;
	.d2line		4101
.Llo499:
	diab.li		r3,1		# stopProcessing=r3
.Llo500:
	b		.L1049
.L1048:
#             }break;
#         }
#     }
# }
	.d2line		4105
	.d2epilogue_begin
.Llo481:
	lwz		r31,28(r1)		# offset r1+28  0x1c
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
.L2060:
	.type		NvM_ProcessWritingNvBlockStates,@function
	.size		NvM_ProcessWritingNvBlockStates,.-NvM_ProcessWritingNvBlockStates
# Number of nodes = 72

# Allocations for NvM_ProcessWritingNvBlockStates
#	?a4		arg_block
#	?a5		stopProcessing
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateWriteAllWriting(void)
	.align		1
	.section	.text_vle
        .d2line         2019,31
#$$ld
.L2068:

#$$bf	NvM_ActSubStateWriteAllWriting,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateWriteAllWriting:
.Llo501:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing=TRUE;
	.d2line		2021
	diab.li		r31,1		# tmp_stop_processing=r31
#    NvM_ProcessWritingNvBlockStates(&NvM_Current_Block);
	.d2line		2022
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	bl		NvM_ProcessWritingNvBlockStates
# 
#    if(NVM_BLOCK_NV_WRITE_DONE==NvM_Current_Block.info.state)
	.d2line		2024
	lis		r3,(NvM_Current_Block+12)@ha
	lwz		r0,(NvM_Current_Block+12)@l(r3)
	se_cmpi		r0,16
	bc		0,2,.L608	# ne
#    {
#       if(   ((NvM_RequestResultType)NVM_REQ_OK == NvM_Current_Block.info.status_err)
	.d2line		2026
	lis		r3,(NvM_Current_Block+24)@ha
	lbz		r0,(NvM_Current_Block+24)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L609	# ne
.Llo502:
	lis		r3,(NvM_Current_Block+20)@ha
	lwz		r0,(NvM_Current_Block+20)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L609	# ne
#           &&(NVM_DEM_EVENT_E_NO_ERROR == NvM_Current_Block.info.dem_err))
#       {
#          /*data in NV the same as in RAM block [DD-NVM00472-MGC01-V1] */
#          Set_Adm_Block_Attrib_Block_Changed (NvM_Current_Block.block_id,NVM_BLOCK_UNCHANGED);
	.d2line		2030
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r5,NvM_BlockManagementTable@l(r3)
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r7,(NvM_Current_Block+4)@l(r4)
	rlwinm		r7,r7,3,13,28
	se_add		r5,r7
	lwz		r0,4(r5)
	.diab.bclri		r0,2
	lwz		r5,NvM_BlockManagementTable@l(r3)
	se_add		r5,r7
	stw		r0,4(r5)
#          Set_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id,NVM_BLOCK_VALID);
	.d2line		2031
	lwz		r5,NvM_BlockManagementTable@l(r3)
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r5,r0
	lwz		r5,4(r5)
	.diab.bseti		r5,1
	lwz		r6,NvM_BlockManagementTable@l(r3)
	se_add		r6,r0
	stw		r5,4(r6)
#          /* [DD-NVM00396-MGC01-V1] [DD-NVM00270-MGC01-V1] */
#          Set_Adm_Block_Error_Status (NvM_Current_Block.block_id, (NvM_RequestResultType)NVM_REQ_OK);
	.d2line		2033
	diab.li		r0,0
	lwz		r5,NvM_BlockManagementTable@l(r3)
	lhz		r3,(NvM_Current_Block+4)@l(r4)
	rlwinm		r3,r3,3,13,28
	se_add		r3,r5
	stb		r0,1(r3)
# 
#          if(Is_Conf_Block_Type_Write_Once(NvM_Current_Block.block_id))
	.d2line		2035
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,28,28
	se_cmpi		r0,8
	bc		0,2,.L611	# ne
#          {
#             /* [DD-NVM00397-MGC01-V1] [DD-NVM00329-MGC01-V1] */
#             Set_Adm_Block_Attrib_Wr_Protection(NvM_Current_Block.block_id,NVM_WR_PROTECTION_ON);
	.d2line		2038
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r0,NvM_BlockManagementTable@l(r4)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r5,(NvM_Current_Block+4)@l(r3)
	rlwinm		r5,r5,3,13,28
	add		r3,r0,r5
	lwz		r0,4(r3)
	.diab.bseti		r0,0
	lwz		r3,NvM_BlockManagementTable@l(r4)
	se_add		r5,r3
	stw		r0,4(r5)
	b		.L611
.L609:
#          }
#       }
#       else
#       {
#          /* [DD-NVM00318-MGC01-V1] */
#          multi_block_err_found=TRUE;
	.d2line		2044
	diab.li		r5,1
	lis		r3,multi_block_err_found@ha
	e_add16i		r3,r3,multi_block_err_found@l
	stb		r5,0(r3)
#          /* [DD-NVM00396-MGC01-V1] */
#          Set_Adm_Block_Error_Status(NvM_Current_Block.block_id,
	.d2line		2046
	lis		r3,(NvM_Current_Block+24)@ha
	lbz		r4,(NvM_Current_Block+24)@l(r3)
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r6,NvM_BlockManagementTable@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r3)
	rlwinm		r0,r0,3,13,28
	se_add		r6,r0
	stb		r4,1(r6)
#                                     NvM_Current_Block.info.status_err);
#          /* [DD-NVM00685-MGC01-V1] */
#          NvM_Call_Dem_ReportErrorStatus(NvM_Current_Block.block_id, NvM_Current_Block.info.dem_err, DEM_EVENT_STATUS_FAILED);
	.d2line		2049
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	lis		r4,(NvM_Current_Block+20)@ha
	lwz		r4,(NvM_Current_Block+20)@l(r4)
	bl		NvM_Call_Dem_ReportErrorStatus
.L611:
# 
#       }
#       NvM_CallSingleBlockCallback(NvM_Current_Block.block_id, NVM_WRITE_ALL_ID);
	.d2line		2052
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,13
	bl		NvM_CallSingleBlockCallback
#       Set_Sub_State_Machine (NVM_SUBSTATE_WRITEALL_FIND_BLOCK);
	.d2line		2053
	diab.li		r0,4
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
#       tmp_stop_processing=FALSE;
	.d2line		2054
	diab.li		r31,0		# tmp_stop_processing=r31
.L608:
#    }
#    return tmp_stop_processing;
	.d2line		2056
.Llo503:
	rlwinm		r3,r31,0,24,31		# tmp_stop_processing=r31
# }
	.d2line		2057
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo504:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2069:
	.type		NvM_ActSubStateWriteAllWriting,@function
	.size		NvM_ActSubStateWriteAllWriting,.-NvM_ActSubStateWriteAllWriting
# Number of nodes = 184

# Allocations for NvM_ActSubStateWriteAllWriting
#	?a4		tmp_stop_processing
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateWriteAllCanceled(void)
	.align		1
	.section	.text_vle
        .d2line         2066,31
#$$ld
.L2075:

#$$bf	NvM_ActSubStateWriteAllCanceled,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateWriteAllCanceled:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /* [DD-NVM00393-MGC01-V1] [DD-NVM00237-MGC01-V1] */
#    Set_Adm_Block_Error_Status(NVM_BLOCK_0,(NvM_RequestResultType)NVM_REQ_CANCELED);
	.d2line		2069
	diab.li		r0,6
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	stb		r0,1(r3)
#    NvM_Current_Block.service_id=NVM_CANCEL_WRITE_ALL_ID;
	.d2line		2070
	diab.li		r0,10
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	stw		r0,0(r3)
#    if (TRUE == NvM_Common.NvM_DrvModeSwitch)
	.d2line		2071
	lis		r3,(NvM_Common+35)@ha
	lbz		r0,(NvM_Common+35)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L616	# ne
#    {
#       MemIf_SetMode(MEMIF_MODE_SLOW); /* [DD-NVM00681-MGC01-V1] */
	.d2line		2073
	diab.li		r3,0
	bl		Ea_SetMode
.L616:
#    }
# 
#    /* [DD-NVM00745-MGC01-V1] */
#    if(TRUE == NvM_Common.NvM_BswMMultiBlk)
	.d2line		2077
	lis		r3,(NvM_Common+34)@ha
	lbz		r0,(NvM_Common+34)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L617	# ne
#    {
#       NvM_Common.NvM_BswMJobModeCallback(NVM_WRITE_ALL_ID, Get_Adm_Block_Error_Status(NVM_BLOCK_0));
	.d2line		2079
	lis		r3,(NvM_Common+16)@ha
	lwz		r0,(NvM_Common+16)@l(r3)
	mtspr		ctr,r0
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	lbz		r4,1(r3)
	diab.li		r3,13
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
	b		.L618
.L617:
#    }
#    else
#    {
#       /* [DD-NVM00260-MGC01-V1] */
#       NvM_CallMultiBlockCallback(NvM_Current_Block.service_id);
	.d2line		2084
	lis		r3,NvM_Current_Block@ha
	lwz		r3,NvM_Current_Block@l(r3)
	bl		NvM_CallMultiBlockCallback
.L618:
#    }
# 
#    return TRUE;
	.d2line		2087
	diab.li		r3,1
# }
	.d2line		2088
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2076:
	.type		NvM_ActSubStateWriteAllCanceled,@function
	.size		NvM_ActSubStateWriteAllCanceled,.-NvM_ActSubStateWriteAllCanceled
# Number of nodes = 59

# Allocations for NvM_ActSubStateWriteAllCanceled
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateValidateAllInit(void)
	.align		1
	.section	.text_vle
        .d2line         2094,31
#$$ld
.L2080:

#$$bf	NvM_ActSubStateValidateAllInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
NvM_ActSubStateValidateAllInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     multi_block_err_found = FALSE;
	.d2line		2096
	diab.li		r3,0
	lis		r4,multi_block_err_found@ha
	e_add16i		r4,r4,multi_block_err_found@l
	stb		r3,0(r4)
# 
#     Set_Sub_State_Machine(NVM_SUBSTATE_VALIDATEALL_SELECT_BLOCKS);
	.d2line		2098
	diab.li		r4,7
	lis		r5,NvM_SubStateDbg@ha
	e_add16i		r5,r5,NvM_SubStateDbg@l
	stw		r4,0(r5)
#     return FALSE;
# }
	.d2line		2100
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2081:
	.type		NvM_ActSubStateValidateAllInit,@function
	.size		NvM_ActSubStateValidateAllInit,.-NvM_ActSubStateValidateAllInit
# Number of nodes = 8

# Allocations for NvM_ActSubStateValidateAllInit
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateValidateAllSelectBlocks(void)
	.align		1
	.section	.text_vle
        .d2line         2103,31
#$$ld
.L2085:

#$$bf	NvM_ActSubStateValidateAllSelectBlocks,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateValidateAllSelectBlocks:
.Llo505:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(boolean, AUTOMATIC) tmp_exit = FALSE;
	.d2line		2105
	diab.li		r31,0		# tmp_exit=r31
#     NvM_Current_Block.info.state = NVM_BLOCK_VALIDATE_INIT;
	.d2line		2106
	diab.li		r0,35
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
.L624:
#     while(FALSE == tmp_exit)
	.d2line		2107
	rlwinm		r31,r31,0,24,31		# tmp_exit=r31 tmp_exit=r31
	se_cmpi		r31,0		# tmp_exit=r31
	bc		0,2,.L625	# ne
#     {
#         tmp_exit = TRUE;
	.d2line		2109
.Llo506:
	diab.li		r31,1		# tmp_exit=r31
#         NvM_Current_Block.block_id++;
	.d2line		2110
.Llo507:
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r4)
	diab.addi		r0,r3,1
	sth		r0,(NvM_Current_Block+4)@l(r4)
# 
#         if(NvM_Current_Block.block_id < Get_Conf_Total_Block_Number())
	.d2line		2112
	se_extzh		r0
	lis		r3,(NvM_Common+4)@ha
	lhz		r3,(NvM_Common+4)@l(r3)
	se_cmp		r0,r3
	bc		0,0,.L626	# ge
#         {
#             /* [DD-NVM00856-MGC01-V1] */
#             if((Is_Conf_Block_Use_Auto_Validation(NvM_Current_Block.block_id) && Is_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id))
	.d2line		2115
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,19,19
	cmpi		0,0,r0,4096
	bc		0,2,.L627	# ne
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r0,NvM_BlockManagementTable@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,3,13,28
	se_add		r3,r0
	lwz		r0,4(r3)
	se_btsti		r0,1
	bc		1,2,.L627	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,25,25
	cmpi		0,0,r0,64
	bc		1,2,.L632	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,32(r3)
	se_cmpi		r0,0
	bc		1,2,.L627	# eq
.L632:
#                     /* [DD-NVM00860-MGC01-V1] */
#                     && (Is_Conf_Block_Use_Synchmechanism(NvM_Current_Block.block_id) || Is_Conf_Block_Permanent(NvM_Current_Block.block_id)))
#             {
#                 if(Is_Conf_Block_Use_Crc(NvM_Current_Block.block_id))
	.d2line		2119
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,31,31
	se_cmpi		r0,1
	bc		0,2,.L628	# ne
#                 {
#                     /* [DD-NVM00185-MGC01-V1] [DD-NVM00857-MGC01-V1] [DD-NVM00861-MGC01-V1] */
#                     Set_Adm_Block_Error_Status(NvM_Current_Block.block_id, (NvM_RequestResultType)NVM_REQ_PENDING);
	.d2line		2122
	diab.li		r0,2
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r4,NvM_BlockManagementTable@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,3,13,28
	se_add		r3,r4
	stb		r0,1(r3)
#                     Set_Sub_State_Machine(NVM_SUBSTATE_VALIDATEALL_VALIDATE);
	.d2line		2123
	diab.li		r0,38
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L624
.L628:
#                 }
#                 else
#                 {
#                     /* [DD-NVM00856-MGC01-V1] */
#                     Set_Adm_Block_Attrib_Block_Changed(NvM_Current_Block.block_id, NVM_BLOCK_CHANGED);
	.d2line		2128
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r5,NvM_BlockManagementTable@l(r4)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r7,(NvM_Current_Block+4)@l(r3)
	rlwinm		r7,r7,3,13,28
	se_add		r5,r7
	lwz		r0,4(r5)
	.diab.bseti		r0,2
	lwz		r5,NvM_BlockManagementTable@l(r4)
	se_add		r5,r7
	stw		r0,4(r5)
#                     Set_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id, NVM_BLOCK_VALID);
	.d2line		2129
	lwz		r5,NvM_BlockManagementTable@l(r4)
	lhz		r0,(NvM_Current_Block+4)@l(r3)
	rlwinm		r0,r0,3,13,28
	se_add		r5,r0
	lwz		r5,4(r5)
	.diab.bseti		r5,1
	lwz		r6,NvM_BlockManagementTable@l(r4)
	se_add		r6,r0
	stw		r5,4(r6)
#                     /* [DD-NVM00270-MGC01-V1] [DD-NVM00862-MGC01-V1] */
#                     Set_Adm_Block_Error_Status(NvM_Current_Block.block_id, (NvM_RequestResultType)NVM_REQ_OK);
	.d2line		2131
	diab.li		r0,0
	lwz		r5,NvM_BlockManagementTable@l(r4)
	lhz		r4,(NvM_Current_Block+4)@l(r3)
	rlwinm		r4,r4,3,13,28
	se_add		r4,r5
	stb		r0,1(r4)
#                     NvM_CallSingleBlockCallback(NvM_Current_Block.block_id, NVM_VALIDATE_ALL_ID);
	.d2line		2132
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,25
	bl		NvM_CallSingleBlockCallback
	b		.L624
.L627:
#                 }
#             }
#             else
#             {
#                 tmp_exit = FALSE;
	.d2line		2137
	diab.li		r31,0		# tmp_exit=r31
	b		.L624
.L626:
#             }
# 
#         }
#         else
#         {
#             Set_Sub_State_Machine(NVM_SUBSTATE_VALIDATEALL_OPERATION_DONE);
	.d2line		2143
	diab.li		r0,8
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L624
.L625:
#         }
#     }
#     return FALSE;
	.d2line		2146
.Llo508:
	diab.li		r3,0
# }
	.d2line		2147
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
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
.L2086:
	.type		NvM_ActSubStateValidateAllSelectBlocks,@function
	.size		NvM_ActSubStateValidateAllSelectBlocks,.-NvM_ActSubStateValidateAllSelectBlocks
# Number of nodes = 235

# Allocations for NvM_ActSubStateValidateAllSelectBlocks
#	?a4		tmp_exit
# static FUNC(void,NVM_CODE) NvM_ActBlockValidateInit(void)
	.align		1
	.section	.text_vle
        .d2line         4150,28
#$$ld
.L2092:

#$$bf	NvM_ActBlockValidateInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.d2_cfa_start __cie
NvM_ActBlockValidateInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_PENDING;
	.d2line		4152
	diab.li		r0,2
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
#     Set_Crc_State_Machine(NVM_CALCULATION_CRC_INIT);
	.d2line		4153
	diab.li		r0,0
	lis		r3,(NvM_Data_Crc+4)@ha
	stw		r0,(NvM_Data_Crc+4)@l(r3)
#     if(Is_Conf_Block_Use_Synchmechanism(NvM_Current_Block.block_id))
	.d2line		4154
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,25,25
	cmpi		0,0,r0,64
	bc		0,2,.L1089	# ne
#     {
#         NvM_ReadRepeatMirrorCount = (uint8)0U;
	.d2line		4156
	diab.li		r0,0
	lis		r3,NvM_ReadRepeatMirrorCount@ha
	e_add16i		r3,r3,NvM_ReadRepeatMirrorCount@l
	stb		r0,0(r3)
#         /* [DD-NVM00515-MGC01-V1] */
#         NvM_Current_Block.info.state = NVM_BLOCK_VALIDATE_USING_RAMMIRROR;
	.d2line		4158
	diab.li		r0,36
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
	b		.L1088
.L1089:
#     }
#     else
#     {
#         NvM_Current_Block.info.state = NVM_BLOCK_VALIDATE_CHECK_CRC_RAM;
	.d2line		4162
	diab.li		r0,37
	lis		r3,(NvM_Current_Block+12)@ha
	stw		r0,(NvM_Current_Block+12)@l(r3)
.L1088:
#     }
# }
	.d2line		4164
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2093:
	.type		NvM_ActBlockValidateInit,@function
	.size		NvM_ActBlockValidateInit,.-NvM_ActBlockValidateInit
# Number of nodes = 54

# Allocations for NvM_ActBlockValidateInit
# static FUNC(boolean,NVM_CODE) NvM_ActBlockUsingRamMirror(void)
	.align		1
	.section	.text_vle
        .d2line         4167,31
#$$ld
.L2097:

#$$bf	NvM_ActBlockUsingRamMirror,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActBlockUsingRamMirror:
.Llo509:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo523:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# blockId=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) stopProcessing = TRUE;
	.d2line		4169
	diab.li		r31,1		# stopProcessing=r31
#     VAR(Std_ReturnType,AUTOMATIC) tmp_result;
#     VAR(NvM_BlockIdType,AUTOMATIC) blockId = NvM_Current_Block.block_id;
	.d2line		4171
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r3)		# blockId=r0
	mr		r0,r0		# blockId=r0 blockId=r0
# 
#     /* [DD-NVM00515-MGC01-V1] [DD-NVM00539-MGC01-V2] */
#     tmp_result =
	.d2line		4174
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r0,6,10,25		# blockId=r0 blockId=r0
	se_add		r3,r0		# blockId=r0
	lwz		r0,52(r3)		# blockId=r0
.Llo524:
	mtspr		ctr,r0		# blockId=ctr
	lis		r3,(NvM_Common+24)@ha
	lwz		r3,(NvM_Common+24)@l(r3)
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo511:
	mr		r3,r3		# tmp_result=r3 tmp_result=r3
#             NvM_BlockManagementTable.BlockDescriptorPtr[blockId].NvMWriteRamBlockToNvCallback(NvM_Common.NvM_RamMirrorPtr);
#     if(E_OK == tmp_result)
	.d2line		4176
	rlwinm		r3,r3,0,24,31		# tmp_result=r3 tmp_result=r3
	se_cmpi		r3,0		# tmp_result=r3
	bc		0,2,.L1094	# ne
#     {
#         /* Start Recalculation */
#         Set_Crc_State_Machine(NVM_CALCULATION_CRC_INIT);
	.d2line		4179
.Llo512:
	diab.li		r31,0		# stopProcessing=r31
	lis		r3,(NvM_Data_Crc+4)@ha		# tmp_result=r3
.Llo513:
	stw		r31,(NvM_Data_Crc+4)@l(r3)		# tmp_result=r3 stopProcessing=r31
#         NvM_Current_Block.info.state = NVM_BLOCK_VALIDATE_CHECK_CRC_RAMMIRROR;
	.d2line		4180
	diab.li		r0,38		# blockId=r0
.Llo525:
	lis		r3,(NvM_Current_Block+12)@ha		# tmp_result=r3
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_result=r3 blockId=r0
#         stopProcessing = FALSE;
	.d2line		4181
	b		.L1095
.L1094:
#     }
#     else
#     {
#         if(NvM_ReadRepeatMirrorCount == NvM_Common.NvM_RptMirrorCnt) /* [DD-NVM00579-MGC01-V1] */
	.d2line		4185
.Llo514:
	lis		r3,NvM_ReadRepeatMirrorCount@ha		# tmp_result=r3
.Llo515:
	lbz		r0,NvM_ReadRepeatMirrorCount@l(r3)		# blockId=r0 tmp_result=r3
.Llo526:
	lis		r3,(NvM_Common+33)@ha		# tmp_result=r3
	lbz		r3,(NvM_Common+33)@l(r3)		# tmp_result=r3 tmp_result=r3
	se_cmp		r0,r3		# blockId=r0 tmp_result=r3
	bc		0,2,.L1096	# ne
#         {
#             NvM_Call_Dem_ReportErrorStatus(NvM_Current_Block.block_id, NVM_DEM_EVENT_E_REQ_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		4187
.Llo516:
	lis		r3,(NvM_Current_Block+4)@ha		# tmp_result=r3
.Llo517:
	lhz		r3,(NvM_Current_Block+4)@l(r3)		# tmp_result=r3 tmp_result=r3
.Llo518:
	diab.li		r4,2
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
# 
#             /* The tmp_result was E_NOT_OK too many times. stopProcessing is TRUE here */
#             NvM_Current_Block.info.state = NVM_BLOCK_VALIDATE_DONE;
	.d2line		4190
	diab.li		r0,39		# blockId=r0
.Llo527:
	lis		r3,(NvM_Current_Block+12)@ha		# tmp_result=r3
.Llo519:
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_result=r3 blockId=r0
#             NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		4191
	diab.li		r0,1		# blockId=r0
	lis		r3,(NvM_Current_Block+24)@ha		# tmp_result=r3
	stb		r0,(NvM_Current_Block+24)@l(r3)		# tmp_result=r3 blockId=r0
	b		.L1095
.L1096:
#         }
#         else
#         {
#             NvM_ReadRepeatMirrorCount++;
	.d2line		4195
.Llo520:
	lis		r3,NvM_ReadRepeatMirrorCount@ha		# tmp_result=r3
.Llo521:
	lbz		r3,NvM_ReadRepeatMirrorCount@l(r3)		# tmp_result=r3 tmp_result=r3
	diab.addi		r0,r3,1		# blockId=r0 tmp_result=r3
.Llo528:
	lis		r3,NvM_ReadRepeatMirrorCount@ha		# tmp_result=r3
	e_add16i		r3,r3,NvM_ReadRepeatMirrorCount@l		# tmp_result=r3 tmp_result=r3
	stb		r0,0(r3)		# tmp_result=r3 blockId=r0
# 
#             /* It tries again in the next mainfunction. stopProcessing is TRUE here [DD-NVM00840-MGC01-V1] */
#             NvM_Current_Block.info.state = NVM_BLOCK_VALIDATE_USING_RAMMIRROR;
	.d2line		4198
	diab.li		r0,36		# blockId=r0
	lis		r3,(NvM_Current_Block+12)@ha		# tmp_result=r3
	stw		r0,(NvM_Current_Block+12)@l(r3)		# tmp_result=r3 blockId=r0
.L1095:
#         }
#     }
# 
#     return stopProcessing;
	.d2line		4202
.Llo522:
	rlwinm		r3,r31,0,24,31		# tmp_result=r3 stopProcessing=r31
# }
	.d2line		4203
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo510:
	lwz		r0,36(r1)		# blockId=r0
	mtspr		lr,r0		# blockId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2098:
	.type		NvM_ActBlockUsingRamMirror,@function
	.size		NvM_ActBlockUsingRamMirror,.-NvM_ActBlockUsingRamMirror
# Number of nodes = 103

# Allocations for NvM_ActBlockUsingRamMirror
#	?a4		stopProcessing
#	?a5		tmp_result
#	?a6		blockId
# static FUNC(boolean,NVM_CODE) NvM_ActBlockValidateCheckCrcRAM(void)
	.align		1
	.section	.text_vle
        .d2line         4206,31
#$$ld
.L2108:

#$$bf	NvM_ActBlockValidateCheckCrcRAM,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActBlockValidateCheckCrcRAM:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(NvM_CalculationCrcStateType,AUTOMATIC) crcState =
	.d2line		4208
	lis		r3,(NvM_BlockManagementTable+4)@ha		# crcState=r3
.Llo529:
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# crcState=r3
	lis		r3,(NvM_Current_Block+4)@ha		# crcState=r3
	lhz		r3,(NvM_Current_Block+4)@l(r3)		# crcState=r3 crcState=r3
	rlwinm		r3,r3,6,10,25		# crcState=r3 crcState=r3
	se_add		r3,r0		# crcState=r3 crcState=r3
	lwz		r5,32(r3)		# crcState=r3
	lis		r3,NvM_Current_Block@ha		# crcState=r3
	e_add16i		r3,r3,NvM_Current_Block@l		# crcState=r3 crcState=r3
.Llo530:
	diab.li		r4,0
	diab.li		r6,1
	bl		NvM_ValidateCrc
.Llo531:
	mr		r3,r3		# crcState=r3 crcState=r3
#             NvM_ValidateCrc(&NvM_Current_Block,
#                             NVM_UPDATE_CRC_FIELD,
#                             Get_Conf_Ram_Block_Addr(NvM_Current_Block.block_id),
#                             TRUE);
# 
#     if((NVM_CALCULATION_CRC_FINISHED_OK == crcState) || (NVM_CALCULATION_CRC_FINISHED_NOK == crcState))
	.d2line		4214
	se_cmpi		r3,2		# crcState=r3
	bc		1,2,.L1104	# eq
	se_cmpi		r3,3		# crcState=r3
	bc		0,2,.L1103	# ne
.L1104:
#     {
#         /* CRC calculation is finished and updated */
#         NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_OK; /* [DD-NVM00270-MGC01-V1] */
	.d2line		4217
.Llo532:
	diab.li		r0,0
	lis		r3,(NvM_Current_Block+24)@ha		# crcState=r3
.Llo533:
	stb		r0,(NvM_Current_Block+24)@l(r3)		# crcState=r3
# 
#         NvM_Current_Block.info.state =NVM_BLOCK_VALIDATE_DONE;
	.d2line		4219
	diab.li		r0,39
	lis		r3,(NvM_Current_Block+12)@ha		# crcState=r3
	stw		r0,(NvM_Current_Block+12)@l(r3)		# crcState=r3
.L1103:
#     }
#     else
#     {
#         /* Crc calculation to be continued in the next mainfunction, crcState is NVM_CALCULATION_CRC_IN_PROGRESS */
#     }
# 
#     return TRUE;
	.d2line		4226
.Llo534:
	diab.li		r3,1		# crcState=r3
# }
	.d2line		4227
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2109:
	.type		NvM_ActBlockValidateCheckCrcRAM,@function
	.size		NvM_ActBlockValidateCheckCrcRAM,.-NvM_ActBlockValidateCheckCrcRAM
# Number of nodes = 51

# Allocations for NvM_ActBlockValidateCheckCrcRAM
#	?a4		crcState
# static FUNC(boolean,NVM_CODE) NvM_ActBlockValidateCheckCrcRAMMirror(void)
	.align		1
	.section	.text_vle
        .d2line         4230,31
#$$ld
.L2115:

#$$bf	NvM_ActBlockValidateCheckCrcRAMMirror,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActBlockValidateCheckCrcRAMMirror:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(NvM_CalculationCrcStateType,AUTOMATIC) crcState = NvM_ValidateCrc(&NvM_Current_Block,
	.d2line		4232
	lis		r3,(NvM_Common+24)@ha		# crcState=r3
.Llo535:
	lwz		r5,(NvM_Common+24)@l(r3)		# crcState=r3
	lis		r3,NvM_Current_Block@ha		# crcState=r3
	e_add16i		r3,r3,NvM_Current_Block@l		# crcState=r3 crcState=r3
.Llo536:
	diab.li		r4,0
	diab.li		r6,0
	bl		NvM_ValidateCrc
.Llo537:
	mr		r3,r3		# crcState=r3 crcState=r3
#                                                                               NVM_UPDATE_CRC_FIELD,
#                                                                               NvM_Common.NvM_RamMirrorPtr,
#                                                                               FALSE);
# 
#     if((NVM_CALCULATION_CRC_FINISHED_OK == crcState) || (NVM_CALCULATION_CRC_FINISHED_NOK == crcState))
	.d2line		4237
	se_cmpi		r3,2		# crcState=r3
	bc		1,2,.L1110	# eq
	se_cmpi		r3,3		# crcState=r3
	bc		0,2,.L1109	# ne
.L1110:
#     {
#         /* CRC calculation is finished and updated */
#         NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_OK; /* [DD-NVM00270-MGC01-V1] */
	.d2line		4240
.Llo538:
	diab.li		r0,0
	lis		r3,(NvM_Current_Block+24)@ha		# crcState=r3
.Llo539:
	stb		r0,(NvM_Current_Block+24)@l(r3)		# crcState=r3
# 
#         NvM_Current_Block.info.state = NVM_BLOCK_VALIDATE_DONE;
	.d2line		4242
	diab.li		r0,39
	lis		r3,(NvM_Current_Block+12)@ha		# crcState=r3
	stw		r0,(NvM_Current_Block+12)@l(r3)		# crcState=r3
.L1109:
#     }
#     else
#     {
#         /* Crc calculation to be continued in the next mainfunction, crcState is NVM_CALCULATION_CRC_IN_PROGRESS */
#     }
# 
#     return TRUE;
	.d2line		4249
.Llo540:
	diab.li		r3,1		# crcState=r3
# }
	.d2line		4250
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2116:
	.type		NvM_ActBlockValidateCheckCrcRAMMirror,@function
	.size		NvM_ActBlockValidateCheckCrcRAMMirror,.-NvM_ActBlockValidateCheckCrcRAMMirror
# Number of nodes = 39

# Allocations for NvM_ActBlockValidateCheckCrcRAMMirror
#	?a4		crcState
# static FUNC(void, NVM_CODE) NvM_ProcessValidateStates
	.align		1
	.section	.text_vle
        .d2line         4111,29
#$$ld
.L2122:

#$$bf	NvM_ProcessValidateStates,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ProcessValidateStates:
.Llo541:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block=r31 arg_block=r3
	.d2prologue_end
# (
#     CONSTP2CONST(NvM_BlockRequestType, AUTOMATIC, NVM_APPL_DATA) arg_block
# )
# {
#     VAR(boolean,AUTOMATIC) stopProcessing = FALSE;
	.d2line		4116
	diab.li		r4,0		# stopProcessing=r4
.L1073:
#     while(FALSE == stopProcessing)
	.d2line		4117
.Llo542:
	rlwinm		r3,r4,0,24,31		# stopProcessing=r4
.Llo543:
	se_cmpi		r3,0
	bc		0,2,.L1072	# ne
#     {
#         switch (arg_block->info.state)
	.d2line		4119
	lwz		r6,12(r31)		# arg_block=r31
	cmpi		0,0,r6,35
	bc		1,2,.L1075	# eq
	cmpi		0,0,r6,36
	bc		1,2,.L1077	# eq
.Llo545:
	cmpi		0,0,r6,37
	bc		1,2,.L1078	# eq
	cmpi		0,0,r6,38
	bc		1,2,.L1079	# eq
	b		.L1080
.L1075:
#         {
#             case NVM_BLOCK_VALIDATE_INIT:
#             {
#                 NvM_ActBlockValidateInit();
	.d2line		4123
.Llo546:
	bl		NvM_ActBlockValidateInit
	b		.L1073
.L1077:
#             }break;
# 
#             case NVM_BLOCK_VALIDATE_USING_RAMMIRROR:
#             {
#                 stopProcessing = NvM_ActBlockUsingRamMirror();
	.d2line		4128
.Llo547:
	bl		NvM_ActBlockUsingRamMirror
.Llo548:
	mr		r4,r3		# stopProcessing=r4 stopProcessing=r3
	b		.L1073
.L1078:
#             }break;
# 
#             case NVM_BLOCK_VALIDATE_CHECK_CRC_RAM:
#             {
#                 stopProcessing = NvM_ActBlockValidateCheckCrcRAM();
	.d2line		4133
.Llo549:
	bl		NvM_ActBlockValidateCheckCrcRAM
.Llo550:
	mr		r4,r3		# stopProcessing=r4 stopProcessing=r3
	b		.L1073
.L1079:
#             }break;
# 
#             case NVM_BLOCK_VALIDATE_CHECK_CRC_RAMMIRROR:
#             {
#                 stopProcessing = NvM_ActBlockValidateCheckCrcRAMMirror();
	.d2line		4138
.Llo551:
	bl		NvM_ActBlockValidateCheckCrcRAMMirror
.Llo552:
	mr		r4,r3		# stopProcessing=r4 stopProcessing=r3
	b		.L1073
.L1080:
#             }break;
# 
#             default:
#             {
#                 stopProcessing = TRUE;
	.d2line		4143
.Llo553:
	diab.li		r4,1		# stopProcessing=r4
.Llo554:
	b		.L1073
.L1072:
#             }break;
#         }
#     }
# }
	.d2line		4147
	.d2epilogue_begin
.Llo544:
	lwz		r31,28(r1)		# offset r1+28  0x1c
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
.L2123:
	.type		NvM_ProcessValidateStates,@function
	.size		NvM_ProcessValidateStates,.-NvM_ProcessValidateStates
# Number of nodes = 34

# Allocations for NvM_ProcessValidateStates
#	?a4		arg_block
#	?a5		stopProcessing
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateValidateAllValidate(void)
	.align		1
	.section	.text_vle
        .d2line         2150,31
#$$ld
.L2130:

#$$bf	NvM_ActSubStateValidateAllValidate,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateValidateAllValidate:
.Llo555:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(boolean,AUTOMATIC) tmp_stop_processing = TRUE;
	.d2line		2152
	diab.li		r31,1		# tmp_stop_processing=r31
#     NvM_ProcessValidateStates(&NvM_Current_Block);
	.d2line		2153
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	bl		NvM_ProcessValidateStates
# 
#     if(NVM_BLOCK_VALIDATE_DONE == NvM_Current_Block.info.state)
	.d2line		2155
	lis		r3,(NvM_Current_Block+12)@ha
	lwz		r0,(NvM_Current_Block+12)@l(r3)
	cmpi		0,0,r0,39
	bc		0,2,.L640	# ne
#     {
#         if(NvM_Current_Block.info.status_err == (NvM_RequestResultType)NVM_REQ_OK)
	.d2line		2157
	lis		r3,(NvM_Current_Block+24)@ha
	lbz		r0,(NvM_Current_Block+24)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L641	# ne
#         {
#             /* [DD-NVM00856-MGC01-V1] */
#             Set_Adm_Block_Attrib_Block_Changed(NvM_Current_Block.block_id, NVM_BLOCK_CHANGED);
	.d2line		2160
.Llo556:
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r5,NvM_BlockManagementTable@l(r3)
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r7,(NvM_Current_Block+4)@l(r4)
	rlwinm		r7,r7,3,13,28
	se_add		r5,r7
	lwz		r0,4(r5)
	.diab.bseti		r0,2
	lwz		r5,NvM_BlockManagementTable@l(r3)
	se_add		r5,r7
	stw		r0,4(r5)
#             Set_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id, NVM_BLOCK_VALID);
	.d2line		2161
	lwz		r5,NvM_BlockManagementTable@l(r3)
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r5,r0
	lwz		r5,4(r5)
	.diab.bseti		r5,1
	lwz		r6,NvM_BlockManagementTable@l(r3)
	se_add		r6,r0
	stw		r5,4(r6)
#             /* [DD-NVM00396-MGC01-V1] [DD-NVM00862-MGC01-V1] */
#             Set_Adm_Block_Error_Status(NvM_Current_Block.block_id, (NvM_RequestResultType)NVM_REQ_OK);
	.d2line		2163
	diab.li		r0,0
	lwz		r3,NvM_BlockManagementTable@l(r3)
	lhz		r4,(NvM_Current_Block+4)@l(r4)
	rlwinm		r4,r4,3,13,28
	se_add		r3,r4
	stb		r0,1(r3)
	b		.L642
.L641:
#         }
#         else
#         {
#             multi_block_err_found = TRUE;
	.d2line		2167
	diab.li		r0,1
	lis		r3,multi_block_err_found@ha
	e_add16i		r3,r3,multi_block_err_found@l
	stb		r0,0(r3)
#             /* [DD-NVM00396-MGC01-V1] */
#             Set_Adm_Block_Error_Status(NvM_Current_Block.block_id, NvM_Current_Block.info.status_err);
	.d2line		2169
	lis		r3,(NvM_Current_Block+24)@ha
	lbz		r0,(NvM_Current_Block+24)@l(r3)
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r4,NvM_BlockManagementTable@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,3,13,28
	se_add		r3,r4
	stb		r0,1(r3)
.L642:
#         }
# 
#         NvM_CallSingleBlockCallback(NvM_Current_Block.block_id, NVM_VALIDATE_ALL_ID);
	.d2line		2172
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,25
	bl		NvM_CallSingleBlockCallback
#         Set_Sub_State_Machine(NVM_SUBSTATE_VALIDATEALL_SELECT_BLOCKS);
	.d2line		2173
	diab.li		r0,7
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
#         tmp_stop_processing = FALSE;
	.d2line		2174
	diab.li		r31,0		# tmp_stop_processing=r31
.L640:
#     }
#     return tmp_stop_processing;
	.d2line		2176
.Llo557:
	rlwinm		r3,r31,0,24,31		# tmp_stop_processing=r31
# }
	.d2line		2177
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo558:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2131:
	.type		NvM_ActSubStateValidateAllValidate,@function
	.size		NvM_ActSubStateValidateAllValidate,.-NvM_ActSubStateValidateAllValidate
# Number of nodes = 120

# Allocations for NvM_ActSubStateValidateAllValidate
#	?a4		tmp_stop_processing
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateValidateAllOperationDone(void)
	.align		1
	.section	.text_vle
        .d2line         2180,31
#$$ld
.L2137:

#$$bf	NvM_ActSubStateValidateAllOperationDone,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.d2_cfa_start __cie
NvM_ActSubStateValidateAllOperationDone:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     if(FALSE == multi_block_err_found)
	.d2line		2182
	lis		r3,multi_block_err_found@ha
	lbz		r0,multi_block_err_found@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L647	# ne
#     {
#         /* [DD-NVM00393-MGC01-V1] [DD-NVM00270-MGC01-V1] */
#         Set_Adm_Block_Error_Status(NVM_BLOCK_0, (NvM_RequestResultType)NVM_REQ_OK);
	.d2line		2185
	diab.li		r0,0
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	stb		r0,1(r3)
	b		.L648
.L647:
#     }
#     else
#     {
#         /* [DD-NVM00393-MGC01-V1] */
#         Set_Adm_Block_Error_Status(NVM_BLOCK_0, (NvM_RequestResultType)NVM_REQ_NOT_OK);
	.d2line		2190
	diab.li		r0,1
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	stb		r0,1(r3)
.L648:
#     }
# 
#     return TRUE;
	.d2line		2193
	diab.li		r3,1
# }
	.d2line		2194
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2138:
	.type		NvM_ActSubStateValidateAllOperationDone,@function
	.size		NvM_ActSubStateValidateAllOperationDone,.-NvM_ActSubStateValidateAllOperationDone
# Number of nodes = 23

# Allocations for NvM_ActSubStateValidateAllOperationDone
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateMultiBlockOperationDone(void)
	.align		1
	.section	.text_vle
        .d2line         2209,31
#$$ld
.L2142:

#$$bf	NvM_ActSubStateMultiBlockOperationDone,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateMultiBlockOperationDone:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    if(FALSE==multi_block_err_found)
	.d2line		2211
	lis		r3,multi_block_err_found@ha
	lbz		r0,multi_block_err_found@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L652	# ne
#    {
#       /* [DD-NVM00393-MGC01-V1] [DD-NVM00270-MGC01-V1] */
#       Set_Adm_Block_Error_Status(NVM_BLOCK_0,(NvM_RequestResultType)NVM_REQ_OK);
	.d2line		2214
	diab.li		r0,0
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	stb		r0,1(r3)
	b		.L653
.L652:
#    }
#    else
#    {
#       /* [DD-NVM00393-MGC01-V1] [DD-NVM00301-MGC01-V1] [DD-NVM00318-MGC01-V1] */
#       Set_Adm_Block_Error_Status(NVM_BLOCK_0,(NvM_RequestResultType)NVM_REQ_NOT_OK);
	.d2line		2219
	diab.li		r0,1
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	stb		r0,1(r3)
.L653:
#    }
# 
#    if (TRUE == NvM_Common.NvM_DrvModeSwitch)
	.d2line		2222
	lis		r3,(NvM_Common+35)@ha
	lbz		r0,(NvM_Common+35)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L654	# ne
#    {
#       /* [DD-NVM00427-MGC01-V1] [DD-NVM00431-MGC01-V1] */
#       MemIf_SetMode(MEMIF_MODE_SLOW);
	.d2line		2225
	diab.li		r3,0
	bl		Ea_SetMode
.L654:
#    }
# 
#    /* [DD-NVM00745-MGC01-V1] */
#    if(TRUE == NvM_Common.NvM_BswMMultiBlk)
	.d2line		2229
	lis		r3,(NvM_Common+34)@ha
	lbz		r0,(NvM_Common+34)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L655	# ne
#    {
#       NvM_Common.NvM_BswMJobModeCallback(NvM_Current_Block.service_id, Get_Adm_Block_Error_Status(NVM_BLOCK_0));
	.d2line		2231
	lis		r3,(NvM_Common+16)@ha
	lwz		r0,(NvM_Common+16)@l(r3)
	mtspr		ctr,r0
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	lbz		r4,1(r3)
	lis		r3,NvM_Current_Block@ha
	lwz		r3,NvM_Current_Block@l(r3)
	rlwinm		r3,r3,0,24,31
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
	b		.L656
.L655:
#    }
#    else
#    {
#       /* [DD-NVM00260-MGC01-V1] */
#       NvM_CallMultiBlockCallback(NvM_Current_Block.service_id);
	.d2line		2236
	lis		r3,NvM_Current_Block@ha
	lwz		r3,NvM_Current_Block@l(r3)
	bl		NvM_CallMultiBlockCallback
.L656:
#    }
# 
#    return TRUE;
	.d2line		2239
	diab.li		r3,1
# }
	.d2line		2240
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2143:
	.type		NvM_ActSubStateMultiBlockOperationDone,@function
	.size		NvM_ActSubStateMultiBlockOperationDone,.-NvM_ActSubStateMultiBlockOperationDone
# Number of nodes = 71

# Allocations for NvM_ActSubStateMultiBlockOperationDone
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateReadBlockInit(void)
	.align		1
	.section	.text_vle
        .d2line         2250,31
#$$ld
.L2147:

#$$bf	NvM_ActSubStateReadBlockInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
NvM_ActSubStateReadBlockInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    NvM_Current_Block.info.state=NVM_BLOCK_NV_READ_INIT;
	.d2line		2252
	diab.li		r3,0
	lis		r4,(NvM_Current_Block+12)@ha
	stw		r3,(NvM_Current_Block+12)@l(r4)
#    Set_Sub_State_Machine(NVM_SUBSTATE_READBLOCK_READING);
	.d2line		2253
	diab.li		r4,12
	lis		r5,NvM_SubStateDbg@ha
	e_add16i		r5,r5,NvM_SubStateDbg@l
	stw		r4,0(r5)
#    return FALSE;
# }
	.d2line		2255
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2148:
	.type		NvM_ActSubStateReadBlockInit,@function
	.size		NvM_ActSubStateReadBlockInit,.-NvM_ActSubStateReadBlockInit
# Number of nodes = 12

# Allocations for NvM_ActSubStateReadBlockInit
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateReadBlockReading(void)
	.align		1
	.section	.text_vle
        .d2line         2265,31
#$$ld
.L2152:

#$$bf	NvM_ActSubStateReadBlockReading,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateReadBlockReading:
.Llo559:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing=TRUE;
	.d2line		2267
	diab.li		r31,1		# tmp_stop_processing=r31
# 
#    NvM_ProcessReadingNvBlockStates(&NvM_Current_Block);
	.d2line		2269
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	bl		NvM_ProcessReadingNvBlockStates
# 
#    if(NvM_Current_Block.info.state==NVM_BLOCK_NV_READ_DONE)
	.d2line		2271
	lis		r3,(NvM_Current_Block+12)@ha
	lwz		r0,(NvM_Current_Block+12)@l(r3)
	se_cmpi		r0,7
	bc		0,2,.L664	# ne
#    {
#       tmp_stop_processing=FALSE;
	.d2line		2273
	diab.li		r31,0		# tmp_stop_processing=r31
#       if(    ((NvM_RequestResultType)NVM_REQ_OK == NvM_Current_Block.info.status_err)
	.d2line		2274
	lis		r3,(NvM_Current_Block+24)@ha
	lbz		r0,(NvM_Current_Block+24)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L665	# ne
	lis		r3,(NvM_Current_Block+20)@ha
	lwz		r0,(NvM_Current_Block+20)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L665	# ne
#           && (NVM_DEM_EVENT_E_NO_ERROR == NvM_Current_Block.info.dem_err))
#       {
#          /* block read without errors [DD-NVM00200-MGC01-V1] */
#          Set_Adm_Block_Attrib_Block_Valid (NvM_Current_Block.block_id,NVM_BLOCK_VALID);
	.d2line		2278
	lis		r5,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r6,4(r3)
	.diab.bseti		r6,1
	lwz		r3,NvM_BlockManagementTable@l(r5)
	se_add		r3,r0
	stw		r6,4(r3)
#          Set_Adm_Block_Attrib_Block_Changed (NvM_Current_Block.block_id,NVM_BLOCK_UNCHANGED);
	.d2line		2279
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r3,4(r3)
	.diab.bclri		r3,2
	lwz		r5,NvM_BlockManagementTable@l(r5)
	se_add		r5,r0
	stw		r3,4(r5)
# 
#          /* [DD-NVM00316-MGC01-V1] */
#          if(Is_Conf_Block_Type_Write_Once(NvM_Current_Block.block_id))
	.d2line		2282
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,28,28
	se_cmpi		r0,8
	bc		0,2,.L666	# ne
#          {
#             /* [DD-NVM00397-MGC01-V1] */
#             Set_Adm_Block_Attrib_Wr_Protection (NvM_Current_Block.block_id,NVM_WR_PROTECTION_ON);
	.d2line		2285
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r0,NvM_BlockManagementTable@l(r4)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r5,(NvM_Current_Block+4)@l(r3)
	rlwinm		r5,r5,3,13,28
	add		r3,r0,r5
	lwz		r0,4(r3)
	.diab.bseti		r0,0
	lwz		r3,NvM_BlockManagementTable@l(r4)
	se_add		r5,r3
	stw		r0,4(r5)
.L666:
#          }
#          /* [DD-NVM00573-MGC01-V1] [DD-NVM00574-MGC01-V1] */
#          Set_Sub_State_Machine (NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		2288
	diab.li		r0,9
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L664
.L665:
#       }
#       else
#       {
#           NvM_Call_Dem_ReportErrorStatus(NvM_Current_Block.block_id, NvM_Current_Block.info.dem_err, DEM_EVENT_STATUS_FAILED);
	.d2line		2292
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	lis		r4,(NvM_Current_Block+20)@ha
	lwz		r4,(NvM_Current_Block+20)@l(r4)
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
# 
#           if(TRUE == NvM_BlockMirrorError)
	.d2line		2294
	lis		r3,NvM_BlockMirrorError@ha
	lbz		r0,NvM_BlockMirrorError@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L668	# ne
#           {
#               /* The request will be postponed */
#               Set_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id, NVM_BLOCK_INVALID);
	.d2line		2297
	lis		r5,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r6,4(r3)
	.diab.bclri		r6,1
	lwz		r3,NvM_BlockManagementTable@l(r5)
	se_add		r3,r0
	stw		r6,4(r3)
#               Set_Adm_Block_Attrib_Block_Changed(NvM_Current_Block.block_id, NVM_BLOCK_UNCHANGED);
	.d2line		2298
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r3,4(r3)
	.diab.bclri		r3,2
	lwz		r4,NvM_BlockManagementTable@l(r5)
	se_add		r4,r0
	stw		r3,4(r4)
# 
#               NvM_Current_Block.info.status_err=(NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		2300
	diab.li		r0,1
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
#               Set_Sub_State_Machine(NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		2301
	diab.li		r0,9
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L664
.L668:
#           }
#           else
#           {
#               /* Dataset block cannot call for restoring default data. [DD-NVM00572-MGC01-V1] */
#               if((!Is_Conf_Block_Type_Dataset(NvM_Current_Block.block_id))
	.d2line		2306
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,2
	bc		1,2,.L670	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,36(r3)
	se_cmpi		r0,0
	bc		0,2,.L672	# ne
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,40(r3)
	se_cmpi		r0,0
	bc		1,2,.L670	# eq
.L672:
#                       && (Is_Conf_Block_Default_Data(NvM_Current_Block.block_id) || Is_Conf_Block_Init_Callback(NvM_Current_Block.block_id)))
#               {
#                   /* [DD-NVM00047-MGC01-V1] [DD-NVM00389-MGC01-V1] [DD-NVM00390-MGC01-V1] [DD-NVM00575-MGC01-V1] */
#                   /* [DD-NVM00202-MGC01-V1] [DD-NVM00657-MGC01-V1] [DD-NVM00657-MGC02-V1] */
#                   NvM_RestoreDefaultData(NvM_Current_Block.block_id);
	.d2line		2311
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	bl		NvM_RestoreDefaultData
#                   Set_Crc_State_Machine(NVM_CALCULATION_CRC_INIT);
	.d2line		2312
	diab.li		r0,0
	lis		r3,(NvM_Data_Crc+4)@ha
	stw		r0,(NvM_Data_Crc+4)@l(r3)
#                   Set_Sub_State_Machine(NVM_SUBSTATE_READBLOCK_VALIDATE);
	.d2line		2313
	diab.li		r0,13
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L664
.L670:
#               }
#               else
#               {
#                   /* NvM_Current_Block.info.status_err has been already set [DD-NVM00658-MGC01-V1] */
#                   /* [DD-NVM00680-MGC01-V1] */
#                   Set_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id, NVM_BLOCK_INVALID);
	.d2line		2319
	lis		r5,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r6,4(r3)
	.diab.bclri		r6,1
	lwz		r3,NvM_BlockManagementTable@l(r5)
	se_add		r3,r0
	stw		r6,4(r3)
#                   Set_Adm_Block_Attrib_Block_Changed(NvM_Current_Block.block_id, NVM_BLOCK_UNCHANGED);
	.d2line		2320
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r3,4(r3)
	.diab.bclri		r3,2
	lwz		r4,NvM_BlockManagementTable@l(r5)
	se_add		r4,r0
	stw		r3,4(r4)
#                   Set_Sub_State_Machine(NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		2321
	diab.li		r0,9
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
.L664:
#               }
#           }
#       }
#    }
#    return tmp_stop_processing;
	.d2line		2326
	rlwinm		r3,r31,0,24,31		# tmp_stop_processing=r31
# }
	.d2line		2327
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo560:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2153:
	.type		NvM_ActSubStateReadBlockReading,@function
	.size		NvM_ActSubStateReadBlockReading,.-NvM_ActSubStateReadBlockReading
# Number of nodes = 299

# Allocations for NvM_ActSubStateReadBlockReading
#	?a4		tmp_stop_processing
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateReadBlockValidate(void)
	.align		1
	.section	.text_vle
        .d2line         2339,31
#$$ld
.L2159:

#$$bf	NvM_ActSubStateReadBlockValidate,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateReadBlockValidate:
.Llo561:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing=TRUE;
	.d2line		2341
	diab.li		r31,1		# tmp_stop_processing=r31
#    VAR(NvM_CalculationCrcStateType,AUTOMATIC) tmp_crc_state = NvM_ValidateCrc(&NvM_Current_Block,NVM_UPDATE_CRC_FIELD,NvM_Common.NvM_RamMirrorPtr,FALSE);
	.d2line		2342
	lis		r3,(NvM_Common+24)@ha
	lwz		r5,(NvM_Common+24)@l(r3)
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	diab.li		r4,0
	diab.li		r6,0
	bl		NvM_ValidateCrc
.Llo563:
	mr		r3,r3		# tmp_crc_state=r3 tmp_crc_state=r3
# 
#    /* CRC configured, calculation finished, or CRC not configured */
#    if(0U!=(((uint8)tmp_crc_state) & NVM_CALCULATION_CRC_FINISHED_MASK))
	.d2line		2345
	mr		r3,r3		# tmp_crc_state=r3 tmp_crc_state=r3
.Llo564:
	rlwinm		r3,r3,0,24,31
	se_btsti		r3,30
	bc		1,2,.L680	# eq
#    {
#       /* [DD-NVM00366-MGC01-V1] */
#       Set_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id,NVM_BLOCK_VALID);
	.d2line		2348
	lis		r5,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r6,4(r3)
	.diab.bseti		r6,1
	lwz		r3,NvM_BlockManagementTable@l(r5)
	se_add		r3,r0
	stw		r6,4(r3)
#       Set_Adm_Block_Attrib_Block_Changed (NvM_Current_Block.block_id,NVM_BLOCK_CHANGED);
	.d2line		2349
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r3,4(r3)
	.diab.bseti		r3,2
	lwz		r4,NvM_BlockManagementTable@l(r5)
	se_add		r4,r0
	stw		r3,4(r4)
#       Set_Sub_State_Machine (NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		2350
	diab.li		r0,9
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
#       tmp_stop_processing=FALSE;
	.d2line		2351
	diab.li		r31,0		# tmp_stop_processing=r31
.L680:
#    }
# 
#    return tmp_stop_processing;
	.d2line		2354
	rlwinm		r3,r31,0,24,31		# tmp_stop_processing=r31
# }
	.d2line		2355
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo562:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2160:
	.type		NvM_ActSubStateReadBlockValidate,@function
	.size		NvM_ActSubStateReadBlockValidate,.-NvM_ActSubStateReadBlockValidate
# Number of nodes = 71

# Allocations for NvM_ActSubStateReadBlockValidate
#	?a4		tmp_stop_processing
#	?a5		tmp_crc_state
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateRestoreBlockDefaults(void)
	.align		1
	.section	.text_vle
        .d2line         2369,31
#$$ld
.L2168:

#$$bf	NvM_ActSubStateRestoreBlockDefaults,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateRestoreBlockDefaults:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /* [DD-NVM00012-MGC01-V1] */
#    NvM_RestoreDefaultData(NvM_Current_Block.block_id);
	.d2line		2372
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	bl		NvM_RestoreDefaultData
#    /* [DD-NVM00229-MGC01-V1] */
#    Set_Crc_State_Machine(NVM_CALCULATION_CRC_INIT);
	.d2line		2374
	diab.li		r3,0
	lis		r4,(NvM_Data_Crc+4)@ha
	stw		r3,(NvM_Data_Crc+4)@l(r4)
#    /* [DD-NVM00228-MGC01-V1] */
#    Set_Sub_State_Machine(NVM_SUBSTATE_RESTOREBLOCK_VALIDATE);
	.d2line		2376
	diab.li		r4,15
	lis		r5,NvM_SubStateDbg@ha
	e_add16i		r5,r5,NvM_SubStateDbg@l
	stw		r4,0(r5)
#    return FALSE;
# }
	.d2line		2378
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2169:
	.type		NvM_ActSubStateRestoreBlockDefaults,@function
	.size		NvM_ActSubStateRestoreBlockDefaults,.-NvM_ActSubStateRestoreBlockDefaults
# Number of nodes = 21

# Allocations for NvM_ActSubStateRestoreBlockDefaults
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateRestoreBlockValidate(void)
	.align		1
	.section	.text_vle
        .d2line         2390,31
#$$ld
.L2173:

#$$bf	NvM_ActSubStateRestoreBlockValidate,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateRestoreBlockValidate:
.Llo565:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing=TRUE;
	.d2line		2392
	diab.li		r31,1		# tmp_stop_processing=r31
#    /* [DD-NVM00229-MGC01-V1] */
#    VAR(NvM_CalculationCrcStateType,AUTOMATIC) tmp_crc_state = NvM_ValidateCrc(&NvM_Current_Block,NVM_UPDATE_CRC_FIELD,NvM_Common.NvM_RamMirrorPtr,FALSE);
	.d2line		2394
	lis		r3,(NvM_Common+24)@ha
	lwz		r5,(NvM_Common+24)@l(r3)
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	diab.li		r4,0
	diab.li		r6,0
	bl		NvM_ValidateCrc
.Llo567:
	mr		r3,r3		# tmp_crc_state=r3 tmp_crc_state=r3
# 
#    /* CRC configured, calculation finished, or CRC not configured */
#    if(0U!=(((uint8)tmp_crc_state) & NVM_CALCULATION_CRC_FINISHED_MASK))
	.d2line		2397
	mr		r3,r3		# tmp_crc_state=r3 tmp_crc_state=r3
.Llo568:
	rlwinm		r3,r3,0,24,31
	se_btsti		r3,30
	bc		1,2,.L684	# eq
#    {
#       /* [DD-NVM00228-MGC01-V1] */
#       Set_Adm_Block_Attrib_Block_Valid(NvM_Current_Block.block_id,NVM_BLOCK_VALID);
	.d2line		2400
	lis		r5,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r6,4(r3)
	.diab.bseti		r6,1
	lwz		r3,NvM_BlockManagementTable@l(r5)
	se_add		r3,r0
	stw		r6,4(r3)
#       Set_Adm_Block_Attrib_Block_Changed (NvM_Current_Block.block_id,NVM_BLOCK_CHANGED);
	.d2line		2401
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r3,4(r3)
	.diab.bseti		r3,2
	lwz		r4,NvM_BlockManagementTable@l(r5)
	se_add		r4,r0
	stw		r3,4(r4)
#       /* [DD-NVM00270-MGC01-V1] */
#       NvM_Current_Block.info.status_err=(NvM_RequestResultType)NVM_REQ_OK;
	.d2line		2403
	diab.li		r31,0		# tmp_stop_processing=r31
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r31,(NvM_Current_Block+24)@l(r3)		# tmp_stop_processing=r31
#       Set_Sub_State_Machine(NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		2404
	diab.li		r0,9
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
#       tmp_stop_processing=FALSE;
.L684:
#    }
#    return tmp_stop_processing;
	.d2line		2407
	rlwinm		r3,r31,0,24,31		# tmp_stop_processing=r31
# }
	.d2line		2408
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo566:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2174:
	.type		NvM_ActSubStateRestoreBlockValidate,@function
	.size		NvM_ActSubStateRestoreBlockValidate,.-NvM_ActSubStateRestoreBlockValidate
# Number of nodes = 78

# Allocations for NvM_ActSubStateRestoreBlockValidate
#	?a4		tmp_stop_processing
#	?a5		tmp_crc_state
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateWriteBlockInit(void)
	.align		1
	.section	.text_vle
        .d2line         2418,31
#$$ld
.L2182:

#$$bf	NvM_ActSubStateWriteBlockInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
NvM_ActSubStateWriteBlockInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    NvM_Current_Block.info.state = NVM_BLOCK_NV_WRITE_PREINIT;
	.d2line		2420
	diab.li		r3,8
	lis		r4,(NvM_Current_Block+12)@ha
	stw		r3,(NvM_Current_Block+12)@l(r4)
#    NvM_WriteRepeatMirrorCount = 0;
	.d2line		2421
	diab.li		r3,0
	lis		r4,NvM_WriteRepeatMirrorCount@ha
	e_add16i		r4,r4,NvM_WriteRepeatMirrorCount@l
	stb		r3,0(r4)
#    NvM_BlockMirrorError = FALSE;
	.d2line		2422
	lis		r4,NvM_BlockMirrorError@ha
	e_add16i		r4,r4,NvM_BlockMirrorError@l
	stb		r3,0(r4)
# 
#    Set_Sub_State_Machine(NVM_SUBSTATE_WRITEBLOCK_WRITING);
	.d2line		2424
	diab.li		r4,17
	lis		r5,NvM_SubStateDbg@ha
	e_add16i		r5,r5,NvM_SubStateDbg@l
	stw		r4,0(r5)
#    return FALSE;
# }
	.d2line		2426
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2183:
	.type		NvM_ActSubStateWriteBlockInit,@function
	.size		NvM_ActSubStateWriteBlockInit,.-NvM_ActSubStateWriteBlockInit
# Number of nodes = 18

# Allocations for NvM_ActSubStateWriteBlockInit
# static FUNC(void, NVM_CODE) NvM_SetAdminBlockStatusAfterWrite
	.align		1
	.section	.text_vle
        .d2line         2433,29
#$$ld
.L2187:

#$$bf	NvM_SetAdminBlockStatusAfterWrite,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_SetAdminBlockStatusAfterWrite:
.Llo569:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# arg_block=r4 arg_block=r3
	.d2prologue_end
# (
#     P2VAR(NvM_BlockRequestType, AUTOMATIC, NVM_APPL_DATA) arg_block
# )
# {
#     if(((NvM_RequestResultType)NVM_REQ_OK == arg_block->info.status_err)
	.d2line		2438
	lbz		r0,24(r4)		# arg_block=r4
	se_cmpi		r0,0
	bc		0,2,.L688	# ne
.Llo570:
	lwz		r0,20(r4)		# arg_block=r4
.Llo571:
	se_cmpi		r0,0
	bc		0,2,.L688	# ne
#      && (NVM_DEM_EVENT_E_NO_ERROR == arg_block->info.dem_err)
#       )
#     {
#         /* data in NV the same as in RAM block [DD-NVM00472-MGC01-V1] */
#         Set_Adm_Block_Attrib_Block_Changed (arg_block->block_id, NVM_BLOCK_UNCHANGED);
	.d2line		2443
	lis		r5,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lhz		r0,4(r4)		# arg_block=r4
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r6,4(r3)
	.diab.bclri		r6,2
	lwz		r3,NvM_BlockManagementTable@l(r5)
	se_add		r3,r0
	stw		r6,4(r3)
#         Set_Adm_Block_Attrib_Block_Valid(arg_block->block_id, NVM_BLOCK_VALID);
	.d2line		2444
	lwz		r3,NvM_BlockManagementTable@l(r5)
	lhz		r0,4(r4)		# arg_block=r4
	rlwinm		r0,r0,3,13,28
	se_add		r3,r0
	lwz		r3,4(r3)
	.diab.bseti		r3,1
	lwz		r5,NvM_BlockManagementTable@l(r5)
	se_add		r5,r0
	stw		r3,4(r5)
# 
#         if(Is_Conf_Block_Type_Write_Once(arg_block->block_id))
	.d2line		2446
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r3,4(r4)		# arg_block=r4
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,28,28
	se_cmpi		r0,8
	bc		0,2,.L687	# ne
#         {
#             /* [DD-NVM00397-MGC01-V1] [DD-NVM00328-MGC01-V1] */
#             Set_Adm_Block_Attrib_Wr_Protection (arg_block->block_id, NVM_WR_PROTECTION_ON);
	.d2line		2449
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r5,NvM_BlockManagementTable@l(r3)
	lhz		r0,4(r4)		# arg_block=r4
	rlwinm		r0,r0,3,13,28
	add		r4,r5,r0		# arg_block=r4
	lwz		r4,4(r4)		# arg_block=r4 arg_block=r4
	.diab.bseti		r4,0		# arg_block=r4
	lwz		r3,NvM_BlockManagementTable@l(r3)
	se_add		r3,r0
	stw		r4,4(r3)		# arg_block=r4
	b		.L687
.L688:
#         }
#     }
#     else
#     {
#         NvM_Call_Dem_ReportErrorStatus(arg_block->block_id, arg_block->info.dem_err, DEM_EVENT_STATUS_FAILED);
	.d2line		2454
.Llo572:
	lhz		r3,4(r4)		# arg_block=r4
.Llo573:
	lwz		r4,20(r4)		# arg_block=r4 arg_block=r4
.Llo574:
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
.L687:
#     }
# }
	.d2line		2456
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2188:
	.type		NvM_SetAdminBlockStatusAfterWrite,@function
	.size		NvM_SetAdminBlockStatusAfterWrite,.-NvM_SetAdminBlockStatusAfterWrite
# Number of nodes = 101

# Allocations for NvM_SetAdminBlockStatusAfterWrite
#	?a4		arg_block
# static FUNC(boolean, NVM_CODE) NvM_ActSubStateWriteBlockWriting(void)
	.align		1
	.section	.text_vle
        .d2line         2468,32
#$$ld
.L2193:

#$$bf	NvM_ActSubStateWriteBlockWriting,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateWriteBlockWriting:
.Llo575:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(boolean, AUTOMATIC) tmp_stop_processing = TRUE;
	.d2line		2470
	diab.li		r31,1		# tmp_stop_processing=r31
# 
#     NvM_ProcessWritingNvBlockStates(&NvM_Current_Block);
	.d2line		2472
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	bl		NvM_ProcessWritingNvBlockStates
# 
#     if(NVM_BLOCK_NV_WRITE_DONE == NvM_Current_Block.info.state)
	.d2line		2474
	lis		r3,(NvM_Current_Block+12)@ha
	lwz		r0,(NvM_Current_Block+12)@l(r3)
	se_cmpi		r0,16
	bc		0,2,.L694	# ne
#     {
#         NvM_SetAdminBlockStatusAfterWrite(&NvM_Current_Block);
	.d2line		2476
	lis		r3,NvM_Current_Block@ha
	e_add16i		r3,r3,NvM_Current_Block@l
	bl		NvM_SetAdminBlockStatusAfterWrite
# 
#         Set_Sub_State_Machine(NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		2478
	diab.li		r0,9
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
#         tmp_stop_processing = FALSE;
	.d2line		2479
	diab.li		r31,0		# tmp_stop_processing=r31
.L694:
#     }
#     return tmp_stop_processing;
	.d2line		2481
	rlwinm		r3,r31,0,24,31		# tmp_stop_processing=r31
# }
	.d2line		2482
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo576:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2194:
	.type		NvM_ActSubStateWriteBlockWriting,@function
	.size		NvM_ActSubStateWriteBlockWriting,.-NvM_ActSubStateWriteBlockWriting
# Number of nodes = 28

# Allocations for NvM_ActSubStateWriteBlockWriting
#	?a4		tmp_stop_processing
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateEraseBlockInit(void) /* [DD-NVM00662-MGC01-V1] */
	.align		1
	.section	.text_vle
        .d2line         2493,31
#$$ld
.L2200:

#$$bf	NvM_ActSubStateEraseBlockInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.d2_cfa_start __cie
NvM_ActSubStateEraseBlockInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /*read data set index to temporary location*/
#    NvM_Current_Block.info.dataset = Get_Adm_Block_Dataset_Idx_U16(NvM_Current_Block.block_id);
	.d2line		2496
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	lbzx		r0,r3,r0
	lis		r3,(NvM_Current_Block+16)@ha
	sth		r0,(NvM_Current_Block+16)@l(r3)
# 
#    if(      (Is_Conf_Block_Type_Native(NvM_Current_Block.block_id))
	.d2line		2498
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,6,10,25
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,0
	bc		1,2,.L698	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,1
	bc		0,2,.L697	# ne
.L698:
#          || (Is_Conf_Block_Type_Redundant(NvM_Current_Block.block_id)) )
#    {
#       /*redundant or native block - we start read from first NV block*/
#       NvM_Current_Block.info.dataset = NVM_REDUNDANT_FIRST_BLOCK;
	.d2line		2502
	diab.li		r0,0
	lis		r3,(NvM_Current_Block+16)@ha
	sth		r0,(NvM_Current_Block+16)@l(r3)
.L697:
#    }
# 
#    Set_Sub_State_Machine(NVM_SUBSTATE_ERASEBLOCK_START);
	.d2line		2505
	diab.li		r3,19
	lis		r4,NvM_SubStateDbg@ha
	e_add16i		r4,r4,NvM_SubStateDbg@l
	stw		r3,0(r4)
#    return FALSE;
	.d2line		2506
	diab.li		r3,0
# }
	.d2line		2507
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2201:
	.type		NvM_ActSubStateEraseBlockInit,@function
	.size		NvM_ActSubStateEraseBlockInit,.-NvM_ActSubStateEraseBlockInit
# Number of nodes = 70

# Allocations for NvM_ActSubStateEraseBlockInit
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateEraseBlockStart(void)
	.align		1
	.section	.text_vle
        .d2line         2518,31
#$$ld
.L2205:

#$$bf	NvM_ActSubStateEraseBlockStart,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateEraseBlockStart:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if (NVM_POLLING_MODE==STD_OFF)
#    VAR(MemIf_StatusType, AUTOMATIC) prevMemIfDrvStatus = NvM_MemIf_Driver_Status;
	.d2line		2521
	lis		r3,NvM_MemIf_Driver_Status@ha
	lwz		r31,NvM_MemIf_Driver_Status@l(r3)
.Llo577:
	mr		r31,r31		# prevMemIfDrvStatus=r31 prevMemIfDrvStatus=r31
#    NvM_MemIf_Driver_Status=MEMIF_BUSY;
	.d2line		2522
	diab.li		r0,2
	e_add16i		r3,r3,NvM_MemIf_Driver_Status@l
	stw		r0,0(r3)
# #endif
# 
#    /* [DD-NVM00415-MGC01-V1] [DD-NVM00416-MGC01-V1] [DD-NVM00662-MGC01-V1] */
#    if(E_OK == MemIf_EraseImmediateBlock(Get_Conf_Device_Index(NvM_Current_Block.block_id),
	.d2line		2526
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,22(r3)
	lis		r3,(NvM_Common+32)@ha
	lbz		r3,(NvM_Common+32)@l(r3)
	slw		r0,r0,r3
	lis		r3,(NvM_Current_Block+16)@ha
	lhz		r3,(NvM_Current_Block+16)@l(r3)
	se_add		r0,r3
	rlwinm		r3,r0,0,16,31
	bl		Ea_EraseImmediateBlock
	e_andi.		r3,r3,255
	bc		0,2,.L702	# ne
#                                       Get_Block_Number(NvM_Current_Block.block_id,
#                                                        NvM_Current_Block.info.dataset)
#                                       )
#       )
#    {
#       Set_Sub_State_Machine(NVM_SUBSTATE_ERASEBLOCK_INPROGRESS);
	.d2line		2532
	diab.li		r0,20
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L703
.L702:
#    }
#    else
#    {
# #if (NVM_POLLING_MODE==STD_OFF)
#       NvM_MemIf_Driver_Status=prevMemIfDrvStatus;
	.d2line		2537
	lis		r3,NvM_MemIf_Driver_Status@ha
	e_add16i		r3,r3,NvM_MemIf_Driver_Status@l
	stw		r31,0(r3)		# prevMemIfDrvStatus=r31
# #endif
#       /* [DD-NVM00271-MGC01-V1] */
#       NvM_Current_Block.info.status_err=(NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		2540
	diab.li		r5,1
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r5,(NvM_Current_Block+24)@l(r3)
#       /* [DD-NVM00663-MGC01-V1] */
#       NvM_Call_Dem_ReportErrorStatus(NvM_Current_Block.block_id, NVM_DEM_EVENT_E_REQ_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		2542
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,2
	bl		NvM_Call_Dem_ReportErrorStatus
# 
#       Set_Sub_State_Machine(NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		2544
	diab.li		r0,9
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
.L703:
#    }
# 
#    return FALSE;
	.d2line		2547
.Llo578:
	diab.li		r3,0
# }
	.d2line		2548
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
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
.L2206:
	.type		NvM_ActSubStateEraseBlockStart,@function
	.size		NvM_ActSubStateEraseBlockStart,.-NvM_ActSubStateEraseBlockStart
# Number of nodes = 75

# Allocations for NvM_ActSubStateEraseBlockStart
#	?a4		prevMemIfDrvStatus
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateEraseBlockInProgress(void)
	.align		1
	.section	.text_vle
        .d2line         2561,31
#$$ld
.L2212:

#$$bf	NvM_ActSubStateEraseBlockInProgress,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateEraseBlockInProgress:
.Llo579:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing =TRUE;
	.d2line		2563
	diab.li		r31,1		# tmp_stop_processing=r31
# 
# #if (NVM_POLLING_MODE==STD_ON)
#    /* [DD-NVM00346-MGC01-V1] */
#    if(MEMIF_IDLE == MemIf_GetStatus(Get_Conf_Device_Index(NvM_Current_Block.block_id)))
# #else
#    if(MEMIF_IDLE==NvM_MemIf_Driver_Status)
	.d2line		2569
	lis		r3,NvM_MemIf_Driver_Status@ha
	lwz		r0,NvM_MemIf_Driver_Status@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L707	# ne
# #endif
#    {
#       tmp_stop_processing=FALSE;
	.d2line		2572
	diab.li		r31,0		# tmp_stop_processing=r31
#       if(MEMIF_JOB_OK==MemIf_GetJobResult(Get_Conf_Device_Index(NvM_Current_Block.block_id)))
	.d2line		2573
	bl		Ea_GetJobResult
	se_cmpi		r3,0
	bc		0,2,.L708	# ne
#       {
#          if( (Is_Conf_Block_Type_Redundant(NvM_Current_Block.block_id))
	.d2line		2575
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,1
	bc		0,2,.L709	# ne
	lis		r3,(NvM_Current_Block+16)@ha
	lhz		r0,(NvM_Current_Block+16)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L709	# ne
#              && (NVM_REDUNDANT_FIRST_BLOCK == NvM_Current_Block.info.dataset))
#          {
#             NvM_Current_Block.info.dataset=NVM_REDUNDANT_SECOND_BLOCK;
	.d2line		2578
	diab.li		r0,1
	lis		r3,(NvM_Current_Block+16)@ha
	sth		r0,(NvM_Current_Block+16)@l(r3)
#             Set_Sub_State_Machine(NVM_SUBSTATE_ERASEBLOCK_START);
	.d2line		2579
	diab.li		r0,19
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L707
.L709:
#          }
#          else
#          {
#             /* [DD-NVM00270-MGC01-V1] [DD-NVM00269-MGC01-V1] */
#             NvM_Current_Block.info.status_err=(NvM_RequestResultType)NVM_REQ_OK;
	.d2line		2584
	diab.li		r0,0
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
#             Set_Sub_State_Machine(NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		2585
	diab.li		r0,9
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L707
.L708:
#          }
#       }
#       else /* [DD-NVM00269-MGC01-V1] */
#       {
#          /* [DD-NVM00271-MGC01-V1] */
#          NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		2591
	diab.li		r5,1
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r5,(NvM_Current_Block+24)@l(r3)
#          /* [DD-NVM00663-MGC01-V1] */
#          NvM_Call_Dem_ReportErrorStatus(NvM_Current_Block.block_id, NVM_DEM_EVENT_E_REQ_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		2593
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,2
	bl		NvM_Call_Dem_ReportErrorStatus
# 
#          Set_Sub_State_Machine(NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		2595
	diab.li		r0,9
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
.L707:
#       }
#    }
#    return tmp_stop_processing;
	.d2line		2598
	rlwinm		r3,r31,0,24,31		# tmp_stop_processing=r31
# }
	.d2line		2599
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo580:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2213:
	.type		NvM_ActSubStateEraseBlockInProgress,@function
	.size		NvM_ActSubStateEraseBlockInProgress,.-NvM_ActSubStateEraseBlockInProgress
# Number of nodes = 87

# Allocations for NvM_ActSubStateEraseBlockInProgress
#	?a4		tmp_stop_processing
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateInvalidateBlockInit(void)
	.align		1
	.section	.text_vle
        .d2line         2610,31
#$$ld
.L2219:

#$$bf	NvM_ActSubStateInvalidateBlockInit,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,cr0,lr
	.d2_cfa_start __cie
NvM_ActSubStateInvalidateBlockInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /*read data set index to temporary location*/
#    NvM_Current_Block.info.dataset = Get_Adm_Block_Dataset_Idx_U16(NvM_Current_Block.block_id);
	.d2line		2613
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,3,13,28
	lbzx		r0,r3,r0
	lis		r3,(NvM_Current_Block+16)@ha
	sth		r0,(NvM_Current_Block+16)@l(r3)
# 
#    if(   (Is_Conf_Block_Type_Native(NvM_Current_Block.block_id))
	.d2line		2615
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	lhz		r0,(NvM_Current_Block+4)@l(r4)
	rlwinm		r0,r0,6,10,25
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,0
	bc		1,2,.L717	# eq
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,1
	bc		0,2,.L716	# ne
.L717:
#          || (Is_Conf_Block_Type_Redundant(NvM_Current_Block.block_id)) )
#    {
#       /*redundant or native block - we start read from first NV block*/
#       NvM_Current_Block.info.dataset=NVM_REDUNDANT_FIRST_BLOCK;
	.d2line		2619
	diab.li		r0,0
	lis		r3,(NvM_Current_Block+16)@ha
	sth		r0,(NvM_Current_Block+16)@l(r3)
.L716:
#    }
#    Set_Sub_State_Machine(NVM_SUBSTATE_INVALIDATEBLOCK_STARTPROCESS);
	.d2line		2621
	diab.li		r3,22
	lis		r4,NvM_SubStateDbg@ha
	e_add16i		r4,r4,NvM_SubStateDbg@l
	stw		r3,0(r4)
#    return FALSE;
	.d2line		2622
	diab.li		r3,0
# }
	.d2line		2623
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2220:
	.type		NvM_ActSubStateInvalidateBlockInit,@function
	.size		NvM_ActSubStateInvalidateBlockInit,.-NvM_ActSubStateInvalidateBlockInit
# Number of nodes = 70

# Allocations for NvM_ActSubStateInvalidateBlockInit
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateInvalidateBlockStart(void)
	.align		1
	.section	.text_vle
        .d2line         2634,31
#$$ld
.L2224:

#$$bf	NvM_ActSubStateInvalidateBlockStart,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateInvalidateBlockStart:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# 
# #if (NVM_POLLING_MODE==STD_OFF)
#     VAR(MemIf_StatusType, AUTOMATIC) prevMemIfDrvStatus = NvM_MemIf_Driver_Status;
	.d2line		2638
	lis		r3,NvM_MemIf_Driver_Status@ha
	lwz		r31,NvM_MemIf_Driver_Status@l(r3)
.Llo581:
	mr		r31,r31		# prevMemIfDrvStatus=r31 prevMemIfDrvStatus=r31
#     NvM_MemIf_Driver_Status=MEMIF_BUSY;
	.d2line		2639
	diab.li		r0,2
	e_add16i		r3,r3,NvM_MemIf_Driver_Status@l
	stw		r0,0(r3)
# #endif
#    /* [DD-NVM00421-MGC01-V1] [DD-NVM00422-MGC01-V1] */
#    if(E_OK==MemIf_InvalidateBlock(Get_Conf_Device_Index(NvM_Current_Block.block_id),
	.d2line		2642
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,22(r3)
	lis		r3,(NvM_Common+32)@ha
	lbz		r3,(NvM_Common+32)@l(r3)
	slw		r0,r0,r3
	lis		r3,(NvM_Current_Block+16)@ha
	lhz		r3,(NvM_Current_Block+16)@l(r3)
	se_add		r0,r3
	rlwinm		r3,r0,0,16,31
	bl		Ea_InvalidateBlock
	e_andi.		r3,r3,255
	bc		0,2,.L721	# ne
#                                   Get_Block_Number(NvM_Current_Block.block_id,
#                                                    NvM_Current_Block.info.dataset)
#                                   )
#       )
#    {
#       Set_Sub_State_Machine(NVM_SUBSTATE_INVALIDATEBLOCK_OPN_IS_IN_PROGRESS);
	.d2line		2648
	diab.li		r0,23
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L722
.L721:
#    }
#    else
#    {
# #if (NVM_POLLING_MODE==STD_OFF)
#       NvM_MemIf_Driver_Status=prevMemIfDrvStatus;
	.d2line		2653
	lis		r3,NvM_MemIf_Driver_Status@ha
	e_add16i		r3,r3,NvM_MemIf_Driver_Status@l
	stw		r31,0(r3)		# prevMemIfDrvStatus=r31
# #endif
# 
#       NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		2656
	diab.li		r5,1
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r5,(NvM_Current_Block+24)@l(r3)
# 
#       NvM_Call_Dem_ReportErrorStatus(NvM_Current_Block.block_id, NVM_DEM_EVENT_E_REQ_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		2658
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,2
	bl		NvM_Call_Dem_ReportErrorStatus
# 
#       Set_Sub_State_Machine(NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		2660
	diab.li		r0,9
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
.L722:
#    }
#    return FALSE;
	.d2line		2662
.Llo582:
	diab.li		r3,0
# }
	.d2line		2663
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
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
.L2225:
	.type		NvM_ActSubStateInvalidateBlockStart,@function
	.size		NvM_ActSubStateInvalidateBlockStart,.-NvM_ActSubStateInvalidateBlockStart
# Number of nodes = 75

# Allocations for NvM_ActSubStateInvalidateBlockStart
#	?a4		prevMemIfDrvStatus
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateInvalidateBlockProgress(void)
	.align		1
	.section	.text_vle
        .d2line         2677,31
#$$ld
.L2231:

#$$bf	NvM_ActSubStateInvalidateBlockProgress,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateInvalidateBlockProgress:
.Llo583:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    VAR(boolean,AUTOMATIC) tmp_stop_processing =TRUE;
	.d2line		2679
	diab.li		r31,1		# tmp_stop_processing=r31
# 
# #if (NVM_POLLING_MODE==STD_ON)
#    /* [DD-NVM00346-MGC01-V1] */
#    if(MEMIF_IDLE == MemIf_GetStatus(Get_Conf_Device_Index(NvM_Current_Block.block_id)))
# #else
#    if(MEMIF_IDLE==NvM_MemIf_Driver_Status)
	.d2line		2685
	lis		r3,NvM_MemIf_Driver_Status@ha
	lwz		r0,NvM_MemIf_Driver_Status@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L726	# ne
# #endif
#    {
#       tmp_stop_processing=FALSE;
	.d2line		2688
	diab.li		r31,0		# tmp_stop_processing=r31
#       if(MEMIF_JOB_OK==MemIf_GetJobResult(Get_Conf_Device_Index(NvM_Current_Block.block_id)))
	.d2line		2689
	bl		Ea_GetJobResult
	se_cmpi		r3,0
	bc		0,2,.L727	# ne
#       {
#          if( (Is_Conf_Block_Type_Redundant(NvM_Current_Block.block_id))
	.d2line		2691
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,1
	bc		0,2,.L728	# ne
	lis		r3,(NvM_Current_Block+16)@ha
	lhz		r0,(NvM_Current_Block+16)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L728	# ne
#              && (NVM_REDUNDANT_FIRST_BLOCK== NvM_Current_Block.info.dataset))
#          {
#             /* [DD-NVM00274-MGC01-V1] */
#             NvM_Current_Block.info.dataset=NVM_REDUNDANT_SECOND_BLOCK;
	.d2line		2695
	diab.li		r0,1
	lis		r3,(NvM_Current_Block+16)@ha
	sth		r0,(NvM_Current_Block+16)@l(r3)
#             Set_Sub_State_Machine(NVM_SUBSTATE_INVALIDATEBLOCK_STARTPROCESS);
	.d2line		2696
	diab.li		r0,22
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L726
.L728:
#          }
#          else
#          {
#             /* [DD-NVM00270-MGC01-V1] [DD-NVM00274-MGC01-V1] */
#             NvM_Current_Block.info.status_err=(NvM_RequestResultType)NVM_REQ_OK;
	.d2line		2701
	diab.li		r0,0
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r0,(NvM_Current_Block+24)@l(r3)
#             Set_Sub_State_Machine(NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		2702
	diab.li		r0,9
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
	b		.L726
.L727:
#          }
#       }
#       else
#       {
#          /* [DD-NVM00275-MGC01-V1] */
#          NvM_Current_Block.info.status_err = (NvM_RequestResultType)NVM_REQ_NOT_OK;
	.d2line		2708
	diab.li		r5,1
	lis		r3,(NvM_Current_Block+24)@ha
	stb		r5,(NvM_Current_Block+24)@l(r3)
#          /* [DD-NVM00666-MGC01-V1] */
#          NvM_Call_Dem_ReportErrorStatus(NvM_Current_Block.block_id, NVM_DEM_EVENT_E_REQ_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		2710
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	diab.li		r4,2
	bl		NvM_Call_Dem_ReportErrorStatus
# 
#          Set_Sub_State_Machine(NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE);
	.d2line		2712
	diab.li		r0,9
	lis		r3,NvM_SubStateDbg@ha
	e_add16i		r3,r3,NvM_SubStateDbg@l
	stw		r0,0(r3)
.L726:
#       }
#    }
#    return tmp_stop_processing;
	.d2line		2715
	rlwinm		r3,r31,0,24,31		# tmp_stop_processing=r31
# }
	.d2line		2716
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo584:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2232:
	.type		NvM_ActSubStateInvalidateBlockProgress,@function
	.size		NvM_ActSubStateInvalidateBlockProgress,.-NvM_ActSubStateInvalidateBlockProgress
# Number of nodes = 87

# Allocations for NvM_ActSubStateInvalidateBlockProgress
#	?a4		tmp_stop_processing
# static FUNC(boolean,NVM_CODE) NvM_ActSubStateSingleBlockOperationDone(void)
	.align		1
	.section	.text_vle
        .d2line         2727,31
#$$ld
.L2238:

#$$bf	NvM_ActSubStateSingleBlockOperationDone,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_ActSubStateSingleBlockOperationDone:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if (NVM_JOB_PRIORITIZATION==STD_ON)
#    (void)NvM_ListRemoveJob(NvM_Current_Block.block_id); /* [DD-NVM00537-MGC01-V1] */
# #endif
#    /* [DD-NVM00175-MGC01-V1] */
#    Set_Adm_Block_Error_Status (NvM_Current_Block.block_id,
	.d2line		2733
	lis		r3,(NvM_Current_Block+24)@ha
	lbz		r0,(NvM_Current_Block+24)@l(r3)
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r5,NvM_BlockManagementTable@l(r3)
	lis		r4,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r4)
	rlwinm		r3,r3,3,13,28
	se_add		r3,r5
	stb		r0,1(r3)
#                                NvM_Current_Block.info.status_err);
# 
#    /* [DD-NVM00176-MGC01-V1] [DD-NVM00740-MGC01-V1] */
#    NvM_CallSingleBlockCallback (NvM_Current_Block.block_id,
	.d2line		2737
	lhz		r3,(NvM_Current_Block+4)@l(r4)
	lis		r4,NvM_Current_Block@ha
	lwz		r4,NvM_Current_Block@l(r4)
	bl		NvM_CallSingleBlockCallback
#                                 NvM_Current_Block.service_id);
#    if(Is_Conf_Block_NvMBswM_BlockStatusCheck(NvM_Current_Block.block_id))
	.d2line		2739
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r3,6,10,25
	se_add		r3,r0
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,21,21
	cmpi		0,0,r0,1024
	bc		0,2,.L735	# ne
#    {
#       /* [DD-NVM00746-MGC01-V1] */
#       NvM_Common.NvM_BswMBlockModeCallback(NvM_Current_Block.block_id,
	.d2line		2742
	lis		r3,(NvM_Common+12)@ha
	lwz		r0,(NvM_Common+12)@l(r3)
	mtspr		ctr,r0
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r0,NvM_BlockManagementTable@l(r3)
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r3,(NvM_Current_Block+4)@l(r3)
	rlwinm		r4,r3,3,13,28
	se_add		r4,r0
	lbz		r4,1(r4)
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x18 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L735:
#                                            Get_Adm_Block_Error_Status(NvM_Current_Block.block_id));
#    }
#    return TRUE;
	.d2line		2745
	diab.li		r3,1
# }
	.d2line		2746
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2239:
	.type		NvM_ActSubStateSingleBlockOperationDone,@function
	.size		NvM_ActSubStateSingleBlockOperationDone,.-NvM_ActSubStateSingleBlockOperationDone
# Number of nodes = 89

# Allocations for NvM_ActSubStateSingleBlockOperationDone
# static void NvM_CheckCrcValueSynch
	.align		1
	.section	.text_vle
        .d2line         4629,13
#$$ld
.L2243:

#$$bf	NvM_CheckCrcValueSynch,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
NvM_CheckCrcValueSynch:
.Llo585:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo626:
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# argBlockIdPtr=r0
	.d2_cfa_offset    108,-1
	sth		r4,10(r1)
	mr		r31,r3		# crcFunctionPtr=r31 crcFunctionPtr=r3
.Llo603:
	mr		r5,r5		# crc_type=r5 crc_type=r5
	.d2prologue_end
# (
#    VAR(NVM_CRC32_FUNC,AUTOMATIC) crcFunctionPtr,
#    VAR(NvM_BlockIdType,AUTOMATIC) arg_block_id,
#    VAR(NvM_BlockCrcType,AUTOMATIC) crc_type
# )
# {
#    VAR(uint32,AUTOMATIC) tmp_crc = NVM_CRC_INIT_VALUE;
	.d2line		4636
	diab.li		r3,0		# tmp_crc=r3
#    P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) argBlockIdPtr = (P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA)) &arg_block_id;
	.d2line		4637
.Llo586:
	diab.addi		r0,r1,10		# argBlockIdPtr=r0
# 
#    if(Is_Conf_Block_Static_BlockIdCheck(arg_block_id))
	.d2line		4639
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r6,(NvM_BlockManagementTable+4)@l(r4)
	lhz		r4,10(r1)
	rlwinm		r4,r4,6,10,25
	se_add		r4,r6
	lhz		r4,60(r4)
	rlwinm		r4,r4,0,22,22
	cmpi		0,0,r4,512
	bc		0,2,.L1219	# ne
#    {
#        switch (crc_type)
	.d2line		4641
.Llo587:
	mr.		r6,r5		# crc_type=r6 crc_type=?a5
	bc		1,2,.L1220	# eq
.Llo599:
	se_cmpi		r6,1
	bc		1,2,.L1222	# eq
	se_cmpi		r6,2
	bc		1,2,.L1223	# eq
	b		.L1225
.L1220:
#        {
#             case NVM_CRC8:
#             {
#                tmp_crc = (uint32)((NVM_CRC8_FUNC)crcFunctionPtr)(argBlockIdPtr,(uint32)NVM_BLOCK_HEADER_SIZE,(uint8)tmp_crc, TRUE);
	.d2line		4645
.Llo604:
	mtspr		ctr,r31		# crcFunctionPtr=ctr crcFunctionPtr=r31
	mr		r3,r0		# argBlockIdPtr=r3 argBlockIdPtr=r0
	diab.li		r4,2
	diab.li		r5,0		# crc_type=r5
	diab.li		r6,1
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x78 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo627:
	rlwinm		r3,r3,0,24,31		# argBlockIdPtr=r3 argBlockIdPtr=r3
.Llo605:
	mr		r0,r3		# tmp_crc=r0 tmp_crc=r3
#                tmp_crc = (uint32)((NVM_CRC8_FUNC)crcFunctionPtr)(Get_Conf_Ram_Block_Addr(arg_block_id), Get_Conf_Block_Length(arg_block_id), (uint8)tmp_crc, FALSE);
	.d2line		4646
	mtspr		ctr,r31		# crcFunctionPtr=ctr crcFunctionPtr=r31
	lis		r3,(NvM_BlockManagementTable+4)@ha		# argBlockIdPtr=r3
.Llo606:
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)		# argBlockIdPtr=r3
.Llo607:
	lhz		r3,10(r1)		# argBlockIdPtr=r3
	rlwinm		r3,r3,6,10,25		# argBlockIdPtr=r3 argBlockIdPtr=r3
	se_add		r3,r4		# argBlockIdPtr=r3 argBlockIdPtr=r3
	lhz		r4,20(r3)		# argBlockIdPtr=r3
	lwz		r3,32(r3)		# argBlockIdPtr=r3 argBlockIdPtr=r3
.Llo628:
	mr		r5,r0		# tmp_crc=r5 tmp_crc=r0
	rlwinm		r5,r5,0,24,31		# tmp_crc=r5 tmp_crc=r5
	mr		r5,r5		# tmp_crc=r5
	diab.li		r6,0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x78 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo588:
	rlwinm		r3,r3,0,24,31		# argBlockIdPtr=r3 argBlockIdPtr=r3
.Llo608:
	mr		r3,r3		# tmp_crc=r3 tmp_crc=r3
	b		.L1225
.L1222:
#             }break;
#             case NVM_CRC16:
#             {
#                tmp_crc = (uint32)((NVM_CRC16_FUNC)crcFunctionPtr)(argBlockIdPtr,(uint32)NVM_BLOCK_HEADER_SIZE,(uint16)tmp_crc, TRUE);
	.d2line		4650
.Llo589:
	mtspr		ctr,r31		# crcFunctionPtr=ctr crcFunctionPtr=r31
	mr		r3,r0		# argBlockIdPtr=r3 argBlockIdPtr=r0
	diab.li		r4,2
	diab.li		r5,0		# crc_type=r5
	diab.li		r6,1
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x78 0x0 0x0 0x1
#$$rs 2 u
	bcctrl		20,0
.Llo629:
	rlwinm		r3,r3,0,16,31		# argBlockIdPtr=r3 argBlockIdPtr=r3
.Llo609:
	mr		r0,r3		# tmp_crc=r0 tmp_crc=r3
#                tmp_crc = (uint32)((NVM_CRC16_FUNC)crcFunctionPtr)(Get_Conf_Ram_Block_Addr(arg_block_id), Get_Conf_Block_Length(arg_block_id), (uint16)tmp_crc, FALSE);
	.d2line		4651
	mtspr		ctr,r31		# crcFunctionPtr=ctr crcFunctionPtr=r31
	lis		r3,(NvM_BlockManagementTable+4)@ha		# argBlockIdPtr=r3
.Llo610:
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)		# argBlockIdPtr=r3
.Llo611:
	lhz		r3,10(r1)		# argBlockIdPtr=r3
	rlwinm		r3,r3,6,10,25		# argBlockIdPtr=r3 argBlockIdPtr=r3
	se_add		r3,r4		# argBlockIdPtr=r3 argBlockIdPtr=r3
	lhz		r4,20(r3)		# argBlockIdPtr=r3
	lwz		r3,32(r3)		# argBlockIdPtr=r3 argBlockIdPtr=r3
.Llo630:
	mr		r5,r0		# tmp_crc=r5 tmp_crc=r0
	rlwinm		r5,r5,0,16,31		# tmp_crc=r5 tmp_crc=r5
	mr		r5,r5		# tmp_crc=r5
	diab.li		r6,0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x78 0x0 0x0 0x1
#$$rs 2 u
	bcctrl		20,0
.Llo590:
	rlwinm		r3,r3,0,16,31		# argBlockIdPtr=r3 argBlockIdPtr=r3
.Llo612:
	mr		r3,r3		# tmp_crc=r3 tmp_crc=r3
	b		.L1225
.L1223:
#             }break;
#             case NVM_CRC32:
#             {
#                tmp_crc = crcFunctionPtr(argBlockIdPtr,(uint32)NVM_BLOCK_HEADER_SIZE,tmp_crc, TRUE);
	.d2line		4655
.Llo591:
	mtspr		ctr,r31		# crcFunctionPtr=ctr crcFunctionPtr=r31
	mr		r3,r0		# argBlockIdPtr=r3 argBlockIdPtr=r0
	diab.li		r4,2
	diab.li		r5,0		# crc_type=r5
	diab.li		r6,1
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x78 0x0 0x0 0x1
#$$rs 4 u
	bcctrl		20,0
.Llo613:
	mr		r5,r3		# tmp_crc=r5 tmp_crc=r3
#                tmp_crc = crcFunctionPtr(Get_Conf_Ram_Block_Addr(arg_block_id),Get_Conf_Block_Length(arg_block_id),tmp_crc, FALSE);
	.d2line		4656
	mtspr		ctr,r31		# crcFunctionPtr=ctr crcFunctionPtr=r31
	lis		r3,(NvM_BlockManagementTable+4)@ha		# argBlockIdPtr=r3
.Llo614:
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# argBlockIdPtr=r0 argBlockIdPtr=r3
	lhz		r3,10(r1)		# argBlockIdPtr=r3
.Llo631:
	rlwinm		r3,r3,6,10,25		# argBlockIdPtr=r3 argBlockIdPtr=r3
.Llo632:
	se_add		r3,r0		# argBlockIdPtr=r3 argBlockIdPtr=r3 argBlockIdPtr=r0
	lhz		r4,20(r3)		# argBlockIdPtr=r3
	lwz		r3,32(r3)		# argBlockIdPtr=r3 argBlockIdPtr=r3
.Llo615:
	mr		r5,r5		# tmp_crc=r5 tmp_crc=r5
.Llo616:
	diab.li		r6,0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x78 0x0 0x0 0x1
#$$rs 4 u
	bcctrl		20,0
.Llo592:
	mr		r3,r3		# tmp_crc=r3 tmp_crc=r3
	b		.L1225
.L1219:
#             }break;
# 
#             default:
#             {
#                 /*do nothing*/
#             }break;
#        }
#    }
# 
#    else
#    {
#        switch (crc_type)
	.d2line		4668
.Llo593:
	mr.		r6,r5		# crc_type=r6 crc_type=?a5
	bc		1,2,.L1226	# eq
.Llo600:
	se_cmpi		r6,1
	bc		1,2,.L1228	# eq
	se_cmpi		r6,2
	bc		1,2,.L1229	# eq
	b		.L1225
.L1226:
#           {
#                case NVM_CRC8:
#                {
#                    tmp_crc = (uint32)((NVM_CRC8_FUNC)crcFunctionPtr)(Get_Conf_Ram_Block_Addr(arg_block_id),Get_Conf_Block_Length(arg_block_id),(uint8)tmp_crc, TRUE);
	.d2line		4672
.Llo617:
	mtspr		ctr,r31		# crcFunctionPtr=ctr crcFunctionPtr=r31
	lis		r3,(NvM_BlockManagementTable+4)@ha		# tmp_crc=r3
.Llo618:
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# argBlockIdPtr=r0 tmp_crc=r3
.Llo633:
	lhz		r3,10(r1)		# tmp_crc=r3
	rlwinm		r3,r3,6,10,25		# tmp_crc=r3 tmp_crc=r3
	se_add		r3,r0		# tmp_crc=r3 tmp_crc=r3 argBlockIdPtr=r0
	lhz		r4,20(r3)		# tmp_crc=r3
	lwz		r3,32(r3)		# tmp_crc=r3 tmp_crc=r3
.Llo619:
	diab.li		r5,0		# crc_type=r5
	diab.li		r6,1
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x78 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo594:
	rlwinm		r3,r3,0,24,31		# tmp_crc=r3 tmp_crc=r3
	mr		r3,r3		# tmp_crc=r3 tmp_crc=r3
	b		.L1225
.L1228:
#                }break;
#                case NVM_CRC16:
#                {
#                    tmp_crc = (uint32)((NVM_CRC16_FUNC)crcFunctionPtr)(Get_Conf_Ram_Block_Addr(arg_block_id),Get_Conf_Block_Length(arg_block_id),(uint16)tmp_crc, TRUE);
	.d2line		4676
.Llo595:
	mtspr		ctr,r31		# crcFunctionPtr=ctr crcFunctionPtr=r31
	lis		r3,(NvM_BlockManagementTable+4)@ha		# tmp_crc=r3
.Llo620:
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# argBlockIdPtr=r0 tmp_crc=r3
.Llo634:
	lhz		r3,10(r1)		# tmp_crc=r3
	rlwinm		r3,r3,6,10,25		# tmp_crc=r3 tmp_crc=r3
	se_add		r3,r0		# tmp_crc=r3 tmp_crc=r3 argBlockIdPtr=r0
	lhz		r4,20(r3)		# tmp_crc=r3
	lwz		r3,32(r3)		# tmp_crc=r3 tmp_crc=r3
.Llo621:
	diab.li		r5,0		# crc_type=r5
	diab.li		r6,1
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x78 0x0 0x0 0x1
#$$rs 2 u
	bcctrl		20,0
.Llo596:
	rlwinm		r3,r3,0,16,31		# tmp_crc=r3 tmp_crc=r3
	mr		r3,r3		# tmp_crc=r3 tmp_crc=r3
	b		.L1225
.L1229:
#                }break;
#                case NVM_CRC32:
#                {
#                    tmp_crc = crcFunctionPtr(Get_Conf_Ram_Block_Addr(arg_block_id),Get_Conf_Block_Length(arg_block_id),tmp_crc, TRUE);
	.d2line		4680
.Llo597:
	mtspr		ctr,r31		# crcFunctionPtr=ctr crcFunctionPtr=r31
	lis		r3,(NvM_BlockManagementTable+4)@ha		# tmp_crc=r3
.Llo622:
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)		# argBlockIdPtr=r0 tmp_crc=r3
.Llo635:
	lhz		r3,10(r1)		# tmp_crc=r3
	rlwinm		r3,r3,6,10,25		# tmp_crc=r3 tmp_crc=r3
	se_add		r3,r0		# tmp_crc=r3 tmp_crc=r3 argBlockIdPtr=r0
	lhz		r4,20(r3)		# tmp_crc=r3
	lwz		r3,32(r3)		# tmp_crc=r3 tmp_crc=r3
.Llo623:
	diab.li		r5,0		# crc_type=r5
	diab.li		r6,1
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x78 0x0 0x0 0x1
#$$rs 4 u
	bcctrl		20,0
.Llo598:
	mr		r3,r3		# tmp_crc=r3 tmp_crc=r3
.L1225:
#                }break;
# 
#                default:
#                {
#                    /*do nothing*/
#                }break;
#           }
#    }
# 
#    if(NvM_Common.NvM_BlockCRCPtr[arg_block_id] != tmp_crc)
	.d2line		4690
	lis		r4,(NvM_Common+20)@ha
	lwz		r4,(NvM_Common+20)@l(r4)
	lhz		r0,10(r1)		# argBlockIdPtr=r0
.Llo636:
	rlwinm		r0,r0,2,14,29		# argBlockIdPtr=r0 argBlockIdPtr=r0
	lwzx		r0,r4,r0		# argBlockIdPtr=r0
	se_cmpl		r0,r3		# argBlockIdPtr=r0 tmp_crc=r3
	bc		1,2,.L1231	# eq
#    {
#        NvM_Common.NvM_BlockCRCPtr[arg_block_id] = tmp_crc;
	.d2line		4692
.Llo637:
	lis		r4,(NvM_Common+20)@ha
	lwz		r4,(NvM_Common+20)@l(r4)
	lhz		r0,10(r1)		# argBlockIdPtr=r0
.Llo638:
	rlwinm		r0,r0,2,14,29		# argBlockIdPtr=r0 argBlockIdPtr=r0
.Llo639:
	stwx		r3,r4,r0		# tmp_crc=r3
.L1231:
#    }
# 
#    Set_Adm_Block_Attrib_Block_Valid(arg_block_id,NVM_BLOCK_VALID);
	.d2line		4695
.Llo624:
	lis		r5,NvM_BlockManagementTable@ha		# crc_type=r5
.Llo601:
	lwz		r3,NvM_BlockManagementTable@l(r5)		# tmp_crc=r3 crc_type=r5
.Llo625:
	lhz		r4,10(r1)
	rlwinm		r4,r4,3,13,28
	se_add		r3,r4		# tmp_crc=r3 tmp_crc=r3
	lwz		r3,4(r3)		# tmp_crc=r3 tmp_crc=r3
	.diab.bseti		r3,1		# tmp_crc=r3
	lwz		r5,NvM_BlockManagementTable@l(r5)		# crc_type=r5 crc_type=r5
	se_add		r4,r5		# crc_type=r5
	stw		r3,4(r4)		# tmp_crc=r3
# }
	.d2line		4696
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# argBlockIdPtr=r0
	mtspr		lr,r0		# argBlockIdPtr=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo602:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2244:
	.type		NvM_CheckCrcValueSynch,@function
	.size		NvM_CheckCrcValueSynch,.-NvM_CheckCrcValueSynch
# Number of nodes = 351

# Allocations for NvM_CheckCrcValueSynch
#	?a4		crcFunctionPtr
#	SP,10		arg_block_id
#	?a5		crc_type
#	?a6		tmp_crc
#	?a7		argBlockIdPtr
# FUNC(Std_ReturnType, NVM_CODE) NvM_ConsistencyCheck(void)
	.align		2
	.section	.text_vle
        .d2line         5710,32
#$$ld
.L2256:

#$$bf	NvM_ConsistencyCheck,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		NvM_ConsistencyCheck
	.d2_cfa_start __cie
NvM_ConsistencyCheck:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo640:
	stw		r0,20(r1)		# retVal=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     VAR(Std_ReturnType,AUTOMATIC) retVal;
# 
#    if (NVM_PC_HASH_VALUE == NvM_LTtoPCHashValue)
	.d2line		5714
	lis		r3,NvM_LTtoPCHashValue@ha		# retVal=r3
	lwz		r0,NvM_LTtoPCHashValue@l(r3)		# retVal=r0 retVal=r3
	e_lis		r3,53635		# retVal=r3
	e_or2i		r3,7720		# retVal=r3
	se_cmpl		r0,r3		# retVal=r0 retVal=r3
#    {
#       retVal = E_OK;
	.d2line		5716
	isel		r3,0,r0,2		# retVal=r3 retVal=r0
.L1543:
#    }
#    else
#    {
#       retVal = E_NOT_OK;
	.d2line		5720
.Llo641:
	diab.li		r0,1		# retVal=r0
.Llo642:
	isel		r3,r3,r0,2		# retVal=r3 retVal=r3 retVal=r0
.L1544:
#    }
# 
#    return retVal;
	.d2line		5723
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		5724
	.d2epilogue_begin
.Llo643:
	lwz		r0,20(r1)		# retVal=r0
	mtspr		lr,r0		# retVal=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2257:
	.type		NvM_ConsistencyCheck,@function
	.size		NvM_ConsistencyCheck,.-NvM_ConsistencyCheck
# Number of nodes = 12

# Allocations for NvM_ConsistencyCheck
#	?a4		retVal
# FUNC(void, NVM_CODE) NvM_Init(void)
	.align		2
	.section	.text_vle
        .d2line         4702,22
#$$ld
.L2263:

#$$bf	NvM_Init,interprocedural,rasave,nostackparams
	.globl		NvM_Init
	.d2_cfa_start __cie
NvM_Init:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /**
#     * [DD-NVM00091-MGC01-V1] [DD-NVM00157-MGC01-V1] [DD-NVM00400-MGC01-V1]
#     * [DD-NVM00193-MGC01-V1]
#     */
#    /* Module cannot be initialized during initialization */
#    NvM_InitStatus = NVM_NOT_INITIALIZED;
	.d2line		4709
	diab.li		r0,0
	lis		r3,NvM_InitStatus@ha
	e_add16i		r3,r3,NvM_InitStatus@l
	stw		r0,0(r3)
# 
#    if (E_OK == NvM_ConsistencyCheck())
	.d2line		4711
	bl		NvM_ConsistencyCheck
	e_andi.		r3,r3,255
	bc		0,2,.L1241	# ne
	.section	.text_vle
.L2266:
#    {
#       VAR(NvM_BlockIdType, AUTOMATIC) tmp_idx;
# 
#       Set_Main_State_Machine(NVM_MAIN_STATE_IDLE);
	.d2line		4715
	diab.li		r0,0
	lis		r3,NvM_MainStateDbg@ha
	e_add16i		r3,r3,NvM_MainStateDbg@l
	stw		r0,0(r3)
#       /* Flush Queue*/
# #if (   NVM_API_CONFIG_CLASS == NVM_API_CONFIG_CLASS_2 || NVM_API_CONFIG_CLASS == NVM_API_CONFIG_CLASS_3 )
#       NvM_QueInitQueue();
	.d2line		4718
	bl		NvM_QueInitQueue
# #endif
#       /* Init_Req_Flag */
#       NvM_Req_Multiblock=NVM_NO_SERVICE_PENDING_ID;
	.d2line		4721
	diab.li		r0,26
	lis		r3,NvM_Req_Multiblock@ha
	e_add16i		r3,r3,NvM_Req_Multiblock@l
	stw		r0,0(r3)
#       req_cancel_write_all=FALSE;
	.d2line		4722
	diab.li		r7,0
	lis		r3,req_cancel_write_all@ha
	e_add16i		r3,r3,req_cancel_write_all@l
	stb		r7,0(r3)
# 
# #if (NVM_POLLING_MODE == STD_OFF)
#       NvM_MemIf_Driver_Status = MEMIF_IDLE;
	.d2line		4725
	diab.li		r0,1
	lis		r3,NvM_MemIf_Driver_Status@ha
	e_add16i		r3,r3,NvM_MemIf_Driver_Status@l
	stw		r0,0(r3)
# #endif
# 
#       for(tmp_idx = NVM_BLOCK_0; tmp_idx < Get_Conf_Total_Block_Number(); tmp_idx++)
	.d2line		4728
	diab.li		r3,0
.L1243:
.Llo644:
	rlwinm		r7,r3,0,16,31		# tmp_idx=r3
	lis		r4,(NvM_Common+4)@ha
	lhz		r0,(NvM_Common+4)@l(r4)
	se_cmp		r7,r0
	bc		0,0,.L1245	# ge
#       {
#          /* initialize attributes in administrative block:
#           * - dataset index
#           * - valid/changed flags
#           * - locked flag
#           * - write protection
#           * - error status
#           */
#          Set_Adm_Block_Dataset_Idx(tmp_idx, 0U); /* [DD-NVM00192-MGC01-V1] */
	.d2line		4737
	diab.li		r0,0
	lis		r5,NvM_BlockManagementTable@ha
	lwz		r4,NvM_BlockManagementTable@l(r5)
	rlwinm		r7,r3,3,13,28		# tmp_idx=r3
	stbux		r0,r4,r7
#          Set_Adm_Block_Attrib_Block_Changed(tmp_idx, NVM_BLOCK_UNCHANGED);
	.d2line		4738
	lwz		r4,NvM_BlockManagementTable@l(r5)
	se_add		r4,r7
	lwz		r31,4(r4)
	.diab.bclri		r31,2
	lwz		r4,NvM_BlockManagementTable@l(r5)
	se_add		r4,r7
	stw		r31,4(r4)
#          Set_Adm_Block_Attrib_Block_Valid(tmp_idx, NVM_BLOCK_INVALID);
	.d2line		4739
	lwz		r4,NvM_BlockManagementTable@l(r5)
	se_add		r4,r7
	lwz		r31,4(r4)
	.diab.bclri		r31,1
	lwz		r4,NvM_BlockManagementTable@l(r5)
	se_add		r4,r7
	stw		r31,4(r4)
#          Set_Adm_Block_Attrib_Block_LockStatus(tmp_idx, NVM_BLOCK_UNLOCK_STATUS);
	.d2line		4740
	lwz		r4,NvM_BlockManagementTable@l(r5)
	se_add		r4,r7
	lwz		r31,4(r4)
	.diab.bclri		r31,3
	lwz		r4,NvM_BlockManagementTable@l(r5)
	se_add		r4,r7
	stw		r31,4(r4)
#          Set_Adm_Block_Attrib_Wr_Protection(tmp_idx, NVM_WR_PROTECTION_OFF);
	.d2line		4741
	lwz		r4,NvM_BlockManagementTable@l(r5)
	se_add		r4,r7
	lwz		r31,4(r4)
	.diab.bclri		r31,0
	lwz		r4,NvM_BlockManagementTable@l(r5)
	se_add		r4,r7
	stw		r31,4(r4)
#          Set_Adm_Block_Error_Status(tmp_idx, (NvM_RequestResultType)NVM_REQ_OK);
	.d2line		4742
	lwz		r4,NvM_BlockManagementTable@l(r5)
	se_add		r7,r4
	stb		r0,1(r7)
#       }
	.d2line		4743
	diab.addi		r7,r3,1		# tmp_idx=r3
	se_addi		r3,1		# tmp_idx=r3 tmp_idx=r3
	b		.L1243
.L1245:
# 
#       /* There is no runtime configuration checking,
#        * NvM will be always initialized.
#        */
#       NvM_InitStatus = NVM_INITIALIZED; /* [DD-NVM00399-MGC01-V1] */
	.d2line		4748
.Llo645:
	diab.li		r0,1
	lis		r3,NvM_InitStatus@ha		# tmp_idx=r3
.Llo646:
	e_add16i		r3,r3,NvM_InitStatus@l		# tmp_idx=r3 tmp_idx=r3
	stw		r0,0(r3)		# tmp_idx=r3
	.section	.text_vle
.L2267:
.L1241:
# 
#    }
# }
	.d2line		4751
	.d2epilogue_begin
.Llo647:
	lwz		r31,28(r1)		# offset r1+28  0x1c
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
.L2264:
	.type		NvM_Init,@function
	.size		NvM_Init,.-NvM_Init
# Number of nodes = 120

# Allocations for NvM_Init
#	?a4		tmp_idx
# FUNC(Std_ReturnType, NVM_CODE) NvM_SetDataIndex
	.align		2
	.section	.text_vle
        .d2line         4755,32
#$$ld
.L2274:

#$$bf	NvM_SetDataIndex,interprocedural,rasave,nostackparams
	.globl		NvM_SetDataIndex
	.d2_cfa_start __cie
NvM_SetDataIndex:
.Llo648:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# BlockId=r31 BlockId=r3
	mr		r30,r4		# DataIndex=r30 DataIndex=r4
	.d2prologue_end
# (
#    VAR(NvM_BlockIdType,AUTOMATIC) BlockId,
#    VAR(uint8,AUTOMATIC) DataIndex
# )
# {
#    VAR(Std_ReturnType,AUTOMATIC) tmp_status = E_NOT_OK;
	.d2line		4761
	diab.li		r29,1		# tmp_status=r29
# 
#    SchM_Enter_NvM_EaServiceProcessQueue();
	.d2line		4763
	bl		SchM_Enter_NvM_EaServiceProcessQueue
#    if(NVM_INITIALIZED != NvM_InitStatus)
	.d2line		4764
.Llo649:
	lis		r3,NvM_InitStatus@ha
	lwz		r0,NvM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L1250	# eq
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		4766
.Llo650:
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1251
.L1250:
#       NVM_ASSERT_DET(NVM_SET_DATA_INDEX_ID, NVM_E_NOT_INITIALIZED); /* [DD-NVM00027-MGC01-V1] */
#    }
#    else if((NVM_BLOCK_0 == BlockId) || (BlockId >= Get_Conf_Total_Block_Number()))
	.d2line		4769
	rlwinm		r0,r31,0,16,31		# BlockId=r31
	se_cmpi		r0,0
	bc		1,2,.L1260	# eq
	rlwinm		r0,r31,0,16,31		# BlockId=r31
	lis		r3,(NvM_Common+4)@ha
	lhz		r3,(NvM_Common+4)@l(r3)
	se_cmp		r0,r3
	bc		1,0,.L1252	# lt
.L1260:
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		4771
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1251
.L1252:
#       NVM_ASSERT_DET(NVM_SET_DATA_INDEX_ID, NVM_E_PARAM_BLOCK_ID); /* [DD-NVM00601-MGC01-V1] */
#    }
#    else if((NvM_RequestResultType)NVM_REQ_PENDING == Get_Adm_Block_Error_Status(BlockId))
	.d2line		4774
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	se_add		r3,r0
	lbz		r0,1(r3)
	se_cmpi		r0,2
	bc		0,2,.L1254	# ne
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		4776
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1251
.L1254:
#       NVM_ASSERT_DET(NVM_SET_DATA_INDEX_ID, NVM_E_BLOCK_PENDING); /* [DD-NVM00598-MGC01-V1] */
#    }
#    else if(!Is_Conf_Block_Type_Dataset(BlockId)) /* [DD-NVM00264-MGC01-V1] */
	.d2line		4779
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# BlockId=r31
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,2
	bc		1,2,.L1256	# eq
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		4781
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1251
.L1256:
#       NVM_ASSERT_DET(NVM_SET_DATA_INDEX_ID, NVM_E_PARAM_BLOCK_TYPE);
#    }
#    else if(!Is_Dataset_Idx_In_Range(BlockId,DataIndex))
	.d2line		4784
	rlwinm		r4,r30,0,24,31		# DataIndex=r30
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r0,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r3,r31,6,10,25		# BlockId=r31
	se_add		r3,r0
	lbz		r0,16(r3)
	lbz		r3,17(r3)
	se_add		r0,r3
	rlwinm		r0,r0,0,16,31
	se_cmp		r4,r0
	bc		1,0,.L1258	# lt
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		4786
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1251
.L1258:
#       NVM_ASSERT_DET(NVM_SET_DATA_INDEX_ID, NVM_E_PARAM_BLOCK_DATA_IDX); /* [DD-NVM00599-MGC01-V1] */
#    }
#    else
#    {
#       /* [DD-NVM00014-MGC01-V1] [DD-NVM00263-MGC01-V1] */
#       Set_Adm_Block_Dataset_Idx(BlockId, DataIndex);
	.d2line		4792
.Llo651:
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
.Llo652:
	rlwinm		r31,r31,3,13,28		# BlockId=r31 BlockId=r31
.Llo653:
	stbx		r30,r3,r31		# DataIndex=r30
#       tmp_status = E_OK;
	.d2line		4793
	diab.li		r29,0		# tmp_status=r29
# 
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		4795
	bl		SchM_Exit_NvM_EaServiceProcessQueue
.L1251:
#    }
# 
#    return tmp_status;
	.d2line		4798
.Llo654:
	rlwinm		r3,r29,0,24,31		# tmp_status=r29
# }
	.d2line		4799
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo655:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2275:
	.type		NvM_SetDataIndex,@function
	.size		NvM_SetDataIndex,.-NvM_SetDataIndex
# Number of nodes = 117

# Allocations for NvM_SetDataIndex
#	?a4		BlockId
#	?a5		DataIndex
#	?a6		tmp_status
# FUNC(Std_ReturnType, NVM_CODE) NvM_GetDataIndex
	.align		2
	.section	.text_vle
        .d2line         4808,32
#$$ld
.L2283:

#$$bf	NvM_GetDataIndex,interprocedural,rasave,nostackparams
	.globl		NvM_GetDataIndex
	.d2_cfa_start __cie
NvM_GetDataIndex:
.Llo656:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# BlockId=r31 BlockId=r3
	mr		r30,r4		# DataIndexPtr=r30 DataIndexPtr=r4
	.d2prologue_end
# (
#    VAR(NvM_BlockIdType,AUTOMATIC) BlockId,
#    P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) DataIndexPtr
# )
# {
#    VAR(Std_ReturnType,AUTOMATIC) tmp_status = E_NOT_OK;
	.d2line		4814
	diab.li		r29,1		# tmp_status=r29
# 
#    SchM_Enter_NvM_EaServiceProcessQueue();
	.d2line		4816
	bl		SchM_Enter_NvM_EaServiceProcessQueue
#    if(NVM_INITIALIZED != NvM_InitStatus)
	.d2line		4817
.Llo657:
	lis		r3,NvM_InitStatus@ha
	lwz		r0,NvM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L1269	# eq
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		4819
.Llo658:
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1270
.L1269:
#       NVM_ASSERT_DET(NVM_GET_DATA_INDEX_ID, NVM_E_NOT_INITIALIZED); /* [DD-NVM00602-MGC01-V1] */
#    }
#    else if((NVM_BLOCK_0 == BlockId) || (BlockId >= Get_Conf_Total_Block_Number()))
	.d2line		4822
	rlwinm		r0,r31,0,16,31		# BlockId=r31
	se_cmpi		r0,0
	bc		1,2,.L1279	# eq
	rlwinm		r0,r31,0,16,31		# BlockId=r31
	lis		r3,(NvM_Common+4)@ha
	lhz		r3,(NvM_Common+4)@l(r3)
	se_cmp		r0,r3
	bc		1,0,.L1271	# lt
.L1279:
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		4824
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1270
.L1271:
#       NVM_ASSERT_DET(NVM_GET_DATA_INDEX_ID, NVM_E_PARAM_BLOCK_ID); /* [DD-NVM00604-MGC01-V1] */
#    }
#    else if((NvM_RequestResultType)NVM_REQ_PENDING == Get_Adm_Block_Error_Status(BlockId))
	.d2line		4827
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	se_add		r3,r0
	lbz		r0,1(r3)
	se_cmpi		r0,2
	bc		0,2,.L1273	# ne
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		4829
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1270
.L1273:
#       NVM_ASSERT_DET(NVM_GET_DATA_INDEX_ID, NVM_E_BLOCK_PENDING);
#    }
#    else if(!Is_Conf_Block_Type_Dataset(BlockId)) /* [DD-NVM00265-MGC01-V1] */
	.d2line		4832
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# BlockId=r31
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,2
	bc		1,2,.L1275	# eq
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		4834
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1270
.L1275:
#       NVM_ASSERT_DET(NVM_GET_DATA_INDEX_ID, NVM_E_PARAM_BLOCK_TYPE);
#    }
#    else if(NULL_PTR == DataIndexPtr)
	.d2line		4837
	se_cmpi		r30,0		# DataIndexPtr=r30
	bc		0,2,.L1277	# ne
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		4839
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1270
.L1277:
#       NVM_ASSERT_DET(NVM_GET_DATA_INDEX_ID, NVM_E_PARAM_DATA); /* [DD-NVM00605-MGC01-V1] */
#    }
#    else
#    {
#       *DataIndexPtr = Get_Adm_Block_Dataset_Idx(BlockId); /* [DD-NVM00021-MGC01-V1] */
	.d2line		4844
.Llo659:
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
.Llo660:
	rlwinm		r31,r31,3,13,28		# BlockId=r31 BlockId=r31
.Llo661:
	lbzx		r0,r3,r31
	stb		r0,0(r30)		# DataIndexPtr=r30
#       tmp_status = E_OK;
	.d2line		4845
	diab.li		r29,0		# tmp_status=r29
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		4846
	bl		SchM_Exit_NvM_EaServiceProcessQueue
.L1270:
#    }
# 
#    return tmp_status;
	.d2line		4849
.Llo662:
	rlwinm		r3,r29,0,24,31		# tmp_status=r29
# }
	.d2line		4850
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo663:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2284:
	.type		NvM_GetDataIndex,@function
	.size		NvM_GetDataIndex,.-NvM_GetDataIndex
# Number of nodes = 87

# Allocations for NvM_GetDataIndex
#	?a4		BlockId
#	?a5		DataIndexPtr
#	?a6		tmp_status
# FUNC(Std_ReturnType, NVM_CODE) NvM_SetBlockProtection /* [DD-NVM00754-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         4854,32
#$$ld
.L2292:

#$$bf	NvM_SetBlockProtection,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.globl		NvM_SetBlockProtection
	.d2_cfa_start __cie
NvM_SetBlockProtection:
.Llo664:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# BlockId=r3 BlockId=r3
	mr		r0,r4		# ProtectionEnabled=r0 ProtectionEnabled=r4
	.d2prologue_end
# (
#    VAR(NvM_BlockIdType,AUTOMATIC) BlockId,
#    VAR(boolean,AUTOMATIC) ProtectionEnabled
# )
# {
#    /* [DD-NVM00450-MGC01-V1] */
#    VAR(Std_ReturnType,AUTOMATIC) tmp_status = E_NOT_OK;
	.d2line		4861
	diab.li		r5,1		# tmp_status=r5
# 
#    if(NVM_INITIALIZED != NvM_InitStatus)
	.d2line		4863
.Llo672:
	lis		r4,NvM_InitStatus@ha
.Llo666:
	lwz		r4,NvM_InitStatus@l(r4)
	se_cmpi		r4,1
	bc		0,2,.L1289	# ne
#    {
#       /* [DD-NVM00606-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_SET_BLOCK_PROTECTION_ID, NVM_E_NOT_INITIALIZED);
#    }
#    else if((NVM_BLOCK_0 == BlockId) || (BlockId >= Get_Conf_Total_Block_Number()))
	.d2line		4868
.Llo667:
	rlwinm		r6,r3,0,16,31		# BlockId=r3
	se_cmpi		r6,0
	bc		1,2,.L1289	# eq
	rlwinm		r6,r3,0,16,31		# BlockId=r3
	lis		r4,(NvM_Common+4)@ha
	lhz		r4,(NvM_Common+4)@l(r4)
	se_cmp		r6,r4
	bc		0,0,.L1289	# ge
#    {
#       NVM_ASSERT_DET(NVM_SET_BLOCK_PROTECTION_ID, NVM_E_PARAM_BLOCK_ID); /* [DD-NVM00609-MGC01-V1] */
#    }
#    else if((NvM_RequestResultType)NVM_REQ_PENDING == Get_Adm_Block_Error_Status(BlockId))
	.d2line		4872
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r4,NvM_BlockManagementTable@l(r4)
	rlwinm		r6,r3,3,13,28		# BlockId=r3
	se_add		r4,r6
	lbz		r4,1(r4)
	se_cmpi		r4,2
	bc		1,2,.L1289	# eq
#    {
#       NVM_ASSERT_DET(NVM_SET_BLOCK_PROTECTION_ID, NVM_E_BLOCK_PENDING); /* [DD-NVM00607-MGC01-V1] */
#    }
#    /* [DD-NVM00325-MGC01-V1] [DD-NVM00577-MGC01-V1] [DD-NVM00398-MGC01-V1] */
#    else if(Is_Conf_Block_Type_Write_Once(BlockId))
	.d2line		4877
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r4)
	rlwinm		r6,r3,6,10,25		# BlockId=r3
	se_add		r4,r6
	lhz		r4,60(r4)
	rlwinm		r4,r4,0,28,28
	se_cmpi		r4,8
	bc		1,2,.L1289	# eq
#    {
#       /* [DD-NVM00608-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_SET_BLOCK_PROTECTION_ID, NVM_E_BLOCK_CONFIG);
#    }
#    else
#    {
#       /* PRQA S 3344 ++
#        * Boolen expression - statement is correct
#        */
#       /* [DD-NVM00016-MGC01-V1] */
#       if(ProtectionEnabled==TRUE)
	.d2line		4888
	rlwinm		r0,r0,0,24,31		# ProtectionEnabled=r0 ProtectionEnabled=r0
	se_cmpi		r0,1		# ProtectionEnabled=r0
	bc		0,2,.L1296	# ne
#       /* PRQA S 3344 -- */
#       {
#          Set_Adm_Block_Attrib_Wr_Protection(BlockId,NVM_WR_PROTECTION_ON);
	.d2line		4891
.Llo668:
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r0,NvM_BlockManagementTable@l(r4)		# ProtectionEnabled=r0
.Llo669:
	rlwinm		r6,r3,3,13,28		# BlockId=r3
	add		r3,r0,r6		# BlockId=r3 ProtectionEnabled=r0
	lwz		r0,4(r3)		# ProtectionEnabled=r0 BlockId=r3
	.diab.bseti		r0,0		# ProtectionEnabled=r0
	lwz		r3,NvM_BlockManagementTable@l(r4)		# BlockId=r3
	se_add		r6,r3		# BlockId=r3
	stw		r0,4(r6)		# ProtectionEnabled=r0
	b		.L1297
.L1296:
#       }
#       else
#       {
#          /* [DD-NVM00578-MGC01-V1] */
#          Set_Adm_Block_Attrib_Wr_Protection(BlockId,NVM_WR_PROTECTION_OFF);
	.d2line		4896
.Llo670:
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r0,NvM_BlockManagementTable@l(r4)		# ProtectionEnabled=r0
.Llo671:
	rlwinm		r6,r3,3,13,28		# BlockId=r3
	add		r3,r0,r6		# BlockId=r3 ProtectionEnabled=r0
	lwz		r0,4(r3)		# ProtectionEnabled=r0 BlockId=r3
	.diab.bclri		r0,0		# ProtectionEnabled=r0
	lwz		r3,NvM_BlockManagementTable@l(r4)		# BlockId=r3
	se_add		r6,r3		# BlockId=r3
	stw		r0,4(r6)		# ProtectionEnabled=r0
.L1297:
#       }
#       tmp_status = E_OK;
	.d2line		4898
.Llo665:
	diab.li		r5,0		# tmp_status=r5
.L1289:
#    }
#    return tmp_status;
	.d2line		4900
.Llo673:
	rlwinm		r3,r5,0,24,31		# BlockId=r3 tmp_status=r5
# }
	.d2line		4901
	.d2epilogue_begin
	lwz		r0,20(r1)		# ProtectionEnabled=r0
	mtspr		lr,r0		# ProtectionEnabled=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo674:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2293:
	.type		NvM_SetBlockProtection,@function
	.size		NvM_SetBlockProtection,.-NvM_SetBlockProtection
# Number of nodes = 89

# Allocations for NvM_SetBlockProtection
#	?a4		BlockId
#	?a5		ProtectionEnabled
#	?a6		tmp_status
# FUNC(Std_ReturnType, NVM_CODE) NvM_GetErrorStatus /* [DD-NVM00451-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         4906,32
#$$ld
.L2301:

#$$bf	NvM_GetErrorStatus,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.globl		NvM_GetErrorStatus
	.d2_cfa_start __cie
NvM_GetErrorStatus:
.Llo675:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# BlockId=r3 BlockId=r3
	mr		r4,r4		# RequestResultPtr=r4 RequestResultPtr=r4
	.d2prologue_end
# (
#    VAR(NvM_BlockIdType,AUTOMATIC) BlockId,
#    P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) RequestResultPtr
# ) /* [DD-NVM00694-MGC01-V1] [DD-NVM00160-MGC01-V1] */
# {
#    VAR(Std_ReturnType,AUTOMATIC) tmp_status = E_NOT_OK;
	.d2line		4912
	diab.li		r6,1		# tmp_status=r6
# 
#    if(NVM_INITIALIZED != NvM_InitStatus)
	.d2line		4914
.Llo679:
	lis		r5,NvM_InitStatus@ha
	lwz		r0,NvM_InitStatus@l(r5)
	se_cmpi		r0,1
	bc		0,2,.L1304	# ne
#    {
#       /* [DD-NVM00610-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_GET_ERROR_STATUS_ID, NVM_E_NOT_INITIALIZED);
#    }
#    else if(BlockId >= Get_Conf_Total_Block_Number())
	.d2line		4919
	rlwinm		r0,r3,0,16,31		# BlockId=r3
	lis		r5,(NvM_Common+4)@ha
	lhz		r5,(NvM_Common+4)@l(r5)
	se_cmp		r0,r5
	bc		0,0,.L1304	# ge
#    {
#       NVM_ASSERT_DET(NVM_GET_ERROR_STATUS_ID, NVM_E_PARAM_BLOCK_ID); /* [DD-NVM00611-MGC01-V1] */
#    }
#    else if(NULL_PTR == RequestResultPtr)
	.d2line		4923
	se_cmpi		r4,0		# RequestResultPtr=r4
	bc		1,2,.L1304	# eq
#    {
#       NVM_ASSERT_DET(NVM_GET_ERROR_STATUS_ID, NVM_E_PARAM_DATA); /* [DD-NVM00612-MGC01-V1] */
#    }
#    else
#    {
#       /**
#        * [DD-NVM00394-MGC01-V1] [DD-NVM00395-MGC01-V1] [DD-NVM00396-MGC01-V1]
#        * [DD-NVM00083-MGC01-V1] [DD-NVM00015-MGC01-V1]
#        */
#       *RequestResultPtr=Get_Adm_Block_Error_Status(BlockId);
	.d2line		4933
.Llo676:
	lis		r5,NvM_BlockManagementTable@ha
	lwz		r0,NvM_BlockManagementTable@l(r5)
.Llo677:
	rlwinm		r3,r3,3,13,28		# BlockId=r3 BlockId=r3
	se_add		r3,r0		# BlockId=r3 BlockId=r3
	lbz		r0,1(r3)		# BlockId=r3
	stb		r0,0(r4)		# RequestResultPtr=r4
#       tmp_status = E_OK;
	.d2line		4934
	diab.li		r6,0		# tmp_status=r6
.L1304:
#    }
#    return tmp_status;
	.d2line		4936
.Llo678:
	rlwinm		r3,r6,0,24,31		# BlockId=r3 tmp_status=r6
# }
	.d2line		4937
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo680:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2302:
	.type		NvM_GetErrorStatus,@function
	.size		NvM_GetErrorStatus,.-NvM_GetErrorStatus
# Number of nodes = 37

# Allocations for NvM_GetErrorStatus
#	?a4		BlockId
#	?a5		RequestResultPtr
#	?a6		tmp_status
# FUNC(void, NVM_CODE) NvM_GetVersionInfo /* [DD-NVM00452-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         4941,22
#$$ld
.L2310:

#$$bf	NvM_GetVersionInfo,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		NvM_GetVersionInfo
	.d2_cfa_start __cie
NvM_GetVersionInfo:
.Llo681:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr.		r3,r3		# versioninfo=?a4 versioninfo=r3
	.d2prologue_end
# (
#    P2VAR(Std_VersionInfoType,AUTOMATIC,NVM_APPL_DATA) versioninfo
# )
# {
#    if(NULL_PTR == versioninfo)
	.d2line		4946
	bc		1,2,.L1310	# eq
#    {
#       NVM_ASSERT_DET(NVM_GET_VERSION_INFO_ID, NVM_E_PARAM_POINTER); /* [DD-NVM00613-MGC01-V1] */
#    }
#    else
#    {
#       versioninfo->vendorID=NVM_VENDOR_ID;
	.d2line		4952
	diab.li		r0,31
	sth		r0,0(r3)		# versioninfo=r3
#       versioninfo->moduleID=NVM_MODULE_ID;
	.d2line		4953
	diab.li		r0,20
	sth		r0,2(r3)		# versioninfo=r3
#       versioninfo->sw_major_version=(uint8)NVM_SW_MAJOR_VERSION;
	.d2line		4954
	diab.li		r0,8
	stb		r0,4(r3)		# versioninfo=r3
#       versioninfo->sw_minor_version=(uint8)NVM_SW_MINOR_VERSION;
	.d2line		4955
	diab.li		r0,2
	stb		r0,5(r3)		# versioninfo=r3
#       versioninfo->sw_patch_version=(uint8)NVM_SW_PATCH_VERSION;
	.d2line		4956
	diab.li		r0,0
	stb		r0,6(r3)		# versioninfo=r3
.L1310:
#    }
# }
	.d2line		4958
	.d2epilogue_begin
.Llo682:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2311:
	.type		NvM_GetVersionInfo,@function
	.size		NvM_GetVersionInfo,.-NvM_GetVersionInfo
# Number of nodes = 31

# Allocations for NvM_GetVersionInfo
#	?a4		versioninfo
# FUNC(void, NVM_CODE) NvM_SetBlockLockStatus /* [DD-NVM00548-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         4961,22
#$$ld
.L2319:

#$$bf	NvM_SetBlockLockStatus,interprocedural,rasave,nostackparams
	.globl		NvM_SetBlockLockStatus
	.d2_cfa_start __cie
NvM_SetBlockLockStatus:
.Llo683:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r30,r3		# BlockId=r30 BlockId=r3
	mr		r31,r4		# BlockLocked=r31 BlockLocked=r4
	.d2prologue_end
# (
#    VAR(NvM_BlockIdType,AUTOMATIC) BlockId,
#    VAR(boolean,AUTOMATIC)  BlockLocked
# )
# {
#    SchM_Enter_NvM_EaServiceProcessQueue();
	.d2line		4967
	bl		SchM_Enter_NvM_EaServiceProcessQueue
#    if(NVM_INITIALIZED != NvM_InitStatus)
	.d2line		4968
.Llo684:
	lis		r3,NvM_InitStatus@ha
	lwz		r0,NvM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L1315	# eq
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		4970
.Llo685:
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1314
.L1315:
#       /* [DD-NVM00728-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_SETBLOCK_LOCK_STATUS_ID, NVM_E_NOT_INITIALIZED);
#    }
#    else if((NVM_BLOCK_0 == BlockId) || (BlockId >= Get_Conf_Total_Block_Number()))
	.d2line		4974
	rlwinm		r3,r30,0,16,31		# BlockId=r30
	se_cmpi		r3,0
	bc		1,2,.L1324	# eq
	rlwinm		r4,r30,0,16,31		# BlockId=r30
	lis		r3,(NvM_Common+4)@ha
	lhz		r0,(NvM_Common+4)@l(r3)
	se_cmp		r4,r0
	bc		1,0,.L1317	# lt
.L1324:
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		4976
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1314
.L1317:
#       /* [DD-NVM00731-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_SETBLOCK_LOCK_STATUS_ID, NVM_E_PARAM_BLOCK_ID);
#    }
#    else if((NvM_RequestResultType)NVM_REQ_PENDING == Get_Adm_Block_Error_Status(BlockId))
	.d2line		4980
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r4,r30,3,13,28		# BlockId=r30
	se_add		r3,r4
	lbz		r0,1(r3)
	se_cmpi		r0,2
	bc		0,2,.L1319	# ne
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		4982
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1314
.L1319:
#       /* [DD-NVM00729-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_SETBLOCK_LOCK_STATUS_ID, NVM_E_BLOCK_PENDING);
#    }
#    else if(Is_Conf_Block_Type_Write_Once(BlockId))
	.d2line		4986
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r30,6,10,25		# BlockId=r30
	se_add		r3,r4
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,28,28
	se_cmpi		r0,8
	bc		0,2,.L1321	# ne
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		4988
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1314
.L1321:
#       /* [DD-NVM00730-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_SETBLOCK_LOCK_STATUS_ID, NVM_E_BLOCK_CONFIG);
#    }
#    else
#    {
#       if(Is_Conf_Block_Permanent(BlockId)) /* [DD-NVM00732-MGC01-V1] */
	.d2line		4994
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r30,6,10,25		# BlockId=r30
	se_add		r3,r4
	lwz		r0,32(r3)
	se_cmpi		r0,0
	bc		1,2,.L1323	# eq
#       {
#          Set_Adm_Block_Attrib_Block_LockStatus(BlockId,BlockLocked);
	.d2line		4996
	rlwinm		r31,r31,0,24,31		# BlockLocked=r31 BlockLocked=r31
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r0,NvM_BlockManagementTable@l(r3)
	rlwinm		r4,r30,3,13,28		# BlockId=r30
	add		r30,r0,r4		# BlockId=r30
	lwz		r0,4(r30)		# BlockId=r30
	rlwimi		r0,r31,28,3,3		# BlockLocked=r31
	lwz		r3,NvM_BlockManagementTable@l(r3)
	se_add		r4,r3
	stw		r0,4(r4)
.L1323:
#       }
# 
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		4999
	bl		SchM_Exit_NvM_EaServiceProcessQueue
.L1314:
#    }
# }
	.d2line		5001
	.d2epilogue_begin
.Llo686:
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
.L2320:
	.type		NvM_SetBlockLockStatus,@function
	.size		NvM_SetBlockLockStatus,.-NvM_SetBlockLockStatus
# Number of nodes = 94

# Allocations for NvM_SetBlockLockStatus
#	?a4		BlockId
#	?a5		BlockLocked
#	?a6		$$27
# FUNC(Std_ReturnType, NVM_CODE) NvM_SetRamBlockStatus /* [DD-NVM00754-MGC01-V1] [DD-NVM00453-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         5004,32
#$$ld
.L2326:

#$$bf	NvM_SetRamBlockStatus,interprocedural,rasave,nostackparams
	.globl		NvM_SetRamBlockStatus
	.d2_cfa_start __cie
NvM_SetRamBlockStatus:
.Llo687:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# BlockId=r31 BlockId=r3
.Llo688:
	mr		r30,r4		# BlockChanged=r30 BlockChanged=r4
	.d2prologue_end
# (
#    VAR(NvM_BlockIdType,AUTOMATIC) BlockId,
#    VAR(boolean,AUTOMATIC) BlockChanged
# )
# {
#    VAR(Std_ReturnType,AUTOMATIC) tmp_status = E_NOT_OK;
	.d2line		5010
.Llo689:
	diab.li		r29,1		# tmp_status=r29
#    VAR(NvM_BlockCrcType,AUTOMATIC) crc_type = NvM_BlockManagementTable.BlockDescriptorPtr[BlockId].NvM_BlockCRC;
	.d2line		5011
.Llo699:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r31,6,10,25		# BlockId=r31
.Llo695:
	lwzx		r28,r3,r4
.Llo703:
	mr		r28,r28		# crc_type=r28 crc_type=r28
# 
#    SchM_Enter_NvM_EaServiceProcessQueue();
	.d2line		5013
	bl		SchM_Enter_NvM_EaServiceProcessQueue
#    if(NVM_INITIALIZED != NvM_InitStatus)
	.d2line		5014
	lis		r3,NvM_InitStatus@ha
	lwz		r0,NvM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L1333	# eq
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5016
.Llo696:
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1334
.L1333:
#       /* [DD-NVM00643-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_SET_RAM_BLOCK_STATUS_ID, NVM_E_NOT_INITIALIZED);
#    }
#    else if((NVM_BLOCK_0 == BlockId) || (BlockId >= Get_Conf_Total_Block_Number()))
	.d2line		5020
	rlwinm		r3,r31,0,16,31		# BlockId=r31
	se_cmpi		r3,0
	bc		1,2,.L1347	# eq
	rlwinm		r4,r31,0,16,31		# BlockId=r31
	lis		r3,(NvM_Common+4)@ha
	lhz		r0,(NvM_Common+4)@l(r3)
	se_cmp		r4,r0
	bc		1,0,.L1335	# lt
.L1347:
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5022
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1334
.L1335:
#       /* [DD-NVM00645-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_SET_RAM_BLOCK_STATUS_ID, NVM_E_PARAM_BLOCK_ID);
#    }
#    else if((NvM_RequestResultType)NVM_REQ_PENDING == Get_Adm_Block_Error_Status(BlockId))
	.d2line		5026
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r4,r31,3,13,28		# BlockId=r31
	se_add		r3,r4
	lbz		r0,1(r3)
	se_cmpi		r0,2
	bc		0,2,.L1337	# ne
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5028
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1334
.L1337:
#       /* [DD-NVM00644-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_SET_RAM_BLOCK_STATUS_ID, NVM_E_BLOCK_PENDING);
#    }
#    else
#    {
#       /* [DD-NVM00240-MGC01-V1] */
#       if(Is_Conf_Block_Permanent(BlockId) && Is_Conf_Block_Use_Set_RamBlock_Status(BlockId))
	.d2line		5035
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r31,6,10,25		# BlockId=r31
	se_add		r3,r4
	lwz		r0,32(r3)
	se_cmpi		r0,0
	bc		1,2,.L1339	# eq
.Llo700:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r31,6,10,25		# BlockId=r31
	se_add		r3,r4
	lhz		r0,60(r3)
	rlwinm		r0,r0,0,18,18
	cmpi		0,0,r0,8192
	bc		0,2,.L1339	# ne
#       {
#          if(TRUE==BlockChanged)
	.d2line		5037
	rlwinm		r30,r30,0,24,31		# BlockChanged=r30 BlockChanged=r30
	se_cmpi		r30,1		# BlockChanged=r30
	bc		0,2,.L1340	# ne
#          {
# 
#              /* [DD-NVM00121-MGC01-V1] */
#              switch (crc_type)
	.d2line		5041
.Llo697:
	mr.		r6,r28		# crc_type=r6 crc_type=?a7
	bc		1,2,.L1341	# eq
	se_cmpi		r6,1
	bc		1,2,.L1343	# eq
	se_cmpi		r6,2
	bc		1,2,.L1344	# eq
	b		.L1345
.L1341:
#              {
#                 case NVM_CRC8:
#                 {
#                     NvM_CheckCrcValueSynch(NvM_BlockManagementTable.BlockDescriptorPtr[BlockId].CrcFunctionPtr,BlockId,crc_type);
	.d2line		5045
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r31,6,10,25		# BlockId=r4 BlockId=r31
	se_add		r3,r4		# BlockId=r4
	lwz		r3,4(r3)
	mr		r4,r31		# BlockId=r4 BlockId=r31
	mr		r5,r28		# crc_type=r5 crc_type=r28
	bl		NvM_CheckCrcValueSynch
	b		.L1342
.L1343:
#                 }break;
# 
#                 case NVM_CRC16:
#                 {
#                     NvM_CheckCrcValueSynch(NvM_BlockManagementTable.BlockDescriptorPtr[BlockId].CrcFunctionPtr,BlockId,crc_type);
	.d2line		5050
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r31,6,10,25		# BlockId=r4 BlockId=r31
	se_add		r3,r4		# BlockId=r4
	lwz		r3,4(r3)
	mr		r4,r31		# BlockId=r4 BlockId=r31
	mr		r5,r28		# crc_type=r5 crc_type=r28
	bl		NvM_CheckCrcValueSynch
	b		.L1342
.L1344:
#                 }break;
# 
#                 case NVM_CRC32:
#                 {
#                     NvM_CheckCrcValueSynch(NvM_BlockManagementTable.BlockDescriptorPtr[BlockId].CrcFunctionPtr,BlockId,crc_type);
	.d2line		5055
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r4,r31,6,10,25		# BlockId=r4 BlockId=r31
	se_add		r3,r4		# BlockId=r4
	lwz		r3,4(r3)
	mr		r4,r31		# BlockId=r4 BlockId=r31
	mr		r5,r28		# crc_type=r5 crc_type=r28
	bl		NvM_CheckCrcValueSynch
	b		.L1342
.L1345:
#                 }break;
# 
#                 default:
#                 {
#                     Set_Adm_Block_Attrib_Block_Valid(BlockId,NVM_BLOCK_VALID);
	.d2line		5060
.Llo704:
	lis		r4,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r4)
	rlwinm		r5,r31,3,13,28		# BlockId=r31
	se_add		r3,r5
	lwz		r0,4(r3)
	.diab.bseti		r0,1
	lwz		r3,NvM_BlockManagementTable@l(r4)
	se_add		r5,r3
	stw		r0,4(r5)
.L1342:
#                 }break;
#             }
# 
#             Set_Adm_Block_Attrib_Block_Changed(BlockId,NVM_BLOCK_CHANGED); /* [DD-NVM00406-MGC01-V1] */
	.d2line		5064
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r0,NvM_BlockManagementTable@l(r3)
	rlwinm		r4,r31,3,13,28		# BlockId=r4 BlockId=r31
	add		r31,r0,r4		# BlockId=r31 BlockId=r4
.Llo690:
	lwz		r0,4(r31)		# BlockId=r31
.Llo691:
	.diab.bseti		r0,2
	lwz		r3,NvM_BlockManagementTable@l(r3)
	se_add		r4,r3		# BlockId=r4 BlockId=r4
	stw		r0,4(r4)		# BlockId=r4
	b		.L1339
.L1340:
# 
#          }
#          else /* [DD-NVM00405-MGC01-V1] */
#          {
#             Set_Adm_Block_Attrib_Block_Valid(BlockId,NVM_BLOCK_INVALID);
	.d2line		5069
.Llo692:
	lis		r3,NvM_BlockManagementTable@ha
.Llo693:
	lwz		r0,NvM_BlockManagementTable@l(r3)
	rlwinm		r5,r31,3,13,28		# BlockId=r31
	add		r31,r0,r5		# BlockId=r31
	lwz		r0,4(r31)		# BlockId=r31
	.diab.bclri		r0,1
	lwz		r31,NvM_BlockManagementTable@l(r3)		# BlockId=r31
	se_add		r31,r5		# BlockId=r31 BlockId=r31
	stw		r0,4(r31)		# BlockId=r31
#             Set_Adm_Block_Attrib_Block_Changed(BlockId,NVM_BLOCK_UNCHANGED);
	.d2line		5070
	lwz		r31,NvM_BlockManagementTable@l(r3)		# BlockId=r31
	se_add		r31,r5		# BlockId=r31 BlockId=r31
	lwz		r0,4(r31)		# BlockId=r31
	.diab.bclri		r0,2
	lwz		r3,NvM_BlockManagementTable@l(r3)
	se_add		r5,r3
	stw		r0,4(r5)
.L1339:
#          }
#       }
# 
#       tmp_status = E_OK;
	.d2line		5074
.Llo698:
	diab.li		r29,0		# tmp_status=r29
# 
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5076
.Llo701:
	bl		SchM_Exit_NvM_EaServiceProcessQueue
.L1334:
#    }
# 
#    return tmp_status;
	.d2line		5079
.Llo694:
	rlwinm		r3,r29,0,24,31		# tmp_status=r29
# }
	.d2line		5080
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo702:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2327:
	.type		NvM_SetRamBlockStatus,@function
	.size		NvM_SetRamBlockStatus,.-NvM_SetRamBlockStatus
# Number of nodes = 226

# Allocations for NvM_SetRamBlockStatus
#	?a4		BlockId
#	?a5		BlockChanged
#	?a6		tmp_status
#	?a7		crc_type
# FUNC(Std_ReturnType, NVM_CODE) NvM_ReadBlock /* [DD-NVM00454-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         5091,32
#$$ld
.L2337:

#$$bf	NvM_ReadBlock,interprocedural,rasave,nostackparams
	.globl		NvM_ReadBlock
	.d2_cfa_start __cie
NvM_ReadBlock:
.Llo705:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# BlockId=r31 BlockId=r3
	mr		r30,r4		# NvM_DstPtr=r30 NvM_DstPtr=r4
	.d2prologue_end
# (
#    VAR(NvM_BlockIdType,AUTOMATIC) BlockId,
#    P2VAR(void,AUTOMATIC,NVM_APPL_DATA) NvM_DstPtr
# )
# {
#    VAR(Std_ReturnType,AUTOMATIC) tmp_status = E_NOT_OK;
	.d2line		5097
	diab.li		r29,1		# tmp_status=r29
# 
#    SchM_Enter_NvM_EaServiceProcessQueue();
	.d2line		5099
	bl		SchM_Enter_NvM_EaServiceProcessQueue
#    if(NVM_INITIALIZED != NvM_InitStatus)
	.d2line		5100
.Llo706:
	lis		r3,NvM_InitStatus@ha
	lwz		r0,NvM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L1361	# eq
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5102
.Llo707:
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1362
.L1361:
#       NVM_ASSERT_DET(NVM_READ_BLOCK_ID, NVM_E_NOT_INITIALIZED); /* [DD-NVM00614-MGC01-V1] */
#    }
#    else if((NVM_BLOCK_0 == BlockId) || (BlockId >= Get_Conf_Total_Block_Number()))
	.d2line		5105
	rlwinm		r3,r31,0,16,31		# BlockId=r31
	se_cmpi		r3,0
	bc		1,2,.L1371	# eq
	rlwinm		r5,r31,0,16,31		# BlockId=r31
	lis		r3,(NvM_Common+4)@ha
	lhz		r0,(NvM_Common+4)@l(r3)
	se_cmp		r5,r0
	bc		1,0,.L1363	# lt
.L1371:
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5107
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1362
.L1363:
#       /* [DD-NVM00618-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_READ_BLOCK_ID, NVM_E_PARAM_BLOCK_ID);
#    }
#    /* [DD-NVM00385-MGC02-V1] [DD-NVM00385-MGC03-V1] */
#    else if((NvM_RequestResultType)NVM_REQ_PENDING == Get_Adm_Block_Error_Status(BlockId))
	.d2line		5112
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r5,r31,3,13,28		# BlockId=r31
	se_add		r3,r5
	lbz		r0,1(r3)
	se_cmpi		r0,2
	bc		0,2,.L1365	# ne
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5114
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1362
.L1365:
#       NVM_ASSERT_DET(NVM_READ_BLOCK_ID, NVM_E_BLOCK_PENDING); /* [DD-NVM00615-MGC01-V1] */
#    }
#    else if((!Is_Conf_Block_Permanent(BlockId)) && (NULL_PTR == NvM_DstPtr))
	.d2line		5117
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r5,r31,6,10,25		# BlockId=r31
	se_add		r3,r5
	lwz		r0,32(r3)
	se_cmpi		r0,0
	bc		0,2,.L1367	# ne
	se_cmpi		r30,0		# NvM_DstPtr=r30
	bc		0,2,.L1367	# ne
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5119
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1362
.L1367:
#       /* [DD-NVM00616-MGC01-V1] [DD-NVM00196-MGC01-V1] [DD-NVM00278-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_READ_BLOCK_ID, NVM_E_PARAM_ADDRESS);
#    }
#    else
#    {
#       if(NULL_PTR==NvM_DstPtr)
	.d2line		5125
	se_cmpi		r30,0		# NvM_DstPtr=r30
	bc		0,2,.L1369	# ne
#       {
#          NvM_DstPtr=Get_Conf_Ram_Block_Addr(BlockId);
	.d2line		5127
.Llo712:
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r5,r31,6,10,25		# BlockId=r31
	se_add		r3,r5
	lwz		r30,32(r3)		# NvM_DstPtr=r30
	mr		r30,r30		# NvM_DstPtr=r30 NvM_DstPtr=r30
.L1369:
#       }
#       /* [DD-NVM00374-MGC01-V1] [DD-NVM00568-MGC01-V1] [DD-NVM00726-MGC01-V1] [DD-NVM00385-MGC01-V1] */
#       /* [DD-NVM00752-MGC01-V1] */
#       tmp_status=NvM_QueueInsert(BlockId,
	.d2line		5131
	rlwinm		r3,r31,0,16,31		# tmp_status=r3 BlockId=r31
	mr		r5,r30		# NvM_DstPtr=r5 NvM_DstPtr=r30
	diab.li		r4,6
	bl		NvM_QueueInsert
.Llo713:
	mr		r29,r3		# tmp_status=r29 tmp_status=r3
#                                  NVM_READ_BLOCK_ID,
#                                  NvM_DstPtr
# #if (NVM_JOB_PRIORITIZATION==STD_ON)
#                                  ,FALSE
# #endif
#                                  ); /* [DD-NVM00195-MGC01-V1] */
#       if(E_OK==tmp_status)
	.d2line		5138
	rlwinm		r3,r3,0,24,31		# tmp_status=r3 tmp_status=r3
	se_cmpi		r3,0		# tmp_status=r3
	bc		0,2,.L1370	# ne
#       {
#          /* [DD-NVM00198-MGC01-V1] */
#          Set_Adm_Block_Attrib_Block_Valid(BlockId,NVM_BLOCK_INVALID);
	.d2line		5141
.Llo709:
	lis		r3,NvM_BlockManagementTable@ha		# tmp_status=r3
.Llo714:
	lwz		r0,NvM_BlockManagementTable@l(r3)		# tmp_status=r3
	rlwinm		r5,r31,3,13,28		# NvM_DstPtr=r5 BlockId=r31
.Llo710:
	add		r31,r0,r5		# BlockId=r31 NvM_DstPtr=r5
	lwz		r0,4(r31)		# BlockId=r31
	.diab.bclri		r0,1
	lwz		r31,NvM_BlockManagementTable@l(r3)		# BlockId=r31 tmp_status=r3
	se_add		r31,r5		# BlockId=r31 BlockId=r31 NvM_DstPtr=r5
	stw		r0,4(r31)		# BlockId=r31
#          /* [DD-NVM00185-MGC01-V1] */
#          Set_Adm_Block_Error_Status(BlockId, (NvM_RequestResultType)NVM_REQ_PENDING);
	.d2line		5143
	diab.li		r0,2
	lwz		r3,NvM_BlockManagementTable@l(r3)		# tmp_status=r3 tmp_status=r3
	se_add		r5,r3		# NvM_DstPtr=r5 NvM_DstPtr=r5 tmp_status=r3
	stb		r0,1(r5)		# NvM_DstPtr=r5
.L1370:
#       }
# 
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5146
.Llo711:
	bl		SchM_Exit_NvM_EaServiceProcessQueue
.L1362:
#    }
# 
#    return tmp_status;
	.d2line		5149
.Llo708:
	rlwinm		r3,r29,0,24,31		# tmp_status=r3 tmp_status=r29
# }
	.d2line		5150
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo715:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2338:
	.type		NvM_ReadBlock,@function
	.size		NvM_ReadBlock,.-NvM_ReadBlock
# Number of nodes = 129

# Allocations for NvM_ReadBlock
#	?a4		BlockId
#	?a5		NvM_DstPtr
#	?a6		tmp_status
# FUNC(Std_ReturnType, NVM_CODE) NvM_WriteBlock /* [DD-NVM00455-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         5155,32
#$$ld
.L2348:

#$$bf	NvM_WriteBlock,interprocedural,rasave,nostackparams
	.globl		NvM_WriteBlock
	.d2_cfa_start __cie
NvM_WriteBlock:
.Llo716:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# BlockId=r31 BlockId=r3
	mr		r30,r4		# NvM_SrcPtr=r30 NvM_SrcPtr=r4
	.d2prologue_end
# (
#    VAR(NvM_BlockIdType,AUTOMATIC) BlockId,
#    P2CONST(void,AUTOMATIC,NVM_APPL_DATA) NvM_SrcPtr
# )
# {
#    VAR(Std_ReturnType,AUTOMATIC) tmp_status = E_NOT_OK;
	.d2line		5161
	diab.li		r29,1		# tmp_status=r29
# 
#    SchM_Enter_NvM_EaServiceProcessQueue();
	.d2line		5163
	bl		SchM_Enter_NvM_EaServiceProcessQueue
#    if(NVM_INITIALIZED != NvM_InitStatus)
	.d2line		5164
.Llo717:
	lis		r3,NvM_InitStatus@ha
	lwz		r0,NvM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L1381	# eq
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5166
.Llo718:
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1382
.L1381:
#       NVM_ASSERT_DET(NVM_WRITE_BLOCK_ID, NVM_E_NOT_INITIALIZED); /* [DD-NVM00619-MGC01-V1] */
#    }
#    else if((NVM_BLOCK_0 == BlockId) || (BlockId >= Get_Conf_Total_Block_Number()))
	.d2line		5169
	rlwinm		r0,r31,0,16,31		# BlockId=r31
	se_cmpi		r0,0
	bc		1,2,.L1397	# eq
	rlwinm		r0,r31,0,16,31		# BlockId=r31
	lis		r3,(NvM_Common+4)@ha
	lhz		r3,(NvM_Common+4)@l(r3)
	se_cmp		r0,r3
	bc		1,0,.L1383	# lt
.L1397:
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5171
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1382
.L1383:
#       /* [DD-NVM00624-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_WRITE_BLOCK_ID, NVM_E_PARAM_BLOCK_ID);
#    }
#    /* [DD-NVM00385-MGC02-V1] [DD-NVM00385-MGC03-V1] */
#    else if((NvM_RequestResultType)NVM_REQ_PENDING == Get_Adm_Block_Error_Status(BlockId))
	.d2line		5176
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	se_add		r3,r0
	lbz		r0,1(r3)
	se_cmpi		r0,2
	bc		0,2,.L1385	# ne
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5178
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1382
.L1385:
#       NVM_ASSERT_DET(NVM_WRITE_BLOCK_ID, NVM_E_BLOCK_PENDING); /* [DD-NVM00620-MGC01-V1] */
#    }
#    else if((!Is_Conf_Block_Permanent(BlockId)) && (NULL_PTR == NvM_SrcPtr))
	.d2line		5181
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# BlockId=r31
	se_add		r3,r0
	lwz		r0,32(r3)
	se_cmpi		r0,0
	bc		0,2,.L1387	# ne
	se_cmpi		r30,0		# NvM_SrcPtr=r30
	bc		0,2,.L1387	# ne
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5183
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1382
.L1387:
#       /* [DD-NVM00622-MGC01-V1] [DD-NVM00210-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_WRITE_BLOCK_ID, NVM_E_PARAM_ADDRESS);
#    }
#    else
#    {
#       if(NULL_PTR==NvM_SrcPtr)
	.d2line		5189
	se_cmpi		r30,0		# NvM_SrcPtr=r30
	bc		0,2,.L1389	# ne
#       {
#          NvM_SrcPtr=Get_Conf_Ram_Block_Addr(BlockId);
	.d2line		5191
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# BlockId=r31
	se_add		r3,r0
	lwz		r30,32(r3)		# NvM_SrcPtr=r30
	mr		r30,r30		# NvM_SrcPtr=r30 NvM_SrcPtr=r30
.L1389:
#       }
#       /* [DD-NVM00751-MGC02-V1] [DD-NVM00753-MGC01-V1] */
#       if(!Is_Adm_Block_Attrib_Block_LockStatus(BlockId))
	.d2line		5194
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	se_add		r3,r0
	lwz		r0,4(r3)
	se_btsti		r0,3
	bc		0,2,.L1396	# ne
#       {
#          /* [DD-NVM00375-MGC01-V1] [DD-NVM00411-MGC01-V1] [DD-NVM00209-MGC01-V1] */
#          if(!Is_Adm_Block_Attrib_Wr_Protection(BlockId))
	.d2line		5197
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	se_add		r3,r0
	lwz		r0,4(r3)
	se_btsti		r0,0
	bc		0,2,.L1391	# ne
#          {
#             /* [DD-NVM00377-MGC01-V1] */
#             if(   (!Is_Conf_Block_Type_Dataset(BlockId))
	.d2line		5200
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# BlockId=r31
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,2
	bc		0,2,.L1398	# ne
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	lbzx		r0,r3,r0
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r3,r31,6,10,25		# BlockId=r31
	se_add		r3,r4
	lbz		r3,16(r3)
	se_cmp		r0,r3
	bc		0,0,.L1392	# ge
.L1398:
#                 ||(Is_Dataset_Points_To_Nv(BlockId, Get_Adm_Block_Dataset_Idx_U16(BlockId)))
#               )
#             {
#                /* PRQA S 311 ++
#                 * MISRA RULE C235 VIOLATION: Dangerous pointer cast
#                 * results in loss of const qualification.
#                 * ram_block_ptr to which NvM_SrcPtr is finally copied
#                 * is  not pointer to constant. It is done in that way
#                 * to be able store all services buffers pointers in one
#                 * location on FIFO (or LIST).
#                 */
#                /* [DD-NVM00385-MGC01-V1] [DD-NVM00208-MGC01-V1] [DD-NVM00311-MGC01-V1] */
#                tmp_status=NvM_QueueInsert(BlockId,
	.d2line		5213
	rlwinm		r3,r31,0,16,31		# tmp_status=r3 BlockId=r31
	mr		r5,r30		# NvM_SrcPtr=r5 NvM_SrcPtr=r30
	diab.li		r4,7
	bl		NvM_QueueInsert
	mr		r29,r3		# tmp_status=r29 tmp_status=r3
#                                           /* [DD-NVM00569-MGC01-V1] [DD-NVM00725-MGC01-V1] */
#                                           NVM_WRITE_BLOCK_ID,
#                                           /* [DD-NVM00280-MGC01-V1] */
#                                           (P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA))NvM_SrcPtr
# #if (NVM_JOB_PRIORITIZATION==STD_ON)
#                                           ,FALSE
# #endif
#                                           );
#                /* PRQA S 311 -- */
#                if(E_OK==tmp_status)
	.d2line		5223
	rlwinm		r3,r3,0,24,31		# tmp_status=r3 tmp_status=r3
	se_cmpi		r3,0		# tmp_status=r3
	bc		0,2,.L1396	# ne
#                {
#                   /* [DD-NVM00185-MGC01-V1] */
#                   Set_Adm_Block_Error_Status(BlockId, (NvM_RequestResultType)NVM_REQ_PENDING);
	.d2line		5226
.Llo719:
	diab.li		r0,2
	lis		r3,NvM_BlockManagementTable@ha		# tmp_status=r3
	lwz		r3,NvM_BlockManagementTable@l(r3)		# tmp_status=r3 tmp_status=r3
.Llo720:
	rlwinm		r31,r31,3,13,28		# BlockId=r31 BlockId=r31
	se_add		r31,r3		# BlockId=r31 BlockId=r31 tmp_status=r3
	stb		r0,1(r31)		# BlockId=r31
	b		.L1396
.L1392:
#                }
#             }
#             else
#             {
#                 NvM_Call_Dem_ReportErrorStatus(BlockId, NVM_DEM_EVENT_E_WRITE_PROTECTED, DEM_EVENT_STATUS_FAILED);
	.d2line		5231
.Llo722:
	mr		r3,r31		# BlockId=r3 BlockId=r31
	diab.li		r4,7
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
	b		.L1396
.L1391:
#             }
#          }
#          else
#          {
#              /* Return value unchanged */ /* [DD-NVM00411-MGC01-V1] [DD-NVM00217-MGC01-V1] */
#              NvM_Call_Dem_ReportErrorStatus(BlockId, NVM_DEM_EVENT_E_WRITE_PROTECTED, DEM_EVENT_STATUS_FAILED);
	.d2line		5237
	mr		r3,r31		# BlockId=r3 BlockId=r31
	diab.li		r4,7
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
.L1396:
#          }
#       }
#       else
#       {
#          /* [DD-NVM00748-MGC01-V1] [DD-NVM00749-MGC01-V1] */
#          NVM_ASSERT_DET(NVM_WRITE_BLOCK_ID, NVM_E_BLOCK_LOCKED);
#       }
# 
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5246
	bl		SchM_Exit_NvM_EaServiceProcessQueue
.L1382:
#    }
# 
#    return tmp_status;
	.d2line		5249
.Llo721:
	rlwinm		r3,r29,0,24,31		# tmp_status=r3 tmp_status=r29
# }
	.d2line		5250
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo723:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2349:
	.type		NvM_WriteBlock,@function
	.size		NvM_WriteBlock,.-NvM_WriteBlock
# Number of nodes = 205

# Allocations for NvM_WriteBlock
#	?a4		BlockId
#	?a5		NvM_SrcPtr
#	?a6		tmp_status
# FUNC(Std_ReturnType, NVM_CODE) NvM_RestoreBlockDefaults /* [DD-NVM00456-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         5254,32
#$$ld
.L2359:

#$$bf	NvM_RestoreBlockDefaults,interprocedural,rasave,nostackparams
	.globl		NvM_RestoreBlockDefaults
	.d2_cfa_start __cie
NvM_RestoreBlockDefaults:
.Llo724:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# BlockId=r31 BlockId=r3
	mr		r30,r4		# NvM_DestPtr=r30 NvM_DestPtr=r4
	.d2prologue_end
# (
#    VAR(NvM_BlockIdType,NVM_VAR) BlockId,
#    P2VAR(void,AUTOMATIC,NVM_APPL_DATA) NvM_DestPtr
# )
# {
#    /* [DD-NVM00391-MGC01-V1] [DD-NVM00392-MGC01-V1] */
#    VAR(Std_ReturnType,AUTOMATIC) tmp_status = E_NOT_OK;
	.d2line		5261
	diab.li		r29,1		# tmp_status=r29
# 
#    SchM_Enter_NvM_EaServiceProcessQueue();
	.d2line		5263
	bl		SchM_Enter_NvM_EaServiceProcessQueue
#    if(NVM_INITIALIZED != NvM_InitStatus)
	.d2line		5264
.Llo725:
	lis		r3,NvM_InitStatus@ha
	lwz		r0,NvM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L1411	# eq
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5266
.Llo726:
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1412
.L1411:
#       /* [DD-NVM00625-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_RESTORE_BLOCK_DEFAULTS_ID, NVM_E_NOT_INITIALIZED);
#    }
#    else if((NVM_BLOCK_0 == BlockId) || (BlockId >= Get_Conf_Total_Block_Number()))
	.d2line		5270
	rlwinm		r3,r31,0,16,31		# BlockId=r31
	se_cmpi		r3,0
	bc		1,2,.L1425	# eq
	rlwinm		r5,r31,0,16,31		# BlockId=r31
	lis		r3,(NvM_Common+4)@ha
	lhz		r0,(NvM_Common+4)@l(r3)
	se_cmp		r5,r0
	bc		1,0,.L1413	# lt
.L1425:
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5272
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1412
.L1413:
#       NVM_ASSERT_DET(NVM_RESTORE_BLOCK_DEFAULTS_ID, NVM_E_PARAM_BLOCK_ID); /* [DD-NVM00630-MGC01-V1] */
#    }
#    /* [DD-NVM00385-MGC02-V1] [DD-NVM00385-MGC03-V1] */
#    else if((NvM_RequestResultType)NVM_REQ_PENDING == Get_Adm_Block_Error_Status(BlockId))
	.d2line		5276
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r5,r31,3,13,28		# BlockId=r31
	se_add		r3,r5
	lbz		r0,1(r3)
	se_cmpi		r0,2
	bc		0,2,.L1415	# ne
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5278
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1412
.L1415:
#       NVM_ASSERT_DET(NVM_RESTORE_BLOCK_DEFAULTS_ID, NVM_E_BLOCK_PENDING); /* [DD-NVM00626-MGC01-V1] */
#    }
#    else if((!Is_Conf_Block_Permanent(BlockId)) && (NULL_PTR == NvM_DestPtr)) /* [DD-NVM00435-MGC01-V1] */
	.d2line		5281
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r5,r31,6,10,25		# BlockId=r31
	se_add		r3,r5
	lwz		r0,32(r3)
	se_cmpi		r0,0
	bc		0,2,.L1417	# ne
	se_cmpi		r30,0		# NvM_DestPtr=r30
	bc		0,2,.L1417	# ne
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5283
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1412
.L1417:
#       /* [DD-NVM00629-MGC01-V1] [DD-NVM00436-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_RESTORE_BLOCK_DEFAULTS_ID, NVM_E_PARAM_ADDRESS);
#    }
#    /* [DD-NVM00883-MGC01-V1] */
#    else if((!Is_Conf_Block_Init_Callback(BlockId)) && (!Is_Conf_Block_Default_Data(BlockId)))
	.d2line		5288
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r5,r31,6,10,25		# BlockId=r31
	se_add		r3,r5
	lwz		r0,40(r3)
	se_cmpi		r0,0
	bc		0,2,.L1419	# ne
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r5,r31,6,10,25		# BlockId=r31
	se_add		r3,r5
	lwz		r0,36(r3)
	se_cmpi		r0,0
	bc		0,2,.L1419	# ne
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5290
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1412
.L1419:
#       NVM_ASSERT_DET(NVM_RESTORE_BLOCK_DEFAULTS_ID, NVM_E_BLOCK_CONFIG); /* [DD-NVM00628-MGC01-V1] */
#    }
#    else
#    {
#       if(Is_Conf_Block_Type_Dataset(BlockId)
	.d2line		5295
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r5,r31,6,10,25		# BlockId=r31
	se_add		r3,r5
	lwz		r0,12(r3)
	se_cmpi		r0,2
	bc		0,2,.L1421	# ne
.Llo731:
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r5,r31,3,13,28		# BlockId=r31
	lbzx		r0,r3,r5
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r3,r31,6,10,25		# BlockId=r31
	se_add		r3,r4
	lbz		r3,16(r3)
	se_cmp		r0,r3
	bc		0,0,.L1421	# ge
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r5,r31,6,10,25		# BlockId=r31
	se_add		r3,r5
	lwz		r0,36(r3)
	se_cmpi		r0,0
	bc		1,2,.L1421	# eq
#        && Is_Adm_Dataset_Idx_Points_To_Nv(BlockId)
#        && Is_Conf_Block_Default_Data(BlockId)
#         )
#       {
#           /* [DD-NVM00353-MGC01-V1] */
#           tmp_status = E_NOT_OK;
	.d2line		5301
	diab.li		r29,1		# tmp_status=r29
.Llo732:
	b		.L1422
.L1421:
#       }
#       else
#       {
#          if(NULL_PTR == NvM_DestPtr)
	.d2line		5305
.Llo733:
	se_cmpi		r30,0		# NvM_DestPtr=r30
	bc		0,2,.L1423	# ne
#          {
#             NvM_DestPtr = Get_Conf_Ram_Block_Addr(BlockId);
	.d2line		5307
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r5,r31,6,10,25		# BlockId=r31
	se_add		r3,r5
	lwz		r30,32(r3)		# NvM_DestPtr=r30
	mr		r30,r30		# NvM_DestPtr=r30 NvM_DestPtr=r30
.L1423:
#          }
#          /* [DD-NVM00385-MGC01-V1] [DD-NVM00224-MGC01-V1] */
#          tmp_status = NvM_QueueInsert(BlockId,
	.d2line		5310
	rlwinm		r3,r31,0,16,31		# tmp_status=r3 BlockId=r31
	mr		r5,r30		# NvM_DestPtr=r5 NvM_DestPtr=r30
	diab.li		r4,8
	bl		NvM_QueueInsert
.Llo734:
	mr		r29,r3		# tmp_status=r29 tmp_status=r3
#                                       NVM_RESTORE_BLOCK_DEFAULTS_ID,
#                                       NvM_DestPtr
# #if (NVM_JOB_PRIORITIZATION == STD_ON)
#                                       ,FALSE
# #endif
#                                     );
# 
#          if(E_OK == tmp_status)
	.d2line		5318
	rlwinm		r3,r3,0,24,31		# tmp_status=r3 tmp_status=r3
	se_cmpi		r3,0		# tmp_status=r3
	bc		0,2,.L1422	# ne
#          {
#             /* [DD-NVM00227-MGC01-V1] */
#             Set_Adm_Block_Attrib_Block_Valid(BlockId, NVM_BLOCK_INVALID);
	.d2line		5321
.Llo728:
	lis		r3,NvM_BlockManagementTable@ha		# tmp_status=r3
.Llo735:
	lwz		r0,NvM_BlockManagementTable@l(r3)		# tmp_status=r3
	rlwinm		r5,r31,3,13,28		# NvM_DestPtr=r5 BlockId=r31
.Llo729:
	add		r31,r0,r5		# BlockId=r31 NvM_DestPtr=r5
	lwz		r0,4(r31)		# BlockId=r31
	.diab.bclri		r0,1
	lwz		r31,NvM_BlockManagementTable@l(r3)		# BlockId=r31 tmp_status=r3
	se_add		r31,r5		# BlockId=r31 BlockId=r31 NvM_DestPtr=r5
	stw		r0,4(r31)		# BlockId=r31
#             /* [DD-NVM00185-MGC01-V1] */
#             Set_Adm_Block_Error_Status(BlockId, (NvM_RequestResultType)NVM_REQ_PENDING);
	.d2line		5323
	diab.li		r0,2
	lwz		r3,NvM_BlockManagementTable@l(r3)		# tmp_status=r3 tmp_status=r3
	se_add		r5,r3		# NvM_DestPtr=r5 NvM_DestPtr=r5 tmp_status=r3
	stb		r0,1(r5)		# NvM_DestPtr=r5
.L1422:
#          }
#       }
# 
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5327
.Llo730:
	bl		SchM_Exit_NvM_EaServiceProcessQueue
.L1412:
#    }
# 
#    return tmp_status;
	.d2line		5330
.Llo727:
	rlwinm		r3,r29,0,24,31		# tmp_status=r3 tmp_status=r29
# }
	.d2line		5331
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo736:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2360:
	.type		NvM_RestoreBlockDefaults,@function
	.size		NvM_RestoreBlockDefaults,.-NvM_RestoreBlockDefaults
# Number of nodes = 221

# Allocations for NvM_RestoreBlockDefaults
#	?a4		BlockId
#	?a5		NvM_DestPtr
#	?a6		tmp_status
# FUNC(Std_ReturnType, NVM_CODE) NvM_EraseNvBlock /* [DD-NVM00457-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         5337,32
#$$ld
.L2368:

#$$bf	NvM_EraseNvBlock,interprocedural,rasave,nostackparams
	.globl		NvM_EraseNvBlock
	.d2_cfa_start __cie
NvM_EraseNvBlock:
.Llo737:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# BlockId=r31 BlockId=r3
	.d2prologue_end
# (
#    VAR(NvM_BlockIdType,AUTOMATIC) BlockId
# )
# {
#    VAR(Std_ReturnType,AUTOMATIC) tmp_status = E_NOT_OK;
	.d2line		5342
	diab.li		r30,1		# tmp_status=r30
# 
#    SchM_Enter_NvM_EaServiceProcessQueue();
	.d2line		5344
	bl		SchM_Enter_NvM_EaServiceProcessQueue
#    if(NVM_INITIALIZED != NvM_InitStatus)
	.d2line		5345
.Llo738:
	lis		r3,NvM_InitStatus@ha
	lwz		r0,NvM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L1437	# eq
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5347
.Llo739:
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1438
.L1437:
#       /* [DD-NVM00631-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_ERASE_BLOCK_ID, NVM_E_NOT_INITIALIZED);
#    }
#    else if((NVM_BLOCK_0 == BlockId) || (BlockId >= Get_Conf_Total_Block_Number()))
	.d2line		5351
	rlwinm		r0,r31,0,16,31		# BlockId=r31
	se_cmpi		r0,0
	bc		1,2,.L1449	# eq
	rlwinm		r0,r31,0,16,31		# BlockId=r31
	lis		r3,(NvM_Common+4)@ha
	lhz		r3,(NvM_Common+4)@l(r3)
	se_cmp		r0,r3
	bc		1,0,.L1439	# lt
.L1449:
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5353
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1438
.L1439:
#       /* [DD-NVM00635-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_ERASE_BLOCK_ID, NVM_E_PARAM_BLOCK_ID);
#    }
#    /* [DD-NVM00385-MGC02-V1] [DD-NVM00385-MGC03-V1] */
#    else if((NvM_RequestResultType)NVM_REQ_PENDING == Get_Adm_Block_Error_Status(BlockId))
	.d2line		5358
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	se_add		r3,r0
	lbz		r0,1(r3)
	se_cmpi		r0,2
	bc		0,2,.L1441	# ne
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5360
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1438
.L1441:
#       /* [DD-NVM00632-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_ERASE_BLOCK_ID, NVM_E_BLOCK_PENDING);
#    }
#    else if(!Is_Conf_Block_Immediate_Priority(BlockId)) /* [DD-NVM00357-MGC01-V1] */
	.d2line		5364
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# BlockId=r31
	se_add		r3,r0
	lbz		r0,18(r3)
	se_cmpi		r0,0
	bc		1,2,.L1443	# eq
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5366
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1438
.L1443:
#       /* [DD-NVM00636-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_ERASE_BLOCK_ID, NVM_E_BLOCK_CONFIG);
#    }
#    else
#    {
#       /* erase is allowed only to block with disabled write
#        * protection (also ROM block are treated as write protected) */
#       /* [DD-NVM00751-MGC05-V1] [DD-NVM00753-MGC01-V1] */
#       if(!Is_Adm_Block_Attrib_Block_LockStatus(BlockId))
	.d2line		5375
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	se_add		r3,r0
	lwz		r0,4(r3)
	se_btsti		r0,3
	bc		0,2,.L1445	# ne
#       {
#          /* [DD-NVM00375-MGC01-V1] [DD-NVM00377-MGC01-V1] [DD-NVM00418-MGC01-V1] */
#          /* [DD-NVM00262-MGC01-V1] [DD-NVM00230-MGC01-V1] */
#          if(   (!Is_Adm_Block_Attrib_Wr_Protection(BlockId))
	.d2line		5379
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	se_add		r3,r0
	lwz		r0,4(r3)
	se_btsti		r0,0
	bc		0,2,.L1446	# ne
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# BlockId=r31
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,2
	bc		0,2,.L1450	# ne
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	lbzx		r0,r3,r0
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r3,r31,6,10,25		# BlockId=r31
	se_add		r3,r4
	lbz		r3,16(r3)
	se_cmp		r0,r3
	bc		0,0,.L1446	# ge
.L1450:
#              &&( (!Is_Conf_Block_Type_Dataset(BlockId))
#                  || (Is_Adm_Dataset_Idx_Points_To_Nv(BlockId))) /* [DD-NVM00661-MGC01-V1] */
#            )
#          {
#             /* [DD-NVM00385-MGC01-V1] [DD-NVM00231-MGC01-V1] */
#             tmp_status=NvM_QueueInsert(BlockId,
	.d2line		5385
	rlwinm		r3,r31,0,16,31		# tmp_status=r3 BlockId=r31
	diab.li		r4,9
	diab.li		r5,0
	bl		NvM_QueueInsert
	mr		r30,r3		# tmp_status=r30 tmp_status=r3
#                                        NVM_ERASE_BLOCK_ID,
#                                        NULL_PTR
# #if (NVM_JOB_PRIORITIZATION==STD_ON)
#                                        ,FALSE
# #endif
#             );
#             if(E_OK==tmp_status)
	.d2line		5392
	rlwinm		r3,r3,0,24,31		# tmp_status=r3 tmp_status=r3
	se_cmpi		r3,0		# tmp_status=r3
	bc		0,2,.L1445	# ne
#             {
#                /* [DD-NVM99001-MGC01-V1] */
#                Set_Adm_Block_Attrib_Block_Changed(BlockId, NVM_BLOCK_UNCHANGED);
	.d2line		5395
	lis		r3,NvM_BlockManagementTable@ha		# tmp_status=r3
	lwz		r4,NvM_BlockManagementTable@l(r3)		# tmp_status=r3
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	add		r31,r4,r0		# BlockId=r31
	lwz		r5,4(r31)		# BlockId=r31
	.diab.bclri		r5,2
	lwz		r31,NvM_BlockManagementTable@l(r3)		# BlockId=r31 tmp_status=r3
	se_add		r31,r0		# BlockId=r31 BlockId=r31
	stw		r5,4(r31)		# BlockId=r31
#                Set_Adm_Block_Attrib_Block_Valid(BlockId, NVM_BLOCK_INVALID);
	.d2line		5396
	lwz		r31,NvM_BlockManagementTable@l(r3)		# BlockId=r31 tmp_status=r3
	se_add		r31,r0		# BlockId=r31 BlockId=r31
	lwz		r5,4(r31)		# BlockId=r31
	.diab.bclri		r5,1
	lwz		r31,NvM_BlockManagementTable@l(r3)		# BlockId=r31 tmp_status=r3
	se_add		r31,r0		# BlockId=r31 BlockId=r31
	stw		r5,4(r31)		# BlockId=r31
#                /* [DD-NVM00185-MGC01-V1] */
#                Set_Adm_Block_Error_Status(BlockId, (NvM_RequestResultType)NVM_REQ_PENDING);
	.d2line		5398
	diab.li		r4,2
	lwz		r31,NvM_BlockManagementTable@l(r3)		# BlockId=r31 tmp_status=r3
	se_add		r31,r0		# BlockId=r31 BlockId=r31
	stb		r4,1(r31)		# BlockId=r31
	b		.L1445
.L1446:
#             }
#          }
#          else
#          {
#              /* [DD-NVM00417-MGC01-V1] */
#              NvM_Call_Dem_ReportErrorStatus(BlockId, NVM_DEM_EVENT_E_WRITE_PROTECTED, DEM_EVENT_STATUS_FAILED);
	.d2line		5404
	mr		r3,r31		# BlockId=r3 BlockId=r31
	diab.li		r4,7
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
.L1445:
#          }
#       }
# 
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5408
	bl		SchM_Exit_NvM_EaServiceProcessQueue
.L1438:
#    }
# 
#    return tmp_status;
	.d2line		5411
.Llo740:
	rlwinm		r3,r30,0,24,31		# tmp_status=r3 tmp_status=r30
# }
	.d2line		5412
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo741:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2369:
	.type		NvM_EraseNvBlock,@function
	.size		NvM_EraseNvBlock,.-NvM_EraseNvBlock
# Number of nodes = 201

# Allocations for NvM_EraseNvBlock
#	?a4		BlockId
#	?a5		tmp_status
# FUNC(Std_ReturnType, NVM_CODE) NvM_CancelJobs /* [DD-NVM00535-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         5417,32
#$$ld
.L2376:

#$$bf	NvM_CancelJobs,interprocedural,rasave,nostackparams
	.globl		NvM_CancelJobs
	.d2_cfa_start __cie
NvM_CancelJobs:
.Llo742:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# BlockId=r31 BlockId=r3
	.d2prologue_end
# (
#    VAR(NvM_BlockIdType,AUTOMATIC) BlockId
# )
# {
#    VAR(Std_ReturnType,AUTOMATIC) tmp_status = E_NOT_OK;
	.d2line		5422
	diab.li		r30,1		# tmp_status=r30
# 
#    if(NVM_INITIALIZED != NvM_InitStatus)
	.d2line		5424
	lis		r3,NvM_InitStatus@ha
.Llo743:
	lwz		r0,NvM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L1462	# ne
#    {
#       NVM_ASSERT_DET(NVM_CANCEL_JOB_ID, NVM_E_NOT_INITIALIZED); /* [DD-NVM00648-MGC01-V1] */
#    }
#    else if(BlockId >= Get_Conf_Total_Block_Number())
	.d2line		5428
.Llo744:
	rlwinm		r0,r31,0,16,31		# BlockId=r31
	lis		r3,(NvM_Common+4)@ha
	lhz		r3,(NvM_Common+4)@l(r3)
	se_cmp		r0,r3
	bc		0,0,.L1462	# ge
#    {
#       NVM_ASSERT_DET(NVM_CANCEL_JOB_ID, NVM_E_PARAM_BLOCK_ID); /* [DD-NVM00649-MGC01-V1] */
#    }
#    else
#    {
#       if(NvM_Current_Block.block_id != BlockId)
	.d2line		5434
	lis		r3,(NvM_Current_Block+4)@ha
	lhz		r0,(NvM_Current_Block+4)@l(r3)
	rlwinm		r3,r31,0,16,31		# BlockId=r31
	se_cmp		r0,r3
	bc		1,2,.L1462	# eq
	.section	.text_vle
.L2382:
#       {
#          VAR(boolean,AUTOMATIC) no_error = TRUE;
	.d2line		5436
	diab.li		r0,1		# no_error=r0
# 
# #if (NVM_JOB_PRIORITIZATION==STD_OFF)
#          no_error = NvM_QueueRemoveJob(BlockId);
	.d2line		5439
	rlwinm		r3,r31,0,16,31		# no_error=r3 BlockId=r31
	bl		NvM_QueueRemoveJob
.Llo749:
	mr		r3,r3		# no_error=r3 no_error=r3
# #else
#          no_error= NvM_ListRemoveJob(BlockId);
#          if(no_error!=TRUE)
#          {
#             no_error = NvM_QueueRemoveJob(BlockId);
#          }
# #endif
#          if(TRUE==no_error)
	.d2line		5447
	rlwinm		r3,r3,0,24,31		# no_error=r3 no_error=r3
	se_cmpi		r3,1		# no_error=r3
	bc		0,2,.L1462	# ne
#          {
#             /* [DD-NVM00536-MGC01-V1] [DD-NVM00225-MGC01-V1] */
#             Set_Adm_Block_Error_Status(BlockId, (NvM_RequestResultType)NVM_REQ_CANCELED);
	.d2line		5450
.Llo745:
	diab.li		r0,6		# no_error=r0
.Llo750:
	lis		r3,NvM_BlockManagementTable@ha		# no_error=r3
	lwz		r3,NvM_BlockManagementTable@l(r3)		# no_error=r3 no_error=r3
.Llo746:
	rlwinm		r31,r31,3,13,28		# BlockId=r31 BlockId=r31
	se_add		r31,r3		# BlockId=r31 BlockId=r31 no_error=r3
	stb		r0,1(r31)		# BlockId=r31 no_error=r0
#             tmp_status = E_OK;
	.d2line		5451
	diab.li		r30,0		# tmp_status=r30
	.section	.text_vle
.L2383:
.L1462:
#          }
#       }
# 
#    }
# 
#    return tmp_status;
	.d2line		5457
.Llo747:
	rlwinm		r3,r30,0,24,31		# no_error=r3 tmp_status=r30
# }
	.d2line		5458
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo748:
	lwz		r0,36(r1)		# no_error=r0
	mtspr		lr,r0		# no_error=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2377:
	.type		NvM_CancelJobs,@function
	.size		NvM_CancelJobs,.-NvM_CancelJobs
# Number of nodes = 56

# Allocations for NvM_CancelJobs
#	?a4		BlockId
#	?a5		tmp_status
#	?a6		no_error
# FUNC(void, NVM_CODE) NvM_CancelWriteAll(void) /* [DD-NVM00458-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         5461,22
#$$ld
.L2390:

#$$bf	NvM_CancelWriteAll,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		NvM_CancelWriteAll
	.d2_cfa_start __cie
NvM_CancelWriteAll:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    if(NVM_INITIALIZED != NvM_InitStatus)
	.d2line		5463
	lis		r3,NvM_InitStatus@ha
	lwz		r0,NvM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L1468	# ne
#    {
#       /* [DD-NVM00637-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_CANCEL_WRITE_ALL_ID, NVM_E_NOT_INITIALIZED);
#    }
#    else
#    {
#       /* [DD-NVM00255-MGC01-V1] [DD-NVM00420-MGC01-V1] */
#       if(NVM_WRITE_ALL_ID==NvM_Req_Multiblock)
	.d2line		5471
	lis		r3,NvM_Req_Multiblock@ha
	lwz		r0,NvM_Req_Multiblock@l(r3)
	se_cmpi		r0,13
	bc		0,2,.L1468	# ne
#       {
#          /* [DD-NVM00019-MGC01-V1] [DD-NVM00232-MGC01-V1] [DD-NVM00234-MGC01-V1] */
#          req_cancel_write_all=TRUE;
	.d2line		5474
	diab.li		r0,1
	lis		r3,req_cancel_write_all@ha
	e_add16i		r3,r3,req_cancel_write_all@l
	stb		r0,0(r3)
.L1468:
#       }
#       /* else [DD-NVM00233-MGC01-V1] */
#    }
# }
	.d2line		5478
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2391:
	.type		NvM_CancelWriteAll,@function
	.size		NvM_CancelWriteAll,.-NvM_CancelWriteAll
# Number of nodes = 9

# Allocations for NvM_CancelWriteAll
# FUNC(Std_ReturnType, NVM_CODE) NvM_InvalidateNvBlock /* [DD-NVM00459-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         5481,32
#$$ld
.L2395:

#$$bf	NvM_InvalidateNvBlock,interprocedural,rasave,nostackparams
	.globl		NvM_InvalidateNvBlock
	.d2_cfa_start __cie
NvM_InvalidateNvBlock:
.Llo751:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# BlockId=r31 BlockId=r3
	.d2prologue_end
# (
#    VAR(NvM_BlockIdType,AUTOMATIC) BlockId
# )
# {
#    VAR(Std_ReturnType,AUTOMATIC) tmp_status = E_NOT_OK;
	.d2line		5486
	diab.li		r30,1		# tmp_status=r30
# 
#    SchM_Enter_NvM_EaServiceProcessQueue();
	.d2line		5488
	bl		SchM_Enter_NvM_EaServiceProcessQueue
#    if(NVM_INITIALIZED != NvM_InitStatus)
	.d2line		5489
.Llo752:
	lis		r3,NvM_InitStatus@ha
	lwz		r0,NvM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L1474	# eq
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5491
.Llo753:
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1475
.L1474:
#       /* [DD-NVM00638-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_INVALIDATE_NV_BLOCK_ID, NVM_E_NOT_INITIALIZED);
#    }
#    else if((NVM_BLOCK_0 == BlockId) || (BlockId >= Get_Conf_Total_Block_Number()))
	.d2line		5495
	rlwinm		r0,r31,0,16,31		# BlockId=r31
	se_cmpi		r0,0
	bc		1,2,.L1486	# eq
	rlwinm		r0,r31,0,16,31		# BlockId=r31
	lis		r3,(NvM_Common+4)@ha
	lhz		r3,(NvM_Common+4)@l(r3)
	se_cmp		r0,r3
	bc		1,0,.L1476	# lt
.L1486:
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5497
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1475
.L1476:
#       /* [DD-NVM00642-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_INVALIDATE_NV_BLOCK_ID, NVM_E_PARAM_BLOCK_ID);
#    }
#    /* [DD-NVM00385-MGC02-V1] [DD-NVM00385-MGC03-V1] */
#    else if((NvM_RequestResultType)NVM_REQ_PENDING == Get_Adm_Block_Error_Status(BlockId))
	.d2line		5502
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	se_add		r3,r0
	lbz		r0,1(r3)
	se_cmpi		r0,2
	bc		0,2,.L1478	# ne
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5504
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1475
.L1478:
#       /* [DD-NVM00639-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_INVALIDATE_NV_BLOCK_ID, NVM_E_BLOCK_PENDING);
#    }
#    else
#    {
#       /* [DD-NVM00751-MGC04-V1] [DD-NVM00753-MGC01-V1] */
#       if(!Is_Adm_Block_Attrib_Block_LockStatus(BlockId))
	.d2line		5511
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	se_add		r3,r0
	lwz		r0,4(r3)
	se_btsti		r0,3
	bc		0,2,.L1480	# ne
#       {
#          /* [DD-NVM00375-MGC01-V1] [DD-NVM00423-MGC01-V1] [DD-NVM00665-MGC01-V1] */
#          if(!Is_Adm_Block_Attrib_Wr_Protection(BlockId))
	.d2line		5514
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	se_add		r3,r0
	lwz		r0,4(r3)
	se_btsti		r0,0
	bc		0,2,.L1481	# ne
#          {
#             if((!Is_Conf_Block_Type_Dataset(BlockId))
	.d2line		5516
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r3,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r0,r31,6,10,25		# BlockId=r31
	se_add		r3,r0
	lwz		r0,12(r3)
	se_cmpi		r0,2
	bc		0,2,.L1487	# ne
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	lbzx		r0,r3,r0
	lis		r3,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r3)
	rlwinm		r3,r31,6,10,25		# BlockId=r31
	se_add		r3,r4
	lbz		r3,16(r3)
	se_cmp		r0,r3
	bc		0,0,.L1482	# ge
.L1487:
#              || Is_Adm_Dataset_Idx_Points_To_Nv(BlockId) /* [DD-NVM00664-MGC01-V1] */
#               )
#             {
#                /* [DD-NVM00385-MGC01-V1] [DD-NVM00421-MGC01-V1] [DD-NVM00424-MGC01-V1] */
#                /* [DD-NVM00239-MGC01-V1] */
#                tmp_status = NvM_QueueInsert(BlockId,
	.d2line		5522
	rlwinm		r3,r31,0,16,31		# tmp_status=r3 BlockId=r31
	diab.li		r4,11
	diab.li		r5,0
	bl		NvM_QueueInsert
	mr		r30,r3		# tmp_status=r30 tmp_status=r3
#                                             NVM_INVALIDATE_NV_BLOCK_ID,
#                                             NULL_PTR
# #if (NVM_JOB_PRIORITIZATION == STD_ON)
#                                             ,FALSE
# #endif
#                );
# 
#                if(E_OK == tmp_status)
	.d2line		5530
	rlwinm		r3,r3,0,24,31		# tmp_status=r3 tmp_status=r3
	se_cmpi		r3,0		# tmp_status=r3
	bc		0,2,.L1480	# ne
#                {
#                   /* [DD-NVM99002-MGC01-V1] */
#                   Set_Adm_Block_Attrib_Block_Changed(BlockId, NVM_BLOCK_UNCHANGED);
	.d2line		5533
	lis		r3,NvM_BlockManagementTable@ha		# tmp_status=r3
	lwz		r4,NvM_BlockManagementTable@l(r3)		# tmp_status=r3
	rlwinm		r0,r31,3,13,28		# BlockId=r31
	add		r31,r4,r0		# BlockId=r31
	lwz		r5,4(r31)		# BlockId=r31
	.diab.bclri		r5,2
	lwz		r31,NvM_BlockManagementTable@l(r3)		# BlockId=r31 tmp_status=r3
	se_add		r31,r0		# BlockId=r31 BlockId=r31
	stw		r5,4(r31)		# BlockId=r31
#                   Set_Adm_Block_Attrib_Block_Valid(BlockId, NVM_BLOCK_INVALID);
	.d2line		5534
	lwz		r31,NvM_BlockManagementTable@l(r3)		# BlockId=r31 tmp_status=r3
	se_add		r31,r0		# BlockId=r31 BlockId=r31
	lwz		r5,4(r31)		# BlockId=r31
	.diab.bclri		r5,1
	lwz		r31,NvM_BlockManagementTable@l(r3)		# BlockId=r31 tmp_status=r3
	se_add		r31,r0		# BlockId=r31 BlockId=r31
	stw		r5,4(r31)		# BlockId=r31
#                   /* [DD-NVM00185-MGC01-V1] */
#                   Set_Adm_Block_Error_Status(BlockId, (NvM_RequestResultType)NVM_REQ_PENDING);
	.d2line		5536
	diab.li		r4,2
	lwz		r31,NvM_BlockManagementTable@l(r3)		# BlockId=r31 tmp_status=r3
	se_add		r31,r0		# BlockId=r31 BlockId=r31
	stb		r4,1(r31)		# BlockId=r31
	b		.L1480
.L1482:
#                }
#             }
#             else
#             {
#                NvM_Call_Dem_ReportErrorStatus(BlockId, NVM_DEM_EVENT_E_WRITE_PROTECTED, DEM_EVENT_STATUS_FAILED);
	.d2line		5541
	mr		r3,r31		# BlockId=r3 BlockId=r31
	diab.li		r4,7
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
	b		.L1480
.L1481:
#             }
#          }
#          else
#          {
#             /* return value remains */
#             /* [DD-NVM00423-MGC01-V1] [DD-NVM00272-MGC01-V1] [DD-NVM00273-MGC01-V1] */
#             NvM_Call_Dem_ReportErrorStatus(BlockId, NVM_DEM_EVENT_E_WRITE_PROTECTED, DEM_EVENT_STATUS_FAILED);
	.d2line		5548
	mr		r3,r31		# BlockId=r3 BlockId=r31
	diab.li		r4,7
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
.L1480:
#          }
#       }
# 
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5552
	bl		SchM_Exit_NvM_EaServiceProcessQueue
.L1475:
#    }
# 
#    return tmp_status;
	.d2line		5555
.Llo754:
	rlwinm		r3,r30,0,24,31		# tmp_status=r3 tmp_status=r30
# }
	.d2line		5556
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo755:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2396:
	.type		NvM_InvalidateNvBlock,@function
	.size		NvM_InvalidateNvBlock,.-NvM_InvalidateNvBlock
# Number of nodes = 192

# Allocations for NvM_InvalidateNvBlock
#	?a4		BlockId
#	?a5		tmp_status
# FUNC(void, NVM_CODE) NvM_ReadAll(void)
	.align		2
	.section	.text_vle
        .d2line         5560,22
#$$ld
.L2403:

#$$bf	NvM_ReadAll,interprocedural,rasave,nostackparams
	.globl		NvM_ReadAll
	.d2_cfa_start __cie
NvM_ReadAll:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    SchM_Enter_NvM_EaServiceProcessQueue();
	.d2line		5562
	bl		SchM_Enter_NvM_EaServiceProcessQueue
#    if(NVM_INITIALIZED != NvM_InitStatus)
	.d2line		5563
	lis		r3,NvM_InitStatus@ha
	lwz		r0,NvM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L1498	# eq
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5565
	bl		SchM_Exit_NvM_EaServiceProcessQueue
#       /* [DD-NVM00646-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_READ_ALL_ID, NVM_E_NOT_INITIALIZED);
#       NvM_Call_Dem_ReportErrorStatus(NVM_BLOCK_0, NVM_DEM_EVENT_E_REQ_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		5568
	diab.li		r3,0
	diab.li		r4,2
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
	b		.L1497
.L1498:
#    }
#    else
#    {
#       if( (NvM_RequestResultType)NVM_REQ_PENDING != Get_Adm_Block_Error_Status(NVM_BLOCK_0))
	.d2line		5572
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	lbz		r0,1(r3)
	se_cmpi		r0,2
	bc		1,2,.L1500	# eq
	.section	.text_vle
.L2406:
#       {
#          VAR(NvM_BlockIdType, AUTOMATIC) tmp_idx;
# 
#          for(tmp_idx = NVM_BLOCK_0; tmp_idx < Get_Conf_Total_Block_Number(); tmp_idx++)
	.d2line		5576
	diab.li		r3,0		# tmp_idx=r3
.L1501:
.Llo756:
	rlwinm		r0,r3,0,16,31		# tmp_idx=r3
	lis		r4,(NvM_Common+4)@ha
	lhz		r4,(NvM_Common+4)@l(r4)
	se_cmp		r0,r4
	bc		0,0,.L1503	# ge
#          {
#             /* initialization of boolean attributes in administrative block: */
# 
#             /* initialize flag "write protect" [DD-NVM00356-MGC01-V1] */
#             if(Is_Conf_Block_Write_Protected(tmp_idx))
	.d2line		5581
	lis		r4,(NvM_BlockManagementTable+4)@ha
	lwz		r4,(NvM_BlockManagementTable+4)@l(r4)
	rlwinm		r0,r3,6,10,25		# tmp_idx=r3
	se_add		r4,r0
	lhz		r0,60(r4)
	rlwinm		r0,r0,0,29,29
	se_cmpi		r0,4
	bc		0,2,.L1504	# ne
#             {
#                /* [DD-NVM00326-MGC01-V1] */
#                Set_Adm_Block_Attrib_Wr_Protection(tmp_idx, NVM_WR_PROTECTION_ON);
	.d2line		5584
	lis		r5,NvM_BlockManagementTable@ha
	lwz		r4,NvM_BlockManagementTable@l(r5)
	rlwinm		r0,r3,3,13,28		# tmp_idx=r3
	se_add		r4,r0
	lwz		r4,4(r4)
	.diab.bseti		r4,0
	lwz		r5,NvM_BlockManagementTable@l(r5)
	se_add		r5,r0
	stw		r4,4(r5)
	b		.L1505
.L1504:
#             }
#             else
#             {
#                Set_Adm_Block_Attrib_Wr_Protection(tmp_idx, NVM_WR_PROTECTION_OFF);
	.d2line		5588
	lis		r5,NvM_BlockManagementTable@ha
	lwz		r4,NvM_BlockManagementTable@l(r5)
	rlwinm		r0,r3,3,13,28		# tmp_idx=r3
	se_add		r4,r0
	lwz		r4,4(r4)
	.diab.bclri		r4,0
	lwz		r5,NvM_BlockManagementTable@l(r5)
	se_add		r5,r0
	stw		r4,4(r5)
.L1505:
#             }
#          }
	.d2line		5590
	diab.addi		r0,r3,1		# tmp_idx=r3
	se_addi		r3,1		# tmp_idx=r3 tmp_idx=r3
	b		.L1501
.L1503:
# 
#          /* [DD-NVM00393-MGC01-V1] [DD-NVM00185-MGC01-V1] [DD-NVM00667-MGC01-V1] */
#          Set_Adm_Block_Error_Status(NVM_BLOCK_0, (NvM_RequestResultType)NVM_REQ_PENDING);
	.d2line		5593
.Llo757:
	diab.li		r0,2
	lis		r3,NvM_BlockManagementTable@ha		# tmp_idx=r3
.Llo758:
	lwz		r3,NvM_BlockManagementTable@l(r3)		# tmp_idx=r3 tmp_idx=r3
	stb		r0,1(r3)		# tmp_idx=r3
#          /* [DD-NVM00158-MGC01-V1] [DD-NVM00243-MGC01-V1] */
#          NvM_Req_Multiblock = NVM_READ_ALL_ID;
	.d2line		5595
	diab.li		r0,12
	lis		r3,NvM_Req_Multiblock@ha		# tmp_idx=r3
	e_add16i		r3,r3,NvM_Req_Multiblock@l		# tmp_idx=r3 tmp_idx=r3
	stw		r0,0(r3)		# tmp_idx=r3
	.section	.text_vle
.L2407:
.Llo759:
	b		.L1506
.L1500:
#       }
#       else
#       {
#           NvM_Call_Dem_ReportErrorStatus(NVM_BLOCK_0, NVM_DEM_EVENT_E_REQ_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		5599
	diab.li		r3,0
	diab.li		r4,2
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
.L1506:
#       }
# 
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5602
	bl		SchM_Exit_NvM_EaServiceProcessQueue
.L1497:
#    }
# }
	.d2line		5604
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2404:
	.type		NvM_ReadAll,@function
	.size		NvM_ReadAll,.-NvM_ReadAll
# Number of nodes = 109

# Allocations for NvM_ReadAll
#	?a4		tmp_idx
# FUNC(void, NVM_CODE) NvM_WriteAll(void) /* [DD-NVM00092-MGC01-V1] [DD-NVM00461-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         5607,22
#$$ld
.L2414:

#$$bf	NvM_WriteAll,interprocedural,rasave,nostackparams
	.globl		NvM_WriteAll
	.d2_cfa_start __cie
NvM_WriteAll:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    SchM_Enter_NvM_EaServiceProcessQueue();
	.d2line		5609
	bl		SchM_Enter_NvM_EaServiceProcessQueue
#    if(NVM_INITIALIZED != NvM_InitStatus)
	.d2line		5610
	lis		r3,NvM_InitStatus@ha
	lwz		r0,NvM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L1516	# eq
#    {
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5612
	bl		SchM_Exit_NvM_EaServiceProcessQueue
#       /* [DD-NVM00647-MGC01-V1] */
#       NVM_ASSERT_DET(NVM_WRITE_ALL_ID, NVM_E_NOT_INITIALIZED);
#       NvM_Call_Dem_ReportErrorStatus(NVM_BLOCK_0, NVM_DEM_EVENT_E_REQ_FAILED, DEM_EVENT_STATUS_FAILED);
	.d2line		5615
	diab.li		r3,0
	diab.li		r4,2
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
	b		.L1515
.L1516:
#    }
#    else
#    {
#       if( (NvM_RequestResultType)NVM_REQ_PENDING!=Get_Adm_Block_Error_Status(NVM_BLOCK_0))
	.d2line		5619
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	lbz		r0,1(r3)
	se_cmpi		r0,2
	bc		1,2,.L1518	# eq
#       {
#          /* [DD-NVM00393-MGC01-V1] [DD-NVM00185-MGC01-V1] [DD-NVM00549-MGC01-V1] */
#          Set_Adm_Block_Error_Status(NVM_BLOCK_0,(NvM_RequestResultType)NVM_REQ_PENDING);
	.d2line		5622
	diab.li		r0,2
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	stb		r0,1(r3)
#          /* [DD-NVM00018-MGC01-V1] [DD-NVM00254-MGC01-V1] */
#          NvM_Req_Multiblock=NVM_WRITE_ALL_ID;
	.d2line		5624
	diab.li		r0,13
	lis		r3,NvM_Req_Multiblock@ha
	e_add16i		r3,r3,NvM_Req_Multiblock@l
	stw		r0,0(r3)
.L1518:
#       }
# 
#       SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5627
	bl		SchM_Exit_NvM_EaServiceProcessQueue
.L1515:
#    }
# }
	.d2line		5629
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2415:
	.type		NvM_WriteAll,@function
	.size		NvM_WriteAll,.-NvM_WriteAll
# Number of nodes = 38

# Allocations for NvM_WriteAll
# FUNC(void, NVM_CODE) NvM_ValidateAll(void) /* [DD-NVM00855-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         5634,22
#$$ld
.L2419:

#$$bf	NvM_ValidateAll,interprocedural,rasave,nostackparams
	.globl		NvM_ValidateAll
	.d2_cfa_start __cie
NvM_ValidateAll:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     SchM_Enter_NvM_EaServiceProcessQueue();
	.d2line		5636
	bl		SchM_Enter_NvM_EaServiceProcessQueue
#     if(NVM_INITIALIZED != NvM_InitStatus)
	.d2line		5637
	lis		r3,NvM_InitStatus@ha
	lwz		r0,NvM_InitStatus@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L1523	# eq
#     {
#         SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5639
	bl		SchM_Exit_NvM_EaServiceProcessQueue
	b		.L1522
.L1523:
#         /* [DD-NVM00863-MGC01-V1] */
#         NVM_ASSERT_DET(NVM_VALIDATE_ALL_ID, NVM_E_NOT_INITIALIZED);
#     }
#     else
#     {
#         if( (NvM_RequestResultType)NVM_REQ_PENDING != Get_Adm_Block_Error_Status(NVM_BLOCK_0))
	.d2line		5645
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	lbz		r0,1(r3)
	se_cmpi		r0,2
	bc		1,2,.L1525	# eq
#         {
#             /* [DD-NVM00393-MGC01-V1] [DD-NVM00185-MGC01-V1] [DD-NVM00861-MGC01-V1] */
#             Set_Adm_Block_Error_Status(NVM_BLOCK_0, (NvM_RequestResultType)NVM_REQ_PENDING);
	.d2line		5648
	diab.li		r0,2
	lis		r3,NvM_BlockManagementTable@ha
	lwz		r3,NvM_BlockManagementTable@l(r3)
	stb		r0,1(r3)
#             /* [DD-NVM00858-MGC01-V1] */
#             NvM_Req_Multiblock = NVM_VALIDATE_ALL_ID;
	.d2line		5650
	diab.li		r0,25
	lis		r3,NvM_Req_Multiblock@ha
	e_add16i		r3,r3,NvM_Req_Multiblock@l
	stw		r0,0(r3)
	b		.L1526
.L1525:
#         }
#         else
#         {
#             NvM_Call_Dem_ReportErrorStatus(NVM_BLOCK_0, NVM_DEM_EVENT_E_QUEUE_OVERFLOW, DEM_EVENT_STATUS_FAILED);
	.d2line		5654
	diab.li		r3,0
	diab.li		r4,6
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
.L1526:
#         }
# 
#         SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		5657
	bl		SchM_Exit_NvM_EaServiceProcessQueue
.L1522:
#     }
# }
	.d2line		5659
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2420:
	.type		NvM_ValidateAll,@function
	.size		NvM_ValidateAll,.-NvM_ValidateAll
# Number of nodes = 39

# Allocations for NvM_ValidateAll
# FUNC(void, NVM_CODE) NvM_MainFunction(void)
	.align		2
	.section	.text_vle
        .d2line         5664,22
#$$ld
.L2424:

#$$bf	NvM_MainFunction,interprocedural,rasave,nostackparams
	.globl		NvM_MainFunction
	.d2_cfa_start __cie
NvM_MainFunction:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo760:
	stw		r0,20(r1)		# tmp_exit_cond=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /* [DD-NVM00464-MGC01-V1] */
#    VAR(boolean,AUTOMATIC) tmp_exit_cond=FALSE;
	.d2line		5667
	diab.li		r0,0		# tmp_exit_cond=r0
#    if(NVM_INITIALIZED==NvM_InitStatus) /* [DD-NVM00257-MGC01-V1] */
	.d2line		5668
	lis		r3,NvM_InitStatus@ha
	lwz		r3,NvM_InitStatus@l(r3)
	se_cmpi		r3,1
	bc		0,2,.L1531	# ne
.L1533:
#    {
#       /* [DD-NVM00349-MGC01-V1] */
#       while(FALSE==tmp_exit_cond)
	.d2line		5671
	rlwinm		r0,r0,0,24,31		# tmp_exit_cond=r0 tmp_exit_cond=r0
	se_cmpi		r0,0		# tmp_exit_cond=r0
	bc		0,2,.L1531	# ne
#       {
#          /* PRQA S 3689 ++
#           * Calling function by using function pointer - index of function table
#           * is checked in the first condition.
#           */
#          if(  (NvM_MainStateDbg<NVM_MAIN_STATE_SERVICE_NB)
	.d2line		5677
.Llo761:
	lis		r3,NvM_MainStateDbg@ha
	lwz		r0,NvM_MainStateDbg@l(r3)		# tmp_exit_cond=r0
.Llo762:
	se_cmpi		r0,3		# tmp_exit_cond=r0
	bc		0,0,.L1535	# ge
.Llo763:
	lis		r4,NvM_ActMainStateMachineService@ha
	e_add16i		r4,r4,NvM_ActMainStateMachineService@l
	lis		r3,NvM_MainStateDbg@ha
	lwz		r0,NvM_MainStateDbg@l(r3)		# tmp_exit_cond=r0
.Llo764:
	se_slwi		r0,2		# tmp_exit_cond=r0 tmp_exit_cond=r0
	lwzx		r0,r4,r0		# tmp_exit_cond=r0
	se_cmpi		r0,0		# tmp_exit_cond=r0
	bc		1,2,.L1535	# eq
#               && (NULL_PTR != NvM_ActMainStateMachineService[NvM_MainStateDbg])
#               )
#          {
#             /* [DD-NVM00256-MGC01-V1] */
#             tmp_exit_cond = NvM_ActMainStateMachineService[NvM_MainStateDbg]();
	.d2line		5682
.Llo765:
	lis		r4,NvM_ActMainStateMachineService@ha
	e_add16i		r4,r4,NvM_ActMainStateMachineService@l
	lis		r3,NvM_MainStateDbg@ha
	lwz		r0,NvM_MainStateDbg@l(r3)		# tmp_exit_cond=r0
.Llo766:
	se_slwi		r0,2		# tmp_exit_cond=r0 tmp_exit_cond=r0
	lwzx		r0,r4,r0		# tmp_exit_cond=r0
.Llo767:
	mtspr		ctr,r0		# tmp_exit_cond=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo768:
	mr		r0,r3		# tmp_exit_cond=r0 tmp_exit_cond=r3
	b		.L1533
.L1535:
#          }
#          /* PRQA S 3689 -- */
#          else
#          {
#             tmp_exit_cond=TRUE;
	.d2line		5687
.Llo769:
	diab.li		r0,1		# tmp_exit_cond=r0
.Llo770:
	b		.L1533
.L1531:
#          }
#       }
#    }
# }
	.d2line		5691
	.d2epilogue_begin
.Llo771:
	lwz		r0,20(r1)		# tmp_exit_cond=r0
	mtspr		lr,r0		# tmp_exit_cond=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2425:
	.type		NvM_MainFunction,@function
	.size		NvM_MainFunction,.-NvM_MainFunction
# Number of nodes = 38

# Allocations for NvM_MainFunction
#	?a4		tmp_exit_cond
# FUNC(void, NVM_CODE) NvM_JobEndNotification(void) /* [DD-NVM00462-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         5698,22
#$$ld
.L2431:

#$$bf	NvM_JobEndNotification,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		NvM_JobEndNotification
	.d2_cfa_start __cie
NvM_JobEndNotification:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    NvM_MemIf_Driver_Status=MEMIF_IDLE;
	.d2line		5700
	diab.li		r3,1
	lis		r4,NvM_MemIf_Driver_Status@ha
	e_add16i		r4,r4,NvM_MemIf_Driver_Status@l
	stw		r3,0(r4)
# }
	.d2line		5701
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2432:
	.type		NvM_JobEndNotification,@function
	.size		NvM_JobEndNotification,.-NvM_JobEndNotification
# Number of nodes = 3

# Allocations for NvM_JobEndNotification
# FUNC(void, NVM_CODE) NvM_JobErrorNotification(void) /* [DD-NVM00463-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         5703,22
#$$ld
.L2436:

#$$bf	NvM_JobErrorNotification,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		NvM_JobErrorNotification
	.d2_cfa_start __cie
NvM_JobErrorNotification:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    NvM_MemIf_Driver_Status=MEMIF_IDLE;
	.d2line		5705
	diab.li		r3,1
	lis		r4,NvM_MemIf_Driver_Status@ha
	e_add16i		r4,r4,NvM_MemIf_Driver_Status@l
	stw		r3,0(r4)
# }
	.d2line		5706
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L2437:
	.type		NvM_JobErrorNotification,@function
	.size		NvM_JobErrorNotification,.-NvM_JobErrorNotification
# Number of nodes = 3

# Allocations for NvM_JobErrorNotification

# Allocations for module
	.section	.text_vle
	.0byte		.L2439
	.section	.text_vle
	.type		NvM_ActSubStateMachineService,@object
	.size		NvM_ActSubStateMachineService,156
	.align		2
NvM_ActSubStateMachineService:
	.long		NvM_ActSubStateReadAllInit
	.long		NvM_ActSubStateReadAllSelectReadMethod
	.long		NvM_ActSubStateReadAllExtendedMethod
	.long		NvM_ActSubStateWriteAllInit
	.long		NvM_ActSubStateWriteAllFindBlock
	.long		NvM_ActSubStateWriteAllCanceled
	.long		NvM_ActSubStateValidateAllInit
	.long		NvM_ActSubStateValidateAllSelectBlocks
	.long		NvM_ActSubStateValidateAllOperationDone
	.long		NvM_ActSubStateSingleBlockOperationDone
	.long		NvM_ActSubStateMultiBlockOperationDone
	.long		NvM_ActSubStateReadBlockInit
	.long		NvM_ActSubStateReadBlockReading
	.long		NvM_ActSubStateReadBlockValidate
	.long		NvM_ActSubStateRestoreBlockDefaults
	.long		NvM_ActSubStateRestoreBlockValidate
	.long		NvM_ActSubStateWriteBlockInit
	.long		NvM_ActSubStateWriteBlockWriting
	.long		NvM_ActSubStateEraseBlockInit
	.long		NvM_ActSubStateEraseBlockStart
	.long		NvM_ActSubStateEraseBlockInProgress
	.long		NvM_ActSubStateInvalidateBlockInit
	.long		NvM_ActSubStateInvalidateBlockStart
	.long		NvM_ActSubStateInvalidateBlockProgress
	.long		NvM_ActSubStateReadAllCheckDataValid
	.long		NvM_ActSubStateReadAllValidateDefaults
	.long		NvM_ActSubStateReadAllReadConfigId
	.long		NvM_ActSubStateReadAllStandardMethod
	.long		NvM_ActSubStateReadAllRestore
	.long		NvM_ActSubStateReadAllRestoreValidate
	.long		NvM_ActSubStateWriteAllWriting
	.long		NvM_ActSubStateReadPRAMBlockInit
	.long		NvM_ActSubStateReadPRAMBlockReading
	.long		NvM_ActSubStateReadPRAMBlockValidate
	.long		NvM_ActSubStateRestorePRAMBlockDefaults
	.long		NvM_ActSubStateRestorePRAMBlockValidate
	.long		NvM_ActSubStateWritePRAMBlockInit
	.long		NvM_ActSubStateWritePRAMBlockWriting
	.long		NvM_ActSubStateValidateAllValidate
	.section	.text_vle
	.type		NvM_ActMainStateMachineService,@object
	.size		NvM_ActMainStateMachineService,12
	.align		2
NvM_ActMainStateMachineService:
	.long		NvM_ActMainStateIdle
	.long		NvM_ActMainStateMultiBlockOperation
	.long		NvM_ActMainStateSingleBlockOperation
	.section	.text_vle
#$$ld
.L5:
.L2561:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\MemIf\\ssc\\make\\..\\inc\\MemIf_Types.h"
.L2558:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L2508:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM_Types.h"
.L2498:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM_I.h"
.L2450:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM.h"
.L2440:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\NvM_Lcfg.h"
.L1552:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM.c"
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
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
	.uleb128	12
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
	.uleb128	13
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
	.uleb128	14
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
	.uleb128	15
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
	.uleb128	16
	.uleb128	13
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	11
	.uleb128	15
	.uleb128	13
	.uleb128	11
	.uleb128	12
	.uleb128	11
	.uleb128	56
	.uleb128	9
	.uleb128	50
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
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
	.uleb128	18
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
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
	.uleb128	20
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.uleb128	15
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
	.uleb128	24
	.uleb128	5
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.uleb128	26
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	27
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	28
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM.c"
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
.L1556:
	.sleb128	2
	.4byte		.L1549-.L2
	.byte		"NvM_GetDem_EventIdElement"
	.byte		0
	.4byte		.L1552
	.uleb128	689
	.uleb128	32
	.4byte		.L1553
	.byte		0x1
	.byte		0x1
	.4byte		.L1550
	.4byte		.L1551
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L1552
	.uleb128	689
	.uleb128	32
	.byte		"eventIdsPtr"
	.byte		0
	.4byte		.L1557
	.4byte		.L1562
	.sleb128	3
	.4byte		.L1552
	.uleb128	689
	.uleb128	32
	.byte		"eventIdNumber"
	.byte		0
	.4byte		.L1563
	.4byte		.L1566
	.section	.debug_info,,n
.L1567:
	.sleb128	4
	.4byte		.L1552
	.uleb128	695
	.uleb128	37
	.byte		"retVal"
	.byte		0
	.4byte		.L1553
	.4byte		.L1568
	.section	.debug_info,,n
	.sleb128	0
.L1549:
	.section	.debug_info,,n
.L1574:
	.sleb128	5
	.4byte		.L1571-.L2
	.byte		"NvM_Call_Dem_ReportErrorStatus"
	.byte		0
	.4byte		.L1552
	.uleb128	750
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L1572
	.4byte		.L1573
	.sleb128	3
	.4byte		.L1552
	.uleb128	750
	.uleb128	21
	.byte		"blockId"
	.byte		0
	.4byte		.L1575
	.4byte		.L1577
	.sleb128	3
	.4byte		.L1552
	.uleb128	750
	.uleb128	21
	.byte		"eventId"
	.byte		0
	.4byte		.L1563
	.4byte		.L1578
	.sleb128	3
	.4byte		.L1552
	.uleb128	750
	.uleb128	21
	.byte		"eventStatus"
	.byte		0
	.4byte		.L1579
	.4byte		.L1583
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1587
	.4byte		.L1584
	.4byte		.L1585
	.section	.debug_info,,n
	.sleb128	0
.L1587:
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1591
	.4byte		.L1588
	.4byte		.L1589
	.section	.debug_info,,n
	.sleb128	0
.L1591:
	.section	.debug_info,,n
	.sleb128	0
.L1571:
	.section	.debug_info,,n
.L1596:
	.sleb128	5
	.4byte		.L1593-.L2
	.byte		"NvM_Call_Dem_ReportErrorStatus_AllPassed"
	.byte		0
	.4byte		.L1552
	.uleb128	784
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L1594
	.4byte		.L1595
	.sleb128	3
	.4byte		.L1552
	.uleb128	784
	.uleb128	21
	.byte		"blockId"
	.byte		0
	.4byte		.L1575
	.4byte		.L1597
	.section	.debug_info,,n
	.sleb128	0
.L1593:
	.section	.debug_info,,n
.L1603:
	.sleb128	2
	.4byte		.L1599-.L2
	.byte		"NvM_IsDem_EventIdConfigured"
	.byte		0
	.4byte		.L1552
	.uleb128	807
	.uleb128	24
	.4byte		.L1602
	.byte		0x1
	.byte		0x1
	.4byte		.L1600
	.4byte		.L1601
	.sleb128	3
	.4byte		.L1552
	.uleb128	807
	.uleb128	24
	.byte		"blockId"
	.byte		0
	.4byte		.L1575
	.4byte		.L1604
	.sleb128	3
	.4byte		.L1552
	.uleb128	807
	.uleb128	24
	.byte		"eventId"
	.byte		0
	.4byte		.L1563
	.4byte		.L1605
.L1606:
	.sleb128	4
	.4byte		.L1552
	.uleb128	813
	.uleb128	29
	.byte		"retVal"
	.byte		0
	.4byte		.L1602
	.4byte		.L1607
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1611
	.4byte		.L1608
	.4byte		.L1609
	.section	.debug_info,,n
	.sleb128	0
.L1611:
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1615
	.4byte		.L1612
	.4byte		.L1613
	.section	.debug_info,,n
	.sleb128	0
.L1615:
	.section	.debug_info,,n
	.sleb128	0
.L1599:
	.section	.debug_info,,n
.L1620:
	.sleb128	5
	.4byte		.L1617-.L2
	.byte		"NvM_MemCopy"
	.byte		0
	.4byte		.L1552
	.uleb128	908
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1618
	.4byte		.L1619
	.sleb128	3
	.4byte		.L1552
	.uleb128	908
	.uleb128	22
	.byte		"dst"
	.byte		0
	.4byte		.L1621
	.4byte		.L1622
	.sleb128	3
	.4byte		.L1552
	.uleb128	908
	.uleb128	22
	.byte		"src"
	.byte		0
	.4byte		.L1623
	.4byte		.L1626
	.sleb128	3
	.4byte		.L1552
	.uleb128	908
	.uleb128	22
	.byte		"length"
	.byte		0
	.4byte		.L1554
	.4byte		.L1627
.L1628:
	.sleb128	4
	.4byte		.L1552
	.uleb128	910
	.uleb128	26
	.byte		"index"
	.byte		0
	.4byte		.L1554
	.4byte		.L1629
	.section	.debug_info,,n
	.sleb128	0
.L1617:
	.section	.debug_info,,n
.L1634:
	.sleb128	5
	.4byte		.L1631-.L2
	.byte		"NvM_CopyRamToRamMirror"
	.byte		0
	.4byte		.L1552
	.uleb128	848
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1632
	.4byte		.L1633
	.sleb128	3
	.4byte		.L1552
	.uleb128	848
	.uleb128	22
	.byte		"arg_block"
	.byte		0
	.4byte		.L1635
	.4byte		.L1639
	.section	.debug_info,,n
	.sleb128	0
.L1631:
	.section	.debug_info,,n
.L1644:
	.sleb128	5
	.4byte		.L1641-.L2
	.byte		"NvM_CopyRamMirrorToRam"
	.byte		0
	.4byte		.L1552
	.uleb128	884
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L1642
	.4byte		.L1643
	.sleb128	3
	.4byte		.L1552
	.uleb128	884
	.uleb128	21
	.byte		"arg_block"
	.byte		0
	.4byte		.L1635
	.4byte		.L1645
	.section	.debug_info,,n
	.sleb128	0
.L1641:
	.section	.debug_info,,n
.L1650:
	.sleb128	7
	.4byte		.L1647-.L2
	.byte		"NvM_CallSingleBlockCallback"
	.byte		0
	.4byte		.L1552
	.uleb128	924
	.uleb128	28
	.byte		0x1
	.4byte		.L1648
	.4byte		.L1649
	.sleb128	3
	.4byte		.L1552
	.uleb128	924
	.uleb128	28
	.byte		"arg_block_id"
	.byte		0
	.4byte		.L1576
	.4byte		.L1651
	.sleb128	3
	.4byte		.L1552
	.uleb128	924
	.uleb128	28
	.byte		"arg_service_id"
	.byte		0
	.4byte		.L1652
	.4byte		.L1654
	.section	.debug_info,,n
	.sleb128	0
.L1647:
	.section	.debug_info,,n
.L1659:
	.sleb128	7
	.4byte		.L1656-.L2
	.byte		"NvM_CallMultiBlockCallback"
	.byte		0
	.4byte		.L1552
	.uleb128	945
	.uleb128	28
	.byte		0x1
	.4byte		.L1657
	.4byte		.L1658
	.sleb128	3
	.4byte		.L1552
	.uleb128	945
	.uleb128	28
	.byte		"arg_service_id"
	.byte		0
	.4byte		.L1652
	.4byte		.L1660
	.section	.debug_info,,n
	.sleb128	0
.L1656:
	.section	.debug_info,,n
.L1665:
	.sleb128	7
	.4byte		.L1662-.L2
	.byte		"NvM_CallBlockInitCallback"
	.byte		0
	.4byte		.L1552
	.uleb128	964
	.uleb128	28
	.byte		0x1
	.4byte		.L1663
	.4byte		.L1664
	.sleb128	3
	.4byte		.L1552
	.uleb128	964
	.uleb128	28
	.byte		"arg_block_id"
	.byte		0
	.4byte		.L1576
	.4byte		.L1666
	.section	.debug_info,,n
	.sleb128	0
.L1662:
	.section	.debug_info,,n
.L1672:
	.sleb128	8
	.4byte		.L1669-.L2
	.byte		"NvM_SelectSingleBlockOperation"
	.byte		0
	.4byte		.L1552
	.uleb128	983
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1670
	.4byte		.L1671
.L1673:
	.sleb128	4
	.4byte		.L1552
	.uleb128	985
	.uleb128	27
	.byte		"stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L1674
	.section	.debug_info,,n
	.sleb128	0
.L1669:
	.section	.debug_info,,n
.L1680:
	.sleb128	8
	.4byte		.L1677-.L2
	.byte		"NvM_ActMainStateIdle"
	.byte		0
	.4byte		.L1552
	.uleb128	1059
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1678
	.4byte		.L1679
.L1681:
	.sleb128	4
	.4byte		.L1552
	.uleb128	1061
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L1682
	.section	.debug_info,,n
	.sleb128	0
.L1677:
	.section	.debug_info,,n
.L1687:
	.sleb128	7
	.4byte		.L1684-.L2
	.byte		"NvM_ProcessMainMachineSubstates"
	.byte		0
	.4byte		.L1552
	.uleb128	3939
	.uleb128	28
	.byte		0x1
	.4byte		.L1685
	.4byte		.L1686
.L1688:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3941
	.uleb128	27
	.byte		"tmp_exit_cond"
	.byte		0
	.4byte		.L1602
	.4byte		.L1689
	.section	.debug_info,,n
	.sleb128	0
.L1684:
	.section	.debug_info,,n
.L1694:
	.sleb128	8
	.4byte		.L1691-.L2
	.byte		"NvM_ActMainStateMultiBlockOperation"
	.byte		0
	.4byte		.L1552
	.uleb128	1163
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1692
	.4byte		.L1693
.L1695:
	.sleb128	4
	.4byte		.L1552
	.uleb128	1165
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L1696
	.section	.debug_info,,n
	.sleb128	0
.L1691:
	.section	.debug_info,,n
.L1701:
	.sleb128	8
	.4byte		.L1698-.L2
	.byte		"NvM_ActMainStateSingleBlockOperation"
	.byte		0
	.4byte		.L1552
	.uleb128	1208
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1699
	.4byte		.L1700
.L1702:
	.sleb128	4
	.4byte		.L1552
	.uleb128	1210
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L1703
	.section	.debug_info,,n
	.sleb128	0
.L1698:
	.section	.debug_info,,n
.L1708:
	.sleb128	8
	.4byte		.L1705-.L2
	.byte		"NvM_ActSubStateReadAllInit"
	.byte		0
	.4byte		.L1552
	.uleb128	1296
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1706
	.4byte		.L1707
	.section	.debug_info,,n
	.sleb128	0
.L1705:
	.section	.debug_info,,n
.L1713:
	.sleb128	8
	.4byte		.L1710-.L2
	.byte		"NvM_ActBlockNvReadInit"
	.byte		0
	.4byte		.L1552
	.uleb128	2905
	.uleb128	32
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1711
	.4byte		.L1712
.L1714:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2907
	.uleb128	27
	.byte		"tmp_i"
	.byte		0
	.4byte		.L1554
	.4byte		.L1715
	.section	.debug_info,,n
.L1716:
	.sleb128	9
	.4byte		.L1552
	.uleb128	2908
	.uleb128	36
	.byte		"blockId"
	.byte		0
	.4byte		.L1576
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L1717:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2909
	.uleb128	42
	.byte		"tmp_rom_data_address"
	.byte		0
	.4byte		.L1624
	.4byte		.L1718
.L1719:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2910
	.uleb128	28
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L1720
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1724
	.4byte		.L1721
	.4byte		.L1722
.L1725:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2958
	.uleb128	50
	.byte		"Buf_ptr"
	.byte		0
	.4byte		.L1621
	.4byte		.L1726
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1730
	.4byte		.L1727
	.4byte		.L1728
.L1731:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2975
	.uleb128	22
	.byte		"rom_data"
	.byte		0
	.4byte		.L1581
	.4byte		.L1732
	.section	.debug_info,,n
	.sleb128	0
.L1730:
	.section	.debug_info,,n
	.sleb128	0
.L1724:
	.section	.debug_info,,n
	.sleb128	0
.L1710:
	.section	.debug_info,,n
.L1737:
	.sleb128	8
	.4byte		.L1734-.L2
	.byte		"NvM_ActBlockNvReadStart"
	.byte		0
	.4byte		.L1552
	.uleb128	3023
	.uleb128	32
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1735
	.4byte		.L1736
.L1738:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3025
	.uleb128	41
	.byte		"Buf_ptr"
	.byte		0
	.4byte		.L1621
	.4byte		.L1739
.L1740:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3027
	.uleb128	37
	.byte		"prevMemIfDrvStatus"
	.byte		0
	.4byte		.L1741
	.4byte		.L1743
	.section	.debug_info,,n
	.sleb128	0
.L1734:
	.section	.debug_info,,n
.L1748:
	.sleb128	5
	.4byte		.L1745-.L2
	.byte		"NvM_GetCrcResult"
	.byte		0
	.4byte		.L1552
	.uleb128	4335
	.uleb128	20
	.byte		0x1
	.byte		0x1
	.4byte		.L1746
	.4byte		.L1747
	.sleb128	3
	.4byte		.L1552
	.uleb128	4335
	.uleb128	20
	.byte		"crcFunctionPtr"
	.byte		0
	.4byte		.L1749
	.4byte		.L1755
	.section	.debug_info,,n
	.sleb128	0
.L1745:
	.section	.debug_info,,n
.L1760:
	.sleb128	7
	.4byte		.L1757-.L2
	.byte		"NvM_UpdateCrc"
	.byte		0
	.4byte		.L1552
	.uleb128	4372
	.uleb128	28
	.byte		0x1
	.4byte		.L1758
	.4byte		.L1759
	.sleb128	3
	.4byte		.L1552
	.uleb128	4372
	.uleb128	28
	.byte		"arg_block"
	.byte		0
	.4byte		.L1761
	.4byte		.L1762
	.sleb128	3
	.4byte		.L1552
	.uleb128	4372
	.uleb128	28
	.byte		"arg_operation"
	.byte		0
	.4byte		.L1763
	.4byte		.L1765
	.sleb128	3
	.4byte		.L1552
	.uleb128	4372
	.uleb128	28
	.byte		"isItRecalc"
	.byte		0
	.4byte		.L1602
	.4byte		.L1766
.L1767:
	.sleb128	4
	.4byte		.L1552
	.uleb128	4380
	.uleb128	29
	.byte		"noMismatch"
	.byte		0
	.4byte		.L1602
	.4byte		.L1768
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1772
	.4byte		.L1769
	.4byte		.L1770
.L1773:
	.sleb128	9
	.4byte		.L1552
	.uleb128	4401
	.uleb128	39
	.byte		"tmp_crc16"
	.byte		0
	.4byte		.L1554
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L1772:
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1777
	.4byte		.L1774
	.4byte		.L1775
.L1778:
	.sleb128	9
	.4byte		.L1552
	.uleb128	4411
	.uleb128	39
	.byte		"tmp_crc32"
	.byte		0
	.4byte		.L1753
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
	.section	.debug_info,,n
	.sleb128	0
.L1777:
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1782
	.4byte		.L1779
	.4byte		.L1780
.L1783:
	.sleb128	9
	.4byte		.L1552
	.uleb128	4443
	.uleb128	47
	.byte		"tmp_crc16"
	.byte		0
	.4byte		.L1554
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	10
	.section	.debug_info,,n
	.sleb128	0
.L1782:
	.section	.debug_info,,n
	.sleb128	0
.L1757:
	.section	.debug_info,,n
.L1788:
	.sleb128	7
	.4byte		.L1785-.L2
	.byte		"NvM_CheckCrcValue"
	.byte		0
	.4byte		.L1552
	.uleb128	4524
	.uleb128	28
	.byte		0x1
	.4byte		.L1786
	.4byte		.L1787
	.sleb128	3
	.4byte		.L1552
	.uleb128	4524
	.uleb128	28
	.byte		"crcFunctionPtr"
	.byte		0
	.4byte		.L1749
	.4byte		.L1789
	.sleb128	3
	.4byte		.L1552
	.uleb128	4524
	.uleb128	28
	.byte		"arg_block"
	.byte		0
	.4byte		.L1761
	.4byte		.L1790
	.sleb128	3
	.4byte		.L1552
	.uleb128	4524
	.uleb128	28
	.byte		"arg_operation"
	.byte		0
	.4byte		.L1763
	.4byte		.L1791
	.sleb128	3
	.4byte		.L1552
	.uleb128	4524
	.uleb128	28
	.byte		"isItRecalc"
	.byte		0
	.4byte		.L1602
	.4byte		.L1792
	.section	.debug_info,,n
	.sleb128	0
.L1785:
	.section	.debug_info,,n
.L1799:
	.sleb128	8
	.4byte		.L1794-.L2
	.byte		"NvM_ValidateBlockCRC"
	.byte		0
	.4byte		.L1552
	.uleb128	4566
	.uleb128	51
	.4byte		.L1797
	.byte		0x1
	.4byte		.L1795
	.4byte		.L1796
	.sleb128	3
	.4byte		.L1552
	.uleb128	4566
	.uleb128	51
	.byte		"arg_block"
	.byte		0
	.4byte		.L1761
	.4byte		.L1800
	.sleb128	3
	.4byte		.L1552
	.uleb128	4566
	.uleb128	51
	.byte		"arg_operation"
	.byte		0
	.4byte		.L1763
	.4byte		.L1801
	.sleb128	3
	.4byte		.L1552
	.uleb128	4566
	.uleb128	51
	.byte		"dataPtr"
	.byte		0
	.4byte		.L1621
	.4byte		.L1802
	.sleb128	3
	.4byte		.L1552
	.uleb128	4566
	.uleb128	51
	.byte		"isItRecalc"
	.byte		0
	.4byte		.L1602
	.4byte		.L1803
.L1804:
	.sleb128	9
	.4byte		.L1552
	.uleb128	4574
	.uleb128	37
	.byte		"blockId"
	.byte		0
	.4byte		.L1576
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L1794:
	.section	.debug_info,,n
.L1809:
	.sleb128	2
	.4byte		.L1806-.L2
	.byte		"NvM_ValidateCrc"
	.byte		0
	.4byte		.L1552
	.uleb128	1691
	.uleb128	44
	.4byte		.L1797
	.byte		0x1
	.byte		0x1
	.4byte		.L1807
	.4byte		.L1808
	.sleb128	3
	.4byte		.L1552
	.uleb128	1691
	.uleb128	44
	.byte		"argBlock"
	.byte		0
	.4byte		.L1761
	.4byte		.L1810
	.sleb128	3
	.4byte		.L1552
	.uleb128	1691
	.uleb128	44
	.byte		"updateCrcField"
	.byte		0
	.4byte		.L1811
	.4byte		.L1812
	.sleb128	3
	.4byte		.L1552
	.uleb128	1691
	.uleb128	44
	.byte		"dataPtr"
	.byte		0
	.4byte		.L1621
	.4byte		.L1813
	.sleb128	3
	.4byte		.L1552
	.uleb128	1691
	.uleb128	44
	.byte		"isItRecalc"
	.byte		0
	.4byte		.L1602
	.4byte		.L1814
.L1815:
	.sleb128	4
	.4byte		.L1552
	.uleb128	1698
	.uleb128	48
	.byte		"tmp_crc_state"
	.byte		0
	.4byte		.L1797
	.4byte		.L1816
	.section	.debug_info,,n
	.sleb128	0
.L1806:
	.section	.debug_info,,n
.L1821:
	.sleb128	8
	.4byte		.L1818-.L2
	.byte		"NvM_ActBlockNvReadRomDatasetValidate"
	.byte		0
	.4byte		.L1552
	.uleb128	3084
	.uleb128	32
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1819
	.4byte		.L1820
.L1822:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3086
	.uleb128	47
	.byte		"tmp_crc_state"
	.byte		0
	.4byte		.L1797
	.4byte		.L1823
	.section	.debug_info,,n
	.sleb128	0
.L1818:
	.section	.debug_info,,n
.L1828:
	.sleb128	8
	.4byte		.L1825-.L2
	.byte		"NvM_ActBlockNvProcessValidRead"
	.byte		0
	.4byte		.L1552
	.uleb128	3168
	.uleb128	32
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1826
	.4byte		.L1827
	.sleb128	3
	.4byte		.L1552
	.uleb128	3168
	.uleb128	32
	.byte		"arg_block"
	.byte		0
	.4byte		.L1829
	.4byte		.L1830
.L1831:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3173
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L1832
.L1833:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3174
	.uleb128	27
	.byte		"Continue_processing_data"
	.byte		0
	.4byte		.L1602
	.4byte		.L1834
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1838
	.4byte		.L1835
	.4byte		.L1836
.L1839:
	.sleb128	9
	.4byte		.L1552
	.uleb128	3179
	.uleb128	39
	.byte		"stored_block_id"
	.byte		0
	.4byte		.L1576
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L1838:
	.section	.debug_info,,n
	.sleb128	0
.L1825:
	.section	.debug_info,,n
.L1844:
	.sleb128	8
	.4byte		.L1841-.L2
	.byte		"NvM_ActBlockNvReadInProgress"
	.byte		0
	.4byte		.L1552
	.uleb128	3106
	.uleb128	32
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1842
	.4byte		.L1843
.L1845:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3108
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L1846
.L1847:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3109
	.uleb128	39
	.byte		"tmp_result"
	.byte		0
	.4byte		.L1848
	.4byte		.L1850
	.section	.debug_info,,n
	.sleb128	0
.L1841:
	.section	.debug_info,,n
.L1855:
	.sleb128	8
	.4byte		.L1852-.L2
	.byte		"NvM_ActBlockNvReadRamMirror"
	.byte		0
	.4byte		.L1552
	.uleb128	3241
	.uleb128	32
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1853
	.4byte		.L1854
.L1856:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3243
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L1857
.L1858:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3244
	.uleb128	34
	.byte		"tmp_result"
	.byte		0
	.4byte		.L1859
	.4byte		.L1860
	.section	.debug_info,,n
	.sleb128	0
.L1852:
	.section	.debug_info,,n
.L1865:
	.sleb128	8
	.4byte		.L1862-.L2
	.byte		"NvM_ActBlockNvReadCheckCrc"
	.byte		0
	.4byte		.L1552
	.uleb128	3288
	.uleb128	32
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1863
	.4byte		.L1864
.L1866:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3290
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L1867
.L1868:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3291
	.uleb128	47
	.byte		"tmp_crc_state"
	.byte		0
	.4byte		.L1797
	.4byte		.L1869
	.section	.debug_info,,n
	.sleb128	0
.L1862:
	.section	.debug_info,,n
.L1874:
	.sleb128	8
	.4byte		.L1871-.L2
	.byte		"NvM_ActBlockNvReadProcessErr"
	.byte		0
	.4byte		.L1552
	.uleb128	3335
	.uleb128	32
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1872
	.4byte		.L1873
.L1875:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3337
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L1876
	.section	.debug_info,,n
	.sleb128	0
.L1871:
	.section	.debug_info,,n
.L1882:
	.sleb128	7
	.4byte		.L1879-.L2
	.byte		"NvM_ProcessReadingNvBlockStates"
	.byte		0
	.4byte		.L1552
	.uleb128	3988
	.uleb128	29
	.byte		0x1
	.4byte		.L1880
	.4byte		.L1881
	.sleb128	3
	.4byte		.L1552
	.uleb128	3988
	.uleb128	29
	.byte		"arg_block"
	.byte		0
	.4byte		.L1829
	.4byte		.L1883
.L1884:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3993
	.uleb128	29
	.byte		"stopProcessing"
	.byte		0
	.4byte		.L1602
	.4byte		.L1885
	.section	.debug_info,,n
	.sleb128	0
.L1879:
	.section	.debug_info,,n
.L1891:
	.sleb128	8
	.4byte		.L1888-.L2
	.byte		"NvM_ActSubStateReadAllReadConfigId"
	.byte		0
	.4byte		.L1552
	.uleb128	1371
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1889
	.4byte		.L1890
.L1892:
	.sleb128	4
	.4byte		.L1552
	.uleb128	1373
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L1893
.L1894:
	.sleb128	4
	.4byte		.L1552
	.uleb128	1374
	.uleb128	41
	.byte		"Buf_ptr"
	.byte		0
	.4byte		.L1621
	.4byte		.L1895
.L1896:
	.sleb128	9
	.4byte		.L1552
	.uleb128	1375
	.uleb128	27
	.byte		"Nv_Read_Id"
	.byte		0
	.4byte		.L1554
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L1888:
	.section	.debug_info,,n
.L1901:
	.sleb128	8
	.4byte		.L1898-.L2
	.byte		"NvM_ActSubStateReadAllSelectReadMethod"
	.byte		0
	.4byte		.L1552
	.uleb128	1495
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1899
	.4byte		.L1900
.L1902:
	.sleb128	4
	.4byte		.L1552
	.uleb128	1497
	.uleb128	28
	.byte		"tmp_exit"
	.byte		0
	.4byte		.L1602
	.4byte		.L1903
	.section	.debug_info,,n
	.sleb128	0
.L1898:
	.section	.debug_info,,n
.L1908:
	.sleb128	8
	.4byte		.L1905-.L2
	.byte		"NvM_ActSubStateReadAllStandardMethod"
	.byte		0
	.4byte		.L1552
	.uleb128	1586
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1906
	.4byte		.L1907
.L1909:
	.sleb128	4
	.4byte		.L1552
	.uleb128	1588
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L1910
	.section	.debug_info,,n
	.sleb128	0
.L1905:
	.section	.debug_info,,n
.L1915:
	.sleb128	5
	.4byte		.L1912-.L2
	.byte		"NvM_RestoreDefaultData"
	.byte		0
	.4byte		.L1552
	.uleb128	4273
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1913
	.4byte		.L1914
	.section	.debug_info,,n
	.sleb128	10
	.4byte		.L1552
	.uleb128	4273
	.uleb128	22
	.byte		"arg_block_id"
	.byte		0
	.4byte		.L1576
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	10
.L1916:
	.sleb128	4
	.4byte		.L1552
	.uleb128	4279
	.uleb128	26
	.byte		"tmp_i"
	.byte		0
	.4byte		.L1554
	.4byte		.L1917
.L1918:
	.sleb128	4
	.4byte		.L1552
	.uleb128	4280
	.uleb128	41
	.byte		"Buf_ptr"
	.byte		0
	.4byte		.L1621
	.4byte		.L1919
	.section	.debug_info,,n
	.sleb128	0
.L1912:
	.section	.debug_info,,n
.L1924:
	.sleb128	8
	.4byte		.L1921-.L2
	.byte		"NvM_ActSubStateReadAllExtendedMethod"
	.byte		0
	.4byte		.L1552
	.uleb128	1641
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1922
	.4byte		.L1923
	.section	.debug_info,,n
	.sleb128	0
.L1921:
	.section	.debug_info,,n
.L1929:
	.sleb128	8
	.4byte		.L1926-.L2
	.byte		"NvM_ActSubStateReadAllRestore"
	.byte		0
	.4byte		.L1552
	.uleb128	1662
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1927
	.4byte		.L1928
	.section	.debug_info,,n
	.sleb128	0
.L1926:
	.section	.debug_info,,n
.L1934:
	.sleb128	8
	.4byte		.L1931-.L2
	.byte		"NvM_ActSubStateReadAllCheckDataValid"
	.byte		0
	.4byte		.L1552
	.uleb128	1727
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1932
	.4byte		.L1933
.L1935:
	.sleb128	4
	.4byte		.L1552
	.uleb128	1729
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L1936
.L1937:
	.sleb128	4
	.4byte		.L1552
	.uleb128	1731
	.uleb128	47
	.byte		"tmp_crc_state"
	.byte		0
	.4byte		.L1797
	.4byte		.L1938
	.section	.debug_info,,n
	.sleb128	0
.L1931:
	.section	.debug_info,,n
.L1943:
	.sleb128	8
	.4byte		.L1940-.L2
	.byte		"NvM_ActSubStateReadAllValidateDefaults"
	.byte		0
	.4byte		.L1552
	.uleb128	1778
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1941
	.4byte		.L1942
.L1944:
	.sleb128	4
	.4byte		.L1552
	.uleb128	1780
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L1945
.L1946:
	.sleb128	4
	.4byte		.L1552
	.uleb128	1781
	.uleb128	47
	.byte		"tmp_crc_state"
	.byte		0
	.4byte		.L1797
	.4byte		.L1947
	.section	.debug_info,,n
	.sleb128	0
.L1940:
	.section	.debug_info,,n
.L1952:
	.sleb128	8
	.4byte		.L1949-.L2
	.byte		"NvM_ActSubStateReadAllRestoreValidate"
	.byte		0
	.4byte		.L1552
	.uleb128	1812
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1950
	.4byte		.L1951
.L1953:
	.sleb128	4
	.4byte		.L1552
	.uleb128	1814
	.uleb128	28
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L1954
.L1955:
	.sleb128	4
	.4byte		.L1552
	.uleb128	1815
	.uleb128	48
	.byte		"tmp_crc_state"
	.byte		0
	.4byte		.L1797
	.4byte		.L1956
	.section	.debug_info,,n
	.sleb128	0
.L1949:
	.section	.debug_info,,n
.L1961:
	.sleb128	8
	.4byte		.L1958-.L2
	.byte		"NvM_ActSubStateWriteAllInit"
	.byte		0
	.4byte		.L1552
	.uleb128	1845
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1959
	.4byte		.L1960
	.section	.debug_info,,n
	.sleb128	0
.L1958:
	.section	.debug_info,,n
.L1966:
	.sleb128	8
	.4byte		.L1963-.L2
	.byte		"NvM_ActSubStateWriteAllFindBlock"
	.byte		0
	.4byte		.L1552
	.uleb128	1908
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1964
	.4byte		.L1965
.L1967:
	.sleb128	4
	.4byte		.L1552
	.uleb128	1910
	.uleb128	27
	.byte		"tmp_exit"
	.byte		0
	.4byte		.L1602
	.4byte		.L1968
	.section	.debug_info,,n
	.sleb128	0
.L1963:
	.section	.debug_info,,n
.L1973:
	.sleb128	8
	.4byte		.L1970-.L2
	.byte		"NvM_ActBlockNvWriteInit"
	.byte		0
	.4byte		.L1552
	.uleb128	3394
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1971
	.4byte		.L1972
	.sleb128	3
	.4byte		.L1552
	.uleb128	3394
	.uleb128	31
	.byte		"arg_block"
	.byte		0
	.4byte		.L1829
	.4byte		.L1974
.L1975:
	.sleb128	9
	.4byte		.L1552
	.uleb128	3399
	.uleb128	27
	.byte		"tmp_crc"
	.byte		0
	.4byte		.L1753
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L1976:
	.sleb128	9
	.4byte		.L1552
	.uleb128	3400
	.uleb128	27
	.byte		"tmp_crc16"
	.byte		0
	.4byte		.L1554
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L1970:
	.section	.debug_info,,n
.L1981:
	.sleb128	8
	.4byte		.L1978-.L2
	.byte		"NvM_ActBlockNvWritePreInit"
	.byte		0
	.4byte		.L1552
	.uleb128	3468
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1979
	.4byte		.L1980
	.sleb128	3
	.4byte		.L1552
	.uleb128	3468
	.uleb128	31
	.byte		"arg_block"
	.byte		0
	.4byte		.L1829
	.4byte		.L1982
.L1983:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3473
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L1984
.L1985:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3474
	.uleb128	34
	.byte		"tmp_result"
	.byte		0
	.4byte		.L1859
	.4byte		.L1986
	.section	.debug_info,,n
	.sleb128	0
.L1978:
	.section	.debug_info,,n
.L1991:
	.sleb128	8
	.4byte		.L1988-.L2
	.byte		"NvM_ActBlockNvWriteVerification"
	.byte		0
	.4byte		.L1552
	.uleb128	3532
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L1989
	.4byte		.L1990
	.sleb128	3
	.4byte		.L1552
	.uleb128	3532
	.uleb128	31
	.byte		"arg_block"
	.byte		0
	.4byte		.L1829
	.4byte		.L1992
	.section	.debug_info,,n
	.sleb128	0
.L1988:
	.section	.debug_info,,n
.L1997:
	.sleb128	8
	.4byte		.L1994-.L2
	.byte		"NvM_ActBlockNvCompareData"
	.byte		0
	.4byte		.L1552
	.uleb128	3651
	.uleb128	38
	.4byte		.L1859
	.byte		0x1
	.4byte		.L1995
	.4byte		.L1996
	.sleb128	3
	.4byte		.L1552
	.uleb128	3651
	.uleb128	38
	.byte		"arg_block"
	.byte		0
	.4byte		.L1829
	.4byte		.L1998
	.sleb128	3
	.4byte		.L1552
	.uleb128	3651
	.uleb128	38
	.byte		"CompareData_ptr"
	.byte		0
	.4byte		.L1621
	.4byte		.L1999
.L2000:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3657
	.uleb128	34
	.byte		"Compare_result"
	.byte		0
	.4byte		.L1859
	.4byte		.L2001
.L2002:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3658
	.uleb128	26
	.byte		"index"
	.byte		0
	.4byte		.L1554
	.4byte		.L2003
.L2004:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3659
	.uleb128	41
	.byte		"Block_Ram_ptr"
	.byte		0
	.4byte		.L1621
	.4byte		.L2005
.L2006:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3660
	.uleb128	41
	.byte		"temp_ram_ptr"
	.byte		0
	.4byte		.L1621
	.4byte		.L2007
	.section	.debug_info,,n
	.sleb128	0
.L1994:
	.section	.debug_info,,n
.L2012:
	.sleb128	8
	.4byte		.L2009-.L2
	.byte		"NvM_ActBlockNvWriteVerifyInProgress"
	.byte		0
	.4byte		.L1552
	.uleb128	3589
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2010
	.4byte		.L2011
	.sleb128	3
	.4byte		.L1552
	.uleb128	3589
	.uleb128	31
	.byte		"arg_block"
	.byte		0
	.4byte		.L1829
	.4byte		.L2013
.L2014:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3594
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L2015
.L2016:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3595
	.uleb128	39
	.byte		"tmp_result"
	.byte		0
	.4byte		.L1848
	.4byte		.L2017
	.section	.debug_info,,n
	.sleb128	0
.L2009:
	.section	.debug_info,,n
.L2022:
	.sleb128	8
	.4byte		.L2019-.L2
	.byte		"NvM_ActBlockNvWriteInProgress"
	.byte		0
	.4byte		.L1552
	.uleb128	3705
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2020
	.4byte		.L2021
	.sleb128	3
	.4byte		.L1552
	.uleb128	3705
	.uleb128	31
	.byte		"arg_block"
	.byte		0
	.4byte		.L1829
	.4byte		.L2023
.L2024:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3710
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L2025
.L2026:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3711
	.uleb128	39
	.byte		"tmp_result"
	.byte		0
	.4byte		.L1848
	.4byte		.L2027
	.section	.debug_info,,n
	.sleb128	0
.L2019:
	.section	.debug_info,,n
.L2032:
	.sleb128	8
	.4byte		.L2029-.L2
	.byte		"NvM_ActBlockNvWriteValidate"
	.byte		0
	.4byte		.L1552
	.uleb128	3764
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2030
	.4byte		.L2031
	.sleb128	3
	.4byte		.L1552
	.uleb128	3764
	.uleb128	31
	.byte		"arg_block"
	.byte		0
	.4byte		.L1829
	.4byte		.L2033
.L2034:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3769
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L2035
.L2036:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3770
	.uleb128	47
	.byte		"tmp_crc_state"
	.byte		0
	.4byte		.L1797
	.4byte		.L2037
	.section	.debug_info,,n
	.sleb128	0
.L2029:
	.section	.debug_info,,n
.L2042:
	.sleb128	8
	.4byte		.L2039-.L2
	.byte		"NvM_ActBlockNvWriteProcessErr"
	.byte		0
	.4byte		.L1552
	.uleb128	3792
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2040
	.4byte		.L2041
	.sleb128	3
	.4byte		.L1552
	.uleb128	3792
	.uleb128	31
	.byte		"arg_block"
	.byte		0
	.4byte		.L1829
	.4byte		.L2043
.L2044:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3797
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L2045
	.section	.debug_info,,n
	.sleb128	0
.L2039:
	.section	.debug_info,,n
.L2050:
	.sleb128	8
	.4byte		.L2047-.L2
	.byte		"NvM_ActBlockNvWriteStartWrite"
	.byte		0
	.4byte		.L1552
	.uleb128	3887
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2048
	.4byte		.L2049
	.sleb128	3
	.4byte		.L1552
	.uleb128	3887
	.uleb128	31
	.byte		"arg_block"
	.byte		0
	.4byte		.L1829
	.4byte		.L2051
.L2052:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3892
	.uleb128	41
	.byte		"Buf_ptr"
	.byte		0
	.4byte		.L1621
	.4byte		.L2053
.L2054:
	.sleb128	4
	.4byte		.L1552
	.uleb128	3894
	.uleb128	37
	.byte		"prevMemIfDrvStatus"
	.byte		0
	.4byte		.L1741
	.4byte		.L2055
	.section	.debug_info,,n
	.sleb128	0
.L2047:
	.section	.debug_info,,n
.L2061:
	.sleb128	7
	.4byte		.L2058-.L2
	.byte		"NvM_ProcessWritingNvBlockStates"
	.byte		0
	.4byte		.L1552
	.uleb128	4048
	.uleb128	29
	.byte		0x1
	.4byte		.L2059
	.4byte		.L2060
	.sleb128	3
	.4byte		.L1552
	.uleb128	4048
	.uleb128	29
	.byte		"arg_block"
	.byte		0
	.4byte		.L1829
	.4byte		.L2062
.L2063:
	.sleb128	4
	.4byte		.L1552
	.uleb128	4053
	.uleb128	29
	.byte		"stopProcessing"
	.byte		0
	.4byte		.L1602
	.4byte		.L2064
	.section	.debug_info,,n
	.sleb128	0
.L2058:
	.section	.debug_info,,n
.L2070:
	.sleb128	8
	.4byte		.L2067-.L2
	.byte		"NvM_ActSubStateWriteAllWriting"
	.byte		0
	.4byte		.L1552
	.uleb128	2019
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2068
	.4byte		.L2069
.L2071:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2021
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L2072
	.section	.debug_info,,n
	.sleb128	0
.L2067:
	.section	.debug_info,,n
.L2077:
	.sleb128	8
	.4byte		.L2074-.L2
	.byte		"NvM_ActSubStateWriteAllCanceled"
	.byte		0
	.4byte		.L1552
	.uleb128	2066
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2075
	.4byte		.L2076
	.section	.debug_info,,n
	.sleb128	0
.L2074:
	.section	.debug_info,,n
.L2082:
	.sleb128	8
	.4byte		.L2079-.L2
	.byte		"NvM_ActSubStateValidateAllInit"
	.byte		0
	.4byte		.L1552
	.uleb128	2094
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2080
	.4byte		.L2081
	.section	.debug_info,,n
	.sleb128	0
.L2079:
	.section	.debug_info,,n
.L2087:
	.sleb128	8
	.4byte		.L2084-.L2
	.byte		"NvM_ActSubStateValidateAllSelectBlocks"
	.byte		0
	.4byte		.L1552
	.uleb128	2103
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2085
	.4byte		.L2086
.L2088:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2105
	.uleb128	29
	.byte		"tmp_exit"
	.byte		0
	.4byte		.L1602
	.4byte		.L2089
	.section	.debug_info,,n
	.sleb128	0
.L2084:
	.section	.debug_info,,n
.L2094:
	.sleb128	7
	.4byte		.L2091-.L2
	.byte		"NvM_ActBlockValidateInit"
	.byte		0
	.4byte		.L1552
	.uleb128	4150
	.uleb128	28
	.byte		0x1
	.4byte		.L2092
	.4byte		.L2093
	.section	.debug_info,,n
	.sleb128	0
.L2091:
	.section	.debug_info,,n
.L2099:
	.sleb128	8
	.4byte		.L2096-.L2
	.byte		"NvM_ActBlockUsingRamMirror"
	.byte		0
	.4byte		.L1552
	.uleb128	4167
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2097
	.4byte		.L2098
.L2100:
	.sleb128	4
	.4byte		.L1552
	.uleb128	4169
	.uleb128	28
	.byte		"stopProcessing"
	.byte		0
	.4byte		.L1602
	.4byte		.L2101
.L2102:
	.sleb128	4
	.4byte		.L1552
	.uleb128	4170
	.uleb128	35
	.byte		"tmp_result"
	.byte		0
	.4byte		.L1859
	.4byte		.L2103
.L2104:
	.sleb128	4
	.4byte		.L1552
	.uleb128	4171
	.uleb128	36
	.byte		"blockId"
	.byte		0
	.4byte		.L1576
	.4byte		.L2105
	.section	.debug_info,,n
	.sleb128	0
.L2096:
	.section	.debug_info,,n
.L2110:
	.sleb128	8
	.4byte		.L2107-.L2
	.byte		"NvM_ActBlockValidateCheckCrcRAM"
	.byte		0
	.4byte		.L1552
	.uleb128	4206
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2108
	.4byte		.L2109
.L2111:
	.sleb128	4
	.4byte		.L1552
	.uleb128	4208
	.uleb128	48
	.byte		"crcState"
	.byte		0
	.4byte		.L1797
	.4byte		.L2112
	.section	.debug_info,,n
	.sleb128	0
.L2107:
	.section	.debug_info,,n
.L2117:
	.sleb128	8
	.4byte		.L2114-.L2
	.byte		"NvM_ActBlockValidateCheckCrcRAMMirror"
	.byte		0
	.4byte		.L1552
	.uleb128	4230
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2115
	.4byte		.L2116
.L2118:
	.sleb128	4
	.4byte		.L1552
	.uleb128	4232
	.uleb128	48
	.byte		"crcState"
	.byte		0
	.4byte		.L1797
	.4byte		.L2119
	.section	.debug_info,,n
	.sleb128	0
.L2114:
	.section	.debug_info,,n
.L2124:
	.sleb128	7
	.4byte		.L2121-.L2
	.byte		"NvM_ProcessValidateStates"
	.byte		0
	.4byte		.L1552
	.uleb128	4111
	.uleb128	29
	.byte		0x1
	.4byte		.L2122
	.4byte		.L2123
	.sleb128	3
	.4byte		.L1552
	.uleb128	4111
	.uleb128	29
	.byte		"arg_block"
	.byte		0
	.4byte		.L1761
	.4byte		.L2125
.L2126:
	.sleb128	4
	.4byte		.L1552
	.uleb128	4116
	.uleb128	28
	.byte		"stopProcessing"
	.byte		0
	.4byte		.L1602
	.4byte		.L2127
	.section	.debug_info,,n
	.sleb128	0
.L2121:
	.section	.debug_info,,n
.L2132:
	.sleb128	8
	.4byte		.L2129-.L2
	.byte		"NvM_ActSubStateValidateAllValidate"
	.byte		0
	.4byte		.L1552
	.uleb128	2150
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2130
	.4byte		.L2131
.L2133:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2152
	.uleb128	28
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L2134
	.section	.debug_info,,n
	.sleb128	0
.L2129:
	.section	.debug_info,,n
.L2139:
	.sleb128	8
	.4byte		.L2136-.L2
	.byte		"NvM_ActSubStateValidateAllOperationDone"
	.byte		0
	.4byte		.L1552
	.uleb128	2180
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2137
	.4byte		.L2138
	.section	.debug_info,,n
	.sleb128	0
.L2136:
	.section	.debug_info,,n
.L2144:
	.sleb128	8
	.4byte		.L2141-.L2
	.byte		"NvM_ActSubStateMultiBlockOperationDone"
	.byte		0
	.4byte		.L1552
	.uleb128	2209
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2142
	.4byte		.L2143
	.section	.debug_info,,n
	.sleb128	0
.L2141:
	.section	.debug_info,,n
.L2149:
	.sleb128	8
	.4byte		.L2146-.L2
	.byte		"NvM_ActSubStateReadBlockInit"
	.byte		0
	.4byte		.L1552
	.uleb128	2250
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2147
	.4byte		.L2148
	.section	.debug_info,,n
	.sleb128	0
.L2146:
	.section	.debug_info,,n
.L2154:
	.sleb128	8
	.4byte		.L2151-.L2
	.byte		"NvM_ActSubStateReadBlockReading"
	.byte		0
	.4byte		.L1552
	.uleb128	2265
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2152
	.4byte		.L2153
.L2155:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2267
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L2156
	.section	.debug_info,,n
	.sleb128	0
.L2151:
	.section	.debug_info,,n
.L2161:
	.sleb128	8
	.4byte		.L2158-.L2
	.byte		"NvM_ActSubStateReadBlockValidate"
	.byte		0
	.4byte		.L1552
	.uleb128	2339
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2159
	.4byte		.L2160
.L2162:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2341
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L2163
.L2164:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2342
	.uleb128	47
	.byte		"tmp_crc_state"
	.byte		0
	.4byte		.L1797
	.4byte		.L2165
	.section	.debug_info,,n
	.sleb128	0
.L2158:
	.section	.debug_info,,n
.L2170:
	.sleb128	8
	.4byte		.L2167-.L2
	.byte		"NvM_ActSubStateRestoreBlockDefaults"
	.byte		0
	.4byte		.L1552
	.uleb128	2369
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2168
	.4byte		.L2169
	.section	.debug_info,,n
	.sleb128	0
.L2167:
	.section	.debug_info,,n
.L2175:
	.sleb128	8
	.4byte		.L2172-.L2
	.byte		"NvM_ActSubStateRestoreBlockValidate"
	.byte		0
	.4byte		.L1552
	.uleb128	2390
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2173
	.4byte		.L2174
.L2176:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2392
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L2177
.L2178:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2394
	.uleb128	47
	.byte		"tmp_crc_state"
	.byte		0
	.4byte		.L1797
	.4byte		.L2179
	.section	.debug_info,,n
	.sleb128	0
.L2172:
	.section	.debug_info,,n
.L2184:
	.sleb128	8
	.4byte		.L2181-.L2
	.byte		"NvM_ActSubStateWriteBlockInit"
	.byte		0
	.4byte		.L1552
	.uleb128	2418
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2182
	.4byte		.L2183
	.section	.debug_info,,n
	.sleb128	0
.L2181:
	.section	.debug_info,,n
.L2189:
	.sleb128	7
	.4byte		.L2186-.L2
	.byte		"NvM_SetAdminBlockStatusAfterWrite"
	.byte		0
	.4byte		.L1552
	.uleb128	2433
	.uleb128	29
	.byte		0x1
	.4byte		.L2187
	.4byte		.L2188
	.sleb128	3
	.4byte		.L1552
	.uleb128	2433
	.uleb128	29
	.byte		"arg_block"
	.byte		0
	.4byte		.L1829
	.4byte		.L2190
	.section	.debug_info,,n
	.sleb128	0
.L2186:
	.section	.debug_info,,n
.L2195:
	.sleb128	8
	.4byte		.L2192-.L2
	.byte		"NvM_ActSubStateWriteBlockWriting"
	.byte		0
	.4byte		.L1552
	.uleb128	2468
	.uleb128	32
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2193
	.4byte		.L2194
.L2196:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2470
	.uleb128	29
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L2197
	.section	.debug_info,,n
	.sleb128	0
.L2192:
	.section	.debug_info,,n
.L2202:
	.sleb128	8
	.4byte		.L2199-.L2
	.byte		"NvM_ActSubStateEraseBlockInit"
	.byte		0
	.4byte		.L1552
	.uleb128	2493
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2200
	.4byte		.L2201
	.section	.debug_info,,n
	.sleb128	0
.L2199:
	.section	.debug_info,,n
.L2207:
	.sleb128	8
	.4byte		.L2204-.L2
	.byte		"NvM_ActSubStateEraseBlockStart"
	.byte		0
	.4byte		.L1552
	.uleb128	2518
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2205
	.4byte		.L2206
.L2208:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2521
	.uleb128	37
	.byte		"prevMemIfDrvStatus"
	.byte		0
	.4byte		.L1741
	.4byte		.L2209
	.section	.debug_info,,n
	.sleb128	0
.L2204:
	.section	.debug_info,,n
.L2214:
	.sleb128	8
	.4byte		.L2211-.L2
	.byte		"NvM_ActSubStateEraseBlockInProgress"
	.byte		0
	.4byte		.L1552
	.uleb128	2561
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2212
	.4byte		.L2213
.L2215:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2563
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L2216
	.section	.debug_info,,n
	.sleb128	0
.L2211:
	.section	.debug_info,,n
.L2221:
	.sleb128	8
	.4byte		.L2218-.L2
	.byte		"NvM_ActSubStateInvalidateBlockInit"
	.byte		0
	.4byte		.L1552
	.uleb128	2610
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2219
	.4byte		.L2220
	.section	.debug_info,,n
	.sleb128	0
.L2218:
	.section	.debug_info,,n
.L2226:
	.sleb128	8
	.4byte		.L2223-.L2
	.byte		"NvM_ActSubStateInvalidateBlockStart"
	.byte		0
	.4byte		.L1552
	.uleb128	2634
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2224
	.4byte		.L2225
.L2227:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2638
	.uleb128	38
	.byte		"prevMemIfDrvStatus"
	.byte		0
	.4byte		.L1741
	.4byte		.L2228
	.section	.debug_info,,n
	.sleb128	0
.L2223:
	.section	.debug_info,,n
.L2233:
	.sleb128	8
	.4byte		.L2230-.L2
	.byte		"NvM_ActSubStateInvalidateBlockProgress"
	.byte		0
	.4byte		.L1552
	.uleb128	2677
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2231
	.4byte		.L2232
.L2234:
	.sleb128	4
	.4byte		.L1552
	.uleb128	2679
	.uleb128	27
	.byte		"tmp_stop_processing"
	.byte		0
	.4byte		.L1602
	.4byte		.L2235
	.section	.debug_info,,n
	.sleb128	0
.L2230:
	.section	.debug_info,,n
.L2240:
	.sleb128	8
	.4byte		.L2237-.L2
	.byte		"NvM_ActSubStateSingleBlockOperationDone"
	.byte		0
	.4byte		.L1552
	.uleb128	2727
	.uleb128	31
	.4byte		.L1602
	.byte		0x1
	.4byte		.L2238
	.4byte		.L2239
	.section	.debug_info,,n
	.sleb128	0
.L2237:
	.section	.debug_info,,n
.L2245:
	.sleb128	7
	.4byte		.L2242-.L2
	.byte		"NvM_CheckCrcValueSynch"
	.byte		0
	.4byte		.L1552
	.uleb128	4629
	.uleb128	13
	.byte		0x1
	.4byte		.L2243
	.4byte		.L2244
	.sleb128	3
	.4byte		.L1552
	.uleb128	4629
	.uleb128	13
	.byte		"crcFunctionPtr"
	.byte		0
	.4byte		.L1749
	.4byte		.L2246
	.sleb128	10
	.4byte		.L1552
	.uleb128	4629
	.uleb128	13
	.byte		"arg_block_id"
	.byte		0
	.4byte		.L1576
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	10
	.sleb128	3
	.4byte		.L1552
	.uleb128	4629
	.uleb128	13
	.byte		"crc_type"
	.byte		0
	.4byte		.L2247
	.4byte		.L2249
.L2250:
	.sleb128	4
	.4byte		.L1552
	.uleb128	4636
	.uleb128	26
	.byte		"tmp_crc"
	.byte		0
	.4byte		.L1753
	.4byte		.L2251
.L2252:
	.sleb128	4
	.4byte		.L1552
	.uleb128	4637
	.uleb128	41
	.byte		"argBlockIdPtr"
	.byte		0
	.4byte		.L1621
	.4byte		.L2253
	.section	.debug_info,,n
	.sleb128	0
.L2242:
	.section	.debug_info,,n
.L2258:
	.sleb128	2
	.4byte		.L2255-.L2
	.byte		"NvM_ConsistencyCheck"
	.byte		0
	.4byte		.L1552
	.uleb128	5710
	.uleb128	32
	.4byte		.L1859
	.byte		0x1
	.byte		0x1
	.4byte		.L2256
	.4byte		.L2257
.L2259:
	.sleb128	4
	.4byte		.L1552
	.uleb128	5712
	.uleb128	35
	.byte		"retVal"
	.byte		0
	.4byte		.L1859
	.4byte		.L2260
	.section	.debug_info,,n
	.sleb128	0
.L2255:
	.section	.debug_info,,n
.L2265:
	.sleb128	5
	.4byte		.L2262-.L2
	.byte		"NvM_Init"
	.byte		0
	.4byte		.L1552
	.uleb128	4702
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L2263
	.4byte		.L2264
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L2269
	.4byte		.L2266
	.4byte		.L2267
.L2270:
	.sleb128	4
	.4byte		.L1552
	.uleb128	4713
	.uleb128	39
	.byte		"tmp_idx"
	.byte		0
	.4byte		.L1576
	.4byte		.L2271
	.section	.debug_info,,n
	.sleb128	0
.L2269:
	.section	.debug_info,,n
	.sleb128	0
.L2262:
	.section	.debug_info,,n
.L2276:
	.sleb128	2
	.4byte		.L2273-.L2
	.byte		"NvM_SetDataIndex"
	.byte		0
	.4byte		.L1552
	.uleb128	4755
	.uleb128	32
	.4byte		.L1859
	.byte		0x1
	.byte		0x1
	.4byte		.L2274
	.4byte		.L2275
	.sleb128	3
	.4byte		.L1552
	.uleb128	4755
	.uleb128	32
	.byte		"BlockId"
	.byte		0
	.4byte		.L1576
	.4byte		.L2277
	.sleb128	3
	.4byte		.L1552
	.uleb128	4755
	.uleb128	32
	.byte		"DataIndex"
	.byte		0
	.4byte		.L1581
	.4byte		.L2278
.L2279:
	.sleb128	4
	.4byte		.L1552
	.uleb128	4761
	.uleb128	34
	.byte		"tmp_status"
	.byte		0
	.4byte		.L1859
	.4byte		.L2280
	.section	.debug_info,,n
	.sleb128	0
.L2273:
	.section	.debug_info,,n
.L2285:
	.sleb128	2
	.4byte		.L2282-.L2
	.byte		"NvM_GetDataIndex"
	.byte		0
	.4byte		.L1552
	.uleb128	4808
	.uleb128	32
	.4byte		.L1859
	.byte		0x1
	.byte		0x1
	.4byte		.L2283
	.4byte		.L2284
	.sleb128	3
	.4byte		.L1552
	.uleb128	4808
	.uleb128	32
	.byte		"BlockId"
	.byte		0
	.4byte		.L1576
	.4byte		.L2286
	.sleb128	3
	.4byte		.L1552
	.uleb128	4808
	.uleb128	32
	.byte		"DataIndexPtr"
	.byte		0
	.4byte		.L1621
	.4byte		.L2287
.L2288:
	.sleb128	4
	.4byte		.L1552
	.uleb128	4814
	.uleb128	34
	.byte		"tmp_status"
	.byte		0
	.4byte		.L1859
	.4byte		.L2289
	.section	.debug_info,,n
	.sleb128	0
.L2282:
	.section	.debug_info,,n
.L2294:
	.sleb128	2
	.4byte		.L2291-.L2
	.byte		"NvM_SetBlockProtection"
	.byte		0
	.4byte		.L1552
	.uleb128	4854
	.uleb128	32
	.4byte		.L1859
	.byte		0x1
	.byte		0x1
	.4byte		.L2292
	.4byte		.L2293
	.sleb128	3
	.4byte		.L1552
	.uleb128	4854
	.uleb128	32
	.byte		"BlockId"
	.byte		0
	.4byte		.L1576
	.4byte		.L2295
	.sleb128	3
	.4byte		.L1552
	.uleb128	4854
	.uleb128	32
	.byte		"ProtectionEnabled"
	.byte		0
	.4byte		.L1602
	.4byte		.L2296
.L2297:
	.sleb128	4
	.4byte		.L1552
	.uleb128	4861
	.uleb128	34
	.byte		"tmp_status"
	.byte		0
	.4byte		.L1859
	.4byte		.L2298
	.section	.debug_info,,n
	.sleb128	0
.L2291:
	.section	.debug_info,,n
.L2303:
	.sleb128	2
	.4byte		.L2300-.L2
	.byte		"NvM_GetErrorStatus"
	.byte		0
	.4byte		.L1552
	.uleb128	4906
	.uleb128	32
	.4byte		.L1859
	.byte		0x1
	.byte		0x1
	.4byte		.L2301
	.4byte		.L2302
	.sleb128	3
	.4byte		.L1552
	.uleb128	4906
	.uleb128	32
	.byte		"BlockId"
	.byte		0
	.4byte		.L1576
	.4byte		.L2304
	.sleb128	3
	.4byte		.L1552
	.uleb128	4906
	.uleb128	32
	.byte		"RequestResultPtr"
	.byte		0
	.4byte		.L1621
	.4byte		.L2305
.L2306:
	.sleb128	4
	.4byte		.L1552
	.uleb128	4912
	.uleb128	34
	.byte		"tmp_status"
	.byte		0
	.4byte		.L1859
	.4byte		.L2307
	.section	.debug_info,,n
	.sleb128	0
.L2300:
	.section	.debug_info,,n
.L2312:
	.sleb128	5
	.4byte		.L2309-.L2
	.byte		"NvM_GetVersionInfo"
	.byte		0
	.4byte		.L1552
	.uleb128	4941
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L2310
	.4byte		.L2311
	.sleb128	3
	.4byte		.L1552
	.uleb128	4941
	.uleb128	22
	.byte		"versioninfo"
	.byte		0
	.4byte		.L2313
	.4byte		.L2316
	.section	.debug_info,,n
	.sleb128	0
.L2309:
	.section	.debug_info,,n
.L2321:
	.sleb128	5
	.4byte		.L2318-.L2
	.byte		"NvM_SetBlockLockStatus"
	.byte		0
	.4byte		.L1552
	.uleb128	4961
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L2319
	.4byte		.L2320
	.sleb128	3
	.4byte		.L1552
	.uleb128	4961
	.uleb128	22
	.byte		"BlockId"
	.byte		0
	.4byte		.L1576
	.4byte		.L2322
	.sleb128	3
	.4byte		.L1552
	.uleb128	4961
	.uleb128	22
	.byte		"BlockLocked"
	.byte		0
	.4byte		.L1602
	.4byte		.L2323
	.section	.debug_info,,n
	.sleb128	0
.L2318:
	.section	.debug_info,,n
.L2328:
	.sleb128	2
	.4byte		.L2325-.L2
	.byte		"NvM_SetRamBlockStatus"
	.byte		0
	.4byte		.L1552
	.uleb128	5004
	.uleb128	32
	.4byte		.L1859
	.byte		0x1
	.byte		0x1
	.4byte		.L2326
	.4byte		.L2327
	.sleb128	3
	.4byte		.L1552
	.uleb128	5004
	.uleb128	32
	.byte		"BlockId"
	.byte		0
	.4byte		.L1576
	.4byte		.L2329
	.sleb128	3
	.4byte		.L1552
	.uleb128	5004
	.uleb128	32
	.byte		"BlockChanged"
	.byte		0
	.4byte		.L1602
	.4byte		.L2330
.L2331:
	.sleb128	4
	.4byte		.L1552
	.uleb128	5010
	.uleb128	34
	.byte		"tmp_status"
	.byte		0
	.4byte		.L1859
	.4byte		.L2332
.L2333:
	.sleb128	4
	.4byte		.L1552
	.uleb128	5011
	.uleb128	36
	.byte		"crc_type"
	.byte		0
	.4byte		.L2247
	.4byte		.L2334
	.section	.debug_info,,n
	.sleb128	0
.L2325:
	.section	.debug_info,,n
.L2339:
	.sleb128	2
	.4byte		.L2336-.L2
	.byte		"NvM_ReadBlock"
	.byte		0
	.4byte		.L1552
	.uleb128	5091
	.uleb128	32
	.4byte		.L1859
	.byte		0x1
	.byte		0x1
	.4byte		.L2337
	.4byte		.L2338
	.sleb128	3
	.4byte		.L1552
	.uleb128	5091
	.uleb128	32
	.byte		"BlockId"
	.byte		0
	.4byte		.L1576
	.4byte		.L2340
	.sleb128	3
	.4byte		.L1552
	.uleb128	5091
	.uleb128	32
	.byte		"NvM_DstPtr"
	.byte		0
	.4byte		.L2341
	.4byte		.L2343
.L2344:
	.sleb128	4
	.4byte		.L1552
	.uleb128	5097
	.uleb128	34
	.byte		"tmp_status"
	.byte		0
	.4byte		.L1859
	.4byte		.L2345
	.section	.debug_info,,n
	.sleb128	0
.L2336:
	.section	.debug_info,,n
.L2350:
	.sleb128	2
	.4byte		.L2347-.L2
	.byte		"NvM_WriteBlock"
	.byte		0
	.4byte		.L1552
	.uleb128	5155
	.uleb128	32
	.4byte		.L1859
	.byte		0x1
	.byte		0x1
	.4byte		.L2348
	.4byte		.L2349
	.sleb128	3
	.4byte		.L1552
	.uleb128	5155
	.uleb128	32
	.byte		"BlockId"
	.byte		0
	.4byte		.L1576
	.4byte		.L2351
	.sleb128	3
	.4byte		.L1552
	.uleb128	5155
	.uleb128	32
	.byte		"NvM_SrcPtr"
	.byte		0
	.4byte		.L2352
	.4byte		.L2354
.L2355:
	.sleb128	4
	.4byte		.L1552
	.uleb128	5161
	.uleb128	34
	.byte		"tmp_status"
	.byte		0
	.4byte		.L1859
	.4byte		.L2356
	.section	.debug_info,,n
	.sleb128	0
.L2347:
	.section	.debug_info,,n
.L2361:
	.sleb128	2
	.4byte		.L2358-.L2
	.byte		"NvM_RestoreBlockDefaults"
	.byte		0
	.4byte		.L1552
	.uleb128	5254
	.uleb128	32
	.4byte		.L1859
	.byte		0x1
	.byte		0x1
	.4byte		.L2359
	.4byte		.L2360
	.sleb128	3
	.4byte		.L1552
	.uleb128	5254
	.uleb128	32
	.byte		"BlockId"
	.byte		0
	.4byte		.L1576
	.4byte		.L2362
	.sleb128	3
	.4byte		.L1552
	.uleb128	5254
	.uleb128	32
	.byte		"NvM_DestPtr"
	.byte		0
	.4byte		.L2341
	.4byte		.L2363
.L2364:
	.sleb128	4
	.4byte		.L1552
	.uleb128	5261
	.uleb128	34
	.byte		"tmp_status"
	.byte		0
	.4byte		.L1859
	.4byte		.L2365
	.section	.debug_info,,n
	.sleb128	0
.L2358:
	.section	.debug_info,,n
.L2370:
	.sleb128	2
	.4byte		.L2367-.L2
	.byte		"NvM_EraseNvBlock"
	.byte		0
	.4byte		.L1552
	.uleb128	5337
	.uleb128	32
	.4byte		.L1859
	.byte		0x1
	.byte		0x1
	.4byte		.L2368
	.4byte		.L2369
	.sleb128	3
	.4byte		.L1552
	.uleb128	5337
	.uleb128	32
	.byte		"BlockId"
	.byte		0
	.4byte		.L1576
	.4byte		.L2371
.L2372:
	.sleb128	4
	.4byte		.L1552
	.uleb128	5342
	.uleb128	34
	.byte		"tmp_status"
	.byte		0
	.4byte		.L1859
	.4byte		.L2373
	.section	.debug_info,,n
	.sleb128	0
.L2367:
	.section	.debug_info,,n
.L2378:
	.sleb128	2
	.4byte		.L2375-.L2
	.byte		"NvM_CancelJobs"
	.byte		0
	.4byte		.L1552
	.uleb128	5417
	.uleb128	32
	.4byte		.L1859
	.byte		0x1
	.byte		0x1
	.4byte		.L2376
	.4byte		.L2377
	.sleb128	3
	.4byte		.L1552
	.uleb128	5417
	.uleb128	32
	.byte		"BlockId"
	.byte		0
	.4byte		.L1576
	.4byte		.L2379
.L2380:
	.sleb128	4
	.4byte		.L1552
	.uleb128	5422
	.uleb128	34
	.byte		"tmp_status"
	.byte		0
	.4byte		.L1859
	.4byte		.L2381
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L2385
	.4byte		.L2382
	.4byte		.L2383
.L2386:
	.sleb128	4
	.4byte		.L1552
	.uleb128	5436
	.uleb128	33
	.byte		"no_error"
	.byte		0
	.4byte		.L1602
	.4byte		.L2387
	.section	.debug_info,,n
	.sleb128	0
.L2385:
	.section	.debug_info,,n
	.sleb128	0
.L2375:
	.section	.debug_info,,n
.L2392:
	.sleb128	5
	.4byte		.L2389-.L2
	.byte		"NvM_CancelWriteAll"
	.byte		0
	.4byte		.L1552
	.uleb128	5461
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L2390
	.4byte		.L2391
	.section	.debug_info,,n
	.sleb128	0
.L2389:
	.section	.debug_info,,n
.L2397:
	.sleb128	2
	.4byte		.L2394-.L2
	.byte		"NvM_InvalidateNvBlock"
	.byte		0
	.4byte		.L1552
	.uleb128	5481
	.uleb128	32
	.4byte		.L1859
	.byte		0x1
	.byte		0x1
	.4byte		.L2395
	.4byte		.L2396
	.sleb128	3
	.4byte		.L1552
	.uleb128	5481
	.uleb128	32
	.byte		"BlockId"
	.byte		0
	.4byte		.L1576
	.4byte		.L2398
.L2399:
	.sleb128	4
	.4byte		.L1552
	.uleb128	5486
	.uleb128	34
	.byte		"tmp_status"
	.byte		0
	.4byte		.L1859
	.4byte		.L2400
	.section	.debug_info,,n
	.sleb128	0
.L2394:
	.section	.debug_info,,n
.L2405:
	.sleb128	5
	.4byte		.L2402-.L2
	.byte		"NvM_ReadAll"
	.byte		0
	.4byte		.L1552
	.uleb128	5560
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L2403
	.4byte		.L2404
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L2409
	.4byte		.L2406
	.4byte		.L2407
.L2410:
	.sleb128	4
	.4byte		.L1552
	.uleb128	5574
	.uleb128	42
	.byte		"tmp_idx"
	.byte		0
	.4byte		.L1576
	.4byte		.L2411
	.section	.debug_info,,n
	.sleb128	0
.L2409:
	.section	.debug_info,,n
	.sleb128	0
.L2402:
	.section	.debug_info,,n
.L2416:
	.sleb128	5
	.4byte		.L2413-.L2
	.byte		"NvM_WriteAll"
	.byte		0
	.4byte		.L1552
	.uleb128	5607
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L2414
	.4byte		.L2415
	.section	.debug_info,,n
	.sleb128	0
.L2413:
	.section	.debug_info,,n
.L2421:
	.sleb128	5
	.4byte		.L2418-.L2
	.byte		"NvM_ValidateAll"
	.byte		0
	.4byte		.L1552
	.uleb128	5634
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L2419
	.4byte		.L2420
	.section	.debug_info,,n
	.sleb128	0
.L2418:
	.section	.debug_info,,n
.L2426:
	.sleb128	5
	.4byte		.L2423-.L2
	.byte		"NvM_MainFunction"
	.byte		0
	.4byte		.L1552
	.uleb128	5664
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L2424
	.4byte		.L2425
.L2427:
	.sleb128	4
	.4byte		.L1552
	.uleb128	5667
	.uleb128	27
	.byte		"tmp_exit_cond"
	.byte		0
	.4byte		.L1602
	.4byte		.L2428
	.section	.debug_info,,n
	.sleb128	0
.L2423:
	.section	.debug_info,,n
.L2433:
	.sleb128	5
	.4byte		.L2430-.L2
	.byte		"NvM_JobEndNotification"
	.byte		0
	.4byte		.L1552
	.uleb128	5698
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L2431
	.4byte		.L2432
	.section	.debug_info,,n
	.sleb128	0
.L2430:
	.section	.debug_info,,n
.L2438:
	.sleb128	5
	.4byte		.L2435-.L2
	.byte		"NvM_JobErrorNotification"
	.byte		0
	.4byte		.L1552
	.uleb128	5703
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L2436
	.4byte		.L2437
	.section	.debug_info,,n
	.sleb128	0
.L2435:
	.section	.debug_info,,n
.L2439:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L2440
	.uleb128	98
	.uleb128	40
	.byte		"NvM_Common"
	.byte		0
	.4byte		.L2441
	.section	.debug_info,,n
.L2444:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L2440
	.uleb128	99
	.uleb128	44
	.byte		"NvMDemEventId"
	.byte		0
	.4byte		.L1559
.L2445:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L2440
	.uleb128	100
	.uleb128	49
	.byte		"NvM_BlockManagementTable"
	.byte		0
	.4byte		.L2446
.L2449:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L2450
	.uleb128	328
	.uleb128	33
	.byte		"NvM_LTtoPCHashValue"
	.byte		0
	.4byte		.L2451
	.section	.debug_info,,n
.L2452:
	.sleb128	12
	.byte		0x1
	.4byte		.L1552
	.uleb128	454
	.uleb128	35
	.byte		"NvM_InitStatus"
	.byte		0
	.4byte		.L2453
	.sleb128	5
	.byte		0x3
	.4byte		NvM_InitStatus
	.0byte		.L2452
	.comm		NvM_InitStatus,4,2
.L2455:
	.sleb128	12
	.byte		0x1
	.4byte		.L1552
	.uleb128	470
	.uleb128	32
	.byte		"NvM_Req_Multiblock"
	.byte		0
	.4byte		.L1652
	.sleb128	5
	.byte		0x3
	.4byte		NvM_Req_Multiblock
	.comm		NvM_Req_Multiblock,4,2
.L2456:
	.sleb128	12
	.byte		0x1
	.4byte		.L1552
	.uleb128	472
	.uleb128	35
	.byte		"NvM_Current_Block"
	.byte		0
	.4byte		.L1637
	.sleb128	5
	.byte		0x3
	.4byte		NvM_Current_Block
	.comm		NvM_Current_Block,28,2
.L2457:
	.sleb128	12
	.byte		0x1
	.4byte		.L1552
	.uleb128	475
	.uleb128	31
	.byte		"NvM_MemIf_Driver_Status"
	.byte		0
	.4byte		.L1741
	.sleb128	5
	.byte		0x3
	.4byte		NvM_MemIf_Driver_Status
	.comm		NvM_MemIf_Driver_Status,4,2
.L2458:
	.sleb128	12
	.byte		0x1
	.4byte		.L1552
	.uleb128	478
	.uleb128	30
	.byte		"NvM_Data_Crc"
	.byte		0
	.4byte		.L2459
	.sleb128	5
	.byte		0x3
	.4byte		NvM_Data_Crc
	.comm		NvM_Data_Crc,24,2
.L2461:
	.sleb128	12
	.byte		0x1
	.4byte		.L1552
	.uleb128	480
	.uleb128	34
	.byte		"NvM_CompareData"
	.byte		0
	.4byte		.L2462
	.sleb128	5
	.byte		0x3
	.4byte		NvM_CompareData
	.comm		NvM_CompareData,16,2
.L2464:
	.sleb128	12
	.byte		0x1
	.4byte		.L1552
	.uleb128	487
	.uleb128	38
	.byte		"NvM_SubStateDbg"
	.byte		0
	.4byte		.L2465
	.sleb128	5
	.byte		0x3
	.4byte		NvM_SubStateDbg
	.comm		NvM_SubStateDbg,4,2
.L2467:
	.sleb128	12
	.byte		0x1
	.4byte		.L1552
	.uleb128	490
	.uleb128	39
	.byte		"NvM_MainStateDbg"
	.byte		0
	.4byte		.L2468
	.sleb128	5
	.byte		0x3
	.4byte		NvM_MainStateDbg
	.comm		NvM_MainStateDbg,4,2
.L2470:
	.sleb128	9
	.4byte		.L1552
	.uleb128	504
	.uleb128	29
	.byte		"req_cancel_write_all"
	.byte		0
	.4byte		.L1602
	.sleb128	5
	.byte		0x3
	.4byte		req_cancel_write_all
	.lcomm		req_cancel_write_all,1,0
.L2471:
	.sleb128	9
	.4byte		.L1552
	.uleb128	506
	.uleb128	29
	.byte		"id_match"
	.byte		0
	.4byte		.L1602
	.sleb128	5
	.byte		0x3
	.4byte		id_match
	.lcomm		id_match,1,0
.L2472:
	.sleb128	12
	.byte		0x1
	.4byte		.L1552
	.uleb128	508
	.uleb128	22
	.byte		"NvM_WriteVerificationFinished"
	.byte		0
	.4byte		.L1602
	.sleb128	5
	.byte		0x3
	.4byte		NvM_WriteVerificationFinished
	.comm		NvM_WriteVerificationFinished,1,0
.L2473:
	.sleb128	12
	.byte		0x1
	.4byte		.L1552
	.uleb128	510
	.uleb128	22
	.byte		"NvM_WriteFirstBlockWasSuccess"
	.byte		0
	.4byte		.L1602
	.sleb128	5
	.byte		0x3
	.4byte		NvM_WriteFirstBlockWasSuccess
	.comm		NvM_WriteFirstBlockWasSuccess,1,0
.L2474:
	.sleb128	9
	.4byte		.L1552
	.uleb128	512
	.uleb128	29
	.byte		"multi_block_err_found"
	.byte		0
	.4byte		.L1602
	.sleb128	5
	.byte		0x3
	.4byte		multi_block_err_found
	.lcomm		multi_block_err_found,1,0
.L2475:
	.sleb128	12
	.byte		0x1
	.4byte		.L1552
	.uleb128	514
	.uleb128	22
	.byte		"NvM_BlockMirrorError"
	.byte		0
	.4byte		.L1602
	.sleb128	5
	.byte		0x3
	.4byte		NvM_BlockMirrorError
	.comm		NvM_BlockMirrorError,1,0
.L2476:
	.sleb128	12
	.byte		0x1
	.4byte		.L1552
	.uleb128	526
	.uleb128	20
	.byte		"NvM_Counter_Wr_Retries"
	.byte		0
	.4byte		.L2477
	.sleb128	5
	.byte		0x3
	.4byte		NvM_Counter_Wr_Retries
	.comm		NvM_Counter_Wr_Retries,2,2
.L2479:
	.sleb128	12
	.byte		0x1
	.4byte		.L1552
	.uleb128	528
	.uleb128	20
	.byte		"NvM_ReadRepeatMirrorCount"
	.byte		0
	.4byte		.L1581
	.sleb128	5
	.byte		0x3
	.4byte		NvM_ReadRepeatMirrorCount
	.comm		NvM_ReadRepeatMirrorCount,1,0
.L2480:
	.sleb128	12
	.byte		0x1
	.4byte		.L1552
	.uleb128	530
	.uleb128	20
	.byte		"NvM_WriteRepeatMirrorCount"
	.byte		0
	.4byte		.L1581
	.sleb128	5
	.byte		0x3
	.4byte		NvM_WriteRepeatMirrorCount
	.comm		NvM_WriteRepeatMirrorCount,1,0
.L2481:
	.sleb128	12
	.byte		0x1
	.4byte		.L1552
	.uleb128	532
	.uleb128	20
	.byte		"NvM_ReadRetryCounter"
	.byte		0
	.4byte		.L1581
	.sleb128	5
	.byte		0x3
	.4byte		NvM_ReadRetryCounter
	.comm		NvM_ReadRetryCounter,1,0
.L2482:
	.sleb128	9
	.4byte		.L1552
	.uleb128	551
	.uleb128	54
	.byte		"NvM_ActSubStateMachineService"
	.byte		0
	.4byte		.L2483
	.sleb128	5
	.byte		0x3
	.4byte		NvM_ActSubStateMachineService
	.section	.debug_info,,n
.L2490:
	.sleb128	9
	.4byte		.L1552
	.uleb128	641
	.uleb128	53
	.byte		"NvM_ActMainStateMachineService"
	.byte		0
	.4byte		.L2491
	.sleb128	5
	.byte		0x3
	.4byte		NvM_ActMainStateMachineService
	.section	.debug_info,,n
.L1638:
	.sleb128	13
	.4byte		.L2498
	.uleb128	227
	.uleb128	14
	.4byte		.L2499-.L2
	.byte		"NvM_BlockRequestType_Tag"
	.byte		0
	.uleb128	28
	.section	.debug_info,,n
.L314:
	.sleb128	14
	.byte		"service_id"
	.byte		0
	.4byte		.L1652
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L315:
	.sleb128	14
	.byte		"block_id"
	.byte		0
	.4byte		.L1576
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L316:
	.sleb128	14
	.byte		"ram_block_ptr"
	.byte		0
	.4byte		.L1621
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L317:
	.sleb128	14
	.byte		"info"
	.byte		0
	.4byte		.L2500
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L2499:
.L2501:
	.sleb128	13
	.4byte		.L2498
	.uleb128	227
	.uleb128	14
	.4byte		.L2502-.L2
	.byte		"NvM_NvMemifInfoType_Tag"
	.byte		0
	.uleb128	16
.L309:
	.sleb128	14
	.byte		"state"
	.byte		0
	.4byte		.L2503
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L310:
	.sleb128	14
	.byte		"dataset"
	.byte		0
	.4byte		.L1554
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L311:
	.sleb128	14
	.byte		"dem_err"
	.byte		0
	.4byte		.L1564
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L312:
	.sleb128	14
	.byte		"status_err"
	.byte		0
	.4byte		.L2505
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L313:
	.sleb128	14
	.byte		"datasetPointsToRom"
	.byte		0
	.4byte		.L1602
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L2502:
.L2463:
	.sleb128	13
	.4byte		.L2498
	.uleb128	227
	.uleb128	14
	.4byte		.L2506-.L2
	.byte		"NvM_CompareDataType_Tag"
	.byte		0
	.uleb128	16
.L304:
	.sleb128	14
	.byte		"NvM_DataLengthToCompare"
	.byte		0
	.4byte		.L1554
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L305:
	.sleb128	14
	.byte		"NvM_DataLengthToRead"
	.byte		0
	.4byte		.L1554
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L306:
	.sleb128	14
	.byte		"NvM_ReadDataOffset"
	.byte		0
	.4byte		.L1554
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L307:
	.sleb128	14
	.byte		"result"
	.byte		0
	.4byte		.L1753
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L308:
	.sleb128	14
	.byte		"ram_buf_ptr"
	.byte		0
	.4byte		.L1621
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L2506:
.L2460:
	.sleb128	13
	.4byte		.L2498
	.uleb128	227
	.uleb128	14
	.4byte		.L2507-.L2
	.byte		"NvM_DataCrcType_Tag"
	.byte		0
	.uleb128	24
.L297:
	.sleb128	14
	.byte		"result"
	.byte		0
	.4byte		.L1753
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L298:
	.sleb128	14
	.byte		"state"
	.byte		0
	.4byte		.L1797
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L299:
	.sleb128	14
	.byte		"crcType"
	.byte		0
	.4byte		.L2247
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L300:
	.sleb128	14
	.byte		"one_step_data_length"
	.byte		0
	.4byte		.L1554
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L301:
	.sleb128	14
	.byte		"data_length_to_process"
	.byte		0
	.4byte		.L1554
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L302:
	.sleb128	14
	.byte		"buf_ptr"
	.byte		0
	.4byte		.L1621
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L303:
	.sleb128	14
	.byte		"isFirstCrcCall"
	.byte		0
	.4byte		.L1602
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L2507:
.L2448:
	.sleb128	13
	.4byte		.L2508
	.uleb128	185
	.uleb128	14
	.4byte		.L2509-.L2
	.byte		"NvM_BlockManagementType_Tag"
	.byte		0
	.uleb128	8
.L295:
	.sleb128	14
	.byte		"AdminBlockPtr"
	.byte		0
	.4byte		.L2510
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L296:
	.sleb128	14
	.byte		"BlockDescriptorPtr"
	.byte		0
	.4byte		.L2514
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L2509:
.L2443:
	.sleb128	13
	.4byte		.L2508
	.uleb128	185
	.uleb128	14
	.4byte		.L2519-.L2
	.byte		"NvM_CommonType_Tag"
	.byte		0
	.uleb128	40
.L281:
	.sleb128	14
	.byte		"NvM_CrcNumOfBytes"
	.byte		0
	.4byte		.L1554
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L282:
	.sleb128	14
	.byte		"NvM_CompiledConfigId"
	.byte		0
	.4byte		.L1554
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L283:
	.sleb128	14
	.byte		"NvM_TotalBlockNb"
	.byte		0
	.4byte		.L1576
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L284:
	.sleb128	14
	.byte		"NvM_MultiBlockCallback"
	.byte		0
	.4byte		.L2520
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L285:
	.sleb128	14
	.byte		"NvM_BswMBlockModeCallback"
	.byte		0
	.4byte		.L2524
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L286:
	.sleb128	14
	.byte		"NvM_BswMJobModeCallback"
	.byte		0
	.4byte		.L2528
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L287:
	.sleb128	14
	.byte		"NvM_BlockCRCPtr"
	.byte		0
	.4byte		.L2532
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L288:
	.sleb128	14
	.byte		"NvM_RamMirrorPtr"
	.byte		0
	.4byte		.L2534
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L289:
	.sleb128	14
	.byte		"NvM_WriteVfyBuffPtr"
	.byte		0
	.4byte		.L2534
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L290:
	.sleb128	14
	.byte		"NvM_DatasetSelectionBits"
	.byte		0
	.4byte		.L1581
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L291:
	.sleb128	14
	.byte		"NvM_RptMirrorCnt"
	.byte		0
	.4byte		.L1581
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L292:
	.sleb128	14
	.byte		"NvM_BswMMultiBlk"
	.byte		0
	.4byte		.L1602
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L293:
	.sleb128	14
	.byte		"NvM_DrvModeSwitch"
	.byte		0
	.4byte		.L1602
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L294:
	.sleb128	14
	.byte		"NvM_DynConfig"
	.byte		0
	.4byte		.L1602
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L2519:
.L2518:
	.sleb128	13
	.4byte		.L2508
	.uleb128	185
	.uleb128	14
	.4byte		.L2535-.L2
	.byte		"NvM_BlockDescriptorType_Tag"
	.byte		0
	.uleb128	64
.L260:
	.sleb128	14
	.byte		"NvM_BlockCRC"
	.byte		0
	.4byte		.L2247
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L261:
	.sleb128	14
	.byte		"CrcFunctionPtr"
	.byte		0
	.4byte		.L1749
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L262:
	.sleb128	14
	.byte		"NvM_NvramDeviceId"
	.byte		0
	.4byte		.L1581
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L263:
	.sleb128	14
	.byte		"NvM_BlockManagement"
	.byte		0
	.4byte		.L2536
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L264:
	.sleb128	14
	.byte		"NvM_NvBlockNum"
	.byte		0
	.4byte		.L1581
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L265:
	.sleb128	14
	.byte		"NvM_RomBlockNum"
	.byte		0
	.4byte		.L1581
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L266:
	.sleb128	14
	.byte		"NvM_BlockJobPriority"
	.byte		0
	.4byte		.L1581
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L267:
	.sleb128	14
	.byte		"NvM_NvBlockLength"
	.byte		0
	.4byte		.L1554
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L268:
	.sleb128	14
	.byte		"NvM_NvBlockBaseNumber"
	.byte		0
	.4byte		.L1554
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L269:
	.sleb128	14
	.byte		"NvM_NvBlockIdentifier"
	.byte		0
	.4byte		.L1576
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L270:
	.sleb128	14
	.byte		"NvM_MaxNoOfReadRetry"
	.byte		0
	.4byte		.L1581
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L271:
	.sleb128	14
	.byte		"NvM_MaxNoOfWriteRetry"
	.byte		0
	.4byte		.L1581
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L272:
	.sleb128	14
	.byte		"NvM_WriteVerificationDataSize"
	.byte		0
	.4byte		.L1554
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L273:
	.sleb128	14
	.byte		"NvM_RamBlockDataAddress"
	.byte		0
	.4byte		.L1621
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L274:
	.sleb128	14
	.byte		"NvM_RomBlockDataAddress"
	.byte		0
	.4byte		.L1624
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L275:
	.sleb128	14
	.byte		"NvM_InitBlockCallback"
	.byte		0
	.4byte		.L2538
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L276:
	.sleb128	14
	.byte		"NvMSingleBlockCallback"
	.byte		0
	.4byte		.L2542
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L277:
	.sleb128	14
	.byte		"NvM_ReadRamBlockFromNvCallback"
	.byte		0
	.4byte		.L2546
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L278:
	.sleb128	14
	.byte		"NvMWriteRamBlockToNvCallback"
	.byte		0
	.4byte		.L2550
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L279:
	.sleb128	14
	.byte		"NvM_Block_DemEventIds"
	.byte		0
	.4byte		.L1558
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L280:
	.sleb128	14
	.byte		"NvM_booleanconfig"
	.byte		0
	.4byte		.L1554
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
	.sleb128	0
.L2535:
.L2513:
	.sleb128	13
	.4byte		.L2508
	.uleb128	185
	.uleb128	14
	.4byte		.L2554-.L2
	.byte		"NvM_AdministrativeBlockType_Tag"
	.byte		0
	.uleb128	8
.L257:
	.sleb128	14
	.byte		"dataset_idx"
	.byte		0
	.4byte		.L1581
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L258:
	.sleb128	14
	.byte		"error_status"
	.byte		0
	.4byte		.L2505
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L259:
	.sleb128	14
	.byte		"attributes"
	.byte		0
	.4byte		.L2555
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L2554:
	.section	.debug_info,,n
.L2555:
	.sleb128	15
	.4byte		.L2508
	.uleb128	185
	.uleb128	14
	.4byte		.L2556-.L2
	.uleb128	4
	.section	.debug_info,,n
.L252:
	.sleb128	16
	.byte		"wr_protect"
	.byte		0
	.4byte		.L2557
	.uleb128	4
	.byte		0x1
	.byte		0x0
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L253:
	.sleb128	16
	.byte		"valid"
	.byte		0
	.4byte		.L2557
	.uleb128	4
	.byte		0x1
	.byte		0x1
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L254:
	.sleb128	16
	.byte		"changed"
	.byte		0
	.4byte		.L2557
	.uleb128	4
	.byte		0x1
	.byte		0x2
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L255:
	.sleb128	16
	.byte		"BlockLock"
	.byte		0
	.4byte		.L2557
	.uleb128	4
	.byte		0x1
	.byte		0x3
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L256:
	.sleb128	16
	.byte		"unused"
	.byte		0
	.4byte		.L2557
	.uleb128	4
	.byte		0xc
	.byte		0x4
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L2556:
.L1561:
	.sleb128	13
	.4byte		.L2558
	.uleb128	69
	.uleb128	1
	.4byte		.L2559-.L2
	.byte		"NvM_DemEventIdType_Tag"
	.byte		0
	.uleb128	16
.L244:
	.sleb128	14
	.byte		"dem_event_e_hardware"
	.byte		0
	.4byte		.L1553
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L245:
	.sleb128	14
	.byte		"dem_event_req_failed"
	.byte		0
	.4byte		.L1553
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L246:
	.sleb128	14
	.byte		"dem_event_integrity_failed"
	.byte		0
	.4byte		.L1553
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L247:
	.sleb128	14
	.byte		"dem_event_lossof_redundancy"
	.byte		0
	.4byte		.L1553
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L248:
	.sleb128	14
	.byte		"dem_event_verify_failed"
	.byte		0
	.4byte		.L1553
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L249:
	.sleb128	14
	.byte		"dem_event_queue_overflow"
	.byte		0
	.4byte		.L1553
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L250:
	.sleb128	14
	.byte		"dem_event_write_protected"
	.byte		0
	.4byte		.L1553
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L251:
	.sleb128	14
	.byte		"dem_event_wrong_block_id"
	.byte		0
	.4byte		.L1553
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
	.sleb128	0
.L2559:
.L2315:
	.sleb128	15
	.4byte		.L2558
	.uleb128	69
	.uleb128	1
	.4byte		.L2560-.L2
	.uleb128	8
.L159:
	.sleb128	14
	.byte		"vendorID"
	.byte		0
	.4byte		.L1554
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L160:
	.sleb128	14
	.byte		"moduleID"
	.byte		0
	.4byte		.L1554
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L161:
	.sleb128	14
	.byte		"sw_major_version"
	.byte		0
	.4byte		.L1581
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L162:
	.sleb128	14
	.byte		"sw_minor_version"
	.byte		0
	.4byte		.L1581
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L163:
	.sleb128	14
	.byte		"sw_patch_version"
	.byte		0
	.4byte		.L1581
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L2560:
	.section	.debug_info,,n
.L1849:
	.sleb128	17
	.4byte		.L2561
	.uleb128	115
	.uleb128	14
	.4byte		.L2562-.L2
	.byte		"MemIf_JobResultType_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	18
	.byte		"MEMIF_JOB_OK"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"MEMIF_JOB_FAILED"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"MEMIF_JOB_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	18
	.byte		"MEMIF_JOB_CANCELED"
	.byte		0
	.sleb128	3
	.sleb128	18
	.byte		"MEMIF_BLOCK_INCONSISTENT"
	.byte		0
	.sleb128	4
	.sleb128	18
	.byte		"MEMIF_BLOCK_INVALID"
	.byte		0
	.sleb128	5
	.sleb128	0
.L2562:
.L1742:
	.sleb128	17
	.4byte		.L2561
	.uleb128	100
	.uleb128	14
	.4byte		.L2563-.L2
	.byte		"MemIf_StatusType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	18
	.byte		"MEMIF_UNINIT"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"MEMIF_IDLE"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"MEMIF_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	18
	.byte		"MEMIF_BUSY_INTERNAL"
	.byte		0
	.sleb128	3
	.sleb128	0
.L2563:
.L1764:
	.sleb128	17
	.4byte		.L2498
	.uleb128	220
	.uleb128	14
	.4byte		.L2564-.L2
	.byte		"NvM_CrcBufferUpdateType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	18
	.byte		"NVM_UPDATE_CRC_FIELD"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"NVM_NOT_UPDATE_CRC_FIELD"
	.byte		0
	.sleb128	1
	.sleb128	0
.L2564:
.L1798:
	.sleb128	17
	.4byte		.L2498
	.uleb128	211
	.uleb128	14
	.4byte		.L2565-.L2
	.byte		"NvM_CalculationCrcStateType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	18
	.byte		"NVM_CALCULATION_CRC_INIT"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"NVM_CALCULATION_CRC_IN_PROGRESS"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"NVM_CALCULATION_CRC_FINISHED_OK"
	.byte		0
	.sleb128	2
	.sleb128	18
	.byte		"NVM_CALCULATION_CRC_FINISHED_NOK"
	.byte		0
	.sleb128	3
	.sleb128	0
.L2565:
.L1653:
	.sleb128	17
	.4byte		.L2498
	.uleb128	176
	.uleb128	14
	.4byte		.L2566-.L2
	.byte		"NvM_ServiceIdType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	18
	.byte		"NVM_INIT_ID"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"NVM_SET_DATA_INDEX_ID"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"NVM_GET_DATA_INDEX_ID"
	.byte		0
	.sleb128	2
	.sleb128	18
	.byte		"NVM_SET_BLOCK_PROTECTION_ID"
	.byte		0
	.sleb128	3
	.sleb128	18
	.byte		"NVM_GET_ERROR_STATUS_ID"
	.byte		0
	.sleb128	4
	.sleb128	18
	.byte		"NVM_SET_RAM_BLOCK_STATUS_ID"
	.byte		0
	.sleb128	5
	.sleb128	18
	.byte		"NVM_READ_BLOCK_ID"
	.byte		0
	.sleb128	6
	.sleb128	18
	.byte		"NVM_WRITE_BLOCK_ID"
	.byte		0
	.sleb128	7
	.sleb128	18
	.byte		"NVM_RESTORE_BLOCK_DEFAULTS_ID"
	.byte		0
	.sleb128	8
	.sleb128	18
	.byte		"NVM_ERASE_BLOCK_ID"
	.byte		0
	.sleb128	9
	.sleb128	18
	.byte		"NVM_CANCEL_WRITE_ALL_ID"
	.byte		0
	.sleb128	10
	.sleb128	18
	.byte		"NVM_INVALIDATE_NV_BLOCK_ID"
	.byte		0
	.sleb128	11
	.sleb128	18
	.byte		"NVM_READ_ALL_ID"
	.byte		0
	.sleb128	12
	.sleb128	18
	.byte		"NVM_WRITE_ALL_ID"
	.byte		0
	.sleb128	13
	.sleb128	18
	.byte		"NVM_MAIN_FUNCTION_ID"
	.byte		0
	.sleb128	14
	.sleb128	18
	.byte		"NVM_GET_VERSION_INFO_ID"
	.byte		0
	.sleb128	15
	.sleb128	18
	.byte		"NVM_CANCEL_JOB_ID"
	.byte		0
	.sleb128	16
	.sleb128	18
	.byte		"NVM_JOB_END_NOTIFICATION_ID"
	.byte		0
	.sleb128	17
	.sleb128	18
	.byte		"NVM_JOB_ERROR_NOTIFICATION_ID"
	.byte		0
	.sleb128	18
	.sleb128	18
	.byte		"NVM_SETBLOCK_LOCK_STATUS_ID"
	.byte		0
	.sleb128	19
	.sleb128	18
	.byte		"NVM_READ_PRAM_BLOCK_ID"
	.byte		0
	.sleb128	22
	.sleb128	18
	.byte		"NVM_WRITE_PRAM_BLOCK_ID"
	.byte		0
	.sleb128	23
	.sleb128	18
	.byte		"NVM_RESTORE_PRAM_BLOCK_DEFAULTS_ID"
	.byte		0
	.sleb128	24
	.sleb128	18
	.byte		"NVM_VALIDATE_ALL_ID"
	.byte		0
	.sleb128	25
	.sleb128	18
	.byte		"NVM_NO_SERVICE_PENDING_ID"
	.byte		0
	.sleb128	26
	.sleb128	0
.L2566:
.L2504:
	.sleb128	17
	.4byte		.L2498
	.uleb128	122
	.uleb128	14
	.4byte		.L2567-.L2
	.byte		"NvM_BlockMemifDriverStateType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	18
	.byte		"NVM_BLOCK_NV_READ_INIT"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"NVM_BLOCK_NV_READ_START"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"NVM_BLOCK_NV_READ_ROM_DATASET_VALIDATE"
	.byte		0
	.sleb128	2
	.sleb128	18
	.byte		"NVM_BLOCK_NV_READ_IN_PROGRESS"
	.byte		0
	.sleb128	3
	.sleb128	18
	.byte		"NVM_BLOCK_NV_READ_CHECK_CRC"
	.byte		0
	.sleb128	4
	.sleb128	18
	.byte		"NVM_BLOCK_NV_READ_RAMMIRROR"
	.byte		0
	.sleb128	5
	.sleb128	18
	.byte		"NVM_BLOCK_NV_READ_PROCESS_ERR"
	.byte		0
	.sleb128	6
	.sleb128	18
	.byte		"NVM_BLOCK_NV_READ_DONE"
	.byte		0
	.sleb128	7
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_PREINIT"
	.byte		0
	.sleb128	8
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_INIT"
	.byte		0
	.sleb128	9
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_IN_PROGRESS"
	.byte		0
	.sleb128	10
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_VALIDATE"
	.byte		0
	.sleb128	11
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_PROCESS_ERR"
	.byte		0
	.sleb128	12
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_START_WRITE"
	.byte		0
	.sleb128	13
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_VERIFICATION"
	.byte		0
	.sleb128	14
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_VERIFICATION_IN_PROGRESS"
	.byte		0
	.sleb128	15
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_DONE"
	.byte		0
	.sleb128	16
	.sleb128	18
	.byte		"NVM_BLOCK_NV_READ_PRAM_INIT"
	.byte		0
	.sleb128	17
	.sleb128	18
	.byte		"NVM_BLOCK_NV_READ_PRAM_START"
	.byte		0
	.sleb128	18
	.sleb128	18
	.byte		"NVM_BLOCK_NV_READ_PRAM_ROM_DATASET_VALIDATE"
	.byte		0
	.sleb128	19
	.sleb128	18
	.byte		"NVM_BLOCK_NV_READ_PRAM_IN_PROGRESS"
	.byte		0
	.sleb128	20
	.sleb128	18
	.byte		"NVM_BLOCK_NV_READ_PRAM_CHECK_CRC"
	.byte		0
	.sleb128	21
	.sleb128	18
	.byte		"NVM_BLOCK_NV_READ_PRAM_RAMMIRROR"
	.byte		0
	.sleb128	22
	.sleb128	18
	.byte		"NVM_BLOCK_NV_READ_PRAM_RECALC"
	.byte		0
	.sleb128	23
	.sleb128	18
	.byte		"NVM_BLOCK_NV_READ_PRAM_PROCESS_ERR"
	.byte		0
	.sleb128	24
	.sleb128	18
	.byte		"NVM_BLOCK_NV_READ_PRAM_DONE"
	.byte		0
	.sleb128	25
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_INIT"
	.byte		0
	.sleb128	26
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_PREINIT"
	.byte		0
	.sleb128	27
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_IN_PROGRESS"
	.byte		0
	.sleb128	28
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_VALIDATE"
	.byte		0
	.sleb128	29
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_PROCESS_ERR"
	.byte		0
	.sleb128	30
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_START_WRITE"
	.byte		0
	.sleb128	31
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_VERIFICATION"
	.byte		0
	.sleb128	32
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_VERIFICATION_IN_PROGRESS"
	.byte		0
	.sleb128	33
	.sleb128	18
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_DONE"
	.byte		0
	.sleb128	34
	.sleb128	18
	.byte		"NVM_BLOCK_VALIDATE_INIT"
	.byte		0
	.sleb128	35
	.sleb128	18
	.byte		"NVM_BLOCK_VALIDATE_USING_RAMMIRROR"
	.byte		0
	.sleb128	36
	.sleb128	18
	.byte		"NVM_BLOCK_VALIDATE_CHECK_CRC_RAM"
	.byte		0
	.sleb128	37
	.sleb128	18
	.byte		"NVM_BLOCK_VALIDATE_CHECK_CRC_RAMMIRROR"
	.byte		0
	.sleb128	38
	.sleb128	18
	.byte		"NVM_BLOCK_VALIDATE_DONE"
	.byte		0
	.sleb128	39
	.sleb128	18
	.byte		"NVM_BLOCK_MEMIF_DRIVER_STATE_NB"
	.byte		0
	.sleb128	40
	.sleb128	0
.L2567:
.L2469:
	.sleb128	17
	.4byte		.L2450
	.uleb128	278
	.uleb128	14
	.4byte		.L2568-.L2
	.byte		"NvM_MainStateMachineType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	18
	.byte		"NVM_MAIN_STATE_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"NVM_MAIN_STATE_MULTI_BLOCK_OPERATION"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"NVM_MAIN_STATE_SINGLE_BLOCK_OPERATION"
	.byte		0
	.sleb128	2
	.sleb128	18
	.byte		"NVM_MAIN_STATE_SERVICE_NB"
	.byte		0
	.sleb128	3
	.sleb128	0
.L2568:
.L2466:
	.sleb128	17
	.4byte		.L2450
	.uleb128	185
	.uleb128	14
	.4byte		.L2569-.L2
	.byte		"NvM_SubStateMachineType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	18
	.byte		"NVM_SUBSTATE_READALL_INIT"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"NVM_SUBSTATE_READALL_SELECT_READ_METHOD"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"NVM_SUBSTATE_READALL_EXTENDED_METHOD"
	.byte		0
	.sleb128	2
	.sleb128	18
	.byte		"NVM_SUBSTATE_WRITEALL_INIT"
	.byte		0
	.sleb128	3
	.sleb128	18
	.byte		"NVM_SUBSTATE_WRITEALL_FIND_BLOCK"
	.byte		0
	.sleb128	4
	.sleb128	18
	.byte		"NVM_SUBSTATE_WRITEALL_CANCELED"
	.byte		0
	.sleb128	5
	.sleb128	18
	.byte		"NVM_SUBSTATE_VALIDATEALL_INIT"
	.byte		0
	.sleb128	6
	.sleb128	18
	.byte		"NVM_SUBSTATE_VALIDATEALL_SELECT_BLOCKS"
	.byte		0
	.sleb128	7
	.sleb128	18
	.byte		"NVM_SUBSTATE_VALIDATEALL_OPERATION_DONE"
	.byte		0
	.sleb128	8
	.sleb128	18
	.byte		"NVM_SUBSTATE_SINGLEBLOCK_OPERATION_DONE"
	.byte		0
	.sleb128	9
	.sleb128	18
	.byte		"NVM_SUBSTATE_MULTIBLOCK_OPERATION_DONE"
	.byte		0
	.sleb128	10
	.sleb128	18
	.byte		"NVM_SUBSTATE_READBLOCK_INIT"
	.byte		0
	.sleb128	11
	.sleb128	18
	.byte		"NVM_SUBSTATE_READBLOCK_READING"
	.byte		0
	.sleb128	12
	.sleb128	18
	.byte		"NVM_SUBSTATE_READBLOCK_VALIDATE"
	.byte		0
	.sleb128	13
	.sleb128	18
	.byte		"NVM_SUBSTATE_RESTOREBLOCK_READ_DEFAULTS"
	.byte		0
	.sleb128	14
	.sleb128	18
	.byte		"NVM_SUBSTATE_RESTOREBLOCK_VALIDATE"
	.byte		0
	.sleb128	15
	.sleb128	18
	.byte		"NVM_SUBSTATE_WRITEBLOCK_INIT"
	.byte		0
	.sleb128	16
	.sleb128	18
	.byte		"NVM_SUBSTATE_WRITEBLOCK_WRITING"
	.byte		0
	.sleb128	17
	.sleb128	18
	.byte		"NVM_SUBSTATE_ERASEBLOCK_INIT"
	.byte		0
	.sleb128	18
	.sleb128	18
	.byte		"NVM_SUBSTATE_ERASEBLOCK_START"
	.byte		0
	.sleb128	19
	.sleb128	18
	.byte		"NVM_SUBSTATE_ERASEBLOCK_INPROGRESS"
	.byte		0
	.sleb128	20
	.sleb128	18
	.byte		"NVM_SUBSTATE_INVALIDATEBLOCK_INIT"
	.byte		0
	.sleb128	21
	.sleb128	18
	.byte		"NVM_SUBSTATE_INVALIDATEBLOCK_STARTPROCESS"
	.byte		0
	.sleb128	22
	.sleb128	18
	.byte		"NVM_SUBSTATE_INVALIDATEBLOCK_OPN_IS_IN_PROGRESS"
	.byte		0
	.sleb128	23
	.sleb128	18
	.byte		"NVM_SUBSTATE_READALL_CHECK_DATA_VALID"
	.byte		0
	.sleb128	24
	.sleb128	18
	.byte		"NVM_SUBSTATE_READALL_VALIDATE_DEFAULTS"
	.byte		0
	.sleb128	25
	.sleb128	18
	.byte		"NVM_SUBSTATE_READALL_READ_CONFIGID"
	.byte		0
	.sleb128	26
	.sleb128	18
	.byte		"NVM_SUBSTATE_READALL_STANDARD_METHOD"
	.byte		0
	.sleb128	27
	.sleb128	18
	.byte		"NVM_SUBSTATE_READALL_RESTORE"
	.byte		0
	.sleb128	28
	.sleb128	18
	.byte		"NVM_SUBSTATE_READALL_RESTORE_VALIDATE"
	.byte		0
	.sleb128	29
	.sleb128	18
	.byte		"NVM_SUBSTATE_WRITEALL_WRITING"
	.byte		0
	.sleb128	30
	.sleb128	18
	.byte		"NVM_SUBSTATE_READ_PRAM_BLOCK_INIT"
	.byte		0
	.sleb128	31
	.sleb128	18
	.byte		"NVM_SUBSTATE_READ_PRAM_BLOCK_READING"
	.byte		0
	.sleb128	32
	.sleb128	18
	.byte		"NVM_SUBSTATE_READ_PRAM_BLOCK_VALIDATE"
	.byte		0
	.sleb128	33
	.sleb128	18
	.byte		"NVM_SUBSTATE_RESTORE_PRAM_BLOCK_READ_DEFAULTS"
	.byte		0
	.sleb128	34
	.sleb128	18
	.byte		"NVM_SUBSTATE_RESTORE_PRAM_BLOCK_VALIDATE"
	.byte		0
	.sleb128	35
	.sleb128	18
	.byte		"NVM_SUBSTATE_WRITE_PRAM_BLOCK_INIT"
	.byte		0
	.sleb128	36
	.sleb128	18
	.byte		"NVM_SUBSTATE_WRITE_PRAM_BLOCK_WRITING"
	.byte		0
	.sleb128	37
	.sleb128	18
	.byte		"NVM_SUBSTATE_VALIDATEALL_VALIDATE"
	.byte		0
	.sleb128	38
	.sleb128	18
	.byte		"NVM_SUBSTATE_SERVICE_NB"
	.byte		0
	.sleb128	39
	.sleb128	0
.L2569:
.L2454:
	.sleb128	17
	.4byte		.L2450
	.uleb128	178
	.uleb128	14
	.4byte		.L2570-.L2
	.byte		"NvM_DriverStatusType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	18
	.byte		"NVM_NOT_INITIALIZED"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"NVM_INITIALIZED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L2570:
.L2537:
	.sleb128	17
	.4byte		.L2508
	.uleb128	185
	.uleb128	14
	.4byte		.L2571-.L2
	.byte		"NvM_BlockMngmtType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	18
	.byte		"NVM_BLOCK_NATIVE"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"NVM_BLOCK_REDUNDANT"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"NVM_BLOCK_DATASET"
	.byte		0
	.sleb128	2
	.sleb128	0
.L2571:
.L2248:
	.sleb128	17
	.4byte		.L2508
	.uleb128	172
	.uleb128	14
	.4byte		.L2572-.L2
	.byte		"NvM_BlockCrcType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	18
	.byte		"NVM_CRC8"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"NVM_CRC16"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"NVM_CRC32"
	.byte		0
	.sleb128	2
	.sleb128	18
	.byte		"NVM_CRC00"
	.byte		0
	.sleb128	3
	.sleb128	18
	.byte		"NVM_CRC_TYPES_NB"
	.byte		0
	.sleb128	4
	.sleb128	0
.L2572:
.L1565:
	.sleb128	17
	.4byte		.L2508
	.uleb128	153
	.uleb128	14
	.4byte		.L2573-.L2
	.byte		"NvM_DemEventIdNumberType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	18
	.byte		"NVM_DEM_EVENT_E_NO_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	18
	.byte		"NVM_DEM_EVENT_E_HARDWARE"
	.byte		0
	.sleb128	1
	.sleb128	18
	.byte		"NVM_DEM_EVENT_E_REQ_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	18
	.byte		"NVM_DEM_EVENT_E_INTEGRITY_FAILED"
	.byte		0
	.sleb128	3
	.sleb128	18
	.byte		"NVM_DEM_EVENT_E_LOSS_OF_REDUNDANCY"
	.byte		0
	.sleb128	4
	.sleb128	18
	.byte		"NVM_DEM_EVENT_E_VERIFY_FAILED"
	.byte		0
	.sleb128	5
	.sleb128	18
	.byte		"NVM_DEM_EVENT_E_QUEUE_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	18
	.byte		"NVM_DEM_EVENT_E_WRITE_PROTECTED"
	.byte		0
	.sleb128	7
	.sleb128	18
	.byte		"NVM_DEM_EVENT_E_WRONG_BLOCK_ID"
	.byte		0
	.sleb128	8
	.sleb128	0
.L2573:
	.section	.debug_info,,n
.L1555:
	.sleb128	19
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L1554:
	.sleb128	20
	.byte		"uint16"
	.byte		0
	.4byte		.L1555
.L1553:
	.sleb128	20
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L1554
.L1560:
	.sleb128	20
	.byte		"NvM_DemEventIdType"
	.byte		0
	.4byte		.L1561
	.section	.debug_info,,n
.L1559:
	.sleb128	21
	.4byte		.L1560
	.section	.debug_info,,n
.L1558:
	.sleb128	22
	.4byte		.L1559
.L1557:
	.sleb128	21
	.4byte		.L1558
.L1564:
	.sleb128	20
	.byte		"NvM_DemEventIdNumberType"
	.byte		0
	.4byte		.L1565
.L1563:
	.sleb128	21
	.4byte		.L1564
.L1576:
	.sleb128	20
	.byte		"NvM_BlockIdType"
	.byte		0
	.4byte		.L1554
.L1575:
	.sleb128	21
	.4byte		.L1576
.L1582:
	.sleb128	19
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L1581:
	.sleb128	20
	.byte		"uint8"
	.byte		0
	.4byte		.L1582
.L1580:
	.sleb128	20
	.byte		"Dem_EventStatusType"
	.byte		0
	.4byte		.L1581
.L1579:
	.sleb128	21
	.4byte		.L1580
.L1602:
	.sleb128	20
	.byte		"boolean"
	.byte		0
	.4byte		.L1582
.L1621:
	.sleb128	22
	.4byte		.L1581
.L1625:
	.sleb128	21
	.4byte		.L1581
.L1624:
	.sleb128	22
	.4byte		.L1625
.L1623:
	.sleb128	21
	.4byte		.L1624
.L1637:
	.sleb128	20
	.byte		"NvM_BlockRequestType"
	.byte		0
	.4byte		.L1638
.L1636:
	.sleb128	21
	.4byte		.L1637
.L1635:
	.sleb128	22
	.4byte		.L1636
.L1652:
	.sleb128	20
	.byte		"NvM_ServiceIdType"
	.byte		0
	.4byte		.L1653
.L1741:
	.sleb128	20
	.byte		"MemIf_StatusType"
	.byte		0
	.4byte		.L1742
.L1754:
	.sleb128	19
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L1753:
	.sleb128	20
	.byte		"uint32"
	.byte		0
	.4byte		.L1754
	.section	.debug_info,,n
.L1751:
	.sleb128	23
	.4byte		.L1752-.L2
	.4byte		.L1753
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	24
	.4byte		.L1624
	.sleb128	24
	.4byte		.L1753
	.sleb128	24
	.4byte		.L1753
	.sleb128	24
	.4byte		.L1602
	.sleb128	0
.L1752:
.L1750:
	.sleb128	22
	.4byte		.L1751
.L1749:
	.sleb128	20
	.byte		"NVM_CRC32_FUNC"
	.byte		0
	.4byte		.L1750
.L1761:
	.sleb128	21
	.4byte		.L1635
.L1763:
	.sleb128	20
	.byte		"NvM_CrcBufferUpdateType"
	.byte		0
	.4byte		.L1764
.L1797:
	.sleb128	20
	.byte		"NvM_CalculationCrcStateType"
	.byte		0
	.4byte		.L1798
.L1811:
	.sleb128	21
	.4byte		.L1763
.L1829:
	.sleb128	22
	.4byte		.L1637
.L1848:
	.sleb128	20
	.byte		"MemIf_JobResultType"
	.byte		0
	.4byte		.L1849
.L1859:
	.sleb128	20
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L1581
.L2247:
	.sleb128	20
	.byte		"NvM_BlockCrcType"
	.byte		0
	.4byte		.L2248
.L2314:
	.sleb128	20
	.byte		"Std_VersionInfoType"
	.byte		0
	.4byte		.L2315
.L2313:
	.sleb128	22
	.4byte		.L2314
	.section	.debug_info,,n
.L2342:
	.sleb128	25
	.byte		"void"
	.byte		0
	.byte		0x0
.L2341:
	.sleb128	22
	.4byte		.L2342
.L2353:
	.sleb128	21
	.4byte		.L2342
.L2352:
	.sleb128	22
	.4byte		.L2353
.L2442:
	.sleb128	20
	.byte		"NvM_CommonType"
	.byte		0
	.4byte		.L2443
.L2441:
	.sleb128	21
	.4byte		.L2442
.L2447:
	.sleb128	20
	.byte		"NvM_BlockManagementType"
	.byte		0
	.4byte		.L2448
.L2446:
	.sleb128	21
	.4byte		.L2447
.L2451:
	.sleb128	21
	.4byte		.L1753
.L2453:
	.sleb128	20
	.byte		"NvM_DriverStatusType"
	.byte		0
	.4byte		.L2454
.L2459:
	.sleb128	20
	.byte		"NvM_DataCrcType"
	.byte		0
	.4byte		.L2460
.L2462:
	.sleb128	20
	.byte		"NvM_CompareDataType"
	.byte		0
	.4byte		.L2463
.L2465:
	.sleb128	20
	.byte		"NvM_SubStateMachineType"
	.byte		0
	.4byte		.L2466
.L2468:
	.sleb128	20
	.byte		"NvM_MainStateMachineType"
	.byte		0
	.4byte		.L2469
	.section	.debug_info,,n
.L2477:
	.sleb128	26
	.4byte		.L2478-.L2
	.4byte		.L1581
	.section	.debug_info,,n
	.sleb128	27
	.uleb128	1
	.sleb128	0
.L2478:
.L2488:
	.sleb128	23
	.4byte		.L2489-.L2
	.4byte		.L1602
	.byte		0x1
	.sleb128	0
.L2489:
.L2487:
	.sleb128	22
	.4byte		.L2488
.L2486:
	.sleb128	20
	.byte		"NvM_ActSubMachineServiceType"
	.byte		0
	.4byte		.L2487
.L2485:
	.sleb128	21
	.4byte		.L2486
.L2483:
	.sleb128	26
	.4byte		.L2484-.L2
	.4byte		.L2485
	.sleb128	27
	.uleb128	38
	.sleb128	0
.L2484:
.L2496:
	.sleb128	23
	.4byte		.L2497-.L2
	.4byte		.L1602
	.byte		0x1
	.sleb128	0
.L2497:
.L2495:
	.sleb128	22
	.4byte		.L2496
.L2494:
	.sleb128	20
	.byte		"NvM_ActMainStateMachineType"
	.byte		0
	.4byte		.L2495
.L2493:
	.sleb128	21
	.4byte		.L2494
.L2491:
	.sleb128	26
	.4byte		.L2492-.L2
	.4byte		.L2493
	.sleb128	27
	.uleb128	2
	.sleb128	0
.L2492:
.L2500:
	.sleb128	20
	.byte		"NvM_NvMemifInfoType"
	.byte		0
	.4byte		.L2501
.L2503:
	.sleb128	20
	.byte		"NvM_BlockMemifDriverStateType"
	.byte		0
	.4byte		.L2504
.L2505:
	.sleb128	20
	.byte		"NvM_RequestResultType"
	.byte		0
	.4byte		.L1581
.L2512:
	.sleb128	20
	.byte		"NvM_AdministrativeBlockType"
	.byte		0
	.4byte		.L2513
.L2511:
	.sleb128	22
	.4byte		.L2512
.L2510:
	.sleb128	21
	.4byte		.L2511
.L2517:
	.sleb128	20
	.byte		"NvM_BlockDescriptorType"
	.byte		0
	.4byte		.L2518
.L2516:
	.sleb128	21
	.4byte		.L2517
.L2515:
	.sleb128	22
	.4byte		.L2516
.L2514:
	.sleb128	21
	.4byte		.L2515
	.section	.debug_info,,n
.L2522:
	.sleb128	28
	.4byte		.L2523-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L1581
	.sleb128	24
	.4byte		.L2505
	.sleb128	0
.L2523:
.L2521:
	.sleb128	22
	.4byte		.L2522
.L2520:
	.sleb128	20
	.byte		"NvM_MultiBlockCallbackFunctionType"
	.byte		0
	.4byte		.L2521
.L2526:
	.sleb128	28
	.4byte		.L2527-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L1576
	.sleb128	24
	.4byte		.L2505
	.sleb128	0
.L2527:
.L2525:
	.sleb128	22
	.4byte		.L2526
.L2524:
	.sleb128	20
	.byte		"NvM_BswM_NvM_CurrentBlockModeFunctionType"
	.byte		0
	.4byte		.L2525
.L2530:
	.sleb128	28
	.4byte		.L2531-.L2
	.byte		0x1
	.sleb128	24
	.4byte		.L1581
	.sleb128	24
	.4byte		.L2505
	.sleb128	0
.L2531:
.L2529:
	.sleb128	22
	.4byte		.L2530
.L2528:
	.sleb128	20
	.byte		"NvM_BswM_NvM_CurrentJobModeFunctionType"
	.byte		0
	.4byte		.L2529
.L2533:
	.sleb128	22
	.4byte		.L1753
.L2532:
	.sleb128	21
	.4byte		.L2533
.L2534:
	.sleb128	21
	.4byte		.L1621
.L2536:
	.sleb128	20
	.byte		"NvM_BlockMngmtType"
	.byte		0
	.4byte		.L2537
.L2540:
	.sleb128	23
	.4byte		.L2541-.L2
	.4byte		.L1859
	.byte		0x1
	.sleb128	0
.L2541:
.L2539:
	.sleb128	22
	.4byte		.L2540
.L2538:
	.sleb128	20
	.byte		"NvM_InitBlockCallbackPtrType"
	.byte		0
	.4byte		.L2539
.L2544:
	.sleb128	23
	.4byte		.L2545-.L2
	.4byte		.L1859
	.byte		0x1
	.sleb128	24
	.4byte		.L1581
	.sleb128	24
	.4byte		.L2505
	.sleb128	0
.L2545:
.L2543:
	.sleb128	22
	.4byte		.L2544
.L2542:
	.sleb128	20
	.byte		"NvM_SingleBlockCallbackFunctionType"
	.byte		0
	.4byte		.L2543
.L2548:
	.sleb128	23
	.4byte		.L2549-.L2
	.4byte		.L1859
	.byte		0x1
	.sleb128	24
	.4byte		.L2352
	.sleb128	0
.L2549:
.L2547:
	.sleb128	22
	.4byte		.L2548
.L2546:
	.sleb128	20
	.byte		"NvM_RamMirrorOperationReadCallBackType"
	.byte		0
	.4byte		.L2547
.L2552:
	.sleb128	23
	.4byte		.L2553-.L2
	.4byte		.L1859
	.byte		0x1
	.sleb128	24
	.4byte		.L2341
	.sleb128	0
.L2553:
.L2551:
	.sleb128	22
	.4byte		.L2552
.L2550:
	.sleb128	20
	.byte		"NvM_RamMirrorOperationWriteCallBackType"
	.byte		0
	.4byte		.L2551
.L2557:
	.sleb128	19
	.byte		"unsigned int"
	.byte		0
	.byte		0x7
	.byte		0x4
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L1562:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L1566:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locend
.L1568:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),4
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),6
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),4
	.d2locend
.L1577:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),31
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),31
	.d2locend
.L1578:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo15),4
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),8
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo18),8
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),8
	.d2locend
.L1583:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo17),5
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo18),5
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),5
	.d2locend
.L1597:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),31
	.d2locend
.L1604:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),0
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),0
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),0
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),0
	.d2locend
.L1605:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo35),4
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo36),5
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),5
	.d2locend
.L1607:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo39),31
	.d2locend
.L1622:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),3
	.d2locend
.L1626:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo42),4
	.d2locend
.L1627:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo43),5
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo41),0
	.d2locend
.L1629:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo41),5
	.d2locend
.L1639:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),3
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),4
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),4
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),4
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),4
	.d2locend
.L1645:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),3
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locend
.L1651:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),3
	.d2locend
.L1654:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo61),4
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),0
	.d2locend
.L1660:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),3
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),0
	.d2locend
.L1666:
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),3
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),0
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),0
	.d2locend
.L1674:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),3
	.d2locend
.L1682:
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),31
	.d2locend
.L1689:
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),3
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),3
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),3
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),3
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),3
	.d2locend
.L1696:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),31
	.d2locend
.L1703:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),31
	.d2locend
.L1715:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),3
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),3
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),4
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),4
	.d2locend
.L1718:
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo95),8
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo99),8
	.d2locend
.L1720:
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo96),31
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),31
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo106),31
	.d2locend
.L1726:
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo95),30
	.d2locend
.L1732:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),5
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),0
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo113),5
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo95),0
	.d2locend
.L1739:
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),5
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),5
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),5
	.d2locend
.L1743:
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo122),31
	.d2locend
.L1755:
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo124),3
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),3
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),3
	.d2locend
.L1762:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),3
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),31
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),31
	.d2locend
.L1765:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),4
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo135),30
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo136),30
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),4
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo139),4
	.d2locend
.L1766:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),5
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo141),5
	.d2locend
.L1768:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo142),29
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo144),29
	.d2locend
.L1789:
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),3
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo148),3
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo150),3
	.d2locend
.L1790:
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo151),4
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo152),31
	.d2locend
.L1791:
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),5
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo152),30
	.d2locend
.L1792:
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),6
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo152),29
	.d2locend
.L1800:
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo155),3
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo157),31
	.d2locend
.L1801:
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo156),4
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo157),30
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo160),4
	.d2locend
.L1802:
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo156),5
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo161),29
	.d2locreg	%offsetof(.Llo162), %offsetof(.Llo163),29
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo165),5
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo160),5
	.d2locend
.L1803:
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo166),6
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo157),28
	.d2locend
.L1810:
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo168),3
	.d2locend
.L1812:
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo169),4
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo170),4
	.d2locend
.L1813:
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo169),5
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo171),5
	.d2locend
.L1814:
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo169),6
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo172),6
	.d2locend
.L1816:
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo173),31
	.d2locend
.L1823:
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo175),3
	.d2locend
.L1830:
	.d2locreg	%offsetof(.Llo176), %offsetof(.Llo177),3
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo179),31
	.d2locend
.L1832:
	.d2locreg	%offsetof(.Llo176), %offsetof(.Llo178),30
	.d2locreg	%offsetof(.Llo180), %offsetof(.Llo181),3
	.d2locreg	%offsetof(.Llo182), %offsetof(.Llo183),3
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo185),3
	.d2locreg	%offsetof(.Llo179), %offsetof(.Llo186),3
	.d2locend
.L1834:
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo187),30
	.d2locend
.L1846:
	.d2locreg	%offsetof(.Llo188), %offsetof(.Llo189),4
	.d2locreg	%offsetof(.Llo190), %offsetof(.Llo191),3
	.d2locreg	%offsetof(.Llo192), %offsetof(.Llo193),4
	.d2locend
.L1850:
	.d2locreg	%offsetof(.Llo194), %offsetof(.Llo195),0
	.d2locreg	%offsetof(.Llo191), %offsetof(.Llo196),0
	.d2locreg	%offsetof(.Llo197), %offsetof(.Llo198),0
	.d2locreg	%offsetof(.Llo199), %offsetof(.Llo200),0
	.d2locreg	%offsetof(.Llo201), %offsetof(.Llo202),0
	.d2locreg	%offsetof(.Llo203), %offsetof(.Llo204),0
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),0
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo192),0
	.d2locend
.L1857:
	.d2locreg	%offsetof(.Llo208), %offsetof(.Llo209),31
	.d2locend
.L1860:
	.d2locreg	%offsetof(.Llo210), %offsetof(.Llo211),3
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo213),3
	.d2locreg	%offsetof(.Llo214), %offsetof(.Llo215),3
	.d2locreg	%offsetof(.Llo216), %offsetof(.Llo217),3
	.d2locreg	%offsetof(.Llo218), %offsetof(.Llo219),3
	.d2locend
.L1867:
	.d2locreg	%offsetof(.Llo220), %offsetof(.Llo221),31
	.d2locreg	%offsetof(.Llo222), %offsetof(.Llo223),31
	.d2locend
.L1869:
	.d2locreg	%offsetof(.Llo224), %offsetof(.Llo225),3
	.d2locreg	%offsetof(.Llo226), %offsetof(.Llo227),3
	.d2locreg	%offsetof(.Llo228), %offsetof(.Llo229),3
	.d2locreg	%offsetof(.Llo230), %offsetof(.Llo231),3
	.d2locreg	%offsetof(.Llo232), %offsetof(.Llo221),3
	.d2locreg	%offsetof(.Llo233), %offsetof(.Llo234),3
	.d2locreg	%offsetof(.Llo235), %offsetof(.Llo222),3
	.d2locend
.L1876:
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo237),0
	.d2locreg	%offsetof(.Llo238), %offsetof(.Llo239),0
	.d2locreg	%offsetof(.Llo240), %offsetof(.Llo241),0
	.d2locreg	%offsetof(.Llo242), %offsetof(.Llo243),0
	.d2locreg	%offsetof(.Llo244), %offsetof(.Llo245),0
	.d2locreg	%offsetof(.Llo246), %offsetof(.Llo247),0
	.d2locreg	%offsetof(.Llo248), %offsetof(.Llo249),0
	.d2locreg	%offsetof(.Llo250), %offsetof(.Llo251),0
	.d2locreg	%offsetof(.Llo252), %offsetof(.Llo253),0
	.d2locreg	%offsetof(.Llo254), %offsetof(.Llo255),0
	.d2locend
.L1883:
	.d2locreg	%offsetof(.Llo256), %offsetof(.Llo257),3
	.d2locreg	%offsetof(.Llo258), %offsetof(.Llo259),31
	.d2locend
.L1885:
	.d2locreg	%offsetof(.Llo256), %offsetof(.Llo260),31
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo261),3
	.d2locreg	%offsetof(.Llo262), %offsetof(.Llo263),3
	.d2locreg	%offsetof(.Llo264), %offsetof(.Llo265),3
	.d2locreg	%offsetof(.Llo266), %offsetof(.Llo267),3
	.d2locreg	%offsetof(.Llo268), %offsetof(.Llo269),3
	.d2locreg	%offsetof(.Llo270), %offsetof(.Llo271),3
	.d2locreg	%offsetof(.Llo272), %offsetof(.Llo273),3
	.d2locreg	%offsetof(.Llo274), %offsetof(.Llo275),3
	.d2locreg	%offsetof(.Llo276), %offsetof(.Llo259),3
	.d2locend
.L1893:
	.d2locreg	%offsetof(.Llo277), %offsetof(.Llo278),31
	.d2locreg	%offsetof(.Llo279), %offsetof(.Llo280),3
	.d2locreg	%offsetof(.Llo281), %offsetof(.Llo282),31
	.d2locend
.L1895:
	.d2locreg	%offsetof(.Llo283), %offsetof(.Llo284),31
	.d2locend
.L1903:
	.d2locreg	%offsetof(.Llo285), %offsetof(.Llo286),31
	.d2locreg	%offsetof(.Llo287), %offsetof(.Llo288),31
	.d2locend
.L1910:
	.d2locreg	%offsetof(.Llo289), %offsetof(.Llo290),31
	.d2locend
.L1917:
	.d2locreg	%offsetof(.Llo291), %offsetof(.Llo292),3
	.d2locreg	%offsetof(.Llo293), %offsetof(.Llo294),3
	.d2locreg	%offsetof(.Llo295), %offsetof(.Llo296),3
	.d2locend
.L1919:
	.d2locreg	%offsetof(.Llo297), %offsetof(.Llo298),31
	.d2locreg	%offsetof(.Llo299), %offsetof(.Llo296),31
	.d2locend
.L1936:
	.d2locreg	%offsetof(.Llo300), %offsetof(.Llo301),31
	.d2locend
.L1938:
	.d2locreg	%offsetof(.Llo302), %offsetof(.Llo303),3
	.d2locreg	%offsetof(.Llo304), %offsetof(.Llo305),3
	.d2locreg	%offsetof(.Llo306), %offsetof(.Llo307),3
	.d2locreg	%offsetof(.Llo308), %offsetof(.Llo309),3
	.d2locreg	%offsetof(.Llo310), %offsetof(.Llo311),3
	.d2locreg	%offsetof(.Llo312), %offsetof(.Llo313),3
	.d2locreg	%offsetof(.Llo314), %offsetof(.Llo315),3
	.d2locend
.L1945:
	.d2locreg	%offsetof(.Llo316), %offsetof(.Llo317),31
	.d2locreg	%offsetof(.Llo318), %offsetof(.Llo319),31
	.d2locend
.L1947:
	.d2locreg	%offsetof(.Llo320), %offsetof(.Llo321),3
	.d2locreg	%offsetof(.Llo322), %offsetof(.Llo323),3
	.d2locreg	%offsetof(.Llo324), %offsetof(.Llo317),3
	.d2locreg	%offsetof(.Llo325), %offsetof(.Llo326),3
	.d2locreg	%offsetof(.Llo327), %offsetof(.Llo328),3
	.d2locreg	%offsetof(.Llo329), %offsetof(.Llo318),3
	.d2locend
.L1954:
	.d2locreg	%offsetof(.Llo330), %offsetof(.Llo331),31
	.d2locend
.L1956:
	.d2locreg	%offsetof(.Llo332), %offsetof(.Llo333),3
	.d2locreg	%offsetof(.Llo334), %offsetof(.Llo335),3
	.d2locreg	%offsetof(.Llo336), %offsetof(.Llo337),3
	.d2locreg	%offsetof(.Llo338), %offsetof(.Llo339),3
	.d2locend
.L1968:
	.d2locreg	%offsetof(.Llo340), %offsetof(.Llo341),31
	.d2locreg	%offsetof(.Llo342), %offsetof(.Llo343),31
	.d2locend
.L1974:
	.d2locreg	%offsetof(.Llo344), %offsetof(.Llo345),3
	.d2locreg	%offsetof(.Llo346), %offsetof(.Llo347),31
	.d2locend
.L1982:
	.d2locreg	%offsetof(.Llo348), %offsetof(.Llo349),3
	.d2locreg	%offsetof(.Llo350), %offsetof(.Llo351),31
	.d2locend
.L1984:
	.d2locreg	%offsetof(.Llo352), %offsetof(.Llo350),0
	.d2locreg	%offsetof(.Llo353), %offsetof(.Llo354),0
	.d2locreg	%offsetof(.Llo355), %offsetof(.Llo356),0
	.d2locreg	%offsetof(.Llo357), %offsetof(.Llo358),0
	.d2locreg	%offsetof(.Llo359), %offsetof(.Llo360),0
	.d2locreg	%offsetof(.Llo361), %offsetof(.Llo362),0
	.d2locreg	%offsetof(.Llo363), %offsetof(.Llo364),0
	.d2locreg	%offsetof(.Llo365), %offsetof(.Llo366),0
	.d2locreg	%offsetof(.Llo367), %offsetof(.Llo368),0
	.d2locreg	%offsetof(.Llo369), %offsetof(.Llo351),0
	.d2locend
.L1986:
	.d2locreg	%offsetof(.Llo370), %offsetof(.Llo371),3
	.d2locreg	%offsetof(.Llo372), %offsetof(.Llo373),3
	.d2locreg	%offsetof(.Llo374), %offsetof(.Llo360),3
	.d2locreg	%offsetof(.Llo375), %offsetof(.Llo376),3
	.d2locreg	%offsetof(.Llo377), %offsetof(.Llo378),3
	.d2locend
.L1992:
	.d2locreg	%offsetof(.Llo379), %offsetof(.Llo380),3
	.d2locreg	%offsetof(.Llo381), %offsetof(.Llo382),31
	.d2locend
.L1998:
	.d2locreg	%offsetof(.Llo383), %offsetof(.Llo384),3
	.d2locreg	%offsetof(.Llo385), %offsetof(.Llo386),5
	.d2locreg	%offsetof(.Llo387), %offsetof(.Llo388),5
	.d2locreg	%offsetof(.Llo389), %offsetof(.Llo390),5
	.d2locend
.L1999:
	.d2locreg	%offsetof(.Llo383), %offsetof(.Llo391),4
	.d2locend
.L2001:
	.d2locreg	%offsetof(.Llo392), %offsetof(.Llo393),3
	.d2locend
.L2003:
	.d2locreg	%offsetof(.Llo394), %offsetof(.Llo395),4
	.d2locend
.L2005:
	.d2locreg	%offsetof(.Llo396), %offsetof(.Llo389),0
	.d2locreg	%offsetof(.Llo397), %offsetof(.Llo390),0
	.d2locreg	%offsetof(.Llo398), %offsetof(.Llo395),5
	.d2locend
.L2007:
	.d2locreg	%offsetof(.Llo385), %offsetof(.Llo395),6
	.d2locend
.L2013:
	.d2locreg	%offsetof(.Llo399), %offsetof(.Llo400),3
	.d2locreg	%offsetof(.Llo401), %offsetof(.Llo402),31
	.d2locend
.L2015:
	.d2locreg	%offsetof(.Llo399), %offsetof(.Llo403),30
	.d2locreg	%offsetof(.Llo404), %offsetof(.Llo405),30
	.d2locreg	%offsetof(.Llo406), %offsetof(.Llo407),30
	.d2locreg	%offsetof(.Llo408), %offsetof(.Llo409),30
	.d2locreg	%offsetof(.Llo410), %offsetof(.Llo411),30
	.d2locreg	%offsetof(.Llo402), %offsetof(.Llo412),30
	.d2locend
.L2017:
	.d2locreg	%offsetof(.Llo413), %offsetof(.Llo414),0
	.d2locreg	%offsetof(.Llo415), %offsetof(.Llo416),0
	.d2locreg	%offsetof(.Llo417), %offsetof(.Llo418),0
	.d2locreg	%offsetof(.Llo419), %offsetof(.Llo405),0
	.d2locreg	%offsetof(.Llo420), %offsetof(.Llo407),0
	.d2locreg	%offsetof(.Llo421), %offsetof(.Llo409),0
	.d2locreg	%offsetof(.Llo422), %offsetof(.Llo411),0
	.d2locreg	%offsetof(.Llo423), %offsetof(.Llo402),0
	.d2locend
.L2023:
	.d2locreg	%offsetof(.Llo424), %offsetof(.Llo425),3
	.d2locreg	%offsetof(.Llo426), %offsetof(.Llo427),31
	.d2locend
.L2025:
	.d2locreg	%offsetof(.Llo428), %offsetof(.Llo426),4
	.d2locreg	%offsetof(.Llo429), %offsetof(.Llo430),4
	.d2locreg	%offsetof(.Llo431), %offsetof(.Llo432),4
	.d2locreg	%offsetof(.Llo433), %offsetof(.Llo434),4
	.d2locreg	%offsetof(.Llo435), %offsetof(.Llo436),4
	.d2locreg	%offsetof(.Llo437), %offsetof(.Llo438),4
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo440),4
	.d2locreg	%offsetof(.Llo427), %offsetof(.Llo441),4
	.d2locend
.L2027:
	.d2locreg	%offsetof(.Llo442), %offsetof(.Llo443),0
	.d2locreg	%offsetof(.Llo444), %offsetof(.Llo445),0
	.d2locreg	%offsetof(.Llo446), %offsetof(.Llo436),0
	.d2locreg	%offsetof(.Llo447), %offsetof(.Llo448),0
	.d2locreg	%offsetof(.Llo449), %offsetof(.Llo450),0
	.d2locreg	%offsetof(.Llo451), %offsetof(.Llo438),0
	.d2locreg	%offsetof(.Llo452), %offsetof(.Llo440),0
	.d2locreg	%offsetof(.Llo453), %offsetof(.Llo427),0
	.d2locend
.L2033:
	.d2locreg	%offsetof(.Llo454), %offsetof(.Llo455),3
	.d2locreg	%offsetof(.Llo456), %offsetof(.Llo457),30
	.d2locend
.L2035:
	.d2locreg	%offsetof(.Llo456), %offsetof(.Llo458),31
	.d2locend
.L2037:
	.d2locreg	%offsetof(.Llo459), %offsetof(.Llo460),3
	.d2locend
.L2043:
	.d2locreg	%offsetof(.Llo461), %offsetof(.Llo462),3
	.d2locreg	%offsetof(.Llo463), %offsetof(.Llo464),31
	.d2locend
.L2045:
	.d2locreg	%offsetof(.Llo463), %offsetof(.Llo465),4
	.d2locreg	%offsetof(.Llo466), %offsetof(.Llo467),4
	.d2locreg	%offsetof(.Llo464), %offsetof(.Llo468),4
	.d2locend
.L2051:
	.d2locreg	%offsetof(.Llo469), %offsetof(.Llo470),3
	.d2locreg	%offsetof(.Llo471), %offsetof(.Llo472),31
	.d2locend
.L2053:
	.d2locreg	%offsetof(.Llo473), %offsetof(.Llo474),4
	.d2locreg	%offsetof(.Llo475), %offsetof(.Llo476),4
	.d2locend
.L2055:
	.d2locreg	%offsetof(.Llo477), %offsetof(.Llo472),30
	.d2locend
.L2062:
	.d2locreg	%offsetof(.Llo478), %offsetof(.Llo479),3
	.d2locreg	%offsetof(.Llo480), %offsetof(.Llo481),31
	.d2locend
.L2064:
	.d2locreg	%offsetof(.Llo478), %offsetof(.Llo482),31
	.d2locreg	%offsetof(.Llo479), %offsetof(.Llo483),3
	.d2locreg	%offsetof(.Llo484), %offsetof(.Llo485),3
	.d2locreg	%offsetof(.Llo486), %offsetof(.Llo487),3
	.d2locreg	%offsetof(.Llo488), %offsetof(.Llo489),3
	.d2locreg	%offsetof(.Llo490), %offsetof(.Llo491),3
	.d2locreg	%offsetof(.Llo492), %offsetof(.Llo493),3
	.d2locreg	%offsetof(.Llo494), %offsetof(.Llo495),3
	.d2locreg	%offsetof(.Llo496), %offsetof(.Llo497),3
	.d2locreg	%offsetof(.Llo498), %offsetof(.Llo499),3
	.d2locreg	%offsetof(.Llo500), %offsetof(.Llo481),3
	.d2locend
.L2072:
	.d2locreg	%offsetof(.Llo501), %offsetof(.Llo502),31
	.d2locreg	%offsetof(.Llo503), %offsetof(.Llo504),31
	.d2locend
.L2089:
	.d2locreg	%offsetof(.Llo505), %offsetof(.Llo506),31
	.d2locreg	%offsetof(.Llo507), %offsetof(.Llo508),31
	.d2locend
.L2101:
	.d2locreg	%offsetof(.Llo509), %offsetof(.Llo510),31
	.d2locend
.L2103:
	.d2locreg	%offsetof(.Llo511), %offsetof(.Llo512),3
	.d2locreg	%offsetof(.Llo513), %offsetof(.Llo514),3
	.d2locreg	%offsetof(.Llo515), %offsetof(.Llo516),3
	.d2locreg	%offsetof(.Llo517), %offsetof(.Llo518),3
	.d2locreg	%offsetof(.Llo519), %offsetof(.Llo520),3
	.d2locreg	%offsetof(.Llo521), %offsetof(.Llo522),3
	.d2locend
.L2105:
	.d2locreg	%offsetof(.Llo523), %offsetof(.Llo524),0
	.d2locreg	%offsetof(.Llo525), %offsetof(.Llo514),0
	.d2locreg	%offsetof(.Llo526), %offsetof(.Llo516),0
	.d2locreg	%offsetof(.Llo527), %offsetof(.Llo520),0
	.d2locreg	%offsetof(.Llo528), %offsetof(.Llo522),0
	.d2locend
.L2112:
	.d2locreg	%offsetof(.Llo529), %offsetof(.Llo530),3
	.d2locreg	%offsetof(.Llo531), %offsetof(.Llo532),3
	.d2locreg	%offsetof(.Llo533), %offsetof(.Llo534),3
	.d2locend
.L2119:
	.d2locreg	%offsetof(.Llo535), %offsetof(.Llo536),3
	.d2locreg	%offsetof(.Llo537), %offsetof(.Llo538),3
	.d2locreg	%offsetof(.Llo539), %offsetof(.Llo540),3
	.d2locend
.L2125:
	.d2locreg	%offsetof(.Llo541), %offsetof(.Llo542),3
	.d2locreg	%offsetof(.Llo543), %offsetof(.Llo544),31
	.d2locend
.L2127:
	.d2locreg	%offsetof(.Llo542), %offsetof(.Llo545),4
	.d2locreg	%offsetof(.Llo546), %offsetof(.Llo547),4
	.d2locreg	%offsetof(.Llo548), %offsetof(.Llo549),3
	.d2locreg	%offsetof(.Llo550), %offsetof(.Llo551),3
	.d2locreg	%offsetof(.Llo552), %offsetof(.Llo553),3
	.d2locreg	%offsetof(.Llo554), %offsetof(.Llo544),4
	.d2locend
.L2134:
	.d2locreg	%offsetof(.Llo555), %offsetof(.Llo556),31
	.d2locreg	%offsetof(.Llo557), %offsetof(.Llo558),31
	.d2locend
.L2156:
	.d2locreg	%offsetof(.Llo559), %offsetof(.Llo560),31
	.d2locend
.L2163:
	.d2locreg	%offsetof(.Llo561), %offsetof(.Llo562),31
	.d2locend
.L2165:
	.d2locreg	%offsetof(.Llo563), %offsetof(.Llo564),3
	.d2locend
.L2177:
	.d2locreg	%offsetof(.Llo565), %offsetof(.Llo566),31
	.d2locend
.L2179:
	.d2locreg	%offsetof(.Llo567), %offsetof(.Llo568),3
	.d2locend
.L2190:
	.d2locreg	%offsetof(.Llo569), %offsetof(.Llo570),3
	.d2locreg	%offsetof(.Llo571), %offsetof(.Llo572),4
	.d2locreg	%offsetof(.Llo573), %offsetof(.Llo574),4
	.d2locend
.L2197:
	.d2locreg	%offsetof(.Llo575), %offsetof(.Llo576),31
	.d2locend
.L2209:
	.d2locreg	%offsetof(.Llo577), %offsetof(.Llo578),31
	.d2locend
.L2216:
	.d2locreg	%offsetof(.Llo579), %offsetof(.Llo580),31
	.d2locend
.L2228:
	.d2locreg	%offsetof(.Llo581), %offsetof(.Llo582),31
	.d2locend
.L2235:
	.d2locreg	%offsetof(.Llo583), %offsetof(.Llo584),31
	.d2locend
.L2246:
	.d2locreg	%offsetof(.Llo585), %offsetof(.Llo586),3
	.d2locreg	%offsetof(.Llo587), %offsetof(.Llo588),31
	.d2locreg	%offsetof(.Llo589), %offsetof(.Llo590),31
	.d2locreg	%offsetof(.Llo591), %offsetof(.Llo592),31
	.d2locreg	%offsetof(.Llo593), %offsetof(.Llo594),31
	.d2locreg	%offsetof(.Llo595), %offsetof(.Llo596),31
	.d2locreg	%offsetof(.Llo597), %offsetof(.Llo598),31
	.d2locend
.L2249:
	.d2locreg	%offsetof(.Llo585), %offsetof(.Llo599),5
	.d2locreg	%offsetof(.Llo593), %offsetof(.Llo600),5
	.d2locreg	%offsetof(.Llo601), %offsetof(.Llo602),5
	.d2locend
.L2251:
	.d2locreg	%offsetof(.Llo585), %offsetof(.Llo603),31
	.d2locreg	%offsetof(.Llo586), %offsetof(.Llo604),3
	.d2locreg	%offsetof(.Llo605), %offsetof(.Llo606),3
	.d2locreg	%offsetof(.Llo607), %offsetof(.Llo588),0
	.d2locreg	%offsetof(.Llo608), %offsetof(.Llo589),3
	.d2locreg	%offsetof(.Llo609), %offsetof(.Llo610),3
	.d2locreg	%offsetof(.Llo611), %offsetof(.Llo590),0
	.d2locreg	%offsetof(.Llo612), %offsetof(.Llo591),3
	.d2locreg	%offsetof(.Llo613), %offsetof(.Llo614),3
	.d2locreg	%offsetof(.Llo615), %offsetof(.Llo616),5
	.d2locreg	%offsetof(.Llo592), %offsetof(.Llo617),3
	.d2locreg	%offsetof(.Llo618), %offsetof(.Llo619),3
	.d2locreg	%offsetof(.Llo594), %offsetof(.Llo595),3
	.d2locreg	%offsetof(.Llo620), %offsetof(.Llo621),3
	.d2locreg	%offsetof(.Llo596), %offsetof(.Llo597),3
	.d2locreg	%offsetof(.Llo622), %offsetof(.Llo623),3
	.d2locreg	%offsetof(.Llo598), %offsetof(.Llo624),3
	.d2locreg	%offsetof(.Llo625), %offsetof(.Llo602),3
	.d2locend
.L2253:
	.d2locreg	%offsetof(.Llo626), %offsetof(.Llo627),0
	.d2locreg	%offsetof(.Llo606), %offsetof(.Llo628),3
	.d2locreg	%offsetof(.Llo588), %offsetof(.Llo608),3
	.d2locreg	%offsetof(.Llo589), %offsetof(.Llo629),0
	.d2locreg	%offsetof(.Llo610), %offsetof(.Llo630),3
	.d2locreg	%offsetof(.Llo590), %offsetof(.Llo612),3
	.d2locreg	%offsetof(.Llo591), %offsetof(.Llo613),0
	.d2locreg	%offsetof(.Llo614), %offsetof(.Llo631),3
	.d2locreg	%offsetof(.Llo632), %offsetof(.Llo592),0
	.d2locreg	%offsetof(.Llo593), %offsetof(.Llo600),0
	.d2locreg	%offsetof(.Llo633), %offsetof(.Llo594),0
	.d2locreg	%offsetof(.Llo634), %offsetof(.Llo596),0
	.d2locreg	%offsetof(.Llo635), %offsetof(.Llo598),0
	.d2locreg	%offsetof(.Llo636), %offsetof(.Llo637),0
	.d2locreg	%offsetof(.Llo638), %offsetof(.Llo639),0
	.d2locend
.L2260:
	.d2locreg	%offsetof(.Llo640), %offsetof(.Llo641),0
	.d2locreg	%offsetof(.Llo642), %offsetof(.Llo643),3
	.d2locend
.L2271:
	.d2locreg	%offsetof(.Llo644), %offsetof(.Llo645),3
	.d2locreg	%offsetof(.Llo646), %offsetof(.Llo647),3
	.d2locend
.L2277:
	.d2locreg	%offsetof(.Llo648), %offsetof(.Llo649),3
	.d2locreg	%offsetof(.Llo650), %offsetof(.Llo651),31
	.d2locreg	%offsetof(.Llo652), %offsetof(.Llo653),31
	.d2locend
.L2278:
	.d2locreg	%offsetof(.Llo648), %offsetof(.Llo649),4
	.d2locreg	%offsetof(.Llo650), %offsetof(.Llo654),30
	.d2locend
.L2280:
	.d2locreg	%offsetof(.Llo648), %offsetof(.Llo655),29
	.d2locend
.L2286:
	.d2locreg	%offsetof(.Llo656), %offsetof(.Llo657),3
	.d2locreg	%offsetof(.Llo658), %offsetof(.Llo659),31
	.d2locreg	%offsetof(.Llo660), %offsetof(.Llo661),31
	.d2locend
.L2287:
	.d2locreg	%offsetof(.Llo656), %offsetof(.Llo657),4
	.d2locreg	%offsetof(.Llo658), %offsetof(.Llo662),30
	.d2locend
.L2289:
	.d2locreg	%offsetof(.Llo656), %offsetof(.Llo663),29
	.d2locend
.L2295:
	.d2locreg	%offsetof(.Llo664), %offsetof(.Llo665),3
	.d2locend
.L2296:
	.d2locreg	%offsetof(.Llo664), %offsetof(.Llo666),4
	.d2locreg	%offsetof(.Llo667), %offsetof(.Llo668),0
	.d2locreg	%offsetof(.Llo669), %offsetof(.Llo670),0
	.d2locreg	%offsetof(.Llo671), %offsetof(.Llo665),0
	.d2locend
.L2298:
	.d2locreg	%offsetof(.Llo672), %offsetof(.Llo668),5
	.d2locreg	%offsetof(.Llo673), %offsetof(.Llo674),5
	.d2locend
.L2304:
	.d2locreg	%offsetof(.Llo675), %offsetof(.Llo676),3
	.d2locreg	%offsetof(.Llo677), %offsetof(.Llo678),3
	.d2locend
.L2305:
	.d2locreg	%offsetof(.Llo675), %offsetof(.Llo678),4
	.d2locend
.L2307:
	.d2locreg	%offsetof(.Llo679), %offsetof(.Llo680),6
	.d2locend
.L2316:
	.d2locreg	%offsetof(.Llo681), %offsetof(.Llo682),3
	.d2locend
.L2322:
	.d2locreg	%offsetof(.Llo683), %offsetof(.Llo684),3
	.d2locreg	%offsetof(.Llo685), %offsetof(.Llo686),30
	.d2locend
.L2323:
	.d2locreg	%offsetof(.Llo683), %offsetof(.Llo684),4
	.d2locreg	%offsetof(.Llo685), %offsetof(.Llo686),31
	.d2locend
.L2329:
	.d2locreg	%offsetof(.Llo687), %offsetof(.Llo688),3
	.d2locreg	%offsetof(.Llo689), %offsetof(.Llo690),31
	.d2locreg	%offsetof(.Llo691), %offsetof(.Llo692),4
	.d2locreg	%offsetof(.Llo693), %offsetof(.Llo694),31
	.d2locend
.L2330:
	.d2locreg	%offsetof(.Llo687), %offsetof(.Llo695),4
	.d2locreg	%offsetof(.Llo696), %offsetof(.Llo697),30
	.d2locreg	%offsetof(.Llo698), %offsetof(.Llo694),30
	.d2locend
.L2332:
	.d2locreg	%offsetof(.Llo699), %offsetof(.Llo700),29
	.d2locreg	%offsetof(.Llo701), %offsetof(.Llo702),29
	.d2locend
.L2334:
	.d2locreg	%offsetof(.Llo703), %offsetof(.Llo704),28
	.d2locreg	%offsetof(.Llo692), %offsetof(.Llo694),28
	.d2locend
.L2340:
	.d2locreg	%offsetof(.Llo705), %offsetof(.Llo706),3
	.d2locreg	%offsetof(.Llo707), %offsetof(.Llo708),31
	.d2locend
.L2343:
	.d2locreg	%offsetof(.Llo705), %offsetof(.Llo706),4
	.d2locreg	%offsetof(.Llo707), %offsetof(.Llo709),30
	.d2locreg	%offsetof(.Llo710), %offsetof(.Llo711),5
	.d2locend
.L2345:
	.d2locreg	%offsetof(.Llo705), %offsetof(.Llo712),29
	.d2locreg	%offsetof(.Llo713), %offsetof(.Llo709),3
	.d2locreg	%offsetof(.Llo714), %offsetof(.Llo715),29
	.d2locend
.L2351:
	.d2locreg	%offsetof(.Llo716), %offsetof(.Llo717),3
	.d2locreg	%offsetof(.Llo718), %offsetof(.Llo719),31
	.d2locreg	%offsetof(.Llo720), %offsetof(.Llo721),31
	.d2locend
.L2354:
	.d2locreg	%offsetof(.Llo716), %offsetof(.Llo717),4
	.d2locreg	%offsetof(.Llo718), %offsetof(.Llo719),30
	.d2locreg	%offsetof(.Llo722), %offsetof(.Llo721),30
	.d2locend
.L2356:
	.d2locreg	%offsetof(.Llo716), %offsetof(.Llo723),29
	.d2locend
.L2362:
	.d2locreg	%offsetof(.Llo724), %offsetof(.Llo725),3
	.d2locreg	%offsetof(.Llo726), %offsetof(.Llo727),31
	.d2locend
.L2363:
	.d2locreg	%offsetof(.Llo724), %offsetof(.Llo725),4
	.d2locreg	%offsetof(.Llo726), %offsetof(.Llo728),30
	.d2locreg	%offsetof(.Llo729), %offsetof(.Llo730),5
	.d2locend
.L2365:
	.d2locreg	%offsetof(.Llo724), %offsetof(.Llo731),29
	.d2locreg	%offsetof(.Llo732), %offsetof(.Llo733),29
	.d2locreg	%offsetof(.Llo734), %offsetof(.Llo728),3
	.d2locreg	%offsetof(.Llo735), %offsetof(.Llo736),29
	.d2locend
.L2371:
	.d2locreg	%offsetof(.Llo737), %offsetof(.Llo738),3
	.d2locreg	%offsetof(.Llo739), %offsetof(.Llo740),31
	.d2locend
.L2373:
	.d2locreg	%offsetof(.Llo737), %offsetof(.Llo741),30
	.d2locend
.L2379:
	.d2locreg	%offsetof(.Llo742), %offsetof(.Llo743),3
	.d2locreg	%offsetof(.Llo744), %offsetof(.Llo745),31
	.d2locreg	%offsetof(.Llo746), %offsetof(.Llo747),31
	.d2locend
.L2381:
	.d2locreg	%offsetof(.Llo742), %offsetof(.Llo748),30
	.d2locend
.L2387:
	.d2locreg	%offsetof(.Llo749), %offsetof(.Llo745),3
	.d2locreg	%offsetof(.Llo750), %offsetof(.Llo747),0
	.d2locend
.L2398:
	.d2locreg	%offsetof(.Llo751), %offsetof(.Llo752),3
	.d2locreg	%offsetof(.Llo753), %offsetof(.Llo754),31
	.d2locend
.L2400:
	.d2locreg	%offsetof(.Llo751), %offsetof(.Llo755),30
	.d2locend
.L2411:
	.d2locreg	%offsetof(.Llo756), %offsetof(.Llo757),3
	.d2locreg	%offsetof(.Llo758), %offsetof(.Llo759),3
	.d2locend
.L2428:
	.d2locreg	%offsetof(.Llo760), %offsetof(.Llo761),0
	.d2locreg	%offsetof(.Llo762), %offsetof(.Llo763),0
	.d2locreg	%offsetof(.Llo764), %offsetof(.Llo765),0
	.d2locreg	%offsetof(.Llo766), %offsetof(.Llo767),0
	.d2locreg	%offsetof(.Llo768), %offsetof(.Llo769),3
	.d2locreg	%offsetof(.Llo770), %offsetof(.Llo771),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "NvM_JobErrorNotification"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_JobEndNotification"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_MainFunction"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ValidateAll"
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus","SchM_Enter_NvM_EaServiceProcessQueue","SchM_Exit_NvM_EaServiceProcessQueue"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_WriteAll"
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus","SchM_Enter_NvM_EaServiceProcessQueue","SchM_Exit_NvM_EaServiceProcessQueue"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ReadAll"
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus","SchM_Enter_NvM_EaServiceProcessQueue","SchM_Exit_NvM_EaServiceProcessQueue"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_InvalidateNvBlock"
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus","NvM_QueueInsert","SchM_Enter_NvM_EaServiceProcessQueue","SchM_Exit_NvM_EaServiceProcessQueue"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_CancelWriteAll"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_CancelJobs"
	.wrcm.nstrlist "calls", "NvM_QueueRemoveJob"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_EraseNvBlock"
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus","NvM_QueueInsert","SchM_Enter_NvM_EaServiceProcessQueue","SchM_Exit_NvM_EaServiceProcessQueue"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_RestoreBlockDefaults"
	.wrcm.nstrlist "calls", "NvM_QueueInsert","SchM_Enter_NvM_EaServiceProcessQueue","SchM_Exit_NvM_EaServiceProcessQueue"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_WriteBlock"
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus","NvM_QueueInsert","SchM_Enter_NvM_EaServiceProcessQueue","SchM_Exit_NvM_EaServiceProcessQueue"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ReadBlock"
	.wrcm.nstrlist "calls", "NvM_QueueInsert","SchM_Enter_NvM_EaServiceProcessQueue","SchM_Exit_NvM_EaServiceProcessQueue"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_SetRamBlockStatus"
	.wrcm.nstrlist "calls", "NvM_CheckCrcValueSynch","SchM_Enter_NvM_EaServiceProcessQueue","SchM_Exit_NvM_EaServiceProcessQueue"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_SetBlockLockStatus"
	.wrcm.nstrlist "calls", "SchM_Enter_NvM_EaServiceProcessQueue","SchM_Exit_NvM_EaServiceProcessQueue"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_GetVersionInfo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_GetErrorStatus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_SetBlockProtection"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_GetDataIndex"
	.wrcm.nstrlist "calls", "SchM_Enter_NvM_EaServiceProcessQueue","SchM_Exit_NvM_EaServiceProcessQueue"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_SetDataIndex"
	.wrcm.nstrlist "calls", "SchM_Enter_NvM_EaServiceProcessQueue","SchM_Exit_NvM_EaServiceProcessQueue"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_Init"
	.wrcm.nstrlist "calls", "NvM_ConsistencyCheck","NvM_QueInitQueue"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ConsistencyCheck"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_CheckCrcValueSynch"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateSingleBlockOperationDone"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "NvM_CallSingleBlockCallback"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateInvalidateBlockProgress"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Ea_GetJobResult","NvM_Call_Dem_ReportErrorStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateInvalidateBlockStart"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Ea_InvalidateBlock","NvM_Call_Dem_ReportErrorStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateInvalidateBlockInit"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateEraseBlockInProgress"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Ea_GetJobResult","NvM_Call_Dem_ReportErrorStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateEraseBlockStart"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Ea_EraseImmediateBlock","NvM_Call_Dem_ReportErrorStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateEraseBlockInit"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateWriteBlockWriting"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_ProcessWritingNvBlockStates","NvM_SetAdminBlockStatusAfterWrite"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_SetAdminBlockStatusAfterWrite"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateWriteBlockInit"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateRestoreBlockValidate"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_ValidateCrc"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateRestoreBlockDefaults"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_RestoreDefaultData"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateReadBlockValidate"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_ValidateCrc"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateReadBlockReading"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus","NvM_ProcessReadingNvBlockStates","NvM_RestoreDefaultData"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateReadBlockInit"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateMultiBlockOperationDone"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "Ea_SetMode","NvM_CallMultiBlockCallback"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateValidateAllOperationDone"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateValidateAllValidate"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_CallSingleBlockCallback","NvM_ProcessValidateStates"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ProcessValidateStates"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_ActBlockUsingRamMirror","NvM_ActBlockValidateCheckCrcRAM","NvM_ActBlockValidateCheckCrcRAMMirror","NvM_ActBlockValidateInit"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockValidateCheckCrcRAMMirror"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_ValidateCrc"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockValidateCheckCrcRAM"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_ValidateCrc"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockUsingRamMirror"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockValidateInit"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateValidateAllSelectBlocks"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_CallSingleBlockCallback"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateValidateAllInit"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateWriteAllCanceled"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "Ea_SetMode","NvM_CallMultiBlockCallback"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateWriteAllWriting"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_CallSingleBlockCallback","NvM_Call_Dem_ReportErrorStatus","NvM_ProcessWritingNvBlockStates"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ProcessWritingNvBlockStates"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_ActBlockNvWriteInProgress","NvM_ActBlockNvWriteInit","NvM_ActBlockNvWritePreInit","NvM_ActBlockNvWriteProcessErr","NvM_ActBlockNvWriteStartWrite","NvM_ActBlockNvWriteValidate","NvM_ActBlockNvWriteVerification","NvM_ActBlockNvWriteVerifyInProgress"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvWriteStartWrite"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Ea_Write"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvWriteProcessErr"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_IsDem_EventIdConfigured"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvWriteValidate"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_ValidateCrc"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvWriteInProgress"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Ea_GetJobResult"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvWriteVerifyInProgress"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Ea_GetJobResult","NvM_ActBlockNvCompareData","NvM_Call_Dem_ReportErrorStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvCompareData"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvWriteVerification"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Ea_Read","NvM_Call_Dem_ReportErrorStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvWritePreInit"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "NvM_CopyRamToRamMirror"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvWriteInit"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_MemCopy"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateWriteAllFindBlock"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus_AllPassed"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateWriteAllInit"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "Ea_SetMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateReadAllRestoreValidate"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_CallSingleBlockCallback","NvM_ValidateCrc"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateReadAllValidateDefaults"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_CallSingleBlockCallback","NvM_ValidateCrc"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateReadAllCheckDataValid"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_CallSingleBlockCallback","NvM_ValidateCrc"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateReadAllRestore"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_CallSingleBlockCallback","NvM_RestoreDefaultData"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateReadAllExtendedMethod"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_RestoreDefaultData"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_RestoreDefaultData"
	.wrcm.nstrlist "calls", "NvM_CallBlockInitCallback","NvM_MemCopy"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateReadAllStandardMethod"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_CallSingleBlockCallback","NvM_Call_Dem_ReportErrorStatus","NvM_ProcessReadingNvBlockStates"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateReadAllSelectReadMethod"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus_AllPassed"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateReadAllReadConfigId"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Ea_GetJobResult","NvM_CallSingleBlockCallback","NvM_Call_Dem_ReportErrorStatus","NvM_MemCopy","NvM_ProcessReadingNvBlockStates"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ProcessReadingNvBlockStates"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_ActBlockNvReadCheckCrc","NvM_ActBlockNvReadInProgress","NvM_ActBlockNvReadInit","NvM_ActBlockNvReadProcessErr","NvM_ActBlockNvReadRamMirror","NvM_ActBlockNvReadRomDatasetValidate","NvM_ActBlockNvReadStart"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvReadProcessErr"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_IsDem_EventIdConfigured"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvReadCheckCrc"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_IsDem_EventIdConfigured","NvM_ValidateCrc"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvReadRamMirror"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "NvM_CopyRamMirrorToRam"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvReadInProgress"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Ea_GetJobResult","NvM_ActBlockNvProcessValidRead","NvM_IsDem_EventIdConfigured"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvProcessValidRead"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus","NvM_MemCopy"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvReadRomDatasetValidate"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_ValidateCrc"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ValidateCrc"
	.wrcm.nstrlist "calls", "NvM_ValidateBlockCRC"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ValidateBlockCRC"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_CheckCrcValue","NvM_GetCrcResult"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_CheckCrcValue"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_GetCrcResult","NvM_UpdateCrc"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_UpdateCrc"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_MemCopy"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_GetCrcResult"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvReadStart"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Ea_Read","NvM_IsDem_EventIdConfigured"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActBlockNvReadInit"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_IsDem_EventIdConfigured","NvM_MemCopy"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActSubStateReadAllInit"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "Ea_SetMode","NvM_Call_Dem_ReportErrorStatus_AllPassed"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActMainStateSingleBlockOperation"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_ProcessMainMachineSubstates","NvM_QueueInsert"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ActMainStateMultiBlockOperation"
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "NvM_ProcessMainMachineSubstates"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_ProcessMainMachineSubstates"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_ActMainStateIdle"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "NvM_CallMultiBlockCallback","NvM_Call_Dem_ReportErrorStatus_AllPassed","NvM_QueGetStandardQueueElement","NvM_SelectSingleBlockOperation"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_SelectSingleBlockOperation"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_CallBlockInitCallback"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_CallMultiBlockCallback"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_CallSingleBlockCallback"
	.wrcm.nint32 "local", 1
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_CopyRamMirrorToRam"
	.wrcm.nstrlist "calls", "NvM_MemCopy"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_CopyRamToRamMirror"
	.wrcm.nstrlist "calls", "NvM_MemCopy"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_MemCopy"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_IsDem_EventIdConfigured"
	.wrcm.nstrlist "calls", "NvM_GetDem_EventIdElement"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_Call_Dem_ReportErrorStatus_AllPassed"
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_Call_Dem_ReportErrorStatus"
	.wrcm.nstrlist "calls", "Dem_ReportErrorStatus","NvM_GetDem_EventIdElement"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_GetDem_EventIdElement"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\NvM.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\NvM.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\NvM.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\NvM.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\NvM.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\NvM.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MEM\NvM\ssc\make\..\src\NvM.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
