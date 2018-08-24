#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Dcm_Dsp_Roe.c"
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
# VSTAR_FUNC_STATIC FUNC(void, DCM_CODE) QueueRemove(uint8 RoeEventId)
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dcm\\ssc\\make\\..\\src\\Dcm_Dsp_Roe.c"
        .d2line         812,40
#$$ld
.L788:

#$$bf	QueueRemove,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
QueueRemove:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# RoeEventId=r31 RoeEventId=r3
	.d2prologue_end
# {
#    CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
	.d2line		814
.Llo2:
	lis		r3,(Dcm_LCfg+108)@ha
.Llo3:
	lwz		r30,(Dcm_LCfg+108)@l(r3)		# pLcfgRoe=r30
.Llo7:
	mr		r30,r30		# pLcfgRoe=r30 pLcfgRoe=r30
#    CONSTP2VAR(Dcm_Cfg_RoeEventStatusType, AUTOMATIC, DCM_APPL_DATA) pEventStatus = &pLcfgRoe->p_event_status[RoeEventId];
	.d2line		815
	lwz		r29,20(r30)		# pLcfgRoe=r30
	rlwinm		r3,r31,3,21,28		# RoeEventId=r31
	se_add		r3,r29
.Llo9:
	mr		r29,r3		# pEventStatus=r29 pEventStatus=r3
# 
#    SchM_Enter_Dcm_EaRoeQueue();
	.d2line		817
	bl		SchM_Enter_Dcm_EaRoeQueue
# 
#    if (RoeStatus.queue_read == RoeEventId)
	.d2line		819
.Llo10:
	lis		r3,(RoeStatus+1)@ha
	lbz		r0,(RoeStatus+1)@l(r3)
	rlwinm		r3,r31,0,24,31		# RoeEventId=r31
	se_cmp		r0,r3
	bc		0,2,.L594	# ne
#    {
#       RoeStatus.queue_read = pEventStatus->queue_next;
	.d2line		821
.Llo11:
	lbz		r0,4(r29)		# pEventStatus=r29
	lis		r3,(RoeStatus+1)@ha
	stb		r0,(RoeStatus+1)@l(r3)
.L594:
#    }
# 
#    if (RoeStatus.queue_write == RoeEventId)
	.d2line		824
.Llo4:
	lis		r3,RoeStatus@ha
	lbz		r0,RoeStatus@l(r3)
.Llo5:
	rlwinm		r31,r31,0,24,31		# RoeEventId=r31 RoeEventId=r31
	se_cmp		r0,r31		# RoeEventId=r31
	bc		0,2,.L595	# ne
#    {
#       RoeStatus.queue_write = pEventStatus->queue_previous;
	.d2line		826
.Llo6:
	lbz		r0,5(r29)		# pEventStatus=r29
	lis		r3,RoeStatus@ha
	e_add16i		r3,r3,RoeStatus@l
	stb		r0,0(r3)
.L595:
#    }
# 
#    /* Detach event from queue */
#    if (pEventStatus->queue_previous != pLcfgRoe->num_event)
	.d2line		830
	lbz		r0,5(r29)		# pEventStatus=r29
	lbz		r3,1(r30)		# pLcfgRoe=r30
	se_cmp		r0,r3
	bc		1,2,.L596	# eq
#    {
#       pLcfgRoe->p_event_status[pEventStatus->queue_previous].queue_next = pEventStatus->queue_next;
	.d2line		832
	lbz		r0,4(r29)		# pEventStatus=r29
	lwz		r4,20(r30)		# pLcfgRoe=r30
	lbz		r3,5(r29)		# pEventStatus=r29
	rlwinm		r3,r3,3,21,28
	se_add		r3,r4
	stb		r0,4(r3)
.L596:
#    }
# 
#    if (pEventStatus->queue_next != pLcfgRoe->num_event)
	.d2line		835
	lbz		r0,4(r29)		# pEventStatus=r29
	lbz		r3,1(r30)		# pLcfgRoe=r30
	se_cmp		r0,r3
	bc		1,2,.L597	# eq
#    {
#       pLcfgRoe->p_event_status[pEventStatus->queue_next].queue_previous = pEventStatus->queue_previous;
	.d2line		837
	lbz		r0,5(r29)		# pEventStatus=r29
	lwz		r4,20(r30)		# pLcfgRoe=r30
	lbz		r3,4(r29)		# pEventStatus=r29
	rlwinm		r3,r3,3,21,28
	se_add		r3,r4
	stb		r0,5(r3)
.L597:
#    }
# 
#    pEventStatus->queue_next = pLcfgRoe->num_event;
	.d2line		840
	lbz		r0,1(r30)		# pLcfgRoe=r30
	stb		r0,4(r29)		# pEventStatus=r29
#    pEventStatus->queue_previous = pLcfgRoe->num_event;
	.d2line		841
	lbz		r0,1(r30)		# pLcfgRoe=r30
	stb		r0,5(r29)		# pEventStatus=r29
# 
#    SchM_Exit_Dcm_EaRoeQueue();
	.d2line		843
	bl		SchM_Exit_Dcm_EaRoeQueue
# }
	.d2line		844
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo8:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L789:
	.type		QueueRemove,@function
	.size		QueueRemove,.-QueueRemove
# Number of nodes = 136

# Allocations for QueueRemove
#	?a4		RoeEventId
#	?a5		pLcfgRoe
#	?a6		pEventStatus
# static FUNC(void, DCM_CODE) ChangeEventState(uint8 RoeEventId, Dcm_Roe_EventStateType State)
	.align		1
	.section	.text_vle
        .d2line         645,29
#$$ld
.L810:

#$$bf	ChangeEventState,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
ChangeEventState:
.Llo12:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
.Llo31:
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)		# pEventStatus=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# RoeEventId=r31 RoeEventId=r3
.Llo13:
	mr		r30,r4		# State=r30 State=r4
	.d2prologue_end
# {
#    CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
	.d2line		647
.Llo14:
	lis		r3,(Dcm_LCfg+108)@ha		# pEventStatus=r3
	lwz		r29,(Dcm_LCfg+108)@l(r3)		# pLcfgRoe=r29 pEventStatus=r3
.Llo25:
	mr		r29,r29		# pLcfgRoe=r29 pLcfgRoe=r29
#    CONSTP2CONST(Dcm_Cfg_RoeEventType, AUTOMATIC, DCM_APPL_CONST) pLcfgEvent = &pLcfgRoe->p_event_cfg[RoeEventId];
	.d2line		648
	lwz		r28,8(r29)		# pLcfgRoe=r29
	rlwinm		r0,r31,3,21,28		# pEventStatus=r0 RoeEventId=r31
	se_add		r28,r0		# pEventStatus=r0
.Llo26:
	mr		r28,r28		# pLcfgEvent=r28 pLcfgEvent=r28
#    CONSTP2VAR(Dcm_Cfg_RoeEventStatusType, AUTOMATIC, DCM_APPL_DATA) pEventStatus = &pLcfgRoe->p_event_status[RoeEventId];
	.d2line		649
	lwz		r3,20(r29)		# pEventStatus=r3 pLcfgRoe=r29
	se_add		r0,r3		# pEventStatus=r0 pEventStatus=r0 pEventStatus=r3
	mr		r3,r0		# pEventStatus=r3 pEventStatus=r0
#    CONSTP2VAR(Dcm_Roe_EventStateType, AUTOMATIC, DCM_APPL_DATA) pEventState = &pEventStatus->state;
	.d2line		650
.Llo32:
	mr		r0,r3		# pEventState=r0 pEventState=r3
#    CONST(Dcm_Roe_EventStateType, AUTOMATIC) oldState = *pEventState;
	.d2line		651
.Llo33:
	lwz		r27,0(r3)		# oldState=r27 pEventStatus=r3
	mr		r27,r27		# oldState=r27 oldState=r27
# 
#    /* Internal state and queue shall be handled before informing state change to SchM and Dem, to always have correct status */
#    *pEventState = State;
	.d2line		654
	stw		r30,0(r3)		# pEventStatus=r3 State=r30
# 
#    if (((oldState == DCM_ROE_STARTED) || (oldState == DCM_ROE_PAUSED)) &&
	.d2line		656
	se_cmpi		r27,2		# oldState=r27
	bc		1,2,.L566	# eq
.Llo18:
	se_cmpi		r27,3		# oldState=r27
.Llo19:
	bc		0,2,.L555	# ne
.L566:
	se_cmpi		r30,1		# State=r30
	bc		1,2,.L567	# eq
	se_cmpi		r30,0		# State=r30
	bc		0,2,.L555	# ne
.L567:
#       ((State == DCM_ROE_STOPPED) || (State == DCM_ROE_CLEARED)))
#    {
#       /* [SWS_Dcm_00925] */
#       QueueRemove(RoeEventId);
	.d2line		660
	mr		r3,r31		# RoeEventId=r3 RoeEventId=r31
	bl		QueueRemove
.L555:
#    }
# 
#    if (oldState != State)
	.d2line		663
	se_cmp		r27,r30		# oldState=r27 State=r30
	bc		1,2,.L556	# eq
#    {
#       /* [VSTAR_Dcm_00036] */
#       switch (State)
	.d2line		666
	mr.		r6,r30		# State=r6 State=?a5
	bc		1,2,.L559	# eq
	se_cmpi		r6,2		# State=r6
	bc		1,2,.L557	# eq
	b		.L560
.L557:
#       {
#          case DCM_ROE_STARTED:
#          {
#             /*
#              * MISRA-C:2004 RULE 16.10 VIOLATION:
#              * If a function returns error information, then that error information shall be tested.
#              * The return value of the switch is discarded since the DCM has
#              * no possibilities for error handling at this point.
#              */
#             (void)pLcfgEvent->p_schm_mode_switch(Dcm_ResponseOnEvent_EVENT_STARTED);
	.d2line		676
	lwz		r0,4(r28)		# pEventStatus=r0 pLcfgEvent=r28
	mtspr		ctr,r0		# pEventStatus=ctr
	lis		r3,Dcm_ResponseOnEvent_EVENT_STARTED@ha		# pEventStatus=r3
.Llo34:
	lbz		r3,Dcm_ResponseOnEvent_EVENT_STARTED@l(r3)		# pEventStatus=r3 pEventStatus=r3
.Llo35:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo27:
	b		.L556
.L559:
#             break;
#          }
#          case DCM_ROE_CLEARED:
#          {
#             /*
#              * MISRA-C:2004 RULE 16.10 VIOLATION:
#              * If a function returns error information, then that error information shall be tested.
#              * The return value of the switch is discarded since the DCM has
#              * no possibilities for error handling at this point.
#              */
#             (void)pLcfgEvent->p_schm_mode_switch(Dcm_ResponseOnEvent_EVENT_CLEARED);
	.d2line		687
.Llo28:
	lwz		r0,4(r28)		# pEventStatus=r0 pLcfgEvent=r28
	mtspr		ctr,r0		# pEventStatus=ctr
	lis		r3,Dcm_ResponseOnEvent_EVENT_CLEARED@ha		# pEventStatus=r3
.Llo36:
	lbz		r3,Dcm_ResponseOnEvent_EVENT_CLEARED@l(r3)		# pEventStatus=r3 pEventStatus=r3
.Llo37:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo29:
	b		.L556
.L560:
#             break;
#          }
#          default:
#          {
#             /*
#              * DCM_ROE_STOPPED or DCM_ROE_PAUSED
#              *
#              * MISRA-C:2004 RULE 16.10 VIOLATION:
#              * If a function returns error information, then that error information shall be tested.
#              * The return value of the switch is discarded since the DCM has
#              * no possibilities for error handling at this point.
#              */
#             (void)pLcfgEvent->p_schm_mode_switch(Dcm_ResponseOnEvent_EVENT_STOPPED);
	.d2line		700
.Llo30:
	lwz		r0,4(r28)		# pEventStatus=r0 pLcfgEvent=r28
	mtspr		ctr,r0		# pEventStatus=ctr
	lis		r3,Dcm_ResponseOnEvent_EVENT_STOPPED@ha		# pEventStatus=r3
.Llo38:
	lbz		r3,Dcm_ResponseOnEvent_EVENT_STOPPED@l(r3)		# pEventStatus=r3 pEventStatus=r3
.Llo39:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.L556:
#             break;
#          }
#       }
#    }
# 
#    if (pLcfgRoe->dtc_status_change_event == RoeEventId)
	.d2line		706
.Llo15:
	lbz		r0,0(r29)		# pEventStatus=r0 pLcfgRoe=r29
.Llo16:
	rlwinm		r31,r31,0,24,31		# RoeEventId=r31 RoeEventId=r31
	se_cmp		r0,r31		# pEventStatus=r0 RoeEventId=r31
	bc		0,2,.L554	# ne
#    {
#       if (State == DCM_ROE_STARTED)
	.d2line		708
.Llo17:
	se_cmpi		r30,2		# State=r30
	bc		0,2,.L562	# ne
#       {
#          /* [SWS_Dcm_00912] */
#          Dem_DcmControlDTCStatusChangedNotification(TRUE);
	.d2line		711
.Llo20:
	diab.li		r3,1		# RoeEventId=r3
.Llo21:
	bl		Dem_DcmControlDTCStatusChangedNotification
.Llo22:
	b		.L554
.L562:
#       }
#       else if (oldState == DCM_ROE_STARTED)
	.d2line		713
.Llo23:
	se_cmpi		r27,2		# oldState=r27
	bc		0,2,.L554	# ne
#       {
#          /* [SWS_Dcm_00913] */
#          Dem_DcmControlDTCStatusChangedNotification(FALSE);
	.d2line		716
.Llo40:
	diab.li		r3,0		# RoeEventId=r3
	bl		Dem_DcmControlDTCStatusChangedNotification
.L554:
#       }
#       else
#       {
#          /* Do nothing */
#       }
#    }
# }
	.d2line		723
	.d2epilogue_begin
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)		# pEventStatus=r0
	mtspr		lr,r0		# pEventStatus=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo24:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L811:
	.type		ChangeEventState,@function
	.size		ChangeEventState,.-ChangeEventState
# Number of nodes = 113

# Allocations for ChangeEventState
#	?a4		RoeEventId
#	?a5		State
#	?a6		pLcfgRoe
#	?a7		pLcfgEvent
#	?a8		pEventStatus
#	?a9		pEventState
#	?a10		oldState
# FUNC(void, DCM_CODE) Dcm_DspRoe_Init(void)
	.align		2
	.section	.text_vle
        .d2line         359,22
#$$ld
.L837:

#$$bf	Dcm_DspRoe_Init,interprocedural,rasave,nostackparams
	.globl		Dcm_DspRoe_Init
	.d2_cfa_start __cie
Dcm_DspRoe_Init:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
	.d2line		361
	lis		r3,(Dcm_LCfg+108)@ha
	lwz		r31,(Dcm_LCfg+108)@l(r3)
.Llo41:
	mr		r31,r31		# pLcfgRoe=r31 pLcfgRoe=r31
#    uint8 eventId;
#    
#    boolean nvmBlockDirty = Dcm_NvMRoeInit();
	.d2line		364
	bl		Dcm_NvMRoeInit
.Llo51:
	mr		r29,r3		# nvmBlockDirty=r29 nvmBlockDirty=r3
# 
#    for (eventId = (uint8)0U; eventId < pLcfgRoe->num_event; eventId++)
	.d2line		366
	diab.li		r30,0		# eventId=r30
.L468:
.Llo43:
	rlwinm		r0,r30,0,24,31		# eventId=r30
.Llo52:
	lbz		r3,1(r31)		# eventId=r3 pLcfgRoe=r31
	se_cmp		r0,r3		# eventId=r3
	bc		0,0,.L470	# ge
	.section	.text_vle
.L847:
#    {
#       CONSTP2VAR(Dcm_Cfg_RoeEventStatusType, AUTOMATIC, DCM_APPL_DATA) pEventStatus = &pLcfgRoe->p_event_status[eventId];
	.d2line		368
	lwz		r3,20(r31)		# pEventStatus=r3 pLcfgRoe=r31
.Llo53:
	rlwinm		r0,r30,3,21,28		# eventId=r30
	se_add		r3,r0		# pEventStatus=r3 pEventStatus=r3
	mr		r3,r3		# pEventStatus=r3 pEventStatus=r3
#       CONSTP2CONST(Dcm_Cfg_RoeEventType, AUTOMATIC, DCM_APPL_CONST) pEventCfg = &pLcfgRoe->p_event_cfg[eventId];
	.d2line		369
	lwz		r4,8(r31)		# pEventCfg=r4 pLcfgRoe=r31
.Llo55:
	se_add		r4,r0		# pEventCfg=r4 pEventCfg=r4
	mr		r4,r4		# pEventCfg=r4 pEventCfg=r4
#       CONSTP2VAR(Dcm_Cfg_RoeNvmEventStatusType, AUTOMATIC, DCM_APPL_DATA) pNvmEventStatus = &pLcfgRoe->p_nvm_event_status[eventId];
	.d2line		370
	lwz		r28,24(r31)		# pNvmEventStatus=r28 pLcfgRoe=r31
.Llo59:
	se_add		r0,r28		# pNvmEventStatus=r28
	mr		r28,r0		# pNvmEventStatus=r28 pNvmEventStatus=r0
# 
#       pEventStatus->queue_next = pLcfgRoe->num_event;
	.d2line		372
	lbz		r0,1(r31)		# pLcfgRoe=r31
	stb		r0,4(r3)		# pEventStatus=r3
#       pEventStatus->queue_previous = pLcfgRoe->num_event;
	.d2line		373
	lbz		r0,1(r31)		# pLcfgRoe=r31
	stb		r0,5(r3)		# pEventStatus=r3
#       
#       /* [SWS_Dcm_00872] */
#       pEventStatus->state = DCM_ROE_CLEARED;
	.d2line		376
	diab.li		r0,0
	stw		r0,0(r3)		# pEventStatus=r3
#       
#       if (pNvmEventStatus->stored_state != DCM_ROE_CLEARED)
	.d2line		378
	lwz		r0,0(r28)		# pNvmEventStatus=r28
	se_cmpi		r0,0
	bc		1,2,.L471	# eq
#       {
#          /* [SWS_Dcm_00897] [SWS_Dcm_00889] [SWS_Dcm_00890] [SWS_Dcm_00965] */
#          ChangeEventState(eventId, pNvmEventStatus->stored_state);
	.d2line		381
.Llo54:
	lwz		r4,0(r28)		# pEventCfg=r4 pNvmEventStatus=r28
	mr		r3,r30		# eventId=r3 eventId=r30
	bl		ChangeEventState
#          
#          if((pNvmEventStatus->stored_state == DCM_ROE_STARTED) &&
	.d2line		383
	lwz		r0,0(r28)		# pNvmEventStatus=r28
	se_cmpi		r0,2
	bc		0,2,.L473	# ne
	lbz		r0,4(r28)		# pNvmEventStatus=r28
	se_cmpi		r0,4
	bc		0,2,.L473	# ne
#             (pNvmEventStatus->event_window_time == DCM_ROE_EVENT_WINDOW_CURRENT_AND_FOLLOWING_CYCLE))
#          {
#             /* [SWS_Dcm_00900] */
#             pNvmEventStatus->stored_state = DCM_ROE_CLEARED;
	.d2line		387
	diab.li		r0,0
	stw		r0,0(r28)		# pNvmEventStatus=r28
#             nvmBlockDirty = TRUE;
	.d2line		388
	diab.li		r29,1		# nvmBlockDirty=r29
	b		.L473
.L471:
#          }
#       }
#       else if (pEventCfg->initial_event_state_stopped)
	.d2line		391
.Llo56:
	lbz		r0,0(r4)		# pEventCfg=r4
	se_cmpi		r0,0
	bc		1,2,.L473	# eq
#       {
#          /* [SWS_Dcm_00954] */
#          pNvmEventStatus->event_window_time = DCM_ROE_EVENT_WINDOW_INFINITE;
	.d2line		394
.Llo57:
	diab.li		r0,2
	stb		r0,4(r28)		# pNvmEventStatus=r28
#          pNvmEventStatus->stored_state = DCM_ROE_STOPPED;
	.d2line		395
	diab.li		r29,1		# nvmBlockDirty=r29
	stw		r29,0(r28)		# pNvmEventStatus=r28 nvmBlockDirty=r29
#          nvmBlockDirty = TRUE;
# 
#          /* [SWS_Dcm_00951] */
#          ChangeEventState(eventId, DCM_ROE_STOPPED);
	.d2line		399
	mr		r3,r30		# eventId=r3 eventId=r30
	diab.li		r4,1		# pEventCfg=r4
	bl		ChangeEventState
.L473:
	.section	.text_vle
.L848:
#       }
#       else
#       {
#          /* Do nothing */
#       }
#    }
	.d2line		405
.Llo60:
	diab.addi		r0,r30,1		# eventId=r30
	se_addi		r30,1		# eventId=r30 eventId=r30
	b		.L468
.L470:
# 
#    if (nvmBlockDirty)
	.d2line		407
	rlwinm		r29,r29,0,24,31		# nvmBlockDirty=r29 nvmBlockDirty=r29
	se_cmpi		r29,0		# nvmBlockDirty=r29
	bc		1,2,.L476	# eq
#    {
#       Dcm_NvMRoeBlockChanged();
	.d2line		409
.Llo44:
	bl		Dcm_NvMRoeBlockChanged
.L476:
#    }
# 
#    RoeStatus.queue_read = pLcfgRoe->num_event;
	.d2line		412
	lbz		r0,1(r31)		# pLcfgRoe=r31
	lis		r3,(RoeStatus+1)@ha		# eventId=r3
.Llo45:
	stb		r0,(RoeStatus+1)@l(r3)		# eventId=r3
#    RoeStatus.queue_write = pLcfgRoe->num_event;
	.d2line		413
	lbz		r0,1(r31)		# pLcfgRoe=r31
	lis		r3,RoeStatus@ha		# eventId=r3
	e_add16i		r3,r3,RoeStatus@l		# eventId=r3 eventId=r3
	stb		r0,0(r3)		# eventId=r3
#    RoeStatus.service_to_respond_to_event = pLcfgRoe->num_event;
	.d2line		414
	lbz		r0,1(r31)		# pLcfgRoe=r31
	lis		r3,(RoeStatus+3)@ha		# eventId=r3
	stb		r0,(RoeStatus+3)@l(r3)		# eventId=r3
#    RoeStatus.wait_confirmation = FALSE;
	.d2line		415
	diab.li		r0,0
	lis		r3,(RoeStatus+2)@ha		# eventId=r3
	stb		r0,(RoeStatus+2)@l(r3)		# eventId=r3
# 
#    TimerStop(RoeStatus.inter_msg_timer);
	.d2line		417
	bl		SchM_Enter_Dcm_EaTimers
.Llo46:
	diab.li		r0,65535
	lis		r3,(RoeStatus+4)@ha		# eventId=r3
.Llo47:
	sth		r0,(RoeStatus+4)@l(r3)		# eventId=r3
	bl		SchM_Exit_Dcm_EaTimers
#    RoeStatus.inter_msg_timer_elapsed = TRUE;
	.d2line		418
.Llo48:
	diab.li		r3,1		# eventId=r3
.Llo49:
	lis		r4,(RoeStatus+6)@ha		# pEventCfg=r4
.Llo58:
	stb		r3,(RoeStatus+6)@l(r4)		# pEventCfg=r4 eventId=r3
# }
	.d2line		419
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo42:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo50:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L838:
	.type		Dcm_DspRoe_Init,@function
	.size		Dcm_DspRoe_Init,.-Dcm_DspRoe_Init
# Number of nodes = 195

# Allocations for Dcm_DspRoe_Init
#	?a4		pLcfgRoe
#	?a5		eventId
#	?a6		nvmBlockDirty
#	?a7		pEventStatus
#	?a8		pEventCfg
#	?a9		pNvmEventStatus
# FUNC(void, DCM_CODE) Dcm_DspRoe_MainFunction(void)
	.align		2
	.section	.text_vle
        .d2line         424,22
#$$ld
.L863:

#$$bf	Dcm_DspRoe_MainFunction,interprocedural,rasave,nostackparams
	.globl		Dcm_DspRoe_MainFunction
	.d2_cfa_start __cie
Dcm_DspRoe_MainFunction:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    TimerProcess(RoeStatus.inter_msg_timer);
	.d2line		426
	bl		SchM_Enter_Dcm_EaTimers
	lis		r3,(RoeStatus+4)@ha
	lhz		r0,(RoeStatus+4)@l(r3)
	e_cmphl16i	r0,65535
	diab.li		r3,1
	isel		r3,r3,r0,2
.L488:
	diab.li		r0,0
	isel		r0,r3,r0,2
.L489:
	se_cmpi		r0,0
	bc		0,2,.L485	# ne
	lis		r3,(RoeStatus+4)@ha
	lhz		r0,(RoeStatus+4)@l(r3)
	e_cmphl16i	r0,0
	diab.li		r3,1
	isel		r3,r3,r0,2
.L490:
	diab.li		r0,0
	isel		r0,r3,r0,2
.L491:
	se_cmpi		r0,0
	bc		0,2,.L485	# ne
	lis		r3,(RoeStatus+4)@ha
	lhz		r0,(RoeStatus+4)@l(r3)
	diab.li		r4,65535
	se_add		r0,r4
	sth		r0,(RoeStatus+4)@l(r3)
.L485:
	bl		SchM_Exit_Dcm_EaTimers
# 
#    if (TimerElapsed(RoeStatus.inter_msg_timer))
	.d2line		428
	lis		r3,(RoeStatus+4)@ha
	lhz		r0,(RoeStatus+4)@l(r3)
	e_cmphl16i	r0,0
	diab.li		r3,1
	isel		r3,r3,r0,2
.L492:
	diab.li		r0,0
	isel		r0,r3,r0,2
.L493:
	se_cmpi		r0,0
	bc		1,2,.L483	# eq
#    {
#       TimerStop(RoeStatus.inter_msg_timer);
	.d2line		430
	bl		SchM_Enter_Dcm_EaTimers
	diab.li		r0,65535
	lis		r3,(RoeStatus+4)@ha
	sth		r0,(RoeStatus+4)@l(r3)
	bl		SchM_Exit_Dcm_EaTimers
#       RoeStatus.inter_msg_timer_elapsed = TRUE;
	.d2line		431
	diab.li		r0,1
	lis		r3,(RoeStatus+6)@ha
	stb		r0,(RoeStatus+6)@l(r3)
# 
#       SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent();
	.d2line		433
	bl		SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent
.L483:
#    }
# }
	.d2line		435
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
.L864:
	.type		Dcm_DspRoe_MainFunction,@function
	.size		Dcm_DspRoe_MainFunction,.-Dcm_DspRoe_MainFunction
# Number of nodes = 84

# Allocations for Dcm_DspRoe_MainFunction
#	?a4		$$33
#	?a5		$$32
#	?a6		$$31
# VSTAR_FUNC_STATIC FUNC(boolean, DCM_CODE) QueueIsEmpty(void)
	.align		1
	.section	.text_vle
        .d2line         846,43
#$$ld
.L868:

#$$bf	QueueIsEmpty,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
QueueIsEmpty:
.Llo63:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
#    boolean retVal = FALSE;
	.d2line		849
	diab.li		r30,0		# retVal=r30
	.d2line		848
	lis		r3,(Dcm_LCfg+108)@ha
	lwz		r31,(Dcm_LCfg+108)@l(r3)		# retVal=r31
.Llo61:
	mr		r31,r31		# pLcfgRoe=r31 pLcfgRoe=r31
# 
#    SchM_Enter_Dcm_EaRoeQueue();
	.d2line		851
	bl		SchM_Enter_Dcm_EaRoeQueue
# 
#    if (RoeStatus.queue_write == pLcfgRoe->num_event)
	.d2line		853
	lis		r3,RoeStatus@ha
	lbz		r0,RoeStatus@l(r3)
	lbz		r3,1(r31)		# pLcfgRoe=r31
	se_cmp		r0,r3
#    {
#       retVal = TRUE;
	.d2line		855
	diab.li		r31,1		# pLcfgRoe=r31
	.d2line		849
	isel		r31,r31,r30,2		# retVal=r31 pLcfgRoe=r31 retVal=r30
.L603:
#    }
# 
#    SchM_Exit_Dcm_EaRoeQueue();
	.d2line		858
.Llo62:
	bl		SchM_Exit_Dcm_EaRoeQueue
# 
#    return retVal;
	.d2line		860
.Llo64:
	rlwinm		r3,r31,0,24,31		# retVal=r31
# }
	.d2line		861
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo65:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L869:
	.type		QueueIsEmpty,@function
	.size		QueueIsEmpty,.-QueueIsEmpty
# Number of nodes = 29

# Allocations for QueueIsEmpty
#	?a4		pLcfgRoe
#	?a5		retVal
# FUNC(void, DCM_CODE) Dcm_DspRoe_Confirmation(boolean ProcessingFinished)
	.align		2
	.section	.text_vle
        .d2line         440,22
#$$ld
.L877:

#$$bf	Dcm_DspRoe_Confirmation,interprocedural,rasave,nostackparams
	.globl		Dcm_DspRoe_Confirmation
	.d2_cfa_start __cie
Dcm_DspRoe_Confirmation:
.Llo66:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# ProcessingFinished=r4 ProcessingFinished=r3
	.d2prologue_end
# {
#    CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
	.d2line		442
	lis		r3,(Dcm_LCfg+108)@ha
.Llo67:
	lwz		r31,(Dcm_LCfg+108)@l(r3)
.Llo70:
	mr		r31,r31		# pLcfgRoe=r31 pLcfgRoe=r31
#    
#    if (RoeStatus.wait_confirmation)
	.d2line		444
	lis		r3,(RoeStatus+2)@ha
	lbz		r0,(RoeStatus+2)@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L502	# eq
#    {
#       RoeStatus.wait_confirmation = FALSE;
	.d2line		446
	diab.li		r0,0
	lis		r3,(RoeStatus+2)@ha
	stb		r0,(RoeStatus+2)@l(r3)
# 
#       if (ProcessingFinished)
	.d2line		448
.Llo68:
	rlwinm		r4,r4,0,24,31		# ProcessingFinished=r4 ProcessingFinished=r4
	se_cmpi		r4,0		# ProcessingFinished=r4
	bc		1,2,.L504	# eq
#       {
#          QueueRemove(RoeStatus.service_to_respond_to_event);
	.d2line		450
.Llo69:
	lis		r3,(RoeStatus+3)@ha
	lbz		r3,(RoeStatus+3)@l(r3)
	bl		QueueRemove
#          RoeStatus.service_to_respond_to_event = pLcfgRoe->num_event;
	.d2line		451
	lbz		r0,1(r31)		# pLcfgRoe=r31
	lis		r3,(RoeStatus+3)@ha
	stb		r0,(RoeStatus+3)@l(r3)
# 
#          /* [SWS_Dcm_00601] */
#          TimerStart(RoeStatus.inter_msg_timer, pLcfgRoe->inter_msg_timeout);
	.d2line		454
	bl		SchM_Enter_Dcm_EaTimers
	lhz		r0,4(r31)		# pLcfgRoe=r31
	lis		r3,(RoeStatus+4)@ha
	sth		r0,(RoeStatus+4)@l(r3)
	bl		SchM_Exit_Dcm_EaTimers
#          RoeStatus.inter_msg_timer_elapsed = FALSE;
	.d2line		455
	diab.li		r0,0
	lis		r3,(RoeStatus+6)@ha
	stb		r0,(RoeStatus+6)@l(r3)
.L504:
#       }
# 
#       if (!QueueIsEmpty())
	.d2line		458
	bl		QueueIsEmpty
	e_andi.		r3,r3,255
	bc		0,2,.L502	# ne
#       {
#          SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent();
	.d2line		460
.Llo71:
	bl		SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent
.L502:
#       }
#    }
# }
	.d2line		463
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
.L878:
	.type		Dcm_DspRoe_Confirmation,@function
	.size		Dcm_DspRoe_Confirmation,.-Dcm_DspRoe_Confirmation
# Number of nodes = 73

# Allocations for Dcm_DspRoe_Confirmation
#	?a4		ProcessingFinished
#	?a5		pLcfgRoe
# FUNC(void, DCM_CODE) Dcm_DspRoe_SessionChange(Dcm_SesCtrlType OldSession, Dcm_SesCtrlType NewSession)
	.align		2
	.section	.text_vle
        .d2line         468,22
#$$ld
.L885:

#$$bf	Dcm_DspRoe_SessionChange,interprocedural,rasave,nostackparams
	.globl		Dcm_DspRoe_SessionChange
	.d2_cfa_start __cie
Dcm_DspRoe_SessionChange:
.Llo72:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# OldSession=r31 OldSession=r3
	mr		r30,r4		# NewSession=r30 NewSession=r4
	.d2prologue_end
# {
#    CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
	.d2line		470
	lis		r3,(Dcm_LCfg+108)@ha
.Llo73:
	lwz		r29,(Dcm_LCfg+108)@l(r3)
.Llo79:
	mr		r29,r29		# pLcfgRoe=r29 pLcfgRoe=r29
#    uint8 eventId;
# 
#    for (eventId = (uint8)0U; eventId < pLcfgRoe->num_event; eventId++)
	.d2line		473
	diab.li		r28,0		# eventId=r28
.L510:
.Llo74:
	rlwinm		r3,r28,0,24,31		# eventId=r3 eventId=r28
.Llo76:
	lbz		r0,1(r29)		# pLcfgRoe=r29
	se_cmp		r3,r0		# eventId=r3
	bc		0,0,.L509	# ge
	.section	.text_vle
.L895:
#    {
#       CONSTP2VAR(Dcm_Cfg_RoeEventStatusType, AUTOMATIC, DCM_APPL_DATA) pEventStatus = &pLcfgRoe->p_event_status[eventId];
	.d2line		475
	lwz		r0,20(r29)		# pLcfgRoe=r29
	rlwinm		r3,r28,3,21,28		# eventId=r3 eventId=r28
	se_add		r0,r3		# eventId=r3
.Llo80:
	mr		r3,r0		# pEventStatus=r3 pEventStatus=r0
# 
#       if ((DCM_DEFAULT_SESSION != NewSession) && (DCM_ROE_STARTED == pEventStatus->state))
	.d2line		477
	rlwinm		r4,r30,0,24,31		# NewSession=r30
	se_cmpi		r4,1
	bc		1,2,.L513	# eq
.Llo81:
	lwz		r0,0(r3)		# pEventStatus=r3
.Llo82:
	se_cmpi		r0,2
	bc		0,2,.L513	# ne
#       {
#          if (DCM_DEFAULT_SESSION == OldSession)
	.d2line		479
.Llo83:
	rlwinm		r3,r31,0,24,31		# pEventStatus=r3 OldSession=r31
.Llo84:
	se_cmpi		r3,1		# pEventStatus=r3
	bc		0,2,.L514	# ne
#          {
#             /* [SWS_Dcm_00902] */
#             ChangeEventState(eventId, DCM_ROE_PAUSED);
	.d2line		482
.Llo85:
	mr		r3,r28		# eventId=r3 eventId=r28
	diab.li		r4,3
	bl		ChangeEventState
	b		.L516
.L514:
#          }
#          else
#          {
#             /* [SWS_Dcm_00879] [SWS_Dcm_00906] */
#             ChangeEventState(eventId, DCM_ROE_STOPPED);
	.d2line		487
	mr		r3,r28		# eventId=r3 eventId=r28
	diab.li		r4,1
	bl		ChangeEventState
	b		.L516
.L513:
#          }
#       }
#       else if (DCM_ROE_PAUSED == pEventStatus->state)
	.d2line		490
.Llo86:
	lwz		r0,0(r3)		# pEventStatus=r3
	se_cmpi		r0,3
	bc		0,2,.L516	# ne
#       {
#          /* [SWS_Dcm_00902] */
#          ChangeEventState(eventId, DCM_ROE_STARTED);
	.d2line		493
.Llo87:
	mr		r3,r28		# eventId=r3 eventId=r28
	diab.li		r4,2
	bl		ChangeEventState
.L516:
	.section	.text_vle
.L896:
#       }
#       else
#       {
#          /* Do nothing */
#       }
#    }
	.d2line		499
	diab.addi		r3,r28,1		# eventId=r3 eventId=r28
	se_addi		r28,1		# eventId=r28 eventId=r28
	b		.L510
.L509:
# }
	.d2line		500
	.d2epilogue_begin
.Llo75:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo77:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo78:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L886:
	.type		Dcm_DspRoe_SessionChange,@function
	.size		Dcm_DspRoe_SessionChange,.-Dcm_DspRoe_SessionChange
# Number of nodes = 71

# Allocations for Dcm_DspRoe_SessionChange
#	?a4		OldSession
#	?a5		NewSession
#	?a6		pLcfgRoe
#	?a7		eventId
#	?a8		pEventStatus
# static FUNC(uint8, DCM_CODE) CheckEventWindowTime(CONSTP2CONST(Dcm_MsgContextType, AUTOMATIC, DCM_APPL_DATA) pMsgContext,
	.align		1
	.section	.text_vle
        .d2line         1405,30
#$$ld
.L903:

#$$bf	CheckEventWindowTime,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r29,r30,r31,cr0,lr
	.d2_cfa_start __cie
CheckEventWindowTime:
.Llo88:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo98:
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# eventWindowTime=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pMsgContext=r3 pMsgContext=r3
	mr		r4,r4		# pErrorCode=r4 pErrorCode=r4
	mr		r0,r5		# StorageBitSet=r0 StorageBitSet=r5
	.d2prologue_end
#    CONSTP2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) pErrorCode, boolean StorageBitSet)
# {
#    uint8 eventWindowTime = 0;
	.d2line		1408
.Llo99:
	diab.li		r5,0		# eventWindowTime=r5
# 
#    if (*pErrorCode == DCM_INT_NRC_POSITIVERESPONSE)
	.d2line		1410
.Llo93:
	lbz		r6,0(r4)		# pErrorCode=r4
	se_cmpi		r6,0
	bc		0,2,.L771	# ne
	.section	.text_vle
.L919:
#    {
#       CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
#       boolean eventWindowTimeFound = FALSE;
	.d2line		1413
.Llo89:
	diab.li		r7,0		# eventWindowTimeFound=r7
	.d2line		1412
.Llo103:
	lis		r5,(Dcm_LCfg+108)@ha		# eventWindowTime=r5
.Llo100:
	lwz		r6,(Dcm_LCfg+108)@l(r5)		# eventWindowTime=r5
.Llo102:
	mr		r6,r6		# pLcfgRoe=r6 pLcfgRoe=r6
#       uint8 ewtIdx;
#       eventWindowTime = pMsgContext->reqData[1];
	.d2line		1415
.Llo90:
	lwz		r3,0(r3)		# pMsgContext=r3 pMsgContext=r3
	lbz		r5,1(r3)		# eventWindowTime=r5 pMsgContext=r3
	mr		r5,r5		# eventWindowTime=r5 eventWindowTime=r5
# 
#       /* [SWS_Dcm_00895] */
#       for (ewtIdx = (uint8)0U; ewtIdx < pLcfgRoe->num_event_window_time; ewtIdx++)
	.d2line		1418
	diab.li		r3,0		# pMsgContext=r3
.L772:
.Llo91:
	rlwinm		r30,r3,0,24,31		# ewtIdx=r3
	lbz		r31,2(r6)		# pLcfgRoe=r6
	se_cmp		r30,r31
	bc		0,0,.L776	# ge
#       {
#          if (eventWindowTime == pLcfgRoe->p_event_window_times[ewtIdx].type)
	.d2line		1420
	rlwinm		r29,r5,0,24,31		# eventWindowTime=r5
	lwz		r31,12(r6)		# pLcfgRoe=r6
	rlwinm		r30,r3,1,23,30		# ewtIdx=r3
	lbzx		r31,r31,r30
	se_cmp		r29,r31
	bc		0,2,.L775	# ne
#          {
#             eventWindowTimeFound = TRUE;
	.d2line		1422
	diab.li		r7,1		# eventWindowTimeFound=r7
	b		.L776
.L775:
#             break;
#          }
#       }
	.d2line		1425
	diab.addi		r30,r3,1		# ewtIdx=r3
	se_addi		r3,1		# ewtIdx=r3 ewtIdx=r3
	b		.L772
.L776:
# 
#       if (!eventWindowTimeFound)
	.d2line		1427
	rlwinm		r7,r7,0,24,31		# eventWindowTimeFound=r7 eventWindowTimeFound=r7
	se_cmpi		r7,0		# eventWindowTimeFound=r7
	bc		0,2,.L777	# ne
#       {
#          /* [SWS_Dcm_00896] Unsupported EventWindowTime */
#          *pErrorCode = DCM_E_REQUESTOUTOFRANGE;
	.d2line		1430
.Llo94:
	diab.li		r0,49		# eventWindowTime=r0
	stb		r0,0(r4)		# pErrorCode=r4 eventWindowTime=r0
	b		.L771
.L777:
#       }
#       else if (StorageBitSet && (eventWindowTime != DCM_ROE_EVENT_WINDOW_INFINITE))
	.d2line		1432
.Llo95:
	rlwinm		r0,r0,0,24,31		# StorageBitSet=r0 StorageBitSet=r0
	se_cmpi		r0,0		# StorageBitSet=r0
	bc		1,2,.L771	# eq
.Llo96:
	rlwinm		r3,r5,0,24,31		# ewtIdx=r3 eventWindowTime=r5
.Llo104:
	se_cmpi		r3,2		# ewtIdx=r3
	bc		1,2,.L771	# eq
#       {
#          /* [SWS_Dcm_01076] */
#          *pErrorCode = DCM_E_REQUESTOUTOFRANGE;
	.d2line		1435
.Llo105:
	diab.li		r0,49		# StorageBitSet=r0
.Llo97:
	stb		r0,0(r4)		# pErrorCode=r4 StorageBitSet=r0
	.section	.text_vle
.L920:
.L771:
#       }
#       else
#       {
#          /* EventWindowTime found and valid */
#       }
#    }
#    return eventWindowTime;
	.d2line		1442
.Llo92:
	rlwinm		r3,r5,0,24,31		# ewtIdx=r3 eventWindowTime=r5
# }
	.d2line		1443
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# StorageBitSet=r0
	mtspr		lr,r0		# StorageBitSet=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo101:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L904:
	.type		CheckEventWindowTime,@function
	.size		CheckEventWindowTime,.-CheckEventWindowTime
# Number of nodes = 80

# Allocations for CheckEventWindowTime
#	?a4		pMsgContext
#	?a5		pErrorCode
#	?a6		StorageBitSet
#	?a7		eventWindowTime
#	?a8		pLcfgRoe
#	?a9		eventWindowTimeFound
#	?a10		ewtIdx
# static FUNC(void, DCM_CODE) SubFuncStop(CONSTP2VAR(Dcm_MsgContextType, AUTOMATIC, DCM_APPL_DATA) pMsgContext,
	.align		1
	.section	.text_vle
        .d2line         993,29
#$$ld
.L931:

#$$bf	SubFuncStop,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
SubFuncStop:
.Llo106:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r24,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	24,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pMsgContext=r31 pMsgContext=r3
	mr		r30,r4		# pErrorCode=r30 pErrorCode=r4
	mr		r29,r5		# StorageBitSet=r29 StorageBitSet=r5
	.d2prologue_end
#                                         CONSTP2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) pErrorCode,
#                                          boolean StorageBitSet)
# {
#    uint8 eventWindowTime;
# 
#    if (2 != pMsgContext->reqDataLen)
	.d2line		999
	lhz		r0,4(r31)		# pMsgContext=r31
	se_cmpi		r0,2
	bc		1,2,.L639	# eq
#    {
#       *pErrorCode = DCM_E_INCORRECTMESSAGELENGTHORINVALIDFORMAT;
	.d2line		1001
.Llo107:
	diab.li		r0,19
.Llo108:
	stb		r0,0(r30)		# pErrorCode=r30
.L639:
#    }
# 
#    eventWindowTime = CheckEventWindowTime(pMsgContext, pErrorCode, StorageBitSet);
	.d2line		1004
	mr		r3,r31		# pMsgContext=r3 pMsgContext=r31
	mr		r4,r30		# pErrorCode=r4 pErrorCode=r30
	mr		r5,r29		# StorageBitSet=r5 StorageBitSet=r29
	bl		CheckEventWindowTime
.Llo111:
	mr		r28,r3		# eventWindowTime=r28 eventWindowTime=r3
# 
#    if (*pErrorCode == DCM_INT_NRC_POSITIVERESPONSE)
	.d2line		1006
	lbz		r0,0(r30)		# pErrorCode=r30
	se_cmpi		r0,0
	bc		0,2,.L638	# ne
	.section	.text_vle
.L941:
#    {
#       CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
# 
#       /* Assume that all event are in state Cleared */
#       boolean AllEventCleared = TRUE;
	.d2line		1011
.Llo112:
	diab.li		r26,1		# AllEventCleared=r26
#       uint8 RoeEventId;
#       boolean nvmBlockDirty = FALSE;
	.d2line		1013
.Llo113:
	diab.li		r24,0		# nvmBlockDirty=r24
	.d2line		1008
.Llo117:
	lis		r3,(Dcm_LCfg+108)@ha		# pMsgContext=r3
	lwz		r27,(Dcm_LCfg+108)@l(r3)		# pMsgContext=r3
.Llo114:
	mr		r27,r27		# pLcfgRoe=r27 pLcfgRoe=r27
# 
#       for (RoeEventId = (uint8)0U; RoeEventId < pLcfgRoe->num_event; RoeEventId++)
	.d2line		1015
	diab.li		r25,0
.L641:
.Llo116:
	rlwinm		r0,r25,0,24,31		# RoeEventId=r25
	lbz		r3,1(r27)		# pMsgContext=r3 pLcfgRoe=r27
	se_cmp		r0,r3		# pMsgContext=r3
	bc		0,0,.L643	# ge
	.section	.text_vle
.L953:
#       {
#          CONSTP2CONST(Dcm_Cfg_RoeEventStatusType, AUTOMATIC, DCM_APPL_DATA) pEventStatus = &pLcfgRoe->p_event_status[RoeEventId];
	.d2line		1017
	lwz		r3,20(r27)		# pMsgContext=r3 pLcfgRoe=r27
	rlwinm		r0,r25,3,21,28		# RoeEventId=r25
	se_add		r3,r0		# pMsgContext=r3 pMsgContext=r3
.Llo118:
	mr		r3,r3		# pEventStatus=r3 pEventStatus=r3
#          CONSTP2VAR(Dcm_Cfg_RoeNvmEventStatusType, AUTOMATIC, DCM_APPL_DATA) pNvmEventStatus = &pLcfgRoe->p_nvm_event_status[RoeEventId];
	.d2line		1018
	lwz		r4,24(r27)		# pErrorCode=r4 pLcfgRoe=r27
	se_add		r0,r4		# pErrorCode=r4
.Llo120:
	mr		r4,r0		# pNvmEventStatus=r4 pNvmEventStatus=r0
# 
#          /* [SWS_Dcm_00885] */
#          if (pEventStatus->state != DCM_ROE_CLEARED)
	.d2line		1021
	lwz		r0,0(r3)		# pEventStatus=r3
.Llo121:
	se_cmpi		r0,0
#          {
#             AllEventCleared = FALSE;
	.d2line		1023
	diab.li		r0,0
	isel		r26,r26,r0,2		# AllEventCleared=r26 AllEventCleared=r26
.L644:
#          }
# 
#          if (StorageBitSet && (pNvmEventStatus->stored_state == DCM_ROE_STARTED))
	.d2line		1026
.Llo122:
	rlwinm		r5,r29,0,24,31		# StorageBitSet=r29
	se_cmpi		r5,0
	bc		1,2,.L645	# eq
	lwz		r0,0(r4)		# pNvmEventStatus=r4
	se_cmpi		r0,2
	bc		0,2,.L645	# ne
#          {
#             /* [SWS_Dcm_00898] Only Stop with StorageBit set will change the Nvm state */
#             pNvmEventStatus->stored_state = DCM_ROE_STOPPED;
	.d2line		1029
	diab.li		r24,1		# nvmBlockDirty=r24
	stw		r24,0(r4)		# pNvmEventStatus=r4 nvmBlockDirty=r24
#             nvmBlockDirty = TRUE;
.L645:
#          }
# 
#          if ((pEventStatus->state == DCM_ROE_STARTED) || (pEventStatus->state == DCM_ROE_PAUSED))
	.d2line		1033
	lwz		r0,0(r3)		# pEventStatus=r3
	se_cmpi		r0,2
	bc		1,2,.L650	# eq
.Llo123:
	lwz		r0,0(r3)		# pEventStatus=r3
	se_cmpi		r0,3
	bc		0,2,.L646	# ne
.L650:
#          {
#             /* [SWS_Dcm_00877] */
#             ChangeEventState(RoeEventId, DCM_ROE_STOPPED);
	.d2line		1036
.Llo119:
	mr		r3,r25		# RoeEventId=r3 RoeEventId=r25
	diab.li		r4,1		# pErrorCode=r4
	bl		ChangeEventState
.L646:
	.section	.text_vle
.L954:
#          }
# 
#          /* [SWS_Dcm_00891] Transition to Stopped is discarded */
#       }
	.d2line		1040
	diab.addi		r0,r25,1		# RoeEventId=r25
	se_addi		r25,1		# RoeEventId=r25 RoeEventId=r25
	b		.L641
.L643:
# 
#       if (nvmBlockDirty)
	.d2line		1042
	rlwinm		r24,r24,0,24,31		# nvmBlockDirty=r24 nvmBlockDirty=r24
	se_cmpi		r24,0		# nvmBlockDirty=r24
	bc		1,2,.L647	# eq
#       {
#          Dcm_NvMRoeBlockChanged();
	.d2line		1044
.Llo110:
	bl		Dcm_NvMRoeBlockChanged
.L647:
#       }
# 
#       if (AllEventCleared)
	.d2line		1047
	rlwinm		r26,r26,0,24,31		# AllEventCleared=r26 AllEventCleared=r26
	se_cmpi		r26,0		# AllEventCleared=r26
	bc		1,2,.L648	# eq
#       {
#          /* [SWS_Dcm_00885] */
#          /* All event are in state Cleared */
#          *pErrorCode = DCM_E_REQUESTSEQUENCEERROR;
	.d2line		1051
.Llo115:
	diab.li		r0,36
	stb		r0,0(r30)		# pErrorCode=r30
	b		.L638
.L648:
#       }
#       else
#       {
#          /* EventType, resData[0], is already set in Dcm_ResponseOnEvent */
#          pMsgContext->resData[1] = (uint8)0U; /* numberOfIdentifiedEvents is only applicable at the end of a finite event window */
	.d2line		1056
	diab.li		r0,0
	lwz		r3,8(r31)		# pMsgContext=r3 pMsgContext=r31
	stb		r0,1(r3)		# pMsgContext=r3
#          pMsgContext->resData[2] = eventWindowTime; /* Mirror eventWindowTime from request */
	.d2line		1057
	lwz		r3,8(r31)		# pMsgContext=r3 pMsgContext=r31
	stb		r28,2(r3)		# pMsgContext=r3 eventWindowTime=r28
# 
#          pMsgContext->resDataLen = (Dcm_MsgLenType)3U;
	.d2line		1059
	diab.li		r0,3
	sth		r0,12(r31)		# pMsgContext=r31
	.section	.text_vle
.L942:
.L638:
#       }
#    }
# }
	.d2line		1062
	.d2epilogue_begin
.Llo109:
	lmw		r24,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L932:
	.type		SubFuncStop,@function
	.size		SubFuncStop,.-SubFuncStop
# Number of nodes = 152

# Allocations for SubFuncStop
#	?a4		pMsgContext
#	?a5		pErrorCode
#	?a6		StorageBitSet
#	?a7		eventWindowTime
#	?a8		pLcfgRoe
#	?a9		AllEventCleared
#	?a10		RoeEventId
#	?a11		nvmBlockDirty
#	?a12		pEventStatus
#	?a13		pNvmEventStatus
# static FUNC(void, DCM_CODE) SubFuncStart(CONSTP2VAR(Dcm_MsgContextType, AUTOMATIC, DCM_APPL_DATA) pMsgContext,
	.align		1
	.section	.text_vle
        .d2line         1064,29
#$$ld
.L966:

#$$bf	SubFuncStart,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
SubFuncStart:
.Llo124:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
	stmw		r23,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	23,31,1,1
	stw		r0,68(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pMsgContext=r31 pMsgContext=r3
	mr		r30,r4		# pErrorCode=r30 pErrorCode=r4
	mr		r29,r5		# StorageBitSet=r29 StorageBitSet=r5
	.d2prologue_end
#                                          CONSTP2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) pErrorCode,
#                                          boolean StorageBitSet)
# {
#    uint8 eventWindowTime;
# 
#    if (2 != pMsgContext->reqDataLen)
	.d2line		1070
	lhz		r0,4(r31)		# pMsgContext=r31
	se_cmpi		r0,2
	bc		1,2,.L662	# eq
#    {
#       *pErrorCode = DCM_E_INCORRECTMESSAGELENGTHORINVALIDFORMAT;
	.d2line		1072
.Llo125:
	diab.li		r0,19
.Llo126:
	stb		r0,0(r30)		# pErrorCode=r30
.L662:
#    }
# 
#    eventWindowTime = CheckEventWindowTime(pMsgContext, pErrorCode, StorageBitSet);
	.d2line		1075
	mr		r3,r31		# pMsgContext=r3 pMsgContext=r31
	mr		r4,r30		# pErrorCode=r4 pErrorCode=r30
	mr		r5,r29		# StorageBitSet=r5 StorageBitSet=r29
	bl		CheckEventWindowTime
.Llo129:
	mr		r28,r3		# eventWindowTime=r28 eventWindowTime=r3
# 
#    if (*pErrorCode == DCM_INT_NRC_POSITIVERESPONSE)
	.d2line		1077
	lbz		r0,0(r30)		# pErrorCode=r30
	se_cmpi		r0,0
	bc		0,2,.L661	# ne
	.section	.text_vle
.L974:
#    {
#       CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
#       boolean AllEventCleared = TRUE;
	.d2line		1080
.Llo130:
	diab.li		r26,1		# AllEventCleared=r26
#       uint8 RoeEventId;
#       boolean nvmBlockDirty = FALSE;
	.d2line		1082
.Llo131:
	diab.li		r24,0		# nvmBlockDirty=r24
	.d2line		1079
.Llo135:
	lis		r3,(Dcm_LCfg+108)@ha		# pMsgContext=r3
	lwz		r27,(Dcm_LCfg+108)@l(r3)		# pMsgContext=r3
.Llo132:
	mr		r27,r27		# pLcfgRoe=r27 pLcfgRoe=r27
# 
#       for (RoeEventId = (uint8)0U; RoeEventId < pLcfgRoe->num_event; RoeEventId++)
	.d2line		1084
	diab.li		r25,0
.L664:
.Llo134:
	rlwinm		r0,r25,0,24,31		# pNvmEventStatus=r0 RoeEventId=r25
.Llo140:
	lbz		r3,1(r27)		# pMsgContext=r3 pLcfgRoe=r27
	se_cmp		r0,r3		# pNvmEventStatus=r0 pMsgContext=r3
	bc		0,0,.L666	# ge
	.section	.text_vle
.L986:
#       {
#          CONSTP2CONST(Dcm_Cfg_RoeEventStatusType, AUTOMATIC, DCM_APPL_DATA) pEventStatus = &pLcfgRoe->p_event_status[RoeEventId];
	.d2line		1086
.Llo141:
	lwz		r3,20(r27)		# pMsgContext=r3 pLcfgRoe=r27
	rlwinm		r0,r25,3,21,28		# pNvmEventStatus=r0 RoeEventId=r25
.Llo142:
	se_add		r3,r0		# pMsgContext=r3 pMsgContext=r3 pNvmEventStatus=r0
.Llo136:
	mr		r3,r3		# pEventStatus=r3 pEventStatus=r3
#          CONSTP2VAR(Dcm_Cfg_RoeNvmEventStatusType, AUTOMATIC, DCM_APPL_DATA) pNvmEventStatus = &pLcfgRoe->p_nvm_event_status[RoeEventId];
	.d2line		1087
	lwz		r23,24(r27)		# pNvmEventStatus=r23 pLcfgRoe=r27
	add		r23,r23,r0		# pNvmEventStatus=r23 pNvmEventStatus=r23 pNvmEventStatus=r0
	mr		r0,r23		# pNvmEventStatus=r0 pNvmEventStatus=r23
# 
#          /* [SWS_Dcm_00886] */
#          if (pEventStatus->state != DCM_ROE_CLEARED)
	.d2line		1090
.Llo143:
	lwz		r0,0(r3)		# pNvmEventStatus=r0 pEventStatus=r3
.Llo144:
	se_cmpi		r0,0		# pNvmEventStatus=r0
#          {
#             AllEventCleared = FALSE;
	.d2line		1092
	diab.li		r0,0		# pNvmEventStatus=r0
	isel		r26,r26,r0,2		# AllEventCleared=r26 AllEventCleared=r26 pNvmEventStatus=r0
.L667:
#          }
# 
#          if ((pEventStatus->state == DCM_ROE_STOPPED) ||
	.d2line		1095
.Llo145:
	lwz		r0,0(r3)		# pNvmEventStatus=r0 pEventStatus=r3
.Llo146:
	se_cmpi		r0,1		# pNvmEventStatus=r0
	bc		1,2,.L674	# eq
	lwz		r0,0(r3)		# pNvmEventStatus=r0 pEventStatus=r3
	se_cmpi		r0,3		# pNvmEventStatus=r0
	bc		0,2,.L668	# ne
.L674:
	.section	.text_vle
.L994:
#              (pEventStatus->state == DCM_ROE_PAUSED))
#          {
#             Dcm_SesCtrlType currentSession = DCM_DEFAULT_SESSION;
	.d2line		1098
.Llo137:
	diab.li		r0,1		# pNvmEventStatus=r0
	stb		r0,8(r1)		# pNvmEventStatus=r0
# 
#             /* [SWS_Dcm_00127] [SWS_Dcm_00128] */
#             pNvmEventStatus->rx_pdu_id = Dcm_pPbCfg->p_rx_channels[pMsgContext->dcmRxPduId].roe_pdu_id;
	.d2line		1101
	lis		r3,Dcm_pPbCfg@ha		# pEventStatus=r3
.Llo138:
	lwz		r3,Dcm_pPbCfg@l(r3)		# pEventStatus=r3 pEventStatus=r3
	lwz		r3,8(r3)		# pEventStatus=r3 pEventStatus=r3
	lhz		r0,24(r31)		# pNvmEventStatus=r0 pMsgContext=r31
	e_mulli		r0,r0,44		# pNvmEventStatus=r0 pNvmEventStatus=r0
	se_add		r3,r0		# pEventStatus=r3 pEventStatus=r3 pNvmEventStatus=r0
	lhz		r0,6(r3)		# pNvmEventStatus=r0 pEventStatus=r3
	sth		r0,6(r23)		# pNvmEventStatus=r23 pNvmEventStatus=r0
# 
#             /*
#              * MISRA-C:2004 RULE 16.10 VIOLATION:
#              * If a function returns error information, then that error information shall be tested.
#              * [SWS_Dcm_00339] : E_OK shall always be returned.
#              */
#             (void)Dcm_GetSesCtrlType(&currentSession);
	.d2line		1108
	diab.addi		r3,r1,8		# pEventStatus=r3
.Llo139:
	bl		Dcm_GetSesCtrlType
# 
#             if ((currentSession == DCM_DEFAULT_SESSION) && StorageBitSet &&
	.d2line		1110
	lbz		r0,8(r1)		# pNvmEventStatus=r0
	se_cmpi		r0,1		# pNvmEventStatus=r0
	bc		0,2,.L670	# ne
	rlwinm		r5,r29,0,24,31		# StorageBitSet=r29
	se_cmpi		r5,0
	bc		1,2,.L670	# eq
	lwz		r0,0(r23)		# pNvmEventStatus=r0 pNvmEventStatus=r23
	se_cmpi		r0,1		# pNvmEventStatus=r0
	bc		0,2,.L670	# ne
#                 (pNvmEventStatus->stored_state == DCM_ROE_STOPPED))
#             {
#                /* StorageState can only be set if DCM_ROE_EVENT_WINDOW_INFINITE.
#                 * Checked in function Dcm_ResponseOnEvent */
#                /* [SWS_Dcm_00898] */
#                pNvmEventStatus->stored_state = DCM_ROE_STARTED;
	.d2line		1116
	diab.li		r0,2		# pNvmEventStatus=r0
	stw		r0,0(r23)		# pNvmEventStatus=r23 pNvmEventStatus=r0
#                nvmBlockDirty = TRUE;
	.d2line		1117
	diab.li		r24,1		# nvmBlockDirty=r24
.L670:
#             }
#             else
#             {
#                /* [SWS_Dcm_00905] Only set Nvm state to STARTED if storageState was set, 
#                 * EventWindowTime was set up to Infinite and current session is Default session. */
#             }
# 
#             if ((pNvmEventStatus->event_window_time == DCM_ROE_EVENT_WINDOW_CURRENT_AND_FOLLOWING_CYCLE) &&
	.d2line		1125
	lbz		r0,4(r23)		# pNvmEventStatus=r0 pNvmEventStatus=r23
	se_cmpi		r0,4		# pNvmEventStatus=r0
	bc		0,2,.L671	# ne
	lbz		r0,8(r1)		# pNvmEventStatus=r0
	se_cmpi		r0,1		# pNvmEventStatus=r0
	bc		0,2,.L671	# ne
#                (currentSession == DCM_DEFAULT_SESSION))
#             {
#                /* [SWS_Dcm_00900] */
#                pNvmEventStatus->stored_state = DCM_ROE_STARTED;
	.d2line		1129
	diab.li		r0,2		# pNvmEventStatus=r0
	stw		r0,0(r23)		# pNvmEventStatus=r23 pNvmEventStatus=r0
#                nvmBlockDirty = TRUE;
	.d2line		1130
	diab.li		r24,1		# nvmBlockDirty=r24
.L671:
#             }
#             
#             /* [SWS_Dcm_00876] Start all event in STOPPED state */
#             /* [SWS_Dcm_00901] Only store state in volatile memory */
#             ChangeEventState(RoeEventId, DCM_ROE_STARTED);
	.d2line		1135
	mr		r3,r25		# RoeEventId=r3 RoeEventId=r25
	diab.li		r4,2		# pErrorCode=r4
	bl		ChangeEventState
	.section	.text_vle
.L995:
.L668:
	.section	.text_vle
.L987:
#          }
# 
#          /* [SWS_Dcm_00880] Already started events are discarded */
#       }
	.d2line		1139
.Llo147:
	diab.addi		r0,r25,1		# pNvmEventStatus=r0 RoeEventId=r25
	se_addi		r25,1		# RoeEventId=r25 RoeEventId=r25
	b		.L664
.L666:
# 
#       if (nvmBlockDirty)
	.d2line		1141
	rlwinm		r24,r24,0,24,31		# nvmBlockDirty=r24 nvmBlockDirty=r24
	se_cmpi		r24,0		# nvmBlockDirty=r24
	bc		1,2,.L672	# eq
#       {
#          Dcm_NvMRoeBlockChanged();
	.d2line		1143
.Llo128:
	bl		Dcm_NvMRoeBlockChanged
.L672:
#       }
# 
#       /* [SWS_Dcm_00886] */
#       if (AllEventCleared)
	.d2line		1147
	rlwinm		r26,r26,0,24,31		# AllEventCleared=r26 AllEventCleared=r26
	se_cmpi		r26,0		# AllEventCleared=r26
	bc		1,2,.L673	# eq
#       {
#          *pErrorCode = DCM_E_REQUESTSEQUENCEERROR;
	.d2line		1149
.Llo133:
	diab.li		r0,36		# pNvmEventStatus=r0
.Llo148:
	stb		r0,0(r30)		# pErrorCode=r30 pNvmEventStatus=r0
.L673:
#       }
# 
#       /* EventType, resData[0], is already set in Dcm_ResponseOnEvent */
#       pMsgContext->resData[1] = (uint8)0U; /* numberOfIdentifiedEvents is only applicable at the end of a finite event window */
	.d2line		1153
.Llo149:
	diab.li		r0,0		# pNvmEventStatus=r0
.Llo150:
	lwz		r3,8(r31)		# pMsgContext=r3 pMsgContext=r31
	stb		r0,1(r3)		# pMsgContext=r3 pNvmEventStatus=r0
#       pMsgContext->resData[2] = eventWindowTime; /* Event can have different eventWindowTime - echo the value from the request */
	.d2line		1154
	lwz		r3,8(r31)		# pMsgContext=r3 pMsgContext=r31
	stb		r28,2(r3)		# pMsgContext=r3 eventWindowTime=r28
# 
#       pMsgContext->resDataLen = pMsgContext->reqDataLen + 1U; /* 1 byte of numberOfIdentifiedEvents */
	.d2line		1156
	lhz		r3,4(r31)		# pMsgContext=r3 pMsgContext=r31
	se_addi		r3,1		# pMsgContext=r3 pMsgContext=r3
	sth		r3,12(r31)		# pMsgContext=r31 pMsgContext=r3
	.section	.text_vle
.L975:
.L661:
#    }
# }
	.d2line		1158
	.d2epilogue_begin
.Llo127:
	lmw		r23,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	2,10
	lwz		r0,68(r1)		# pNvmEventStatus=r0
	mtspr		lr,r0		# pNvmEventStatus=lr
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L967:
	.type		SubFuncStart,@function
	.size		SubFuncStart,.-SubFuncStart
# Number of nodes = 206

# Allocations for SubFuncStart
#	?a4		pMsgContext
#	?a5		pErrorCode
#	?a6		StorageBitSet
#	?a7		eventWindowTime
#	?a8		pLcfgRoe
#	?a9		AllEventCleared
#	?a10		RoeEventId
#	?a11		nvmBlockDirty
#	?a12		pEventStatus
#	?a13		pNvmEventStatus
#	SP,8		currentSession
# static FUNC(void, DCM_CODE) SubFuncClear(CONSTP2VAR(Dcm_MsgContextType, AUTOMATIC, DCM_APPL_DATA) pMsgContext,
	.align		1
	.section	.text_vle
        .d2line         1160,29
#$$ld
.L1001:

#$$bf	SubFuncClear,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
SubFuncClear:
.Llo151:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pMsgContext=r31 pMsgContext=r3
	mr		r30,r4		# pErrorCode=r30 pErrorCode=r4
	.d2prologue_end
#    CONSTP2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) pErrorCode)
# {
#    uint8 eventWindowTime;
# 
#    if (2 != pMsgContext->reqDataLen)
	.d2line		1165
	lhz		r0,4(r31)		# pMsgContext=r31
	se_cmpi		r0,2
	bc		1,2,.L687	# eq
#    {
#       *pErrorCode = DCM_E_INCORRECTMESSAGELENGTHORINVALIDFORMAT;
	.d2line		1167
.Llo152:
	diab.li		r0,19
.Llo153:
	stb		r0,0(r30)		# pErrorCode=r30
.L687:
#    }
# 
#    eventWindowTime = CheckEventWindowTime(pMsgContext, pErrorCode, FALSE);
	.d2line		1170
	mr		r3,r31		# pMsgContext=r3 pMsgContext=r31
	mr		r4,r30		# pErrorCode=r4 pErrorCode=r30
	diab.li		r5,0
	bl		CheckEventWindowTime
.Llo156:
	mr		r27,r3		# eventWindowTime=r27 eventWindowTime=r3
# 
#    if (*pErrorCode == DCM_INT_NRC_POSITIVERESPONSE)
	.d2line		1172
	lbz		r0,0(r30)		# pErrorCode=r30
	se_cmpi		r0,0
	bc		0,2,.L686	# ne
	.section	.text_vle
.L1008:
#    {
#       CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
#       uint8 RoeEventId;
#       boolean nvmBlockDirty = FALSE;
	.d2line		1176
.Llo155:
	diab.li		r28,0		# nvmBlockDirty=r28
	.d2line		1174
.Llo157:
	lis		r3,(Dcm_LCfg+108)@ha		# pMsgContext=r3
	lwz		r30,(Dcm_LCfg+108)@l(r3)		# pErrorCode=r30 pMsgContext=r3
.Llo158:
	mr		r30,r30		# pLcfgRoe=r30 pLcfgRoe=r30
# 
#       for (RoeEventId = (uint8)0U; RoeEventId < pLcfgRoe->num_event; RoeEventId++)
	.d2line		1178
	diab.li		r29,0
.L689:
.Llo160:
	rlwinm		r0,r29,0,24,31		# RoeEventId=r29
	lbz		r3,1(r30)		# pMsgContext=r3 pLcfgRoe=r30
	se_cmp		r0,r3		# pMsgContext=r3
	bc		0,0,.L691	# ge
	.section	.text_vle
.L1018:
#       {
#          CONSTP2VAR(Dcm_Cfg_RoeNvmEventStatusType, AUTOMATIC, DCM_APPL_DATA) pNvmEventStatus = &pLcfgRoe->p_nvm_event_status[RoeEventId];
	.d2line		1180
	lwz		r3,24(r30)		# pMsgContext=r3 pLcfgRoe=r30
	rlwinm		r0,r29,3,21,28		# RoeEventId=r29
	se_add		r0,r3		# pMsgContext=r3
.Llo161:
	mr		r3,r0		# pNvmEventStatus=r3 pNvmEventStatus=r0
# 
#          if (pNvmEventStatus->stored_state != DCM_ROE_CLEARED)
	.d2line		1182
	lwz		r0,0(r3)		# pNvmEventStatus=r3
.Llo162:
	se_cmpi		r0,0
	bc		1,2,.L692	# eq
#          {
#             /* [SWS_Dcm_00897] [SWS_Dcm_00900] */
#             pNvmEventStatus->stored_state = DCM_ROE_CLEARED;
	.d2line		1185
.Llo163:
	diab.li		r0,0
	stw		r0,0(r3)		# pNvmEventStatus=r3
#             nvmBlockDirty = TRUE;
	.d2line		1186
	diab.li		r28,1		# nvmBlockDirty=r28
.L692:
#          }
# 
#          /* [SWS_Dcm_00884] [SWS_Dcm_00875] */
#          ChangeEventState(RoeEventId, DCM_ROE_CLEARED);
	.d2line		1190
.Llo164:
	mr		r3,r29		# RoeEventId=r3 RoeEventId=r29
	diab.li		r4,0		# pErrorCode=r4
	bl		ChangeEventState
	.section	.text_vle
.L1019:
#       }
	.d2line		1191
	diab.addi		r0,r29,1		# RoeEventId=r29
	se_addi		r29,1		# RoeEventId=r29 RoeEventId=r29
	b		.L689
.L691:
# 
#       if (nvmBlockDirty)
	.d2line		1193
	rlwinm		r28,r28,0,24,31		# nvmBlockDirty=r28 nvmBlockDirty=r28
	se_cmpi		r28,0		# nvmBlockDirty=r28
	bc		1,2,.L693	# eq
#       {
#          Dcm_NvMRoeBlockChanged();
	.d2line		1195
.Llo159:
	bl		Dcm_NvMRoeBlockChanged
.L693:
#       }
# 
#       /* [SWS_Dcm_00887] Give positive response even if all event are already cleared */
# 
#       /* EventType, resData[0], is already set in Dcm_ResponseOnEvent */
#       pMsgContext->resData[1] = (uint8)0U; /* numberOfIdentifiedEvents is only applicable at the end of a finite event window */
	.d2line		1201
	diab.li		r0,0
	lwz		r3,8(r31)		# pMsgContext=r3 pMsgContext=r31
	stb		r0,1(r3)		# pMsgContext=r3
#       pMsgContext->resData[2] = eventWindowTime; /* Event can have different eventWindowTime - echo the value from the request */
	.d2line		1202
	lwz		r3,8(r31)		# pMsgContext=r3 pMsgContext=r31
	stb		r27,2(r3)		# pMsgContext=r3 eventWindowTime=r27
# 
#       pMsgContext->resDataLen = pMsgContext->reqDataLen + 1; /* 1 byte of numberOfIdentifiedEvents */
	.d2line		1204
	lhz		r3,4(r31)		# pMsgContext=r3 pMsgContext=r31
	se_addi		r3,1		# pMsgContext=r3 pMsgContext=r3
	sth		r3,12(r31)		# pMsgContext=r31 pMsgContext=r3
	.section	.text_vle
.L1009:
.L686:
#    }
# }
	.d2line		1206
	.d2epilogue_begin
.Llo154:
	lmw		r27,28(r1)		# offset r1+28  0x1c
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
.L1002:
	.type		SubFuncClear,@function
	.size		SubFuncClear,.-SubFuncClear
# Number of nodes = 114

# Allocations for SubFuncClear
#	?a4		pMsgContext
#	?a5		pErrorCode
#	?a6		eventWindowTime
#	?a7		pLcfgRoe
#	?a8		RoeEventId
#	?a9		nvmBlockDirty
#	?a10		pNvmEventStatus
# static FUNC(Dcm_MsgLenType, DCM_CODE) ServiceToRespondTo(uint8 EventId, CONSTP2VAR(uint8, AUTOMATIC, DCM_APPL_DATA) pBuffer)
	.align		1
	.section	.text_vle
        .d2line         926,39
#$$ld
.L1026:

#$$bf	ServiceToRespondTo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.d2_cfa_start __cie
ServiceToRespondTo:
.Llo165:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# EventId=r3 EventId=r3
	mr		r4,r4		# pBuffer=r4 pBuffer=r4
	.d2prologue_end
# {
#    CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
	.d2line		928
	lis		r5,(Dcm_LCfg+108)@ha		# pLcfgRoe=r5
.Llo170:
	lwz		r5,(Dcm_LCfg+108)@l(r5)		# pLcfgRoe=r5 pLcfgRoe=r5
	mr		r5,r5		# pLcfgRoe=r5 pLcfgRoe=r5
#    Dcm_MsgLenType dataSize;
# 
#    /* [SWS_Dcm_00893] Only fixed ServiceToRespondTo supported */
#    if (EventId == pLcfgRoe->dtc_status_change_event)
	.d2line		932
	rlwinm		r0,r3,0,24,31		# EventId=r3
	lbz		r6,0(r5)		# pLcfgRoe=r5
	se_cmp		r0,r6
	bc		0,2,.L618	# ne
#    {
#       /* [SWS_Dcm_00915] */
#       /* Service to respond to = 0x19 0x0E */
#       pBuffer[0] = (uint8)0x19U;
	.d2line		936
.Llo166:
	diab.li		r0,25
	stb		r0,0(r4)		# pBuffer=r4
#       pBuffer[1] = DCM_S19_SF0E_MOSTRECENTCONFIRMEDDTC;
	.d2line		937
	diab.li		r0,14
	stb		r0,1(r4)		# pBuffer=r4
#       dataSize = (Dcm_MsgLenType)2U;
	.d2line		938
	diab.li		r3,2		# dataSize=r3
.Llo171:
	b		.L619
.L618:
	.section	.text_vle
.L1040:
#    }
#    else
#    {
#       CONSTP2CONST(Dcm_Cfg_RoeEventType, AUTOMATIC, DCM_APPL_CONST) pLcfgEvent = &pLcfgRoe->p_event_cfg[EventId];
	.d2line		942
.Llo172:
	lwz		r0,8(r5)		# pLcfgRoe=r5
.Llo167:
	rlwinm		r3,r3,3,21,28		# EventId=r3 EventId=r3
	se_add		r0,r3		# EventId=r3
.Llo174:
	mr		r3,r0		# pLcfgEvent=r3 pLcfgEvent=r0
#       /* [SWS_Dcm_00921] */
#       pBuffer[0] = (uint8)0x22U;
	.d2line		944
.Llo168:
	diab.li		r0,34
.Llo175:
	stb		r0,0(r4)		# pBuffer=r4
#       SET_2BYTE_ID(&pBuffer[1], pLcfgEvent->did);
	.d2line		945
	lhz		r0,2(r3)		# pLcfgEvent=r3
	rlwinm		r0,r0,24,24,31
	stb		r0,1(r4)		# pBuffer=r4
	lhz		r0,2(r3)		# pLcfgEvent=r3
	stb		r0,2(r4)		# pBuffer=r4
#       dataSize = (Dcm_MsgLenType)3U;
	.d2line		946
	diab.li		r3,3		# dataSize=r3
	.section	.text_vle
.L1041:
.L619:
#    }
# 
#    return dataSize;
	.d2line		949
.Llo169:
	rlwinm		r3,r3,0,16,31		# dataSize=r3 dataSize=r3
# }
	.d2line		950
	.d2epilogue_begin
.Llo173:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1027:
	.type		ServiceToRespondTo,@function
	.size		ServiceToRespondTo,.-ServiceToRespondTo
# Number of nodes = 74

# Allocations for ServiceToRespondTo
#	?a4		EventId
#	?a5		pBuffer
#	?a6		pLcfgRoe
#	?a7		dataSize
#	?a8		pLcfgEvent
# static FUNC(void, DCM_CODE) SubFuncReportActivatedEvents(CONSTP2VAR(Dcm_MsgContextType, AUTOMATIC, DCM_APPL_DATA) pMsgContext,
	.align		1
	.section	.text_vle
        .d2line         1208,29
#$$ld
.L1048:

#$$bf	SubFuncReportActivatedEvents,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r28,r29,r30,r31,cr0,lr
	.d2_cfa_start __cie
SubFuncReportActivatedEvents:
.Llo176:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pMsgContext=r31 pMsgContext=r3
	mr		r30,r4		# pErrorCode=r30 pErrorCode=r4
	.d2prologue_end
#    CONSTP2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) pErrorCode)
# {
#    if (2 != pMsgContext->reqDataLen)
	.d2line		1211
	lhz		r0,4(r31)		# pMsgContext=r31
	se_cmpi		r0,2
	bc		1,2,.L701	# eq
#    {
#       *pErrorCode = DCM_E_INCORRECTMESSAGELENGTHORINVALIDFORMAT;
	.d2line		1213
.Llo177:
	diab.li		r0,19
.Llo178:
	stb		r0,0(r30)		# pErrorCode=r30
.L701:
#    }
# 
#    /*
#    * MISRA-C:2004 RULE 16.10 VIOLATION:
#    * If a function returns error information, then that error information shall be tested.
#    * Just checking the event window time, not interested in the actual value.
#    */
#    (void)CheckEventWindowTime(pMsgContext, pErrorCode, FALSE);
	.d2line		1221
	mr		r3,r31		# pMsgContext=r3 pMsgContext=r31
	mr		r4,r30		# pErrorCode=r4 pErrorCode=r30
	diab.li		r5,0
	bl		CheckEventWindowTime
# 
#    if (*pErrorCode == DCM_INT_NRC_POSITIVERESPONSE)
	.d2line		1223
	lbz		r0,0(r30)		# pErrorCode=r30
	se_cmpi		r0,0
	bc		0,2,.L700	# ne
	.section	.text_vle
.L1053:
#    {
#       CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
#       uint8 numActivatedEvents = 0U;
	.d2line		1226
.Llo180:
	diab.li		r30,0		# numActivatedEvents=r30
#       Dcm_MsgLenType offset = 2U;
	.d2line		1227
.Llo186:
	diab.li		r29,2		# offset=r29
	.d2line		1225
.Llo187:
	lis		r3,(Dcm_LCfg+108)@ha		# pMsgContext=r3
	lwz		r7,(Dcm_LCfg+108)@l(r3)		# pMsgContext=r3
.Llo185:
	mr		r7,r7		# pLcfgRoe=r7 pLcfgRoe=r7
#       uint8 RoeEventId;
# 
#       for (RoeEventId = (uint8)0U; RoeEventId < pLcfgRoe->num_event; RoeEventId++)
	.d2line		1230
	diab.li		r28,0
.L703:
.Llo192:
	rlwinm		r3,r28,0,24,31		# pMsgContext=r3 RoeEventId=r28
	lbz		r0,1(r7)		# storageBitMask=r0 pLcfgRoe=r7
.Llo202:
	se_cmp		r3,r0		# pMsgContext=r3 storageBitMask=r0
	bc		0,0,.L705	# ge
	.section	.text_vle
.L1065:
#       {
#          CONSTP2CONST(Dcm_Cfg_RoeEventStatusType, AUTOMATIC, DCM_APPL_DATA) pEventStatus = &pLcfgRoe->p_event_status[RoeEventId];
	.d2line		1232
.Llo203:
	lwz		r3,20(r7)		# pMsgContext=r3 pLcfgRoe=r7
	rlwinm		r5,r28,3,21,28		# RoeEventId=r28
	se_add		r3,r5		# pMsgContext=r3 pMsgContext=r3
.Llo193:
	mr		r3,r3		# pEventStatus=r3 pEventStatus=r3
# 
#          if (pEventStatus->state == DCM_ROE_STARTED)
	.d2line		1234
	lwz		r0,0(r3)		# storageBitMask=r0 pEventStatus=r3
.Llo204:
	se_cmpi		r0,2		# storageBitMask=r0
	bc		0,2,.L706	# ne
	.section	.text_vle
.L1071:
#          {
#             CONSTP2CONST(Dcm_Cfg_RoeNvmEventStatusType, AUTOMATIC, DCM_APPL_DATA) pNvmEventStatus = &pLcfgRoe->p_nvm_event_status[RoeEventId];
	.d2line		1236
.Llo194:
	lwz		r3,24(r7)		# pEventStatus=r3 pLcfgRoe=r7
.Llo195:
	rlwinm		r5,r28,3,21,28		# RoeEventId=r28
	se_add		r3,r5		# pEventStatus=r3 pEventStatus=r3
.Llo196:
	mr		r3,r3		# pNvmEventStatus=r3 pNvmEventStatus=r3
# 
#             /*
#              * ISO 14229       : Then eventTypeOfActiveEvent shall be an echo of the sub-function parameter of
#              *                   the request message that was issued to set-up the active event.
#              * [SWS_Dcm_00898] : If STARTED is stored in Nvm, SETUP has been called with StorageState set.
#              * [SWS_Dcm_00954] : Pre-configured events shall behave as events which have been set-up with StorageState set.
#              */
#             CONST(uint8, AUTOMATIC) storageBitMask = ((pNvmEventStatus->stored_state == DCM_ROE_STOPPED) || (pNvmEventStatus->stored_state == DCM_ROE_STARTED)) ? (uint8)0x40U : (uint8)0x00U;
	.d2line		1244
	lwz		r0,0(r3)		# storageBitMask=r0 pNvmEventStatus=r3
.Llo205:
	se_cmpi		r0,1		# storageBitMask=r0
	bc		1,2,.L712	# eq
.Llo206:
	lwz		r0,0(r3)		# storageBitMask=r0 pNvmEventStatus=r3
.Llo207:
	se_cmpi		r0,2		# storageBitMask=r0
	bc		0,2,.L710	# ne
.L712:
.Llo208:
	diab.li		r0,64		# storageBitMask=r0
.Llo209:
	b		.L711
.L710:
.Llo210:
	diab.li		r0,0		# storageBitMask=r0
.L711:
# 
#             if (RoeEventId == pLcfgRoe->dtc_status_change_event)
	.d2line		1246
.Llo211:
	rlwinm		r5,r28,0,24,31		# RoeEventId=r28
	lbz		r4,0(r7)		# pErrorCode=r4 pLcfgRoe=r7
.Llo181:
	se_cmp		r5,r4		# pErrorCode=r4
	bc		0,2,.L707	# ne
	.section	.text_vle
.L1083:
#             {
#                CONSTP2CONST(Dcm_Cfg_RoeNvmStatusType, AUTOMATIC, DCM_APPL_DATA) pNvmStatus = pLcfgRoe->p_nvm_status;
	.d2line		1248
.Llo182:
	lwz		r4,16(r7)		# pErrorCode=r4 pLcfgRoe=r7
.Llo214:
	mr		r4,r4		# pNvmStatus=r4 pNvmStatus=r4
#                pMsgContext->resData[offset] = ROE_SUB_FUNC_ON_DTC_STATUS_CHANGE | storageBitMask; /* eventTypeOfActiveEvent */
	.d2line		1249
.Llo212:
	.diab.bseti		r0,31		# storageBitMask=r0
	lwz		r5,8(r31)		# pMsgContext=r31
	rlwinm		r6,r29,0,16,31		# offset=r29
	stbux		r0,r5,r6		# storageBitMask=r0
#                pMsgContext->resData[offset + 1U] = pNvmEventStatus->event_window_time; /* eventWindowTime */
	.d2line		1250
	lbz		r0,4(r3)		# storageBitMask=r0 pNvmEventStatus=r3
	lwz		r3,8(r31)		# pNvmEventStatus=r3 pMsgContext=r31
	se_add		r3,r6		# pNvmEventStatus=r3 pNvmEventStatus=r3
	stb		r0,1(r3)		# pNvmEventStatus=r3 storageBitMask=r0
#                pMsgContext->resData[offset + 2U] = (Dcm_MsgItemType)pNvmStatus->dtc_status_mask; /* eventTypeRecord */
	.d2line		1251
	lbz		r0,0(r4)		# storageBitMask=r0 pNvmStatus=r4
	lwz		r3,8(r31)		# pNvmEventStatus=r3 pMsgContext=r31
	se_add		r6,r3		# pNvmEventStatus=r3
	stb		r0,2(r6)		# storageBitMask=r0
#                offset += (Dcm_MsgLenType)3U;
	.d2line		1252
	se_addi		r29,3		# offset=r29 offset=r29
	mr		r29,r29		# offset=r29 offset=r29
	.section	.text_vle
.L1084:
.Llo197:
	b		.L708
.L707:
	.section	.text_vle
.L1094:
#             }
#             else
#             {
#                CONSTP2CONST(Dcm_Cfg_RoeEventType, AUTOMATIC, DCM_APPL_DATA) pEventCfg = &pLcfgRoe->p_event_cfg[RoeEventId];
	.d2line		1256
.Llo198:
	lwz		r4,8(r7)		# pErrorCode=r4 pLcfgRoe=r7
.Llo183:
	rlwinm		r5,r28,3,21,28		# RoeEventId=r28
	se_add		r4,r5		# pErrorCode=r4 pErrorCode=r4
.Llo184:
	mr		r4,r4		# pEventCfg=r4 pEventCfg=r4
# 
#                pMsgContext->resData[offset] = ROE_SUB_FUNC_ON_CHANGE_OF_DID | storageBitMask; /* eventTypeOfActiveEvent */
	.d2line		1258
.Llo213:
	e_ori		r0,r0,3		# storageBitMask=r0 storageBitMask=r0
	lwz		r5,8(r31)		# pMsgContext=r31
	rlwinm		r6,r29,0,16,31		# offset=r29
	stbux		r0,r5,r6		# storageBitMask=r0
#                pMsgContext->resData[offset + 1U] = pNvmEventStatus->event_window_time; /* eventWindowTime */
	.d2line		1259
	lbz		r0,4(r3)		# storageBitMask=r0 pNvmEventStatus=r3
	lwz		r3,8(r31)		# pNvmEventStatus=r3 pMsgContext=r31
	se_add		r3,r6		# pNvmEventStatus=r3 pNvmEventStatus=r3
	stb		r0,1(r3)		# pNvmEventStatus=r3 storageBitMask=r0
#                SET_2BYTE_ID(&pMsgContext->resData[offset + 2U], pEventCfg->did); /* eventTypeRecord */
	.d2line		1260
	lhz		r0,2(r4)		# storageBitMask=r0 pEventCfg=r4
	rlwinm		r0,r0,24,24,31		# storageBitMask=r0 storageBitMask=r0
	lwz		r3,8(r31)		# pNvmEventStatus=r3 pMsgContext=r31
	se_add		r3,r6		# pNvmEventStatus=r3 pNvmEventStatus=r3
	stb		r0,2(r3)		# pNvmEventStatus=r3 storageBitMask=r0
	lhz		r0,2(r4)		# storageBitMask=r0 pEventCfg=r4
	lwz		r3,8(r31)		# pNvmEventStatus=r3 pMsgContext=r31
	se_add		r6,r3		# pNvmEventStatus=r3
	stb		r0,3(r6)		# storageBitMask=r0
#                offset += (Dcm_MsgLenType)4U;
	.d2line		1261
	se_addi		r29,4		# offset=r29 offset=r29
	mr		r29,r29		# offset=r29 offset=r29
	.section	.text_vle
.L1095:
.L708:
#             }
#             /* Set up ServiceToRespondTo */
#             offset += ServiceToRespondTo(RoeEventId, &pMsgContext->resData[offset]);
	.d2line		1264
.Llo199:
	lwz		r4,8(r31)		# pNvmStatus=r4 pMsgContext=r31
.Llo215:
	rlwinm		r3,r29,0,16,31		# pNvmEventStatus=r3 offset=r29
.Llo200:
	se_add		r4,r3		# pNvmStatus=r4 pNvmStatus=r4 pNvmEventStatus=r3
.Llo216:
	mr		r3,r28		# RoeEventId=r3 RoeEventId=r28
.Llo201:
	bl		ServiceToRespondTo
	se_add		r3,r29		# RoeEventId=r3 RoeEventId=r3 offset=r29
	mr		r29,r3		# offset=r29 offset=r3
# 
#             numActivatedEvents++;
	.d2line		1266
.Llo188:
	diab.addi		r0,r30,1		# storageBitMask=r0 numActivatedEvents=r30
.Llo189:
	se_addi		r30,1		# numActivatedEvents=r30 numActivatedEvents=r30
	.section	.text_vle
.L1072:
.L706:
	.section	.text_vle
.L1066:
#          }
#       }
	.d2line		1268
.Llo190:
	diab.addi		r3,r28,1		# pEventStatus=r3 RoeEventId=r28
.Llo191:
	se_addi		r28,1		# RoeEventId=r28 RoeEventId=r28
	b		.L703
.L705:
# 
#       /* EventType, resData[0], is already set in Dcm_ResponseOnEvent */
#       pMsgContext->resData[1] = numActivatedEvents; /* numberOfActivatedEvents */
	.d2line		1271
	lwz		r3,8(r31)		# pMsgContext=r3 pMsgContext=r31
	stb		r30,1(r3)		# pMsgContext=r3 numActivatedEvents=r30
#       pMsgContext->resDataLen = offset;
	.d2line		1272
	sth		r29,12(r31)		# pMsgContext=r31 offset=r29
	.section	.text_vle
.L1054:
.L700:
#    }
# }
	.d2line		1274
	.d2epilogue_begin
.Llo179:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# storageBitMask=r0
	mtspr		lr,r0		# storageBitMask=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1049:
	.type		SubFuncReportActivatedEvents,@function
	.size		SubFuncReportActivatedEvents,.-SubFuncReportActivatedEvents
# Number of nodes = 260

# Allocations for SubFuncReportActivatedEvents
#	?a4		pMsgContext
#	?a5		pErrorCode
#	?a6		pLcfgRoe
#	?a7		numActivatedEvents
#	?a8		offset
#	?a9		RoeEventId
#	?a10		pEventStatus
#	?a11		pNvmEventStatus
#	?a12		storageBitMask
#	?a13		pNvmStatus
#	?a14		pEventCfg
# static FUNC(void, DCM_CODE) SetupEvent(uint8 EventId, uint8 EventWindowTime, boolean StorageBitSet)
	.align		1
	.section	.text_vle
        .d2line         725,29
#$$ld
.L1102:

#$$bf	SetupEvent,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
SetupEvent:
.Llo217:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# EventWindowTime=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# EventId=r31 EventId=r3
.Llo218:
	mr		r0,r4		# EventWindowTime=r0 EventWindowTime=r4
.Llo219:
	mr		r5,r5		# StorageBitSet=r5 StorageBitSet=r5
	.d2prologue_end
# {
#    CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
	.d2line		727
	lis		r3,(Dcm_LCfg+108)@ha		# pNvmEventStatus=r3
.Llo225:
	lwz		r3,(Dcm_LCfg+108)@l(r3)		# pNvmEventStatus=r3 pNvmEventStatus=r3
.Llo223:
	mr		r3,r3		# pLcfgRoe=r3 pLcfgRoe=r3
#    CONSTP2VAR(Dcm_Cfg_RoeNvmEventStatusType, AUTOMATIC, DCM_APPL_DATA) pNvmEventStatus = &pLcfgRoe->p_nvm_event_status[EventId];
	.d2line		728
	lwz		r0,24(r3)		# EventWindowTime=r0 pLcfgRoe=r3
	rlwinm		r3,r31,3,21,28		# pLcfgRoe=r3 EventId=r31
	se_add		r0,r3		# EventWindowTime=r0 EventWindowTime=r0 pLcfgRoe=r3
.Llo226:
	mr		r3,r0		# pNvmEventStatus=r3 pNvmEventStatus=r0
# 
#    /* [SWS_Dcm_00903] */
#    pNvmEventStatus->event_window_time = EventWindowTime;
	.d2line		731
.Llo224:
	stb		r4,4(r3)		# pNvmEventStatus=r3 EventWindowTime=r4
# 
#    if (StorageBitSet)
	.d2line		733
	rlwinm		r5,r5,0,24,31		# StorageBitSet=r5 StorageBitSet=r5
	se_cmpi		r5,0		# StorageBitSet=r5
	bc		1,2,.L578	# eq
#    {
#       /* 
#        * [SWS_Dcm_00897]
#        * The initialization shall be stored until it is cleared.
#        * Thus shall a setup request without the StorageState bit not affect the NvM storage.
#        */
#       pNvmEventStatus->stored_state = DCM_ROE_STOPPED;
	.d2line		740
.Llo222:
	diab.li		r0,1		# EventWindowTime=r0
.Llo227:
	stw		r0,0(r3)		# pNvmEventStatus=r3 EventWindowTime=r0
#       Dcm_NvMRoeBlockChanged();
	.d2line		741
	bl		Dcm_NvMRoeBlockChanged
.L578:
#    }
# 
#    /* [SWS_Dcm_00873] */
#    ChangeEventState(EventId, DCM_ROE_STOPPED);
	.d2line		745
.Llo228:
	mr		r3,r31		# EventId=r3 EventId=r31
	diab.li		r4,1		# EventWindowTime=r4
.Llo221:
	bl		ChangeEventState
# }
	.d2line		746
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo220:
	lwz		r0,36(r1)		# EventWindowTime=r0
	mtspr		lr,r0		# EventWindowTime=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1103:
	.type		SetupEvent,@function
	.size		SetupEvent,.-SetupEvent
# Number of nodes = 41

# Allocations for SetupEvent
#	?a4		EventId
#	?a5		EventWindowTime
#	?a6		StorageBitSet
#	?a7		pLcfgRoe
#	?a8		pNvmEventStatus
# static FUNC(void, DCM_CODE) SubFuncOnDtcStatusChange(CONSTP2VAR(Dcm_MsgContextType, AUTOMATIC, DCM_APPL_DATA) pMsgContext,
	.align		1
	.section	.text_vle
        .d2line         1276,29
#$$ld
.L1114:

#$$bf	SubFuncOnDtcStatusChange,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
SubFuncOnDtcStatusChange:
.Llo229:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pMsgContext=r31 pMsgContext=r3
.Llo230:
	mr		r28,r4		# pErrorCode=r28 pErrorCode=r4
.Llo231:
	mr		r8,r5		# StorageBitSet=r8 StorageBitSet=r5
	.d2prologue_end
#    CONSTP2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) pErrorCode,
#    boolean StorageBitSet)
# {
#    CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
	.d2line		1280
	lis		r3,(Dcm_LCfg+108)@ha
	lwz		r29,(Dcm_LCfg+108)@l(r3)		# pLcfgRoe=r29
.Llo240:
	mr		r29,r29		# pLcfgRoe=r29 pLcfgRoe=r29
#    CONST(uint8, AUTOMATIC) eventId = pLcfgRoe->dtc_status_change_event;
	.d2line		1281
	lbz		r27,0(r29)		# pLcfgRoe=r29
.Llo242:
	mr		r27,r27		# eventId=r27 eventId=r27
#    uint8 eventWindowTime;
# 
#    if (5 != pMsgContext->reqDataLen)
	.d2line		1284
	lhz		r0,4(r31)		# pMsgContext=r31
	se_cmpi		r0,5
	bc		1,2,.L724	# eq
#    {
#       *pErrorCode = DCM_E_INCORRECTMESSAGELENGTHORINVALIDFORMAT;
	.d2line		1286
.Llo233:
	diab.li		r0,19
.Llo234:
	stb		r0,0(r28)		# pErrorCode=r28
	b		.L725
.L724:
#    }
#    else if (eventId == ROE_EVENT_UNCONFIGURED)
	.d2line		1288
	rlwinm		r3,r27,0,24,31		# eventId=r27
	cmpi		0,0,r3,255
	bc		0,2,.L726	# ne
#    {
#       *pErrorCode = DCM_E_REQUESTOUTOFRANGE;
	.d2line		1290
	diab.li		r0,49
	stb		r0,0(r28)		# pErrorCode=r28
	b		.L725
.L726:
#    }
#    else
#    {
#       eventWindowTime = CheckEventWindowTime(pMsgContext, pErrorCode, StorageBitSet);
	.d2line		1294
	mr		r3,r31		# pMsgContext=r3 pMsgContext=r31
	mr		r4,r28		# pErrorCode=r4 pErrorCode=r28
	mr		r5,r8		# StorageBitSet=r5 StorageBitSet=r8
	bl		CheckEventWindowTime
.Llo249:
	mr		r30,r3		# eventWindowTime=r30 eventWindowTime=r3
.L725:
#    }
# 
#    if (*pErrorCode == DCM_INT_NRC_POSITIVERESPONSE)
	.d2line		1297
.Llo250:
	lbz		r0,0(r28)		# pErrorCode=r28
.Llo251:
	se_cmpi		r0,0
	bc		0,2,.L723	# ne
	.section	.text_vle
.L1126:
#    {
#       CONSTP2VAR(Dcm_Cfg_RoeNvmStatusType, AUTOMATIC, DCM_APPL_DATA) pNvmStatus = pLcfgRoe->p_nvm_status;
	.d2line		1299
	lwz		r29,16(r29)		# pLcfgRoe=r29 pLcfgRoe=r29
.Llo241:
	mr		r29,r29		# pNvmStatus=r29 pNvmStatus=r29
# 
#       if ((pMsgContext->reqData[3] != DCM_UDS_READ_DTC_INFORMATION) ||
	.d2line		1301
	lwz		r3,0(r31)		# pMsgContext=r3 pMsgContext=r31
	lbz		r0,3(r3)		# pMsgContext=r3
	se_cmpi		r0,25
	bc		0,2,.L734	# ne
	lwz		r3,0(r31)		# pMsgContext=r3 pMsgContext=r31
	lbz		r0,4(r3)		# pMsgContext=r3
	se_cmpi		r0,14
	bc		1,2,.L729	# eq
.L734:
#          (pMsgContext->reqData[4] != DCM_S19_SF0E_MOSTRECENTCONFIRMEDDTC))
#       {
#          /* [VSTAR_Dcm_00033] */
#          /* Service 0x19 0x0E is the only service allowed as ServiceToRespondTo */
#          *pErrorCode = DCM_E_REQUESTOUTOFRANGE;
	.d2line		1306
	diab.li		r0,49
	stb		r0,0(r28)		# pErrorCode=r28
	b		.L723
.L729:
	.section	.text_vle
.L1134:
#       }
#       else
#       {
#          Dcm_MsgLenType i;
#          const Dcm_MsgLenType serviceToRespondToLength = (Dcm_MsgLenType)(pMsgContext->reqDataLen - 3);
	.d2line		1311
.Llo235:
	lhz		r28,4(r31)		# pErrorCode=r28 pMsgContext=r31
.Llo236:
	diab.li		r0,65533
	se_add		r0,r28		# pErrorCode=r28
.Llo254:
	mr		r28,r0		# serviceToRespondToLength=r28 serviceToRespondToLength=r0
# 
#          /* [SWS_Dcm_00952] [SWS_Dcm_00953] */
#          /* Always update the DTC status mask from the eventTypeRecord */
#          pNvmStatus->dtc_status_mask = (Dem_UdsStatusByteType)pMsgContext->reqData[2];
	.d2line		1315
.Llo255:
	lwz		r3,0(r31)		# pMsgContext=r3 pMsgContext=r31
.Llo256:
	lbz		r0,2(r3)		# pMsgContext=r3
	stb		r0,0(r29)		# pNvmStatus=r29
# 
#          /* serviceToRespondToRecord is discarded since the specific service to use is specified in [SWS_Dcm_00892] */
# 
#          SetupEvent(eventId, eventWindowTime, StorageBitSet);
	.d2line		1319
	mr		r3,r27		# eventId=r3 eventId=r27
	mr		r4,r30		# eventWindowTime=r4 eventWindowTime=r30
.Llo237:
	mr		r5,r8		# StorageBitSet=r5 StorageBitSet=r8
.Llo239:
	bl		SetupEvent
# 
#          /* Set up response */
#          /* Copy ServiceToRespondTo from request first to not overwrite the request in case of shared Rx and Tx buffers */
#          for (i = (Dcm_MsgLenType)4 + serviceToRespondToLength; i > serviceToRespondToLength; i--)
	.d2line		1323
	diab.addi		r0,r28,4		# serviceToRespondToLength=r28
	addi		r0,r28,4		# serviceToRespondToLength=r28
.L731:
.Llo243:
	rlwinm		r5,r0,0,16,31		# i=r0
	rlwinm		r3,r28,0,16,31		# eventId=r3 serviceToRespondToLength=r28
.Llo244:
	se_cmp		r5,r3		# eventId=r3
	bc		0,1,.L733	# le
#          {
#             pMsgContext->resData[i] = pMsgContext->reqData[i - (Dcm_MsgLenType)1];
	.d2line		1325
.Llo245:
	lwz		r3,0(r31)		# eventId=r3 pMsgContext=r31
.Llo246:
	rlwinm		r5,r0,0,16,31		# i=r0
	se_add		r3,r5		# eventId=r3 eventId=r3
	lbz		r4,-1(r3)		# pMsgContext=r4 eventId=r3
	lwz		r3,8(r31)		# eventId=r3 pMsgContext=r31
	stbx		r4,r3,r5		# eventId=r3 pMsgContext=r4
#          }
	.d2line		1326
	diab.li		r3,65535		# eventId=r3
.Llo247:
	se_add		r0,r3		# i=r0 i=r0 i=r3
	mr		r0,r0		# i=r0 i=r0
	b		.L731
.L733:
# 
#          /* EventType, resData[0], is already set in Dcm_ResponseOnEvent */
#          pMsgContext->resData[1] = (uint8)0U; /* numberOfIdentifiedEvents */
	.d2line		1329
.Llo252:
	diab.li		r0,0		# i=r0
.Llo253:
	lwz		r3,8(r31)		# eventId=r3 pMsgContext=r31
.Llo248:
	stb		r0,1(r3)		# eventId=r3 i=r0
#          pMsgContext->resData[2] = eventWindowTime; /* eventWindowTime only mirrored from request. The value from the Start request is the one used. */
	.d2line		1330
	lwz		r3,8(r31)		# eventId=r3 pMsgContext=r31
	stb		r30,2(r3)		# eventId=r3 eventWindowTime=r30
#          pMsgContext->resData[3] = (Dcm_MsgItemType)pNvmStatus->dtc_status_mask; /* eventTypeRecord = DTC status mask */
	.d2line		1331
	lbz		r0,0(r29)		# i=r0 pNvmStatus=r29
	lwz		r3,8(r31)		# eventId=r3 pMsgContext=r31
	stb		r0,3(r3)		# eventId=r3 i=r0
#          pMsgContext->resDataLen = pMsgContext->reqDataLen + 1; /* 1 byte of numberOfIdentifiedEvents */
	.d2line		1332
	lhz		r3,4(r31)		# eventId=r3 pMsgContext=r31
	se_addi		r3,1		# eventId=r3 eventId=r3
	sth		r3,12(r31)		# pMsgContext=r31 eventId=r3
	.section	.text_vle
.L1135:
	.section	.text_vle
.L1127:
.L723:
#       }
#    }
# }
	.d2line		1335
	.d2epilogue_begin
.Llo232:
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)		# i=r0
	mtspr		lr,r0		# i=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo238:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1115:
	.type		SubFuncOnDtcStatusChange,@function
	.size		SubFuncOnDtcStatusChange,.-SubFuncOnDtcStatusChange
# Number of nodes = 171

# Allocations for SubFuncOnDtcStatusChange
#	?a4		pMsgContext
#	?a5		pErrorCode
#	?a6		StorageBitSet
#	?a7		pLcfgRoe
#	?a8		eventId
#	?a9		eventWindowTime
#	?a10		pNvmStatus
#	?a11		i
#	?a12		serviceToRespondToLength
# static FUNC(void, DCM_CODE) SubFuncOnChangeOfDid(CONSTP2VAR(Dcm_MsgContextType, AUTOMATIC, DCM_APPL_DATA) pMsgContext,
	.align		1
	.section	.text_vle
        .d2line         1337,29
#$$ld
.L1145:

#$$bf	SubFuncOnChangeOfDid,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
SubFuncOnChangeOfDid:
.Llo257:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pMsgContext=r31 pMsgContext=r3
	mr		r28,r4		# pErrorCode=r28 pErrorCode=r4
	mr		r8,r5		# StorageBitSet=r8 StorageBitSet=r5
	.d2prologue_end
#    CONSTP2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) pErrorCode,
#    boolean StorageBitSet)
# {
#    uint8 eventWindowTime;
# 
#    if (7 != pMsgContext->reqDataLen)
	.d2line		1343
	lhz		r0,4(r31)		# pMsgContext=r31
	se_cmpi		r0,7
	bc		1,2,.L744	# eq
#    {
#       *pErrorCode = DCM_E_INCORRECTMESSAGELENGTHORINVALIDFORMAT;
	.d2line		1345
.Llo258:
	diab.li		r0,19
.Llo259:
	stb		r0,0(r28)		# pErrorCode=r28
.L744:
#    }
# 
#    eventWindowTime = CheckEventWindowTime(pMsgContext, pErrorCode, StorageBitSet);
	.d2line		1348
	mr		r3,r31		# pMsgContext=r3 pMsgContext=r31
	mr		r4,r28		# pErrorCode=r4 pErrorCode=r28
	mr		r5,r8		# StorageBitSet=r5 StorageBitSet=r8
	bl		CheckEventWindowTime
.Llo265:
	mr		r30,r3		# eventWindowTime=r30 eventWindowTime=r3
# 
#    if (*pErrorCode == DCM_INT_NRC_POSITIVERESPONSE)
	.d2line		1350
	lbz		r0,0(r28)		# pErrorCode=r28
	se_cmpi		r0,0
	bc		0,2,.L743	# ne
	.section	.text_vle
.L1153:
#    {
#       CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
	.d2line		1352
.Llo266:
	lis		r3,(Dcm_LCfg+108)@ha		# pMsgContext=r3
.Llo267:
	lwz		r4,(Dcm_LCfg+108)@l(r3)		# pErrorCode=r4 pMsgContext=r3
.Llo268:
	mr		r4,r4		# pLcfgRoe=r4 pLcfgRoe=r4
#       CONST(uint16, AUTOMATIC) eventTypeRecordDid = GET_2BYTE_ID(&pMsgContext->reqData[2]);
	.d2line		1353
	lwz		r3,0(r31)		# pMsgContext=r3 pMsgContext=r31
	lbz		r29,2(r3)		# pMsgContext=r3
	se_slwi		r29,8
	lbz		r0,3(r3)		# pMsgContext=r3
	or		r0,r0,r29
.Llo274:
	mr		r29,r0		# eventTypeRecordDid=r29 eventTypeRecordDid=r0
#       CONST(uint16, AUTOMATIC) serviceToRespondToDid = GET_2BYTE_ID(&pMsgContext->reqData[5]);
	.d2line		1354
	lbz		r0,5(r3)		# pMsgContext=r3
.Llo275:
	se_slwi		r0,8
	lbz		r3,6(r3)		# pMsgContext=r3 pMsgContext=r3
	or		r0,r0,r3		# pMsgContext=r3
.Llo277:
	mr		r0,r0		# serviceToRespondToDid=r0 serviceToRespondToDid=r0
#       uint8 RoeEventId;
# 
#       for (RoeEventId = (uint8)0U; RoeEventId < pLcfgRoe->num_event; RoeEventId++)
	.d2line		1357
	diab.li		r3,0		# RoeEventId=r3
.L746:
.Llo276:
	rlwinm		r5,r3,0,24,31		# RoeEventId=r3
	lbz		r6,1(r4)		# pLcfgRoe=r4
	se_cmp		r5,r6
	bc		0,0,.L750	# ge
#       {
#          if ((pLcfgRoe->p_event_cfg[RoeEventId].did == eventTypeRecordDid) &&
	.d2line		1359
	lwz		r5,8(r4)		# pLcfgRoe=r4
	rlwinm		r6,r3,3,21,28		# RoeEventId=r3
	se_add		r5,r6
	lhz		r5,2(r5)
	rlwinm		r6,r29,0,16,31		# eventTypeRecordDid=r29
	se_cmp		r5,r6
	bc		0,2,.L749	# ne
	rlwinm		r5,r3,0,24,31		# RoeEventId=r3
	lbz		r6,0(r4)		# pLcfgRoe=r4
	se_cmp		r5,r6
	bc		0,2,.L750	# ne
.L749:
#              (RoeEventId != pLcfgRoe->dtc_status_change_event))
#          {
#             /* Event id found */
#             break;
#          }
#       }
	.d2line		1365
	diab.addi		r5,r3,1		# RoeEventId=r3
	se_addi		r3,1		# RoeEventId=r3 RoeEventId=r3
	b		.L746
.L750:
# 
#       if (RoeEventId == pLcfgRoe->num_event)
	.d2line		1367
.Llo269:
	rlwinm		r5,r3,0,24,31		# RoeEventId=r3
.Llo270:
	lbz		r4,1(r4)		# pLcfgRoe=r4 pLcfgRoe=r4
	se_cmp		r5,r4		# pLcfgRoe=r4
	bc		0,2,.L751	# ne
#       {
#          /* [SWS_Dcm_00908] [SWS_Dcm_00918] */
#          /* No event with reference to DID found */
#          *pErrorCode = DCM_E_REQUESTOUTOFRANGE;
	.d2line		1371
.Llo271:
	diab.li		r0,49
	stb		r0,0(r28)		# pErrorCode=r28
	b		.L743
.L751:
#       }
#       else if ((pMsgContext->reqData[4] != DCM_UDS_READ_DATA_BY_IDENTIFIER) ||
	.d2line		1373
.Llo278:
	lwz		r4,0(r31)		# pLcfgRoe=r4 pMsgContext=r31
.Llo272:
	lbz		r4,4(r4)		# pLcfgRoe=r4 pLcfgRoe=r4
	cmpi		0,0,r4,34		# pLcfgRoe=r4
	bc		0,2,.L759	# ne
.Llo273:
	rlwinm		r6,r29,0,16,31		# eventTypeRecordDid=r29
.Llo279:
	rlwinm		r0,r0,0,16,31		# serviceToRespondToDid=r0 serviceToRespondToDid=r0
	se_cmp		r6,r0		# serviceToRespondToDid=r0
	bc		1,2,.L753	# eq
.L759:
#          (eventTypeRecordDid != serviceToRespondToDid))
#       {
#          /* [VSTAR_Dcm_00034] */
#          /* Service 0x22 with the same DID as in the eventTypeRecord,
#           * is the only service allowed as ServiceToRespondTo 
#           */
#          *pErrorCode = DCM_E_REQUESTOUTOFRANGE;
	.d2line		1380
.Llo280:
	diab.li		r0,49		# serviceToRespondToDid=r0
.Llo281:
	stb		r0,0(r28)		# pErrorCode=r28 serviceToRespondToDid=r0
	b		.L743
.L753:
	.section	.text_vle
.L1166:
#       }
#       else
#       {
#          Dcm_MsgLenType i;
#          CONST(Dcm_MsgLenType, AUTOMATIC) serviceToRespondToLength = (Dcm_MsgLenType)(pMsgContext->reqDataLen - 4);
	.d2line		1385
.Llo261:
	lhz		r28,4(r31)		# pErrorCode=r28 pMsgContext=r31
.Llo262:
	diab.li		r0,65532		# serviceToRespondToDid=r0
.Llo282:
	se_add		r0,r28		# serviceToRespondToDid=r0 serviceToRespondToDid=r0 pErrorCode=r28
.Llo283:
	mr		r28,r0		# serviceToRespondToLength=r28 serviceToRespondToLength=r0
# 
#          SetupEvent(RoeEventId, eventWindowTime, StorageBitSet);
	.d2line		1387
.Llo263:
	mr		r3,r3		# RoeEventId=r3 RoeEventId=r3
.Llo284:
	mr		r4,r30		# eventWindowTime=r4 eventWindowTime=r30
	mr		r5,r8		# StorageBitSet=r5 StorageBitSet=r8
	bl		SetupEvent
# 
#          /* Copy ServiceToRespondTo from request first to not overwrite the request in case of shared Rx and Tx buffers */
#          for (i = (Dcm_MsgLenType)5 + serviceToRespondToLength; i > serviceToRespondToLength; i--)
	.d2line		1390
.Llo264:
	diab.addi		r0,r28,5		# serviceToRespondToDid=r0 serviceToRespondToLength=r28
	addi		r0,r28,5		# serviceToRespondToDid=r0 serviceToRespondToLength=r28
.L755:
.Llo290:
	rlwinm		r4,r0,0,16,31		# pMsgContext=r4 i=r0
	rlwinm		r3,r28,0,16,31		# RoeEventId=r3 serviceToRespondToLength=r28
.Llo285:
	se_cmp		r4,r3		# pMsgContext=r4 RoeEventId=r3
	bc		0,1,.L757	# le
#          {
#             pMsgContext->resData[i] = pMsgContext->reqData[i - (Dcm_MsgLenType)1];
	.d2line		1392
.Llo286:
	lwz		r3,0(r31)		# RoeEventId=r3 pMsgContext=r31
.Llo287:
	rlwinm		r4,r0,0,16,31		# pMsgContext=r4 i=r0
	se_add		r3,r4		# RoeEventId=r3 RoeEventId=r3 pMsgContext=r4
	lbz		r5,-1(r3)		# RoeEventId=r3
	lwz		r3,8(r31)		# RoeEventId=r3 pMsgContext=r31
	stbx		r5,r3,r4		# RoeEventId=r3
#          }
	.d2line		1393
	diab.li		r3,65535		# RoeEventId=r3
.Llo288:
	se_add		r0,r3		# i=r0 i=r0 i=r3
	mr		r0,r0		# i=r0 i=r0
	b		.L755
.L757:
# 
#          /* EventType, resData[0], is already set in Dcm_ResponseOnEvent */
#          pMsgContext->resData[1] = (uint8)0U; /* numberOfIdentifiedEvents */
	.d2line		1396
.Llo291:
	diab.li		r0,0		# i=r0
.Llo292:
	lwz		r3,8(r31)		# RoeEventId=r3 pMsgContext=r31
.Llo289:
	stb		r0,1(r3)		# RoeEventId=r3 i=r0
#          pMsgContext->resData[2] = eventWindowTime;
	.d2line		1397
	lwz		r3,8(r31)		# RoeEventId=r3 pMsgContext=r31
	stb		r30,2(r3)		# RoeEventId=r3 eventWindowTime=r30
#          SET_2BYTE_ID(&pMsgContext->resData[3], eventTypeRecordDid); /* eventTypeRecord */
	.d2line		1398
	rlwinm		r0,r29,24,24,31		# i=r0 eventTypeRecordDid=r29
	lwz		r3,8(r31)		# RoeEventId=r3 pMsgContext=r31
	stb		r0,3(r3)		# RoeEventId=r3 i=r0
	rlwinm		r0,r29,0,24,31		# i=r0 eventTypeRecordDid=r29
.Llo293:
	lwz		r3,8(r31)		# RoeEventId=r3 pMsgContext=r31
	stb		r29,4(r3)		# RoeEventId=r3 eventTypeRecordDid=r29
# 
#          pMsgContext->resDataLen = pMsgContext->reqDataLen + 1U; /* 1 byte of numberOfIdentifiedEvents */
	.d2line		1400
	lhz		r3,4(r31)		# RoeEventId=r3 pMsgContext=r31
	se_addi		r3,1		# RoeEventId=r3 RoeEventId=r3
	sth		r3,12(r31)		# pMsgContext=r31 RoeEventId=r3
	.section	.text_vle
.L1167:
	.section	.text_vle
.L1154:
.L743:
#       }
#    }
# }
	.d2line		1403
	.d2epilogue_begin
.Llo260:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# serviceToRespondToDid=r0
	mtspr		lr,r0		# serviceToRespondToDid=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1146:
	.type		SubFuncOnChangeOfDid,@function
	.size		SubFuncOnChangeOfDid,.-SubFuncOnChangeOfDid
# Number of nodes = 240

# Allocations for SubFuncOnChangeOfDid
#	?a4		pMsgContext
#	?a5		pErrorCode
#	?a6		StorageBitSet
#	?a7		eventWindowTime
#	?a8		pLcfgRoe
#	?a9		eventTypeRecordDid
#	?a10		serviceToRespondToDid
#	?a11		RoeEventId
#	?a12		i
#	?a13		serviceToRespondToLength
# static FUNC(void, DCM_CODE) CheckSubFunc(CONSTP2VAR(Dcm_MsgContextType, AUTOMATIC, DCM_APPL_DATA) pMsgContext,
	.align		1
	.section	.text_vle
        .d2line         952,29
#$$ld
.L1177:

#$$bf	CheckSubFunc,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CheckSubFunc:
.Llo294:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pMsgContext=r3 pMsgContext=r3
	mr		r4,r4		# pErrorCode=r4 pErrorCode=r4
	mr		r5,r5		# StorageBitSet=r5 StorageBitSet=r5
	.d2prologue_end
#    CONSTP2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) pErrorCode,
#    boolean StorageBitSet)
# {
#    /* [SWS_Dcm_00892] Supported sub services */
#    switch (pMsgContext->subServiceId)
	.d2line		957
	lbz		r6,26(r3)		# pMsgContext=r3
	se_cmpi		r6,3
	bc		1,1,.L1183	# gt
	bc		1,2,.L627	# eq
	se_cmpi		r6,0
	bc		1,2,.L624	# eq
	se_cmpi		r6,1
	bc		1,2,.L626	# eq
	b		.L630
.L1183:
	se_cmpi		r6,4
	bc		1,2,.L628	# eq
	se_cmpi		r6,5
	bc		1,2,.L629	# eq
	b		.L630
.L624:
#    {
#       case ROE_SUB_FUNC_STOP:
#       {
#          SubFuncStop(pMsgContext, pErrorCode, StorageBitSet);
	.d2line		961
.Llo306:
	mr		r3,r3		# pMsgContext=r3 pMsgContext=r3
.Llo295:
	mr		r4,r4		# pErrorCode=r4 pErrorCode=r4
.Llo307:
	mr		r5,r5		# StorageBitSet=r5 StorageBitSet=r5
.Llo313:
	bl		SubFuncStop
	b		.L623
.L626:
#          break;
#       }
#       case ROE_SUB_FUNC_ON_DTC_STATUS_CHANGE:
#       {
#          SubFuncOnDtcStatusChange(pMsgContext, pErrorCode, StorageBitSet);
	.d2line		966
.Llo296:
	mr		r3,r3		# pMsgContext=r3 pMsgContext=r3
.Llo297:
	mr		r4,r4		# pErrorCode=r4 pErrorCode=r4
.Llo308:
	mr		r5,r5		# StorageBitSet=r5 StorageBitSet=r5
.Llo314:
	bl		SubFuncOnDtcStatusChange
	b		.L623
.L627:
#          break;
#       }
#       case ROE_SUB_FUNC_ON_CHANGE_OF_DID:
#       {
#          SubFuncOnChangeOfDid(pMsgContext, pErrorCode, StorageBitSet);
	.d2line		971
.Llo298:
	mr		r3,r3		# pMsgContext=r3 pMsgContext=r3
.Llo299:
	mr		r4,r4		# pErrorCode=r4 pErrorCode=r4
.Llo309:
	mr		r5,r5		# StorageBitSet=r5 StorageBitSet=r5
.Llo315:
	bl		SubFuncOnChangeOfDid
	b		.L623
.L628:
#          break;
#       }
#       case ROE_SUB_FUNC_REPORT_ACTIVATED_EVENTS:
#       {
#          SubFuncReportActivatedEvents(pMsgContext, pErrorCode);
	.d2line		976
.Llo300:
	mr		r3,r3		# pMsgContext=r3 pMsgContext=r3
.Llo301:
	mr		r4,r4		# pErrorCode=r4 pErrorCode=r4
.Llo310:
	bl		SubFuncReportActivatedEvents
	b		.L623
.L629:
#          break;
#       }
#       case ROE_SUB_FUNC_START:
#       {
#          SubFuncStart(pMsgContext, pErrorCode, StorageBitSet);
	.d2line		981
.Llo302:
	mr		r3,r3		# pMsgContext=r3 pMsgContext=r3
.Llo303:
	mr		r4,r4		# pErrorCode=r4 pErrorCode=r4
.Llo311:
	mr		r5,r5		# StorageBitSet=r5 StorageBitSet=r5
.Llo316:
	bl		SubFuncStart
	b		.L623
.L630:
#          break;
#       }
#       default:
#       {
#          /* ROE_SUB_FUNC_CLEAR is treated as default. Any non-supported sub function will be taken care of in Dsd */
#          SubFuncClear(pMsgContext, pErrorCode);
	.d2line		987
.Llo304:
	mr		r3,r3		# pMsgContext=r3 pMsgContext=r3
.Llo305:
	mr		r4,r4		# pErrorCode=r4 pErrorCode=r4
.Llo312:
	bl		SubFuncClear
.L623:
#          break;
#       }
#    }
# }
	.d2line		991
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
.L1178:
	.type		CheckSubFunc,@function
	.size		CheckSubFunc,.-CheckSubFunc
# Number of nodes = 60

# Allocations for CheckSubFunc
#	?a4		pMsgContext
#	?a5		pErrorCode
#	?a6		StorageBitSet
# FUNC(Std_ReturnType, DCM_CODE) Dcm_ResponseOnEvent(Dcm_OpStatusType OpStatus, P2VAR(Dcm_MsgContextType, AUTOMATIC, DCM_APPL_DATA) pMsgContext, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) pErrorCode)
	.align		2
	.section	.text_vle
        .d2line         505,32
#$$ld
.L1186:

#$$bf	Dcm_ResponseOnEvent,interprocedural,rasave,nostackparams
	.globl		Dcm_ResponseOnEvent
	.d2_cfa_start __cie
Dcm_ResponseOnEvent:
.Llo317:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r4		# pMsgContext=r3 pMsgContext=r4
.Llo318:
	mr		r31,r5		# pErrorCode=r31 pErrorCode=r5
	.d2prologue_end
# {
#    CONST(boolean, AUTOMATIC) storageBitSet = (boolean)((pMsgContext->subServiceId & 0x40U) == 0x40U);
	.d2line		507
.Llo319:
	lbz		r0,26(r3)		# pMsgContext=r3
.Llo323:
	rlwinm		r5,r0,26,31,31
.Llo325:
	mr		r5,r5		# storageBitSet=r5 storageBitSet=r5
# 
#    /*
#     * The first byte of the response can always be set
#     * regardless of sub function or result.
#     */
#    pMsgContext->resData[0] = pMsgContext->subServiceId; /* eventType*/
	.d2line		513
	lwz		r4,8(r3)		# pErrorCode=r4 pMsgContext=r3
	stb		r0,0(r4)		# pErrorCode=r4
# 
#    /* Remove storageState bit
#     * Since subServiceId is uint8, it is ok to convert subServiceId.
#     */
#    pMsgContext->subServiceId = (uint8) (pMsgContext->subServiceId & 0xBFU);
	.d2line		518
	lbz		r0,26(r3)		# pMsgContext=r3
	.diab.bclri		r0,25
	stb		r0,26(r3)		# pMsgContext=r3
# 
#    CheckSubFunc(pMsgContext, pErrorCode, storageBitSet);
	.d2line		520
	mr		r3,r3		# pMsgContext=r3 pMsgContext=r3
.Llo320:
	mr		r4,r31		# pErrorCode=r4 pErrorCode=r31
	mr		r5,r5		# storageBitSet=r5 storageBitSet=r5
.Llo326:
	bl		CheckSubFunc
# 
#    return Dcm_ErrorCodeToStdReturnType(*pErrorCode);
	.d2line		522
	lbz		r3,0(r31)		# pMsgContext=r3 pErrorCode=r31
	bl		Dcm_ErrorCodeToStdReturnType
.Llo321:
	rlwinm		r3,r3,0,24,31		# pMsgContext=r3 pMsgContext=r3
# }
	.d2line		523
	.d2epilogue_begin
.Llo322:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo324:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1187:
	.type		Dcm_ResponseOnEvent,@function
	.size		Dcm_ResponseOnEvent,.-Dcm_ResponseOnEvent
# Number of nodes = 49

# Allocations for Dcm_ResponseOnEvent
#	not allocated	OpStatus
#	?a4		pMsgContext
#	?a5		pErrorCode
#	?a6		storageBitSet
# VSTAR_FUNC_STATIC FUNC(void, DCM_CODE) QueuePush(uint8 RoeEventId, uint8 serviceToRespondToEvent)
	.align		1
	.section	.text_vle
        .d2line         748,40
#$$ld
.L1198:

#$$bf	QueuePush,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
QueuePush:
.Llo327:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# RoeEventId=r31 RoeEventId=r3
.Llo328:
	mr		r30,r4		# serviceToRespondToEvent=r30 serviceToRespondToEvent=r4
	.d2prologue_end
# {
#    CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
	.d2line		750
.Llo329:
	lis		r3,(Dcm_LCfg+108)@ha
	lwz		r28,(Dcm_LCfg+108)@l(r3)		# pLcfgRoe=r28
	mr		r28,r28		# pLcfgRoe=r28 pLcfgRoe=r28
#    CONSTP2VAR(Dcm_Cfg_RoeEventStatusType, AUTOMATIC, DCM_APPL_DATA) pEventStatus = &pLcfgRoe->p_event_status[RoeEventId];
	.d2line		751
	lwz		r29,20(r28)		# pLcfgRoe=r28
	rlwinm		r3,r31,3,21,28		# RoeEventId=r31
	se_add		r3,r29
.Llo334:
	mr		r29,r3		# pEventStatus=r29 pEventStatus=r3
# 
#    SchM_Enter_Dcm_EaRoeQueue();
	.d2line		753
	bl		SchM_Enter_Dcm_EaRoeQueue
# 
#    if (QueueIsEmpty())
	.d2line		755
.Llo331:
	bl		QueueIsEmpty
	e_andi.		r3,r3,255
	bc		1,2,.L581	# eq
#    {
#       RoeStatus.queue_read = RoeEventId;
	.d2line		757
.Llo332:
	lis		r3,(RoeStatus+1)@ha
	stb		r31,(RoeStatus+1)@l(r3)		# RoeEventId=r31
#       RoeStatus.queue_write = RoeEventId;
	.d2line		758
	lis		r3,RoeStatus@ha
	e_add16i		r3,r3,RoeStatus@l
	stb		r31,0(r3)		# RoeEventId=r31
	b		.L582
.L581:
#    }
#    else if (pEventStatus->queue_next == pLcfgRoe->num_event)
	.d2line		760
	lbz		r0,4(r29)		# pEventStatus=r29
	lbz		r3,1(r28)		# pLcfgRoe=r28
	se_cmp		r0,r3
	bc		0,2,.L583	# ne
#    {
#       /* Event not added before - add last */
#       pLcfgRoe->p_event_status[RoeStatus.queue_write].queue_next = RoeEventId;
	.d2line		763
.Llo335:
	lwz		r0,20(r28)		# pLcfgRoe=r28
	lis		r4,RoeStatus@ha
	lbz		r3,RoeStatus@l(r4)
	rlwinm		r3,r3,3,21,28
	se_add		r3,r0
	stb		r31,4(r3)		# RoeEventId=r31
#       pLcfgRoe->p_event_status[RoeEventId].queue_previous = RoeStatus.queue_write;
	.d2line		764
	lbz		r0,RoeStatus@l(r4)
	lwz		r3,20(r28)		# pLcfgRoe=r28
	rlwinm		r4,r31,3,21,28		# RoeEventId=r31
	se_add		r3,r4
	stb		r0,5(r3)
#       RoeStatus.queue_write = RoeEventId;
	.d2line		765
	lis		r3,RoeStatus@ha
	e_add16i		r3,r3,RoeStatus@l
	stb		r31,0(r3)		# RoeEventId=r31
	b		.L582
.L583:
#    }
#    else if (serviceToRespondToEvent != RoeEventId)
	.d2line		767
	rlwinm		r30,r30,0,24,31		# serviceToRespondToEvent=r30 serviceToRespondToEvent=r30
	rlwinm		r3,r31,0,24,31		# RoeEventId=r31
	se_cmp		r30,r3		# serviceToRespondToEvent=r30
	bc		1,2,.L582	# eq
#    {
#       /* Event shall only be added to the queue if it is not already being processed as ServiceToRespondTo */
# 
#       /* [SWS_Dcm_00923] Event added to queue before - remove current entry and add last */
#       QueueRemove(RoeEventId);
	.d2line		772
.Llo333:
	mr		r3,r31		# RoeEventId=r3 RoeEventId=r31
	bl		QueueRemove
#       pLcfgRoe->p_event_status[RoeStatus.queue_write].queue_next = RoeEventId;
	.d2line		773
	lwz		r0,20(r28)		# pLcfgRoe=r28
	lis		r4,RoeStatus@ha
	lbz		r3,RoeStatus@l(r4)		# RoeEventId=r3
	rlwinm		r3,r3,3,21,28		# RoeEventId=r3 RoeEventId=r3
	se_add		r3,r0		# RoeEventId=r3 RoeEventId=r3
	stb		r31,4(r3)		# RoeEventId=r3 RoeEventId=r31
#       pLcfgRoe->p_event_status[RoeEventId].queue_previous = RoeStatus.queue_write;
	.d2line		774
	lbz		r0,RoeStatus@l(r4)
	lwz		r4,20(r28)		# pLcfgRoe=r28
	rlwinm		r3,r31,3,21,28		# RoeEventId=r3 RoeEventId=r31
	se_add		r3,r4		# RoeEventId=r3 RoeEventId=r3
	stb		r0,5(r3)		# RoeEventId=r3
#       RoeStatus.queue_write = RoeEventId;
	.d2line		775
	lis		r3,RoeStatus@ha		# RoeEventId=r3
	e_add16i		r3,r3,RoeStatus@l		# RoeEventId=r3 RoeEventId=r3
	stb		r31,0(r3)		# RoeEventId=r3 RoeEventId=r31
.L582:
#    }
#    else
#    {
#       /*
#        * Event was added before and is currently beeing processed
#        * as ServiceToRespondTo. Thus shall the event be dropped.
#        */
#    }
# 
#    SchM_Exit_Dcm_EaRoeQueue();
	.d2line		785
.Llo330:
	bl		SchM_Exit_Dcm_EaRoeQueue
# 
#    /*
#     * Added an event into the queue.
#     * Trigger to handle it.
#     */
#    SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent();
	.d2line		791
	bl		SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent
# }
	.d2line		792
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
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
.L1199:
	.type		QueuePush,@function
	.size		QueuePush,.-QueuePush
# Number of nodes = 138

# Allocations for QueuePush
#	?a4		RoeEventId
#	?a5		serviceToRespondToEvent
#	?a6		pLcfgRoe
#	?a7		pEventStatus
# FUNC(Std_ReturnType, DCM_CODE) Dcm_DemTriggerOnDTCStatus(uint32 DTC, Dem_UdsStatusByteType DTCStatusOld, Dem_UdsStatusByteType DTCStatusNew)
	.align		2
	.section	.text_vle
        .d2line         529,32
#$$ld
.L1209:

#$$bf	Dcm_DemTriggerOnDTCStatus,interprocedural,rasave,nostackparams
	.globl		Dcm_DemTriggerOnDTCStatus
	.d2_cfa_start __cie
Dcm_DemTriggerOnDTCStatus:
.Llo336:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r5		# DTCStatusNew=r31 DTCStatusNew=r5
	.d2prologue_end
# {
#    CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
	.d2line		531
	lis		r3,(Dcm_LCfg+108)@ha
	lwz		r30,(Dcm_LCfg+108)@l(r3)
.Llo344:
	mr		r30,r30		# pLcfgRoe=r30 pLcfgRoe=r30
#    DCM_ASSERT_UNINIT(SID_DEMTRIGGERONDTCSTATUS)
	.d2line		532
	lis		r3,Dcm_pPbCfg@ha
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L526	# ne
.Llo337:
	diab.li		r3,53
.Llo338:
	diab.li		r4,0
	diab.li		r5,43
	diab.li		r6,5
	bl		Det_ReportError
.L526:
#    DCM_ASSERT_NULL_PTR(SID_DEMTRIGGERONDTCSTATUS, pLcfgRoe)
	.d2line		533
	se_cmpi		r30,0		# pLcfgRoe=r30
	bc		0,2,.L527	# ne
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,43
	diab.li		r6,7
	bl		Det_ReportError
.L527:
# 
#    if ((NULL_PTR != pLcfgRoe) && (NULL_PTR != Dcm_pPbCfg))
	.d2line		535
	se_cmpi		r30,0		# pLcfgRoe=r30
	bc		1,2,.L528	# eq
	lis		r3,Dcm_pPbCfg@ha
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L528	# eq
	.section	.text_vle
.L1218:
#    {
#       CONST(uint8, AUTOMATIC) eventId = pLcfgRoe->dtc_status_change_event;
	.d2line		537
	lbz		r3,0(r30)		# eventId=r3 pLcfgRoe=r30
.Llo345:
	mr		r3,r3		# eventId=r3 eventId=r3
#       CONSTP2CONST(Dcm_Cfg_RoeNvmEventStatusType, AUTOMATIC, DCM_APPL_DATA) pNvmEventStatus = &pLcfgRoe->p_nvm_event_status[eventId];
	.d2line		538
	lwz		r4,24(r30)		# pNvmEventStatus=r4 pLcfgRoe=r30
.Llo348:
	rlwinm		r0,r3,3,21,28		# channelId=r0 eventId=r3
.Llo354:
	se_add		r0,r4		# channelId=r0 channelId=r0 pNvmEventStatus=r4
.Llo355:
	mr		r4,r0		# pNvmEventStatus=r4 pNvmEventStatus=r0
#       CONST(PduIdType, AUTOMATIC) channelId = pNvmEventStatus->rx_pdu_id;
	.d2line		539
.Llo349:
	lhz		r0,6(r4)		# channelId=r0 pNvmEventStatus=r4
.Llo356:
	mr		r0,r0		# channelId=r0 channelId=r0
#       CONSTP2CONST(Dcm_Cfg_RoeNvmStatusType, AUTOMATIC, DCM_APPL_DATA) pNvmStatus = pLcfgRoe->p_nvm_status;
	.d2line		540
	lwz		r5,16(r30)		# pLcfgRoe=r30
.Llo359:
	mr		r5,r5		# pNvmStatus=r5 pNvmStatus=r5
# 
#       /* [SWS_Dcm_00135] */
#       if (*Dcm_pPbCfg->p_rx_channels[channelId].p_commMode == DCM_FULL_COMM_MODE)
	.d2line		543
	lis		r4,Dcm_pPbCfg@ha		# pNvmEventStatus=r4
.Llo350:
	lwz		r4,Dcm_pPbCfg@l(r4)		# pNvmEventStatus=r4 pNvmEventStatus=r4
	lwz		r4,8(r4)		# pNvmEventStatus=r4 pNvmEventStatus=r4
	rlwinm		r0,r0,0,16,31		# channelId=r0 channelId=r0
	e_mulli		r0,r0,44		# channelId=r0 channelId=r0
	se_add		r4,r0		# pNvmEventStatus=r4 pNvmEventStatus=r4 channelId=r0
	lwz		r4,36(r4)		# pNvmEventStatus=r4 pNvmEventStatus=r4
	lwz		r0,0(r4)		# channelId=r0 pNvmEventStatus=r4
	se_cmpi		r0,2		# channelId=r0
	bc		0,2,.L528	# ne
#       {
#          if ((pLcfgRoe->p_event_status[eventId].state == DCM_ROE_STARTED) && ((pNvmStatus->dtc_status_mask & DTCStatusNew) != 0))
	.d2line		545
.Llo351:
	lwz		r4,20(r30)		# pNvmEventStatus=r4 pLcfgRoe=r30
.Llo352:
	rlwinm		r0,r3,3,21,28		# channelId=r0 eventId=r3
.Llo357:
	lwzx		r0,r4,r0		# channelId=r0 pNvmEventStatus=r4
	se_cmpi		r0,2		# channelId=r0
	bc		0,2,.L528	# ne
.Llo339:
	lbz		r0,0(r5)		# channelId=r0 pNvmStatus=r5
.Llo340:
	rlwinm		r31,r31,0,24,31		# DTCStatusNew=r31 DTCStatusNew=r31
	and.		r0,r0,r31		# channelId=r0 channelId=r0 DTCStatusNew=r31
.Llo358:
	bc		1,2,.L528	# eq
#          {
#             /* [SWS_Dcm_00914] */
#             QueuePush(eventId, RoeStatus.service_to_respond_to_event);
	.d2line		548
.Llo341:
	lis		r4,(RoeStatus+3)@ha		# pNvmEventStatus=r4
.Llo353:
	lbz		r4,(RoeStatus+3)@l(r4)		# pNvmEventStatus=r4 pNvmEventStatus=r4
.Llo346:
	mr		r3,r3		# eventId=r3 eventId=r3
.Llo347:
	bl		QueuePush
	.section	.text_vle
.L1219:
.L528:
#          }
#       }
#    }
# 
#    /* Shall always return E_OK */
#    return E_OK;
	.d2line		554
.Llo342:
	diab.li		r3,0		# eventId=r3
# }
	.d2line		555
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# channelId=r0
	mtspr		lr,r0		# channelId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo343:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1210:
	.type		Dcm_DemTriggerOnDTCStatus,@function
	.size		Dcm_DemTriggerOnDTCStatus,.-Dcm_DemTriggerOnDTCStatus
# Number of nodes = 115

# Allocations for Dcm_DemTriggerOnDTCStatus
#	not allocated	DTC
#	not allocated	DTCStatusOld
#	?a4		DTCStatusNew
#	?a5		pLcfgRoe
#	?a6		eventId
#	?a7		pNvmEventStatus
#	?a8		channelId
#	?a9		pNvmStatus
# FUNC(Std_ReturnType, DCM_CODE) Dcm_TriggerOnEvent(uint8 RoeEventId)
	.align		2
	.section	.text_vle
        .d2line         567,32
#$$ld
.L1234:

#$$bf	Dcm_TriggerOnEvent,interprocedural,rasave,nostackparams
	.globl		Dcm_TriggerOnEvent
	.d2_cfa_start __cie
Dcm_TriggerOnEvent:
.Llo360:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# RoeEventId=r31 RoeEventId=r3
	.d2prologue_end
# {
#    CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
#    Std_ReturnType retVal = E_NOT_OK;
	.d2line		570
	diab.li		r29,1		# retVal=r29
	.d2line		569
	lis		r3,(Dcm_LCfg+108)@ha
.Llo361:
	lwz		r30,(Dcm_LCfg+108)@l(r3)
.Llo364:
	mr		r30,r30		# pLcfgRoe=r30 pLcfgRoe=r30
# 
#    DCM_ASSERT_UNINIT(SID_TRIGGERONEVENT)
	.d2line		572
	lis		r3,Dcm_pPbCfg@ha
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L535	# ne
.Llo362:
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,45
	diab.li		r6,5
	bl		Det_ReportError
.L535:
#    DCM_ASSERT_NULL_PTR(SID_TRIGGERONEVENT, pLcfgRoe)
	.d2line		573
	se_cmpi		r30,0		# pLcfgRoe=r30
	bc		0,2,.L536	# ne
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,45
	diab.li		r6,7
	bl		Det_ReportError
.L536:
# 
#    if ((NULL_PTR == pLcfgRoe) || (NULL_PTR == Dcm_pPbCfg))
	.d2line		575
	se_cmpi		r30,0		# pLcfgRoe=r30
	bc		1,2,.L538	# eq
	lis		r3,Dcm_pPbCfg@ha
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L538	# eq
#    {
#       /*
#        * Uninitialized or ROE is not configured.
#        */
#    }
#    else if (RoeEventId >= pLcfgRoe->num_event)
	.d2line		581
	rlwinm		r0,r31,0,24,31		# RoeEventId=r31
	lbz		r3,1(r30)		# pLcfgRoe=r30
	se_cmp		r0,r3
	bc		1,0,.L539	# lt
#    {
#       /*
#        * Event out of range
#        */
#       DCM_ASSERT_PARAM(SID_TRIGGERONEVENT, FALSE)
	.d2line		586
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,45
	diab.li		r6,6
	bl		Det_ReportError
	b		.L538
.L539:
	.section	.text_vle
.L1242:
#    }
#    else
#    {
#       CONSTP2CONST(Dcm_Cfg_RoeNvmEventStatusType, AUTOMATIC, DCM_APPL_DATA) pNvmEventStatus = &pLcfgRoe->p_nvm_event_status[RoeEventId];
	.d2line		590
	lwz		r4,24(r30)		# pNvmEventStatus=r4 pLcfgRoe=r30
.Llo367:
	rlwinm		r0,r31,3,21,28		# RoeEventId=r31
	se_add		r4,r0		# pNvmEventStatus=r4 pNvmEventStatus=r4
	mr		r4,r4		# pNvmEventStatus=r4 pNvmEventStatus=r4
#       CONSTP2CONST(Dcm_Cfg_RxChannelType, AUTOMATIC, DCM_APPL_CONST) pRxChannel = &Dcm_pPbCfg->p_rx_channels[pNvmEventStatus->rx_pdu_id];
	.d2line		591
	lis		r3,Dcm_pPbCfg@ha		# pRxChannel=r3
.Llo369:
	lwz		r3,Dcm_pPbCfg@l(r3)		# pRxChannel=r3 pRxChannel=r3
	lwz		r3,8(r3)		# pRxChannel=r3 pRxChannel=r3
	lhz		r4,6(r4)		# pNvmEventStatus=r4 pNvmEventStatus=r4
	e_mulli		r4,r4,44		# pNvmEventStatus=r4 pNvmEventStatus=r4
	se_add		r3,r4		# pRxChannel=r3 pRxChannel=r3 pNvmEventStatus=r4
	mr		r3,r3		# pRxChannel=r3 pRxChannel=r3
#       CONSTP2CONST(Dcm_Cfg_RoeEventStatusType, AUTOMATIC, DCM_APPL_DATA) pEventStatus = &pLcfgRoe->p_event_status[RoeEventId];
	.d2line		592
	lwz		r4,20(r30)		# pNvmEventStatus=r4 pLcfgRoe=r30
	se_add		r0,r4		# pNvmEventStatus=r4
.Llo372:
	mr		r4,r0		# pEventStatus=r4 pEventStatus=r0
# 
#       /*
#       * Only handle event notification if ROE is started.
#       */
#       /* [SWS_Dcm_00135]: Discard event if not in full communication */
#       if (DCM_FULL_COMM_MODE == *pRxChannel->p_commMode)
	.d2line		598
.Llo368:
	lwz		r3,36(r3)		# pRxChannel=r3 pRxChannel=r3
	lwz		r0,0(r3)		# pRxChannel=r3
.Llo373:
	se_cmpi		r0,2
	bc		0,2,.L538	# ne
#       {
#          if (pEventStatus->state == DCM_ROE_STARTED)
	.d2line		600
.Llo365:
	lwz		r0,0(r4)		# pEventStatus=r4
	se_cmpi		r0,2
	bc		0,2,.L538	# ne
#          {
#             /* [SWS_Dcm_00920] */
#             QueuePush(RoeEventId, RoeStatus.service_to_respond_to_event);
	.d2line		603
.Llo374:
	lis		r3,(RoeStatus+3)@ha		# pRxChannel=r3
.Llo370:
	lbz		r4,(RoeStatus+3)@l(r3)		# pEventStatus=r4 pRxChannel=r3
	mr		r3,r31		# RoeEventId=r3 RoeEventId=r31
.Llo371:
	bl		QueuePush
	.section	.text_vle
.L1243:
.L538:
#          }
#       }
#    }
# 
#    return retVal;
	.d2line		608
.Llo363:
	rlwinm		r3,r29,0,24,31		# pRxChannel=r3 retVal=r29
# }
	.d2line		609
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo366:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1235:
	.type		Dcm_TriggerOnEvent,@function
	.size		Dcm_TriggerOnEvent,.-Dcm_TriggerOnEvent
# Number of nodes = 122

# Allocations for Dcm_TriggerOnEvent
#	?a4		RoeEventId
#	?a5		pLcfgRoe
#	?a6		retVal
#	?a7		pNvmEventStatus
#	?a8		pRxChannel
#	?a9		pEventStatus
# VSTAR_FUNC_STATIC FUNC(boolean, DCM_CODE) QueueRead(CONSTP2VAR(uint8, AUTOMATIC, DCM_APPL_DATA) pRoeEventId)
	.align		1
	.section	.text_vle
        .d2line         794,43
#$$ld
.L1259:

#$$bf	QueueRead,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
QueueRead:
.Llo375:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pRoeEventId=r31 pRoeEventId=r3
	.d2prologue_end
# {
#    CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
#    boolean retVal = FALSE;
	.d2line		797
	diab.li		r29,0		# retVal=r29
	.d2line		796
	lis		r3,(Dcm_LCfg+108)@ha
.Llo376:
	lwz		r30,(Dcm_LCfg+108)@l(r3)		# pLcfgRoe=r30
.Llo379:
	mr		r30,r30		# pLcfgRoe=r30 pLcfgRoe=r30
# 
#    SchM_Enter_Dcm_EaRoeQueue();
	.d2line		799
	bl		SchM_Enter_Dcm_EaRoeQueue
# 
#    if (RoeStatus.queue_read != pLcfgRoe->num_event)
	.d2line		801
	lis		r3,(RoeStatus+1)@ha
	lbz		r0,(RoeStatus+1)@l(r3)
	lbz		r3,1(r30)		# pLcfgRoe=r30
	se_cmp		r0,r3
	bc		1,2,.L591	# eq
#    {
#       *pRoeEventId = RoeStatus.queue_read;
	.d2line		803
.Llo377:
	lis		r3,(RoeStatus+1)@ha
	lbz		r0,(RoeStatus+1)@l(r3)
	stb		r0,0(r31)		# pRoeEventId=r31
#       retVal = TRUE;
	.d2line		804
	diab.li		r29,1		# retVal=r29
.L591:
#    }
# 
#    SchM_Exit_Dcm_EaRoeQueue();
	.d2line		807
.Llo378:
	bl		SchM_Exit_Dcm_EaRoeQueue
# 
#    return retVal;
	.d2line		809
	rlwinm		r3,r29,0,24,31		# retVal=r29
# }
	.d2line		810
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo380:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1260:
	.type		QueueRead,@function
	.size		QueueRead,.-QueueRead
# Number of nodes = 39

# Allocations for QueueRead
#	?a4		pRoeEventId
#	?a5		pLcfgRoe
#	?a6		retVal
# static FUNC(void, DCM_CODE) SendServiceToRespondTo(uint8 EventId, PduIdType ChannelId)
	.align		1
	.section	.text_vle
        .d2line         863,29
#$$ld
.L1269:

#$$bf	SendServiceToRespondTo,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
SendServiceToRespondTo:
.Llo381:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
.Llo399:
	stmw		r28,32(r1)		# offset r1+32  0x20
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,52(r1)		# bufReqRetVal=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# EventId=r31 EventId=r3
	mr		r30,r4		# ChannelId=r30 ChannelId=r4
	.d2prologue_end
# {
#    CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
	.d2line		865
.Llo395:
	lis		r3,(Dcm_LCfg+108)@ha		# EventId=r3
.Llo396:
	lwz		r29,(Dcm_LCfg+108)@l(r3)		# EventId=r3
.Llo398:
	mr		r29,r29		# pLcfgRoe=r29 pLcfgRoe=r29
#    BufReq_ReturnType bufReqRetVal;
#    PduLengthType dataSize;
#    PduInfoType pduInfo;
# 
#    /* An event was read from queue - build up the service to respond to */
#    const PduLengthType serviceToRespondToLength = (PduLengthType)ServiceToRespondTo(EventId, &ServiceToRespondToBuffer[0]);
	.d2line		871
	lis		r4,ServiceToRespondToBuffer@ha
	e_add16i		r4,r4,ServiceToRespondToBuffer@l
	mr		r3,r31		# EventId=r3 EventId=r31
.Llo382:
	bl		ServiceToRespondTo
.Llo400:
	mr		r28,r3		# serviceToRespondToLength=r28 serviceToRespondToLength=r3
#    RoeStatus.service_to_respond_to_event = EventId;
	.d2line		872
	lis		r3,(RoeStatus+3)@ha		# EventId=r3
.Llo383:
	stb		r31,(RoeStatus+3)@l(r3)		# EventId=r3 EventId=r31
# 
#    /* [SWS_Dcm_00922] */
#    bufReqRetVal = Dcm_StartOfReception(ChannelId, serviceToRespondToLength, &dataSize);
	.d2line		875
	rlwinm		r3,r30,0,16,31		# EventId=r3 ChannelId=r30
.Llo384:
	rlwinm		r4,r28,0,16,31		# serviceToRespondToLength=r28
	diab.addi		r5,r1,8
	bl		Dcm_StartOfReception
	.d2line		877
.Llo385:
	mr.		r0,r3		# bufReqRetVal=?a7 bufReqRetVal=r3
# 
#    if (BUFREQ_OK == bufReqRetVal)
.Llo401:
	bc		0,2,.L606	# ne
#    {
#       pduInfo.SduDataPtr = &ServiceToRespondToBuffer[0];
	.d2line		879
.Llo386:
	lis		r3,ServiceToRespondToBuffer@ha		# EventId=r3
.Llo387:
	e_add16i		r3,r3,ServiceToRespondToBuffer@l		# EventId=r3 EventId=r3
	stw		r3,12(r1)		# EventId=r3
#       pduInfo.SduLength = serviceToRespondToLength;
	.d2line		880
	sth		r28,16(r1)		# serviceToRespondToLength=r28
# 
#       bufReqRetVal = Dcm_CopyRxData(ChannelId, &pduInfo, &dataSize);
	.d2line		882
	rlwinm		r3,r30,0,16,31		# EventId=r3 ChannelId=r30
	diab.addi		r4,r1,12
	diab.addi		r5,r1,8
	bl		Dcm_CopyRxData
	.d2line		884
	mr.		r0,r3		# bufReqRetVal=?a7 bufReqRetVal=r3
# 
#       if (BUFREQ_OK == bufReqRetVal)
	bc		0,2,.L607	# ne
#       {
#          RoeStatus.wait_confirmation = TRUE;
	.d2line		886
.Llo388:
	diab.li		r0,1		# bufReqRetVal=r0
.Llo402:
	lis		r3,(RoeStatus+2)@ha		# EventId=r3
.Llo389:
	stb		r0,(RoeStatus+2)@l(r3)		# EventId=r3 bufReqRetVal=r0
#          Dcm_TpRxIndication(ChannelId, NTFRSLT_OK);
	.d2line		887
	rlwinm		r3,r30,0,16,31		# EventId=r3 ChannelId=r30
.Llo390:
	diab.li		r4,0
	bl		Dcm_TpRxIndication
.Llo403:
	b		.L605
.L607:
#       }
#       else
#       {
#          /* Set the ServiceToRespondTo as not active */
#          RoeStatus.service_to_respond_to_event = pLcfgRoe->num_event;
	.d2line		892
	lbz		r0,1(r29)		# bufReqRetVal=r0 pLcfgRoe=r29
.Llo404:
	lis		r3,(RoeStatus+3)@ha		# EventId=r3
.Llo391:
	stb		r0,(RoeStatus+3)@l(r3)		# EventId=r3 bufReqRetVal=r0
# 
#          /* [SWS_Dcm_00558] Buffer is taken by a higher prio protocol - retry the next schedule.
#          * Dcm_CopyRxData can also return NOT_OK on incorrect parameters and too small buffer, but this will not happen for ROE messages
#          */
#          SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent();
	.d2line		897
	bl		SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent
.Llo392:
	b		.L605
.L606:
#       }
#    }
#    else if (BUFREQ_E_NOT_OK == bufReqRetVal)
	.d2line		900
.Llo393:
	se_cmpi		r0,1		# bufReqRetVal=r0
	bc		0,2,.L610	# ne
#    {
#       /* Set the ServiceToRespondTo as not active */
#       RoeStatus.service_to_respond_to_event = pLcfgRoe->num_event;
	.d2line		903
.Llo397:
	lbz		r0,1(r29)		# bufReqRetVal=r0 pLcfgRoe=r29
.Llo405:
	lis		r3,(RoeStatus+3)@ha		# EventId=r3
	stb		r0,(RoeStatus+3)@l(r3)		# EventId=r3 bufReqRetVal=r0
# 
#       /* [SWS_Dcm_00558] Ongoing other service request or buffer being processed - try again in the next schedule */
#       SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent();
	.d2line		906
	bl		SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent
.Llo406:
	b		.L605
.L610:
#    }
#    else
#    {
#       /* Set the ServiceToRespondTo as not active */
#       RoeStatus.service_to_respond_to_event = pLcfgRoe->num_event;
	.d2line		911
	lbz		r0,1(r29)		# bufReqRetVal=r0 pLcfgRoe=r29
.Llo407:
	lis		r3,(RoeStatus+3)@ha		# EventId=r3
	stb		r0,(RoeStatus+3)@l(r3)		# EventId=r3 bufReqRetVal=r0
# 
#       /* ServiceToRespond doesn't fit buffer - remove message from queue.
#       * This shall not happen since the ServiceToRespondTo is specified in
#       * [SWS_Dcm_00915] and [SWS_Dcm_00921] and the smallest buffer size
#       * specified in [ECUC_Dcm_00738] is larger than the requests,
#       * but the code is kept to make sure that future updates doesn't change this.
#       * Only SID_TRIGGERONEVENT is used in Det report, but it can also be
#       * triggered by SID_DEMTRIGGERONDTCSTATUS.
#       */
#       DCM_ASSERT_BUFFER_OVERFLOW(SID_TRIGGERONEVENT, TRUE);
#       QueueRemove(EventId);
	.d2line		922
	mr		r3,r31		# EventId=r3 EventId=r31
	bl		QueueRemove
.L605:
#    }
# }
	.d2line		924
	.d2epilogue_begin
.Llo394:
	lmw		r28,32(r1)		# offset r1+32  0x20
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)		# bufReqRetVal=r0
	mtspr		lr,r0		# bufReqRetVal=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1270:
	.type		SendServiceToRespondTo,@function
	.size		SendServiceToRespondTo,.-SendServiceToRespondTo
# Number of nodes = 128

# Allocations for SendServiceToRespondTo
#	?a4		EventId
#	?a5		ChannelId
#	?a6		pLcfgRoe
#	?a7		bufReqRetVal
#	SP,8		dataSize
#	SP,12		pduInfo
#	?a8		serviceToRespondToLength
# FUNC(void, DCM_CODE) Dcm_SE_ResponseOnOneEvent(void)
	.align		2
	.section	.text_vle
        .d2line         615,22
#$$ld
.L1290:

#$$bf	Dcm_SE_ResponseOnOneEvent,interprocedural,rasave,nostackparams
	.globl		Dcm_SE_ResponseOnOneEvent
	.d2_cfa_start __cie
Dcm_SE_ResponseOnOneEvent:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /* [SWS_Dcm_00601] */
#    if (RoeStatus.inter_msg_timer_elapsed && (!RoeStatus.wait_confirmation))
	.d2line		618
	lis		r3,(RoeStatus+6)@ha
	lbz		r0,(RoeStatus+6)@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L549	# eq
	lis		r3,(RoeStatus+2)@ha
	lbz		r0,(RoeStatus+2)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L549	# ne
	.section	.text_vle
.L1293:
#    {
#       uint8 eventId;
# 
#       if (QueueRead(&eventId))
	.d2line		622
	diab.addi		r3,r1,8
	bl		QueueRead
	e_andi.		r3,r3,255
	bc		1,2,.L549	# eq
	.section	.text_vle
.L1298:
#       {
#          CONSTP2CONST(Dcm_Cfg_RoeType, AUTOMATIC, DCM_APPL_CONST) pLcfgRoe = Dcm_LCfg.p_roe;
	.d2line		624
	lis		r3,(Dcm_LCfg+108)@ha		# pNvmEventStatus=r3
.Llo410:
	lwz		r3,(Dcm_LCfg+108)@l(r3)		# pNvmEventStatus=r3 pNvmEventStatus=r3
.Llo408:
	mr		r3,r3		# pLcfgRoe=r3 pLcfgRoe=r3
#          CONSTP2CONST(Dcm_Cfg_RoeNvmEventStatusType, AUTOMATIC, DCM_APPL_DATA) pNvmEventStatus = &pLcfgRoe->p_nvm_event_status[eventId];
	.d2line		625
	lwz		r3,24(r3)		# pLcfgRoe=r3 pLcfgRoe=r3
	lbz		r0,8(r1)
	rlwinm		r0,r0,3,21,28
	se_add		r0,r3		# pLcfgRoe=r3
.Llo411:
	mr		r3,r0		# pNvmEventStatus=r3 pNvmEventStatus=r0
#          /* [SWS_Dcm_00926] */
#          CONST(PduIdType, AUTOMATIC) channelId = pNvmEventStatus->rx_pdu_id;
	.d2line		627
.Llo409:
	lhz		r4,6(r3)		# channelId=r4 pNvmEventStatus=r3
.Llo415:
	mr		r4,r4		# channelId=r4 channelId=r4
# 
#          /* 
#           * [SWS_Dcm_00133] 
#           * ROE Communication shall only be performed in full communication
#           * The ROE internal trigger point will be called when Dcm going to full communication.
#           */
#          if (*Dcm_pPbCfg->p_rx_channels[channelId].p_commMode == DCM_FULL_COMM_MODE)
	.d2line		634
	lis		r3,Dcm_pPbCfg@ha		# pNvmEventStatus=r3
	lwz		r3,Dcm_pPbCfg@l(r3)		# pNvmEventStatus=r3 pNvmEventStatus=r3
	lwz		r0,8(r3)		# pNvmEventStatus=r3
.Llo412:
	rlwinm		r3,r4,0,16,31		# pNvmEventStatus=r3 channelId=r4
.Llo413:
	e_mulli		r3,r3,44		# pNvmEventStatus=r3 pNvmEventStatus=r3
	se_add		r3,r0		# pNvmEventStatus=r3 pNvmEventStatus=r3
	lwz		r3,36(r3)		# pNvmEventStatus=r3 pNvmEventStatus=r3
	lwz		r0,0(r3)		# pNvmEventStatus=r3
	se_cmpi		r0,2
	bc		0,2,.L549	# ne
#          {
#             SendServiceToRespondTo(eventId, channelId);
	.d2line		636
.Llo414:
	lbz		r3,8(r1)		# pNvmEventStatus=r3
.Llo416:
	mr		r4,r4		# channelId=r4 channelId=r4
.Llo417:
	bl		SendServiceToRespondTo
	.section	.text_vle
.L1299:
	.section	.text_vle
.L1294:
.L549:
#          }
#       }
#    }
# }
	.d2line		640
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
.L1291:
	.type		Dcm_SE_ResponseOnOneEvent,@function
	.size		Dcm_SE_ResponseOnOneEvent,.-Dcm_SE_ResponseOnOneEvent
# Number of nodes = 71

# Allocations for Dcm_SE_ResponseOnOneEvent
#	SP,8		eventId
#	?a4		pLcfgRoe
#	?a5		pNvmEventStatus
#	?a6		channelId

# Allocations for module
	.section	.text_vle
	.0byte		.L1308
	.section	.text_vle
#$$ld
.L5:
.L1716:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L1706:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\ComStack_Types.h"
.L1629:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dcm\\ssc\\make\\..\\inc\\Dcm_PBCfg_Types.h"
.L1609:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\Dcm_Lcfg.h"
.L1314:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dcm\\ssc\\make\\..\\inc\\Dcm_Int.h"
.L1309:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dcm\\ssc\\make\\..\\inc\\Dcm_LCfg_Types.h"
.L790:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dcm\\ssc\\make\\..\\src\\Dcm_Dsp_Roe.c"
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	14
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
	.uleb128	15
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
	.uleb128	16
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.uleb128	11
	.uleb128	15
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
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	21
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	22
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	23
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	24
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	25
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
	.uleb128	26
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dcm\\ssc\\make\\..\\src\\Dcm_Dsp_Roe.c"
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
.L791:
	.sleb128	2
	.4byte		.L787-.L2
	.byte		"QueueRemove"
	.byte		0
	.4byte		.L790
	.uleb128	812
	.uleb128	40
	.byte		0x1
	.4byte		.L788
	.4byte		.L789
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L790
	.uleb128	812
	.uleb128	40
	.byte		"RoeEventId"
	.byte		0
	.4byte		.L792
	.4byte		.L794
	.section	.debug_info,,n
.L795:
	.sleb128	4
	.4byte		.L790
	.uleb128	814
	.uleb128	61
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L801
.L802:
	.sleb128	4
	.4byte		.L790
	.uleb128	815
	.uleb128	69
	.byte		"pEventStatus"
	.byte		0
	.4byte		.L803
	.4byte		.L807
	.section	.debug_info,,n
	.sleb128	0
.L787:
	.section	.debug_info,,n
.L812:
	.sleb128	2
	.4byte		.L809-.L2
	.byte		"ChangeEventState"
	.byte		0
	.4byte		.L790
	.uleb128	645
	.uleb128	29
	.byte		0x1
	.4byte		.L810
	.4byte		.L811
	.sleb128	3
	.4byte		.L790
	.uleb128	645
	.uleb128	29
	.byte		"RoeEventId"
	.byte		0
	.4byte		.L792
	.4byte		.L813
	.sleb128	3
	.4byte		.L790
	.uleb128	645
	.uleb128	29
	.byte		"State"
	.byte		0
	.4byte		.L814
	.4byte		.L816
.L817:
	.sleb128	4
	.4byte		.L790
	.uleb128	647
	.uleb128	61
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L818
.L819:
	.sleb128	4
	.4byte		.L790
	.uleb128	648
	.uleb128	66
	.byte		"pLcfgEvent"
	.byte		0
	.4byte		.L820
	.4byte		.L825
.L826:
	.sleb128	4
	.4byte		.L790
	.uleb128	649
	.uleb128	69
	.byte		"pEventStatus"
	.byte		0
	.4byte		.L803
	.4byte		.L827
.L828:
	.sleb128	4
	.4byte		.L790
	.uleb128	650
	.uleb128	65
	.byte		"pEventState"
	.byte		0
	.4byte		.L829
	.4byte		.L831
.L832:
	.sleb128	4
	.4byte		.L790
	.uleb128	651
	.uleb128	45
	.byte		"oldState"
	.byte		0
	.4byte		.L833
	.4byte		.L834
	.section	.debug_info,,n
	.sleb128	0
.L809:
	.section	.debug_info,,n
.L839:
	.sleb128	5
	.4byte		.L836-.L2
	.byte		"Dcm_DspRoe_Init"
	.byte		0
	.4byte		.L790
	.uleb128	359
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L837
	.4byte		.L838
.L840:
	.sleb128	4
	.4byte		.L790
	.uleb128	361
	.uleb128	61
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L841
.L842:
	.sleb128	4
	.4byte		.L790
	.uleb128	362
	.uleb128	10
	.byte		"eventId"
	.byte		0
	.4byte		.L792
	.4byte		.L843
.L844:
	.sleb128	4
	.4byte		.L790
	.uleb128	364
	.uleb128	12
	.byte		"nvmBlockDirty"
	.byte		0
	.4byte		.L845
	.4byte		.L846
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L850
	.4byte		.L847
	.4byte		.L848
.L851:
	.sleb128	4
	.4byte		.L790
	.uleb128	368
	.uleb128	72
	.byte		"pEventStatus"
	.byte		0
	.4byte		.L803
	.4byte		.L852
.L853:
	.sleb128	4
	.4byte		.L790
	.uleb128	369
	.uleb128	69
	.byte		"pEventCfg"
	.byte		0
	.4byte		.L820
	.4byte		.L854
.L855:
	.sleb128	4
	.4byte		.L790
	.uleb128	370
	.uleb128	75
	.byte		"pNvmEventStatus"
	.byte		0
	.4byte		.L856
	.4byte		.L860
	.section	.debug_info,,n
	.sleb128	0
.L850:
	.section	.debug_info,,n
	.sleb128	0
.L836:
	.section	.debug_info,,n
.L865:
	.sleb128	5
	.4byte		.L862-.L2
	.byte		"Dcm_DspRoe_MainFunction"
	.byte		0
	.4byte		.L790
	.uleb128	424
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L863
	.4byte		.L864
	.section	.debug_info,,n
	.sleb128	0
.L862:
	.section	.debug_info,,n
.L870:
	.sleb128	7
	.4byte		.L867-.L2
	.byte		"QueueIsEmpty"
	.byte		0
	.4byte		.L790
	.uleb128	846
	.uleb128	43
	.4byte		.L845
	.byte		0x1
	.4byte		.L868
	.4byte		.L869
.L871:
	.sleb128	4
	.4byte		.L790
	.uleb128	848
	.uleb128	61
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L872
.L873:
	.sleb128	4
	.4byte		.L790
	.uleb128	849
	.uleb128	12
	.byte		"retVal"
	.byte		0
	.4byte		.L845
	.4byte		.L874
	.section	.debug_info,,n
	.sleb128	0
.L867:
	.section	.debug_info,,n
.L879:
	.sleb128	5
	.4byte		.L876-.L2
	.byte		"Dcm_DspRoe_Confirmation"
	.byte		0
	.4byte		.L790
	.uleb128	440
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L877
	.4byte		.L878
	.sleb128	3
	.4byte		.L790
	.uleb128	440
	.uleb128	22
	.byte		"ProcessingFinished"
	.byte		0
	.4byte		.L845
	.4byte		.L880
.L881:
	.sleb128	4
	.4byte		.L790
	.uleb128	442
	.uleb128	61
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L882
	.section	.debug_info,,n
	.sleb128	0
.L876:
	.section	.debug_info,,n
.L887:
	.sleb128	5
	.4byte		.L884-.L2
	.byte		"Dcm_DspRoe_SessionChange"
	.byte		0
	.4byte		.L790
	.uleb128	468
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L885
	.4byte		.L886
	.sleb128	3
	.4byte		.L790
	.uleb128	468
	.uleb128	22
	.byte		"OldSession"
	.byte		0
	.4byte		.L888
	.4byte		.L889
	.sleb128	3
	.4byte		.L790
	.uleb128	468
	.uleb128	22
	.byte		"NewSession"
	.byte		0
	.4byte		.L888
	.4byte		.L890
.L891:
	.sleb128	4
	.4byte		.L790
	.uleb128	470
	.uleb128	61
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L892
.L893:
	.sleb128	4
	.4byte		.L790
	.uleb128	471
	.uleb128	10
	.byte		"eventId"
	.byte		0
	.4byte		.L792
	.4byte		.L894
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L898
	.4byte		.L895
	.4byte		.L896
.L899:
	.sleb128	4
	.4byte		.L790
	.uleb128	475
	.uleb128	72
	.byte		"pEventStatus"
	.byte		0
	.4byte		.L803
	.4byte		.L900
	.section	.debug_info,,n
	.sleb128	0
.L898:
	.section	.debug_info,,n
	.sleb128	0
.L884:
	.section	.debug_info,,n
.L905:
	.sleb128	7
	.4byte		.L902-.L2
	.byte		"CheckEventWindowTime"
	.byte		0
	.4byte		.L790
	.uleb128	1405
	.uleb128	30
	.4byte		.L792
	.byte		0x1
	.4byte		.L903
	.4byte		.L904
	.sleb128	3
	.4byte		.L790
	.uleb128	1405
	.uleb128	30
	.byte		"pMsgContext"
	.byte		0
	.4byte		.L906
	.4byte		.L911
	.sleb128	3
	.4byte		.L790
	.uleb128	1405
	.uleb128	30
	.byte		"pErrorCode"
	.byte		0
	.4byte		.L912
	.4byte		.L915
	.sleb128	3
	.4byte		.L790
	.uleb128	1405
	.uleb128	30
	.byte		"StorageBitSet"
	.byte		0
	.4byte		.L845
	.4byte		.L916
.L917:
	.sleb128	4
	.4byte		.L790
	.uleb128	1408
	.uleb128	10
	.byte		"eventWindowTime"
	.byte		0
	.4byte		.L792
	.4byte		.L918
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L922
	.4byte		.L919
	.4byte		.L920
.L923:
	.sleb128	4
	.4byte		.L790
	.uleb128	1412
	.uleb128	64
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L924
.L925:
	.sleb128	4
	.4byte		.L790
	.uleb128	1413
	.uleb128	15
	.byte		"eventWindowTimeFound"
	.byte		0
	.4byte		.L845
	.4byte		.L926
.L927:
	.sleb128	4
	.4byte		.L790
	.uleb128	1414
	.uleb128	13
	.byte		"ewtIdx"
	.byte		0
	.4byte		.L792
	.4byte		.L928
	.section	.debug_info,,n
	.sleb128	0
.L922:
	.section	.debug_info,,n
	.sleb128	0
.L902:
	.section	.debug_info,,n
.L933:
	.sleb128	2
	.4byte		.L930-.L2
	.byte		"SubFuncStop"
	.byte		0
	.4byte		.L790
	.uleb128	993
	.uleb128	29
	.byte		0x1
	.4byte		.L931
	.4byte		.L932
	.sleb128	3
	.4byte		.L790
	.uleb128	993
	.uleb128	29
	.byte		"pMsgContext"
	.byte		0
	.4byte		.L934
	.4byte		.L936
	.sleb128	3
	.4byte		.L790
	.uleb128	993
	.uleb128	29
	.byte		"pErrorCode"
	.byte		0
	.4byte		.L912
	.4byte		.L937
	.sleb128	3
	.4byte		.L790
	.uleb128	993
	.uleb128	29
	.byte		"StorageBitSet"
	.byte		0
	.4byte		.L845
	.4byte		.L938
.L939:
	.sleb128	4
	.4byte		.L790
	.uleb128	997
	.uleb128	10
	.byte		"eventWindowTime"
	.byte		0
	.4byte		.L792
	.4byte		.L940
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L944
	.4byte		.L941
	.4byte		.L942
.L945:
	.sleb128	4
	.4byte		.L790
	.uleb128	1008
	.uleb128	64
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L946
.L947:
	.sleb128	4
	.4byte		.L790
	.uleb128	1011
	.uleb128	15
	.byte		"AllEventCleared"
	.byte		0
	.4byte		.L845
	.4byte		.L948
.L949:
	.sleb128	4
	.4byte		.L790
	.uleb128	1012
	.uleb128	13
	.byte		"RoeEventId"
	.byte		0
	.4byte		.L792
	.4byte		.L950
.L951:
	.sleb128	4
	.4byte		.L790
	.uleb128	1013
	.uleb128	15
	.byte		"nvmBlockDirty"
	.byte		0
	.4byte		.L845
	.4byte		.L952
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L956
	.4byte		.L953
	.4byte		.L954
.L957:
	.sleb128	4
	.4byte		.L790
	.uleb128	1017
	.uleb128	77
	.byte		"pEventStatus"
	.byte		0
	.4byte		.L958
	.4byte		.L961
.L962:
	.sleb128	4
	.4byte		.L790
	.uleb128	1018
	.uleb128	78
	.byte		"pNvmEventStatus"
	.byte		0
	.4byte		.L856
	.4byte		.L963
	.section	.debug_info,,n
	.sleb128	0
.L956:
	.section	.debug_info,,n
	.sleb128	0
.L944:
	.section	.debug_info,,n
	.sleb128	0
.L930:
	.section	.debug_info,,n
.L968:
	.sleb128	2
	.4byte		.L965-.L2
	.byte		"SubFuncStart"
	.byte		0
	.4byte		.L790
	.uleb128	1064
	.uleb128	29
	.byte		0x1
	.4byte		.L966
	.4byte		.L967
	.sleb128	3
	.4byte		.L790
	.uleb128	1064
	.uleb128	29
	.byte		"pMsgContext"
	.byte		0
	.4byte		.L934
	.4byte		.L969
	.sleb128	3
	.4byte		.L790
	.uleb128	1064
	.uleb128	29
	.byte		"pErrorCode"
	.byte		0
	.4byte		.L912
	.4byte		.L970
	.sleb128	3
	.4byte		.L790
	.uleb128	1064
	.uleb128	29
	.byte		"StorageBitSet"
	.byte		0
	.4byte		.L845
	.4byte		.L971
.L972:
	.sleb128	4
	.4byte		.L790
	.uleb128	1068
	.uleb128	10
	.byte		"eventWindowTime"
	.byte		0
	.4byte		.L792
	.4byte		.L973
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L977
	.4byte		.L974
	.4byte		.L975
.L978:
	.sleb128	4
	.4byte		.L790
	.uleb128	1079
	.uleb128	64
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L979
.L980:
	.sleb128	4
	.4byte		.L790
	.uleb128	1080
	.uleb128	15
	.byte		"AllEventCleared"
	.byte		0
	.4byte		.L845
	.4byte		.L981
.L982:
	.sleb128	4
	.4byte		.L790
	.uleb128	1081
	.uleb128	13
	.byte		"RoeEventId"
	.byte		0
	.4byte		.L792
	.4byte		.L983
.L984:
	.sleb128	4
	.4byte		.L790
	.uleb128	1082
	.uleb128	15
	.byte		"nvmBlockDirty"
	.byte		0
	.4byte		.L845
	.4byte		.L985
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L989
	.4byte		.L986
	.4byte		.L987
.L990:
	.sleb128	4
	.4byte		.L790
	.uleb128	1086
	.uleb128	77
	.byte		"pEventStatus"
	.byte		0
	.4byte		.L958
	.4byte		.L991
.L992:
	.sleb128	4
	.4byte		.L790
	.uleb128	1087
	.uleb128	78
	.byte		"pNvmEventStatus"
	.byte		0
	.4byte		.L856
	.4byte		.L993
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L997
	.4byte		.L994
	.4byte		.L995
	.section	.debug_info,,n
.L998:
	.sleb128	8
	.4byte		.L790
	.uleb128	1098
	.uleb128	29
	.byte		"currentSession"
	.byte		0
	.4byte		.L888
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L997:
	.section	.debug_info,,n
	.sleb128	0
.L989:
	.section	.debug_info,,n
	.sleb128	0
.L977:
	.section	.debug_info,,n
	.sleb128	0
.L965:
	.section	.debug_info,,n
.L1003:
	.sleb128	2
	.4byte		.L1000-.L2
	.byte		"SubFuncClear"
	.byte		0
	.4byte		.L790
	.uleb128	1160
	.uleb128	29
	.byte		0x1
	.4byte		.L1001
	.4byte		.L1002
	.sleb128	3
	.4byte		.L790
	.uleb128	1160
	.uleb128	29
	.byte		"pMsgContext"
	.byte		0
	.4byte		.L934
	.4byte		.L1004
	.sleb128	3
	.4byte		.L790
	.uleb128	1160
	.uleb128	29
	.byte		"pErrorCode"
	.byte		0
	.4byte		.L912
	.4byte		.L1005
.L1006:
	.sleb128	4
	.4byte		.L790
	.uleb128	1163
	.uleb128	10
	.byte		"eventWindowTime"
	.byte		0
	.4byte		.L792
	.4byte		.L1007
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1011
	.4byte		.L1008
	.4byte		.L1009
.L1012:
	.sleb128	4
	.4byte		.L790
	.uleb128	1174
	.uleb128	64
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L1013
.L1014:
	.sleb128	4
	.4byte		.L790
	.uleb128	1175
	.uleb128	13
	.byte		"RoeEventId"
	.byte		0
	.4byte		.L792
	.4byte		.L1015
.L1016:
	.sleb128	4
	.4byte		.L790
	.uleb128	1176
	.uleb128	15
	.byte		"nvmBlockDirty"
	.byte		0
	.4byte		.L845
	.4byte		.L1017
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1021
	.4byte		.L1018
	.4byte		.L1019
.L1022:
	.sleb128	4
	.4byte		.L790
	.uleb128	1180
	.uleb128	78
	.byte		"pNvmEventStatus"
	.byte		0
	.4byte		.L856
	.4byte		.L1023
	.section	.debug_info,,n
	.sleb128	0
.L1021:
	.section	.debug_info,,n
	.sleb128	0
.L1011:
	.section	.debug_info,,n
	.sleb128	0
.L1000:
	.section	.debug_info,,n
.L1031:
	.sleb128	7
	.4byte		.L1025-.L2
	.byte		"ServiceToRespondTo"
	.byte		0
	.4byte		.L790
	.uleb128	926
	.uleb128	39
	.4byte		.L1028
	.byte		0x1
	.4byte		.L1026
	.4byte		.L1027
	.sleb128	3
	.4byte		.L790
	.uleb128	926
	.uleb128	39
	.byte		"EventId"
	.byte		0
	.4byte		.L792
	.4byte		.L1032
	.sleb128	3
	.4byte		.L790
	.uleb128	926
	.uleb128	39
	.byte		"pBuffer"
	.byte		0
	.4byte		.L1033
	.4byte		.L1035
.L1036:
	.sleb128	4
	.4byte		.L790
	.uleb128	928
	.uleb128	61
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L1037
.L1038:
	.sleb128	4
	.4byte		.L790
	.uleb128	929
	.uleb128	19
	.byte		"dataSize"
	.byte		0
	.4byte		.L1028
	.4byte		.L1039
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1043
	.4byte		.L1040
	.4byte		.L1041
.L1044:
	.sleb128	4
	.4byte		.L790
	.uleb128	942
	.uleb128	69
	.byte		"pLcfgEvent"
	.byte		0
	.4byte		.L820
	.4byte		.L1045
	.section	.debug_info,,n
	.sleb128	0
.L1043:
	.section	.debug_info,,n
	.sleb128	0
.L1025:
	.section	.debug_info,,n
.L1050:
	.sleb128	2
	.4byte		.L1047-.L2
	.byte		"SubFuncReportActivatedEvents"
	.byte		0
	.4byte		.L790
	.uleb128	1208
	.uleb128	29
	.byte		0x1
	.4byte		.L1048
	.4byte		.L1049
	.sleb128	3
	.4byte		.L790
	.uleb128	1208
	.uleb128	29
	.byte		"pMsgContext"
	.byte		0
	.4byte		.L934
	.4byte		.L1051
	.sleb128	3
	.4byte		.L790
	.uleb128	1208
	.uleb128	29
	.byte		"pErrorCode"
	.byte		0
	.4byte		.L912
	.4byte		.L1052
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1056
	.4byte		.L1053
	.4byte		.L1054
.L1057:
	.sleb128	4
	.4byte		.L790
	.uleb128	1225
	.uleb128	64
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L1058
.L1059:
	.sleb128	4
	.4byte		.L790
	.uleb128	1226
	.uleb128	13
	.byte		"numActivatedEvents"
	.byte		0
	.4byte		.L792
	.4byte		.L1060
.L1061:
	.sleb128	4
	.4byte		.L790
	.uleb128	1227
	.uleb128	22
	.byte		"offset"
	.byte		0
	.4byte		.L1028
	.4byte		.L1062
.L1063:
	.sleb128	4
	.4byte		.L790
	.uleb128	1228
	.uleb128	13
	.byte		"RoeEventId"
	.byte		0
	.4byte		.L792
	.4byte		.L1064
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1068
	.4byte		.L1065
	.4byte		.L1066
.L1069:
	.sleb128	4
	.4byte		.L790
	.uleb128	1232
	.uleb128	77
	.byte		"pEventStatus"
	.byte		0
	.4byte		.L958
	.4byte		.L1070
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1074
	.4byte		.L1071
	.4byte		.L1072
.L1075:
	.sleb128	4
	.4byte		.L790
	.uleb128	1236
	.uleb128	83
	.byte		"pNvmEventStatus"
	.byte		0
	.4byte		.L1076
	.4byte		.L1079
.L1080:
	.sleb128	4
	.4byte		.L790
	.uleb128	1244
	.uleb128	37
	.byte		"storageBitMask"
	.byte		0
	.4byte		.L1081
	.4byte		.L1082
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1086
	.4byte		.L1083
	.4byte		.L1084
.L1087:
	.sleb128	4
	.4byte		.L790
	.uleb128	1248
	.uleb128	81
	.byte		"pNvmStatus"
	.byte		0
	.4byte		.L1088
	.4byte		.L1093
	.section	.debug_info,,n
	.sleb128	0
.L1086:
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1097
	.4byte		.L1094
	.4byte		.L1095
.L1098:
	.sleb128	4
	.4byte		.L790
	.uleb128	1256
	.uleb128	77
	.byte		"pEventCfg"
	.byte		0
	.4byte		.L820
	.4byte		.L1099
	.section	.debug_info,,n
	.sleb128	0
.L1097:
	.section	.debug_info,,n
	.sleb128	0
.L1074:
	.section	.debug_info,,n
	.sleb128	0
.L1068:
	.section	.debug_info,,n
	.sleb128	0
.L1056:
	.section	.debug_info,,n
	.sleb128	0
.L1047:
	.section	.debug_info,,n
.L1104:
	.sleb128	2
	.4byte		.L1101-.L2
	.byte		"SetupEvent"
	.byte		0
	.4byte		.L790
	.uleb128	725
	.uleb128	29
	.byte		0x1
	.4byte		.L1102
	.4byte		.L1103
	.sleb128	3
	.4byte		.L790
	.uleb128	725
	.uleb128	29
	.byte		"EventId"
	.byte		0
	.4byte		.L792
	.4byte		.L1105
	.sleb128	3
	.4byte		.L790
	.uleb128	725
	.uleb128	29
	.byte		"EventWindowTime"
	.byte		0
	.4byte		.L792
	.4byte		.L1106
	.sleb128	3
	.4byte		.L790
	.uleb128	725
	.uleb128	29
	.byte		"StorageBitSet"
	.byte		0
	.4byte		.L845
	.4byte		.L1107
.L1108:
	.sleb128	4
	.4byte		.L790
	.uleb128	727
	.uleb128	61
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L1109
.L1110:
	.sleb128	4
	.4byte		.L790
	.uleb128	728
	.uleb128	72
	.byte		"pNvmEventStatus"
	.byte		0
	.4byte		.L856
	.4byte		.L1111
	.section	.debug_info,,n
	.sleb128	0
.L1101:
	.section	.debug_info,,n
.L1116:
	.sleb128	2
	.4byte		.L1113-.L2
	.byte		"SubFuncOnDtcStatusChange"
	.byte		0
	.4byte		.L790
	.uleb128	1276
	.uleb128	29
	.byte		0x1
	.4byte		.L1114
	.4byte		.L1115
	.sleb128	3
	.4byte		.L790
	.uleb128	1276
	.uleb128	29
	.byte		"pMsgContext"
	.byte		0
	.4byte		.L934
	.4byte		.L1117
	.sleb128	3
	.4byte		.L790
	.uleb128	1276
	.uleb128	29
	.byte		"pErrorCode"
	.byte		0
	.4byte		.L912
	.4byte		.L1118
	.sleb128	3
	.4byte		.L790
	.uleb128	1276
	.uleb128	29
	.byte		"StorageBitSet"
	.byte		0
	.4byte		.L845
	.4byte		.L1119
.L1120:
	.sleb128	4
	.4byte		.L790
	.uleb128	1280
	.uleb128	61
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L1121
.L1122:
	.sleb128	4
	.4byte		.L790
	.uleb128	1281
	.uleb128	28
	.byte		"eventId"
	.byte		0
	.4byte		.L1081
	.4byte		.L1123
.L1124:
	.sleb128	4
	.4byte		.L790
	.uleb128	1282
	.uleb128	10
	.byte		"eventWindowTime"
	.byte		0
	.4byte		.L792
	.4byte		.L1125
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1129
	.4byte		.L1126
	.4byte		.L1127
.L1130:
	.sleb128	4
	.4byte		.L790
	.uleb128	1299
	.uleb128	70
	.byte		"pNvmStatus"
	.byte		0
	.4byte		.L1131
	.4byte		.L1133
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1137
	.4byte		.L1134
	.4byte		.L1135
.L1138:
	.sleb128	4
	.4byte		.L790
	.uleb128	1310
	.uleb128	25
	.byte		"i"
	.byte		0
	.4byte		.L1028
	.4byte		.L1139
.L1140:
	.sleb128	4
	.4byte		.L790
	.uleb128	1311
	.uleb128	31
	.byte		"serviceToRespondToLength"
	.byte		0
	.4byte		.L1141
	.4byte		.L1142
	.section	.debug_info,,n
	.sleb128	0
.L1137:
	.section	.debug_info,,n
	.sleb128	0
.L1129:
	.section	.debug_info,,n
	.sleb128	0
.L1113:
	.section	.debug_info,,n
.L1147:
	.sleb128	2
	.4byte		.L1144-.L2
	.byte		"SubFuncOnChangeOfDid"
	.byte		0
	.4byte		.L790
	.uleb128	1337
	.uleb128	29
	.byte		0x1
	.4byte		.L1145
	.4byte		.L1146
	.sleb128	3
	.4byte		.L790
	.uleb128	1337
	.uleb128	29
	.byte		"pMsgContext"
	.byte		0
	.4byte		.L934
	.4byte		.L1148
	.sleb128	3
	.4byte		.L790
	.uleb128	1337
	.uleb128	29
	.byte		"pErrorCode"
	.byte		0
	.4byte		.L912
	.4byte		.L1149
	.sleb128	3
	.4byte		.L790
	.uleb128	1337
	.uleb128	29
	.byte		"StorageBitSet"
	.byte		0
	.4byte		.L845
	.4byte		.L1150
.L1151:
	.sleb128	4
	.4byte		.L790
	.uleb128	1341
	.uleb128	10
	.byte		"eventWindowTime"
	.byte		0
	.4byte		.L792
	.4byte		.L1152
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1156
	.4byte		.L1153
	.4byte		.L1154
.L1157:
	.sleb128	4
	.4byte		.L790
	.uleb128	1352
	.uleb128	64
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L1158
.L1159:
	.sleb128	4
	.4byte		.L790
	.uleb128	1353
	.uleb128	32
	.byte		"eventTypeRecordDid"
	.byte		0
	.4byte		.L1160
	.4byte		.L1161
.L1162:
	.sleb128	4
	.4byte		.L790
	.uleb128	1354
	.uleb128	32
	.byte		"serviceToRespondToDid"
	.byte		0
	.4byte		.L1160
	.4byte		.L1163
.L1164:
	.sleb128	4
	.4byte		.L790
	.uleb128	1355
	.uleb128	13
	.byte		"RoeEventId"
	.byte		0
	.4byte		.L792
	.4byte		.L1165
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1169
	.4byte		.L1166
	.4byte		.L1167
.L1170:
	.sleb128	4
	.4byte		.L790
	.uleb128	1384
	.uleb128	25
	.byte		"i"
	.byte		0
	.4byte		.L1028
	.4byte		.L1171
.L1172:
	.sleb128	4
	.4byte		.L790
	.uleb128	1385
	.uleb128	43
	.byte		"serviceToRespondToLength"
	.byte		0
	.4byte		.L1141
	.4byte		.L1173
	.section	.debug_info,,n
	.sleb128	0
.L1169:
	.section	.debug_info,,n
	.sleb128	0
.L1156:
	.section	.debug_info,,n
	.sleb128	0
.L1144:
	.section	.debug_info,,n
.L1179:
	.sleb128	2
	.4byte		.L1176-.L2
	.byte		"CheckSubFunc"
	.byte		0
	.4byte		.L790
	.uleb128	952
	.uleb128	29
	.byte		0x1
	.4byte		.L1177
	.4byte		.L1178
	.sleb128	3
	.4byte		.L790
	.uleb128	952
	.uleb128	29
	.byte		"pMsgContext"
	.byte		0
	.4byte		.L934
	.4byte		.L1180
	.sleb128	3
	.4byte		.L790
	.uleb128	952
	.uleb128	29
	.byte		"pErrorCode"
	.byte		0
	.4byte		.L912
	.4byte		.L1181
	.sleb128	3
	.4byte		.L790
	.uleb128	952
	.uleb128	29
	.byte		"StorageBitSet"
	.byte		0
	.4byte		.L845
	.4byte		.L1182
	.section	.debug_info,,n
	.sleb128	0
.L1176:
	.section	.debug_info,,n
.L1189:
	.sleb128	9
	.4byte		.L1185-.L2
	.byte		"Dcm_ResponseOnEvent"
	.byte		0
	.4byte		.L790
	.uleb128	505
	.uleb128	32
	.4byte		.L1188
	.byte		0x1
	.byte		0x1
	.4byte		.L1186
	.4byte		.L1187
	.section	.debug_info,,n
	.sleb128	10
	.4byte		.L790
	.uleb128	505
	.uleb128	32
	.byte		"OpStatus"
	.byte		0
	.4byte		.L1190
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	3
	.4byte		.L790
	.uleb128	505
	.uleb128	32
	.byte		"pMsgContext"
	.byte		0
	.4byte		.L935
	.4byte		.L1191
	.sleb128	3
	.4byte		.L790
	.uleb128	505
	.uleb128	32
	.byte		"pErrorCode"
	.byte		0
	.4byte		.L913
	.4byte		.L1192
.L1193:
	.sleb128	4
	.4byte		.L790
	.uleb128	507
	.uleb128	30
	.byte		"storageBitSet"
	.byte		0
	.4byte		.L1194
	.4byte		.L1195
	.section	.debug_info,,n
	.sleb128	0
.L1185:
	.section	.debug_info,,n
.L1200:
	.sleb128	2
	.4byte		.L1197-.L2
	.byte		"QueuePush"
	.byte		0
	.4byte		.L790
	.uleb128	748
	.uleb128	40
	.byte		0x1
	.4byte		.L1198
	.4byte		.L1199
	.sleb128	3
	.4byte		.L790
	.uleb128	748
	.uleb128	40
	.byte		"RoeEventId"
	.byte		0
	.4byte		.L792
	.4byte		.L1201
	.sleb128	3
	.4byte		.L790
	.uleb128	748
	.uleb128	40
	.byte		"serviceToRespondToEvent"
	.byte		0
	.4byte		.L792
	.4byte		.L1202
.L1203:
	.sleb128	4
	.4byte		.L790
	.uleb128	750
	.uleb128	61
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L1204
.L1205:
	.sleb128	4
	.4byte		.L790
	.uleb128	751
	.uleb128	69
	.byte		"pEventStatus"
	.byte		0
	.4byte		.L803
	.4byte		.L1206
	.section	.debug_info,,n
	.sleb128	0
.L1197:
	.section	.debug_info,,n
.L1211:
	.sleb128	9
	.4byte		.L1208-.L2
	.byte		"Dcm_DemTriggerOnDTCStatus"
	.byte		0
	.4byte		.L790
	.uleb128	529
	.uleb128	32
	.4byte		.L1188
	.byte		0x1
	.byte		0x1
	.4byte		.L1209
	.4byte		.L1210
	.sleb128	10
	.4byte		.L790
	.uleb128	529
	.uleb128	32
	.byte		"DTC"
	.byte		0
	.4byte		.L1212
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	10
	.4byte		.L790
	.uleb128	529
	.uleb128	32
	.byte		"DTCStatusOld"
	.byte		0
	.4byte		.L1214
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.sleb128	3
	.4byte		.L790
	.uleb128	529
	.uleb128	32
	.byte		"DTCStatusNew"
	.byte		0
	.4byte		.L1214
	.4byte		.L1215
.L1216:
	.sleb128	4
	.4byte		.L790
	.uleb128	531
	.uleb128	61
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L1217
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1221
	.4byte		.L1218
	.4byte		.L1219
.L1222:
	.sleb128	4
	.4byte		.L790
	.uleb128	537
	.uleb128	31
	.byte		"eventId"
	.byte		0
	.4byte		.L1081
	.4byte		.L1223
.L1224:
	.sleb128	4
	.4byte		.L790
	.uleb128	538
	.uleb128	77
	.byte		"pNvmEventStatus"
	.byte		0
	.4byte		.L1076
	.4byte		.L1225
.L1226:
	.sleb128	4
	.4byte		.L790
	.uleb128	539
	.uleb128	35
	.byte		"channelId"
	.byte		0
	.4byte		.L1227
	.4byte		.L1229
.L1230:
	.sleb128	4
	.4byte		.L790
	.uleb128	540
	.uleb128	72
	.byte		"pNvmStatus"
	.byte		0
	.4byte		.L1088
	.4byte		.L1231
	.section	.debug_info,,n
	.sleb128	0
.L1221:
	.section	.debug_info,,n
	.sleb128	0
.L1208:
	.section	.debug_info,,n
.L1236:
	.sleb128	9
	.4byte		.L1233-.L2
	.byte		"Dcm_TriggerOnEvent"
	.byte		0
	.4byte		.L790
	.uleb128	567
	.uleb128	32
	.4byte		.L1188
	.byte		0x1
	.byte		0x1
	.4byte		.L1234
	.4byte		.L1235
	.sleb128	3
	.4byte		.L790
	.uleb128	567
	.uleb128	32
	.byte		"RoeEventId"
	.byte		0
	.4byte		.L792
	.4byte		.L1237
.L1238:
	.sleb128	4
	.4byte		.L790
	.uleb128	569
	.uleb128	61
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L1239
.L1240:
	.sleb128	4
	.4byte		.L790
	.uleb128	570
	.uleb128	19
	.byte		"retVal"
	.byte		0
	.4byte		.L1188
	.4byte		.L1241
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1245
	.4byte		.L1242
	.4byte		.L1243
.L1246:
	.sleb128	4
	.4byte		.L790
	.uleb128	590
	.uleb128	77
	.byte		"pNvmEventStatus"
	.byte		0
	.4byte		.L1076
	.4byte		.L1247
.L1248:
	.sleb128	4
	.4byte		.L790
	.uleb128	591
	.uleb128	70
	.byte		"pRxChannel"
	.byte		0
	.4byte		.L1249
	.4byte		.L1254
.L1255:
	.sleb128	4
	.4byte		.L790
	.uleb128	592
	.uleb128	74
	.byte		"pEventStatus"
	.byte		0
	.4byte		.L958
	.4byte		.L1256
	.section	.debug_info,,n
	.sleb128	0
.L1245:
	.section	.debug_info,,n
	.sleb128	0
.L1233:
	.section	.debug_info,,n
.L1261:
	.sleb128	7
	.4byte		.L1258-.L2
	.byte		"QueueRead"
	.byte		0
	.4byte		.L790
	.uleb128	794
	.uleb128	43
	.4byte		.L845
	.byte		0x1
	.4byte		.L1259
	.4byte		.L1260
	.sleb128	3
	.4byte		.L790
	.uleb128	794
	.uleb128	43
	.byte		"pRoeEventId"
	.byte		0
	.4byte		.L1033
	.4byte		.L1262
.L1263:
	.sleb128	4
	.4byte		.L790
	.uleb128	796
	.uleb128	61
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L1264
.L1265:
	.sleb128	4
	.4byte		.L790
	.uleb128	797
	.uleb128	12
	.byte		"retVal"
	.byte		0
	.4byte		.L845
	.4byte		.L1266
	.section	.debug_info,,n
	.sleb128	0
.L1258:
	.section	.debug_info,,n
.L1271:
	.sleb128	2
	.4byte		.L1268-.L2
	.byte		"SendServiceToRespondTo"
	.byte		0
	.4byte		.L790
	.uleb128	863
	.uleb128	29
	.byte		0x1
	.4byte		.L1269
	.4byte		.L1270
	.sleb128	3
	.4byte		.L790
	.uleb128	863
	.uleb128	29
	.byte		"EventId"
	.byte		0
	.4byte		.L792
	.4byte		.L1272
	.sleb128	3
	.4byte		.L790
	.uleb128	863
	.uleb128	29
	.byte		"ChannelId"
	.byte		0
	.4byte		.L1228
	.4byte		.L1273
.L1274:
	.sleb128	4
	.4byte		.L790
	.uleb128	865
	.uleb128	61
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L1275
.L1276:
	.sleb128	4
	.4byte		.L790
	.uleb128	866
	.uleb128	22
	.byte		"bufReqRetVal"
	.byte		0
	.4byte		.L1277
	.4byte		.L1279
.L1280:
	.sleb128	8
	.4byte		.L790
	.uleb128	867
	.uleb128	18
	.byte		"dataSize"
	.byte		0
	.4byte		.L1281
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L1282:
	.sleb128	8
	.4byte		.L790
	.uleb128	868
	.uleb128	16
	.byte		"pduInfo"
	.byte		0
	.4byte		.L1283
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L1285:
	.sleb128	4
	.4byte		.L790
	.uleb128	871
	.uleb128	24
	.byte		"serviceToRespondToLength"
	.byte		0
	.4byte		.L1286
	.4byte		.L1287
	.section	.debug_info,,n
	.sleb128	0
.L1268:
	.section	.debug_info,,n
.L1292:
	.sleb128	5
	.4byte		.L1289-.L2
	.byte		"Dcm_SE_ResponseOnOneEvent"
	.byte		0
	.4byte		.L790
	.uleb128	615
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1290
	.4byte		.L1291
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1296
	.4byte		.L1293
	.4byte		.L1294
.L1297:
	.sleb128	8
	.4byte		.L790
	.uleb128	620
	.uleb128	13
	.byte		"eventId"
	.byte		0
	.4byte		.L792
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L1301
	.4byte		.L1298
	.4byte		.L1299
.L1302:
	.sleb128	4
	.4byte		.L790
	.uleb128	624
	.uleb128	67
	.byte		"pLcfgRoe"
	.byte		0
	.4byte		.L796
	.4byte		.L1303
.L1304:
	.sleb128	4
	.4byte		.L790
	.uleb128	625
	.uleb128	80
	.byte		"pNvmEventStatus"
	.byte		0
	.4byte		.L1076
	.4byte		.L1305
.L1306:
	.sleb128	4
	.4byte		.L790
	.uleb128	627
	.uleb128	38
	.byte		"channelId"
	.byte		0
	.4byte		.L1227
	.4byte		.L1307
	.section	.debug_info,,n
	.sleb128	0
.L1301:
	.section	.debug_info,,n
	.sleb128	0
.L1296:
	.section	.debug_info,,n
	.sleb128	0
.L1289:
	.section	.debug_info,,n
.L1308:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1309
	.uleb128	795
	.uleb128	49
	.byte		"Dcm_LCfg"
	.byte		0
	.4byte		.L1310
	.section	.debug_info,,n
.L1313:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1314
	.uleb128	673
	.uleb128	54
	.byte		"Dcm_pPbCfg"
	.byte		0
	.4byte		.L1315
	.0byte		.L1313
.L1319:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1314
	.uleb128	692
	.uleb128	32
	.byte		"Dcm_ResponseOnEvent_EVENT_STARTED"
	.byte		0
	.4byte		.L1081
.L1320:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1314
	.uleb128	698
	.uleb128	32
	.byte		"Dcm_ResponseOnEvent_EVENT_STOPPED"
	.byte		0
	.4byte		.L1081
.L1321:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1314
	.uleb128	704
	.uleb128	32
	.byte		"Dcm_ResponseOnEvent_EVENT_CLEARED"
	.byte		0
	.4byte		.L1081
.L1322:
	.sleb128	8
	.4byte		.L790
	.uleb128	171
	.uleb128	40
	.byte		"RoeStatus"
	.byte		0
	.4byte		.L1323
	.sleb128	5
	.byte		0x3
	.4byte		RoeStatus
	.lcomm		RoeStatus,8,1
.L1325:
	.sleb128	8
	.4byte		.L790
	.uleb128	186
	.uleb128	28
	.byte		"ServiceToRespondToBuffer"
	.byte		0
	.4byte		.L1326
	.sleb128	5
	.byte		0x3
	.4byte		ServiceToRespondToBuffer
	.lcomm		ServiceToRespondToBuffer,3,2
	.section	.debug_info,,n
.L1324:
	.sleb128	12
	.4byte		.L1309
	.uleb128	683
	.uleb128	14
	.4byte		.L1328-.L2
	.byte		"Dcm_RoeStatusType_Tag"
	.byte		0
	.uleb128	8
	.section	.debug_info,,n
.L461:
	.sleb128	13
	.byte		"queue_write"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L462:
	.sleb128	13
	.byte		"queue_read"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L463:
	.sleb128	13
	.byte		"wait_confirmation"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L464:
	.sleb128	13
	.byte		"service_to_respond_to_event"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L465:
	.sleb128	13
	.byte		"inter_msg_timer"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L466:
	.sleb128	13
	.byte		"inter_msg_timer_elapsed"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L1328:
.L1312:
	.sleb128	12
	.4byte		.L1309
	.uleb128	683
	.uleb128	14
	.4byte		.L1329-.L2
	.byte		"Dcm_LinkTimeConfigType_Tag"
	.byte		0
	.uleb128	180
.L407:
	.sleb128	13
	.byte		"maxNumberOfRecords"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L408:
	.sleb128	13
	.byte		"rte_unconnected"
	.byte		0
	.4byte		.L1188
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L409:
	.sleb128	13
	.byte		"power_down_time"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L410:
	.sleb128	13
	.byte		"delay_boot_inv_key"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L411:
	.sleb128	13
	.byte		"timer_s3_server"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L412:
	.sleb128	13
	.byte		"resp_on_second_declined_request"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L413:
	.sleb128	13
	.byte		"periodic_transmission_rates"
	.byte		0
	.4byte		.L1330
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L414:
	.sleb128	13
	.byte		"paged_buffer_timeout"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L415:
	.sleb128	13
	.byte		"p_response_buffer"
	.byte		0
	.4byte		.L1033
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L416:
	.sleb128	13
	.byte		"sourceBufferSize"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L417:
	.sleb128	13
	.byte		"p_dddid_sourceBuffer"
	.byte		0
	.4byte		.L1033
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L418:
	.sleb128	13
	.byte		"num_sessions"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L419:
	.sleb128	13
	.byte		"sessions"
	.byte		0
	.4byte		.L1332
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L420:
	.sleb128	13
	.byte		"num_securities"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L421:
	.sleb128	13
	.byte		"securities"
	.byte		0
	.4byte		.L1337
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L422:
	.sleb128	13
	.byte		"num_service_tables"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L423:
	.sleb128	13
	.byte		"service_tables"
	.byte		0
	.4byte		.L1342
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L424:
	.sleb128	13
	.byte		"max_did_to_read"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L425:
	.sleb128	13
	.byte		"p_requested_dids"
	.byte		0
	.4byte		.L1347
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L426:
	.sleb128	13
	.byte		"num_dids"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L427:
	.sleb128	13
	.byte		"dids"
	.byte		0
	.4byte		.L1351
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L428:
	.sleb128	13
	.byte		"num_periodic_dynamic_dids"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L429:
	.sleb128	13
	.byte		"periodicDynamicDids"
	.byte		0
	.4byte		.L1356
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L430:
	.sleb128	13
	.byte		"requested_periodicDids"
	.byte		0
	.4byte		.L1361
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L431:
	.sleb128	13
	.byte		"check_per_source_did"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L432:
	.sleb128	13
	.byte		"num_did_ranges"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	86
	.byte		0x1
.L433:
	.sleb128	13
	.byte		"p_did_ranges"
	.byte		0
	.4byte		.L1363
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L434:
	.sleb128	13
	.byte		"num_pids"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L435:
	.sleb128	13
	.byte		"p_pids"
	.byte		0
	.4byte		.L1368
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L436:
	.sleb128	13
	.byte		"num_req_ctrl"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
.L437:
	.sleb128	13
	.byte		"p_req_ctrl"
	.byte		0
	.4byte		.L1373
	.sleb128	2
	.byte		0x23
	.uleb128	104
	.byte		0x1
.L438:
	.sleb128	13
	.byte		"p_roe"
	.byte		0
	.4byte		.L796
	.sleb128	2
	.byte		0x23
	.uleb128	108
	.byte		0x1
.L439:
	.sleb128	13
	.byte		"num_vehicle_info"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
.L440:
	.sleb128	13
	.byte		"p_vehicle_info"
	.byte		0
	.4byte		.L1378
	.sleb128	2
	.byte		0x23
	.uleb128	116
	.byte		0x1
.L441:
	.sleb128	13
	.byte		"num_routine_ctrl"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
.L442:
	.sleb128	13
	.byte		"p_routine_ctrl"
	.byte		0
	.4byte		.L1383
	.sleb128	2
	.byte		0x23
	.uleb128	124
	.byte		0x1
.L443:
	.sleb128	13
	.byte		"num_freezeframe_records"
	.byte		0
	.4byte		.L792
	.sleb128	3
	.byte		0x23
	.uleb128	128
	.byte		0x1
.L444:
	.sleb128	13
	.byte		"p_freezeframe_records"
	.byte		0
	.4byte		.L1388
	.sleb128	3
	.byte		0x23
	.uleb128	132
	.byte		0x1
.L445:
	.sleb128	13
	.byte		"num_extendeddata_records"
	.byte		0
	.4byte		.L792
	.sleb128	3
	.byte		0x23
	.uleb128	136
	.byte		0x1
.L446:
	.sleb128	13
	.byte		"p_extendeddata_records"
	.byte		0
	.4byte		.L1388
	.sleb128	3
	.byte		0x23
	.uleb128	140
	.byte		0x1
.L447:
	.sleb128	13
	.byte		"index_obdedr_start"
	.byte		0
	.4byte		.L792
	.sleb128	3
	.byte		0x23
	.uleb128	144
	.byte		0x1
.L448:
	.sleb128	13
	.byte		"num_cb_req_service"
	.byte		0
	.4byte		.L792
	.sleb128	3
	.byte		0x23
	.uleb128	145
	.byte		0x1
.L449:
	.sleb128	13
	.byte		"p_cb_req_services"
	.byte		0
	.4byte		.L1390
	.sleb128	3
	.byte		0x23
	.uleb128	148
	.byte		0x1
.L450:
	.sleb128	13
	.byte		"p_write_memory"
	.byte		0
	.4byte		.L1395
	.sleb128	3
	.byte		0x23
	.uleb128	152
	.byte		0x1
.L451:
	.sleb128	13
	.byte		"p_read_memory"
	.byte		0
	.4byte		.L1395
	.sleb128	3
	.byte		0x23
	.uleb128	156
	.byte		0x1
.L452:
	.sleb128	13
	.byte		"p_software_download"
	.byte		0
	.4byte		.L1400
	.sleb128	3
	.byte		0x23
	.uleb128	160
	.byte		0x1
.L453:
	.sleb128	13
	.byte		"p_routine_state"
	.byte		0
	.4byte		.L1405
	.sleb128	3
	.byte		0x23
	.uleb128	164
	.byte		0x1
.L454:
	.sleb128	13
	.byte		"p_ddid_init_info"
	.byte		0
	.4byte		.L1409
	.sleb128	3
	.byte		0x23
	.uleb128	168
	.byte		0x1
.L455:
	.sleb128	13
	.byte		"p_get_periodic_data_trigger"
	.byte		0
	.4byte		.L1414
	.sleb128	3
	.byte		0x23
	.uleb128	172
	.byte		0x1
.L456:
	.sleb128	13
	.byte		"p_transmit_periodic_data_trigger"
	.byte		0
	.4byte		.L1417
	.sleb128	3
	.byte		0x23
	.uleb128	176
	.byte		0x1
	.sleb128	0
.L1329:
.L1350:
	.sleb128	12
	.4byte		.L1309
	.uleb128	683
	.uleb128	14
	.4byte		.L1420-.L2
	.byte		"Dcm_Cfg_RequestedDidInfoType_Tag"
	.byte		0
	.uleb128	8
.L405:
	.sleb128	13
	.byte		"identifier"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L406:
	.sleb128	13
	.byte		"did_type"
	.byte		0
	.4byte		.L1421
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1420:
.L1413:
	.sleb128	12
	.4byte		.L1309
	.uleb128	652
	.uleb128	14
	.4byte		.L1423-.L2
	.byte		"Dcm_Cfg_DDidInitInfoType_Tag"
	.byte		0
	.uleb128	16
.L401:
	.sleb128	13
	.byte		"ddid_init_policy"
	.byte		0
	.4byte		.L1424
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L402:
	.sleb128	13
	.byte		"ddprid_init_policy"
	.byte		0
	.4byte		.L1426
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L403:
	.sleb128	13
	.byte		"ddprid_nvm_hash_rom"
	.byte		0
	.4byte		.L1212
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L404:
	.sleb128	13
	.byte		"p_ddprid_nvm_hash_ram"
	.byte		0
	.4byte		.L1428
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L1423:
.L800:
	.sleb128	12
	.4byte		.L1309
	.uleb128	477
	.uleb128	1
	.4byte		.L1429-.L2
	.byte		"Dcm_Cfg_RoeType_Tag"
	.byte		0
	.uleb128	28
.L392:
	.sleb128	13
	.byte		"dtc_status_change_event"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L393:
	.sleb128	13
	.byte		"num_event"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L394:
	.sleb128	13
	.byte		"num_event_window_time"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L395:
	.sleb128	13
	.byte		"inter_msg_timeout"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L396:
	.sleb128	13
	.byte		"p_event_cfg"
	.byte		0
	.4byte		.L820
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L397:
	.sleb128	13
	.byte		"p_event_window_times"
	.byte		0
	.4byte		.L1430
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L398:
	.sleb128	13
	.byte		"p_nvm_status"
	.byte		0
	.4byte		.L1131
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L399:
	.sleb128	13
	.byte		"p_event_status"
	.byte		0
	.4byte		.L803
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L400:
	.sleb128	13
	.byte		"p_nvm_event_status"
	.byte		0
	.4byte		.L856
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L1429:
.L806:
	.sleb128	12
	.4byte		.L1309
	.uleb128	477
	.uleb128	1
	.4byte		.L1435-.L2
	.byte		"Dcm_Cfg_RoeEventStatusType_Tag"
	.byte		0
	.uleb128	8
.L389:
	.sleb128	13
	.byte		"state"
	.byte		0
	.4byte		.L814
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L390:
	.sleb128	13
	.byte		"queue_next"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L391:
	.sleb128	13
	.byte		"queue_previous"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
	.sleb128	0
.L1435:
.L1434:
	.sleb128	12
	.4byte		.L1309
	.uleb128	477
	.uleb128	1
	.4byte		.L1436-.L2
	.byte		"Dcm_Cfg_RoeEventWindowTimeType_Tag"
	.byte		0
	.uleb128	2
.L387:
	.sleb128	13
	.byte		"type"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L388:
	.sleb128	13
	.byte		"evaluate_storage_state"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L1436:
.L824:
	.sleb128	12
	.4byte		.L1309
	.uleb128	477
	.uleb128	1
	.4byte		.L1437-.L2
	.byte		"Dcm_Cfg_RoeEventType_Tag"
	.byte		0
	.uleb128	8
.L384:
	.sleb128	13
	.byte		"initial_event_state_stopped"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L385:
	.sleb128	13
	.byte		"did"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L386:
	.sleb128	13
	.byte		"p_schm_mode_switch"
	.byte		0
	.4byte		.L1438
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1437:
.L1404:
	.sleb128	12
	.4byte		.L1309
	.uleb128	477
	.uleb128	1
	.4byte		.L1441-.L2
	.byte		"Dcm_Cfg_SoftwareDownloadType_Tag"
	.byte		0
	.uleb128	12
.L381:
	.sleb128	13
	.byte		"RequestDownloadFunc"
	.byte		0
	.4byte		.L1442
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	13
	.byte		"WriteMemoryFunc"
	.byte		0
	.4byte		.L1446
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L383:
	.sleb128	13
	.byte		"RequestTransferExitFunc"
	.byte		0
	.4byte		.L1451
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L1441:
.L1399:
	.sleb128	12
	.4byte		.L1309
	.uleb128	477
	.uleb128	1
	.4byte		.L1455-.L2
	.byte		"Dcm_Cfg_MemoryType_Tag"
	.byte		0
	.uleb128	16
.L377:
	.sleb128	13
	.byte		"use_memory_id"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L378:
	.sleb128	13
	.byte		"MemoryOperationFunc"
	.byte		0
	.4byte		.L1446
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L379:
	.sleb128	13
	.byte		"p_memory_ranges"
	.byte		0
	.4byte		.L1456
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L380:
	.sleb128	13
	.byte		"num_memory_ranges"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L1455:
.L1460:
	.sleb128	12
	.4byte		.L1309
	.uleb128	477
	.uleb128	1
	.4byte		.L1461-.L2
	.byte		"Dcm_Cfg_MemoryRangeType_Tag"
	.byte		0
	.uleb128	20
.L372:
	.sleb128	13
	.byte		"memid"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L373:
	.sleb128	13
	.byte		"low"
	.byte		0
	.4byte		.L1212
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L374:
	.sleb128	13
	.byte		"high"
	.byte		0
	.4byte		.L1212
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L375:
	.sleb128	13
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L376:
	.sleb128	13
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L1462
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L1461:
.L1394:
	.sleb128	12
	.4byte		.L1309
	.uleb128	477
	.uleb128	1
	.4byte		.L1466-.L2
	.byte		"Dcm_Cfg_CallbackReqServType_Tag"
	.byte		0
	.uleb128	8
.L370:
	.sleb128	13
	.byte		"start_protocol"
	.byte		0
	.4byte		.L1467
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L371:
	.sleb128	13
	.byte		"stop_protocol"
	.byte		0
	.4byte		.L1471
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1466:
.L1387:
	.sleb128	12
	.4byte		.L1309
	.uleb128	477
	.uleb128	1
	.4byte		.L1474-.L2
	.byte		"Dcm_Cfg_RoutineCtrlType_Tag"
	.byte		0
	.uleb128	28
.L360:
	.sleb128	13
	.byte		"identifier"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L361:
	.sleb128	13
	.byte		"StartFunc"
	.byte		0
	.4byte		.L1475
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L362:
	.sleb128	13
	.byte		"StopFunc"
	.byte		0
	.4byte		.L1478
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L363:
	.sleb128	13
	.byte		"RequestResultsFunc"
	.byte		0
	.4byte		.L1481
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L364:
	.sleb128	13
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L365:
	.sleb128	13
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L366:
	.sleb128	13
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L1462
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L1474:
.L1360:
	.sleb128	12
	.4byte		.L1309
	.uleb128	416
	.uleb128	1
	.4byte		.L1484-.L2
	.byte		"Dcm_Cfg_PeriodicDynamicDidType_Tag"
	.byte		0
	.uleb128	24
.L353:
	.sleb128	13
	.byte		"identifier"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L354:
	.sleb128	13
	.byte		"size"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L355:
	.sleb128	13
	.byte		"pDDDidInfo"
	.byte		0
	.4byte		.L1485
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L356:
	.sleb128	13
	.byte		"pDataSourcesRead"
	.byte		0
	.4byte		.L1490
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L357:
	.sleb128	13
	.byte		"pDataSourcesDefine"
	.byte		0
	.4byte		.L1495
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L358:
	.sleb128	13
	.byte		"pNumberOfDefinedSources"
	.byte		0
	.4byte		.L1033
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L359:
	.sleb128	13
	.byte		"sample_data"
	.byte		0
	.4byte		.L1497
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L1484:
.L1500:
	.sleb128	12
	.4byte		.L1309
	.uleb128	416
	.uleb128	1
	.4byte		.L1501-.L2
	.byte		"Dcm_Cfg_PeriodicSampleDataType_Tag"
	.byte		0
	.uleb128	8
.L350:
	.sleb128	13
	.byte		"buffer_data_ready"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L351:
	.sleb128	13
	.byte		"buffer_size"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L352:
	.sleb128	13
	.byte		"data_buffer"
	.byte		0
	.4byte		.L1034
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1501:
.L1489:
	.sleb128	12
	.4byte		.L1309
	.uleb128	416
	.uleb128	1
	.4byte		.L1502-.L2
	.byte		"Dcm_Cfg_DDDDidInfoType_Tag"
	.byte		0
	.uleb128	12
.L347:
	.sleb128	13
	.byte		"max_no_of_requested_sources"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L348:
	.sleb128	13
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L349:
	.sleb128	13
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L1502:
.L1494:
	.sleb128	12
	.4byte		.L1309
	.uleb128	416
	.uleb128	1
	.4byte		.L1503-.L2
	.byte		"Dcm_Cfg_DDDDidSourceType_Tag"
	.byte		0
	.uleb128	20
.L342:
	.sleb128	13
	.byte		"record_type"
	.byte		0
	.4byte		.L1504
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L343:
	.sleb128	13
	.byte		"memory_id"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L344:
	.sleb128	13
	.byte		"address"
	.byte		0
	.4byte		.L1212
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L345:
	.sleb128	13
	.byte		"size"
	.byte		0
	.4byte		.L1212
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L346:
	.sleb128	13
	.byte		"pDidRead"
	.byte		0
	.4byte		.L1506
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L1503:
.L1367:
	.sleb128	12
	.4byte		.L1309
	.uleb128	274
	.uleb128	1
	.4byte		.L1510-.L2
	.byte		"Dcm_Cfg_DidRangeType_Tag"
	.byte		0
	.uleb128	20
.L336:
	.sleb128	13
	.byte		"lower_limit"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L337:
	.sleb128	13
	.byte		"upper_limit"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L338:
	.sleb128	13
	.byte		"max_data_length"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L339:
	.sleb128	13
	.byte		"IsDidAvailableFunc"
	.byte		0
	.4byte		.L1511
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L340:
	.sleb128	13
	.byte		"p_did_range_read"
	.byte		0
	.4byte		.L1517
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L341:
	.sleb128	13
	.byte		"p_did_range_write"
	.byte		0
	.4byte		.L1522
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L1510:
.L1526:
	.sleb128	12
	.4byte		.L1309
	.uleb128	274
	.uleb128	1
	.4byte		.L1527-.L2
	.byte		"Dcm_Cfg_DidRangeWriteType_Tag"
	.byte		0
	.uleb128	16
.L332:
	.sleb128	13
	.byte		"WriteDidDataFunc"
	.byte		0
	.4byte		.L1528
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L333:
	.sleb128	13
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L334:
	.sleb128	13
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L335:
	.sleb128	13
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L1462
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L1527:
.L1521:
	.sleb128	12
	.4byte		.L1309
	.uleb128	274
	.uleb128	1
	.4byte		.L1532-.L2
	.byte		"Dcm_Cfg_DidRangeReadType_Tag"
	.byte		0
	.uleb128	20
.L327:
	.sleb128	13
	.byte		"ReadDidDataFunc"
	.byte		0
	.4byte		.L1533
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L328:
	.sleb128	13
	.byte		"ReadDidDataLengthFunc"
	.byte		0
	.4byte		.L1537
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L329:
	.sleb128	13
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L330:
	.sleb128	13
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L331:
	.sleb128	13
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L1462
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L1532:
.L1355:
	.sleb128	12
	.4byte		.L1309
	.uleb128	274
	.uleb128	1
	.4byte		.L1541-.L2
	.byte		"Dcm_Cfg_DidType_Tag"
	.byte		0
	.uleb128	28
.L318:
	.sleb128	13
	.byte		"identifier"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L319:
	.sleb128	13
	.byte		"size"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L320:
	.sleb128	13
	.byte		"scalingInfoSize"
	.byte		0
	.4byte		.L1028
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L321:
	.sleb128	13
	.byte		"pDidWrite"
	.byte		0
	.4byte		.L1542
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L322:
	.sleb128	13
	.byte		"pDidRead"
	.byte		0
	.4byte		.L1547
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L323:
	.sleb128	13
	.byte		"pDidControl"
	.byte		0
	.4byte		.L1548
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L324:
	.sleb128	13
	.byte		"GetScalingInformationFunc"
	.byte		0
	.4byte		.L1553
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L325:
	.sleb128	13
	.byte		"RetStatus"
	.byte		0
	.4byte		.L1188
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L326:
	.sleb128	13
	.byte		"hasFixedLength"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
	.sleb128	0
.L1541:
.L1552:
	.sleb128	12
	.4byte		.L1309
	.uleb128	274
	.uleb128	1
	.4byte		.L1557-.L2
	.byte		"Dcm_Cfg_DidControlType_Tag"
	.byte		0
	.uleb128	32
.L308:
	.sleb128	13
	.byte		"control_enable_mask_record_size"
	.byte		0
	.4byte		.L1028
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L309:
	.sleb128	13
	.byte		"p_under_control"
	.byte		0
	.4byte		.L1033
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L310:
	.sleb128	13
	.byte		"rctecu_index"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L311:
	.sleb128	13
	.byte		"rtd_index"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L312:
	.sleb128	13
	.byte		"fcs_index"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L313:
	.sleb128	13
	.byte		"sta_index"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L314:
	.sleb128	13
	.byte		"ReadDataFunc"
	.byte		0
	.4byte		.L1558
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L315:
	.sleb128	13
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L316:
	.sleb128	13
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L317:
	.sleb128	13
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L1462
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L1557:
.L1509:
	.sleb128	12
	.4byte		.L1309
	.uleb128	274
	.uleb128	1
	.4byte		.L1562-.L2
	.byte		"Dcm_Cfg_DidReadType_Tag"
	.byte		0
	.uleb128	24
.L302:
	.sleb128	13
	.byte		"ConditionCheckReadFunc"
	.byte		0
	.4byte		.L1563
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L303:
	.sleb128	13
	.byte		"ReadDataLengthFunc"
	.byte		0
	.4byte		.L1567
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L304:
	.sleb128	13
	.byte		"ReadDataFunc"
	.byte		0
	.4byte		.L1558
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L305:
	.sleb128	13
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L306:
	.sleb128	13
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L307:
	.sleb128	13
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L1462
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L1562:
.L1546:
	.sleb128	12
	.4byte		.L1309
	.uleb128	274
	.uleb128	1
	.4byte		.L1571-.L2
	.byte		"Dcm_Cfg_DidWriteType_Tag"
	.byte		0
	.uleb128	16
.L298:
	.sleb128	13
	.byte		"WriteDataFunc"
	.byte		0
	.4byte		.L1572
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L299:
	.sleb128	13
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L300:
	.sleb128	13
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L301:
	.sleb128	13
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L1462
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L1571:
.L1372:
	.sleb128	12
	.4byte		.L1309
	.uleb128	274
	.uleb128	1
	.4byte		.L1576-.L2
	.byte		"Dcm_Cfg_PidType_Tag"
	.byte		0
	.uleb128	24
.L291:
	.sleb128	13
	.byte		"identifier"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L292:
	.sleb128	13
	.byte		"size"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L293:
	.sleb128	13
	.byte		"service_type"
	.byte		0
	.4byte		.L1577
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L294:
	.sleb128	13
	.byte		"num_support_infos"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L295:
	.sleb128	13
	.byte		"p_support_info"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L296:
	.sleb128	13
	.byte		"num_pidDatas"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L297:
	.sleb128	13
	.byte		"p_pidDatas"
	.byte		0
	.4byte		.L1579
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L1576:
.L1583:
	.sleb128	12
	.4byte		.L1309
	.uleb128	274
	.uleb128	1
	.4byte		.L1584-.L2
	.byte		"Dcm_Cfg_PidDataType_Tag"
	.byte		0
	.uleb128	8
.L288:
	.sleb128	13
	.byte		"data_Pos"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L289:
	.sleb128	13
	.byte		"size"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L290:
	.sleb128	13
	.byte		"ReadDataFunc"
	.byte		0
	.4byte		.L1585
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1584:
.L1382:
	.sleb128	12
	.4byte		.L1309
	.uleb128	213
	.uleb128	1
	.4byte		.L1588-.L2
	.byte		"Dcm_Cfg_VehicleInfoType_Tag"
	.byte		0
	.uleb128	8
.L285:
	.sleb128	13
	.byte		"identifier"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L286:
	.sleb128	13
	.byte		"size"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L287:
	.sleb128	13
	.byte		"GetInfotypeValueDataFunc"
	.byte		0
	.4byte		.L1589
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1588:
.L1377:
	.sleb128	12
	.4byte		.L1309
	.uleb128	213
	.uleb128	1
	.4byte		.L1592-.L2
	.byte		"Dcm_Cfg_ReqCtrlType_Tag"
	.byte		0
	.uleb128	12
.L281:
	.sleb128	13
	.byte		"identifier"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L282:
	.sleb128	13
	.byte		"in_size"
	.byte		0
	.4byte		.L1028
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L283:
	.sleb128	13
	.byte		"out_size"
	.byte		0
	.4byte		.L1028
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L284:
	.sleb128	13
	.byte		"RequestControlFunc"
	.byte		0
	.4byte		.L1593
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L1592:
.L1341:
	.sleb128	12
	.4byte		.L1309
	.uleb128	213
	.uleb128	1
	.4byte		.L1597-.L2
	.byte		"Dcm_Cfg_SecurityType_Tag"
	.byte		0
	.uleb128	24
.L273:
	.sleb128	13
	.byte		"security_level"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L274:
	.sleb128	13
	.byte		"GetSeedFunc"
	.byte		0
	.4byte		.L1598
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L275:
	.sleb128	13
	.byte		"CompareKeyFunc"
	.byte		0
	.4byte		.L1602
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L276:
	.sleb128	13
	.byte		"num_max_att_delay"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L277:
	.sleb128	13
	.byte		"delay_inv_key"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L278:
	.sleb128	13
	.byte		"num_seed"
	.byte		0
	.4byte		.L1028
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L279:
	.sleb128	13
	.byte		"num_key"
	.byte		0
	.4byte		.L1028
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L280:
	.sleb128	13
	.byte		"address_size"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L1597:
.L1336:
	.sleb128	12
	.4byte		.L1309
	.uleb128	213
	.uleb128	1
	.4byte		.L1606-.L2
	.byte		"Dcm_Cfg_SessionType_Tag"
	.byte		0
	.uleb128	16
.L267:
	.sleb128	13
	.byte		"session_level"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L268:
	.sleb128	13
	.byte		"p2_server_max"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L269:
	.sleb128	13
	.byte		"p2_star_server_max"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L270:
	.sleb128	13
	.byte		"client_p2_server_max"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L271:
	.sleb128	13
	.byte		"client_p2_star_server_max"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L272:
	.sleb128	13
	.byte		"jump_to_bootloader"
	.byte		0
	.4byte		.L1607
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L1606:
.L1346:
	.sleb128	12
	.4byte		.L1609
	.uleb128	67
	.uleb128	14
	.4byte		.L1610-.L2
	.byte		"Dcm_Cfg_ServiceTableType_Tag"
	.byte		0
	.uleb128	8
.L264:
	.sleb128	13
	.byte		"identifier"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L265:
	.sleb128	13
	.byte		"num_services"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L266:
	.sleb128	13
	.byte		"p_identifier_table"
	.byte		0
	.4byte		.L1611
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1610:
.L1615:
	.sleb128	12
	.4byte		.L1609
	.uleb128	67
	.uleb128	14
	.4byte		.L1616-.L2
	.byte		"Dcm_Cfg_ServiceType_Tag"
	.byte		0
	.uleb128	32
.L256:
	.sleb128	13
	.byte		"service_id"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L257:
	.sleb128	13
	.byte		"trigger_func"
	.byte		0
	.4byte		.L1617
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L258:
	.sleb128	13
	.byte		"possible_suppress_bit"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L259:
	.sleb128	13
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L260:
	.sleb128	13
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L261:
	.sleb128	13
	.byte		"num_subServices"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L262:
	.sleb128	13
	.byte		"p_subServices"
	.byte		0
	.4byte		.L1621
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L263:
	.sleb128	13
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L1462
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L1616:
.L1625:
	.sleb128	12
	.4byte		.L1609
	.uleb128	67
	.uleb128	14
	.4byte		.L1626-.L2
	.byte		"Dcm_Cfg_SubServiceType_Tag"
	.byte		0
	.uleb128	20
.L251:
	.sleb128	13
	.byte		"sub_service_id"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L252:
	.sleb128	13
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L253:
	.sleb128	13
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L254:
	.sleb128	13
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L1462
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L255:
	.sleb128	13
	.byte		"trigger_func"
	.byte		0
	.4byte		.L1617
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L1626:
.L859:
	.sleb128	12
	.4byte		.L1609
	.uleb128	67
	.uleb128	14
	.4byte		.L1627-.L2
	.byte		"Dcm_Cfg_RoeNvmEventStatusType_Tag"
	.byte		0
	.uleb128	8
.L170:
	.sleb128	13
	.byte		"stored_state"
	.byte		0
	.4byte		.L814
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L171:
	.sleb128	13
	.byte		"event_window_time"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L172:
	.sleb128	13
	.byte		"rx_pdu_id"
	.byte		0
	.4byte		.L1228
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L1627:
.L1092:
	.sleb128	12
	.4byte		.L1609
	.uleb128	67
	.uleb128	14
	.4byte		.L1628-.L2
	.byte		"Dcm_Cfg_RoeNvmStatusType_Tag"
	.byte		0
	.uleb128	1
.L169:
	.sleb128	13
	.byte		"dtc_status_mask"
	.byte		0
	.4byte		.L1214
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L1628:
.L1318:
	.sleb128	12
	.4byte		.L1629
	.uleb128	247
	.uleb128	1
	.4byte		.L1630-.L2
	.byte		"Dcm_ConfigType_Tag"
	.byte		0
	.uleb128	52
.L154:
	.sleb128	13
	.byte		"first_periodic_tx_confirmation_id_value"
	.byte		0
	.4byte		.L1228
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L155:
	.sleb128	13
	.byte		"first_roe_tx_confirmation_id_value"
	.byte		0
	.4byte		.L1228
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L156:
	.sleb128	13
	.byte		"first_invalid_tx_confirmation_id_value"
	.byte		0
	.4byte		.L1228
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L157:
	.sleb128	13
	.byte		"num_rx_channels"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L158:
	.sleb128	13
	.byte		"p_rx_channels"
	.byte		0
	.4byte		.L1249
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L159:
	.sleb128	13
	.byte		"p_tx_channels"
	.byte		0
	.4byte		.L1631
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L160:
	.sleb128	13
	.byte		"p_periodic_tx_lookup_table"
	.byte		0
	.4byte		.L1636
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L161:
	.sleb128	13
	.byte		"max_num_resp_pend"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L162:
	.sleb128	13
	.byte		"p_pids_support_01"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L163:
	.sleb128	13
	.byte		"p_pids_support_02"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L164:
	.sleb128	13
	.byte		"p_req_ctrl_support"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L165:
	.sleb128	13
	.byte		"p_vehicle_info_type_support"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L166:
	.sleb128	13
	.byte		"p_service_table_support"
	.byte		0
	.4byte		.L1644
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L167:
	.sleb128	13
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L1649
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L168:
	.sleb128	13
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L1649
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
	.sleb128	0
.L1630:
.L1648:
	.sleb128	12
	.4byte		.L1629
	.uleb128	247
	.uleb128	1
	.4byte		.L1652-.L2
	.byte		"Dcm_Cfg_ServiceTableSupport_Tag"
	.byte		0
	.uleb128	8
.L152:
	.sleb128	13
	.byte		"service_table_id"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L153:
	.sleb128	13
	.byte		"p_service_support"
	.byte		0
	.4byte		.L1388
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1652:
.L1253:
	.sleb128	12
	.4byte		.L1629
	.uleb128	191
	.uleb128	1
	.4byte		.L1653-.L2
	.byte		"Dcm_Cfg_RxChannelType_Tag"
	.byte		0
	.uleb128	44
.L136:
	.sleb128	13
	.byte		"pdu_id"
	.byte		0
	.4byte		.L1228
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L137:
	.sleb128	13
	.byte		"networkId"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L138:
	.sleb128	13
	.byte		"tester_source_addr"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L139:
	.sleb128	13
	.byte		"roe_pdu_id"
	.byte		0
	.4byte		.L1228
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L140:
	.sleb128	13
	.byte		"is_roe"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L141:
	.sleb128	13
	.byte		"p_buffer"
	.byte		0
	.4byte		.L1654
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L142:
	.sleb128	13
	.byte		"p_2ndReqBuffer"
	.byte		0
	.4byte		.L1654
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L143:
	.sleb128	13
	.byte		"p_protocol"
	.byte		0
	.4byte		.L1659
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L144:
	.sleb128	13
	.byte		"p_txchannel"
	.byte		0
	.4byte		.L1631
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L145:
	.sleb128	13
	.byte		"addr_type"
	.byte		0
	.4byte		.L1664
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L146:
	.sleb128	13
	.byte		"p_state"
	.byte		0
	.4byte		.L1666
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L147:
	.sleb128	13
	.byte		"p_commMode"
	.byte		0
	.4byte		.L1670
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L148:
	.sleb128	13
	.byte		"p_periodic"
	.byte		0
	.4byte		.L1674
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L1653:
.L1678:
	.sleb128	12
	.4byte		.L1629
	.uleb128	191
	.uleb128	1
	.4byte		.L1679-.L2
	.byte		"Dcm_Cfg_PeriodicResponseType_Tag"
	.byte		0
	.uleb128	12
.L133:
	.sleb128	13
	.byte		"num_tx_channels"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L134:
	.sleb128	13
	.byte		"tx_channels"
	.byte		0
	.4byte		.L1680
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L135:
	.sleb128	13
	.byte		"p_commMode"
	.byte		0
	.4byte		.L1670
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L1679:
.L1663:
	.sleb128	12
	.4byte		.L1629
	.uleb128	191
	.uleb128	1
	.4byte		.L1681-.L2
	.byte		"Dcm_Cfg_ProtocolType_Tag"
	.byte		0
	.uleb128	10
.L126:
	.sleb128	13
	.byte		"identifier"
	.byte		0
	.4byte		.L1470
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L127:
	.sleb128	13
	.byte		"priority"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L128:
	.sleb128	13
	.byte		"identifier_table_id"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L129:
	.sleb128	13
	.byte		"send_resp_pend_on_trans_to_boot"
	.byte		0
	.4byte		.L845
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L130:
	.sleb128	13
	.byte		"preempt_timeout"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L131:
	.sleb128	13
	.byte		"p2_adjust_timeout"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L132:
	.sleb128	13
	.byte		"p2_star_adjust_timeout"
	.byte		0
	.4byte		.L1029
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L1681:
.L1643:
	.sleb128	12
	.4byte		.L1629
	.uleb128	91
	.uleb128	1
	.4byte		.L1682-.L2
	.byte		"Dcm_Cfg_PeriodicTxChannelType_Tag"
	.byte		0
	.uleb128	8
.L123:
	.sleb128	13
	.byte		"tx_pdu_id"
	.byte		0
	.4byte		.L1228
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L124:
	.sleb128	13
	.byte		"conf_pdu_id"
	.byte		0
	.4byte		.L1228
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L125:
	.sleb128	13
	.byte		"channel_status"
	.byte		0
	.4byte		.L1683
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1682:
.L1686:
	.sleb128	12
	.4byte		.L1629
	.uleb128	91
	.uleb128	1
	.4byte		.L1687-.L2
	.byte		"Dcm_Cfg_PeriodicTxStatusType_Tag"
	.byte		0
	.uleb128	20
.L118:
	.sleb128	13
	.byte		"size"
	.byte		0
	.4byte		.L1281
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L119:
	.sleb128	13
	.byte		"buf_pos"
	.byte		0
	.4byte		.L1281
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L120:
	.sleb128	13
	.byte		"buf_ptr"
	.byte		0
	.4byte		.L1034
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L121:
	.sleb128	13
	.byte		"pdu_info"
	.byte		0
	.4byte		.L1283
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L122:
	.sleb128	13
	.byte		"state"
	.byte		0
	.4byte		.L1688
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L1687:
.L1635:
	.sleb128	12
	.4byte		.L1629
	.uleb128	91
	.uleb128	1
	.4byte		.L1690-.L2
	.byte		"Dcm_Cfg_TxChannelType_Tag"
	.byte		0
	.uleb128	20
.L112:
	.sleb128	13
	.byte		"tx_pdu_id"
	.byte		0
	.4byte		.L1228
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L113:
	.sleb128	13
	.byte		"conf_pdu_id"
	.byte		0
	.4byte		.L1228
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L114:
	.sleb128	13
	.byte		"p_buffer"
	.byte		0
	.4byte		.L1655
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L115:
	.sleb128	13
	.byte		"pp_active_buffer"
	.byte		0
	.4byte		.L1691
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L116:
	.sleb128	13
	.byte		"pp_rx_channel"
	.byte		0
	.4byte		.L1693
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L117:
	.sleb128	13
	.byte		"p_busy"
	.byte		0
	.4byte		.L1695
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L1690:
.L1658:
	.sleb128	12
	.4byte		.L1629
	.uleb128	91
	.uleb128	1
	.4byte		.L1696-.L2
	.byte		"Dcm_Cfg_BufferType_Tag"
	.byte		0
	.uleb128	16
.L107:
	.sleb128	13
	.byte		"identifier"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L108:
	.sleb128	13
	.byte		"size"
	.byte		0
	.4byte		.L1281
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L109:
	.sleb128	13
	.byte		"ptr"
	.byte		0
	.4byte		.L1033
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L110:
	.sleb128	13
	.byte		"p_status"
	.byte		0
	.4byte		.L1697
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L111:
	.sleb128	13
	.byte		"pdu_info"
	.byte		0
	.4byte		.L1701
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L1696:
.L1700:
	.sleb128	12
	.4byte		.L1629
	.uleb128	91
	.uleb128	1
	.4byte		.L1703-.L2
	.byte		"Dcm_Cfg_BufferStatusType_Tag"
	.byte		0
	.uleb128	12
.L104:
	.sleb128	13
	.byte		"pdu_id"
	.byte		0
	.4byte		.L1228
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L105:
	.sleb128	13
	.byte		"state"
	.byte		0
	.4byte		.L1704
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L106:
	.sleb128	13
	.byte		"buf_pos"
	.byte		0
	.4byte		.L1281
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L1703:
.L910:
	.sleb128	12
	.4byte		.L1706
	.uleb128	65
	.uleb128	14
	.4byte		.L1707-.L2
	.byte		"Dcm_MsgContextType_Tag"
	.byte		0
	.uleb128	28
.L88:
	.sleb128	13
	.byte		"reqData"
	.byte		0
	.4byte		.L1708
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L89:
	.sleb128	13
	.byte		"reqDataLen"
	.byte		0
	.4byte		.L1028
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L90:
	.sleb128	13
	.byte		"resData"
	.byte		0
	.4byte		.L1708
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L91:
	.sleb128	13
	.byte		"resDataLen"
	.byte		0
	.4byte		.L1028
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L92:
	.sleb128	13
	.byte		"msgAddInfo"
	.byte		0
	.4byte		.L1711
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L93:
	.sleb128	13
	.byte		"resMaxDataLen"
	.byte		0
	.4byte		.L1028
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L94:
	.sleb128	13
	.byte		"idContext"
	.byte		0
	.4byte		.L1713
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L95:
	.sleb128	13
	.byte		"dcmRxPduId"
	.byte		0
	.4byte		.L1228
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L96:
	.sleb128	13
	.byte		"subServiceId"
	.byte		0
	.4byte		.L792
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
	.sleb128	0
.L1707:
.L1712:
	.sleb128	12
	.4byte		.L1706
	.uleb128	65
	.uleb128	14
	.4byte		.L1714-.L2
	.byte		"Dcm_MsgAddInfoType_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
.L86:
	.sleb128	14
	.byte		"reqType"
	.byte		0
	.4byte		.L1715
	.uleb128	4
	.byte		0x1
	.byte		0x0
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L87:
	.sleb128	14
	.byte		"suppressPosResponse"
	.byte		0
	.4byte		.L1715
	.uleb128	4
	.byte		0x1
	.byte		0x1
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L1714:
.L1284:
	.sleb128	12
	.4byte		.L1716
	.uleb128	69
	.uleb128	1
	.4byte		.L1717-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L82:
	.sleb128	13
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L1034
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L83:
	.sleb128	13
	.byte		"SduLength"
	.byte		0
	.4byte		.L1281
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L1717:
	.section	.debug_info,,n
.L1422:
	.sleb128	15
	.4byte		.L1309
	.uleb128	683
	.uleb128	14
	.4byte		.L1718-.L2
	.byte		"Dcm_Cfg_DidEnumType_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	16
	.byte		"DID_ENUM_DID"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"DID_ENUM_DDDID"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"DID_ENUM_OBD_INFOTYPE"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"DID_ENUM_OBD_PID"
	.byte		0
	.sleb128	3
	.sleb128	16
	.byte		"DID_ENUM_OBD_MID"
	.byte		0
	.sleb128	4
	.sleb128	16
	.byte		"DID_ENUM_DID_RANGE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L1718:
.L1427:
	.sleb128	15
	.4byte		.L1309
	.uleb128	652
	.uleb128	14
	.4byte		.L1719-.L2
	.byte		"Dcm_Cfg_DDPRIDInitPolicyType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	16
	.byte		"DDPRID_CLEAR_ALWAYS"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"DDPRID_CLEAR_ONLY_POWERON"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"DDPRID_CLEAR_NEVER"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1719:
.L1425:
	.sleb128	15
	.4byte		.L1309
	.uleb128	643
	.uleb128	14
	.4byte		.L1720-.L2
	.byte		"Dcm_Cfg_DDIDInitPolicyType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	16
	.byte		"DDID_CLEAR_ALWAYS"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"DDID_CLEAR_ONLY_POWERON"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1720:
	.section	.debug_info,,n
.L1408:
	.sleb128	17
	.4byte		.L1309
	.uleb128	477
	.uleb128	1
	.4byte		.L1721-.L2
	.uleb128	4
	.sleb128	16
	.byte		"DCM_ROUTINE_STATE_INIT"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"DCM_ROUTINE_STATE_STARTED"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"DCM_ROUTINE_STATE_STOPPED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1721:
.L1505:
	.sleb128	17
	.4byte		.L1309
	.uleb128	416
	.uleb128	1
	.4byte		.L1722-.L2
	.uleb128	4
	.sleb128	16
	.byte		"DCM_DD_DID"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"DCM_DD_PID"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"DCM_DD_VEH_INFO"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"DCM_DD_MEMORY"
	.byte		0
	.sleb128	3
	.sleb128	16
	.byte		"DCM_COMP_DID"
	.byte		0
	.sleb128	4
	.sleb128	0
.L1722:
.L1578:
	.sleb128	17
	.4byte		.L1309
	.uleb128	274
	.uleb128	1
	.4byte		.L1723-.L2
	.uleb128	4
	.sleb128	16
	.byte		"DCM_SERVICE_01"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"DCM_SERVICE_01_02"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"DCM_SERVICE_02"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1723:
.L1608:
	.sleb128	17
	.4byte		.L1309
	.uleb128	213
	.uleb128	1
	.4byte		.L1724-.L2
	.uleb128	4
	.sleb128	16
	.byte		"DCM_NO_BOOT"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"DCM_OEM_BOOT"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"DCM_SYS_BOOT"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1724:
.L815:
	.sleb128	15
	.4byte		.L1609
	.uleb128	67
	.uleb128	14
	.4byte		.L1725-.L2
	.byte		"Dcm_Roe_EventStateType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	16
	.byte		"DCM_ROE_CLEARED"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"DCM_ROE_STOPPED"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"DCM_ROE_STARTED"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"DCM_ROE_PAUSED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1725:
.L1673:
	.sleb128	17
	.4byte		.L1629
	.uleb128	191
	.uleb128	1
	.4byte		.L1726-.L2
	.uleb128	4
	.sleb128	16
	.byte		"DCM_NO_COMM_MODE"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"DCM_SILENT_COMM_MODE"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"DCM_FULL_COMM_MODE"
	.byte		0
	.sleb128	2
	.sleb128	0
.L1726:
.L1669:
	.sleb128	17
	.4byte		.L1629
	.uleb128	180
	.uleb128	1
	.4byte		.L1727-.L2
	.uleb128	4
	.sleb128	16
	.byte		"DCM_CHANNEL_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"DCM_CHANNEL_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"DCM_CHANNEL_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"DCM_CHANNEL_2ND_REQ"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1727:
.L1689:
	.sleb128	17
	.4byte		.L1629
	.uleb128	91
	.uleb128	1
	.4byte		.L1728-.L2
	.uleb128	4
	.sleb128	16
	.byte		"DCM_PERIODIC_TX_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"DCM_PERIODIC_TX_PENDING"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"DCM_PERIODIC_TX_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"DCM_PERIODIC_TX_CONFIRMED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1728:
.L1705:
	.sleb128	17
	.4byte		.L1629
	.uleb128	82
	.uleb128	1
	.4byte		.L1729-.L2
	.uleb128	4
	.sleb128	16
	.byte		"DCM_BUF_EMPTY"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"DCM_BUF_BUSY"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1729:
.L1665:
	.sleb128	17
	.4byte		.L1629
	.uleb128	73
	.uleb128	1
	.4byte		.L1730-.L2
	.uleb128	4
	.sleb128	16
	.byte		"DCM_PHYSICAL_TYPE"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"DCM_FUNCTIONAL_TYPE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L1730:
.L1278:
	.sleb128	15
	.4byte		.L1706
	.uleb128	50
	.uleb128	14
	.4byte		.L1731-.L2
	.byte		"VSTAR_BufReq_ReturnType"
	.byte		0
	.uleb128	4
	.sleb128	16
	.byte		"BUFREQ_OK"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"BUFREQ_E_NOT_OK"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"BUFREQ_E_BUSY"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"BUFREQ_E_OVFL"
	.byte		0
	.sleb128	3
	.sleb128	0
.L1731:
	.section	.debug_info,,n
.L793:
	.sleb128	18
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L792:
	.sleb128	19
	.byte		"uint8"
	.byte		0
	.4byte		.L793
.L799:
	.sleb128	19
	.byte		"Dcm_Cfg_RoeType"
	.byte		0
	.4byte		.L800
	.section	.debug_info,,n
.L798:
	.sleb128	20
	.4byte		.L799
	.section	.debug_info,,n
.L797:
	.sleb128	21
	.4byte		.L798
.L796:
	.sleb128	20
	.4byte		.L797
.L805:
	.sleb128	19
	.byte		"Dcm_Cfg_RoeEventStatusType"
	.byte		0
	.4byte		.L806
.L804:
	.sleb128	21
	.4byte		.L805
.L803:
	.sleb128	20
	.4byte		.L804
.L814:
	.sleb128	19
	.byte		"Dcm_Roe_EventStateType"
	.byte		0
	.4byte		.L815
.L823:
	.sleb128	19
	.byte		"Dcm_Cfg_RoeEventType"
	.byte		0
	.4byte		.L824
.L822:
	.sleb128	20
	.4byte		.L823
.L821:
	.sleb128	21
	.4byte		.L822
.L820:
	.sleb128	20
	.4byte		.L821
.L830:
	.sleb128	21
	.4byte		.L814
.L829:
	.sleb128	20
	.4byte		.L830
.L833:
	.sleb128	20
	.4byte		.L814
.L845:
	.sleb128	19
	.byte		"boolean"
	.byte		0
	.4byte		.L793
.L858:
	.sleb128	19
	.byte		"Dcm_Cfg_RoeNvmEventStatusType"
	.byte		0
	.4byte		.L859
.L857:
	.sleb128	21
	.4byte		.L858
.L856:
	.sleb128	20
	.4byte		.L857
.L888:
	.sleb128	19
	.byte		"Dcm_SesCtrlType"
	.byte		0
	.4byte		.L792
.L909:
	.sleb128	19
	.byte		"Dcm_MsgContextType"
	.byte		0
	.4byte		.L910
.L908:
	.sleb128	20
	.4byte		.L909
.L907:
	.sleb128	21
	.4byte		.L908
.L906:
	.sleb128	20
	.4byte		.L907
.L914:
	.sleb128	19
	.byte		"Dcm_NegativeResponseCodeType"
	.byte		0
	.4byte		.L792
.L913:
	.sleb128	21
	.4byte		.L914
.L912:
	.sleb128	20
	.4byte		.L913
.L935:
	.sleb128	21
	.4byte		.L909
.L934:
	.sleb128	20
	.4byte		.L935
.L960:
	.sleb128	20
	.4byte		.L805
.L959:
	.sleb128	21
	.4byte		.L960
.L958:
	.sleb128	20
	.4byte		.L959
.L1030:
	.sleb128	18
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L1029:
	.sleb128	19
	.byte		"uint16"
	.byte		0
	.4byte		.L1030
.L1028:
	.sleb128	19
	.byte		"Dcm_MsgLenType"
	.byte		0
	.4byte		.L1029
.L1034:
	.sleb128	21
	.4byte		.L792
.L1033:
	.sleb128	20
	.4byte		.L1034
.L1078:
	.sleb128	20
	.4byte		.L858
.L1077:
	.sleb128	21
	.4byte		.L1078
.L1076:
	.sleb128	20
	.4byte		.L1077
.L1081:
	.sleb128	20
	.4byte		.L792
.L1091:
	.sleb128	19
	.byte		"Dcm_Cfg_RoeNvmStatusType"
	.byte		0
	.4byte		.L1092
.L1090:
	.sleb128	20
	.4byte		.L1091
.L1089:
	.sleb128	21
	.4byte		.L1090
.L1088:
	.sleb128	20
	.4byte		.L1089
.L1132:
	.sleb128	21
	.4byte		.L1091
.L1131:
	.sleb128	20
	.4byte		.L1132
.L1141:
	.sleb128	20
	.4byte		.L1028
.L1160:
	.sleb128	20
	.4byte		.L1029
.L1188:
	.sleb128	19
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L792
.L1190:
	.sleb128	19
	.byte		"Dcm_OpStatusType"
	.byte		0
	.4byte		.L792
.L1194:
	.sleb128	20
	.4byte		.L845
.L1213:
	.sleb128	18
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L1212:
	.sleb128	19
	.byte		"uint32"
	.byte		0
	.4byte		.L1213
.L1214:
	.sleb128	19
	.byte		"Dem_UdsStatusByteType"
	.byte		0
	.4byte		.L792
.L1228:
	.sleb128	19
	.byte		"PduIdType"
	.byte		0
	.4byte		.L1029
.L1227:
	.sleb128	20
	.4byte		.L1228
.L1252:
	.sleb128	19
	.byte		"Dcm_Cfg_RxChannelType"
	.byte		0
	.4byte		.L1253
.L1251:
	.sleb128	20
	.4byte		.L1252
.L1250:
	.sleb128	21
	.4byte		.L1251
.L1249:
	.sleb128	20
	.4byte		.L1250
.L1277:
	.sleb128	19
	.byte		"BufReq_ReturnType"
	.byte		0
	.4byte		.L1278
.L1281:
	.sleb128	19
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L1029
.L1283:
	.sleb128	19
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L1284
.L1286:
	.sleb128	20
	.4byte		.L1281
.L1311:
	.sleb128	19
	.byte		"Dcm_LinkTimeConfigType"
	.byte		0
	.4byte		.L1312
.L1310:
	.sleb128	20
	.4byte		.L1311
.L1317:
	.sleb128	19
	.byte		"Dcm_ConfigType"
	.byte		0
	.4byte		.L1318
.L1316:
	.sleb128	20
	.4byte		.L1317
.L1315:
	.sleb128	21
	.4byte		.L1316
.L1323:
	.sleb128	19
	.byte		"Dcm_RoeStatusType"
	.byte		0
	.4byte		.L1324
	.section	.debug_info,,n
.L1326:
	.sleb128	22
	.4byte		.L1327-.L2
	.4byte		.L792
	.section	.debug_info,,n
	.sleb128	23
	.uleb128	2
	.sleb128	0
.L1327:
.L1330:
	.sleb128	22
	.4byte		.L1331-.L2
	.4byte		.L1029
	.sleb128	23
	.uleb128	2
	.sleb128	0
.L1331:
.L1335:
	.sleb128	19
	.byte		"Dcm_Cfg_SessionType"
	.byte		0
	.4byte		.L1336
.L1334:
	.sleb128	20
	.4byte		.L1335
.L1333:
	.sleb128	21
	.4byte		.L1334
.L1332:
	.sleb128	20
	.4byte		.L1333
.L1340:
	.sleb128	19
	.byte		"Dcm_Cfg_SecurityType"
	.byte		0
	.4byte		.L1341
.L1339:
	.sleb128	20
	.4byte		.L1340
.L1338:
	.sleb128	21
	.4byte		.L1339
.L1337:
	.sleb128	20
	.4byte		.L1338
.L1345:
	.sleb128	19
	.byte		"Dcm_Cfg_ServiceTableType"
	.byte		0
	.4byte		.L1346
.L1344:
	.sleb128	20
	.4byte		.L1345
.L1343:
	.sleb128	21
	.4byte		.L1344
.L1342:
	.sleb128	20
	.4byte		.L1343
.L1349:
	.sleb128	19
	.byte		"Dcm_Cfg_RequestedDidInfoType"
	.byte		0
	.4byte		.L1350
.L1348:
	.sleb128	21
	.4byte		.L1349
.L1347:
	.sleb128	20
	.4byte		.L1348
.L1354:
	.sleb128	19
	.byte		"Dcm_Cfg_DidType"
	.byte		0
	.4byte		.L1355
.L1353:
	.sleb128	20
	.4byte		.L1354
.L1352:
	.sleb128	21
	.4byte		.L1353
.L1351:
	.sleb128	20
	.4byte		.L1352
.L1359:
	.sleb128	19
	.byte		"Dcm_Cfg_PeriodicDynamicDidType"
	.byte		0
	.4byte		.L1360
.L1358:
	.sleb128	20
	.4byte		.L1359
.L1357:
	.sleb128	21
	.4byte		.L1358
.L1356:
	.sleb128	20
	.4byte		.L1357
.L1362:
	.sleb128	21
	.4byte		.L1029
.L1361:
	.sleb128	20
	.4byte		.L1362
.L1366:
	.sleb128	19
	.byte		"Dcm_Cfg_DidRangeType"
	.byte		0
	.4byte		.L1367
.L1365:
	.sleb128	20
	.4byte		.L1366
.L1364:
	.sleb128	21
	.4byte		.L1365
.L1363:
	.sleb128	20
	.4byte		.L1364
.L1371:
	.sleb128	19
	.byte		"Dcm_Cfg_PidType"
	.byte		0
	.4byte		.L1372
.L1370:
	.sleb128	20
	.4byte		.L1371
.L1369:
	.sleb128	21
	.4byte		.L1370
.L1368:
	.sleb128	20
	.4byte		.L1369
.L1376:
	.sleb128	19
	.byte		"Dcm_Cfg_ReqCtrlType"
	.byte		0
	.4byte		.L1377
.L1375:
	.sleb128	20
	.4byte		.L1376
.L1374:
	.sleb128	21
	.4byte		.L1375
.L1373:
	.sleb128	20
	.4byte		.L1374
.L1381:
	.sleb128	19
	.byte		"Dcm_Cfg_VehicleInfoType"
	.byte		0
	.4byte		.L1382
.L1380:
	.sleb128	20
	.4byte		.L1381
.L1379:
	.sleb128	21
	.4byte		.L1380
.L1378:
	.sleb128	20
	.4byte		.L1379
.L1386:
	.sleb128	19
	.byte		"Dcm_Cfg_RoutineCtrlType"
	.byte		0
	.4byte		.L1387
.L1385:
	.sleb128	20
	.4byte		.L1386
.L1384:
	.sleb128	21
	.4byte		.L1385
.L1383:
	.sleb128	20
	.4byte		.L1384
.L1389:
	.sleb128	21
	.4byte		.L1081
.L1388:
	.sleb128	20
	.4byte		.L1389
.L1393:
	.sleb128	19
	.byte		"Dcm_Cfg_CallbackReqServType"
	.byte		0
	.4byte		.L1394
.L1392:
	.sleb128	20
	.4byte		.L1393
.L1391:
	.sleb128	21
	.4byte		.L1392
.L1390:
	.sleb128	20
	.4byte		.L1391
.L1398:
	.sleb128	19
	.byte		"Dcm_Cfg_MemoryType"
	.byte		0
	.4byte		.L1399
.L1397:
	.sleb128	20
	.4byte		.L1398
.L1396:
	.sleb128	21
	.4byte		.L1397
.L1395:
	.sleb128	20
	.4byte		.L1396
.L1403:
	.sleb128	19
	.byte		"Dcm_Cfg_SoftwareDownloadType"
	.byte		0
	.4byte		.L1404
.L1402:
	.sleb128	20
	.4byte		.L1403
.L1401:
	.sleb128	21
	.4byte		.L1402
.L1400:
	.sleb128	20
	.4byte		.L1401
.L1407:
	.sleb128	19
	.byte		"Dcm_Cfg_RoutineStateType"
	.byte		0
	.4byte		.L1408
.L1406:
	.sleb128	21
	.4byte		.L1407
.L1405:
	.sleb128	20
	.4byte		.L1406
.L1412:
	.sleb128	19
	.byte		"Dcm_Cfg_DDidInitInfoType"
	.byte		0
	.4byte		.L1413
.L1411:
	.sleb128	20
	.4byte		.L1412
.L1410:
	.sleb128	21
	.4byte		.L1411
.L1409:
	.sleb128	20
	.4byte		.L1410
	.section	.debug_info,,n
.L1415:
	.sleb128	24
	.4byte		.L1416-.L2
	.byte		0x1
	.sleb128	0
.L1416:
.L1414:
	.sleb128	21
	.4byte		.L1415
.L1418:
	.sleb128	24
	.4byte		.L1419-.L2
	.byte		0x1
	.sleb128	0
.L1419:
.L1417:
	.sleb128	21
	.4byte		.L1418
.L1421:
	.sleb128	19
	.byte		"Dcm_Cfg_DidEnumType"
	.byte		0
	.4byte		.L1422
.L1424:
	.sleb128	19
	.byte		"Dcm_Cfg_DDIDInitPolicyType"
	.byte		0
	.4byte		.L1425
.L1426:
	.sleb128	19
	.byte		"Dcm_Cfg_DDPRIDInitPolicyType"
	.byte		0
	.4byte		.L1427
.L1428:
	.sleb128	21
	.4byte		.L1212
.L1433:
	.sleb128	19
	.byte		"Dcm_Cfg_RoeEventWindowTimeType"
	.byte		0
	.4byte		.L1434
.L1432:
	.sleb128	20
	.4byte		.L1433
.L1431:
	.sleb128	21
	.4byte		.L1432
.L1430:
	.sleb128	20
	.4byte		.L1431
	.section	.debug_info,,n
.L1439:
	.sleb128	25
	.4byte		.L1440-.L2
	.4byte		.L1188
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	26
	.4byte		.L792
	.sleb128	0
.L1440:
.L1438:
	.sleb128	21
	.4byte		.L1439
.L1444:
	.sleb128	25
	.4byte		.L1445-.L2
	.4byte		.L1188
	.byte		0x1
	.sleb128	26
	.4byte		.L1190
	.sleb128	26
	.4byte		.L792
	.sleb128	26
	.4byte		.L1212
	.sleb128	26
	.4byte		.L1212
	.sleb128	26
	.4byte		.L1428
	.sleb128	26
	.4byte		.L913
	.sleb128	0
.L1445:
.L1443:
	.sleb128	21
	.4byte		.L1444
.L1442:
	.sleb128	19
	.byte		"Dcm_ProcessRequestDownloadFuncType"
	.byte		0
	.4byte		.L1443
.L1450:
	.sleb128	19
	.byte		"Dcm_ReturnMemOperationType"
	.byte		0
	.4byte		.L792
.L1448:
	.sleb128	25
	.4byte		.L1449-.L2
	.4byte		.L1450
	.byte		0x1
	.sleb128	26
	.4byte		.L1190
	.sleb128	26
	.4byte		.L792
	.sleb128	26
	.4byte		.L1212
	.sleb128	26
	.4byte		.L1212
	.sleb128	26
	.4byte		.L1034
	.sleb128	0
.L1449:
.L1447:
	.sleb128	21
	.4byte		.L1448
.L1446:
	.sleb128	19
	.byte		"Dcm_MemOperationType"
	.byte		0
	.4byte		.L1447
.L1453:
	.sleb128	25
	.4byte		.L1454-.L2
	.4byte		.L1188
	.byte		0x1
	.sleb128	26
	.4byte		.L1190
	.sleb128	26
	.4byte		.L1034
	.sleb128	26
	.4byte		.L1212
	.sleb128	26
	.4byte		.L913
	.sleb128	0
.L1454:
.L1452:
	.sleb128	21
	.4byte		.L1453
.L1451:
	.sleb128	19
	.byte		"Dcm_ProcessRequestTransferExitFuncType"
	.byte		0
	.4byte		.L1452
.L1459:
	.sleb128	19
	.byte		"Dcm_Cfg_MemoryRangeType"
	.byte		0
	.4byte		.L1460
.L1458:
	.sleb128	20
	.4byte		.L1459
.L1457:
	.sleb128	21
	.4byte		.L1458
.L1456:
	.sleb128	20
	.4byte		.L1457
.L1464:
	.sleb128	25
	.4byte		.L1465-.L2
	.4byte		.L914
	.byte		0x1
	.sleb128	0
.L1465:
.L1463:
	.sleb128	21
	.4byte		.L1464
.L1462:
	.sleb128	19
	.byte		"Dcm_ModeRuleFuncType"
	.byte		0
	.4byte		.L1463
.L1468:
	.sleb128	25
	.4byte		.L1469-.L2
	.4byte		.L1188
	.byte		0x1
.L1470:
	.sleb128	19
	.byte		"Dcm_ProtocolType"
	.byte		0
	.4byte		.L792
	.sleb128	26
	.4byte		.L1470
	.sleb128	0
.L1469:
.L1467:
	.sleb128	21
	.4byte		.L1468
.L1472:
	.sleb128	25
	.4byte		.L1473-.L2
	.4byte		.L1188
	.byte		0x1
	.sleb128	26
	.4byte		.L1470
	.sleb128	0
.L1473:
.L1471:
	.sleb128	21
	.4byte		.L1472
.L1476:
	.sleb128	25
	.4byte		.L1477-.L2
	.4byte		.L792
	.byte		0x1
	.sleb128	26
	.4byte		.L1389
	.sleb128	26
	.4byte		.L1190
	.sleb128	26
	.4byte		.L1034
	.sleb128	26
	.4byte		.L1362
	.sleb128	26
	.4byte		.L913
	.sleb128	0
.L1477:
.L1475:
	.sleb128	21
	.4byte		.L1476
.L1479:
	.sleb128	25
	.4byte		.L1480-.L2
	.4byte		.L792
	.byte		0x1
	.sleb128	26
	.4byte		.L1389
	.sleb128	26
	.4byte		.L1190
	.sleb128	26
	.4byte		.L1034
	.sleb128	26
	.4byte		.L1362
	.sleb128	26
	.4byte		.L913
	.sleb128	0
.L1480:
.L1478:
	.sleb128	21
	.4byte		.L1479
.L1482:
	.sleb128	25
	.4byte		.L1483-.L2
	.4byte		.L792
	.byte		0x1
	.sleb128	26
	.4byte		.L1190
	.sleb128	26
	.4byte		.L1034
	.sleb128	26
	.4byte		.L1362
	.sleb128	26
	.4byte		.L913
	.sleb128	0
.L1483:
.L1481:
	.sleb128	21
	.4byte		.L1482
.L1488:
	.sleb128	19
	.byte		"Dcm_Cfg_DDDDidInfoType"
	.byte		0
	.4byte		.L1489
.L1487:
	.sleb128	20
	.4byte		.L1488
.L1486:
	.sleb128	21
	.4byte		.L1487
.L1485:
	.sleb128	20
	.4byte		.L1486
.L1493:
	.sleb128	19
	.byte		"Dcm_Cfg_DDDDidSourceType"
	.byte		0
	.4byte		.L1494
.L1492:
	.sleb128	20
	.4byte		.L1493
.L1491:
	.sleb128	21
	.4byte		.L1492
.L1490:
	.sleb128	20
	.4byte		.L1491
.L1496:
	.sleb128	21
	.4byte		.L1493
.L1495:
	.sleb128	20
	.4byte		.L1496
.L1499:
	.sleb128	19
	.byte		"Dcm_Cfg_PeriodicSampleDataType"
	.byte		0
	.4byte		.L1500
.L1498:
	.sleb128	21
	.4byte		.L1499
.L1497:
	.sleb128	20
	.4byte		.L1498
.L1504:
	.sleb128	19
	.byte		"Dcm_Cfg_DDSourcesType"
	.byte		0
	.4byte		.L1505
.L1508:
	.sleb128	19
	.byte		"Dcm_Cfg_DidReadType"
	.byte		0
	.4byte		.L1509
.L1507:
	.sleb128	20
	.4byte		.L1508
.L1506:
	.sleb128	21
	.4byte		.L1507
.L1513:
	.sleb128	25
	.4byte		.L1514-.L2
	.4byte		.L1188
	.byte		0x1
	.sleb128	26
	.4byte		.L1029
	.sleb128	26
	.4byte		.L1190
.L1516:
	.sleb128	19
	.byte		"Dcm_DidSupportedType"
	.byte		0
	.4byte		.L792
.L1515:
	.sleb128	21
	.4byte		.L1516
	.sleb128	26
	.4byte		.L1515
	.sleb128	0
.L1514:
.L1512:
	.sleb128	21
	.4byte		.L1513
.L1511:
	.sleb128	19
	.byte		"Dcm_IsDidAvailableFuncType"
	.byte		0
	.4byte		.L1512
.L1520:
	.sleb128	19
	.byte		"Dcm_Cfg_DidRangeReadType"
	.byte		0
	.4byte		.L1521
.L1519:
	.sleb128	20
	.4byte		.L1520
.L1518:
	.sleb128	21
	.4byte		.L1519
.L1517:
	.sleb128	20
	.4byte		.L1518
.L1525:
	.sleb128	19
	.byte		"Dcm_Cfg_DidRangeWriteType"
	.byte		0
	.4byte		.L1526
.L1524:
	.sleb128	20
	.4byte		.L1525
.L1523:
	.sleb128	21
	.4byte		.L1524
.L1522:
	.sleb128	20
	.4byte		.L1523
.L1530:
	.sleb128	25
	.4byte		.L1531-.L2
	.4byte		.L1188
	.byte		0x1
	.sleb128	26
	.4byte		.L1029
	.sleb128	26
	.4byte		.L1389
	.sleb128	26
	.4byte		.L1190
	.sleb128	26
	.4byte		.L1029
	.sleb128	26
	.4byte		.L913
	.sleb128	0
.L1531:
.L1529:
	.sleb128	21
	.4byte		.L1530
.L1528:
	.sleb128	19
	.byte		"Dcm_WriteDidDataFuncType"
	.byte		0
	.4byte		.L1529
.L1535:
	.sleb128	25
	.4byte		.L1536-.L2
	.4byte		.L1188
	.byte		0x1
	.sleb128	26
	.4byte		.L1029
	.sleb128	26
	.4byte		.L1034
	.sleb128	26
	.4byte		.L1190
	.sleb128	26
	.4byte		.L1362
	.sleb128	26
	.4byte		.L913
	.sleb128	0
.L1536:
.L1534:
	.sleb128	21
	.4byte		.L1535
.L1533:
	.sleb128	19
	.byte		"Dcm_ReadDidDataFuncType"
	.byte		0
	.4byte		.L1534
.L1539:
	.sleb128	25
	.4byte		.L1540-.L2
	.4byte		.L1188
	.byte		0x1
	.sleb128	26
	.4byte		.L1029
	.sleb128	26
	.4byte		.L1190
	.sleb128	26
	.4byte		.L1362
	.sleb128	0
.L1540:
.L1538:
	.sleb128	21
	.4byte		.L1539
.L1537:
	.sleb128	19
	.byte		"Dcm_ReadDidDataLengthFuncType"
	.byte		0
	.4byte		.L1538
.L1545:
	.sleb128	19
	.byte		"Dcm_Cfg_DidWriteType"
	.byte		0
	.4byte		.L1546
.L1544:
	.sleb128	20
	.4byte		.L1545
.L1543:
	.sleb128	21
	.4byte		.L1544
.L1542:
	.sleb128	20
	.4byte		.L1543
.L1547:
	.sleb128	20
	.4byte		.L1506
.L1551:
	.sleb128	19
	.byte		"Dcm_Cfg_DidControlType"
	.byte		0
	.4byte		.L1552
.L1550:
	.sleb128	20
	.4byte		.L1551
.L1549:
	.sleb128	21
	.4byte		.L1550
.L1548:
	.sleb128	20
	.4byte		.L1549
.L1555:
	.sleb128	25
	.4byte		.L1556-.L2
	.4byte		.L1188
	.byte		0x1
	.sleb128	26
	.4byte		.L1190
	.sleb128	26
	.4byte		.L1034
	.sleb128	26
	.4byte		.L913
	.sleb128	0
.L1556:
.L1554:
	.sleb128	21
	.4byte		.L1555
.L1553:
	.sleb128	19
	.byte		"Dcm_GetScalingInformationFuncType"
	.byte		0
	.4byte		.L1554
.L1560:
	.sleb128	25
	.4byte		.L1561-.L2
	.4byte		.L1188
	.byte		0x1
	.sleb128	26
	.4byte		.L1190
	.sleb128	26
	.4byte		.L1034
	.sleb128	0
.L1561:
.L1559:
	.sleb128	21
	.4byte		.L1560
.L1558:
	.sleb128	19
	.byte		"Dcm_ReadDataFuncType"
	.byte		0
	.4byte		.L1559
.L1565:
	.sleb128	25
	.4byte		.L1566-.L2
	.4byte		.L1188
	.byte		0x1
	.sleb128	26
	.4byte		.L1190
	.sleb128	26
	.4byte		.L913
	.sleb128	0
.L1566:
.L1564:
	.sleb128	21
	.4byte		.L1565
.L1563:
	.sleb128	19
	.byte		"Dcm_ConditionCheckReadFuncType"
	.byte		0
	.4byte		.L1564
.L1569:
	.sleb128	25
	.4byte		.L1570-.L2
	.4byte		.L1188
	.byte		0x1
	.sleb128	26
	.4byte		.L1190
	.sleb128	26
	.4byte		.L1362
	.sleb128	0
.L1570:
.L1568:
	.sleb128	21
	.4byte		.L1569
.L1567:
	.sleb128	19
	.byte		"Dcm_ReadDataLengthFuncType"
	.byte		0
	.4byte		.L1568
.L1574:
	.sleb128	25
	.4byte		.L1575-.L2
	.4byte		.L1188
	.byte		0x1
	.sleb128	26
	.4byte		.L1389
	.sleb128	26
	.4byte		.L1029
	.sleb128	26
	.4byte		.L1190
	.sleb128	26
	.4byte		.L913
	.sleb128	0
.L1575:
.L1573:
	.sleb128	21
	.4byte		.L1574
.L1572:
	.sleb128	19
	.byte		"Dcm_WriteDataFuncType"
	.byte		0
	.4byte		.L1573
.L1577:
	.sleb128	19
	.byte		"Dcm_Cfg_PidServiceType"
	.byte		0
	.4byte		.L1578
.L1582:
	.sleb128	19
	.byte		"Dcm_Cfg_PidDataType"
	.byte		0
	.4byte		.L1583
.L1581:
	.sleb128	20
	.4byte		.L1582
.L1580:
	.sleb128	21
	.4byte		.L1581
.L1579:
	.sleb128	20
	.4byte		.L1580
.L1586:
	.sleb128	25
	.4byte		.L1587-.L2
	.4byte		.L1188
	.byte		0x1
	.sleb128	26
	.4byte		.L1034
	.sleb128	0
.L1587:
.L1585:
	.sleb128	21
	.4byte		.L1586
.L1590:
	.sleb128	25
	.4byte		.L1591-.L2
	.4byte		.L1188
	.byte		0x1
	.sleb128	26
	.4byte		.L1190
	.sleb128	26
	.4byte		.L1034
	.sleb128	0
.L1591:
.L1589:
	.sleb128	21
	.4byte		.L1590
.L1595:
	.sleb128	25
	.4byte		.L1596-.L2
	.4byte		.L1188
	.byte		0x1
	.sleb128	26
	.4byte		.L1034
	.sleb128	26
	.4byte		.L1389
	.sleb128	0
.L1596:
.L1594:
	.sleb128	21
	.4byte		.L1595
.L1593:
	.sleb128	19
	.byte		"Dcm_RequestControlFuncType"
	.byte		0
	.4byte		.L1594
.L1600:
	.sleb128	25
	.4byte		.L1601-.L2
	.4byte		.L1188
	.byte		0x1
	.sleb128	26
	.4byte		.L1389
	.sleb128	26
	.4byte		.L1190
	.sleb128	26
	.4byte		.L1034
	.sleb128	26
	.4byte		.L913
	.sleb128	0
.L1601:
.L1599:
	.sleb128	21
	.4byte		.L1600
.L1598:
	.sleb128	19
	.byte		"Dcm_GetSeedFuncType"
	.byte		0
	.4byte		.L1599
.L1604:
	.sleb128	25
	.4byte		.L1605-.L2
	.4byte		.L1188
	.byte		0x1
	.sleb128	26
	.4byte		.L1389
	.sleb128	26
	.4byte		.L1190
	.sleb128	26
	.4byte		.L913
	.sleb128	0
.L1605:
.L1603:
	.sleb128	21
	.4byte		.L1604
.L1602:
	.sleb128	19
	.byte		"Dcm_CompareKeyFuncType"
	.byte		0
	.4byte		.L1603
.L1607:
	.sleb128	19
	.byte		"Dcm_Cfg_SessionsForBootEnum"
	.byte		0
	.4byte		.L1608
.L1614:
	.sleb128	19
	.byte		"Dcm_Cfg_ServiceType"
	.byte		0
	.4byte		.L1615
.L1613:
	.sleb128	20
	.4byte		.L1614
.L1612:
	.sleb128	21
	.4byte		.L1613
.L1611:
	.sleb128	20
	.4byte		.L1612
.L1619:
	.sleb128	24
	.4byte		.L1620-.L2
	.byte		0x1
	.sleb128	0
.L1620:
.L1618:
	.sleb128	21
	.4byte		.L1619
.L1617:
	.sleb128	19
	.byte		"Dcm_ServiceTriggerFuncType"
	.byte		0
	.4byte		.L1618
.L1624:
	.sleb128	19
	.byte		"Dcm_Cfg_SubServiceType"
	.byte		0
	.4byte		.L1625
.L1623:
	.sleb128	20
	.4byte		.L1624
.L1622:
	.sleb128	21
	.4byte		.L1623
.L1621:
	.sleb128	20
	.4byte		.L1622
.L1634:
	.sleb128	19
	.byte		"Dcm_Cfg_TxChannelType"
	.byte		0
	.4byte		.L1635
.L1633:
	.sleb128	20
	.4byte		.L1634
.L1632:
	.sleb128	21
	.4byte		.L1633
.L1631:
	.sleb128	20
	.4byte		.L1632
.L1642:
	.sleb128	19
	.byte		"Dcm_Cfg_PeriodicTxChannelType"
	.byte		0
	.4byte		.L1643
.L1641:
	.sleb128	20
	.4byte		.L1642
.L1640:
	.sleb128	21
	.4byte		.L1641
.L1639:
	.sleb128	19
	.byte		"Dcm_Cfg_PeriodicTxChannelPointerType"
	.byte		0
	.4byte		.L1640
.L1638:
	.sleb128	20
	.4byte		.L1639
.L1637:
	.sleb128	21
	.4byte		.L1638
.L1636:
	.sleb128	20
	.4byte		.L1637
.L1647:
	.sleb128	19
	.byte		"Dcm_Cfg_ServiceTableSupport"
	.byte		0
	.4byte		.L1648
.L1646:
	.sleb128	20
	.4byte		.L1647
.L1645:
	.sleb128	21
	.4byte		.L1646
.L1644:
	.sleb128	20
	.4byte		.L1645
.L1651:
	.sleb128	20
	.4byte		.L1212
.L1650:
	.sleb128	21
	.4byte		.L1651
.L1649:
	.sleb128	20
	.4byte		.L1650
.L1657:
	.sleb128	19
	.byte		"Dcm_Cfg_BufferType"
	.byte		0
	.4byte		.L1658
.L1656:
	.sleb128	20
	.4byte		.L1657
.L1655:
	.sleb128	21
	.4byte		.L1656
.L1654:
	.sleb128	20
	.4byte		.L1655
.L1662:
	.sleb128	19
	.byte		"Dcm_Cfg_ProtocolType"
	.byte		0
	.4byte		.L1663
.L1661:
	.sleb128	20
	.4byte		.L1662
.L1660:
	.sleb128	21
	.4byte		.L1661
.L1659:
	.sleb128	20
	.4byte		.L1660
.L1664:
	.sleb128	19
	.byte		"Dcm_Cfg_AddrTypeType"
	.byte		0
	.4byte		.L1665
.L1668:
	.sleb128	19
	.byte		"Dcm_Cfg_ChannelStateType"
	.byte		0
	.4byte		.L1669
.L1667:
	.sleb128	21
	.4byte		.L1668
.L1666:
	.sleb128	20
	.4byte		.L1667
.L1672:
	.sleb128	19
	.byte		"Dcm_Cfg_ChannelCommModeType"
	.byte		0
	.4byte		.L1673
.L1671:
	.sleb128	21
	.4byte		.L1672
.L1670:
	.sleb128	20
	.4byte		.L1671
.L1677:
	.sleb128	19
	.byte		"Dcm_Cfg_PeriodicResponseType"
	.byte		0
	.4byte		.L1678
.L1676:
	.sleb128	20
	.4byte		.L1677
.L1675:
	.sleb128	21
	.4byte		.L1676
.L1674:
	.sleb128	20
	.4byte		.L1675
.L1680:
	.sleb128	20
	.4byte		.L1640
.L1685:
	.sleb128	19
	.byte		"Dcm_Cfg_PeriodicTxStatusType"
	.byte		0
	.4byte		.L1686
.L1684:
	.sleb128	21
	.4byte		.L1685
.L1683:
	.sleb128	20
	.4byte		.L1684
.L1688:
	.sleb128	19
	.byte		"Dcm_Cfg_PeriodicTxChannelStateType"
	.byte		0
	.4byte		.L1689
.L1692:
	.sleb128	19
	.byte		"Dcm_Cfg_BufferPointerType"
	.byte		0
	.4byte		.L1655
.L1691:
	.sleb128	21
	.4byte		.L1692
.L1694:
	.sleb128	19
	.byte		"Dcm_Cfg_RxChannelPointerType"
	.byte		0
	.4byte		.L1250
.L1693:
	.sleb128	21
	.4byte		.L1694
.L1695:
	.sleb128	21
	.4byte		.L845
.L1699:
	.sleb128	19
	.byte		"Dcm_Cfg_BufferStatusType"
	.byte		0
	.4byte		.L1700
.L1698:
	.sleb128	21
	.4byte		.L1699
.L1697:
	.sleb128	20
	.4byte		.L1698
.L1702:
	.sleb128	21
	.4byte		.L1283
.L1701:
	.sleb128	20
	.4byte		.L1702
.L1704:
	.sleb128	19
	.byte		"Dcm_Cfg_BufferStateType"
	.byte		0
	.4byte		.L1705
.L1710:
	.sleb128	19
	.byte		"Dcm_MsgItemType"
	.byte		0
	.4byte		.L792
.L1709:
	.sleb128	21
	.4byte		.L1710
.L1708:
	.sleb128	19
	.byte		"Dcm_MsgType"
	.byte		0
	.4byte		.L1709
.L1711:
	.sleb128	19
	.byte		"Dcm_MsgAddInfoType"
	.byte		0
	.4byte		.L1712
.L1713:
	.sleb128	19
	.byte		"Dcm_IdContextType"
	.byte		0
	.4byte		.L792
.L1715:
	.sleb128	18
	.byte		"unsigned int"
	.byte		0
	.byte		0x7
	.byte		0x4
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L794:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),31
	.d2locend
.L801:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),30
	.d2locend
.L807:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo8),29
	.d2locend
.L813:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),31
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),31
	.d2locend
.L816:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo18),4
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),30
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),4
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),4
	.d2locend
.L818:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo17),29
	.d2locend
.L825:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),28
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),28
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo17),28
	.d2locend
.L827:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),0
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),3
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),3
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locend
.L831:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo18),3
	.d2locend
.L834:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo40),27
	.d2locend
.L841:
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),31
	.d2locend
.L843:
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),30
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),3
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),3
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),3
	.d2locend
.L846:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo43),3
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo44),29
	.d2locend
.L852:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locend
.L854:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo54),4
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),4
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo50),4
	.d2locend
.L860:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),28
	.d2locend
.L872:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),31
	.d2locend
.L874:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo62),30
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),31
	.d2locend
.L880:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),3
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),4
	.d2locend
.L882:
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),31
	.d2locend
.L889:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),3
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),31
	.d2locend
.L890:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo74),4
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo75),30
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),4
	.d2locend
.L892:
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo75),29
	.d2locend
.L894:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo75),28
	.d2locend
.L900:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),0
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),3
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),3
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),3
	.d2locend
.L911:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),3
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),3
	.d2locend
.L915:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo92),4
	.d2locend
.L916:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo93),5
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo94),0
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),0
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo92),0
	.d2locend
.L918:
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),0
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo89),5
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo101),5
	.d2locend
.L924:
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo94),6
	.d2locend
.L926:
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo94),7
	.d2locend
.L928:
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo94),3
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),3
	.d2locend
.L936:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),3
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),31
	.d2locend
.L937:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),4
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),30
	.d2locend
.L938:
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),5
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo110),29
	.d2locend
.L940:
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),3
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo109),28
	.d2locend
.L946:
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo110),27
	.d2locend
.L948:
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo115),26
	.d2locend
.L950:
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo110),25
	.d2locend
.L952:
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo110),24
	.d2locend
.L961:
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo119),3
	.d2locend
.L963:
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),0
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),4
	.d2locend
.L969:
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),3
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo127),31
	.d2locend
.L970:
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),4
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo127),30
	.d2locend
.L971:
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),5
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo128),29
	.d2locend
.L973:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),3
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo127),28
	.d2locend
.L979:
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo128),27
	.d2locend
.L981:
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo133),26
	.d2locend
.L983:
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo128),25
	.d2locend
.L985:
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo128),24
	.d2locend
.L991:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo137),3
	.d2locreg	%offsetof(.Llo138), %offsetof(.Llo139),3
	.d2locend
.L993:
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo141),0
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo143),0
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),0
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),23
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo149),0
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo127),0
	.d2locend
.L1004:
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo152),3
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo154),31
	.d2locend
.L1005:
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo152),4
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo155),30
	.d2locend
.L1007:
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo155),3
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo154),27
	.d2locend
.L1013:
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo159),30
	.d2locend
.L1015:
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo159),29
	.d2locend
.L1017:
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo159),28
	.d2locend
.L1023:
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo162),0
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo164),3
	.d2locend
.L1032:
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo166),3
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo168),3
	.d2locend
.L1035:
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo169),4
	.d2locend
.L1037:
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo169),5
	.d2locend
.L1039:
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo172),3
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo173),3
	.d2locend
.L1045:
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo168),0
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo169),3
	.d2locend
.L1051:
	.d2locreg	%offsetof(.Llo176), %offsetof(.Llo177),3
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo179),31
	.d2locend
.L1052:
	.d2locreg	%offsetof(.Llo176), %offsetof(.Llo177),4
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo180),30
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo182),4
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo184),4
	.d2locend
.L1058:
	.d2locreg	%offsetof(.Llo185), %offsetof(.Llo179),7
	.d2locend
.L1060:
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo179),30
	.d2locend
.L1062:
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo188),29
	.d2locreg	%offsetof(.Llo189), %offsetof(.Llo190),3
	.d2locreg	%offsetof(.Llo191), %offsetof(.Llo179),29
	.d2locend
.L1064:
	.d2locreg	%offsetof(.Llo192), %offsetof(.Llo179),28
	.d2locend
.L1070:
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo194),3
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo196),3
	.d2locend
.L1079:
	.d2locreg	%offsetof(.Llo196), %offsetof(.Llo197),3
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo199),3
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo201),3
	.d2locend
.L1082:
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo203),0
	.d2locreg	%offsetof(.Llo204), %offsetof(.Llo194),0
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),0
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),0
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo210),0
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo182),0
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo197),0
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo199),0
	.d2locend
.L1093:
	.d2locreg	%offsetof(.Llo214), %offsetof(.Llo197),4
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo216),4
	.d2locend
.L1099:
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo199),4
	.d2locend
.L1105:
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo218),3
	.d2locreg	%offsetof(.Llo219), %offsetof(.Llo220),31
	.d2locend
.L1106:
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo221),4
	.d2locend
.L1107:
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo222),5
	.d2locend
.L1109:
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo224),3
	.d2locend
.L1111:
	.d2locreg	%offsetof(.Llo225), %offsetof(.Llo223),3
	.d2locreg	%offsetof(.Llo226), %offsetof(.Llo222),0
	.d2locreg	%offsetof(.Llo227), %offsetof(.Llo228),3
	.d2locend
.L1117:
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo230),3
	.d2locreg	%offsetof(.Llo231), %offsetof(.Llo232),31
	.d2locend
.L1118:
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo233),4
	.d2locreg	%offsetof(.Llo234), %offsetof(.Llo235),28
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo237),4
	.d2locreg	%offsetof(.Llo232), %offsetof(.Llo238),4
	.d2locend
.L1119:
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo233),5
	.d2locreg	%offsetof(.Llo234), %offsetof(.Llo235),8
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo239),5
	.d2locreg	%offsetof(.Llo232), %offsetof(.Llo238),5
	.d2locend
.L1121:
	.d2locreg	%offsetof(.Llo240), %offsetof(.Llo241),29
	.d2locend
.L1123:
	.d2locreg	%offsetof(.Llo242), %offsetof(.Llo243),27
	.d2locreg	%offsetof(.Llo244), %offsetof(.Llo245),3
	.d2locreg	%offsetof(.Llo246), %offsetof(.Llo247),3
	.d2locreg	%offsetof(.Llo248), %offsetof(.Llo232),3
	.d2locend
.L1125:
	.d2locreg	%offsetof(.Llo249), %offsetof(.Llo250),3
	.d2locreg	%offsetof(.Llo251), %offsetof(.Llo232),30
	.d2locend
.L1133:
	.d2locreg	%offsetof(.Llo241), %offsetof(.Llo232),29
	.d2locend
.L1139:
	.d2locreg	%offsetof(.Llo243), %offsetof(.Llo252),0
	.d2locreg	%offsetof(.Llo253), %offsetof(.Llo232),0
	.d2locend
.L1142:
	.d2locreg	%offsetof(.Llo254), %offsetof(.Llo255),0
	.d2locreg	%offsetof(.Llo256), %offsetof(.Llo232),28
	.d2locend
.L1148:
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo258),3
	.d2locreg	%offsetof(.Llo259), %offsetof(.Llo260),31
	.d2locend
.L1149:
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo258),4
	.d2locreg	%offsetof(.Llo259), %offsetof(.Llo261),28
	.d2locreg	%offsetof(.Llo262), %offsetof(.Llo263),28
	.d2locend
.L1150:
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo258),5
	.d2locreg	%offsetof(.Llo259), %offsetof(.Llo264),8
	.d2locend
.L1152:
	.d2locreg	%offsetof(.Llo265), %offsetof(.Llo266),3
	.d2locreg	%offsetof(.Llo267), %offsetof(.Llo260),30
	.d2locend
.L1158:
	.d2locreg	%offsetof(.Llo268), %offsetof(.Llo269),4
	.d2locreg	%offsetof(.Llo270), %offsetof(.Llo271),4
	.d2locreg	%offsetof(.Llo272), %offsetof(.Llo273),4
	.d2locend
.L1161:
	.d2locreg	%offsetof(.Llo274), %offsetof(.Llo275),0
	.d2locreg	%offsetof(.Llo276), %offsetof(.Llo260),29
	.d2locend
.L1163:
	.d2locreg	%offsetof(.Llo277), %offsetof(.Llo271),0
	.d2locreg	%offsetof(.Llo278), %offsetof(.Llo273),0
	.d2locreg	%offsetof(.Llo279), %offsetof(.Llo280),0
	.d2locreg	%offsetof(.Llo281), %offsetof(.Llo261),0
	.d2locreg	%offsetof(.Llo282), %offsetof(.Llo283),0
	.d2locend
.L1165:
	.d2locreg	%offsetof(.Llo276), %offsetof(.Llo261),3
	.d2locreg	%offsetof(.Llo263), %offsetof(.Llo284),3
	.d2locreg	%offsetof(.Llo285), %offsetof(.Llo286),3
	.d2locreg	%offsetof(.Llo287), %offsetof(.Llo288),3
	.d2locreg	%offsetof(.Llo289), %offsetof(.Llo260),3
	.d2locend
.L1171:
	.d2locreg	%offsetof(.Llo290), %offsetof(.Llo291),0
	.d2locreg	%offsetof(.Llo292), %offsetof(.Llo293),0
	.d2locend
.L1173:
	.d2locreg	%offsetof(.Llo283), %offsetof(.Llo263),0
	.d2locreg	%offsetof(.Llo284), %offsetof(.Llo260),28
	.d2locend
.L1180:
	.d2locreg	%offsetof(.Llo294), %offsetof(.Llo295),3
	.d2locreg	%offsetof(.Llo296), %offsetof(.Llo297),3
	.d2locreg	%offsetof(.Llo298), %offsetof(.Llo299),3
	.d2locreg	%offsetof(.Llo300), %offsetof(.Llo301),3
	.d2locreg	%offsetof(.Llo302), %offsetof(.Llo303),3
	.d2locreg	%offsetof(.Llo304), %offsetof(.Llo305),3
	.d2locend
.L1181:
	.d2locreg	%offsetof(.Llo294), %offsetof(.Llo306),4
	.d2locreg	%offsetof(.Llo295), %offsetof(.Llo307),4
	.d2locreg	%offsetof(.Llo297), %offsetof(.Llo308),4
	.d2locreg	%offsetof(.Llo299), %offsetof(.Llo309),4
	.d2locreg	%offsetof(.Llo301), %offsetof(.Llo310),4
	.d2locreg	%offsetof(.Llo303), %offsetof(.Llo311),4
	.d2locreg	%offsetof(.Llo305), %offsetof(.Llo312),4
	.d2locend
.L1182:
	.d2locreg	%offsetof(.Llo294), %offsetof(.Llo306),5
	.d2locreg	%offsetof(.Llo307), %offsetof(.Llo313),5
	.d2locreg	%offsetof(.Llo308), %offsetof(.Llo314),5
	.d2locreg	%offsetof(.Llo309), %offsetof(.Llo315),5
	.d2locreg	%offsetof(.Llo311), %offsetof(.Llo316),5
	.d2locend
.L1191:
	.d2locreg	%offsetof(.Llo317), %offsetof(.Llo318),4
	.d2locreg	%offsetof(.Llo319), %offsetof(.Llo320),3
	.d2locreg	%offsetof(.Llo321), %offsetof(.Llo322),3
	.d2locend
.L1192:
	.d2locreg	%offsetof(.Llo317), %offsetof(.Llo319),5
	.d2locreg	%offsetof(.Llo323), %offsetof(.Llo324),31
	.d2locend
.L1195:
	.d2locreg	%offsetof(.Llo325), %offsetof(.Llo326),5
	.d2locend
.L1201:
	.d2locreg	%offsetof(.Llo327), %offsetof(.Llo328),3
	.d2locreg	%offsetof(.Llo329), %offsetof(.Llo330),31
	.d2locend
.L1202:
	.d2locreg	%offsetof(.Llo327), %offsetof(.Llo331),4
	.d2locreg	%offsetof(.Llo332), %offsetof(.Llo333),30
	.d2locend
.L1204:
	.d2locreg	%offsetof(.Llo327), %offsetof(.Llo330),28
	.d2locend
.L1206:
	.d2locreg	%offsetof(.Llo334), %offsetof(.Llo331),3
	.d2locreg	%offsetof(.Llo332), %offsetof(.Llo335),29
	.d2locend
.L1215:
	.d2locreg	%offsetof(.Llo336), %offsetof(.Llo337),5
	.d2locreg	%offsetof(.Llo338), %offsetof(.Llo339),31
	.d2locreg	%offsetof(.Llo340), %offsetof(.Llo341),31
	.d2locreg	%offsetof(.Llo342), %offsetof(.Llo343),5
	.d2locend
.L1217:
	.d2locreg	%offsetof(.Llo344), %offsetof(.Llo339),30
	.d2locend
.L1223:
	.d2locreg	%offsetof(.Llo345), %offsetof(.Llo341),3
	.d2locreg	%offsetof(.Llo346), %offsetof(.Llo347),3
	.d2locend
.L1225:
	.d2locreg	%offsetof(.Llo348), %offsetof(.Llo349),4
	.d2locreg	%offsetof(.Llo350), %offsetof(.Llo351),4
	.d2locreg	%offsetof(.Llo352), %offsetof(.Llo339),4
	.d2locreg	%offsetof(.Llo353), %offsetof(.Llo346),4
	.d2locend
.L1229:
	.d2locreg	%offsetof(.Llo354), %offsetof(.Llo355),0
	.d2locreg	%offsetof(.Llo356), %offsetof(.Llo351),0
	.d2locreg	%offsetof(.Llo357), %offsetof(.Llo339),0
	.d2locreg	%offsetof(.Llo340), %offsetof(.Llo358),0
	.d2locend
.L1231:
	.d2locreg	%offsetof(.Llo359), %offsetof(.Llo341),5
	.d2locend
.L1237:
	.d2locreg	%offsetof(.Llo360), %offsetof(.Llo361),3
	.d2locreg	%offsetof(.Llo362), %offsetof(.Llo363),31
	.d2locend
.L1239:
	.d2locreg	%offsetof(.Llo364), %offsetof(.Llo365),30
	.d2locend
.L1241:
	.d2locreg	%offsetof(.Llo360), %offsetof(.Llo366),29
	.d2locend
.L1247:
	.d2locreg	%offsetof(.Llo367), %offsetof(.Llo368),4
	.d2locend
.L1254:
	.d2locreg	%offsetof(.Llo369), %offsetof(.Llo365),3
	.d2locreg	%offsetof(.Llo370), %offsetof(.Llo371),3
	.d2locend
.L1256:
	.d2locreg	%offsetof(.Llo372), %offsetof(.Llo373),0
	.d2locreg	%offsetof(.Llo365), %offsetof(.Llo374),4
	.d2locend
.L1262:
	.d2locreg	%offsetof(.Llo375), %offsetof(.Llo376),3
	.d2locreg	%offsetof(.Llo377), %offsetof(.Llo378),31
	.d2locend
.L1264:
	.d2locreg	%offsetof(.Llo379), %offsetof(.Llo377),30
	.d2locend
.L1266:
	.d2locreg	%offsetof(.Llo375), %offsetof(.Llo380),29
	.d2locend
.L1272:
	.d2locreg	%offsetof(.Llo381), %offsetof(.Llo382),3
	.d2locreg	%offsetof(.Llo383), %offsetof(.Llo384),3
	.d2locreg	%offsetof(.Llo385), %offsetof(.Llo386),3
	.d2locreg	%offsetof(.Llo387), %offsetof(.Llo388),31
	.d2locreg	%offsetof(.Llo389), %offsetof(.Llo390),3
	.d2locreg	%offsetof(.Llo391), %offsetof(.Llo392),3
	.d2locreg	%offsetof(.Llo393), %offsetof(.Llo394),31
	.d2locend
.L1273:
	.d2locreg	%offsetof(.Llo381), %offsetof(.Llo395),4
	.d2locreg	%offsetof(.Llo396), %offsetof(.Llo397),30
	.d2locend
.L1275:
	.d2locreg	%offsetof(.Llo398), %offsetof(.Llo394),29
	.d2locend
.L1279:
	.d2locreg	%offsetof(.Llo399), %offsetof(.Llo400),0
	.d2locreg	%offsetof(.Llo401), %offsetof(.Llo386),0
	.d2locreg	%offsetof(.Llo402), %offsetof(.Llo403),0
	.d2locreg	%offsetof(.Llo404), %offsetof(.Llo392),0
	.d2locreg	%offsetof(.Llo393), %offsetof(.Llo397),0
	.d2locreg	%offsetof(.Llo405), %offsetof(.Llo406),0
	.d2locreg	%offsetof(.Llo407), %offsetof(.Llo394),0
	.d2locend
.L1287:
	.d2locreg	%offsetof(.Llo381), %offsetof(.Llo388),28
	.d2locreg	%offsetof(.Llo393), %offsetof(.Llo397),28
	.d2locend
.L1303:
	.d2locreg	%offsetof(.Llo408), %offsetof(.Llo409),3
	.d2locend
.L1305:
	.d2locreg	%offsetof(.Llo410), %offsetof(.Llo408),3
	.d2locreg	%offsetof(.Llo411), %offsetof(.Llo412),0
	.d2locreg	%offsetof(.Llo413), %offsetof(.Llo414),3
	.d2locend
.L1307:
	.d2locreg	%offsetof(.Llo415), %offsetof(.Llo414),4
	.d2locreg	%offsetof(.Llo416), %offsetof(.Llo417),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Dcm_SE_ResponseOnOneEvent"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "QueueRead","SendServiceToRespondTo"
	.wrcm.end
	.wrcm.nelem "SendServiceToRespondTo"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dcm_CopyRxData","Dcm_StartOfReception","Dcm_TpRxIndication","QueueRemove","SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent","ServiceToRespondTo"
	.wrcm.end
	.wrcm.nelem "QueueRead"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SchM_Enter_Dcm_EaRoeQueue","SchM_Exit_Dcm_EaRoeQueue"
	.wrcm.end
	.wrcm.nelem "Dcm_TriggerOnEvent"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Det_ReportError","QueuePush"
	.wrcm.end
	.wrcm.nelem "Dcm_DemTriggerOnDTCStatus"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Det_ReportError","QueuePush"
	.wrcm.end
	.wrcm.nelem "QueuePush"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "QueueIsEmpty","QueueRemove","SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent","SchM_Enter_Dcm_EaRoeQueue","SchM_Exit_Dcm_EaRoeQueue"
	.wrcm.end
	.wrcm.nelem "Dcm_ResponseOnEvent"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CheckSubFunc","Dcm_ErrorCodeToStdReturnType"
	.wrcm.end
	.wrcm.nelem "CheckSubFunc"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SubFuncClear","SubFuncOnChangeOfDid","SubFuncOnDtcStatusChange","SubFuncReportActivatedEvents","SubFuncStart","SubFuncStop"
	.wrcm.end
	.wrcm.nelem "SubFuncOnChangeOfDid"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CheckEventWindowTime","SetupEvent"
	.wrcm.end
	.wrcm.nelem "SubFuncOnDtcStatusChange"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CheckEventWindowTime","SetupEvent"
	.wrcm.end
	.wrcm.nelem "SetupEvent"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "ChangeEventState","Dcm_NvMRoeBlockChanged"
	.wrcm.end
	.wrcm.nelem "SubFuncReportActivatedEvents"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "CheckEventWindowTime","ServiceToRespondTo"
	.wrcm.end
	.wrcm.nelem "ServiceToRespondTo"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "SubFuncClear"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "ChangeEventState","CheckEventWindowTime","Dcm_NvMRoeBlockChanged"
	.wrcm.end
	.wrcm.nelem "SubFuncStart"
	.wrcm.nint32 "frameSize", 64
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "ChangeEventState","CheckEventWindowTime","Dcm_GetSesCtrlType","Dcm_NvMRoeBlockChanged"
	.wrcm.end
	.wrcm.nelem "SubFuncStop"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "ChangeEventState","CheckEventWindowTime","Dcm_NvMRoeBlockChanged"
	.wrcm.end
	.wrcm.nelem "CheckEventWindowTime"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Dcm_DspRoe_SessionChange"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "ChangeEventState"
	.wrcm.end
	.wrcm.nelem "Dcm_DspRoe_Confirmation"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "QueueIsEmpty","QueueRemove","SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent","SchM_Enter_Dcm_EaTimers","SchM_Exit_Dcm_EaTimers"
	.wrcm.end
	.wrcm.nelem "QueueIsEmpty"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SchM_Enter_Dcm_EaRoeQueue","SchM_Exit_Dcm_EaRoeQueue"
	.wrcm.end
	.wrcm.nelem "Dcm_DspRoe_MainFunction"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent","SchM_Enter_Dcm_EaTimers","SchM_Exit_Dcm_EaTimers"
	.wrcm.end
	.wrcm.nelem "Dcm_DspRoe_Init"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "ChangeEventState","Dcm_NvMRoeBlockChanged","Dcm_NvMRoeInit","SchM_Enter_Dcm_EaTimers","SchM_Exit_Dcm_EaTimers"
	.wrcm.end
	.wrcm.nelem "ChangeEventState"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Dem_DcmControlDTCStatusChangedNotification","QueueRemove"
	.wrcm.end
	.wrcm.nelem "QueueRemove"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "SchM_Enter_Dcm_EaRoeQueue","SchM_Exit_Dcm_EaRoeQueue"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dcm_Dsp_Roe.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dcm_Dsp_Roe.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dcm_Dsp_Roe.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dcm_Dsp_Roe.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dcm_Dsp_Roe.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dcm_Dsp_Roe.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\DIAG\Dcm\ssc\make\..\src\Dcm_Dsp_Roe.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
