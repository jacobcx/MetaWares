#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Dcm_Dsl.c"
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
# static FUNC(boolean, DCM_CODE)checkROESwitch(P2CONST(Dcm_Cfg_RxChannelType, AUTOMATIC, DCM_APPL_CONST) p_RequestRxChannel)
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dcm\\ssc\\make\\..\\src\\Dcm_Dsl.c"
        .d2line         2708,31
#$$ld
.L1234:

#$$bf	checkROESwitch,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
checkROESwitch:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# p_RequestRxChannel=r3 p_RequestRxChannel=r3
	.d2prologue_end
# {
#    boolean isROE = FALSE; /* Always return false if ROE isn't used */
	.d2line		2710
	diab.li		r5,0		# isROE=r5
# 
#    if ((FALSE != p_RequestRxChannel->is_roe) && (NULL_PTR != Dcm_DslInstance.p_active_rx_channel) &&
	.d2line		2712
.Llo5:
	lbz		r0,8(r3)		# p_RequestRxChannel=r3
	se_cmpi		r0,0
	bc		1,2,.L995	# eq
	lis		r4,(Dcm_DslInstance+36)@ha
	lwz		r0,(Dcm_DslInstance+36)@l(r4)
	se_cmpi		r0,0
	bc		1,2,.L995	# eq
	lis		r4,(Dcm_DslInstance+36)@ha
	lwz		r4,(Dcm_DslInstance+36)@l(r4)
	lhz		r0,6(r4)
	lhz		r4,0(r3)		# p_RequestRxChannel=r3
	se_cmp		r0,r4
	bc		0,2,.L995	# ne
#       (Dcm_DslInstance.p_active_rx_channel->roe_pdu_id == p_RequestRxChannel->pdu_id))
#    {
#       /* Switching to ROE protocol from any other protocol need not to inform application, since it is handled internally */
#       isROE = TRUE;
	.d2line		2716
	diab.li		r5,1		# isROE=r5
	b		.L996
.L995:
#    }
#    else if ((NULL_PTR != Dcm_DslInstance.p_active_rx_channel) && (FALSE != Dcm_DslInstance.p_active_rx_channel->is_roe) &&
	.d2line		2718
	lis		r4,(Dcm_DslInstance+36)@ha
	lwz		r0,(Dcm_DslInstance+36)@l(r4)
	se_cmpi		r0,0
	bc		1,2,.L996	# eq
	lis		r4,(Dcm_DslInstance+36)@ha
	lwz		r4,(Dcm_DslInstance+36)@l(r4)
	lbz		r0,8(r4)
	se_cmpi		r0,0
	bc		1,2,.L996	# eq
.Llo2:
	lis		r4,(Dcm_DslInstance+36)@ha
	lwz		r4,(Dcm_DslInstance+36)@l(r4)
	lhz		r0,0(r4)
.Llo3:
	lhz		r3,6(r3)		# p_RequestRxChannel=r3 p_RequestRxChannel=r3
	se_cmp		r0,r3		# p_RequestRxChannel=r3
#       (Dcm_DslInstance.p_active_rx_channel->pdu_id == p_RequestRxChannel->roe_pdu_id))
#    {
#       /* Switching from ROE protocol to previously requested protocol need not to inform application, since it is handled internally */
#       isROE = TRUE;
	.d2line		2722
	diab.li		r3,1		# p_RequestRxChannel=r3
	isel		r5,r3,r5,2		# isROE=r5 p_RequestRxChannel=r3 isROE=r5
.L996:
#    }
#    else
#    {
#       /* If control reaches here, expected return value is isROE = FALSE which is already updated */
#    }
# 
#    return isROE;
	.d2line		2729
.Llo4:
	rlwinm		r3,r5,0,24,31		# p_RequestRxChannel=r3 isROE=r5
# }
	.d2line		2730
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
.L1235:
	.type		checkROESwitch,@function
	.size		checkROESwitch,.-checkROESwitch
# Number of nodes = 70

# Allocations for checkROESwitch
#	?a4		p_RequestRxChannel
#	?a5		isROE
# static FUNC(uint16, DCM_CODE) GetPriorityOfNextPendingChannel(CONSTP2VAR(uint16, AUTOMATIC, DCM_APPL_DATA) indexPtr)
	.align		1
	.section	.text_vle
        .d2line         2786,31
#$$ld
.L1249:

#$$bf	GetPriorityOfNextPendingChannel,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.d2_cfa_start __cie
GetPriorityOfNextPendingChannel:
.Llo7:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# indexPtr=r3 indexPtr=r3
	.d2prologue_end
# {
#    uint16 i;
#    uint16 pendingPriority = 0xFFFFU;
	.d2line		2789
	diab.li		r6,65535		# pendingPriority=r6
# 
#    /* Search through RxChannels, starting with the supplied index */
#    for (i = *indexPtr; i < Dcm_pPbCfg->num_rx_channels; i++)
	.d2line		2792
.Llo10:
	lhz		r4,0(r3)		# indexPtr=r3
.Llo9:
	mr		r4,r4		# i=r4 i=r4
.L1020:
	rlwinm		r0,r4,0,16,31		# i=r4
	lis		r5,Dcm_pPbCfg@ha
	lwz		r5,Dcm_pPbCfg@l(r5)
	lhz		r5,6(r5)
	se_cmp		r0,r5
	bc		0,0,.L1024	# ge
	.section	.text_vle
.L1261:
#    {
#       CONSTP2CONST(Dcm_Cfg_RxChannelType, AUTOMATIC, DCM_APPL_DATA) pChannel = &Dcm_pPbCfg->p_rx_channels[i];
	.d2line		2794
	lis		r5,Dcm_pPbCfg@ha
	lwz		r5,Dcm_pPbCfg@l(r5)
	lwz		r7,8(r5)		# pChannel=r7
.Llo12:
	rlwinm		r0,r4,0,16,31		# i=r4
	e_mulli		r0,r0,44
	se_add		r0,r7		# pChannel=r7
	mr		r7,r0		# pChannel=r7 pChannel=r0
#       if (DCM_CHANNEL_PENDING == *pChannel->p_state)
	.d2line		2795
.Llo13:
	lwz		r5,32(r7)		# pChannel=r7
.Llo14:
	lwz		r0,0(r5)
.Llo15:
	se_cmpi		r0,1
	bc		0,2,.L1023	# ne
#       {
#          /* Found a pending request */
#          *indexPtr = i + (uint16)1U; /* out argument is the start index for the NEXT search. */
	.d2line		2798
.Llo16:
	se_addi		r4,1		# i=r4 i=r4
	sth		r4,0(r3)		# indexPtr=r3 i=r4
#          pendingPriority = (uint16)pChannel->p_protocol->priority;
	.d2line		2799
	lwz		r3,20(r7)		# indexPtr=r3 pChannel=r7
	lbz		r6,1(r3)		# pendingPriority=r6 indexPtr=r3
	mr		r6,r6		# pendingPriority=r6 pendingPriority=r6
	b		.L1024
.L1023:
	.section	.text_vle
.L1262:
#          break;
#       }
#    }
	.d2line		2802
.Llo17:
	diab.addi		r0,r4,1		# i=r4
	se_addi		r4,1		# i=r4 i=r4
	b		.L1020
.L1024:
# 
#    /* If no pending channel was found, the init value will be used. */
#    return pendingPriority;
	.d2line		2805
.Llo8:
	rlwinm		r3,r6,0,16,31		# indexPtr=r3 pendingPriority=r6
# }
	.d2line		2806
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
.L1250:
	.type		GetPriorityOfNextPendingChannel,@function
	.size		GetPriorityOfNextPendingChannel,.-GetPriorityOfNextPendingChannel
# Number of nodes = 55

# Allocations for GetPriorityOfNextPendingChannel
#	?a4		indexPtr
#	?a5		i
#	?a6		pendingPriority
#	?a7		pChannel
# static FUNC(boolean, DCM_CODE) HasLowerOrEqualPriorityThanPendingReq(uint8 const refPriority)
	.align		1
	.section	.text_vle
        .d2line         2813,32
#$$ld
.L1270:

#$$bf	HasLowerOrEqualPriorityThanPendingReq,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.d2_cfa_start __cie
HasLowerOrEqualPriorityThanPendingReq:
.Llo18:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# refPriority=r31 refPriority=r3
	.d2prologue_end
# {
#    uint16 tempPrio;
#    uint16 index = 0;
	.d2line		2816
	diab.li		r0,0
	sth		r0,8(r1)
.L1029:
# 
#    do
#    {
#       tempPrio = GetPriorityOfNextPendingChannel(&index);
	.d2line		2820
.Llo19:
	diab.addi		r3,r1,8		# tempPrio=r3
.Llo20:
	bl		GetPriorityOfNextPendingChannel
	mr		r3,r3		# tempPrio=r3 tempPrio=r3
#       /*
#        * Stay as long as
#        * - There are pending channels
#        * - Pending channel has a priority lower than the reference
#        */
#    } while ((tempPrio != 0xFFFFU) && (tempPrio > (uint16)refPriority));
	.d2line		2826
	e_cmphl16i	r3,65535		# tempPrio=r3
	bc		1,2,.L1030	# eq
	rlwinm		r0,r3,0,16,31		# tempPrio=r3
	rlwinm		r4,r31,0,24,31		# refPriority=r31
	se_cmp		r0,r4
	bc		1,1,.L1029	# gt
.L1030:
# 
#    /*
#     * Reverse logic, 0 is the highest priority,
#     * hence the reference is beaten if the value of the found prio is less or equal
#     */
#    return (boolean)(tempPrio <= (uint16)refPriority);
	.d2line		2832
.Llo21:
	rlwinm		r3,r3,0,16,31		# tempPrio=r3 tempPrio=r3
.Llo22:
	rlwinm		r31,r31,0,24,31		# refPriority=r31 refPriority=r31
	se_cmp		r3,r31		# tempPrio=r3 refPriority=r31
	mfcr		r3		# tempPrio=r3
	rlwinm		r3,r3,2,31,31		# tempPrio=r3 tempPrio=r3
	xori		r3,r3,1		# tempPrio=r3 tempPrio=r3
	rlwinm		r3,r3,0,24,31		# tempPrio=r3 tempPrio=r3
# }
	.d2line		2833
	.d2epilogue_begin
.Llo24:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo23:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1271:
	.type		HasLowerOrEqualPriorityThanPendingReq,@function
	.size		HasLowerOrEqualPriorityThanPendingReq,.-HasLowerOrEqualPriorityThanPendingReq
# Number of nodes = 27

# Allocations for HasLowerOrEqualPriorityThanPendingReq
#	?a4		refPriority
#	?a5		tempPrio
#	SP,8		index
# static FUNC(void, DCM_CODE) TakeRxBuffer(P2CONST(Dcm_Cfg_BufferType, AUTOMATIC, DCM_APPL_CONST) pBuffer, PduIdType const PduId, PduLengthType const PduSize, CONSTP2VAR(PduLengthType, AUTOMATIC, DCM_APPL_CONST) pBufferSize)
	.align		1
	.section	.text_vle
        .d2line         2879,29
#$$ld
.L1281:

#$$bf	TakeRxBuffer,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.d2_cfa_start __cie
TakeRxBuffer:
.Llo25:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pBuffer=r3 pBuffer=r3
	mr		r4,r4		# PduId=r4 PduId=r4
	mr		r5,r5		# PduSize=r5 PduSize=r5
	mr		r7,r6		# pBufferSize=r7 pBufferSize=r6
	.d2prologue_end
# {
#    CONSTP2VAR(Dcm_Cfg_BufferStatusType, AUTOMATIC, DCM_APPL_DATA) pBufferStatus = pBuffer->p_status;
	.d2line		2881
	lwz		r6,8(r3)		# pBuffer=r3
.Llo31:
	mr		r6,r6		# pBufferStatus=r6 pBufferStatus=r6
# 
#    /*
#     * Only take the buffer if requested size is not equal to 0,
#     * since that has a special meaning: Get size
#     */
#    if (PduSize > 0)
	.d2line		2887
	rlwinm		r5,r5,0,16,31		# PduSize=r5 PduSize=r5
	se_cmpi		r5,0		# PduSize=r5
	bc		0,1,.L1045	# le
#    {
#       pBufferStatus->state   = DCM_BUF_BUSY;
	.d2line		2889
.Llo29:
	diab.li		r0,1
	stw		r0,4(r6)		# pBufferStatus=r6
#       pBufferStatus->pdu_id  = PduId;
	.d2line		2890
	sth		r4,0(r6)		# pBufferStatus=r6 PduId=r4
#       pBufferStatus->buf_pos = (PduLengthType)0U;
	.d2line		2891
	diab.li		r0,0
	sth		r0,8(r6)		# pBufferStatus=r6
.L1045:
#    }
#    pBuffer->pdu_info->SduDataPtr = pBuffer->ptr;
	.d2line		2893
.Llo27:
	lwz		r5,4(r3)		# PduSize=r5 pBuffer=r3
.Llo30:
	lwz		r4,12(r3)		# PduId=r4 pBuffer=r3
.Llo28:
	stw		r5,0(r4)		# PduId=r4 PduSize=r5
#    *pBufferSize = pBuffer->size;
	.d2line		2894
	lhz		r3,2(r3)		# pBuffer=r3 pBuffer=r3
	sth		r3,0(r7)		# pBufferSize=r7 pBuffer=r3
# }
	.d2line		2895
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo26:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1282:
	.type		TakeRxBuffer,@function
	.size		TakeRxBuffer,.-TakeRxBuffer
# Number of nodes = 43

# Allocations for TakeRxBuffer
#	?a4		pBuffer
#	?a5		PduId
#	?a6		PduSize
#	?a7		pBufferSize
#	?a8		pBufferStatus
# static FUNC(void, DCM_CODE) TakeRxChannel(P2CONST(Dcm_Cfg_RxChannelType, AUTOMATIC, DCM_APPL_CONST) pRxChannel,
	.align		1
	.section	.text_vle
        .d2line         2897,29
#$$ld
.L1306:

#$$bf	TakeRxChannel,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
TakeRxChannel:
.Llo32:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pRxChannel=r31 pRxChannel=r3
	.d2prologue_end
#                                           PduIdType const PduId,
#                                           PduLengthType const PduSize,
#                                           CONSTP2VAR(PduLengthType, AUTOMATIC, DCM_APPL_CONST) pBufferSize)
# {
#    TakeRxBuffer(pRxChannel->p_buffer, PduId, PduSize, pBufferSize);
	.d2line		2902
.Llo33:
	lwz		r3,12(r31)		# pRxChannel=r31
.Llo34:
	mr		r0,r4		# PduId=r0 PduId=r4
	mr		r0,r5		# PduSize=r0 PduSize=r5
	mr		r0,r6		# pBufferSize=r0 pBufferSize=r6
	bl		TakeRxBuffer
# 
#    *pRxChannel->p_txchannel->p_busy = TRUE;
	.d2line		2904
.Llo36:
	diab.li		r0,1
	lwz		r3,24(r31)		# pRxChannel=r31
	lwz		r3,16(r3)
	stb		r0,0(r3)
#    *pRxChannel->p_state = DCM_CHANNEL_IDLE;
	.d2line		2905
	diab.li		r0,0
	lwz		r3,32(r31)		# pRxChannel=r31
	stw		r0,0(r3)
# 
#    SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine();
	.d2line		2907
	bl		SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine
# }
	.d2line		2908
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo35:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1307:
	.type		TakeRxChannel,@function
	.size		TakeRxChannel,.-TakeRxChannel
# Number of nodes = 34

# Allocations for TakeRxChannel
#	?a4		pRxChannel
#	?a5		PduId
#	?a6		PduSize
#	?a7		pBufferSize
# static FUNC(void, DCM_CODE) Take2ndRxChannel(P2CONST(Dcm_Cfg_RxChannelType, AUTOMATIC, DCM_APPL_CONST) pRxChannel,
	.align		1
	.section	.text_vle
        .d2line         2910,29
#$$ld
.L1315:

#$$bf	Take2ndRxChannel,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Take2ndRxChannel:
.Llo37:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pRxChannel=r31 pRxChannel=r3
	.d2prologue_end
#                                              PduIdType const PduId,
#                                              PduLengthType const PduSize,
#                                              CONSTP2VAR(PduLengthType, AUTOMATIC, DCM_APPL_CONST) pBufferSize)
# {
#    TakeRxBuffer(pRxChannel->p_2ndReqBuffer, PduId, PduSize, pBufferSize);
	.d2line		2915
.Llo38:
	lwz		r3,16(r31)		# pRxChannel=r31
.Llo39:
	mr		r0,r4		# PduId=r0 PduId=r4
	mr		r0,r5		# PduSize=r0 PduSize=r5
	mr		r0,r6		# pBufferSize=r0 pBufferSize=r6
	bl		TakeRxBuffer
#    *pRxChannel->p_txchannel->p_busy = TRUE;
	.d2line		2916
.Llo41:
	diab.li		r0,1
	lwz		r3,24(r31)		# pRxChannel=r31
	lwz		r3,16(r3)
	stb		r0,0(r3)
#    *pRxChannel->p_state = DCM_CHANNEL_2ND_REQ;
	.d2line		2917
	diab.li		r0,3
	lwz		r3,32(r31)		# pRxChannel=r31
	stw		r0,0(r3)
# 
#    SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine();
	.d2line		2919
	bl		SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine
# }
	.d2line		2920
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo40:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1316:
	.type		Take2ndRxChannel,@function
	.size		Take2ndRxChannel,.-Take2ndRxChannel
# Number of nodes = 34

# Allocations for Take2ndRxChannel
#	?a4		pRxChannel
#	?a5		PduId
#	?a6		PduSize
#	?a7		pBufferSize
# FUNC(BufReq_ReturnType, DCM_CODE) Dcm_StartOfReception(PduIdType DcmRxPduId, PduLengthType TpSduLength,
	.align		2
	.section	.text_vle
        .d2line         736,35
#$$ld
.L1324:

#$$bf	Dcm_StartOfReception,interprocedural,rasave,nostackparams
	.globl		Dcm_StartOfReception
	.d2_cfa_start __cie
Dcm_StartOfReception:
.Llo42:
	stwu		r1,-64(r1)		
	.d2_cfa_def_cfa_offset	64
	mfspr		r0,lr
	stmw		r21,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	21,31,1,1
	stw		r0,68(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# DcmRxPduId=r31 DcmRxPduId=r3
	mr		r30,r4		# TpSduLength=r30 TpSduLength=r4
	mr		r29,r5		# RxBufferSizePtr=r29 RxBufferSizePtr=r5
	.d2prologue_end
#                                                        P2VAR(PduLengthType, AUTOMATIC, DCM_APPL_DATA) RxBufferSizePtr)
# {
#    P2CONST(Dcm_Cfg_RxChannelType, AUTOMATIC, DCM_APPL_DATA) pCfgRxChannel;
#    P2CONST(Dcm_Cfg_BufferType, AUTOMATIC, DCM_APPL_DATA) pCfgBuffer;
#    BufReq_ReturnType retVal = BUFREQ_E_NOT_OK;
	.d2line		741
	diab.li		r21,1		# retVal=r21
# 
#    DCM_ASSERT_UNINIT(SID_STARTOFRECEPTION)
	.d2line		743
	lis		r3,Dcm_pPbCfg@ha
.Llo43:
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L516	# ne
.Llo44:
	diab.li		r3,53
.Llo48:
	diab.li		r4,0
	diab.li		r5,70
	diab.li		r6,5
	bl		Det_ReportError
.L516:
#    DCM_ASSERT_NULL_PTR(SID_STARTOFRECEPTION, RxBufferSizePtr)
	.d2line		744
	se_cmpi		r29,0		# RxBufferSizePtr=r29
	bc		0,2,.L517	# ne
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,70
	diab.li		r6,7
	bl		Det_ReportError
.L517:
# 
#    if (NULL_PTR != Dcm_pPbCfg)
	.d2line		746
	lis		r3,Dcm_pPbCfg@ha
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L518	# eq
#    {
#       /*
#        * The source addresses are consecutive and zero based. It's therefore possible to compare
#        * with the num_rx_channels.
#        */
#       DCM_ASSERT_PARAM(SID_STARTOFRECEPTION, (uint16)DcmRxPduId < Dcm_pPbCfg->num_rx_channels)
	.d2line		752
	rlwinm		r4,r31,0,16,31		# DcmRxPduId=r31
	lis		r3,Dcm_pPbCfg@ha
	lwz		r3,Dcm_pPbCfg@l(r3)
	lhz		r0,6(r3)
	se_cmp		r4,r0
	bc		1,0,.L519	# lt
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,70
	diab.li		r6,6
	bl		Det_ReportError
.L519:
# 
#       if (((uint16)DcmRxPduId < Dcm_pPbCfg->num_rx_channels) && (NULL_PTR != RxBufferSizePtr))
	.d2line		754
	rlwinm		r4,r31,0,16,31		# DcmRxPduId=r31
	lis		r3,Dcm_pPbCfg@ha
	lwz		r3,Dcm_pPbCfg@l(r3)
	lhz		r0,6(r3)
	se_cmp		r4,r0
	bc		0,0,.L518	# ge
	se_cmpi		r29,0		# RxBufferSizePtr=r29
	bc		1,2,.L518	# eq
#       {
#          pCfgRxChannel = &Dcm_pPbCfg->p_rx_channels[DcmRxPduId];
	.d2line		756
	lis		r3,Dcm_pPbCfg@ha
	lwz		r3,Dcm_pPbCfg@l(r3)
	lwz		r28,8(r3)		# pCfgRxChannel=r28
.Llo51:
	rlwinm		r3,r31,0,16,31		# DcmRxPduId=r31
	e_mulli		r3,r3,44
	se_add		r3,r28		# pCfgRxChannel=r28
	mr		r28,r3		# pCfgRxChannel=r28 pCfgRxChannel=r3
#          pCfgBuffer = pCfgRxChannel->p_buffer;
	.d2line		757
.Llo52:
	lwz		r27,12(r28)		# pCfgRxChannel=r28
.Llo53:
	mr		r27,r27		# pCfgBuffer=r27 pCfgBuffer=r27
# 
#          /*
#           * In-parameters are valid and Dcm is initialized.
#           */
#          retVal = BUFREQ_OK;
	.d2line		762
	diab.li		r21,0		# retVal=r21
.L518:
#       }
#    }
# 
#    if ((BUFREQ_OK == retVal) && (pCfgBuffer->size < TpSduLength))
	.d2line		766
.Llo54:
	cmpi		0,0,r21,0		# retVal=r21
.Llo55:
	bc		0,2,.L521	# ne
	lhz		r0,2(r27)		# pCfgBuffer=r27
	rlwinm		r4,r30,0,16,31		# TpSduLength=r30
	se_cmp		r0,r4
	bc		0,0,.L521	# ge
#    {
#       /*
#        * Buffer isn't large enough
#        */
#       DCM_ASSERT_PARAM(SID_STARTOFRECEPTION, FALSE)
	.d2line		771
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,70
	diab.li		r6,6
	bl		Det_ReportError
# 
#       retVal = BUFREQ_E_OVFL;
	.d2line		773
	diab.li		r21,3		# retVal=r21
.L521:
#    }
# 
#    if (BUFREQ_OK == retVal)
	.d2line		776
	cmpi		0,0,r21,0		# retVal=r21
	bc		0,2,.L523	# ne
	.section	.text_vle
.L1338:
#    {
#       boolean isRxBufferInUse;
#       boolean isRequestOngoing;
#       boolean isTxBusy;
# 
#       CONSTP2VAR(Dcm_Cfg_BufferStatusType, AUTOMATIC, DCM_APPL_DATA) pBufferStatus = pCfgBuffer->p_status;
	.d2line		782
	lwz		r27,8(r27)		# pCfgBuffer=r27 pCfgBuffer=r27
.Llo57:
	mr		r27,r27		# pBufferStatus=r27 pBufferStatus=r27
# 
#       /* See if there might be an unprocessed high prio req pending. */
#       CONST(boolean, AUTOMATIC) hasLowerOrEqualPrioThanPendingReq = (HasLowerOrEqualPriorityThanPendingReq(pCfgRxChannel->p_protocol->priority) ? TRUE : FALSE);
	.d2line		785
	lwz		r3,20(r28)		# hasLowerOrEqualPrioThanPendingReq=r3 pCfgRxChannel=r28
.Llo84:
	lbz		r3,1(r3)		# hasLowerOrEqualPrioThanPendingReq=r3 hasLowerOrEqualPrioThanPendingReq=r3
.Llo85:
	bl		HasLowerOrEqualPriorityThanPendingReq
.Llo86:
	e_andi.		r3,r3,255		# hasLowerOrEqualPrioThanPendingReq=r3 hasLowerOrEqualPrioThanPendingReq=r3
	diab.li		r0,1		# hasLowerOrEqualPrioThanPendingReq=r0
	isel		r0,r3,r0,2		# hasLowerOrEqualPrioThanPendingReq=r0 hasLowerOrEqualPrioThanPendingReq=r3 hasLowerOrEqualPrioThanPendingReq=r0
.L544:
.Llo87:
	isel		r26,0,r0,2		# hasLowerOrEqualPrioThanPendingReq=r26 hasLowerOrEqualPrioThanPendingReq=r0
.L545:
# 
#       CONST(boolean, AUTOMATIC) hasSameProtocol = (((NULL_PTR != Dcm_DslInstance.p_active_protocol) &&
	.d2line		787
.Llo88:
	lis		r3,(Dcm_DslInstance+8)@ha		# hasLowerOrEqualPrioThanPendingReq=r3
	lwz		r0,(Dcm_DslInstance+8)@l(r3)		# hasLowerOrEqualPrioThanPendingReq=r0 hasLowerOrEqualPrioThanPendingReq=r3
	se_cmpi		r0,0		# hasLowerOrEqualPrioThanPendingReq=r0
	bc		1,2,.L546	# eq
	lis		r3,(Dcm_DslInstance+8)@ha		# hasLowerOrEqualPrioThanPendingReq=r3
	lwz		r0,(Dcm_DslInstance+8)@l(r3)		# hasLowerOrEqualPrioThanPendingReq=r0 hasLowerOrEqualPrioThanPendingReq=r3
	lwz		r3,20(r28)		# hasLowerOrEqualPrioThanPendingReq=r3 pCfgRxChannel=r28
	se_cmpl		r0,r3		# hasLowerOrEqualPrioThanPendingReq=r0 hasLowerOrEqualPrioThanPendingReq=r3
	bc		0,2,.L546	# ne
	diab.li		r25,1		# hasSameProtocol=r25
.Llo89:
	b		.L547
.L546:
.Llo90:
	diab.li		r25,0		# hasSameProtocol=r25
.L547:
#                                                    (Dcm_DslInstance.p_active_protocol == pCfgRxChannel->p_protocol)) ? TRUE : FALSE);
# 
#       CONST(boolean, AUTOMATIC) isInDefaultSession = ((DCM_DEFAULT_SESSION == Dcm_DslInstance.active_session) ? TRUE : FALSE);
	.d2line		790
.Llo91:
	lis		r3,(Dcm_DslInstance+13)@ha		# hasLowerOrEqualPrioThanPendingReq=r3
	lbz		r0,(Dcm_DslInstance+13)@l(r3)		# hasLowerOrEqualPrioThanPendingReq=r0 hasLowerOrEqualPrioThanPendingReq=r3
.Llo93:
	se_cmpi		r0,1		# hasLowerOrEqualPrioThanPendingReq=r0
	diab.li		r3,1		# hasLowerOrEqualPrioThanPendingReq=r3
	isel		r3,r3,r0,2		# isInDefaultSession=r3 hasLowerOrEqualPrioThanPendingReq=r3 isInDefaultSession=r0
.L548:
.Llo94:
	diab.li		r0,0		# isInDefaultSession=r0
.Llo95:
	isel		r24,r3,r0,2		# isInDefaultSession=r24 isInDefaultSession=r3 isInDefaultSession=r0
.L549:
# 
#       CONST(boolean, AUTOMATIC) isRoeSwitch = checkROESwitch(pCfgRxChannel);
	.d2line		792
.Llo96:
	mr		r3,r28		# pCfgRxChannel=r3 pCfgRxChannel=r28
.Llo97:
	bl		checkROESwitch
.Llo98:
	mr		r23,r3		# isRoeSwitch=r23 isRoeSwitch=r3
# 
#       /* Note: The priority is reverse, i.e. a high value is lower priority. */
#       CONST(boolean, AUTOMATIC) hasLowerOrEqualPrio = ((((NULL_PTR != Dcm_DslInstance.p_active_protocol) &&
	.d2line		795
	lis		r3,(Dcm_DslInstance+8)@ha		# pCfgRxChannel=r3
.Llo99:
	lwz		r0,(Dcm_DslInstance+8)@l(r3)		# isInDefaultSession=r0 pCfgRxChannel=r3
	se_cmpi		r0,0		# isInDefaultSession=r0
	bc		1,2,.L553	# eq
.Llo100:
	lis		r3,(Dcm_DslInstance+8)@ha		# pCfgRxChannel=r3
	lwz		r3,(Dcm_DslInstance+8)@l(r3)		# pCfgRxChannel=r3 pCfgRxChannel=r3
	lbz		r0,1(r3)		# isInDefaultSession=r0 pCfgRxChannel=r3
	lwz		r3,20(r28)		# pCfgRxChannel=r3 pCfgRxChannel=r28
	lbz		r3,1(r3)		# pCfgRxChannel=r3 pCfgRxChannel=r3
	se_cmp		r0,r3		# isInDefaultSession=r0 pCfgRxChannel=r3
	bc		0,1,.L552	# le
.L553:
	rlwinm		r0,r26,0,24,31		# isInDefaultSession=r0 hasLowerOrEqualPrioThanPendingReq=r26
	se_cmpi		r0,0		# isInDefaultSession=r0
	bc		1,2,.L550	# eq
.L552:
	diab.li		r22,1		# hasLowerOrEqualPrio=r22
.Llo102:
	b		.L551
.L550:
.Llo103:
	diab.li		r22,0		# hasLowerOrEqualPrio=r22
.L551:
#                                                          (Dcm_DslInstance.p_active_protocol->priority <= pCfgRxChannel->p_protocol->priority)) ||
#                                                         hasLowerOrEqualPrioThanPendingReq) ? TRUE : FALSE);
# 
#       SchM_Enter_Dcm_EaRxBuffers();
	.d2line		799
.Llo104:
	bl		SchM_Enter_Dcm_EaRxBuffers
# 
#       isTxBusy = *pCfgRxChannel->p_txchannel->p_busy;
	.d2line		801
	lwz		r3,24(r28)		# pCfgRxChannel=r3 pCfgRxChannel=r28
	lwz		r3,16(r3)		# pCfgRxChannel=r3 pCfgRxChannel=r3
	lbz		r4,0(r3)		# pCfgRxChannel=r3
.Llo79:
	mr		r4,r4		# isTxBusy=r4 isTxBusy=r4
#       isRxBufferInUse = ((DCM_BUF_EMPTY != pBufferStatus->state) ? TRUE : FALSE);
	.d2line		802
	lwz		r0,4(r27)		# isInDefaultSession=r0 pBufferStatus=r27
	se_cmpi		r0,0		# isInDefaultSession=r0
	diab.li		r0,1		# isInDefaultSession=r0
	isel		r0,r3,r0,2		# isInDefaultSession=r0 pCfgRxChannel=r3 isInDefaultSession=r0
.L554:
	isel		r3,0,r0,2		# pCfgRxChannel=r3 isInDefaultSession=r0
.L555:
.Llo59:
	mr		r0,r3		# isRxBufferInUse=r0 isRxBufferInUse=r3
# 
#       /*
#        * The Dcm is considered occupied with an ongoing request when:
#        * - The Rx buffer is not empty or
#        * - DSL state machine is not idle or
#        * - There is a pending channel on a protocol with higher prio
#        */
#       isRequestOngoing = ((isRxBufferInUse || (Dcm_DslInstance.dsl_state != DSL_IDLE) || hasLowerOrEqualPrioThanPendingReq) ? TRUE : FALSE);
	.d2line		810
	e_andi.		r3,r3,255		# pCfgRxChannel=r3 pCfgRxChannel=r3
.Llo60:
	bc		0,2,.L558	# ne
.Llo61:
	lis		r3,Dcm_DslInstance@ha		# pCfgRxChannel=r3
	lwz		r3,Dcm_DslInstance@l(r3)		# pCfgRxChannel=r3 pCfgRxChannel=r3
	se_cmpi		r3,0		# pCfgRxChannel=r3
	bc		0,2,.L558	# ne
	rlwinm		r26,r26,0,24,31		# hasLowerOrEqualPrioThanPendingReq=r26 hasLowerOrEqualPrioThanPendingReq=r26
	se_cmpi		r26,0		# hasLowerOrEqualPrioThanPendingReq=r26
	bc		1,2,.L556	# eq
.L558:
	diab.li		r5,1
.Llo74:
	b		.L557
.L556:
.Llo75:
	diab.li		r5,0
.L557:
.Llo76:
	mr		r3,r5		# isRequestOngoing=r3 isRequestOngoing=r5
# 
#       /*
#        *  When a second request is coming the two normal cases are:
#        *  lower (or equal) priority -> drop or send BRR
#        *  higher priority           -> preemption
#        *
#        *  ... but there are several exceptions.
#        */
#       if (hasLowerOrEqualPrio)
	.d2line		819
.Llo105:
	rlwinm		r22,r22,0,24,31		# hasLowerOrEqualPrio=r22 hasLowerOrEqualPrio=r22
	cmpi		0,0,r22,0		# hasLowerOrEqualPrio=r22
	bc		1,2,.L524	# eq
#       {
#          /*
#           * [SWS_Dcm_00727] A diagnostic request is already running and a second request can not be processed
#           * (e.g.due to priority assessment).
#           */
#          if (isRequestOngoing)
	.d2line		825
.Llo106:
	e_andi.		r3,r5,255		# pCfgRxChannel=r3
	bc		1,2,.L525	# eq
#          {
#             /*
#              * Make sure the buffer is in use before checking id
#              * since 0 is a valid id and an empty buffer has 0 as default value for the id
#              */
#             if (isRxBufferInUse && (pBufferStatus->pdu_id == DcmRxPduId))
	.d2line		831
.Llo77:
	rlwinm		r0,r0,0,24,31		# isRxBufferInUse=r0 isRxBufferInUse=r0
	se_cmpi		r0,0		# isRxBufferInUse=r0
	bc		1,2,.L526	# eq
.Llo62:
	lhz		r0,0(r27)		# isRxBufferInUse=r0 pBufferStatus=r27
.Llo63:
	rlwinm		r3,r31,0,16,31		# pCfgRxChannel=r3 DcmRxPduId=r31
	se_cmp		r0,r3		# isRxBufferInUse=r0 pCfgRxChannel=r3
	bc		0,2,.L526	# ne
#             {
#                /*
#                 * [SWS_Dcm_00557] If the 2nd request is using the same PduId as the first it shall be dropped.
#                 */
#                retVal = BUFREQ_E_NOT_OK;
	.d2line		836
.Llo64:
	diab.li		r21,1		# retVal=r21
	b		.L537
.L526:
#             }
#             else /* Different PduId */
#             {
#                /*
#                 * [SWS_Dcm_00656] When 2nd requests protocol has lower or equal priority
#                 *  behavior is decided by parameter DcmDslDiagRespOnSecondDeclinedRequest.
#                 */
#                if ((Dcm_LCfg.resp_on_second_declined_request) && !isTxBusy && !pCfgRxChannel->is_roe)
	.d2line		844
.Llo83:
	lis		r3,(Dcm_LCfg+8)@ha		# pCfgRxChannel=r3
	lbz		r0,(Dcm_LCfg+8)@l(r3)		# isRxBufferInUse=r0 pCfgRxChannel=r3
.Llo65:
	se_cmpi		r0,0		# isRxBufferInUse=r0
	bc		1,2,.L528	# eq
.Llo66:
	rlwinm		r4,r4,0,24,31		# isTxBusy=r4 isTxBusy=r4
	se_cmpi		r4,0		# isTxBusy=r4
	bc		0,2,.L528	# ne
.Llo80:
	lbz		r0,8(r28)		# isRxBufferInUse=r0 pCfgRxChannel=r28
.Llo67:
	se_cmpi		r0,0		# isRxBufferInUse=r0
	bc		0,2,.L528	# ne
#                {
#                   /* [SWS_Dcm_00788] */
#                   Take2ndRxChannel(pCfgRxChannel, DcmRxPduId, TpSduLength, RxBufferSizePtr);
	.d2line		847
.Llo68:
	mr		r6,r29		# RxBufferSizePtr=r6 RxBufferSizePtr=r29
	mr		r5,r30		# TpSduLength=r5 TpSduLength=r30
	mr		r4,r31		# DcmRxPduId=r4 DcmRxPduId=r31
	mr		r3,r28		# pCfgRxChannel=r3 pCfgRxChannel=r28
	bl		Take2ndRxChannel
	b		.L537
.L528:
#                }
#                else
#                {
#                   /*
#                    * The second request shall be dropped silently [SWS_Dcm_00790] if DcmDslDiagRespOnSecondDeclinedRequest was false,
#                    * or if the Tx resources are not available then BRR can't be sent.
#                    */
#                   retVal = BUFREQ_E_NOT_OK;
	.d2line		855
.Llo81:
	diab.li		r21,1		# retVal=r21
	b		.L537
.L525:
#                }
#             }
#          }
#          else /* No ongoing request (Rx and Tx Buffer(s) are free) */
#          {
#             if (isInDefaultSession)
	.d2line		861
.Llo69:
	rlwinm		r24,r24,0,24,31		# isInDefaultSession=r24 isInDefaultSession=r24
	se_cmpi		r24,0		# isInDefaultSession=r24
	bc		1,2,.L531	# eq
#             {
#                /* pre-emption [SWS_Dcm_00625] */
#                TakeRxChannel(pCfgRxChannel, DcmRxPduId, TpSduLength, RxBufferSizePtr);
	.d2line		864
.Llo70:
	mr		r6,r29		# RxBufferSizePtr=r6 RxBufferSizePtr=r29
	mr		r5,r30		# TpSduLength=r5 TpSduLength=r30
	mr		r4,r31		# DcmRxPduId=r4 DcmRxPduId=r31
	mr		r3,r28		# pCfgRxChannel=r3 pCfgRxChannel=r28
	bl		TakeRxChannel
	b		.L537
.L531:
#             }
#             else /* in non-default session */
#             {
#                if (hasSameProtocol || isRoeSwitch)
	.d2line		868
	rlwinm		r25,r25,0,24,31		# hasSameProtocol=r25 hasSameProtocol=r25
	se_cmpi		r25,0		# hasSameProtocol=r25
	bc		0,2,.L559	# ne
.Llo92:
	rlwinm		r23,r23,0,24,31		# isRoeSwitch=r23 isRoeSwitch=r23
	cmpi		0,0,r23,0		# isRoeSwitch=r23
	bc		1,2,.L533	# eq
.L559:
#                {
#                   /*
#                    * Since the ROE protocol is handled internally, the session requirement for protocol preemption
#                    * should not be applied to ROE protocol.
#                    *
#                    * If it is a tester present it will be dropped later in TpRxIndication()
#                    */
#                   TakeRxChannel(pCfgRxChannel, DcmRxPduId, TpSduLength, RxBufferSizePtr);
	.d2line		876
	mr		r6,r29		# RxBufferSizePtr=r6 RxBufferSizePtr=r29
	mr		r5,r30		# TpSduLength=r5 TpSduLength=r30
	mr		r4,r31		# DcmRxPduId=r4 DcmRxPduId=r31
	mr		r3,r28		# pCfgRxChannel=r3 pCfgRxChannel=r28
	bl		TakeRxChannel
	b		.L537
.L533:
#                }
#                else /* Different protocols */
#                {
#                   /*
#                    * [SWS_Dcm_00655] When:
#                    *  - non-default session AND
#                    *  - new request (no ongoing) AND
#                    *  - on different protocol AND
#                    *  - 2nd requests protocol has lower or equal priority
#                    *
#                    *  ... behavior is decided by parameter DcmDslDiagRespOnSecondDeclinedRequest:
#                    */
#                   if (Dcm_LCfg.resp_on_second_declined_request)
	.d2line		889
.Llo101:
	lis		r3,(Dcm_LCfg+8)@ha		# pCfgRxChannel=r3
	lbz		r0,(Dcm_LCfg+8)@l(r3)		# pCfgRxChannel=r0 pCfgRxChannel=r3
	se_cmpi		r0,0		# pCfgRxChannel=r0
	bc		1,2,.L535	# eq
#                   {
#                      /* [SWS_Dcm_00788] */
#                      Take2ndRxChannel(pCfgRxChannel, DcmRxPduId, TpSduLength, RxBufferSizePtr);
	.d2line		892
	mr		r6,r29		# RxBufferSizePtr=r6 RxBufferSizePtr=r29
	mr		r5,r30		# TpSduLength=r5 TpSduLength=r30
	mr		r4,r31		# DcmRxPduId=r4 DcmRxPduId=r31
	mr		r3,r28		# pCfgRxChannel=r3 pCfgRxChannel=r28
	bl		Take2ndRxChannel
	b		.L537
.L535:
#                   }
#                   else
#                   {
#                      /* Just drop the request [SWS_Dcm_00790] */
#                      retVal = BUFREQ_E_NOT_OK;
	.d2line		897
	diab.li		r21,1		# retVal=r21
	b		.L537
.L524:
#                   }
#                }
#             }
#          }
#       }
#       else /* new requests protocol has higher priority */
#       {
#          if (isRequestOngoing)
	.d2line		905
.Llo71:
	e_andi.		r3,r5,255		# pCfgRxChannel=r3
	bc		1,2,.L538	# eq
#          {
#             if (isRxBufferInUse || isTxBusy)
	.d2line		907
.Llo78:
	rlwinm		r0,r0,0,24,31		# isRxBufferInUse=r0 isRxBufferInUse=r0
	se_cmpi		r0,0		# isRxBufferInUse=r0
	bc		0,2,.L560	# ne
.Llo72:
	rlwinm		r4,r4,0,24,31		# isTxBusy=r4 isTxBusy=r4
	se_cmpi		r4,0		# isTxBusy=r4
	bc		1,2,.L539	# eq
.L560:
#             {
#                /*
#                 * Not possible to do anything if buffers are in use
#                 * (Tester present is also dropped)
#                 */
#                retVal = BUFREQ_E_NOT_OK;
	.d2line		913
	diab.li		r21,1		# retVal=r21
	b		.L537
.L539:
#             }
#             else
#             {
#                /*
#                 * If it is a tester present it will be dropped later in TpRxIndication()
#                 */
#                TakeRxChannel(pCfgRxChannel, DcmRxPduId, TpSduLength, RxBufferSizePtr);
	.d2line		920
.Llo82:
	mr		r6,r29		# RxBufferSizePtr=r6 RxBufferSizePtr=r29
	mr		r5,r30		# TpSduLength=r5 TpSduLength=r30
	mr		r4,r31		# DcmRxPduId=r4 DcmRxPduId=r31
	mr		r3,r28		# pCfgRxChannel=r3 pCfgRxChannel=r28
	bl		TakeRxChannel
	b		.L537
.L538:
#             }
#          }
#          else /* No ongoing request */
#          {
#             /* [SWS_Dcm_00459] */
#             TakeRxChannel(pCfgRxChannel, DcmRxPduId, TpSduLength, RxBufferSizePtr);
	.d2line		926
	mr		r6,r29		# RxBufferSizePtr=r6 RxBufferSizePtr=r29
	mr		r5,r30		# TpSduLength=r5 TpSduLength=r30
	mr		r4,r31		# DcmRxPduId=r4 DcmRxPduId=r31
	mr		r3,r28		# pCfgRxChannel=r3 pCfgRxChannel=r28
	bl		TakeRxChannel
.L537:
#          }
#       }
# 
#       SchM_Exit_Dcm_EaRxBuffers();
	.d2line		930
.Llo45:
	bl		SchM_Exit_Dcm_EaRxBuffers
	.section	.text_vle
.L1339:
.L523:
#    }
# 
#    if (BUFREQ_OK == retVal)
	.d2line		933
.Llo46:
	cmpi		0,0,r21,0		# retVal=r21
	bc		0,2,.L542	# ne
#    {
#       /* Buffer successfully provided from PduRouter, stop S3Server according to [SWS_Dcm_00141] */
#       StopS3ServerTimer();
	.d2line		936
.Llo47:
	bl		SchM_Enter_Dcm_EaTimers
	diab.li		r0,65535		# isRxBufferInUse=r0
.Llo73:
	lis		r3,(Dcm_DslInstance+14)@ha		# pCfgRxChannel=r3
.Llo56:
	sth		r0,(Dcm_DslInstance+14)@l(r3)		# pCfgRxChannel=r3 isRxBufferInUse=r0
	bl		SchM_Exit_Dcm_EaTimers
.L542:
#    }
# 
#    return retVal;
	.d2line		939
.Llo49:
	mr		r3,r21		# retVal=r3 retVal=r21
# }
	.d2line		940
	.d2epilogue_begin
	lmw		r21,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	2,10
.Llo58:
	lwz		r0,68(r1)		# isRxBufferInUse=r0
	mtspr		lr,r0		# isRxBufferInUse=lr
	diab.addi		r1,r1,64		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo50:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1325:
	.type		Dcm_StartOfReception,@function
	.size		Dcm_StartOfReception,.-Dcm_StartOfReception
# Number of nodes = 447

# Allocations for Dcm_StartOfReception
#	?a4		DcmRxPduId
#	?a5		TpSduLength
#	?a6		RxBufferSizePtr
#	?a7		$$42
#	?a8		$$41
#	?a9		pCfgRxChannel
#	?a10		pCfgBuffer
#	?a11		retVal
#	?a12		isRxBufferInUse
#	?a13		isRequestOngoing
#	?a14		isTxBusy
#	?a15		pBufferStatus
#	?a16		hasLowerOrEqualPrioThanPendingReq
#	?a17		hasSameProtocol
#	?a18		isInDefaultSession
#	?a19		isRoeSwitch
#	?a20		hasLowerOrEqualPrio
# FUNC(BufReq_ReturnType, DCM_CODE) Dcm_CopyRxData(  PduIdType DcmRxPduId,
	.align		2
	.section	.text_vle
        .d2line         945,35
#$$ld
.L1363:

#$$bf	Dcm_CopyRxData,interprocedural,rasave,nostackparams
	.globl		Dcm_CopyRxData
	.d2_cfa_start __cie
Dcm_CopyRxData:
.Llo107:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	27,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# DcmRxPduId=r31 DcmRxPduId=r3
	mr		r30,r4		# PduInfoPtr=r30 PduInfoPtr=r4
	mr		r29,r5		# RxBufferSizePtr=r29 RxBufferSizePtr=r5
	.d2prologue_end
#                                                    P2VAR(PduInfoType, AUTOMATIC, DCM_APPL_DATA) PduInfoPtr,
#                                                    P2VAR(PduLengthType, AUTOMATIC, DCM_APPL_DATA) RxBufferSizePtr)
# {
#    BufReq_ReturnType retVal;
# 
#    DCM_ASSERT_UNINIT(SID_COPYRXDATA)
	.d2line		951
	lis		r3,Dcm_pPbCfg@ha
.Llo108:
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L596	# ne
.Llo109:
	diab.li		r3,53
.Llo117:
	diab.li		r4,0
	diab.li		r5,68
	diab.li		r6,5
	bl		Det_ReportError
.L596:
#    DCM_ASSERT_NULL_PTR(SID_COPYRXDATA, PduInfoPtr)
	.d2line		952
	se_cmpi		r30,0		# PduInfoPtr=r30
	bc		0,2,.L597	# ne
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,68
	diab.li		r6,7
	bl		Det_ReportError
.L597:
#    DCM_ASSERT_NULL_PTR(SID_COPYRXDATA, RxBufferSizePtr)
	.d2line		953
	se_cmpi		r29,0		# RxBufferSizePtr=r29
	bc		0,2,.L598	# ne
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,68
	diab.li		r6,7
	bl		Det_ReportError
.L598:
# 
#    if (NULL_PTR != Dcm_pPbCfg)
	.d2line		955
	lis		r3,Dcm_pPbCfg@ha
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L599	# eq
#    {
#       /*
#       * The source addresses are consecutive and zero based. It's therefore possible to compare
#       * with the num_rx_channels.
#       */
#       DCM_ASSERT_PARAM(SID_COPYRXDATA, (uint16)DcmRxPduId < Dcm_pPbCfg->num_rx_channels)
	.d2line		961
	rlwinm		r4,r31,0,16,31		# DcmRxPduId=r31
	lis		r3,Dcm_pPbCfg@ha
	lwz		r3,Dcm_pPbCfg@l(r3)
	lhz		r0,6(r3)
	se_cmp		r4,r0
	bc		1,0,.L600	# lt
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,68
	diab.li		r6,6
	bl		Det_ReportError
.L600:
#       /*
#        * Make sure in parameters have proper values
#        */
#       if (((uint16)DcmRxPduId < Dcm_pPbCfg->num_rx_channels) && (NULL_PTR != PduInfoPtr) && (NULL_PTR != RxBufferSizePtr))
	.d2line		965
	rlwinm		r4,r31,0,16,31		# DcmRxPduId=r31
	lis		r3,Dcm_pPbCfg@ha
	lwz		r3,Dcm_pPbCfg@l(r3)
	lhz		r0,6(r3)
	se_cmp		r4,r0
	bc		0,0,.L601	# ge
	se_cmpi		r30,0		# PduInfoPtr=r30
	bc		1,2,.L601	# eq
	se_cmpi		r29,0		# RxBufferSizePtr=r29
	bc		1,2,.L601	# eq
	.section	.text_vle
.L1374:
#       {
#          P2CONST(Dcm_Cfg_BufferType, AUTOMATIC, DCM_APPL_DATA) pCfgBuffer =  Dcm_pPbCfg->p_rx_channels[DcmRxPduId].p_buffer;
	.d2line		967
	lis		r3,Dcm_pPbCfg@ha
	lwz		r4,Dcm_pPbCfg@l(r3)
	lwz		r5,8(r4)
	rlwinm		r4,r31,0,16,31		# DcmRxPduId=r31
	e_mulli		r4,r4,44
	se_add		r5,r4
	lwz		r28,12(r5)		# pCfgBuffer=r28
.Llo129:
	mr		r28,r28		# pCfgBuffer=r28 pCfgBuffer=r28
#          P2VAR(Dcm_Cfg_BufferStatusType, AUTOMATIC, DCM_APPL_DATA) pBufferStatus;
#          PduLengthType bytesToCopyLimit = pCfgBuffer->size;
	.d2line		969
	lhz		r0,2(r28)		# pCfgBuffer=r28
.Llo131:
	mr		r0,r0		# bytesToCopyLimit=r0 bytesToCopyLimit=r0
# 
#          /* Data from a second request shall be copied to special buffer to avoid overwriting the first request's buffer */
#          if (DCM_CHANNEL_2ND_REQ == *Dcm_pPbCfg->p_rx_channels[DcmRxPduId].p_state)
	.d2line		972
	lwz		r3,Dcm_pPbCfg@l(r3)
	lwz		r3,8(r3)
	se_add		r4,r3
	lwz		r3,32(r4)
	lwz		r3,0(r3)
	se_cmpi		r3,3
	bc		0,2,.L602	# ne
#          {
#             pCfgBuffer =  Dcm_pPbCfg->p_rx_channels[DcmRxPduId].p_2ndReqBuffer;
	.d2line		974
	lis		r3,Dcm_pPbCfg@ha
	lwz		r3,Dcm_pPbCfg@l(r3)
	lwz		r0,8(r3)		# bytesToCopyLimit=r0
	rlwinm		r3,r31,0,16,31		# DcmRxPduId=r31
	e_mulli		r3,r3,44
	se_add		r3,r0		# bytesToCopyLimit=r0
	lwz		r28,16(r3)		# pCfgBuffer=r28
	mr		r28,r28		# pCfgBuffer=r28 pCfgBuffer=r28
#             /* To save space the 2nd request buffer is truncated */
#             bytesToCopyLimit = DCM_INT_SIZE_OF_2ND_RX_BUFFER;
	.d2line		976
	diab.li		r0,2		# bytesToCopyLimit=r0
.L602:
#          }
#          pBufferStatus = pCfgBuffer->p_status;
	.d2line		978
	lwz		r27,8(r28)		# pBufferStatus=r27 pCfgBuffer=r28
.Llo130:
	mr		r27,r27		# pBufferStatus=r27 pBufferStatus=r27
# 
#          if ((DCM_BUF_EMPTY != pBufferStatus->state) &&
	.d2line		980
	lwz		r3,4(r27)		# pBufferStatus=r27
	se_cmpi		r3,0
	bc		1,2,.L603	# eq
.Llo110:
	lhz		r3,0(r27)		# pBufferStatus=r27
.Llo111:
	rlwinm		r31,r31,0,16,31		# DcmRxPduId=r31 DcmRxPduId=r31
	se_cmp		r3,r31		# DcmRxPduId=r31
	bc		1,2,.L603	# eq
#              (pBufferStatus->pdu_id != DcmRxPduId))
#          {
#             /* Buffer is being processed by DCM for another Pdu */
#             retVal = BUFREQ_E_NOT_OK;
	.d2line		984
.Llo112:
	diab.li		r3,1		# retVal=r3
.Llo121:
	b		.L613
.L603:
#          }
#          else if (0 == PduInfoPtr->SduLength)
	.d2line		986
.Llo113:
	lhz		r3,4(r30)		# PduInfoPtr=r30
	se_cmpi		r3,0
	bc		0,2,.L605	# ne
#          {
#             /* Return remaining size of buffer */
#             *RxBufferSizePtr = pCfgBuffer->size - pBufferStatus->buf_pos;
	.d2line		989
.Llo114:
	lhz		r0,2(r28)		# bytesToCopyLimit=r0 pCfgBuffer=r28
.Llo132:
	lhz		r3,8(r27)		# retVal=r3 pBufferStatus=r27
.Llo122:
	subf		r3,r3,r0		# retVal=r3 retVal=r3 bytesToCopyLimit=r0
	sth		r3,0(r29)		# RxBufferSizePtr=r29 retVal=r3
# 
#             retVal = BUFREQ_OK;
	.d2line		991
	diab.li		r3,0		# retVal=r3
	b		.L613
.L605:
#          }
#          else if ((pCfgBuffer->size - pBufferStatus->buf_pos) < PduInfoPtr->SduLength)
	.d2line		993
.Llo123:
	lhz		r3,2(r28)		# pCfgBuffer=r28
	lhz		r4,8(r27)		# pBufferStatus=r27
	subf		r4,r4,r3
	lhz		r3,4(r30)		# PduInfoPtr=r30
	se_cmp		r4,r3
	bc		0,0,.L607	# ge
#          {
#             /*
#              * Incoming data does not fit in buffer.
#              * Note that fake buffers for 2nd req still has a large pCfgBuffer->size */
#             retVal = BUFREQ_E_NOT_OK;
	.d2line		998
	diab.li		r3,1		# retVal=r3
.Llo124:
	b		.L613
.L607:
	.section	.text_vle
.L1384:
#          }
#          else
#          {
#             PduLengthType bytesToCopy = PduInfoPtr->SduLength;
	.d2line		1002
.Llo125:
	lhz		r5,4(r30)		# PduInfoPtr=r30
.Llo137:
	mr		r5,r5		# bytesToCopy=r5 bytesToCopy=r5
# 
#             /*
#              * This checks are primarily here to handle 2nd req, since it uses a truncated buffer.
#              * Note that when handling a fake buffer no copying will take place after the short buffer is filled
#              */
#             if (pBufferStatus->buf_pos < bytesToCopyLimit)
	.d2line		1008
	lhz		r3,8(r27)		# pBufferStatus=r27
	rlwinm		r4,r0,0,16,31		# bytesToCopyLimit=r0
	se_cmp		r3,r4
	bc		0,0,.L609	# ge
#             {
#                /* Current data + incoming data reached behind the limit -> truncate */
#                if ((pBufferStatus->buf_pos + bytesToCopy) > bytesToCopyLimit )
	.d2line		1011
	lhz		r4,8(r27)		# pBufferStatus=r27
	rlwinm		r3,r5,0,16,31		# bytesToCopy=r5
	se_add		r4,r3
	rlwinm		r3,r0,0,16,31		# bytesToCopyLimit=r0
	se_cmp		r4,r3
	bc		0,1,.L610	# le
#                {
#                   bytesToCopy = PduInfoPtr->SduLength - pBufferStatus->buf_pos;
	.d2line		1013
	lhz		r3,4(r30)		# PduInfoPtr=r30
	lhz		r5,8(r27)		# bytesToCopy=r5 pBufferStatus=r27
	subf		r5,r5,r3		# bytesToCopy=r5 bytesToCopy=r5
	mr		r5,r5		# bytesToCopy=r5 bytesToCopy=r5
#                   if (bytesToCopy > bytesToCopyLimit )
	.d2line		1014
	rlwinm		r3,r5,0,16,31		# bytesToCopy=r5
	rlwinm		r4,r0,0,16,31		# bytesToCopyLimit=r0
	se_cmp		r3,r4
	bc		0,1,.L610	# le
#                   {
#                      /* Only copy the bytes between the offset and the end of the buffer */
#                      bytesToCopy = bytesToCopyLimit - pBufferStatus->buf_pos;
	.d2line		1017
	lhz		r5,8(r27)		# bytesToCopy=r5 pBufferStatus=r27
	subf		r5,r5,r0		# bytesToCopy=r5 bytesToCopy=r5 bytesToCopyLimit=r0
	mr		r5,r5		# bytesToCopy=r5 bytesToCopy=r5
.L610:
#                   }
#                }
#                Dcm_Memcpy(&pCfgBuffer->ptr[pBufferStatus->buf_pos], PduInfoPtr->SduDataPtr, (Dcm_MsgLenType)bytesToCopy);
	.d2line		1020
.Llo133:
	lwz		r3,4(r28)		# pCfgBuffer=r28
	lhz		r0,8(r27)		# bytesToCopyLimit=r0 pBufferStatus=r27
.Llo134:
	se_add		r3,r0		# bytesToCopyLimit=r0
	lwz		r4,0(r30)		# PduInfoPtr=r30
	rlwinm		r5,r5,0,16,31		# bytesToCopy=r5 bytesToCopy=r5
.Llo138:
	bl		Dcm_Memcpy
.L609:
#             }
# 
#             /*
#              * Buffer position is not pushed by bytesToCopy since at this point it shall APPEAR that the whole
#              * content is copied. But in the case when handling 2nd req only a (short) fake buffer is used
#              * for the actual content.
#              */
#             pBufferStatus->buf_pos += PduInfoPtr->SduLength;
	.d2line		1028
.Llo135:
	lhz		r0,8(r27)		# bytesToCopyLimit=r0 pBufferStatus=r27
.Llo136:
	lhz		r3,4(r30)		# retVal=r3 PduInfoPtr=r30
.Llo126:
	se_add		r0,r3		# bytesToCopyLimit=r0 bytesToCopyLimit=r0 retVal=r3
	sth		r0,8(r27)		# pBufferStatus=r27 bytesToCopyLimit=r0
	.d2line		1029
	rlwinm		r0,r0,0,16,31		# bytesToCopyLimit=r0 bytesToCopyLimit=r0
#             *RxBufferSizePtr = pCfgBuffer->size - pBufferStatus->buf_pos;
	lhz		r3,2(r28)		# retVal=r3 pCfgBuffer=r28
	subf		r0,r0,r3		# bytesToCopyLimit=r0 bytesToCopyLimit=r0 retVal=r3
	sth		r0,0(r29)		# RxBufferSizePtr=r29 bytesToCopyLimit=r0
# 
#             retVal = BUFREQ_OK;
	.d2line		1031
	diab.li		r3,0		# retVal=r3
	.section	.text_vle
.L1385:
	.section	.text_vle
.L1375:
.Llo118:
	b		.L613
.L601:
#          }
#       }
#       else
#       {
#          /*
#           * Invalid in-parameters. Error code already set.
#           */
#          retVal = BUFREQ_E_NOT_OK;
	.d2line		1039
.Llo115:
	diab.li		r3,1		# retVal=r3
.Llo127:
	b		.L613
.L599:
#       }
#    }
#    else
#    {
#       /* Dcm not initialised. Error code already set. */
#       retVal = BUFREQ_E_NOT_OK;
	.d2line		1045
.Llo128:
	diab.li		r3,1		# retVal=r3
.L613:
#    }
# 
#    return retVal;
	.d2line		1048
.Llo116:
	mr		r3,r3		# retVal=r3 retVal=r3
# }
	.d2line		1049
	.d2epilogue_begin
.Llo119:
	lmw		r27,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,52(r1)		# bytesToCopyLimit=r0
	mtspr		lr,r0		# bytesToCopyLimit=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo120:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1364:
	.type		Dcm_CopyRxData,@function
	.size		Dcm_CopyRxData,.-Dcm_CopyRxData
# Number of nodes = 294

# Allocations for Dcm_CopyRxData
#	?a4		DcmRxPduId
#	?a5		PduInfoPtr
#	?a6		RxBufferSizePtr
#	?a7		retVal
#	?a8		pCfgBuffer
#	?a9		pBufferStatus
#	?a10		bytesToCopyLimit
#	?a11		bytesToCopy
# static FUNC(void, DCM_CODE) ReleaseRxChannel(CONSTP2CONST(Dcm_Cfg_RxChannelType, AUTOMATIC, DCM_APPL_CONST) pRxChannel)
	.align		1
	.section	.text_vle
        .d2line         2925,29
#$$ld
.L1392:

#$$bf	ReleaseRxChannel,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
ReleaseRxChannel:
.Llo139:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr.		r3,r3		# pRxChannel=?a4 pRxChannel=r3
	.d2prologue_end
# {
#    /*
#     * For bootloader interaction will a transmit be sent without a prior reception.
#     * Therefore might the pRxChannel be empty and cannot be freed.
#     */
#    if (pRxChannel != NULL_PTR)
	.d2line		2931
	bc		1,2,.L1049	# eq
	.section	.text_vle
.L1396:
#    {
#       /*
#        * The state of the Rx channel decides which buffer to clean
#        */
#       P2VAR(Dcm_Cfg_BufferStatusType, AUTOMATIC, DCM_APPL_DATA) pBufferStatus;
#       if (DCM_CHANNEL_2ND_REQ == *pRxChannel->p_state)
	.d2line		2937
	lwz		r4,32(r3)		# pRxChannel=r3
	lwz		r0,0(r4)
	se_cmpi		r0,3
	bc		0,2,.L1051	# ne
#       {
#          pBufferStatus = pRxChannel->p_2ndReqBuffer->p_status;
	.d2line		2939
	lwz		r4,16(r3)		# pRxChannel=r3
	lwz		r5,8(r4)
.Llo141:
	mr		r5,r5		# pBufferStatus=r5 pBufferStatus=r5
	b		.L1052
.L1051:
#       }
#       else
#       {
#          pBufferStatus = pRxChannel->p_buffer->p_status;
	.d2line		2943
.Llo142:
	lwz		r4,12(r3)		# pRxChannel=r3
	lwz		r5,8(r4)
.Llo143:
	mr		r5,r5		# pBufferStatus=r5 pBufferStatus=r5
.L1052:
#       }
# 
#       *pRxChannel->p_txchannel->p_busy = FALSE;
	.d2line		2946
	diab.li		r0,0
	lwz		r4,24(r3)		# pRxChannel=r3
	lwz		r4,16(r4)
	stb		r0,0(r4)
#       *pRxChannel->p_state = DCM_CHANNEL_IDLE;
	.d2line		2947
	lwz		r3,32(r3)		# pRxChannel=r3 pRxChannel=r3
	stw		r0,0(r3)		# pRxChannel=r3
#       pBufferStatus->state = DCM_BUF_EMPTY;
	.d2line		2948
	stw		r0,4(r5)		# pBufferStatus=r5
#       pBufferStatus->buf_pos = (PduLengthType)0U;
	.d2line		2949
	sth		r0,8(r5)		# pBufferStatus=r5
	.section	.text_vle
.L1397:
.L1049:
#    }
# }
	.d2line		2951
	.d2epilogue_begin
.Llo140:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1393:
	.type		ReleaseRxChannel,@function
	.size		ReleaseRxChannel,.-ReleaseRxChannel
# Number of nodes = 58

# Allocations for ReleaseRxChannel
#	?a4		pRxChannel
#	?a5		pBufferStatus
# static FUNC(boolean, DCM_CODE) HandleConcurrentTesterPresent(CONSTP2CONST(Dcm_Cfg_RxChannelType, AUTOMATIC, DCM_APPL_DATA) pRxChannel,
	.align		1
	.section	.text_vle
        .d2line         2956,32
#$$ld
.L1404:

#$$bf	HandleConcurrentTesterPresent,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
HandleConcurrentTesterPresent:
.Llo144:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pRxChannel=r3 pRxChannel=r3
	mr		r4,r4		# pPduInfo=r4 pPduInfo=r4
	.d2prologue_end
#                                                              CONSTP2CONST(PduInfoType, AUTOMATIC, DCM_APPL_CONST) pPduInfo)
# {
#    boolean retVal = FALSE;
	.d2line		2959
	diab.li		r6,0		# retVal=r6
# 
#    if ((DCM_FUNCTIONAL_TYPE == pRxChannel->addr_type) &&
	.d2line		2961
.Llo149:
	lwz		r0,28(r3)		# pRxChannel=r3
	se_cmpi		r0,1
	bc		0,2,.L1057	# ne
	lhz		r0,4(r4)		# pPduInfo=r4
	se_cmpi		r0,2
	bc		0,2,.L1057	# ne
	lwz		r5,0(r4)		# pPduInfo=r4
	lbz		r0,0(r5)
	cmpi		0,0,r0,62
	bc		0,2,.L1057	# ne
	lwz		r4,0(r4)		# pPduInfo=r4 pPduInfo=r4
	lbz		r0,1(r4)		# pPduInfo=r4
	se_btsti		r0,24
	diab.li		r0,1
	isel		r0,r4,r0,2		# pPduInfo=r4
.L1059:
.Llo148:
	isel		r0,0,r0,2
.L1060:
	se_cmpi		r0,0
	bc		1,2,.L1057	# eq
#        ((PduLengthType)2U == pPduInfo->SduLength) &&
#        ((uint8)SID_TESTERPRESENT == pPduInfo->SduDataPtr[0]) &&
#        IsPositiveResponseSuppressed(pPduInfo->SduDataPtr[1])) /* [SWS_Dcm_01168] */
#    {
#       /*
#        * This is a concurrent testerPresent request, clean up the buffer and restart the S3 server.
#        * There's no need to clean up the channel since it's still IDLE. It will only change to
#        * pending if the request is not a functional tester present request.
#        *
#        * It is safe to always restart the S3 timer since it can not elapse unless the state machine is IDLE.
#        */
#       ReleaseRxChannel(pRxChannel);
	.d2line		2973
	mr		r3,r3		# pRxChannel=r3 pRxChannel=r3
.Llo145:
	bl		ReleaseRxChannel
#       StartS3ServerTimer();
	.d2line		2974
	bl		SchM_Enter_Dcm_EaTimers
	lis		r3,(Dcm_LCfg+6)@ha		# pRxChannel=r3
.Llo146:
	lhz		r0,(Dcm_LCfg+6)@l(r3)		# pRxChannel=r3
	lis		r3,(Dcm_DslInstance+14)@ha		# pRxChannel=r3
	sth		r0,(Dcm_DslInstance+14)@l(r3)		# pRxChannel=r3
	bl		SchM_Exit_Dcm_EaTimers
#       retVal = TRUE;
	.d2line		2975
.Llo147:
	diab.li		r6,1		# retVal=r6
.L1057:
#    }
# 
#    return retVal;
	.d2line		2978
	rlwinm		r3,r6,0,24,31		# pRxChannel=r3 retVal=r6
# }
	.d2line		2979
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo150:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1405:
	.type		HandleConcurrentTesterPresent,@function
	.size		HandleConcurrentTesterPresent,.-HandleConcurrentTesterPresent
# Number of nodes = 66

# Allocations for HandleConcurrentTesterPresent
#	?a4		pRxChannel
#	?a5		pPduInfo
#	?a6		$$53
#	?a7		retVal
# static FUNC(void, DCM_CODE) ComposeNegativeResponse(CONSTP2CONST(Dcm_Cfg_BufferType, AUTOMATIC, DCM_APPL_CONST) pTxBuffer,
	.align		1
	.section	.text_vle
        .d2line         2984,29
#$$ld
.L1416:

#$$bf	ComposeNegativeResponse,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r7,r31,lr
	.d2_cfa_start __cie
ComposeNegativeResponse:
.Llo151:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pTxBuffer=r31 pTxBuffer=r3
.Llo152:
	mr		r3,r4		# sid=r3 sid=r4
.Llo153:
	mr		r3,r5		# ErrorCode=r3 ErrorCode=r5
	mr		r3,r6		# pduId=r3 pduId=r6
	.d2prologue_end
#                                                     uint8 const sid,
#                                                     Dcm_NegativeResponseCodeType const ErrorCode,
#                                                     PduIdType const pduId)
# {
#    /* Populate the destination Tx buffer with all necessary info */
#    pTxBuffer->ptr[0] = NEGATIVE_RESPONSE_SID;
	.d2line		2990
	diab.li		r3,127		# pduId=r3
	lwz		r7,4(r31)		# pTxBuffer=r31
	stb		r3,0(r7)		# pduId=r3
#    pTxBuffer->ptr[1] = (uint8)sid;
	.d2line		2991
	lwz		r3,4(r31)		# pduId=r3 pTxBuffer=r31
	stb		r4,1(r3)		# pduId=r3 sid=r4
#    pTxBuffer->ptr[2] = (uint8)ErrorCode;
	.d2line		2992
	lwz		r3,4(r31)		# pduId=r3 pTxBuffer=r31
	stb		r5,2(r3)		# pduId=r3 ErrorCode=r5
#    pTxBuffer->pdu_info->SduDataPtr = pTxBuffer->ptr;
	.d2line		2993
	lwz		r3,4(r31)		# pduId=r3 pTxBuffer=r31
	lwz		r4,12(r31)		# sid=r4 pTxBuffer=r31
	stw		r3,0(r4)		# sid=r4 pduId=r3
#    pTxBuffer->pdu_info->SduLength  = (PduLengthType)3U;
	.d2line		2994
	diab.li		r3,3		# pduId=r3
	lwz		r4,12(r31)		# sid=r4 pTxBuffer=r31
	sth		r3,4(r4)		# sid=r4 pduId=r3
#    pTxBuffer->p_status->buf_pos    = (PduLengthType)0U;
	.d2line		2995
	diab.li		r4,0		# sid=r4
	lwz		r3,8(r31)		# pduId=r3 pTxBuffer=r31
	sth		r4,8(r3)		# pduId=r3 sid=r4
#    pTxBuffer->p_status->pdu_id     = pduId;
	.d2line		2996
	lwz		r3,8(r31)		# pduId=r3 pTxBuffer=r31
	sth		r6,0(r3)		# pduId=r3 pduId=r6
# }
	.d2line		2997
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo154:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo155:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1417:
	.type		ComposeNegativeResponse,@function
	.size		ComposeNegativeResponse,.-ComposeNegativeResponse
# Number of nodes = 60

# Allocations for ComposeNegativeResponse
#	?a4		pTxBuffer
#	?a5		sid
#	?a6		ErrorCode
#	?a7		pduId
# static FUNC(uint16, DCM_CODE) GetTxChannelTableIndex(const PduIdType DcmTxPduId)
	.align		1
	.section	.text_vle
        .d2line         3519,31
#$$ld
.L1428:

#$$bf	GetTxChannelTableIndex,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
GetTxChannelTableIndex:
.Llo156:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r4,r3		# DcmTxPduId=r4 DcmTxPduId=r3
	.d2prologue_end
# {
#    uint16 txTableIndex;
# 
#    /*
#    * Main or ROE Tx which shall be handled identically
#    * Need to calculate the correct table index depending on the ranges.
#    * Do this on speculation, but the lookup index will not be used after some range checks.
#    */
#    if (DcmTxPduId < Dcm_pPbCfg->first_periodic_tx_confirmation_id_value)
	.d2line		3528
.Llo160:
	rlwinm		r0,r4,0,16,31		# DcmTxPduId=r4
	lis		r3,Dcm_pPbCfg@ha
.Llo157:
	lwz		r3,Dcm_pPbCfg@l(r3)
	lhz		r3,0(r3)
	se_cmp		r0,r3
	bc		0,0,.L1195	# ge
#    {
#       /*
#       * The id belongs to the main Tx channels
#       */
#       txTableIndex = (uint16)DcmTxPduId;
	.d2line		3533
.Llo158:
	mr		r3,r4		# txTableIndex=r3 txTableIndex=r4
	b		.L1196
.L1195:
#    }
#    else if (DcmTxPduId < Dcm_pPbCfg->first_roe_tx_confirmation_id_value)
	.d2line		3535
	rlwinm		r0,r4,0,16,31		# DcmTxPduId=r4
	lis		r3,Dcm_pPbCfg@ha
	lwz		r3,Dcm_pPbCfg@l(r3)
	lhz		r3,2(r3)
	se_cmp		r0,r3
	bc		0,0,.L1197	# ge
#    {
#       /*
#       * The id belongs to the periodic Tx channels which are after the main confirmation IDs.
#       * Safe to type cast since DcmTxPduId always be bigger than first_periodic_tx_confirmation_id_value
#       */
#       txTableIndex = (uint16)(DcmTxPduId - Dcm_pPbCfg->first_periodic_tx_confirmation_id_value);
	.d2line		3541
	lis		r3,Dcm_pPbCfg@ha
	lwz		r3,Dcm_pPbCfg@l(r3)
	lhz		r3,0(r3)
	subf		r3,r3,r4		# DcmTxPduId=r4
	mr		r3,r3		# txTableIndex=r3 txTableIndex=r3
	b		.L1196
.L1197:
#    }
#    else if (DcmTxPduId < Dcm_pPbCfg->first_invalid_tx_confirmation_id_value)
	.d2line		3543
	rlwinm		r0,r4,0,16,31		# DcmTxPduId=r4
	lis		r3,Dcm_pPbCfg@ha
	lwz		r3,Dcm_pPbCfg@l(r3)
	lhz		r3,4(r3)
	se_cmp		r0,r3
	bc		0,0,.L1199	# ge
#    {
#       /*
#       * The id belongs to the ROE Tx channels which are after the periodic confirmation IDs.
#       * Safe to type cast since DcmTxPduId always be bigger than first_periodic_tx_confirmation_id_value
#       */
#       txTableIndex = (uint16)((PduIdType)(DcmTxPduId - Dcm_pPbCfg->first_roe_tx_confirmation_id_value) + Dcm_pPbCfg->first_periodic_tx_confirmation_id_value);
	.d2line		3549
	lis		r5,Dcm_pPbCfg@ha
	lwz		r3,Dcm_pPbCfg@l(r5)
	lhz		r0,2(r3)
	subf		r0,r0,r4		# DcmTxPduId=r4
	lhz		r3,0(r3)
	se_add		r0,r3
	mr		r3,r0		# txTableIndex=r3 txTableIndex=r0
	b		.L1196
.L1199:
#    }
#    else
#    {
#       /* Outside the valid range. It will be fetched with an error later but return zero to have a defined value. */
#       txTableIndex = (uint16)0;
	.d2line		3554
	diab.li		r3,0		# txTableIndex=r3
.L1196:
#    }
# 
#    return txTableIndex;
	.d2line		3557
.Llo159:
	rlwinm		r3,r3,0,16,31		# txTableIndex=r3 txTableIndex=r3
# }
	.d2line		3558
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
.L1429:
	.type		GetTxChannelTableIndex,@function
	.size		GetTxChannelTableIndex,.-GetTxChannelTableIndex
# Number of nodes = 50

# Allocations for GetTxChannelTableIndex
#	?a4		DcmTxPduId
#	?a5		txTableIndex
# static FUNC(void, DCM_CODE) GenericTxConfirmation(const PduIdType DcmTxPduId, const NotifResultType Result, const uint8 serviceId)
	.align		1
	.section	.text_vle
        .d2line         3361,29
#$$ld
.L1436:

#$$bf	GenericTxConfirmation,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
GenericTxConfirmation:
.Llo161:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# DcmTxPduId=r7 DcmTxPduId=r3
	mr		r6,r4		# Result=r6 Result=r4
	mr		r30,r5		# serviceId=r30 serviceId=r5
	.d2prologue_end
# {
#    if (NULL_PTR != Dcm_pPbCfg)
	.d2line		3363
	lis		r3,Dcm_pPbCfg@ha
.Llo162:
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L1147	# eq
	.section	.text_vle
.L1444:
#    {
#       CONST(DslStateType, AUTOMATIC) oldDslState = Dcm_DslInstance.dsl_state;
	.d2line		3365
.Llo163:
	lis		r3,Dcm_DslInstance@ha		# DcmTxPduId=r3
.Llo173:
	lwz		r31,Dcm_DslInstance@l(r3)		# DcmTxPduId=r3
.Llo184:
	mr		r31,r31		# oldDslState=r31 oldDslState=r31
#       CONST(uint16, AUTOMATIC) txTableIndex = GetTxChannelTableIndex(DcmTxPduId);
	.d2line		3366
	mr		r3,r7		# DcmTxPduId=r3 DcmTxPduId=r7
	bl		GetTxChannelTableIndex
.Llo185:
	mr		r0,r3		# txTableIndex=r0 txTableIndex=r3
# 
#       /*
#        * The lookup index has been calculated, time to act on the Tx channels
#        */
#       if (DcmTxPduId >= Dcm_pPbCfg->first_invalid_tx_confirmation_id_value)
	.d2line		3371
	rlwinm		r4,r7,0,16,31		# DcmTxPduId=r7
	lis		r3,Dcm_pPbCfg@ha		# DcmTxPduId=r3
.Llo186:
	lwz		r3,Dcm_pPbCfg@l(r3)		# DcmTxPduId=r3 DcmTxPduId=r3
.Llo187:
	lhz		r3,4(r3)		# DcmTxPduId=r3 DcmTxPduId=r3
	se_cmp		r4,r3		# DcmTxPduId=r3
	bc		1,0,.L1148	# lt
#       {
#          /*
#           * DcmTxPduId is out of range since the ROE Tx confirmation PduIds are the last ones.
#           */
#          DCM_ASSERT_PARAM(serviceId, FALSE)
	.d2line		3376
.Llo164:
	rlwinm		r5,r30,0,24,31		# serviceId=r30
	diab.li		r3,53		# DcmTxPduId=r3
	diab.li		r4,0
	diab.li		r6,6
	bl		Det_ReportError
	b		.L1150
.L1148:
#       }
#       else if ((Dcm_pPbCfg->first_periodic_tx_confirmation_id_value <= DcmTxPduId) && (DcmTxPduId < Dcm_pPbCfg->first_roe_tx_confirmation_id_value))
	.d2line		3378
.Llo165:
	lis		r3,Dcm_pPbCfg@ha		# DcmTxPduId=r3
	lwz		r3,Dcm_pPbCfg@l(r3)		# DcmTxPduId=r3 DcmTxPduId=r3
	lhz		r3,0(r3)		# DcmTxPduId=r3 DcmTxPduId=r3
	rlwinm		r4,r7,0,16,31		# DcmTxPduId=r7
	se_cmp		r3,r4		# DcmTxPduId=r3
	bc		1,1,.L1151	# gt
.Llo182:
	rlwinm		r7,r7,0,16,31		# DcmTxPduId=r7 DcmTxPduId=r7
	lis		r3,Dcm_pPbCfg@ha		# DcmTxPduId=r3
	lwz		r3,Dcm_pPbCfg@l(r3)		# DcmTxPduId=r3 DcmTxPduId=r3
	lhz		r3,2(r3)		# DcmTxPduId=r3 DcmTxPduId=r3
	se_cmp		r7,r3		# DcmTxPduId=r7 DcmTxPduId=r3
	bc		0,0,.L1151	# ge
	.section	.text_vle
.L1456:
#       {
#          /*
#           * The DcmTxPduId belongs to a periodic transmission
#           */
#          CONST(Dcm_Cfg_PeriodicTxChannelPointerType, AUTOMATIC) pPeriodicTxChannel = Dcm_pPbCfg->p_periodic_tx_lookup_table[txTableIndex];
	.d2line		3383
.Llo166:
	lis		r3,Dcm_pPbCfg@ha		# pPeriodicTxStatus=r3
.Llo233:
	lwz		r3,Dcm_pPbCfg@l(r3)		# pPeriodicTxStatus=r3 pPeriodicTxStatus=r3
	lwz		r3,16(r3)		# pPeriodicTxStatus=r3 pPeriodicTxStatus=r3
.Llo188:
	rlwinm		r0,r0,2,14,29		# txTableIndex=r0 txTableIndex=r0
.Llo189:
	lwzx		r3,r3,r0		# pPeriodicTxStatus=r3 pPeriodicTxStatus=r3
.Llo231:
	mr		r3,r3		# pPeriodicTxChannel=r3 pPeriodicTxChannel=r3
#          CONSTP2VAR(Dcm_Cfg_PeriodicTxStatusType, TYPEDEF, DCM_APPL_DATA) pPeriodicTxStatus = pPeriodicTxChannel->channel_status;
	.d2line		3384
	lwz		r3,4(r3)		# pPeriodicTxChannel=r3 pPeriodicTxChannel=r3
.Llo232:
	mr		r3,r3		# pPeriodicTxStatus=r3 pPeriodicTxStatus=r3
# 
#          pPeriodicTxStatus->state = DCM_PERIODIC_TX_CONFIRMED;
	.d2line		3386
	diab.li		r0,3		# txTableIndex=r0
.Llo190:
	stw		r0,16(r3)		# pPeriodicTxStatus=r3 txTableIndex=r0
#          Dcm_DspTransmitPeriodicDataTrigger();
	.d2line		3387
	bl		Dcm_DspTransmitPeriodicDataTrigger
	.section	.text_vle
.L1457:
.Llo191:
	b		.L1150
.L1151:
	.section	.text_vle
.L1474:
#       }
#       else
#       {
#          /*
#           * Handle standard main or ROE connection confirmations
#           */
#          CONSTP2CONST(Dcm_Cfg_TxChannelType, AUTOMATIC, DCM_APPL_DATA) pTxChannel = &Dcm_pPbCfg->p_tx_channels[txTableIndex];
	.d2line		3394
.Llo174:
	lis		r3,Dcm_pPbCfg@ha		# pTxChannel=r3
.Llo234:
	lwz		r3,Dcm_pPbCfg@l(r3)		# pTxChannel=r3 pTxChannel=r3
	lwz		r3,12(r3)		# pTxChannel=r3 pTxChannel=r3
.Llo192:
	rlwinm		r0,r0,0,16,31		# txTableIndex=r0 txTableIndex=r0
	e_mulli		r0,r0,20		# txTableIndex=r0 txTableIndex=r0
	se_add		r0,r3		# txTableIndex=r0 txTableIndex=r0 pTxChannel=r3
.Llo193:
	mr		r3,r0		# pTxChannel=r3 pTxChannel=r0
#          CONST(Dcm_Cfg_RxChannelPointerType, AUTOMATIC) pRxChannel = *(pTxChannel->pp_rx_channel);
	.d2line		3395
.Llo235:
	lwz		r3,12(r3)		# pTxChannel=r3 pTxChannel=r3
.Llo236:
	lwz		r0,0(r3)		# txTableIndex=r0 pTxChannel=r3
	.d2line		3397
.Llo194:
	mr.		r30,r0		# pRxChannel=?a12 pRxChannel=?a14
# 
#          if ((pRxChannel != NULL_PTR) && (DCM_CHANNEL_2ND_REQ == *pRxChannel->p_state))
.Llo247:
	bc		1,2,.L1153	# eq
.Llo195:
	lwz		r3,32(r30)		# pTxChannel=r3 pRxChannel=r30
.Llo237:
	lwz		r0,0(r3)		# txTableIndex=r0 pTxChannel=r3
.Llo196:
	se_cmpi		r0,3		# txTableIndex=r0
	bc		0,2,.L1153	# ne
#          {
#             /*
#              * This Tx confirmation is for the BRR send due to a 2nd request,
#              * release its channel.
#              */
#             ReleaseRxChannel(pRxChannel);
	.d2line		3403
.Llo197:
	mr		r3,r30		# pRxChannel=r3 pRxChannel=r30
	bl		ReleaseRxChannel
	b		.L1150
.L1153:
#          }
#          else
#          {
#             /*
#              * If pRxChannel is null was the transmission initiated by 
#              * bootloader interaction and thus never a second request confirmation.
#              */
#             if (Dcm_DslInstance.negative_response_transmitted)
	.d2line		3411
	lis		r3,(Dcm_DslInstance+22)@ha		# pTxChannel=r3
.Llo238:
	lbz		r0,(Dcm_DslInstance+22)@l(r3)		# txTableIndex=r0 pTxChannel=r3
.Llo198:
	se_cmpi		r0,0		# txTableIndex=r0
	bc		1,2,.L1155	# eq
#             {
#                /* Confirmation on negative response */
#                if (NTFRSLT_OK == Result)
	.d2line		3414
.Llo199:
	rlwinm		r6,r6,0,24,31		# Result=r6 Result=r6
	se_cmpi		r6,0		# Result=r6
	bc		0,2,.L1156	# ne
#                {
#                   Dcm_DslInstance.tx_confirmation_result = DCM_RES_NEG_OK;
	.d2line		3416
.Llo175:
	diab.li		r0,2		# txTableIndex=r0
.Llo200:
	lis		r3,(Dcm_DslInstance+25)@ha		# pTxChannel=r3
.Llo239:
	stb		r0,(Dcm_DslInstance+25)@l(r3)		# pTxChannel=r3 txTableIndex=r0
	b		.L1158
.L1156:
#                }
#                else
#                {
#                   Dcm_DslInstance.tx_confirmation_result = DCM_RES_NEG_NOT_OK;
	.d2line		3420
.Llo201:
	diab.li		r0,3		# txTableIndex=r0
.Llo202:
	lis		r3,(Dcm_DslInstance+25)@ha		# pTxChannel=r3
.Llo240:
	stb		r0,(Dcm_DslInstance+25)@l(r3)		# pTxChannel=r3 txTableIndex=r0
	b		.L1158
.L1155:
#                }
#             }
#             else
#             {
#                /* Confirmation on positive response */
#                if (NTFRSLT_OK == Result)
	.d2line		3426
.Llo176:
	rlwinm		r6,r6,0,24,31		# Result=r6 Result=r6
	se_cmpi		r6,0		# Result=r6
	bc		0,2,.L1159	# ne
#                {
#                   Dcm_DslInstance.tx_confirmation_result = DCM_RES_POS_OK;
	.d2line		3428
.Llo177:
	diab.li		r0,0		# txTableIndex=r0
.Llo203:
	lis		r3,(Dcm_DslInstance+25)@ha		# pTxChannel=r3
.Llo241:
	stb		r0,(Dcm_DslInstance+25)@l(r3)		# pTxChannel=r3 txTableIndex=r0
	b		.L1158
.L1159:
#                }
#                else
#                {
#                   Dcm_DslInstance.tx_confirmation_result = DCM_RES_POS_NOT_OK;
	.d2line		3432
.Llo204:
	diab.li		r0,1		# txTableIndex=r0
.Llo205:
	lis		r3,(Dcm_DslInstance+25)@ha		# pTxChannel=r3
.Llo242:
	stb		r0,(Dcm_DslInstance+25)@l(r3)		# pTxChannel=r3 txTableIndex=r0
.L1158:
#                }
#             }
# 
#             Dcm_DslInstance.tx_confirmation = TRUE;
	.d2line		3436
.Llo206:
	diab.li		r0,1		# txTableIndex=r0
.Llo207:
	lis		r3,(Dcm_DslInstance+24)@ha		# pTxChannel=r3
.Llo243:
	stb		r0,(Dcm_DslInstance+24)@l(r3)		# pTxChannel=r3 txTableIndex=r0
# 
#             /*
#              * Release Rx buffer in case a response is sent. The reason for this late
#              * handling is that if common buffer for Rx and Tx there mustn't be a new
#              * request until the response is sent.
#              */
#             if ((DSL_WAIT_CONF         == Dcm_DslInstance.dsl_state) ||
	.d2line		3443
	lis		r3,Dcm_DslInstance@ha		# pTxChannel=r3
	lwz		r0,Dcm_DslInstance@l(r3)		# txTableIndex=r0 pTxChannel=r3
	se_cmpi		r0,5		# txTableIndex=r0
	bc		1,2,.L1174	# eq
.Llo208:
	lis		r3,Dcm_DslInstance@ha		# pTxChannel=r3
.Llo244:
	lwz		r0,Dcm_DslInstance@l(r3)		# txTableIndex=r0 pTxChannel=r3
.Llo209:
	se_cmpi		r0,6		# txTableIndex=r0
	bc		1,2,.L1174	# eq
.Llo210:
	lis		r3,Dcm_DslInstance@ha		# pTxChannel=r3
.Llo245:
	lwz		r0,Dcm_DslInstance@l(r3)		# txTableIndex=r0 pTxChannel=r3
.Llo211:
	se_cmpi		r0,7		# txTableIndex=r0
	bc		0,2,.L1161	# ne
.L1174:
#                 (DSL_WAIT_PROCESS_PAGE == Dcm_DslInstance.dsl_state) ||
#                 (DSL_WAIT_READ_DATA    == Dcm_DslInstance.dsl_state))
#             {
#                ReleaseRxChannel(pRxChannel);
	.d2line		3447
.Llo212:
	mr		r3,r30		# pRxChannel=r3 pRxChannel=r30
	bl		ReleaseRxChannel
# 
# #if (DCM_PAGEDBUFFER_ENABLED == STD_ON)
#                Dcm_DslInstance.page_length = (uint16)0U;
# #endif /* DCM_PAGEDBUFFER_ENABLED */
# 
#                StartS3ServerTimer();
	.d2line		3453
	bl		SchM_Enter_Dcm_EaTimers
	lis		r3,(Dcm_LCfg+6)@ha		# pRxChannel=r3
	lhz		r0,(Dcm_LCfg+6)@l(r3)		# txTableIndex=r0 pRxChannel=r3
.Llo213:
	lis		r3,(Dcm_DslInstance+14)@ha		# pRxChannel=r3
	sth		r0,(Dcm_DslInstance+14)@l(r3)		# pRxChannel=r3 txTableIndex=r0
	bl		SchM_Exit_Dcm_EaTimers
# 
#                /* [SWS_Dcm_00136] Do not deactivate communication for Roe transmissions since it is not activated by Roe */
#                if ((pRxChannel == NULL_PTR) || (!pRxChannel->is_roe))
	.d2line		3456
.Llo214:
	se_cmpi		r30,0		# pRxChannel=r30
	bc		1,2,.L1175	# eq
	lbz		r0,8(r30)		# txTableIndex=r0 pRxChannel=r30
.Llo215:
	se_cmpi		r0,0		# txTableIndex=r0
	bc		0,2,.L1163	# ne
.L1175:
#                {
#                   /*
#                    * [SWS_Dcm_00164]: Deactivate diagnostic communication in default session when handling is finished
#                    */
#                   DeactivateDiagnosticCommunication();
	.d2line		3461
.Llo216:
	lis		r3,(Dcm_DslInstance+13)@ha		# pRxChannel=r3
	lbz		r0,(Dcm_DslInstance+13)@l(r3)		# txTableIndex=r0 pRxChannel=r3
.Llo217:
	se_cmpi		r0,1		# txTableIndex=r0
	bc		0,2,.L1163	# ne
.Llo218:
	lis		r3,(Dcm_DslInstance+26)@ha		# pRxChannel=r3
.Llo248:
	lbz		r3,(Dcm_DslInstance+26)@l(r3)		# pRxChannel=r3 pRxChannel=r3
.Llo249:
	bl		ComM_DCM_InactiveDiagnostic
	diab.li		r0,0		# txTableIndex=r0
.Llo219:
	lis		r3,Dcm_DbgCurrentDiagnosticActivity@ha		# pRxChannel=r3
.Llo250:
	e_add16i		r3,r3,Dcm_DbgCurrentDiagnosticActivity@l		# pRxChannel=r3 pRxChannel=r3
	stb		r0,0(r3)		# pRxChannel=r3 txTableIndex=r0
.L1163:
#                }
# 
#                /* Handle upper layers */
#                if (DSL_WAIT_CONF == Dcm_DslInstance.dsl_state)
	.d2line		3465
.Llo220:
	lis		r3,Dcm_DslInstance@ha		# pRxChannel=r3
.Llo251:
	lwz		r0,Dcm_DslInstance@l(r3)		# txTableIndex=r0 pRxChannel=r3
.Llo221:
	se_cmpi		r0,5		# txTableIndex=r0
	bc		0,2,.L1166	# ne
#                {
#                   Dcm_DsdTxConfirmation(Dcm_DslInstance.tx_confirmation_result);
	.d2line		3467
.Llo222:
	lis		r3,(Dcm_DslInstance+25)@ha		# pRxChannel=r3
.Llo252:
	lbz		r3,(Dcm_DslInstance+25)@l(r3)		# pRxChannel=r3 pRxChannel=r3
.Llo253:
	bl		Dcm_DsdTxConfirmation
	b		.L1167
.L1166:
#                }
#                else
#                {
#                   /*
#                    * A confirmation was received in the middle of pages.
#                    * Regardless if OK or NOK shall the service be cancelled
#                    * and the buffer be released. Switch DSL state in order
#                    * to do some proper cleanup after the confirmation.
#                    */
#                   Dcm_DsdServiceCancelled();
	.d2line		3477
	bl		Dcm_DsdServiceCancelled
.L1167:
#                }
# 
#                /* Confirm possible ROE */
#                Dcm_DspRoe_GenConfirmation(TRUE);
	.d2line		3481
	diab.li		r3,1		# pRxChannel=r3
	bl		Dcm_DspRoe_GenConfirmation
# 
#                /*
#                 * Mark DSL as idle but it won't handle new requests
#                 * until upper layers also are idle.
#                 */
#                Dcm_DslInstance.dsl_state = DSL_IDLE;
	.d2line		3487
	diab.li		r0,0		# txTableIndex=r0
.Llo223:
	lis		r3,Dcm_DslInstance@ha		# pRxChannel=r3
.Llo254:
	e_add16i		r3,r3,Dcm_DslInstance@l		# pRxChannel=r3 pRxChannel=r3
	stw		r0,0(r3)		# pRxChannel=r3 txTableIndex=r0
	b		.L1150
.L1161:
#             }
#             else if (DSL_WAIT_CONF_PREEMPTION == Dcm_DslInstance.dsl_state)
	.d2line		3489
.Llo224:
	lis		r3,Dcm_DslInstance@ha		# pTxChannel=r3
.Llo246:
	lwz		r0,Dcm_DslInstance@l(r3)		# txTableIndex=r0 pTxChannel=r3
.Llo225:
	se_cmpi		r0,2		# txTableIndex=r0
	bc		0,2,.L1150	# ne
#             {
#                ReleaseRxChannel(pRxChannel);
	.d2line		3491
.Llo226:
	mr		r3,r30		# pRxChannel=r3 pRxChannel=r30
	bl		ReleaseRxChannel
#                Dcm_DslInstance.dsl_state = DSL_SEND_BRR;
	.d2line		3492
	diab.li		r0,8		# txTableIndex=r0
.Llo227:
	lis		r3,Dcm_DslInstance@ha		# pRxChannel=r3
	e_add16i		r3,r3,Dcm_DslInstance@l		# pRxChannel=r3 pRxChannel=r3
	stw		r0,0(r3)		# pRxChannel=r3 txTableIndex=r0
	.section	.text_vle
.L1475:
.L1150:
#             }
#             else
#             {
#                /*
#                 * A confirmation on a NRC 0x21 (BusyRepeatRequest) or NRC 0x78 (ResponsePending)
#                 * The Rx channel shall be kept since it's still used by the service.
#                 */
#             }
#          }
#       }
# 
#       if ((oldDslState != Dcm_DslInstance.dsl_state) ||
	.d2line		3504
.Llo228:
	lis		r3,Dcm_DslInstance@ha		# DcmTxPduId=r3
.Llo167:
	lwz		r0,Dcm_DslInstance@l(r3)		# txTableIndex=r0 DcmTxPduId=r3
.Llo229:
	se_cmp		r0,r31		# txTableIndex=r0 oldDslState=r31
	bc		0,2,.L1176	# ne
.Llo168:
	lis		r3,(Dcm_DslInstance+24)@ha		# DcmTxPduId=r3
.Llo169:
	lbz		r0,(Dcm_DslInstance+24)@l(r3)		# txTableIndex=r0 DcmTxPduId=r3
.Llo230:
	se_cmpi		r0,0		# txTableIndex=r0
	bc		1,2,.L1146	# eq
.L1176:
#           (Dcm_DslInstance.tx_confirmation))
#       {
#          SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine();
	.d2line		3507
.Llo170:
	bl		SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine
	.section	.text_vle
.L1445:
	b		.L1146
.L1147:
#       }
#    }
#    else
#    {
#       DCM_ASSERT_UNINIT(serviceId)
	.d2line		3512
.Llo171:
	lis		r3,Dcm_pPbCfg@ha
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L1146	# ne
.Llo172:
	rlwinm		r5,r30,0,24,31		# serviceId=r30
.Llo178:
	diab.li		r3,53
	diab.li		r4,0
.Llo179:
	diab.li		r6,5
	bl		Det_ReportError
.L1146:
#    }
# }
	.d2line		3514
	.d2epilogue_begin
.Llo180:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo183:
	lwz		r0,36(r1)		# txTableIndex=r0
	mtspr		lr,r0		# txTableIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo181:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1437:
	.type		GenericTxConfirmation,@function
	.size		GenericTxConfirmation,.-GenericTxConfirmation
# Number of nodes = 298

# Allocations for GenericTxConfirmation
#	?a4		DcmTxPduId
#	?a5		Result
#	?a6		serviceId
#	?a7		oldDslState
#	?a8		txTableIndex
#	?a9		pPeriodicTxChannel
#	?a10		pPeriodicTxStatus
#	?a11		pTxChannel
#	?a12		pRxChannel
# FUNC(void, DCM_CODE) Dcm_TpTxConfirmation(PduIdType DcmTxPduId, NotifResultType Result)
	.align		2
	.section	.text_vle
        .d2line         1490,22
#$$ld
.L1491:

#$$bf	Dcm_TpTxConfirmation,interprocedural,rasave,nostackparams
	.globl		Dcm_TpTxConfirmation
	.d2_cfa_start __cie
Dcm_TpTxConfirmation:
.Llo255:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    GenericTxConfirmation(DcmTxPduId, Result, SID_TPTXCONFIRMATION);
	.d2line		1492
	mr		r0,r3		# DcmTxPduId=r0 DcmTxPduId=r3
	mr		r0,r4		# Result=r0 Result=r4
	diab.li		r5,72
	bl		GenericTxConfirmation
# }
	.d2line		1493
	.d2epilogue_begin
.Llo256:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1492:
	.type		Dcm_TpTxConfirmation,@function
	.size		Dcm_TpTxConfirmation,.-Dcm_TpTxConfirmation
# Number of nodes = 10

# Allocations for Dcm_TpTxConfirmation
#	?a4		DcmTxPduId
#	?a5		Result
# static FUNC(Std_ReturnType, DCM_CODE) TransmitResponse(CONSTP2CONST(Dcm_Cfg_TxChannelType, AUTOMATIC, DCM_APPL_CONST) pTxChannel,
	.align		1
	.section	.text_vle
        .d2line         3089,39
#$$ld
.L1498:

#$$bf	TransmitResponse,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
TransmitResponse:
.Llo257:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# pTxChannel=r3 pTxChannel=r3
	mr		r4,r4		# pActiveTxBuffer=r4 pActiveTxBuffer=r4
	.d2prologue_end
#                                                       CONSTP2CONST(Dcm_Cfg_BufferType, AUTOMATIC, DCM_APPL_CONST) pActiveTxBuffer)
# {
#    Std_ReturnType retVal = E_OK;
	.d2line		3092
	diab.li		r31,0		# retVal=r31
#    P2VAR(Dcm_Cfg_BufferStatusType, AUTOMATIC, DCM_APPL_DATA) pBufferStatus = pActiveTxBuffer->p_status;
	.d2line		3093
	lwz		r5,8(r4)		# pActiveTxBuffer=r4
.Llo277:
	mr		r5,r5		# pBufferStatus=r5 pBufferStatus=r5
# 
#    CONST(boolean, DCM_CONST) maxPendingReached = (boolean)(Dcm_DslInstance.response_pending_counter >= Dcm_pPbCfg->max_num_resp_pend);
	.d2line		3095
	lis		r6,(Dcm_DslInstance+18)@ha
	lbz		r0,(Dcm_DslInstance+18)@l(r6)
	lis		r6,Dcm_pPbCfg@ha
	lwz		r6,Dcm_pPbCfg@l(r6)
	lbz		r6,20(r6)
	se_cmp		r0,r6
	mfcr		r0
	se_srwi		r0,31
	xori		r0,r0,1
.Llo279:
	mr		r0,r0		# maxPendingReached=r0 maxPendingReached=r0
# 
#    /*
#     * TRUE if Roe transimission, pending, busyrequestagain.
#     */
#    CONST(boolean, DCM_CONST) isBrrOrPending = (boolean)((NEGATIVE_RESPONSE_SID == pActiveTxBuffer->ptr[0])
	.d2line		3100
	lwz		r6,4(r4)		# pActiveTxBuffer=r4
	lbz		r6,0(r6)
	cmpi		0,0,r6,127
	bc		0,2,.L1093	# ne
	lwz		r6,4(r4)		# pActiveTxBuffer=r4
	lbz		r6,2(r6)
	cmpi		0,0,r6,33
	bc		1,2,.L1091	# eq
	lwz		r6,4(r4)		# pActiveTxBuffer=r4
	lbz		r6,2(r6)
	cmpi		0,0,r6,120
	bc		1,2,.L1091	# eq
	rlwinm		r6,r0,0,24,31		# maxPendingReached=r0
	se_cmpi		r6,1
	bc		1,2,.L1091	# eq
.L1093:
	diab.li		r7,0
.Llo282:
	b		.L1092
.L1091:
.Llo283:
	diab.li		r7,1
.L1092:
.Llo284:
	mr		r7,r7		# isBrrOrPending=r7 isBrrOrPending=r7
#                               && ((DCM_E_BUSYREPEATREQUEST == pActiveTxBuffer->ptr[2])
#                               || (DCM_INT_NRC_REQUESTCORRECTLYRECEIVEDRESPONSEPENDING == pActiveTxBuffer->ptr[2])
#                                 || (TRUE == maxPendingReached)));
#    CONST(Dcm_Cfg_RxChannelPointerType, AUTOMATIC) pRxChannel = *(pTxChannel->pp_rx_channel);
	.d2line		3104
	lwz		r6,12(r3)		# pRxChannel=r6 pTxChannel=r3
.Llo285:
	lwz		r6,0(r6)		# pRxChannel=r6 pRxChannel=r6
	.d2line		3105
	mr.		r6,r6		# pRxChannel=?a11 pRxChannel=?a14
#    CONST(boolean, AUTOMATIC) isRoe = (((pRxChannel != NULL_PTR) && (pRxChannel->is_roe)) ? TRUE : FALSE);
	bc		1,2,.L1094	# eq
	lbz		r6,8(r6)		# pRxChannel=r6 pRxChannel=r6
	se_cmpi		r6,0		# pRxChannel=r6
	bc		1,2,.L1094	# eq
.Llo286:
	diab.li		r6,1		# isRoe=r6
.Llo287:
	b		.L1095
.L1094:
.Llo288:
	diab.li		r6,0		# isRoe=r6
.L1095:
# 
#    if ((!isRoe) || (NEGATIVE_RESPONSE_SID != pActiveTxBuffer->ptr[0]) || (!isBrrOrPending))
	.d2line		3107
.Llo289:
	rlwinm		r6,r6,0,24,31		# isRoe=r6 isRoe=r6
	se_cmpi		r6,0		# isRoe=r6
	bc		1,2,.L1096	# eq
.Llo290:
	lwz		r6,4(r4)		# isRoe=r6 pActiveTxBuffer=r4
.Llo291:
	lbz		r6,0(r6)		# isRoe=r6 isRoe=r6
	cmpi		0,0,r6,127		# isRoe=r6
	bc		0,2,.L1096	# ne
.Llo292:
	rlwinm		r7,r7,0,24,31		# isBrrOrPending=r7 isBrrOrPending=r7
	se_cmpi		r7,0		# isBrrOrPending=r7
	bc		0,2,.L1085	# ne
.L1096:
#    {
#       /* These situations:
#        * 1. Normal responses which are not Roe messages.
#        * 2. The positive Roe responses
#        * 3. Roe negative responses which are not from pending or protocol preemption.
#        */
# 
#       /*
#        * Assign the used (intermediate or real) buffer, only used if some data is actually sent.
#        */
#       *(pTxChannel->pp_active_buffer) = pActiveTxBuffer;
	.d2line		3118
.Llo280:
	lwz		r6,8(r3)		# isRoe=r6 pTxChannel=r3
.Llo293:
	stw		r4,0(r6)		# isRoe=r6 pActiveTxBuffer=r4
# 
#       pBufferStatus->pdu_id = pTxChannel->conf_pdu_id;
	.d2line		3120
	lhz		r0,2(r3)		# maxPendingReached=r0 pTxChannel=r3
.Llo281:
	sth		r0,0(r5)		# pBufferStatus=r5 maxPendingReached=r0
#       pBufferStatus->buf_pos = (PduLengthType)0U;
	.d2line		3121
	diab.li		r0,0		# maxPendingReached=r0
	sth		r0,8(r5)		# pBufferStatus=r5 maxPendingReached=r0
# 
#       Dcm_DslInstance.tx_confirmation = FALSE;
	.d2line		3123
	lis		r5,(Dcm_DslInstance+24)@ha		# pBufferStatus=r5
	stb		r0,(Dcm_DslInstance+24)@l(r5)		# pBufferStatus=r5 maxPendingReached=r0
# 
#       retVal = PduR_DcmTransmit(pTxChannel->tx_pdu_id, pActiveTxBuffer->pdu_info);
	.d2line		3125
	lhz		r3,0(r3)		# pTxChannel=r3 pTxChannel=r3
.Llo258:
	lwz		r4,12(r4)		# pActiveTxBuffer=r4 pActiveTxBuffer=r4
.Llo269:
	bl		PduR_DcmTransmit
.Llo278:
	mr		r31,r3		# retVal=r31 retVal=r3
	b		.L1086
.L1085:
#    }
#    else if (DCM_E_BUSYREPEATREQUEST == pActiveTxBuffer->ptr[2])
	.d2line		3127
.Llo259:
	lwz		r4,4(r4)		# pActiveTxBuffer=r4 pActiveTxBuffer=r4
	lbz		r4,2(r4)		# pActiveTxBuffer=r4 pActiveTxBuffer=r4
	cmpi		0,0,r4,33		# pActiveTxBuffer=r4
	bc		0,2,.L1087	# ne
#    {
#       /*
#        * Protocol preemption
#        * Roe handler will try to send the current Roe message later.
#        */
#       Dcm_DslInstance.tx_confirmation = FALSE;
	.d2line		3133
.Llo260:
	diab.li		r4,0		# pActiveTxBuffer=r4
.Llo270:
	lis		r5,(Dcm_DslInstance+24)@ha
	stb		r4,(Dcm_DslInstance+24)@l(r5)		# pActiveTxBuffer=r4
#       Dcm_TpTxConfirmation(pTxChannel->conf_pdu_id, NTFRSLT_OK);
	.d2line		3134
.Llo261:
	lhz		r3,2(r3)		# pTxChannel=r3 pTxChannel=r3
.Llo262:
	bl		Dcm_TpTxConfirmation
.Llo271:
	b		.L1086
.L1087:
#    }
#    else if (TRUE == maxPendingReached)
	.d2line		3136
.Llo263:
	rlwinm		r0,r0,0,24,31		# maxPendingReached=r0 maxPendingReached=r0
	se_cmpi		r0,1		# maxPendingReached=r0
	bc		0,2,.L1089	# ne
#    {
#       /*
#        * Maximum number of pending has been reached.
#        * Notify Roe handler to ignore the current evet and restart timer.
#        */
#       Dcm_DslInstance.tx_confirmation = FALSE;
	.d2line		3142
.Llo264:
	diab.li		r4,0		# pActiveTxBuffer=r4
.Llo272:
	lis		r5,(Dcm_DslInstance+24)@ha
	stb		r4,(Dcm_DslInstance+24)@l(r5)		# pActiveTxBuffer=r4
#       Dcm_TpTxConfirmation(pTxChannel->conf_pdu_id, NTFRSLT_OK);
	.d2line		3143
.Llo265:
	lhz		r3,2(r3)		# pTxChannel=r3 pTxChannel=r3
.Llo266:
	bl		Dcm_TpTxConfirmation
.Llo273:
	b		.L1086
.L1089:
#    }
#    else
#    {
#       /*
#        * DCM_INT_NRC_REQUESTCORRECTLYRECEIVEDRESPONSEPENDING
#        * Roe handler will do nothing until the final confirmation is received.
#        */
#       Dcm_DslInstance.tx_confirmation = FALSE;
	.d2line		3151
	diab.li		r4,0		# pActiveTxBuffer=r4
.Llo274:
	lis		r5,(Dcm_DslInstance+24)@ha
	stb		r4,(Dcm_DslInstance+24)@l(r5)		# pActiveTxBuffer=r4
#       Dcm_TpTxConfirmation(pTxChannel->conf_pdu_id, NTFRSLT_OK);
	.d2line		3152
.Llo267:
	lhz		r3,2(r3)		# pTxChannel=r3 pTxChannel=r3
.Llo268:
	bl		Dcm_TpTxConfirmation
.L1086:
#    }
# 
#    return retVal;
	.d2line		3155
.Llo275:
	rlwinm		r3,r31,0,24,31		# pTxChannel=r3 retVal=r31
# }
	.d2line		3156
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo276:
	lwz		r0,36(r1)		# maxPendingReached=r0
	mtspr		lr,r0		# maxPendingReached=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1499:
	.type		TransmitResponse,@function
	.size		TransmitResponse,.-TransmitResponse
# Number of nodes = 216

# Allocations for TransmitResponse
#	?a4		pTxChannel
#	?a5		pActiveTxBuffer
#	?a6		$$54
#	?a7		retVal
#	?a8		pBufferStatus
#	?a9		maxPendingReached
#	?a10		isBrrOrPending
#	?a11		pRxChannel
#	?a12		isRoe
# FUNC(void, DCM_CODE) Dcm_TpRxIndication(PduIdType DcmRxPduId, NotifResultType Result)
	.align		2
	.section	.text_vle
        .d2line         1054,22
#$$ld
.L1518:

#$$bf	Dcm_TpRxIndication,interprocedural,rasave,nostackparams
	.globl		Dcm_TpRxIndication
	.d2_cfa_start __cie
Dcm_TpRxIndication:
.Llo294:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# DcmRxPduId=r31 DcmRxPduId=r3
	mr		r29,r4		# Result=r29 Result=r4
	.d2prologue_end
# {
#    DCM_ASSERT_UNINIT(SID_TPRXINDICATION)
	.d2line		1056
	lis		r3,Dcm_pPbCfg@ha
.Llo295:
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L628	# ne
.Llo296:
	diab.li		r3,53
.Llo302:
	diab.li		r4,0
	diab.li		r5,69
	diab.li		r6,5
	bl		Det_ReportError
.L628:
# 
#    if (NULL_PTR != Dcm_pPbCfg)
	.d2line		1058
	lis		r3,Dcm_pPbCfg@ha
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L627	# eq
#    {
#       /*
#       * The source addresses are consecutive and zero based. It's therefore possible to compare
#       * with the num_rx_channels.
#       */
#       DCM_ASSERT_PARAM(SID_TPRXINDICATION, (uint16)DcmRxPduId < Dcm_pPbCfg->num_rx_channels)
	.d2line		1064
	rlwinm		r0,r31,0,16,31		# DcmRxPduId=r31
	lis		r3,Dcm_pPbCfg@ha
	lwz		r3,Dcm_pPbCfg@l(r3)
	lhz		r3,6(r3)
	se_cmp		r0,r3
	bc		1,0,.L630	# lt
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,69
	diab.li		r6,6
	bl		Det_ReportError
.L630:
#       if ((uint16)DcmRxPduId < Dcm_pPbCfg->num_rx_channels)
	.d2line		1065
	rlwinm		r0,r31,0,16,31		# DcmRxPduId=r31
	lis		r3,Dcm_pPbCfg@ha
	lwz		r3,Dcm_pPbCfg@l(r3)
	lhz		r3,6(r3)
	se_cmp		r0,r3
	bc		0,0,.L631	# ge
	.section	.text_vle
.L1523:
#       {
#          CONSTP2CONST(Dcm_Cfg_RxChannelType, AUTOMATIC, DCM_APPL_DATA) pCfgRxChannel = &Dcm_pPbCfg->p_rx_channels[DcmRxPduId];
	.d2line		1067
.Llo297:
	lis		r3,Dcm_pPbCfg@ha
	lwz		r3,Dcm_pPbCfg@l(r3)
	lwz		r0,8(r3)
.Llo298:
	rlwinm		r31,r31,0,16,31		# DcmRxPduId=r31 DcmRxPduId=r31
	e_mulli		r31,r31,44		# DcmRxPduId=r31 DcmRxPduId=r31
	se_add		r0,r31		# DcmRxPduId=r31
.Llo312:
	mr		r31,r0		# pCfgRxChannel=r31 pCfgRxChannel=r0
#          P2CONST(Dcm_Cfg_BufferType, AUTOMATIC, DCM_APPL_DATA) pCfgBuffer;
#          P2VAR(Dcm_Cfg_BufferStatusType, AUTOMATIC, DCM_APPL_DATA) pBufferStatus;
# 
#          /* Choose the correct buffer depending on if this a 2nd req or not */
#          if (DCM_CHANNEL_2ND_REQ == *pCfgRxChannel->p_state)
	.d2line		1072
.Llo299:
	lwz		r3,32(r31)		# pCfgRxChannel=r31
	lwz		r0,0(r3)
.Llo313:
	se_cmpi		r0,3
	bc		0,2,.L632	# ne
#          {
#             pCfgBuffer = pCfgRxChannel->p_2ndReqBuffer;
	.d2line		1074
.Llo314:
	lwz		r30,16(r31)		# pCfgRxChannel=r31
.Llo316:
	mr		r30,r30		# pCfgBuffer=r30 pCfgBuffer=r30
	b		.L633
.L632:
#          }
#          else
#          {
#             pCfgBuffer = pCfgRxChannel->p_buffer;
	.d2line		1078
.Llo317:
	lwz		r30,12(r31)		# pCfgRxChannel=r31
.Llo318:
	mr		r30,r30		# pCfgBuffer=r30 pCfgBuffer=r30
.L633:
#          }
#          pBufferStatus = pCfgBuffer->p_status;
	.d2line		1080
.Llo303:
	lwz		r3,8(r30)		# pCfgBuffer=r30
.Llo304:
	mr		r3,r3		# pBufferStatus=r3 pBufferStatus=r3
# 
#          if (NTFRSLT_OK != Result)
	.d2line		1082
	rlwinm		r29,r29,0,24,31		# Result=r29 Result=r29
	se_cmpi		r29,0		# Result=r29
	bc		1,2,.L634	# eq
#          {
#             pBufferStatus->state = DCM_BUF_EMPTY;
	.d2line		1084
	diab.li		r0,0
	stw		r0,4(r3)		# pBufferStatus=r3
#             StartS3ServerTimer();
	.d2line		1085
	bl		SchM_Enter_Dcm_EaTimers
.Llo305:
	lis		r3,(Dcm_LCfg+6)@ha		# pBufferStatus=r3
.Llo319:
	lhz		r0,(Dcm_LCfg+6)@l(r3)		# pBufferStatus=r3
	lis		r3,(Dcm_DslInstance+14)@ha		# pBufferStatus=r3
	sth		r0,(Dcm_DslInstance+14)@l(r3)		# pBufferStatus=r3
	bl		SchM_Exit_Dcm_EaTimers
.Llo320:
	b		.L636
.L634:
#          }
#          else if (DCM_BUF_EMPTY == pBufferStatus->state)
	.d2line		1087
.Llo306:
	lwz		r0,4(r3)		# pBufferStatus=r3
	se_cmpi		r0,0
	bc		0,2,.L637	# ne
#          {
#             /* Buffer is not requested for this channel */
#             DCM_ASSERT_PARAM(SID_TPRXINDICATION, FALSE)
	.d2line		1090
.Llo321:
	diab.li		r3,53		# pBufferStatus=r3
	diab.li		r4,0
.Llo307:
	diab.li		r5,69
	diab.li		r6,6
	bl		Det_ReportError
	b		.L636
.L637:
#          }
#          else
#          {
#             /* This indicates that this channel contains a received request */
#             pCfgBuffer->pdu_info->SduLength = pBufferStatus->buf_pos;
	.d2line		1095
.Llo308:
	lhz		r0,8(r3)		# pBufferStatus=r3
	lwz		r3,12(r30)		# pBufferStatus=r3 pCfgBuffer=r30
	sth		r0,4(r3)		# pBufferStatus=r3
# 
#             /*
#              * Take care of a concurrent tester present (0x3E 0x80) directly to avoid an unnecessary schedule according to [SWS_Dcm_00113]
#              */
#             if (!HandleConcurrentTesterPresent(pCfgRxChannel, pCfgBuffer->pdu_info))
	.d2line		1100
	lwz		r4,12(r30)		# pCfgBuffer=r30
.Llo309:
	mr		r3,r31		# pCfgRxChannel=r3 pCfgRxChannel=r31
.Llo322:
	bl		HandleConcurrentTesterPresent
	rlwinm		r3,r3,0,24,31		# pCfgRxChannel=r3 pCfgRxChannel=r3
	se_cmpi		r3,0		# pCfgRxChannel=r3
	bc		0,2,.L636	# ne
#             {
#                if (DCM_CHANNEL_2ND_REQ == *pCfgRxChannel->p_state)
	.d2line		1102
	lwz		r3,32(r31)		# pCfgRxChannel=r3 pCfgRxChannel=r31
	lwz		r0,0(r3)		# pCfgRxChannel=r3
	se_cmpi		r0,3
	bc		0,2,.L641	# ne
#                {
#                   /*
#                    * Since param DcmDslDiagRespOnSecondDeclinedRequest is TRUE,
#                    * the now received message will trigger a transmit if a BRR.
#                    * According to [SWS_Dcm_00788] and [SWS_Dcm_00789]
#                    */
#                   if ((Dcm_LCfg.resp_on_second_declined_request) &&
	.d2line		1109
	lis		r3,(Dcm_LCfg+8)@ha		# pCfgRxChannel=r3
	lbz		r0,(Dcm_LCfg+8)@l(r3)		# pCfgRxChannel=r3
	se_cmpi		r0,0
	bc		1,2,.L642	# eq
	lwz		r3,36(r31)		# pCfgRxChannel=r3 pCfgRxChannel=r31
	lwz		r0,0(r3)		# pCfgRxChannel=r3
	se_cmpi		r0,2
	bc		0,2,.L642	# ne
#                       (DCM_FULL_COMM_MODE == *pCfgRxChannel->p_commMode))
#                   {
#                      /*
#                       * Since the second request reception is finished can
#                       * the transmission of the NRC 0x21 use the very same
#                       * buffer as Rx.
#                       */
#                      ComposeNegativeResponse(pCfgBuffer,
	.d2line		1117
	lwz		r3,12(r30)		# pCfgRxChannel=r3 pCfgBuffer=r30
	lwz		r3,0(r3)		# pCfgRxChannel=r3 pCfgRxChannel=r3
	lbz		r4,0(r3)		# pCfgBuffer=r4 pCfgRxChannel=r3
	lwz		r3,24(r31)		# pCfgRxChannel=r3 pCfgRxChannel=r31
	lhz		r6,2(r3)		# pCfgRxChannel=r3
	mr		r3,r30		# pCfgBuffer=r3 pCfgBuffer=r30
	diab.li		r5,33
	bl		ComposeNegativeResponse
#                                              pCfgBuffer->pdu_info->SduDataPtr[0],
#                                              DCM_E_BUSYREPEATREQUEST,
#                                              pCfgRxChannel->p_txchannel->conf_pdu_id);
# 
#                      /* Store the active Rx channel with the Tx channel to be used */
#                      *(pCfgRxChannel->p_txchannel->pp_rx_channel) = pCfgRxChannel;
	.d2line		1123
	lwz		r3,24(r31)		# pCfgBuffer=r3 pCfgRxChannel=r31
	lwz		r3,12(r3)		# pCfgBuffer=r3 pCfgBuffer=r3
	stw		r31,0(r3)		# pCfgBuffer=r3 pCfgRxChannel=r31
# 
#                      /*
#                       * MISRA-C:2004 RULE 16.10 VIOLATION:
#                       * If a function returns error information, then that error information shall be tested.
#                       * Ignore failures, all condition shall have been checked before
#                       */
#                      (void)TransmitResponse(pCfgRxChannel->p_txchannel, pCfgBuffer);
	.d2line		1130
	lwz		r3,24(r31)		# pCfgBuffer=r3 pCfgRxChannel=r31
	mr		r4,r30		# pCfgBuffer=r4 pCfgBuffer=r30
	bl		TransmitResponse
	b		.L636
.L642:
# 
#                      /*
#                       * No change of state is made, since it must be possible to determine that the
#                       * negative response was caused by a 2nd request during CopyTx().
#                       */
#                   }
#                   else
#                   {
#                      /*
#                       * It was not possible to drop this second request in Dcm_StartOfReception()
#                       * because all info wasn't available, now it is, and it can be dropped.
#                       */
#                      ReleaseRxChannel(pCfgRxChannel);
	.d2line		1143
	mr		r3,r31		# pCfgRxChannel=r3 pCfgRxChannel=r31
	bl		ReleaseRxChannel
	b		.L636
.L641:
#                   }
#                }
#                else
#                {
#                   /*
#                    * Only process the request and continue in the next schedule if not a functional tester present
#                    * The channel state cannot be changed earlier since Dcm_TpRxIndication and Dcm_MainFunction can
#                    * be running in different threads and therefore interrupting each other.
#                    *
#                    * Store the active Rx channel with the Tx channel to be used
#                    */
#                   *(pCfgRxChannel->p_txchannel->pp_rx_channel) = pCfgRxChannel;
	.d2line		1155
	lwz		r3,24(r31)		# pCfgRxChannel=r3 pCfgRxChannel=r31
	lwz		r3,12(r3)		# pCfgRxChannel=r3 pCfgRxChannel=r3
	stw		r31,0(r3)		# pCfgRxChannel=r3 pCfgRxChannel=r31
#                   *pCfgRxChannel->p_state = DCM_CHANNEL_PENDING;
	.d2line		1156
	diab.li		r0,1
	lwz		r3,32(r31)		# pCfgRxChannel=r3 pCfgRxChannel=r31
	stw		r0,0(r3)		# pCfgRxChannel=r3
.L636:
#                }
#             }
#          }
# 
#          SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine();
	.d2line		1161
	bl		SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine
	.section	.text_vle
.L1524:
.Llo315:
	b		.L627
.L631:
#       }
#       else
#       {
#          /* Invalid PduId */
#          DCM_ASSERT_PARAM(SID_TPRXINDICATION, FALSE)
	.d2line		1166
.Llo300:
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,69
	diab.li		r6,6
	bl		Det_ReportError
.L627:
#       }
#    }
#    else
#    {
#       /* Module uninitialised. Error code already set. */
#    }
# }
	.d2line		1173
	.d2epilogue_begin
.Llo301:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo310:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo311:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1519:
	.type		Dcm_TpRxIndication,@function
	.size		Dcm_TpRxIndication,.-Dcm_TpRxIndication
# Number of nodes = 247

# Allocations for Dcm_TpRxIndication
#	?a4		DcmRxPduId
#	?a5		Result
#	?a6		pCfgRxChannel
#	?a7		pCfgBuffer
#	?a8		pBufferStatus
# FUNC(BufReq_ReturnType, DCM_CODE) Dcm_CopyTxData(  PduIdType DcmTxPduId,
	.align		2
	.section	.text_vle
        .d2line         1178,35
#$$ld
.L1535:

#$$bf	Dcm_CopyTxData,interprocedural,rasave,nostackparams
	.globl		Dcm_CopyTxData
	.d2_cfa_start __cie
Dcm_CopyTxData:
.Llo323:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	25,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r7,r3		# DcmTxPduId=r7 DcmTxPduId=r3
	mr		r31,r4		# PduInfoPtr=r31 PduInfoPtr=r4
	mr		r30,r6		# TxDataCntPtr=r30 TxDataCntPtr=r6
	.d2prologue_end
#                                                    P2VAR(PduInfoType, AUTOMATIC, DCM_APPL_DATA) PduInfoPtr,
#                                                    P2VAR(RetryInfoType, AUTOMATIC, DCM_APPL_DATA) RetryInfoPtr,
#                                                    P2VAR(PduLengthType, AUTOMATIC, DCM_APPL_DATA) TxDataCntPtr)
# {
#    BufReq_ReturnType retVal = BUFREQ_OK;
	.d2line		1183
	diab.li		r29,0		# retVal=r29
#    CONST(DslStateType, AUTOMATIC) oldDslState = Dcm_DslInstance.dsl_state;
	.d2line		1184
.Llo345:
	lis		r3,Dcm_DslInstance@ha
.Llo324:
	lwz		r25,Dcm_DslInstance@l(r3)
.Llo351:
	mr		r25,r25		# oldDslState=r25 oldDslState=r25
# 
#    if (NULL_PTR != Dcm_pPbCfg)
	.d2line		1186
	lis		r3,Dcm_pPbCfg@ha
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L660	# eq
	.section	.text_vle
.L1548:
#    {
#       const uint16 txTableIndex = GetTxChannelTableIndex(DcmTxPduId);
	.d2line		1188
.Llo325:
	mr		r3,r7		# DcmTxPduId=r3 DcmTxPduId=r7
.Llo333:
	bl		GetTxChannelTableIndex
.Llo352:
	mr		r4,r3		# txTableIndex=r4 txTableIndex=r3
# 
#       if (DcmTxPduId >= Dcm_pPbCfg->first_invalid_tx_confirmation_id_value)
	.d2line		1190
	rlwinm		r0,r7,0,16,31		# DcmTxPduId=r7
	lis		r3,Dcm_pPbCfg@ha		# DcmTxPduId=r3
.Llo353:
	lwz		r3,Dcm_pPbCfg@l(r3)		# DcmTxPduId=r3 DcmTxPduId=r3
	lhz		r3,4(r3)		# DcmTxPduId=r3 DcmTxPduId=r3
	se_cmp		r0,r3		# DcmTxPduId=r3
	bc		1,0,.L661	# lt
#       {
#          /*
#           * DcmTxPduId is out of range since the ROE Tx confirmation PduIds are the last ones.
#           */
#          DCM_ASSERT_PARAM(SID_COPYTXDATA, FALSE)
	.d2line		1195
.Llo326:
	diab.li		r3,53		# DcmTxPduId=r3
	diab.li		r4,0		# DcmTxPduId=r4
	diab.li		r5,67
	diab.li		r6,6
	bl		Det_ReportError
#          retVal = BUFREQ_E_NOT_OK;
	.d2line		1196
	diab.li		r29,1		# retVal=r29
	b		.L678
.L661:
#       }
#       else if ((Dcm_pPbCfg->first_periodic_tx_confirmation_id_value <= DcmTxPduId) && (DcmTxPduId < Dcm_pPbCfg->first_roe_tx_confirmation_id_value))
	.d2line		1198
.Llo327:
	lis		r3,Dcm_pPbCfg@ha		# DcmTxPduId=r3
	lwz		r3,Dcm_pPbCfg@l(r3)		# DcmTxPduId=r3 DcmTxPduId=r3
	lhz		r0,0(r3)		# DcmTxPduId=r3
	rlwinm		r3,r7,0,16,31		# DcmTxPduId=r3 DcmTxPduId=r7
	se_cmp		r0,r3		# DcmTxPduId=r3
	bc		1,1,.L664	# gt
	rlwinm		r0,r7,0,16,31		# DcmTxPduId=r7
	lis		r3,Dcm_pPbCfg@ha		# DcmTxPduId=r3
	lwz		r3,Dcm_pPbCfg@l(r3)		# DcmTxPduId=r3 DcmTxPduId=r3
	lhz		r3,2(r3)		# DcmTxPduId=r3 DcmTxPduId=r3
	se_cmp		r0,r3		# DcmTxPduId=r3
	bc		0,0,.L664	# ge
	.section	.text_vle
.L1554:
#       {
#          /*
#           * The DcmTxPduId belongs to a periodic transmission
#           */
#          CONST(Dcm_Cfg_PeriodicTxChannelPointerType, AUTOMATIC) pPeriodicTxChannel = Dcm_pPbCfg->p_periodic_tx_lookup_table[txTableIndex];
	.d2line		1203
.Llo328:
	lis		r3,Dcm_pPbCfg@ha		# pPeriodicTxChannel=r3
.Llo362:
	lwz		r3,Dcm_pPbCfg@l(r3)		# pPeriodicTxChannel=r3 pPeriodicTxChannel=r3
	lwz		r3,16(r3)		# pPeriodicTxChannel=r3 pPeriodicTxChannel=r3
.Llo354:
	rlwinm		r4,r4,2,14,29		# txTableIndex=r4 txTableIndex=r4
.Llo355:
	lwzx		r3,r3,r4		# pPeriodicTxChannel=r3 pPeriodicTxChannel=r3
	mr		r3,r3		# pPeriodicTxChannel=r3 pPeriodicTxChannel=r3
#          CONSTP2VAR(Dcm_Cfg_PeriodicTxStatusType, AUTOMATIC, DCM_APPL_DATA) pPeriodicTxStatus = pPeriodicTxChannel->channel_status;
	.d2line		1204
	lwz		r29,4(r3)		# retVal=r29 pPeriodicTxChannel=r3
.Llo369:
	mr		r29,r29		# pPeriodicTxStatus=r29 pPeriodicTxStatus=r29
# 
#          if (0 == PduInfoPtr->SduLength)
	.d2line		1206
	lhz		r0,4(r31)		# PduInfoPtr=r31
	se_cmpi		r0,0
	bc		0,2,.L665	# ne
#          {
#             /*
#              * [SWS_Dcm_00092]
#              * Requesting a length of zero shall return the available transmit data count.
#              * In this case no data are to be copied and SduDataPtr might be invalid.
#              */
#             *TxDataCntPtr = pPeriodicTxStatus->pdu_info.SduLength;
	.d2line		1213
.Llo363:
	lhz		r0,12(r29)		# pPeriodicTxStatus=r29
	sth		r0,0(r30)		# TxDataCntPtr=r30
#             retVal = BUFREQ_OK;
	.d2line		1214
	diab.li		r29,0		# retVal=r29
.Llo346:
	b		.L678
.L665:
#          }
#          else if (PduInfoPtr->SduLength > pPeriodicTxStatus->pdu_info.SduLength)
	.d2line		1216
.Llo347:
	lhz		r0,4(r31)		# PduInfoPtr=r31
	lhz		r3,12(r29)		# pPeriodicTxChannel=r3 pPeriodicTxStatus=r29
.Llo364:
	se_cmp		r0,r3		# pPeriodicTxChannel=r3
	bc		0,1,.L667	# le
#          {
#             /*
#              * [SWS_Dcm_00092]
#              * Requesting more data than available. Paged buffering is not available for periodic channels.
#              * The one and only Tx buffer will contain the complete response.
#              * Therefore does it not make sense to return BUSY. More data will
#              * never be available.
#              */
#             retVal = BUFREQ_E_NOT_OK;
	.d2line		1225
.Llo365:
	diab.li		r29,1		# retVal=r29
.Llo348:
	b		.L678
.L667:
#          }
#          else
#          {
#             /*
#              * Provided buffer is smaller than the data left to be sent
#              *
#              * Update stored SduLength so correct remaining data count is returned next call
#              * if not all data was retrieved this call.
#              */
#             pPeriodicTxStatus->pdu_info.SduLength -= PduInfoPtr->SduLength;
	.d2line		1235
.Llo349:
	lhz		r0,12(r29)		# pPeriodicTxStatus=r29
	lhz		r3,4(r31)		# pPeriodicTxChannel=r3 PduInfoPtr=r31
.Llo366:
	subf		r3,r3,r0		# pPeriodicTxChannel=r3 pPeriodicTxChannel=r3
	sth		r3,12(r29)		# pPeriodicTxStatus=r29 pPeriodicTxChannel=r3
# 
#             /*
#              * Copy data to out-arguments
#              */
#             Dcm_Memcpy(PduInfoPtr->SduDataPtr, &pPeriodicTxStatus->buf_ptr[pPeriodicTxStatus->buf_pos], (Dcm_MsgLenType)PduInfoPtr->SduLength);
	.d2line		1240
	lwz		r4,4(r29)		# txTableIndex=r4 pPeriodicTxStatus=r29
.Llo356:
	lhz		r0,2(r29)		# pPeriodicTxStatus=r29
	se_add		r4,r0		# txTableIndex=r4 txTableIndex=r4
.Llo357:
	lhz		r5,4(r31)		# PduInfoPtr=r31
	lwz		r3,0(r31)		# pPeriodicTxChannel=r3 PduInfoPtr=r31
.Llo367:
	bl		Dcm_Memcpy
#             *TxDataCntPtr = pPeriodicTxStatus->pdu_info.SduLength;
	.d2line		1241
	lhz		r0,12(r29)		# pPeriodicTxStatus=r29
	sth		r0,0(r30)		# TxDataCntPtr=r30
# 
#             /*
#              * Update data buffer position with ther copied length.
#              */
#             pPeriodicTxStatus->buf_pos += PduInfoPtr->SduLength;
	.d2line		1246
	lhz		r0,2(r29)		# pPeriodicTxStatus=r29
	lhz		r3,4(r31)		# pPeriodicTxChannel=r3 PduInfoPtr=r31
.Llo368:
	se_add		r0,r3		# pPeriodicTxChannel=r3
	sth		r0,2(r29)		# pPeriodicTxStatus=r29
# 
#             retVal = BUFREQ_OK;
	.d2line		1248
	diab.li		r29,0		# retVal=r29
	.section	.text_vle
.L1555:
.Llo334:
	b		.L678
.L664:
	.section	.text_vle
.L1562:
#          }
#       }
#       else
#       {
#          PduLengthType length;
#          CONSTP2CONST(Dcm_Cfg_TxChannelType, AUTOMATIC, DCM_APPL_CONST) pTxChannel = &Dcm_pPbCfg->p_tx_channels[txTableIndex];
	.d2line		1254
.Llo329:
	lis		r3,Dcm_pPbCfg@ha		# pTxChannel=r3
.Llo371:
	lwz		r3,Dcm_pPbCfg@l(r3)		# pTxChannel=r3 pTxChannel=r3
	lwz		r3,12(r3)		# pTxChannel=r3 pTxChannel=r3
.Llo358:
	rlwinm		r4,r4,0,16,31		# txTableIndex=r4 txTableIndex=r4
	e_mulli		r4,r4,20		# txTableIndex=r4 txTableIndex=r4
	se_add		r3,r4		# pTxChannel=r3 pTxChannel=r3 txTableIndex=r4
	mr		r3,r3		# pTxChannel=r3 pTxChannel=r3
#          CONST(Dcm_Cfg_BufferPointerType, AUTOMATIC) pCfgBuffer = *(pTxChannel->pp_active_buffer);
	.d2line		1255
	lwz		r3,8(r3)		# pTxChannel=r3 pTxChannel=r3
	lwz		r0,0(r3)		# pTxChannel=r3
	.d2line		1261
	mr.		r27,r0		# pCfgBuffer=?a15 pCfgBuffer=?a18
#          P2VAR(Dcm_Cfg_BufferStatusType, AUTOMATIC, DCM_APPL_DATA) pBufferStatus;
# 
# #if (DCM_PAGEDBUFFER_ENABLED == STD_ON)
#          boolean lastChunkOfDataFromPage = FALSE;
# #endif
#          if (NULL_PTR != pCfgBuffer)
.Llo377:
	bc		1,2,.L670	# eq
#          {
#             /* Now it's OK to derefernce to get pBufferStatus which is used later on. */
#             pBufferStatus = pCfgBuffer->p_status;
	.d2line		1264
.Llo359:
	lwz		r26,8(r27)		# pCfgBuffer=r27
.Llo378:
	mr		r26,r26		# pBufferStatus=r26 pBufferStatus=r26
.L670:
#          }
#          
#          if ((NULL_PTR == pCfgBuffer) ||
	.d2line		1267
	se_cmpi		r27,0		# pCfgBuffer=r27
	bc		1,2,.L681	# eq
	rlwinm		r7,r7,0,16,31		# DcmTxPduId=r7 DcmTxPduId=r7
	lhz		r0,0(r26)		# pBufferStatus=r26
	se_cmp		r7,r0		# DcmTxPduId=r7
	bc		1,2,.L671	# eq
.L681:
#              (DcmTxPduId != pBufferStatus->pdu_id))
#          {
#             retVal = BUFREQ_E_NOT_OK;
	.d2line		1270
	diab.li		r29,1		# retVal=r29
	b		.L678
.L671:
#          }
# #if (DCM_PAGEDBUFFER_ENABLED == STD_ON)
#          else if (Dcm_DslInstance.transmit_aborted)
#          {
#             Dcm_DslInstance.transmit_aborted = FALSE;
# 
#             /*
#              * MISRA-C:2004 RULE 16.10 VIOLATION:
#              * If a function returns error information, then that error information shall be tested.
#              * Ignore the result of PduR_DcmCancelTransmit, a confirmation will always be received.
#              */
#             (void)PduR_DcmCancelTransmit(pTxChannel->tx_pdu_id);
# 
#             /*
#              * Transmission aborted in the background, return OK.
#              */
#             retVal = BUFREQ_OK;
#          }
# #endif   /* DCM_PAGEDBUFFER_ENABLED == STD_ON */
#          else if (0 == PduInfoPtr->SduLength)
	.d2line		1290
.Llo330:
	lhz		r0,4(r31)		# PduInfoPtr=r31
	se_cmpi		r0,0
	bc		0,2,.L673	# ne
#          {
#             /*
#              * Single page or not using paged buffering at all.
#              */
# #if (DCM_PAGEDBUFFER_ENABLED == STD_ON)
# 
#             if (0 == Dcm_DslInstance.page_length)
#             {
#                *TxDataCntPtr = pCfgBuffer->pdu_info->SduLength;
#             }
#             else if (DSL_WAIT_PROCESS_PAGE == Dcm_DslInstance.dsl_state)
#             {
#                /* Waiting for data to be filled into the page */
#                *TxDataCntPtr = (PduLengthType)0U;
#             }
#             else
#             {
#                /* Data available in page */
#                *TxDataCntPtr = Dcm_DslInstance.page_length - pBufferStatus->buf_pos;
#             }
# 
# #else    /* DCM_PAGEDBUFFER_ENABLED == STD_ON */
# 
#             /*
#              * [SWS_Dcm_00092]
#              * Requesting a length of zero shall return the available transmit data count.
#              * In this case no data are to be copied and SduDataPtr might be invalid.
#              */
#             *TxDataCntPtr = pCfgBuffer->pdu_info->SduLength;
	.d2line		1319
	lwz		r3,12(r27)		# pTxChannel=r3 pCfgBuffer=r27
.Llo372:
	lhz		r0,4(r3)		# pTxChannel=r3
	sth		r0,0(r30)		# TxDataCntPtr=r30
# 
# #endif   /* DCM_PAGEDBUFFER_ENABLED == STD_OFF */
# 
#             retVal = BUFREQ_OK;
	.d2line		1323
	diab.li		r29,0		# retVal=r29
	b		.L678
.L673:
#          }
#          else
#          {
# #if (DCM_PAGEDBUFFER_ENABLED == STD_ON)
#             if (DSL_WAIT_PROCESS_PAGE == Dcm_DslInstance.dsl_state)
#             {
#                /*
#                 * Waiting for upper layers to complete filling of the the paged buffer.
#                 * Always return BUSY and zero as available data.
#                 */
#                *TxDataCntPtr = (PduLengthType)0U;
#                retVal = BUFREQ_E_BUSY;
#             }
#             else if (DSL_WAIT_READ_DATA == Dcm_DslInstance.dsl_state)
#             {
#                if (0 == Dcm_DslInstance.page_length)
#                {
#                   /*
#                    * This a short response without page.
#                    * A negative response will not update page process.
#                    */
#                   if (PduInfoPtr->SduLength > pCfgBuffer->pdu_info->SduLength)
#                   {
#                      /*
#                       * Requesting more data than available when not utilizing the paged buffering feature 
#                       * even though it's enabled, i.e the response does fit into the available Tx buffer.
#                       * The one and only Tx buffer will contain the complete response.
#                       * Therefore does it not make sense to return BUSY. More data will
#                       * never be available.
#                       */
#                      retVal = BUFREQ_E_NOT_OK;
#                   }
#                   else
#                   {
#                      /* Provided buffer is smaller than the data left to be sent */
#                      Dcm_DslInstance.dsl_state = DSL_WAIT_CONF;
#                      length = PduInfoPtr->SduLength;
#                   }
#                }
#                else if (PduInfoPtr->SduLength > (Dcm_DslInstance.page_length - pBufferStatus->buf_pos))
#                {
#                   /* 
#                    * [SWS_Dcm_00092]
#                    * Requesting more data than available when using paged buffering.
#                    * Return BUSY so TP will ask again, but also update the *TxDataCntPtr
#                    * so the next request will contain the proper number of bytes.
#                    */
#                    *TxDataCntPtr = Dcm_DslInstance.page_length - pBufferStatus->buf_pos;
#                    retVal = BUFREQ_E_BUSY;
#                }
#                else if ((PduInfoPtr->SduLength + pBufferStatus->buf_pos) != Dcm_DslInstance.page_length)
#                {
#                   /* Do not change the state since PduR will continue to copy. */
#                   length = PduInfoPtr->SduLength;
#                }
#                /*
#                 * Requesting the final data in the page.
#                 * What to do depends on the remaning number of bytes for the complete message.
#                 */
#                else if (pCfgBuffer->pdu_info->SduLength == PduInfoPtr->SduLength)
#                {
#                   /*
#                    * This was the final request on the final page.
#                    * Wait for a TxConfirmation
#                    */
#                   length = PduInfoPtr->SduLength;
#                   Dcm_DslInstance.dsl_state = DSL_WAIT_CONF;
#                }
#                else
#                {
#                   /*
#                    * Still pages to be retrieved. Notify DSD to start fetching more data
#                    */
#                   lastChunkOfDataFromPage = TRUE;
#                   length = PduInfoPtr->SduLength;
#                   Dcm_DslInstance.dsl_state = DSL_WAIT_PROCESS_PAGE;
#                }
#             }
#             else /*if*/
# #endif
#                /*else*/ if (PduInfoPtr->SduLength > pCfgBuffer->pdu_info->SduLength)
	.d2line		1404
.Llo373:
	lhz		r0,4(r31)		# PduInfoPtr=r31
	lwz		r3,12(r27)		# pTxChannel=r3 pCfgBuffer=r27
.Llo374:
	lhz		r3,4(r3)		# pTxChannel=r3 pTxChannel=r3
	se_cmp		r0,r3		# pTxChannel=r3
	bc		0,1,.L675	# le
#                {
#                   /* 
#                    * Requesting more data than available when not using paged buffering.
#                    * The one and only Tx buffer will contain the complete response.
#                    * Therefore does it not make sense to return BUSY. More data will
#                    * never be available.
#                    */
#                   retVal = BUFREQ_E_NOT_OK;
	.d2line		1412
.Llo375:
	diab.li		r29,1		# retVal=r29
	b		.L676
.L675:
#                }
#                else
#                {
#                   /* Provided buffer is smaller than the data left to be sent */
#                   length = PduInfoPtr->SduLength;
	.d2line		1417
	lhz		r28,4(r31)		# PduInfoPtr=r31
.Llo370:
	mr		r28,r28		# length=r28 length=r28
.L676:
#                }
# 
# 
#             /*
#              * Finally, the length has bee calculated and can possibly be used.
#              */
#             if (BUFREQ_OK == retVal)
	.d2line		1424
	se_cmpi		r29,0		# retVal=r29
	bc		0,2,.L678	# ne
#             {
#                /*
#                 * Copy data to out-arguments
#                 */
#                Dcm_Memcpy(PduInfoPtr->SduDataPtr, &pCfgBuffer->ptr[pBufferStatus->buf_pos], (Dcm_MsgLenType)length);
	.d2line		1429
	lwz		r4,4(r27)		# txTableIndex=r4 pCfgBuffer=r27
.Llo360:
	lhz		r0,8(r26)		# pBufferStatus=r26
	se_add		r4,r0		# txTableIndex=r4 txTableIndex=r4
.Llo361:
	lwz		r3,0(r31)		# pTxChannel=r3 PduInfoPtr=r31
	rlwinm		r5,r28,0,16,31		# length=r28
	bl		Dcm_Memcpy
# 
#                /*
#                 * Update stored SduLength so correct remaining data count is returned next call
#                 * if not all data was retrieved this call.
#                 */
#                pCfgBuffer->pdu_info->SduLength -= length;
	.d2line		1435
	lwz		r3,12(r27)		# pTxChannel=r3 pCfgBuffer=r27
.Llo376:
	lhz		r0,4(r3)		# pTxChannel=r3
	subf		r5,r28,r0		# length=r28
	sth		r5,4(r3)		# pTxChannel=r3
#                pBufferStatus->buf_pos += length;
	.d2line		1436
	lhz		r0,8(r26)		# pBufferStatus=r26
	se_add		r0,r28		# length=r28
	sth		r0,8(r26)		# pBufferStatus=r26
# 
# #if (DCM_PAGEDBUFFER_ENABLED == STD_ON)
# 
#                if (Dcm_DslInstance.page_length > 0)
#                {
#                   *TxDataCntPtr = Dcm_DslInstance.page_length - pBufferStatus->buf_pos;
#                }
#                else
#                {
#                   /*
#                    * Single page
#                    */
#                   *TxDataCntPtr = pCfgBuffer->pdu_info->SduLength;
#                }
# 
#                /*
#                 * For the last chunk of data shall DSD be notified so more data
#                 * can be fetched. Also reset the buffer pointer since it will not
#                 * needed until the next page shall be sent.
#                 */
#                if (lastChunkOfDataFromPage)
#                {
#                   lastChunkOfDataFromPage = FALSE;
#                   pBufferStatus->buf_pos = (PduLengthType)0U;
#                   Dcm_DsdUpdatePage();
#                }
# 
# #else    /* DCM_PAGEDBUFFER_ENABLED == STD_ON */
# 
#                *TxDataCntPtr = pCfgBuffer->pdu_info->SduLength;
	.d2line		1466
	lwz		r3,12(r27)		# pTxChannel=r3 pCfgBuffer=r27
	lhz		r0,4(r3)		# pTxChannel=r3
	sth		r0,0(r30)		# TxDataCntPtr=r30
	.section	.text_vle
.L1563:
	.section	.text_vle
.L1549:
.Llo335:
	b		.L678
.L660:
# 
# #endif   /* DCM_PAGEDBUFFER_ENABLED == STD_OFF */
#             }
#          }
#       }
#    }
#    else
#    {
#       DCM_ASSERT_UNINIT(SID_COPYTXDATA)
	.d2line		1475
.Llo331:
	lis		r3,Dcm_pPbCfg@ha
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L679	# ne
.Llo332:
	diab.li		r3,53
.Llo336:
	diab.li		r4,0
.Llo337:
	diab.li		r5,67
	diab.li		r6,5
.Llo344:
	bl		Det_ReportError
.L679:
#       retVal = BUFREQ_E_NOT_OK;
	.d2line		1476
.Llo338:
	diab.li		r29,1		# retVal=r29
.L678:
#    }
# 
#    if (oldDslState != Dcm_DslInstance.dsl_state)
	.d2line		1479
.Llo339:
	lis		r3,Dcm_DslInstance@ha		# pPeriodicTxChannel=r3
.Llo340:
	lwz		r0,Dcm_DslInstance@l(r3)		# pPeriodicTxChannel=r3
	se_cmp		r0,r25		# oldDslState=r25
	bc		1,2,.L680	# eq
#    {
#       SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine();
	.d2line		1481
.Llo341:
	bl		SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine
.L680:
#    }
# 
#    return retVal;
	.d2line		1484
.Llo342:
	mr		r3,r29		# retVal=r3 retVal=r29
# }
	.d2line		1485
	.d2epilogue_begin
	lmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	2,10
.Llo350:
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo343:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1536:
	.type		Dcm_CopyTxData,@function
	.size		Dcm_CopyTxData,.-Dcm_CopyTxData
# Number of nodes = 314

# Allocations for Dcm_CopyTxData
#	?a4		DcmTxPduId
#	?a5		PduInfoPtr
#	not allocated	RetryInfoPtr
#	?a6		TxDataCntPtr
#	?a7		$$43
#	?a8		retVal
#	?a9		oldDslState
#	?a10		txTableIndex
#	?a11		pPeriodicTxChannel
#	?a12		pPeriodicTxStatus
#	?a13		length
#	?a14		pTxChannel
#	?a15		pCfgBuffer
#	?a16		pBufferStatus
# FUNC(void, DCM_CODE) Dcm_TxConfirmation(PduIdType DcmTxPduId)
	.align		2
	.section	.text_vle
        .d2line         1498,22
#$$ld
.L1578:

#$$bf	Dcm_TxConfirmation,interprocedural,rasave,nostackparams
	.globl		Dcm_TxConfirmation
	.d2_cfa_start __cie
Dcm_TxConfirmation:
.Llo379:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    GenericTxConfirmation(DcmTxPduId, NTFRSLT_OK, SID_TXCONFIRMATION);
	.d2line		1500
	mr		r0,r3		# DcmTxPduId=r0 DcmTxPduId=r3
	diab.li		r4,0
	diab.li		r5,64
	bl		GenericTxConfirmation
# }
	.d2line		1501
	.d2epilogue_begin
.Llo380:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1579:
	.type		Dcm_TxConfirmation,@function
	.size		Dcm_TxConfirmation,.-Dcm_TxConfirmation
# Number of nodes = 9

# Allocations for Dcm_TxConfirmation
#	?a4		DcmTxPduId
# FUNC(void, DCM_CODE) Dcm_RxIndication(PduIdType DcmRxPduId, PduInfoType* PduInfoPtr)
	.align		2
	.section	.text_vle
        .d2line         1506,22
#$$ld
.L1584:

#$$bf	Dcm_RxIndication,interprocedural,rasave,nostackparams
	.globl		Dcm_RxIndication
	.d2_cfa_start __cie
Dcm_RxIndication:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    DCM_ASSERT_PARAM(SID_RXINDICATION, FALSE)
	.d2line		1508
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,129
	diab.li		r6,6
	bl		Det_ReportError
# }
	.d2line		1509
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
.L1585:
	.type		Dcm_RxIndication,@function
	.size		Dcm_RxIndication,.-Dcm_RxIndication
# Number of nodes = 10

# Allocations for Dcm_RxIndication
#	not allocated	DcmRxPduId
#	not allocated	PduInfoPtr
# FUNC(Std_ReturnType, DCM_CODE) Dcm_GetSesCtrlType(P2VAR(Dcm_SesCtrlType, AUTOMATIC, DCM_APPL_DATA) SesCtrlType)
	.align		2
	.section	.text_vle
        .d2line         1519,32
#$$ld
.L1589:

#$$bf	Dcm_GetSesCtrlType,interprocedural,rasave,nostackparams
	.globl		Dcm_GetSesCtrlType
	.d2_cfa_start __cie
Dcm_GetSesCtrlType:
.Llo381:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# SesCtrlType=r31 SesCtrlType=r3
	.d2prologue_end
# {
#    DCM_ASSERT_UNINIT(SID_GETSESCTRLTYPE)
	.d2line		1521
	lis		r3,Dcm_pPbCfg@ha
.Llo382:
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L701	# ne
.Llo383:
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,6
	diab.li		r6,5
	bl		Det_ReportError
.L701:
#    DCM_ASSERT_NULL_PTR(SID_GETSESCTRLTYPE, SesCtrlType)
	.d2line		1522
	se_cmpi		r31,0		# SesCtrlType=r31
	bc		0,2,.L702	# ne
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,6
	diab.li		r6,7
	bl		Det_ReportError
.L702:
# 
#    if (SesCtrlType != NULL_PTR)
	.d2line		1524
	se_cmpi		r31,0		# SesCtrlType=r31
	bc		1,2,.L703	# eq
#    {
#       *SesCtrlType = Dcm_DslInstance.active_session;
	.d2line		1526
	lis		r3,(Dcm_DslInstance+13)@ha
	lbz		r0,(Dcm_DslInstance+13)@l(r3)
	stb		r0,0(r31)		# SesCtrlType=r31
.L703:
#    }
# 
#    return E_OK;
	.d2line		1529
.Llo384:
	diab.li		r3,0
# }
	.d2line		1530
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
.L1590:
	.type		Dcm_GetSesCtrlType,@function
	.size		Dcm_GetSesCtrlType,.-Dcm_GetSesCtrlType
# Number of nodes = 39

# Allocations for Dcm_GetSesCtrlType
#	?a4		SesCtrlType
# FUNC(void, DCM_CODE) Dcm_SetSecurityLevel(Dcm_SecLevelType SecurityLevel)
	.align		2
	.section	.text_vle
        .d2line         1731,22
#$$ld
.L1597:

#$$bf	Dcm_SetSecurityLevel,interprocedural,rasave,nostackparams
	.globl		Dcm_SetSecurityLevel
	.d2_cfa_start __cie
Dcm_SetSecurityLevel:
.Llo385:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# SecurityLevel=r31 SecurityLevel=r3
	.d2prologue_end
# {
#    DCM_ASSERT_UNINIT(SID_SETSECURITYLEVEL)
	.d2line		1733
	lis		r3,Dcm_pPbCfg@ha
.Llo386:
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L735	# ne
.Llo387:
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,14
	diab.li		r6,5
	bl		Det_ReportError
.L735:
# 
#    Dcm_DbgSetSecLevel(SecurityLevel);
	.d2line		1735
	lis		r3,Dcm_DbgCurrentSecurityLevel@ha
	e_add16i		r3,r3,Dcm_DbgCurrentSecurityLevel@l
	stb		r31,0(r3)		# SecurityLevel=r31
# 
#    Dcm_DslInstance.active_security_level = SecurityLevel;
	.d2line		1737
	lis		r3,(Dcm_DslInstance+12)@ha
	stb		r31,(Dcm_DslInstance+12)@l(r3)		# SecurityLevel=r31
# }
	.d2line		1738
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo388:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1598:
	.type		Dcm_SetSecurityLevel,@function
	.size		Dcm_SetSecurityLevel,.-Dcm_SetSecurityLevel
# Number of nodes = 23

# Allocations for Dcm_SetSecurityLevel
#	?a4		SecurityLevel
# static FUNC(void, DCM_CODE) StopAllDidCtrl(void)
	.align		1
	.section	.text_vle
        .d2line         3563,29
#$$ld
.L1604:

#$$bf	StopAllDidCtrl,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
StopAllDidCtrl:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    uint16 didIndex;
#    P2CONST(Dcm_Cfg_DidControlType, AUTOMATIC, DCM_APPL_DATA) pDidCtrl = NULL_PTR;
	.d2line		3566
	diab.li		r31,0		# pDidCtrl=r31
#    Dcm_NegativeResponseCodeType ErrorCode;
# 
#    for (didIndex = (uint16)0U; didIndex < Dcm_LCfg.num_dids; didIndex++)
.L1206:
	.d2line		3569
.Llo389:
	rlwinm		r0,r31,0,16,31		# didIndex=r31
	lis		r3,(Dcm_LCfg+64)@ha		# underControlIndex=r3
.Llo396:
	lhz		r3,(Dcm_LCfg+64)@l(r3)		# underControlIndex=r3 underControlIndex=r3
	se_cmp		r0,r3		# underControlIndex=r3
	bc		0,0,.L1205	# ge
#    {
#       pDidCtrl = Dcm_LCfg.dids[didIndex].pDidControl;
	.d2line		3571
.Llo397:
	rlwinm		r0,r31,0,16,31		# didIndex=r31
	lis		r3,(Dcm_LCfg+68)@ha		# underControlIndex=r3
.Llo398:
	lwz		r3,(Dcm_LCfg+68)@l(r3)		# underControlIndex=r3 underControlIndex=r3
	rlwinm		r4,r0,5,0,26
	se_slwi		r0,2
	subf		r0,r0,r4
	se_add		r3,r0		# underControlIndex=r3 underControlIndex=r3
	lwz		r0,16(r3)		# underControlIndex=r3
	.d2line		3572
	mr.		r30,r0		# pDidCtrl=?a8 pDidCtrl=?a15
#       if (NULL_PTR != pDidCtrl)
.Llo391:
	bc		1,2,.L1209	# eq
	.section	.text_vle
.L1616:
#       {
#          boolean active = FALSE;
	.d2line		3574
.Llo399:
	diab.li		r5,0		# active=r5
#          Dcm_MsgLenType underControlIndex;
#          for (underControlIndex = (Dcm_MsgLenType)0x00U; underControlIndex < GetSizeOfUnderControl(pDidCtrl->control_enable_mask_record_size); underControlIndex++)
	.d2line		3576
.Llo392:
	diab.li		r3,0		# underControlIndex=r3
.L1210:
.Llo400:
	lhz		r0,0(r30)		# pDidCtrl=r30
	se_cmpi		r0,0
	bc		0,2,.L1216	# ne
	lhz		r4,0(r30)		# pDidCtrl=r30
	se_addi		r4,1
	rlwinm		r0,r4,0,16,31
	b		.L1217
.L1216:
	lhz		r0,0(r30)		# pDidCtrl=r30
.L1217:
	rlwinm		r4,r3,0,16,31		# underControlIndex=r3
	se_cmp		r4,r0
	bc		0,0,.L1214	# ge
#          {
#             if (pDidCtrl->p_under_control[underControlIndex] != (uint8)0x00U)
	.d2line		3578
	lwz		r4,4(r30)		# pDidCtrl=r30
	rlwinm		r0,r3,0,16,31		# underControlIndex=r3
	lbzx		r0,r4,r0
	se_cmpi		r0,0
	bc		1,2,.L1213	# eq
#             {
#                /*
#                 * At least one signal is enable, thus stop them all using ReturnControlToECU
#                 */
#                active = TRUE;
	.d2line		3583
	diab.li		r5,1		# active=r5
	b		.L1214
.L1213:
#                break;
#             }
#          }
	.d2line		3586
	diab.addi		r0,r3,1		# underControlIndex=r3
	se_addi		r3,1		# underControlIndex=r3 underControlIndex=r3
	b		.L1210
.L1214:
# 
#          /*
#           * Only reset active control DIDs
#           */
#          if (active)
	.d2line		3591
	rlwinm		r5,r5,0,24,31		# active=r5 active=r5
	se_cmpi		r5,0		# active=r5
	bc		1,2,.L1209	# eq
#          {
#             Dcm_Memset(pDidCtrl->p_under_control, (uint8)0x00U, GetSizeOfUnderControl(pDidCtrl->control_enable_mask_record_size));
	.d2line		3593
.Llo393:
	lhz		r0,0(r30)		# pDidCtrl=r30
	se_cmpi		r0,0
	bc		0,2,.L1218	# ne
	lhz		r5,0(r30)		# active=r5 pDidCtrl=r30
.Llo394:
	se_addi		r5,1		# active=r5 active=r5
	rlwinm		r5,r5,0,16,31		# active=r5 active=r5
.Llo395:
	b		.L1219
.L1218:
	lhz		r5,0(r30)		# active=r5 pDidCtrl=r30
.L1219:
	lwz		r3,4(r30)		# underControlIndex=r3 pDidCtrl=r30
	diab.li		r4,0
	bl		Dcm_Memset
# 
#             /* Fake that ALL signals are active (0xFF), to trigger return control to ECU for all */
#             Dcm_Memset(Dcm_LCfg.p_response_buffer, (uint8)0xFFU, pDidCtrl->control_enable_mask_record_size);
	.d2line		3596
	lis		r3,(Dcm_LCfg+20)@ha		# underControlIndex=r3
.Llo401:
	lwz		r3,(Dcm_LCfg+20)@l(r3)		# underControlIndex=r3 underControlIndex=r3
.Llo402:
	lhz		r5,0(r30)		# active=r5 pDidCtrl=r30
	diab.li		r4,255
	bl		Dcm_Memset
# 
#             /*
#              * MISRA-C:2004 RULE 16.10 VIOLATION:
#              * If a function returns error information, then that error information shall be tested.
#              * Ignore the result, no correlating request where to send the respond.
#              *
#              * No need to check if pDidCtrl->rctecu_index != 0 since Dcm_ReturnControlToECUWrapper
#              * is always generated. Using zero will just result in E_NOT_OK.
#              */
#             (void)Dcm_ReturnControlToECUWrapper(pDidCtrl->rctecu_index, DCM_INITIAL, &ErrorCode);
	.d2line		3606
	lhz		r3,8(r30)		# underControlIndex=r3 pDidCtrl=r30
	diab.addi		r5,r1,8		# active=r5
	diab.li		r4,0
	bl		Dcm_ReturnControlToECUWrapper
	.section	.text_vle
.L1617:
.L1209:
#          }
#       }
#    }
	.d2line		3609
	diab.addi		r0,r31,1		# didIndex=r31
	se_addi		r31,1		# didIndex=r31 didIndex=r31
	b		.L1206
.L1205:
# }
	.d2line		3610
	.d2epilogue_begin
.Llo390:
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
.L1605:
	.type		StopAllDidCtrl,@function
	.size		StopAllDidCtrl,.-StopAllDidCtrl
# Number of nodes = 142

# Allocations for StopAllDidCtrl
#	?a4		$$58
#	?a5		$$57
#	?a6		$$56
#	?a7		didIndex
#	?a8		pDidCtrl
#	SP,8		ErrorCode
#	?a9		active
#	?a10		underControlIndex
# FUNC(void, DCM_CODE) Dcm_SetSesCtrlType(Dcm_SesCtrlType SesCtrlType)
	.align		2
	.section	.text_vle
        .d2line         1543,22
#$$ld
.L1627:

#$$bf	Dcm_SetSesCtrlType,interprocedural,rasave,nostackparams
	.globl		Dcm_SetSesCtrlType
	.d2_cfa_start __cie
Dcm_SetSesCtrlType:
.Llo403:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# SesCtrlType=r31 SesCtrlType=r3
	.d2prologue_end
# {
#    Rte_ModeType_DcmDiagnosticSessionControl sesCtrlTypeResult;
#    CONST(Dcm_SesCtrlType, AUTOMATIC) oldSession = Dcm_DslInstance.active_session;
	.d2line		1546
.Llo404:
	lis		r3,(Dcm_DslInstance+13)@ha
.Llo405:
	lbz		r30,(Dcm_DslInstance+13)@l(r3)
.Llo413:
	mr		r30,r30		# oldSession=r30 oldSession=r30
# 
#    if (DCM_DEFAULT_SESSION == SesCtrlType)
	.d2line		1548
	rlwinm		r3,r31,0,24,31		# SesCtrlType=r31
	se_cmpi		r3,1
	bc		0,2,.L708	# ne
#    {
#       /*
#       * [SWS_Dcm_00628] On a session transition to default session (either from default session or
#       * from non-default session), the DCM shall stop all the control in progress.
#       */
#       StopAllDidCtrl();
	.d2line		1554
	bl		StopAllDidCtrl
# 
#       EnableSecurity();
	.d2line		1556
	diab.li		r3,0
	bl		Dcm_SetSecurityLevel
#       Dcm_DspEnableDtcSetting();
	.d2line		1557
	bl		Dcm_DspEnableDtcSetting
# 
#       if (DCM_DEFAULT_SESSION == Dcm_DslInstance.active_session) /* defaultSession */
	.d2line		1559
	lis		r3,(Dcm_DslInstance+13)@ha
	lbz		r0,(Dcm_DslInstance+13)@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L711	# eq
#       {
#          /*
#           * ISO14229 Figure 7: Case 1 - Do nothing
#           */
#       }
#       else
#       {
#          /*
#           * ISO14229 Figure 7: Case 4 - [SWS_Dcm_00168]
#           */
#          ComM_DCM_InactiveDiagnostic(Dcm_DslInstance.networkId);
	.d2line		1570
	lis		r3,(Dcm_DslInstance+26)@ha
	lbz		r3,(Dcm_DslInstance+26)@l(r3)
	bl		ComM_DCM_InactiveDiagnostic
# 
#          /*
#           * Update debug information Dcm_DbgActiveDiagnosticActivity.
#           */
#          Dcm_DbgSetActivity(0);
	.d2line		1575
	diab.li		r0,0
	lis		r3,Dcm_DbgCurrentDiagnosticActivity@ha
	e_add16i		r3,r3,Dcm_DbgCurrentDiagnosticActivity@l
	stb		r0,0(r3)
# 
# 
#           /*
#            * SS-ISO14229-2006 2:nd paragraph p.38
#            *
#            * When the server transitions from any diagnostic session other than the defaultSession to the
#            * defaultSession, any configured periodic scheduler shall be disabled.
#            *
#            * ISO 15765-3 First edition 2004-10-15 6.3.5.4 Unsolicited response messages
#            *
#            * Any unsolicited transmitted response message shall not reset the S3Server timer in the server. This avoids a
#            * diagnostic session keep-alive latch-up effect in the server for cases where a periodic message transmission is
#            * active or a timer-triggered event is configured in the server where the time interval between the events is
#            * smaller than S3Server.
#            */
#          Dcm_DspResetPeriodicTransmission();
	.d2line		1591
	bl		Dcm_DspResetPeriodicTransmission
	b		.L711
.L708:
#       }
#    }
#    else
#    {
#       if (DCM_DEFAULT_SESSION == Dcm_DslInstance.active_session) /* defaultSession */
	.d2line		1596
	lis		r3,(Dcm_DslInstance+13)@ha
	lbz		r0,(Dcm_DslInstance+13)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L712	# ne
#       {
#          /*
#           * ISO14229 Figure 7: Case 2
#           */
# 
#          /* [SWS_Dcm_00136] Roe requests shall not activate full communication */
#          if (!Dcm_DslInstance.p_active_rx_channel->is_roe)
	.d2line		1603
	lis		r3,(Dcm_DslInstance+36)@ha
	lwz		r3,(Dcm_DslInstance+36)@l(r3)
	lbz		r0,8(r3)
	se_cmpi		r0,0
	bc		0,2,.L713	# ne
#          {
#             /* [SWS_Dcm_00167] */
#             ActivateDiagnosticCommunication(Dcm_DslInstance.networkId);
	.d2line		1606
	lis		r3,(Dcm_DslInstance+26)@ha
	lbz		r3,(Dcm_DslInstance+26)@l(r3)
	bl		ComM_DCM_ActiveDiagnostic
	diab.li		r0,1
	lis		r3,Dcm_DbgCurrentDiagnosticActivity@ha
	e_add16i		r3,r3,Dcm_DbgCurrentDiagnosticActivity@l
	stb		r0,0(r3)
.L713:
#          }
#          StartS3ServerTimer();
	.d2line		1608
	bl		SchM_Enter_Dcm_EaTimers
	lis		r3,(Dcm_LCfg+6)@ha
	lhz		r0,(Dcm_LCfg+6)@l(r3)
	lis		r3,(Dcm_DslInstance+14)@ha
	sth		r0,(Dcm_DslInstance+14)@l(r3)
	bl		SchM_Exit_Dcm_EaTimers
	b		.L716
.L712:
#       }
#       else
#       {
#          /*
#           * ISO14229 Figure 7: Case 3
#           */
#          StartS3ServerTimer();
	.d2line		1615
	bl		SchM_Enter_Dcm_EaTimers
	lis		r3,(Dcm_LCfg+6)@ha
	lhz		r0,(Dcm_LCfg+6)@l(r3)
	lis		r3,(Dcm_DslInstance+14)@ha
	sth		r0,(Dcm_DslInstance+14)@l(r3)
	bl		SchM_Exit_Dcm_EaTimers
#          EnableSecurity();
	.d2line		1616
	diab.li		r3,0
	bl		Dcm_SetSecurityLevel
.L716:
#       }
# 
#       if (FALSE == Dcm_IsServiceAvailableSession(CONTROL_DTC_SETTING_SID, Dcm_DslInstance.p_active_rx_channel->p_protocol->identifier_table_id, SesCtrlType))
	.d2line		1619
	lis		r3,(Dcm_DslInstance+36)@ha
	lwz		r3,(Dcm_DslInstance+36)@l(r3)
	lwz		r3,20(r3)
	lbz		r4,2(r3)
	rlwinm		r5,r31,0,24,31		# SesCtrlType=r31
	diab.li		r3,133
	bl		Dcm_IsServiceAvailableSession
	e_andi.		r3,r3,255
	bc		0,2,.L711	# ne
#       {
#          /*
#           * UDS service ControlDTCSetting is not supported in the new session.
#           * Enable Dtc setting if it is disabled.
#           */
#          Dcm_DspEnableDtcSetting();
	.d2line		1625
	bl		Dcm_DspEnableDtcSetting
.L711:
#       }
#    }
# 
#    Dcm_DslInstance.active_session = SesCtrlType;
	.d2line		1629
	lis		r3,(Dcm_DslInstance+13)@ha		# sesCtrlTypeResult=r3
.Llo407:
	stb		r31,(Dcm_DslInstance+13)@l(r3)		# sesCtrlTypeResult=r3 SesCtrlType=r31
# 
# #if (DCM_RESET_ROUTINE_CONTROL_STATE_API_ENABLED == STD_ON)
#    /*
#    * Always ask if the routine states shall be reset or not.
#    * This regardless if the new sessions is equal to the old
#    * one or not. Mark all possible control routines as inactive
#    * depending on the response from SW-C.
#    */
#    if (E_OK == Rte_Call_ResetRoutineControlService_ResetRoutineControlState(oldSession, SesCtrlType))
#    {
#       uint16 i;
# 
#       for (i = (uint16)0U; i < Dcm_LCfg.num_routine_ctrl; i++)
#       {
#          Dcm_LCfg.p_routine_state[i] = DCM_ROUTINE_STATE_INIT;
#       }
#    }
# #endif /* DCM_RESET_ROUTINE_CONTROL_DEFAULT_SESSION == STD_ON */
# 
#    Dcm_DspRoe_GenSessionChange(oldSession, SesCtrlType);
	.d2line		1649
	rlwinm		r3,r30,0,24,31		# sesCtrlTypeResult=r3 oldSession=r30
.Llo408:
	rlwinm		r4,r31,0,24,31		# SesCtrlType=r31
	bl		Dcm_DspRoe_GenSessionChange
# 
#    sesCtrlTypeResult = Dcm_SesCtrlTypeToSessionMode(SesCtrlType);
	.d2line		1651
	rlwinm		r3,r31,0,24,31		# sesCtrlTypeResult=r3 SesCtrlType=r31
	bl		Dcm_SesCtrlTypeToSessionMode
#    /*
#     * MISRA-C:2004 RULE 16.10 VIOLATION:
#     * If a function returns error information, then that error information shall be tested.
#     * The return value of the switch is discarded since the DCM has
#     * no possibilities for error handling at this point.
#     */
#    (void)SchM_Switch_Dcm_DcmDiagnosticSessionControl(sesCtrlTypeResult);
	.d2line		1658
.Llo409:
	rlwinm		r3,r3,0,24,31		# sesCtrlTypeResult=r3 sesCtrlTypeResult=r3
.Llo410:
	bl		SchM_Switch_Dcm_DcmDiagnosticSessionControl
# 
#    /*
#     * The seed is never valid after a session transition regardless
#     * if it is to the same or another session.
#    */
#    Dcm_DspResetPendingSecurityLevel();
	.d2line		1664
	bl		Dcm_DspResetPendingSecurityLevel
#    Dcm_DbgSetSession(SesCtrlType);
	.d2line		1665
	lis		r3,Dcm_DbgCurrentSession@ha		# sesCtrlTypeResult=r3
.Llo411:
	e_add16i		r3,r3,Dcm_DbgCurrentSession@l		# sesCtrlTypeResult=r3 sesCtrlTypeResult=r3
	stb		r31,0(r3)		# sesCtrlTypeResult=r3 SesCtrlType=r31
# }
	.d2line		1666
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo406:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo412:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1628:
	.type		Dcm_SetSesCtrlType,@function
	.size		Dcm_SetSesCtrlType,.-Dcm_SetSesCtrlType
# Number of nodes = 165

# Allocations for Dcm_SetSesCtrlType
#	?a4		SesCtrlType
#	?a5		sesCtrlTypeResult
#	?a6		oldSession
# FUNC(void, DCM_CODE) Dcm_GetSesTimingValues(P2VAR(Dcm_TimerServerType, AUTOMATIC, DCM_APPL_DATA) timerValues)
	.align		2
	.section	.text_vle
        .d2line         1671,22
#$$ld
.L1639:

#$$bf	Dcm_GetSesTimingValues,interprocedural,rasave,nostackparams
	.globl		Dcm_GetSesTimingValues
	.d2_cfa_start __cie
Dcm_GetSesTimingValues:
.Llo414:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# timerValues=r31 timerValues=r3
	.d2prologue_end
# {
#    /*
#     * Dcm_GetSesTimingValues is an internal function and there is no possibility of timerValues to be NULL_PTR.
#     * Thus no check against NULL_PTR needed.
#     *
#     * [SWS_Dcm_00024]
#     * DSL submodule shall send a negative response with NRC 0x78 (Response pending) when reaching the response time
#     *   DcmDspSessionP2ServerMax - DcmTimStrP2ServerAdjust
#     *   DcmDspSessionP2StarServerMax -DcmTimStrP2StarServerAdjust
#     */
# 
#    Dcm_Cfg_SessionPointerType pCurrentSession = Dcm_DspGetSessionConfiguration(Dcm_DslInstance.active_session);
	.d2line		1683
.Llo418:
	lis		r3,(Dcm_DslInstance+13)@ha		# pCurrentSession=r3
.Llo415:
	lbz		r3,(Dcm_DslInstance+13)@l(r3)		# pCurrentSession=r3 pCurrentSession=r3
.Llo419:
	bl		Dcm_DspGetSessionConfiguration
	.d2line		1684
.Llo420:
	mr.		r3,r3		# pCurrentSession=?a5 pCurrentSession=r3
#    if (NULL_PTR == pCurrentSession)
	bc		0,2,.L725	# ne
#    {
#       /*
#        * Assign the default session as fallback which, by the SCG, is always on position 0.
#        */
#       pCurrentSession = &Dcm_LCfg.sessions[0];
	.d2line		1689
.Llo416:
	lis		r3,(Dcm_LCfg+36)@ha		# pCurrentSession=r3
	lwz		r3,(Dcm_LCfg+36)@l(r3)		# pCurrentSession=r3 pCurrentSession=r3
	mr		r3,r3		# pCurrentSession=r3 pCurrentSession=r3
.L725:
#    }
# 
#    /*
#     * It is safe to type cast since SCG guarantees that adjust values never are bigger than server max values.
#     */
#    timerValues->timer_p2_server      = (uint16)(pCurrentSession->p2_server_max - Dcm_DslInstance.p_active_protocol->p2_adjust_timeout);
	.d2line		1695
	lhz		r6,2(r3)		# pCurrentSession=r3
	lis		r4,(Dcm_DslInstance+8)@ha
	lwz		r5,(Dcm_DslInstance+8)@l(r4)
	lhz		r5,6(r5)
	subf		r5,r5,r6
	sth		r5,0(r31)		# timerValues=r31
#    timerValues->timer_p2_star_server = (uint16)(pCurrentSession->p2_star_server_max - Dcm_DslInstance.p_active_protocol->p2_star_adjust_timeout);
	.d2line		1696
	lhz		r3,4(r3)		# pCurrentSession=r3 pCurrentSession=r3
	lwz		r4,(Dcm_DslInstance+8)@l(r4)
	lhz		r4,8(r4)
	subf		r4,r4,r3		# pCurrentSession=r3
	sth		r4,2(r31)		# timerValues=r31
# }
	.d2line		1697
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo417:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo421:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1640:
	.type		Dcm_GetSesTimingValues,@function
	.size		Dcm_GetSesTimingValues,.-Dcm_GetSesTimingValues
# Number of nodes = 55

# Allocations for Dcm_GetSesTimingValues
#	?a4		timerValues
#	?a5		pCurrentSession
# FUNC(Std_ReturnType, DCM_CODE) Dcm_GetSecurityLevel(P2VAR(Dcm_SecLevelType, AUTOMATIC, DCM_APPL_DATA) SecLevel)
	.align		2
	.section	.text_vle
        .d2line         1707,32
#$$ld
.L1655:

#$$bf	Dcm_GetSecurityLevel,interprocedural,rasave,nostackparams
	.globl		Dcm_GetSecurityLevel
	.d2_cfa_start __cie
Dcm_GetSecurityLevel:
.Llo422:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# SecLevel=r31 SecLevel=r3
	.d2prologue_end
# {
#    DCM_ASSERT_UNINIT(SID_GETSECURITYLEVEL)
	.d2line		1709
	lis		r3,Dcm_pPbCfg@ha
.Llo423:
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L728	# ne
.Llo424:
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,13
	diab.li		r6,5
	bl		Det_ReportError
.L728:
#    DCM_ASSERT_NULL_PTR(SID_GETSECURITYLEVEL, SecLevel)
	.d2line		1710
	se_cmpi		r31,0		# SecLevel=r31
	bc		0,2,.L729	# ne
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,13
	diab.li		r6,7
	bl		Det_ReportError
.L729:
# 
#    if (SecLevel != NULL_PTR)
	.d2line		1712
	se_cmpi		r31,0		# SecLevel=r31
	bc		1,2,.L730	# eq
#    {
#       *SecLevel = Dcm_DslInstance.active_security_level;
	.d2line		1714
	lis		r3,(Dcm_DslInstance+12)@ha
	lbz		r0,(Dcm_DslInstance+12)@l(r3)
	stb		r0,0(r31)		# SecLevel=r31
.L730:
#    }
# 
#    return E_OK;
	.d2line		1717
.Llo425:
	diab.li		r3,0
# }
	.d2line		1718
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
.L1656:
	.type		Dcm_GetSecurityLevel,@function
	.size		Dcm_GetSecurityLevel,.-Dcm_GetSecurityLevel
# Number of nodes = 39

# Allocations for Dcm_GetSecurityLevel
#	?a4		SecLevel
# FUNC(Std_ReturnType, DCM_CODE) Dcm_GetActiveProtocol(P2VAR(Dcm_ProtocolType, AUTOMATIC, DCM_APPL_DATA) ActiveProtocol)
	.align		2
	.section	.text_vle
        .d2line         1748,32
#$$ld
.L1662:

#$$bf	Dcm_GetActiveProtocol,interprocedural,rasave,nostackparams
	.globl		Dcm_GetActiveProtocol
	.d2_cfa_start __cie
Dcm_GetActiveProtocol:
.Llo426:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# ActiveProtocol=r31 ActiveProtocol=r3
	.d2prologue_end
# {
#    Std_ReturnType retVal;
# 
#    DCM_ASSERT_UNINIT(SID_GETACTIVEPROTOCOL)
	.d2line		1752
	lis		r3,Dcm_pPbCfg@ha
.Llo427:
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L738	# ne
.Llo428:
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,15
	diab.li		r6,5
	bl		Det_ReportError
.L738:
#    DCM_ASSERT_NULL_PTR(SID_GETACTIVEPROTOCOL, ActiveProtocol)
	.d2line		1753
	se_cmpi		r31,0		# ActiveProtocol=r31
	bc		0,2,.L739	# ne
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,15
	diab.li		r6,7
	bl		Det_ReportError
.L739:
# 
#    if (NULL_PTR == ActiveProtocol)
	.d2line		1755
	se_cmpi		r31,0		# ActiveProtocol=r31
	bc		0,2,.L740	# ne
#    {
#       /*
#        * Invalid in-parameter. Returning failure.
#        */
#       retVal = E_NOT_OK;
	.d2line		1760
	diab.li		r3,1		# retVal=r3
.Llo430:
	b		.L741
.L740:
#    }
#    else if (Dcm_DslInstance.p_active_protocol != NULL_PTR)
	.d2line		1762
.Llo431:
	lis		r3,(Dcm_DslInstance+8)@ha
	lwz		r0,(Dcm_DslInstance+8)@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L742	# eq
#    {
#       *ActiveProtocol = Dcm_DslInstance.p_active_protocol->identifier;
	.d2line		1764
	lis		r3,(Dcm_DslInstance+8)@ha		# retVal=r3
.Llo432:
	lwz		r3,(Dcm_DslInstance+8)@l(r3)		# retVal=r3 retVal=r3
	lbz		r0,0(r3)		# retVal=r3
	stb		r0,0(r31)		# ActiveProtocol=r31
#       retVal = E_OK;
	.d2line		1765
	diab.li		r3,0		# retVal=r3
	b		.L741
.L742:
#    }
#    else
#    {
#       *ActiveProtocol = DCM_NO_ACTIVE_PROTOCOL;
	.d2line		1769
.Llo433:
	diab.li		r0,12
	stb		r0,0(r31)		# ActiveProtocol=r31
#       retVal = E_OK;
	.d2line		1770
	diab.li		r3,0		# retVal=r3
.L741:
#    }
# 
#    return retVal;
	.d2line		1773
.Llo429:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		1774
	.d2epilogue_begin
.Llo434:
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
.L1663:
	.type		Dcm_GetActiveProtocol,@function
	.size		Dcm_GetActiveProtocol,.-Dcm_GetActiveProtocol
# Number of nodes = 62

# Allocations for Dcm_GetActiveProtocol
#	?a4		ActiveProtocol
#	?a5		retVal
# FUNC(Std_ReturnType, DCM_CODE) Dcm_ResetToDefaultSession(void)
	.align		2
	.section	.text_vle
        .d2line         1786,32
#$$ld
.L1672:

#$$bf	Dcm_ResetToDefaultSession,interprocedural,rasave,nostackparams
	.globl		Dcm_ResetToDefaultSession
	.d2_cfa_start __cie
Dcm_ResetToDefaultSession:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    DCM_ASSERT_UNINIT(SID_RESETTODEFAULTSESSION)
	.d2line		1788
	lis		r3,Dcm_pPbCfg@ha
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L750	# ne
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,42
	diab.li		r6,5
	bl		Det_ReportError
.L750:
# 
#    Dcm_DslInstance.reset_to_default_session = TRUE;
	.d2line		1790
	diab.li		r0,1
	lis		r3,(Dcm_DslInstance+23)@ha
	stb		r0,(Dcm_DslInstance+23)@l(r3)
# 
#    SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine();
	.d2line		1792
	bl		SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine
# 
#    return E_OK;
	.d2line		1794
	diab.li		r3,0
# }
	.d2line		1795
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
.L1673:
	.type		Dcm_ResetToDefaultSession,@function
	.size		Dcm_ResetToDefaultSession,.-Dcm_ResetToDefaultSession
# Number of nodes = 24

# Allocations for Dcm_ResetToDefaultSession
# FUNC(void, DCM_CODE) Dcm_GetResponsePendingStatus(P2VAR(boolean, AUTOMATIC, DCM_APPL_DATA) HasBeenSent)
	.align		2
	.section	.text_vle
        .d2line         1801,22
#$$ld
.L1677:

#$$bf	Dcm_GetResponsePendingStatus,interprocedural,rasave,nostackparams
	.globl		Dcm_GetResponsePendingStatus
	.d2_cfa_start __cie
Dcm_GetResponsePendingStatus:
.Llo435:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# HasBeenSent=r31 HasBeenSent=r3
	.d2prologue_end
# {
#    DCM_ASSERT_UNINIT(SID_GETRESPONSEPENDINGSTATUS)
	.d2line		1803
	lis		r3,Dcm_pPbCfg@ha
.Llo436:
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L753	# ne
.Llo437:
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,130
	diab.li		r6,5
	bl		Det_ReportError
.L753:
#    DCM_ASSERT_NULL_PTR(SID_GETRESPONSEPENDINGSTATUS, HasBeenSent)
	.d2line		1804
	se_cmpi		r31,0		# HasBeenSent=r31
	bc		0,2,.L754	# ne
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,130
	diab.li		r6,7
	bl		Det_ReportError
.L754:
# 
#    *HasBeenSent = dslResponsePendingHasBeenSent;
	.d2line		1806
	lis		r3,dslResponsePendingHasBeenSent@ha
	lbz		r3,dslResponsePendingHasBeenSent@l(r3)
	stb		r3,0(r31)		# HasBeenSent=r31
# }
	.d2line		1807
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo438:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1678:
	.type		Dcm_GetResponsePendingStatus,@function
	.size		Dcm_GetResponsePendingStatus,.-Dcm_GetResponsePendingStatus
# Number of nodes = 30

# Allocations for Dcm_GetResponsePendingStatus
#	?a4		HasBeenSent
# FUNC(void, DCM_CODE) Dcm_DslInit(P2CONST(Dcm_ConfigType, AUTOMATIC, DCM_CONST) ConfigPtr)
	.align		2
	.section	.text_vle
        .d2line         1816,22
#$$ld
.L1684:

#$$bf	Dcm_DslInit,interprocedural,rasave,nostackparams
	.globl		Dcm_DslInit
	.d2_cfa_start __cie
Dcm_DslInit:
.Llo439:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r30,r3		# ConfigPtr=r30 ConfigPtr=r3
	.d2prologue_end
# {
#    uint16 u16Counter;
# 
# #if (DCM_PAGEDBUFFER_ENABLED == STD_ON)
#    Dcm_DslInstance.process_page = FALSE;
#    Dcm_DslInstance.page_length = (uint16)0U;
#    Dcm_DslInstance.transmit_aborted = FALSE;
# #endif /* DCM_PAGEDBUFFER_ENABLED */
# 
#    Dcm_DslInstance.dsl_state = DSL_IDLE;
	.d2line		1826
	diab.li		r0,0
	lis		r3,Dcm_DslInstance@ha
.Llo440:
	e_add16i		r3,r3,Dcm_DslInstance@l
	stw		r0,0(r3)
#    Dcm_DslInstance.preemption_state = DSL_IDLE;
	.d2line		1827
	lis		r3,(Dcm_DslInstance+4)@ha
	stw		r0,(Dcm_DslInstance+4)@l(r3)
#    Dcm_DslInstance.p_active_protocol = NULL_PTR;
	.d2line		1828
	lis		r3,(Dcm_DslInstance+8)@ha
	stw		r0,(Dcm_DslInstance+8)@l(r3)
#    Dcm_DslInstance.active_session = DCM_DEFAULT_SESSION;
	.d2line		1829
	diab.li		r0,1
	lis		r3,(Dcm_DslInstance+13)@ha
	stb		r0,(Dcm_DslInstance+13)@l(r3)
#    TimerStop(Dcm_DslInstance.s3_server_timer);
	.d2line		1830
	bl		SchM_Enter_Dcm_EaTimers
	diab.li		r31,65535
	lis		r3,(Dcm_DslInstance+14)@ha
	sth		r31,(Dcm_DslInstance+14)@l(r3)
	bl		SchM_Exit_Dcm_EaTimers
#    TimerStop(Dcm_DslInstance.response_pending_timer);
	.d2line		1831
	bl		SchM_Enter_Dcm_EaTimers
	lis		r3,(Dcm_DslInstance+16)@ha
	sth		r31,(Dcm_DslInstance+16)@l(r3)
	bl		SchM_Exit_Dcm_EaTimers
#    Dcm_DslInstance.response_pending_timer_elapsed = FALSE;
	.d2line		1832
	diab.li		r6,0
.Llo443:
	lis		r3,(Dcm_DslInstance+19)@ha
	stb		r6,(Dcm_DslInstance+19)@l(r3)
#    Dcm_DslInstance.response_pending_counter = (uint8)0U;
	.d2line		1833
	lis		r3,(Dcm_DslInstance+18)@ha
	stb		r6,(Dcm_DslInstance+18)@l(r3)
#    Dcm_DslInstance.active_security_level = (uint8)0U;
	.d2line		1834
	lis		r3,(Dcm_DslInstance+12)@ha
	stb		r6,(Dcm_DslInstance+12)@l(r3)
#    Dcm_DslInstance.protocol_stopped = TRUE;
	.d2line		1835
	diab.li		r4,1
	lis		r3,(Dcm_DslInstance+20)@ha
	stb		r4,(Dcm_DslInstance+20)@l(r3)
#    Dcm_DslInstance.transmit_no_response = FALSE;
	.d2line		1836
	lis		r3,(Dcm_DslInstance+21)@ha
	stb		r6,(Dcm_DslInstance+21)@l(r3)
#    Dcm_DslInstance.negative_response_transmitted = FALSE;
	.d2line		1837
	lis		r3,(Dcm_DslInstance+22)@ha
	stb		r6,(Dcm_DslInstance+22)@l(r3)
#    Dcm_DslInstance.reset_to_default_session = FALSE;
	.d2line		1838
	lis		r3,(Dcm_DslInstance+23)@ha
	stb		r6,(Dcm_DslInstance+23)@l(r3)
#    Dcm_DslInstance.tx_confirmation = FALSE;
	.d2line		1839
	lis		r3,(Dcm_DslInstance+24)@ha
	stb		r6,(Dcm_DslInstance+24)@l(r3)
#    Dcm_DslInstance.tx_confirmation_result = DCM_RES_NEG_OK;
	.d2line		1840
	diab.li		r0,2
	lis		r3,(Dcm_DslInstance+25)@ha
	stb		r0,(Dcm_DslInstance+25)@l(r3)
#    Dcm_DslInstance.networkId = (uint8)0U;
	.d2line		1841
	lis		r3,(Dcm_DslInstance+26)@ha
	stb		r6,(Dcm_DslInstance+26)@l(r3)
# 
#    Dcm_DslInstance.p_dsd_tx_channel = NULL_PTR;
	.d2line		1843
	lis		r3,(Dcm_DslInstance+28)@ha
	stw		r6,(Dcm_DslInstance+28)@l(r3)
#    Dcm_DslInstance.p_active_rx_channel = NULL_PTR;
	.d2line		1844
	lis		r3,(Dcm_DslInstance+36)@ha
	stw		r6,(Dcm_DslInstance+36)@l(r3)
#    Dcm_DslInstance.p_active_tx_channel = NULL_PTR;
	.d2line		1845
	lis		r3,(Dcm_DslInstance+32)@ha
	stw		r6,(Dcm_DslInstance+32)@l(r3)
#    Dcm_DslInstance.p_preempting_rx_channel = NULL_PTR;
	.d2line		1846
	lis		r3,(Dcm_DslInstance+40)@ha
	stw		r6,(Dcm_DslInstance+40)@l(r3)
# 
#    /* Initialise the debug information*/
#    Dcm_DbgSetSession(DCM_DEFAULT_SESSION);
	.d2line		1849
	lis		r3,Dcm_DbgCurrentSession@ha
	e_add16i		r3,r3,Dcm_DbgCurrentSession@l
	stb		r4,0(r3)
#    Dcm_DbgSetSecLevel(0);
	.d2line		1850
	lis		r3,Dcm_DbgCurrentSecurityLevel@ha
	e_add16i		r3,r3,Dcm_DbgCurrentSecurityLevel@l
	stb		r6,0(r3)
#    Dcm_DbgSetProtocol(DCM_NO_ACTIVE_PROTOCOL);
	.d2line		1851
	diab.li		r0,12
	lis		r3,Dcm_DbgCurrentProtocol@ha
	e_add16i		r3,r3,Dcm_DbgCurrentProtocol@l
	stb		r0,0(r3)
#    Dcm_DbgSetActivity(0);
	.d2line		1852
	lis		r3,Dcm_DbgCurrentDiagnosticActivity@ha
	e_add16i		r3,r3,Dcm_DbgCurrentDiagnosticActivity@l
	stb		r6,0(r3)
# 
#    /* Release all receive buffers */
#    for (u16Counter = (uint16)0U; u16Counter < ConfigPtr->num_rx_channels; u16Counter++)
.L760:
	.d2line		1855
.Llo441:
	rlwinm		r0,r6,0,16,31		# u16Counter=r6
	lhz		r3,6(r30)		# pChannel=r3 ConfigPtr=r30
.Llo454:
	se_cmp		r0,r3		# pChannel=r3
	bc		0,0,.L762	# ge
	.section	.text_vle
.L1694:
#    {
#       P2CONST(Dcm_Cfg_RxChannelType, AUTOMATIC, DCM_APPL_DATA) pChannel = &ConfigPtr->p_rx_channels[u16Counter];
	.d2line		1857
.Llo455:
	lwz		r3,8(r30)		# pChannel=r3 ConfigPtr=r30
.Llo456:
	rlwinm		r0,r6,0,16,31		# u16Counter=r6
	e_mulli		r0,r0,44
	se_add		r0,r3		# pChannel=r3
	mr		r3,r0		# pChannel=r3 pChannel=r0
#       P2VAR(Dcm_Cfg_BufferStatusType, AUTOMATIC, DCM_APPL_DATA) pBufferStatus = pChannel->p_buffer->p_status;
	.d2line		1858
	lwz		r4,12(r3)		# pBufferStatus=r4 pChannel=r3
.Llo458:
	lwz		r4,8(r4)		# pBufferStatus=r4 pBufferStatus=r4
	mr		r4,r4		# pBufferStatus=r4 pBufferStatus=r4
# 
#       *pChannel->p_state = DCM_CHANNEL_IDLE;
	.d2line		1860
	diab.li		r0,0
	lwz		r5,32(r3)		# pChannel=r3
	stw		r0,0(r5)
#       *pChannel->p_commMode = DCM_NO_COMM_MODE;
	.d2line		1861
	lwz		r5,36(r3)		# pChannel=r3
	stw		r0,0(r5)
# 
#       pBufferStatus->state = DCM_BUF_EMPTY;
	.d2line		1863
	stw		r0,4(r4)		# pBufferStatus=r4
#       pBufferStatus->buf_pos = (PduLengthType)0U;
	.d2line		1864
	sth		r0,8(r4)		# pBufferStatus=r4
# 
#       *pChannel->p_txchannel->p_busy = FALSE;
	.d2line		1866
	lwz		r3,24(r3)		# pChannel=r3 pChannel=r3
	lwz		r3,16(r3)		# pChannel=r3 pChannel=r3
	stb		r0,0(r3)		# pChannel=r3
	.section	.text_vle
.L1695:
#    }
	.d2line		1867
.Llo457:
	diab.addi		r0,r6,1		# u16Counter=r6
	se_addi		r6,1		# u16Counter=r6 u16Counter=r6
	b		.L760
.L762:
# 
#    /* 
#     * Mark all Rx channel pointers assigned to Tx channels as unused.
#     * Start with main Tx and finish with the ROE Tx.
#     */
#    for (u16Counter = (uint16)0U; u16Counter < (uint16)ConfigPtr->first_periodic_tx_confirmation_id_value; u16Counter++)
	.d2line		1873
	diab.li		r3,0		# u16Counter=r3
.L763:
.Llo444:
	rlwinm		r4,r3,0,16,31		# pBufferStatus=r4 u16Counter=r3
.Llo445:
	lhz		r0,0(r30)		# ConfigPtr=r30
	se_cmp		r4,r0		# pBufferStatus=r4
	bc		0,0,.L765	# ge
#    {
#       *(ConfigPtr->p_tx_channels[u16Counter].pp_rx_channel) = NULL_PTR;
	.d2line		1875
.Llo459:
	diab.li		r0,0
	lwz		r5,12(r30)		# ConfigPtr=r30
	rlwinm		r4,r3,0,16,31		# pBufferStatus=r4 u16Counter=r3
.Llo460:
	e_mulli		r4,r4,20		# pBufferStatus=r4 pBufferStatus=r4
	se_add		r4,r5		# pBufferStatus=r4 pBufferStatus=r4
	lwz		r4,12(r4)		# pBufferStatus=r4 pBufferStatus=r4
	stw		r0,0(r4)		# pBufferStatus=r4
#    }
	.d2line		1876
	diab.addi		r4,r3,1		# pBufferStatus=r4 u16Counter=r3
.Llo461:
	se_addi		r3,1		# u16Counter=r3 u16Counter=r3
	b		.L763
.L765:
#    for (u16Counter = (uint16)ConfigPtr->first_roe_tx_confirmation_id_value; u16Counter < (uint16)ConfigPtr->first_invalid_tx_confirmation_id_value; u16Counter++)
	.d2line		1877
.Llo446:
	lhz		r3,2(r30)		# u16Counter=r3 ConfigPtr=r30
.Llo447:
	mr		r3,r3		# u16Counter=r3 u16Counter=r3
.L766:
	rlwinm		r0,r3,0,16,31		# u16Counter=r3
	lhz		r4,4(r30)		# pBufferStatus=r4 ConfigPtr=r30
.Llo462:
	se_cmp		r0,r4		# pBufferStatus=r4
	bc		0,0,.L768	# ge
	.section	.text_vle
.L1702:
#    {
#       /* 
#        * Calculate TxChannel index by removing the Periodic Tx channels that are handled separately 
#        * u16Counter will always be equal or greater than first_roe_tx_confirmation_id_value and thus safe to cast.
#        */
#       const uint16 counterWithOffset = (uint16)((PduIdType)((PduIdType)u16Counter - ConfigPtr->first_roe_tx_confirmation_id_value) + ConfigPtr->first_periodic_tx_confirmation_id_value);
	.d2line		1883
.Llo463:
	lhz		r4,2(r30)		# counterWithOffset=r4 ConfigPtr=r30
.Llo470:
	subf		r4,r4,r3		# counterWithOffset=r4 counterWithOffset=r4 u16Counter=r3
	lhz		r0,0(r30)		# ConfigPtr=r30
	se_add		r0,r4		# counterWithOffset=r4
	mr		r4,r0		# counterWithOffset=r4 counterWithOffset=r0
#       *(ConfigPtr->p_tx_channels[counterWithOffset].pp_rx_channel) = NULL_PTR;
	.d2line		1884
.Llo471:
	diab.li		r0,0
	lwz		r5,12(r30)		# ConfigPtr=r30
.Llo472:
	rlwinm		r4,r4,0,16,31		# counterWithOffset=r4 counterWithOffset=r4
	e_mulli		r4,r4,20		# counterWithOffset=r4 counterWithOffset=r4
	se_add		r4,r5		# counterWithOffset=r4 counterWithOffset=r4
	lwz		r4,12(r4)		# counterWithOffset=r4 counterWithOffset=r4
	stw		r0,0(r4)		# counterWithOffset=r4
	.section	.text_vle
.L1703:
#    }
	.d2line		1885
.Llo473:
	diab.addi		r0,r3,1		# u16Counter=r3
	se_addi		r3,1		# u16Counter=r3 u16Counter=r3
	b		.L766
.L768:
# 
#    /* Mark all possible control DIDs as inactive */
#    for (u16Counter = (uint16)0U; u16Counter < Dcm_LCfg.num_dids; u16Counter++)
	.d2line		1888
	diab.li		r31,0		# u16Counter=r31
.L769:
.Llo442:
	rlwinm		r0,r31,0,16,31		# u16Counter=r31
.Llo448:
	lis		r3,(Dcm_LCfg+64)@ha		# u16Counter=r3
	lhz		r3,(Dcm_LCfg+64)@l(r3)		# u16Counter=r3 u16Counter=r3
	se_cmp		r0,r3		# u16Counter=r3
	bc		0,0,.L771	# ge
	.section	.text_vle
.L1708:
#    {
#       P2CONST(Dcm_Cfg_DidControlType, AUTOMATIC, DCM_APPL_DATA) pDidCtrl = Dcm_LCfg.dids[u16Counter].pDidControl;
	.d2line		1890
	rlwinm		r0,r31,0,16,31		# u16Counter=r31
	lis		r3,(Dcm_LCfg+68)@ha		# u16Counter=r3
	lwz		r3,(Dcm_LCfg+68)@l(r3)		# u16Counter=r3 u16Counter=r3
	rlwinm		r4,r0,5,0,26		# pBufferStatus=r4
.Llo464:
	se_slwi		r0,2
	subf		r0,r0,r4		# pBufferStatus=r4
	se_add		r3,r0		# u16Counter=r3 u16Counter=r3
	lwz		r0,16(r3)		# u16Counter=r3
	.d2line		1892
	mr.		r3,r0		# pDidCtrl=?a11 pDidCtrl=?a16
# 
#       if (NULL_PTR != pDidCtrl)
.Llo474:
	bc		1,2,.L772	# eq
#       {
#          Dcm_Memset(pDidCtrl->p_under_control, (uint8)0x00U, GetSizeOfUnderControl(pDidCtrl->control_enable_mask_record_size));
	.d2line		1894
.Llo465:
	lhz		r0,0(r3)		# pDidCtrl=r3
	se_cmpi		r0,0
	bc		0,2,.L777	# ne
	lhz		r5,0(r3)		# pDidCtrl=r3
	se_addi		r5,1
	rlwinm		r5,r5,0,16,31
	b		.L778
.L777:
	lhz		r5,0(r3)		# pDidCtrl=r3
.L778:
	lwz		r3,4(r3)		# pDidCtrl=r3 pDidCtrl=r3
.Llo475:
	diab.li		r4,0		# pBufferStatus=r4
	bl		Dcm_Memset
.L772:
	.section	.text_vle
.L1709:
#       }
#    }
	.d2line		1896
	diab.addi		r0,r31,1		# u16Counter=r31
	se_addi		r31,1		# u16Counter=r31 u16Counter=r31
	b		.L769
.L771:
# 
#    /* Mark all possible control routines as inactive */
#    for (u16Counter = (uint16)0U; u16Counter < Dcm_LCfg.num_routine_ctrl; u16Counter++)
	.d2line		1899
	diab.li		r3,0		# u16Counter=r3
.L773:
.Llo449:
	rlwinm		r0,r3,0,16,31		# u16Counter=r3
.Llo450:
	lis		r4,(Dcm_LCfg+120)@ha		# pBufferStatus=r4
.Llo466:
	lhz		r4,(Dcm_LCfg+120)@l(r4)		# pBufferStatus=r4 pBufferStatus=r4
	se_cmp		r0,r4		# pBufferStatus=r4
	bc		0,0,.L775	# ge
#    {
#       Dcm_LCfg.p_routine_state[u16Counter] = DCM_ROUTINE_STATE_INIT;
	.d2line		1901
.Llo467:
	diab.li		r5,0
	lis		r4,(Dcm_LCfg+164)@ha		# pBufferStatus=r4
.Llo468:
	lwz		r4,(Dcm_LCfg+164)@l(r4)		# pBufferStatus=r4 pBufferStatus=r4
	rlwinm		r0,r3,2,14,29		# u16Counter=r3
	stwx		r5,r4,r0		# pBufferStatus=r4
#    }
	.d2line		1902
	diab.addi		r0,r3,1		# u16Counter=r3
	se_addi		r3,1		# u16Counter=r3 u16Counter=r3
	b		.L773
.L775:
# 
#    Dcm_DslInstance.active_periodic_tx = (uint8)0U;
	.d2line		1904
.Llo451:
	diab.li		r4,0		# pBufferStatus=r4
.Llo469:
	lis		r3,(Dcm_DslInstance+44)@ha		# u16Counter=r3
.Llo452:
	stb		r4,(Dcm_DslInstance+44)@l(r3)		# u16Counter=r3 pBufferStatus=r4
#    Dcm_DslInstance.p_active_periodic_response = NULL_PTR;
	.d2line		1905
	lis		r3,(Dcm_DslInstance+48)@ha		# u16Counter=r3
	stw		r4,(Dcm_DslInstance+48)@l(r3)		# u16Counter=r3 pBufferStatus=r4
# 
#    Dcm_DslInstance.jumpFromBootloader.state = DSL_JFB_INIT;
	.d2line		1907
	lis		r3,(Dcm_DslInstance+52)@ha		# u16Counter=r3
	stw		r4,(Dcm_DslInstance+52)@l(r3)		# u16Counter=r3 pBufferStatus=r4
# 
#    SetResponsePendingStatus(FALSE);
	.d2line		1909
	lis		r3,dslResponsePendingHasBeenSent@ha		# u16Counter=r3
	e_add16i		r3,r3,dslResponsePendingHasBeenSent@l		# u16Counter=r3 u16Counter=r3
	stb		r4,0(r3)		# u16Counter=r3 pBufferStatus=r4
# }
	.d2line		1910
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo453:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1685:
	.type		Dcm_DslInit,@function
	.size		Dcm_DslInit,.-Dcm_DslInit
# Number of nodes = 412

# Allocations for Dcm_DslInit
#	?a4		ConfigPtr
#	?a5		$$59
#	?a6		$$44
#	?a7		u16Counter
#	?a8		pChannel
#	?a9		pBufferStatus
#	?a10		counterWithOffset
#	?a11		pDidCtrl
# static FUNC(void, DCM_CODE) HandlePossibleJumpFromBootloader(void)
	.align		1
	.section	.text_vle
        .d2line         3183,29
#$$ld
.L1716:

#$$bf	HandlePossibleJumpFromBootloader,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
HandlePossibleJumpFromBootloader:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stw		r31,44(r1)		# offset r1+44  0x2c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Dcm_EcuStartModeType       retVal;
#    Dcm_ProgConditionsType     progCond;
#    uint16                     i;
#    Dcm_Cfg_SessionPointerType pSession;
# 
#    if (DSL_JFB_FINISHED == Dcm_DslInstance.jumpFromBootloader.state)
	.d2line		3190
	lis		r3,(Dcm_DslInstance+52)@ha
	lwz		r0,(Dcm_DslInstance+52)@l(r3)
	se_cmpi		r0,2
	bc		1,2,.L1111	# eq
#    {
#       /*
#        * Not interesting any longer, just skip.
#        */
#    }
#    else if (DSL_JFB_INIT == Dcm_DslInstance.jumpFromBootloader.state)
	.d2line		3196
	lis		r3,(Dcm_DslInstance+52)@ha
	lwz		r0,(Dcm_DslInstance+52)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L1114	# ne
#    {
#       /*
#        * First call, get the programming conditions to check
#        * if coming from bootloader or not.
#        */
#       retVal = Dcm_GetProgConditions(&progCond);
	.d2line		3202
	diab.addi		r3,r1,8		# retVal=r3
	bl		Dcm_GetProgConditions
.Llo476:
	mr		r3,r3		# retVal=r3 retVal=r3
# 
#       if (DCM_COLD_START == retVal)
	.d2line		3204
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L1115	# ne
#       {
#          /*
#           * Normal start, jump to finished.
#           */
#          Dcm_DslInstance.jumpFromBootloader.state = DSL_JFB_FINISHED;
	.d2line		3209
.Llo477:
	diab.li		r0,2
	lis		r3,(Dcm_DslInstance+52)@ha		# retVal=r3
.Llo478:
	stw		r0,(Dcm_DslInstance+52)@l(r3)		# retVal=r3
	b		.L1111
.L1115:
#       }
#       else
#       {
#          /*
#           * Coming from bootloader (DCM_WARM_START)
#           * First try to find the RxChannel used for jumping to bootloader
#           * Store the TxChannel to be used for transmit and SID/subfunc.
#           * Finally request full communication by the ComM
#           */
#          Dcm_DslInstance.jumpFromBootloader.p_rx_channel = NULL_PTR;
	.d2line		3219
.Llo479:
	diab.li		r4,0
.Llo500:
	lis		r3,(Dcm_DslInstance+56)@ha		# retVal=r3
.Llo480:
	stw		r4,(Dcm_DslInstance+56)@l(r3)		# retVal=r3
#          for (i = (uint16)0U; (i < Dcm_pPbCfg->num_rx_channels) && (NULL_PTR == Dcm_DslInstance.jumpFromBootloader.p_rx_channel); i++)
.L1117:
	.d2line		3220
.Llo481:
	rlwinm		r0,r4,0,16,31		# i=r4
	lis		r3,Dcm_pPbCfg@ha		# retVal=r3
.Llo482:
	lwz		r3,Dcm_pPbCfg@l(r3)		# retVal=r3 retVal=r3
	lhz		r3,6(r3)		# retVal=r3 retVal=r3
	se_cmp		r0,r3		# retVal=r3
	bc		0,0,.L1119	# ge
.Llo483:
	lis		r3,(Dcm_DslInstance+56)@ha		# retVal=r3
.Llo484:
	lwz		r0,(Dcm_DslInstance+56)@l(r3)		# retVal=r3
	se_cmpi		r0,0
	bc		0,2,.L1119	# ne
#          {
#             if (  (Dcm_pPbCfg->p_rx_channels[i].tester_source_addr == progCond.TesterSourceAddr) &&
	.d2line		3222
.Llo485:
	lis		r3,Dcm_pPbCfg@ha		# retVal=r3
.Llo486:
	lwz		r3,Dcm_pPbCfg@l(r3)		# retVal=r3 retVal=r3
	lwz		r3,8(r3)		# retVal=r3 retVal=r3
	rlwinm		r0,r4,0,16,31		# i=r4
	e_mulli		r0,r0,44
	se_add		r3,r0		# retVal=r3 retVal=r3
	lhz		r0,4(r3)		# retVal=r3
	lhz		r3,10(r1)		# retVal=r3
	se_cmp		r0,r3		# retVal=r3
	bc		0,2,.L1120	# ne
.Llo487:
	lis		r3,Dcm_pPbCfg@ha		# retVal=r3
.Llo488:
	lwz		r3,Dcm_pPbCfg@l(r3)		# retVal=r3 retVal=r3
	lwz		r3,8(r3)		# retVal=r3 retVal=r3
	rlwinm		r0,r4,0,16,31		# i=r4
	e_mulli		r0,r0,44
	se_add		r3,r0		# retVal=r3 retVal=r3
	lwz		r3,20(r3)		# retVal=r3 retVal=r3
	lbz		r3,0(r3)		# retVal=r3 retVal=r3
	lbz		r0,8(r1)
	se_cmp		r3,r0		# retVal=r3
	bc		0,2,.L1120	# ne
#                   (Dcm_pPbCfg->p_rx_channels[i].p_protocol->identifier == progCond.ProtocolId) )
#             {
#                /*
#                 * Found the RxChannel used for jumping to bootloader. Store it for future use.
#                 */
#                Dcm_DslInstance.jumpFromBootloader.p_rx_channel = &Dcm_pPbCfg->p_rx_channels[i];
	.d2line		3228
.Llo489:
	lis		r3,Dcm_pPbCfg@ha		# retVal=r3
.Llo490:
	lwz		r3,Dcm_pPbCfg@l(r3)		# retVal=r3 retVal=r3
	lwz		r3,8(r3)		# retVal=r3 retVal=r3
	rlwinm		r0,r4,0,16,31		# i=r4
	e_mulli		r0,r0,44
	se_add		r0,r3		# retVal=r3
	lis		r3,(Dcm_DslInstance+56)@ha		# retVal=r3
	stw		r0,(Dcm_DslInstance+56)@l(r3)		# retVal=r3
.L1120:
#             }
#          }
	.d2line		3230
.Llo491:
	diab.addi		r0,r4,1		# i=r4
	se_addi		r4,1		# i=r4 i=r4
	b		.L1117
.L1119:
# 
#          if (NULL_PTR != Dcm_DslInstance.jumpFromBootloader.p_rx_channel)
	.d2line		3232
	lis		r3,(Dcm_DslInstance+56)@ha		# retVal=r3
.Llo492:
	lwz		r0,(Dcm_DslInstance+56)@l(r3)		# retVal=r3
	se_cmpi		r0,0
	bc		1,2,.L1121	# eq
#          {
#             /*
#              * Found an valid RxChannel. Notify ComM and wait for it to request full communication.
#              */
#             Dcm_DslInstance.jumpFromBootloader.sub_function = progCond.SubFncId;
	.d2line		3237
.Llo493:
	lbz		r0,13(r1)
	lis		r3,(Dcm_DslInstance+60)@ha		# retVal=r3
.Llo494:
	stb		r0,(Dcm_DslInstance+60)@l(r3)		# retVal=r3
#             Dcm_DslInstance.jumpFromBootloader.state        = DSL_JFB_W4_COMM;
	.d2line		3238
	diab.li		r0,1
	lis		r3,(Dcm_DslInstance+52)@ha		# retVal=r3
	stw		r0,(Dcm_DslInstance+52)@l(r3)		# retVal=r3
#             ActivateDiagnosticCommunication(Dcm_DslInstance.jumpFromBootloader.p_rx_channel->networkId);
	.d2line		3239
	lis		r3,(Dcm_DslInstance+56)@ha		# retVal=r3
	lwz		r3,(Dcm_DslInstance+56)@l(r3)		# retVal=r3 retVal=r3
	lbz		r3,2(r3)		# retVal=r3 retVal=r3
.Llo495:
	bl		ComM_DCM_ActiveDiagnostic
	diab.li		r0,1
	lis		r3,Dcm_DbgCurrentDiagnosticActivity@ha		# retVal=r3
.Llo496:
	e_add16i		r3,r3,Dcm_DbgCurrentDiagnosticActivity@l		# retVal=r3 retVal=r3
	stb		r0,0(r3)		# retVal=r3
	b		.L1111
.L1121:
#          }
#          else
#          {
#             /*
#              * Invalid data from application. Did not find any RxChannel so just move
#              * to finished and never send any response.
#              */
#             Dcm_DslInstance.jumpFromBootloader.state = DSL_JFB_FINISHED;
	.d2line		3247
.Llo497:
	diab.li		r0,2
	lis		r3,(Dcm_DslInstance+52)@ha		# retVal=r3
.Llo498:
	stw		r0,(Dcm_DslInstance+52)@l(r3)		# retVal=r3
	b		.L1111
.L1114:
#          }
#       }
#    }
#    /*
#     * Dcm_DslInstance.jumpFromBootloader.state == DSL_JFB_W4_COMM
#     * ComM has requested full communication of the DCM. Time to send a positive response
#     */
#    else if (DCM_FULL_COMM_MODE == *Dcm_DslInstance.jumpFromBootloader.p_rx_channel->p_commMode)
	.d2line		3255
.Llo499:
	lis		r3,(Dcm_DslInstance+56)@ha
	lwz		r3,(Dcm_DslInstance+56)@l(r3)
	lwz		r3,36(r3)
	lwz		r0,0(r3)
	se_cmpi		r0,2
	bc		0,2,.L1111	# ne
#    {
#       /*
#        * Try to find the session stored before jumping to bootloader
#        */
#       pSession = Dcm_DspGetSessionConfiguration(GetSubFunctionId(Dcm_DslInstance.jumpFromBootloader.sub_function));
	.d2line		3260
	lis		r3,(Dcm_DslInstance+60)@ha
	lbz		r3,(Dcm_DslInstance+60)@l(r3)
	.diab.bclri		r3,24
	bl		Dcm_DspGetSessionConfiguration
	.d2line		3261
	mr.		r31,r3		# pSession=?a7 pSession=r3
#       if (NULL_PTR != pSession)
.Llo501:
	bc		1,2,.L1131	# eq
#       {
#          /*
#           * Even if a response shall not be sent is there de facto an active Rx and Tx channel,
#           * i.e. the channels used when the original request was received.
#           */
#          Dcm_DslInstance.p_active_rx_channel = Dcm_DslInstance.jumpFromBootloader.p_rx_channel; /* To avoid error when confirmation is received */
	.d2line		3267
	lis		r5,(Dcm_DslInstance+56)@ha
	lwz		r4,(Dcm_DslInstance+56)@l(r5)
	lis		r3,(Dcm_DslInstance+36)@ha
	stw		r4,(Dcm_DslInstance+36)@l(r3)
#          Dcm_DslInstance.p_active_protocol = Dcm_DslInstance.p_active_rx_channel->p_protocol;
	.d2line		3268
	lwz		r0,20(r4)
	lis		r3,(Dcm_DslInstance+8)@ha
	stw		r0,(Dcm_DslInstance+8)@l(r3)
#          Dcm_DslInstance.p_active_tx_channel = Dcm_DslInstance.jumpFromBootloader.p_rx_channel->p_txchannel;
	.d2line		3269
	lwz		r3,(Dcm_DslInstance+56)@l(r5)
	lwz		r0,24(r3)
	lis		r3,(Dcm_DslInstance+32)@ha
	stw		r0,(Dcm_DslInstance+32)@l(r3)
# 
#          /*
#           * Send the response only if the suppress positive response bit was NOT set
#           */
#          if (FALSE == IsPositiveResponseSuppressed(Dcm_DslInstance.jumpFromBootloader.sub_function))
	.d2line		3274
	lis		r3,(Dcm_DslInstance+60)@ha
	lbz		r0,(Dcm_DslInstance+60)@l(r3)
	se_btsti		r0,24
	diab.li		r0,1
	isel		r0,r3,r0,2
.L1133:
	isel		r0,0,r0,2
.L1134:
	se_cmpi		r0,0
	bc		0,2,.L1127	# ne
#          {
#             /*
#              * Set the active Tx channel and add the response.
#              * Currently only SID 0x10 (DiagnosticSessionControl) is supported
#              * so build a positive response with the current timings according to the session
#              */
#             Dcm_DslInstance.p_active_tx_channel->p_buffer->ptr[0] = 0x10U | 0x40U;
	.d2line		3281
	diab.li		r0,80
	lis		r3,(Dcm_DslInstance+32)@ha
	lwz		r4,(Dcm_DslInstance+32)@l(r3)
	lwz		r4,4(r4)
	lwz		r4,4(r4)
	stb		r0,0(r4)
#             Dcm_DslInstance.p_active_tx_channel->p_buffer->ptr[1] = Dcm_DslInstance.jumpFromBootloader.sub_function;
	.d2line		3282
	lis		r4,(Dcm_DslInstance+60)@ha
	lbz		r0,(Dcm_DslInstance+60)@l(r4)
	lwz		r4,(Dcm_DslInstance+32)@l(r3)
	lwz		r4,4(r4)
	lwz		r4,4(r4)
	stb		r0,1(r4)
# 
#             /*
#              * Get the default session timing which includes the S3.
#              * Update with the timings from the stored session
#              * Need to check if a valid session was found if the session level was
#              * stored incorrectly. If invalid (by some unknown reason), send a negative response.
#              */
# 
#             /*
#              * Add P2ServerMax which shall have the resolution 1ms according to ISO15765-3
#              * Already stored correctly by the SCG
#              */
#             Dcm_DslInstance.p_active_tx_channel->p_buffer->ptr[2] = DcmHiByte(pSession->client_p2_server_max);
	.d2line		3295
	lhz		r0,6(r31)		# pSession=r31
	rlwinm		r0,r0,24,24,31
	lwz		r4,(Dcm_DslInstance+32)@l(r3)
	lwz		r4,4(r4)
	lwz		r4,4(r4)
	stb		r0,2(r4)
#             Dcm_DslInstance.p_active_tx_channel->p_buffer->ptr[3] = DcmLoByte(pSession->client_p2_server_max);
	.d2line		3296
	lhz		r0,6(r31)		# pSession=r31
	lwz		r4,(Dcm_DslInstance+32)@l(r3)
	lwz		r4,4(r4)
	lwz		r4,4(r4)
	stb		r0,3(r4)
# 
#             /*
#              * Add P2StarServerMax which shall have the resolution 10ms according to ISO15765-3
#              * Already stored correctly by the SCG
#              */
#             Dcm_DslInstance.p_active_tx_channel->p_buffer->ptr[4] = DcmHiByte(pSession->client_p2_star_server_max);
	.d2line		3302
	lhz		r0,8(r31)		# pSession=r31
	rlwinm		r0,r0,24,24,31
	lwz		r4,(Dcm_DslInstance+32)@l(r3)
	lwz		r4,4(r4)
	lwz		r4,4(r4)
	stb		r0,4(r4)
#             Dcm_DslInstance.p_active_tx_channel->p_buffer->ptr[5] = DcmLoByte(pSession->client_p2_star_server_max);
	.d2line		3303
	lhz		r0,8(r31)		# pSession=r31
	lwz		r4,(Dcm_DslInstance+32)@l(r3)
	lwz		r4,4(r4)
	lwz		r4,4(r4)
	stb		r0,5(r4)
# 
#             Dcm_DslInstance.p_active_tx_channel->p_buffer->pdu_info->SduLength = 6; /* Total length of positive response */
	.d2line		3305
	diab.li		r0,6
	lwz		r4,(Dcm_DslInstance+32)@l(r3)
	lwz		r4,4(r4)
	lwz		r4,12(r4)
	sth		r0,4(r4)
# 
#             /*
#              * Try to trigger a transmit
#              */
#             if (E_OK == TransmitResponse(Dcm_DslInstance.p_active_tx_channel, Dcm_DslInstance.p_active_tx_channel->p_buffer))
	.d2line		3310
	lwz		r3,(Dcm_DslInstance+32)@l(r3)
	lwz		r4,4(r3)
	bl		TransmitResponse
	e_andi.		r3,r3,255
	bc		0,2,.L1131	# ne
#             {
#                /*
#                 * It was sent. Ignore waiting for confirm, change the session right away
#                 */
#                Dcm_SetSesCtrlType(pSession->session_level);
	.d2line		3315
	lbz		r3,0(r31)		# pSession=r31
	bl		Dcm_SetSesCtrlType
# 
#                /*
#                 * Has to change state on DSL, otherwise will the Tx be dropped when data shall be copied.
#                 */
#                Dcm_DslInstance.dsl_state = DSL_WAIT_CONF;
	.d2line		3320
	diab.li		r0,5
	lis		r3,Dcm_DslInstance@ha
	e_add16i		r3,r3,Dcm_DslInstance@l
	stw		r0,0(r3)
	b		.L1131
.L1127:
#             }
#             else
#             {
#                /*
#                 * Failed to trigger transmit, but nothing to do.
#                 */
#             }
#          }
#          else
#          {
#             /*
#              * Shall not be sent, just change session.
#              */
#             Dcm_SetSesCtrlType(pSession->session_level);
	.d2line		3334
	lbz		r3,0(r31)		# pSession=r31
	bl		Dcm_SetSesCtrlType
.L1131:
#          }
#       }
#       else
#       {
#          /*
#           * Invalid data from application. Did not find any session so just move
#           * to finished and never send any response.
#           */
#       }
# 
#       /*
#        * Now it's finished from the "jump from bootloader" point of view
#        */
#       Dcm_DslInstance.jumpFromBootloader.state = DSL_JFB_FINISHED;
	.d2line		3348
	diab.li		r0,2
	lis		r3,(Dcm_DslInstance+52)@ha
	stw		r0,(Dcm_DslInstance+52)@l(r3)
.L1111:
#    }
#    else
#    {
#       /*
#        * ComM has not yet enabled full communication
#        */
#    }
# }
	.d2line		3356
	.d2epilogue_begin
.Llo502:
	lwz		r31,44(r1)		# offset r1+44  0x2c
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
.L1717:
	.type		HandlePossibleJumpFromBootloader,@function
	.size		HandlePossibleJumpFromBootloader,.-HandlePossibleJumpFromBootloader
# Number of nodes = 440

# Allocations for HandlePossibleJumpFromBootloader
#	?a4		$$55
#	?a5		retVal
#	SP,8		progCond
#	?a6		i
#	?a7		pSession
# static FUNC(void, DCM_CODE) TriggerResponsePending(void)
	.align		1
	.section	.text_vle
        .d2line         3616,29
#$$ld
.L1731:

#$$bf	TriggerResponsePending,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
TriggerResponsePending:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    TimerStop(Dcm_DslInstance.response_pending_timer);
	.d2line		3618
	bl		SchM_Enter_Dcm_EaTimers
	diab.li		r0,65535
	lis		r3,(Dcm_DslInstance+16)@ha
	sth		r0,(Dcm_DslInstance+16)@l(r3)
	bl		SchM_Exit_Dcm_EaTimers
#    Dcm_DslInstance.response_pending_timer_elapsed = TRUE;
	.d2line		3619
	diab.li		r0,1
	lis		r3,(Dcm_DslInstance+19)@ha
	stb		r0,(Dcm_DslInstance+19)@l(r3)
#    SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine();
	.d2line		3620
	bl		SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine
# }
	.d2line		3621
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
.L1732:
	.type		TriggerResponsePending,@function
	.size		TriggerResponsePending,.-TriggerResponsePending
# Number of nodes = 20

# Allocations for TriggerResponsePending
# FUNC(void, DCM_CODE) Dcm_DslHandleTimers(void)
	.align		2
	.section	.text_vle
        .d2line         1915,22
#$$ld
.L1736:

#$$bf	Dcm_DslHandleTimers,interprocedural,rasave,nostackparams
	.globl		Dcm_DslHandleTimers
	.d2_cfa_start __cie
Dcm_DslHandleTimers:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    /*
#    * Shall be done on first call to Dcm_MainFunction
#    */
#    HandlePossibleJumpFromBootloader();
	.d2line		1920
	bl		HandlePossibleJumpFromBootloader
# 
#    TimerProcess(Dcm_DslInstance.s3_server_timer);
	.d2line		1922
	bl		SchM_Enter_Dcm_EaTimers
	lis		r3,(Dcm_DslInstance+14)@ha
	lhz		r0,(Dcm_DslInstance+14)@l(r3)
	e_cmphl16i	r0,65535
	diab.li		r3,1
	isel		r3,r3,r0,2
.L801:
	diab.li		r0,0
	isel		r0,r3,r0,2
.L802:
	se_cmpi		r0,0
	bc		0,2,.L794	# ne
	lis		r3,(Dcm_DslInstance+14)@ha
	lhz		r0,(Dcm_DslInstance+14)@l(r3)
	e_cmphl16i	r0,0
	diab.li		r3,1
	isel		r3,r3,r0,2
.L803:
	diab.li		r0,0
	isel		r0,r3,r0,2
.L804:
	se_cmpi		r0,0
	bc		0,2,.L794	# ne
	lis		r3,(Dcm_DslInstance+14)@ha
	lhz		r0,(Dcm_DslInstance+14)@l(r3)
	diab.li		r4,65535
	se_add		r0,r4
	sth		r0,(Dcm_DslInstance+14)@l(r3)
.L794:
	bl		SchM_Exit_Dcm_EaTimers
#    TimerProcess(Dcm_DslInstance.response_pending_timer);
	.d2line		1923
	bl		SchM_Enter_Dcm_EaTimers
	lis		r3,(Dcm_DslInstance+16)@ha
	lhz		r0,(Dcm_DslInstance+16)@l(r3)
	e_cmphl16i	r0,65535
	diab.li		r3,1
	isel		r3,r3,r0,2
.L805:
	diab.li		r0,0
	isel		r0,r3,r0,2
.L806:
	se_cmpi		r0,0
	bc		0,2,.L796	# ne
	lis		r3,(Dcm_DslInstance+16)@ha
	lhz		r0,(Dcm_DslInstance+16)@l(r3)
	e_cmphl16i	r0,0
	diab.li		r3,1
	isel		r3,r3,r0,2
.L807:
	diab.li		r0,0
	isel		r0,r3,r0,2
.L808:
	se_cmpi		r0,0
	bc		0,2,.L796	# ne
	lis		r3,(Dcm_DslInstance+16)@ha
	lhz		r0,(Dcm_DslInstance+16)@l(r3)
	diab.li		r4,65535
	se_add		r0,r4
	sth		r0,(Dcm_DslInstance+16)@l(r3)
.L796:
	bl		SchM_Exit_Dcm_EaTimers
# 
#    /* Check for S3Server timeout */
#    if ((DSL_IDLE == Dcm_DslInstance.dsl_state) && (TRUE == TimerElapsed(Dcm_DslInstance.s3_server_timer)))
	.d2line		1926
	lis		r3,Dcm_DslInstance@ha
	lwz		r0,Dcm_DslInstance@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L797	# ne
	lis		r3,(Dcm_DslInstance+14)@ha
	lhz		r0,(Dcm_DslInstance+14)@l(r3)
	e_cmphl16i	r0,0
	diab.li		r3,1
	isel		r3,r3,r0,2
.L809:
	diab.li		r0,0
	isel		r0,r3,r0,2
.L810:
	se_cmpi		r0,1
	bc		0,2,.L797	# ne
#    {
#       TimerStop(Dcm_DslInstance.s3_server_timer);
	.d2line		1928
	bl		SchM_Enter_Dcm_EaTimers
	diab.li		r0,65535
	lis		r3,(Dcm_DslInstance+14)@ha
	sth		r0,(Dcm_DslInstance+14)@l(r3)
	bl		SchM_Exit_Dcm_EaTimers
#       if (DCM_DEFAULT_SESSION != Dcm_DslInstance.active_session)
	.d2line		1929
	lis		r3,(Dcm_DslInstance+13)@ha
	lbz		r0,(Dcm_DslInstance+13)@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L797	# eq
#       {
#          Dcm_SetSesCtrlType(DCM_DEFAULT_SESSION);
	.d2line		1931
	diab.li		r3,1
	bl		Dcm_SetSesCtrlType
# 
#          SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine();
	.d2line		1933
	bl		SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine
.L797:
#       }
#    }
# 
#    if (TimerElapsed(Dcm_DslInstance.response_pending_timer))
	.d2line		1937
	lis		r3,(Dcm_DslInstance+16)@ha
	lhz		r0,(Dcm_DslInstance+16)@l(r3)
	e_cmphl16i	r0,0
	diab.li		r3,1
	isel		r3,r3,r0,2
.L811:
	diab.li		r0,0
	isel		r0,r3,r0,2
.L812:
	se_cmpi		r0,0
	bc		1,2,.L792	# eq
#    {
#       TriggerResponsePending();
	.d2line		1939
	bl		TriggerResponsePending
.L792:
#    }
# }
	.d2line		1941
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
.L1737:
	.type		Dcm_DslHandleTimers,@function
	.size		Dcm_DslHandleTimers,.-Dcm_DslHandleTimers
# Number of nodes = 162

# Allocations for Dcm_DslHandleTimers
#	?a4		$$50
#	?a5		$$49
#	?a6		$$48
#	?a7		$$47
#	?a8		$$46
#	?a9		$$45
# FUNC(void, DCM_CODE) Dcm_DslTransmit(P2CONST(Dcm_Cfg_TxChannelType, AUTOMATIC, DCM_APPL_CONST) pTxChannel)
	.align		2
	.section	.text_vle
        .d2line         1946,22
#$$ld
.L1741:

#$$bf	Dcm_DslTransmit,interprocedural,rasave,nostackparams
	.globl		Dcm_DslTransmit
	.d2_cfa_start __cie
Dcm_DslTransmit:
.Llo503:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# pTxChannel=r0
	stw		r0,20(r1)		# pTxChannel=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# pTxChannel=r0 pTxChannel=r3
	.d2prologue_end
# {
#    Dcm_DslInstance.p_dsd_tx_channel = pTxChannel;
	.d2line		1948
.Llo504:
	lis		r3,(Dcm_DslInstance+28)@ha
.Llo505:
	stw		r0,(Dcm_DslInstance+28)@l(r3)		# pTxChannel=r0
# 
#    SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine();
	.d2line		1950
	bl		SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine
# }
	.d2line		1951
	.d2epilogue_begin
.Llo506:
	lwz		r0,20(r1)		# pTxChannel=r0
	mtspr		lr,r0		# pTxChannel=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1742:
	.type		Dcm_DslTransmit,@function
	.size		Dcm_DslTransmit,.-Dcm_DslTransmit
# Number of nodes = 9

# Allocations for Dcm_DslTransmit
#	?a4		pTxChannel
# FUNC(void, DCM_CODE) Dcm_DslForceResponsePending(void)
	.align		2
	.section	.text_vle
        .d2line         1956,22
#$$ld
.L1747:

#$$bf	Dcm_DslForceResponsePending,interprocedural,rasave,nostackparams
	.globl		Dcm_DslForceResponsePending
	.d2_cfa_start __cie
Dcm_DslForceResponsePending:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    if (DSL_WAIT_CONF_RCRRP != Dcm_DslInstance.dsl_state)
	.d2line		1958
	lis		r3,Dcm_DslInstance@ha
	lwz		r0,Dcm_DslInstance@l(r3)
	se_cmpi		r0,3
	bc		1,2,.L830	# eq
#    {
#       TriggerResponsePending();
	.d2line		1960
	bl		TriggerResponsePending
.L830:
#    }
# }
	.d2line		1962
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
.L1748:
	.type		Dcm_DslForceResponsePending,@function
	.size		Dcm_DslForceResponsePending,.-Dcm_DslForceResponsePending
# Number of nodes = 7

# Allocations for Dcm_DslForceResponsePending
# FUNC(void, DCM_CODE) Dcm_DslTransmitNoResponse(void)
	.align		2
	.section	.text_vle
        .d2line         1988,22
#$$ld
.L1752:

#$$bf	Dcm_DslTransmitNoResponse,interprocedural,rasave,nostackparams
	.globl		Dcm_DslTransmitNoResponse
	.d2_cfa_start __cie
Dcm_DslTransmitNoResponse:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Dcm_DslInstance.transmit_no_response = TRUE;
	.d2line		1990
	diab.li		r0,1
	lis		r3,(Dcm_DslInstance+21)@ha
	stb		r0,(Dcm_DslInstance+21)@l(r3)
#    SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine();
	.d2line		1991
	bl		SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine
# }
	.d2line		1992
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
.L1753:
	.type		Dcm_DslTransmitNoResponse,@function
	.size		Dcm_DslTransmitNoResponse,.-Dcm_DslTransmitNoResponse
# Number of nodes = 9

# Allocations for Dcm_DslTransmitNoResponse
# FUNC(void, DCM_CODE) Dcm_DslProtocolStopped(void)
	.align		2
	.section	.text_vle
        .d2line         1997,22
#$$ld
.L1757:

#$$bf	Dcm_DslProtocolStopped,interprocedural,rasave,nostackparams
	.globl		Dcm_DslProtocolStopped
	.d2_cfa_start __cie
Dcm_DslProtocolStopped:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Dcm_DslInstance.protocol_stopped = TRUE;
	.d2line		1999
	diab.li		r0,1
	lis		r3,(Dcm_DslInstance+20)@ha
	stb		r0,(Dcm_DslInstance+20)@l(r3)
#    Dcm_DslInstance.p_active_protocol = NULL_PTR;
	.d2line		2000
	diab.li		r0,0
	lis		r3,(Dcm_DslInstance+8)@ha
	stw		r0,(Dcm_DslInstance+8)@l(r3)
#    Dcm_DslInstance.p_dsd_tx_channel = NULL_PTR;
	.d2line		2001
	lis		r3,(Dcm_DslInstance+28)@ha
	stw		r0,(Dcm_DslInstance+28)@l(r3)
# 
#    SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine();
	.d2line		2003
	bl		SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine
# }
	.d2line		2004
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
.L1758:
	.type		Dcm_DslProtocolStopped,@function
	.size		Dcm_DslProtocolStopped,.-Dcm_DslProtocolStopped
# Number of nodes = 23

# Allocations for Dcm_DslProtocolStopped
# FUNC(Std_ReturnType, DCM_CODE) Dcm_DslSetPeriodicTxConnection(void)
	.align		2
	.section	.text_vle
        .d2line         2009,32
#$$ld
.L1762:

#$$bf	Dcm_DslSetPeriodicTxConnection,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Dcm_DslSetPeriodicTxConnection
	.d2_cfa_start __cie
Dcm_DslSetPeriodicTxConnection:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    uint8 i;
#    Std_ReturnType retVal;
#    P2CONST(Dcm_Cfg_PeriodicTxChannelType, AUTOMATIC, DCM_APPL_CONST) pPeriodicTxChannels;
#    P2VAR(Dcm_Cfg_PeriodicTxStatusType, TYPEDEF, DCM_APPL_VAR) pPeriodicTxStatus;
# 
#    if (NULL_PTR != Dcm_DslInstance.p_active_rx_channel)
	.d2line		2016
	lis		r3,(Dcm_DslInstance+36)@ha
	lwz		r0,(Dcm_DslInstance+36)@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L836	# eq
#    {
#       Dcm_DslInstance.p_active_periodic_response = Dcm_DslInstance.p_active_rx_channel->p_periodic;
	.d2line		2018
	lis		r3,(Dcm_DslInstance+36)@ha		# i=r3
.Llo507:
	lwz		r3,(Dcm_DslInstance+36)@l(r3)		# i=r3 i=r3
	lwz		r4,40(r3)		# i=r3
	lis		r3,(Dcm_DslInstance+48)@ha		# i=r3
	stw		r4,(Dcm_DslInstance+48)@l(r3)		# i=r3
#       pPeriodicTxChannels = Dcm_DslInstance.p_active_periodic_response->tx_channels;
	.d2line		2019
	lwz		r0,4(r4)
.Llo514:
	mr		r0,r0		# pPeriodicTxChannels=r0 pPeriodicTxChannels=r0
# 
#       for (i = 0; i < Dcm_DslInstance.p_active_periodic_response->num_tx_channels; i++)
	.d2line		2021
	diab.li		r3,0		# i=r3
.L837:
	rlwinm		r5,r3,0,24,31		# i=r3
	lis		r4,(Dcm_DslInstance+48)@ha		# pPeriodicTxStatus=r4
.Llo516:
	lwz		r4,(Dcm_DslInstance+48)@l(r4)		# pPeriodicTxStatus=r4 pPeriodicTxStatus=r4
	lbz		r4,0(r4)		# pPeriodicTxStatus=r4 pPeriodicTxStatus=r4
	se_cmp		r5,r4		# pPeriodicTxStatus=r4
	bc		0,0,.L839	# ge
#       {
#          pPeriodicTxStatus = pPeriodicTxChannels[i].channel_status;
	.d2line		2023
.Llo517:
	rlwinm		r4,r3,3,21,28		# pPeriodicTxStatus=r4 i=r3
.Llo518:
	se_add		r4,r0		# pPeriodicTxStatus=r4 pPeriodicTxStatus=r4 pPeriodicTxChannels=r0
	lwz		r4,4(r4)		# pPeriodicTxStatus=r4 pPeriodicTxStatus=r4
	mr		r4,r4		# pPeriodicTxStatus=r4 pPeriodicTxStatus=r4
#          pPeriodicTxStatus->state = DCM_PERIODIC_TX_IDLE;
	.d2line		2024
	diab.li		r5,0
	stw		r5,16(r4)		# pPeriodicTxStatus=r4
#          pPeriodicTxStatus->buf_ptr = NULL_PTR;
	.d2line		2025
	stw		r5,4(r4)		# pPeriodicTxStatus=r4
#          pPeriodicTxStatus->size = 0;
	.d2line		2026
	sth		r5,0(r4)		# pPeriodicTxStatus=r4
#       }
	.d2line		2027
	diab.addi		r5,r3,1		# i=r3
	se_addi		r3,1		# i=r3 i=r3
	b		.L837
.L839:
#       Dcm_DslInstance.active_periodic_tx = 0;
	.d2line		2028
.Llo508:
	diab.li		r0,0		# pPeriodicTxChannels=r0
.Llo515:
	lis		r3,(Dcm_DslInstance+44)@ha		# i=r3
.Llo509:
	stb		r0,(Dcm_DslInstance+44)@l(r3)		# i=r3 pPeriodicTxChannels=r0
#       retVal = E_OK;
	.d2line		2029
	diab.li		r3,0		# i=r3
.Llo510:
	b		.L840
.L836:
#    }
#    else
#    {
#       retVal = E_NOT_OK;
	.d2line		2033
.Llo511:
	diab.li		r3,1		# retVal=r3
.L840:
#    }
# 
#    return retVal;
	.d2line		2036
.Llo512:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		2037
	.d2epilogue_begin
.Llo513:
	lwz		r0,20(r1)		# pPeriodicTxChannels=r0
	mtspr		lr,r0		# pPeriodicTxChannels=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1763:
	.type		Dcm_DslSetPeriodicTxConnection,@function
	.size		Dcm_DslSetPeriodicTxConnection,.-Dcm_DslSetPeriodicTxConnection
# Number of nodes = 90

# Allocations for Dcm_DslSetPeriodicTxConnection
#	?a4		i
#	?a5		retVal
#	?a6		pPeriodicTxChannels
#	?a7		pPeriodicTxStatus
# FUNC(void, DCM_CODE) Dcm_DslClearPeriodicTxConnection(void)
	.align		2
	.section	.text_vle
        .d2line         2042,22
#$$ld
.L1775:

#$$bf	Dcm_DslClearPeriodicTxConnection,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		Dcm_DslClearPeriodicTxConnection
	.d2_cfa_start __cie
Dcm_DslClearPeriodicTxConnection:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Dcm_DslInstance.p_active_periodic_response = NULL_PTR;
	.d2line		2044
	diab.li		r3,0
	lis		r4,(Dcm_DslInstance+48)@ha
	stw		r3,(Dcm_DslInstance+48)@l(r4)
# }
	.d2line		2045
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1776:
	.type		Dcm_DslClearPeriodicTxConnection,@function
	.size		Dcm_DslClearPeriodicTxConnection,.-Dcm_DslClearPeriodicTxConnection
# Number of nodes = 7

# Allocations for Dcm_DslClearPeriodicTxConnection
# FUNC(Std_ReturnType, DCM_CODE) Dcm_DslSendPeriodicTxData(P2VAR(uint8, AUTOMATIC, DCM_APPL_DATA) dataBuf, Dcm_MsgLenType length)
	.align		2
	.section	.text_vle
        .d2line         2051,32
#$$ld
.L1780:

#$$bf	Dcm_DslSendPeriodicTxData,interprocedural,rasave,nostackparams
	.globl		Dcm_DslSendPeriodicTxData
	.d2_cfa_start __cie
Dcm_DslSendPeriodicTxData:
.Llo519:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	25,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# dataBuf=r31 dataBuf=r3
	mr		r30,r4		# length=r30 length=r4
	.d2prologue_end
# {
#    uint8 i;
#    Std_ReturnType retVal = DCM_E_PENDING;
	.d2line		2054
	diab.li		r28,10		# retVal=r28
#    P2CONST(Dcm_Cfg_PeriodicTxChannelType, AUTOMATIC, DCM_APPL_CONST) pPeriodicTxChannels;
#    P2CONST(Dcm_Cfg_PeriodicResponseType, AUTOMATIC, DCM_APPL_CONST) pPeriodicResponse = Dcm_DslInstance.p_active_periodic_response;
	.d2line		2056
.Llo527:
	lis		r3,(Dcm_DslInstance+48)@ha
.Llo520:
	lwz		r0,(Dcm_DslInstance+48)@l(r3)
	.d2line		2059
	mr.		r26,r0		# pPeriodicResponse=?a9 pPeriodicResponse=?a12
#    P2VAR(Dcm_Cfg_PeriodicTxStatusType, TYPEDEF, DCM_APPL_DATA) pPeriodicTxStatus;
# 
#    if (NULL_PTR != pPeriodicResponse)
.Llo535:
	bc		1,2,.L855	# eq
#    {
#       pPeriodicTxChannels = pPeriodicResponse->tx_channels;
	.d2line		2061
.Llo521:
	lwz		r27,4(r26)		# pPeriodicResponse=r26
.Llo523:
	mr		r27,r27		# pPeriodicTxChannels=r27 pPeriodicTxChannels=r27
# 
#       for (i = Dcm_DslInstance.active_periodic_tx; (E_OK != retVal) && (i < pPeriodicResponse->num_tx_channels); i++)
	.d2line		2063
	lis		r3,(Dcm_DslInstance+44)@ha
	lbz		r29,(Dcm_DslInstance+44)@l(r3)
.Llo526:
	mr		r29,r29		# i=r29 i=r29
.L848:
	rlwinm		r3,r28,0,24,31		# retVal=r3 retVal=r28
	se_cmpi		r3,0		# retVal=r3
	bc		1,2,.L855	# eq
	rlwinm		r4,r29,0,24,31		# i=r29
	lbz		r0,0(r26)		# pPeriodicResponse=r26
	se_cmp		r4,r0
	bc		0,0,.L855	# ge
#       {
#          pPeriodicTxStatus = pPeriodicTxChannels[i].channel_status;
	.d2line		2065
	rlwinm		r3,r29,3,21,28		# retVal=r3 i=r29
	se_add		r3,r27		# retVal=r3 retVal=r3 pPeriodicTxChannels=r27
	lwz		r25,4(r3)		# pPeriodicTxStatus=r25 retVal=r3
.Llo536:
	mr		r25,r25		# pPeriodicTxStatus=r25 pPeriodicTxStatus=r25
# 
#          if (DCM_PERIODIC_TX_IDLE == pPeriodicTxStatus->state)
	.d2line		2067
	lwz		r0,16(r25)		# pPeriodicTxStatus=r25
	se_cmpi		r0,0
	bc		0,2,.L851	# ne
#          {
#             /*
#              * Try to send the data sample.
#              */
#             pPeriodicTxStatus->buf_pos = (PduLengthType)0U;
	.d2line		2072
	diab.li		r0,0
	sth		r0,2(r25)		# pPeriodicTxStatus=r25
#             pPeriodicTxStatus->buf_ptr = dataBuf;
	.d2line		2073
	stw		r31,4(r25)		# pPeriodicTxStatus=r25 dataBuf=r31
#             pPeriodicTxStatus->size = length;
	.d2line		2074
	sth		r30,0(r25)		# pPeriodicTxStatus=r25 length=r30
#             pPeriodicTxStatus->pdu_info.SduDataPtr = dataBuf;
	.d2line		2075
	stw		r31,8(r25)		# pPeriodicTxStatus=r25 dataBuf=r31
#             pPeriodicTxStatus->pdu_info.SduLength = length;
	.d2line		2076
	sth		r30,12(r25)		# pPeriodicTxStatus=r25 length=r30
# 
#             /*
#                * No matter what PduR returns, do not continue to the next tx channel.
#                * Just return the result to DSP.
#                */
#             if (DCM_FULL_COMM_MODE == *Dcm_DslInstance.p_active_periodic_response->p_commMode)
	.d2line		2082
	lis		r3,(Dcm_DslInstance+48)@ha		# retVal=r3
	lwz		r3,(Dcm_DslInstance+48)@l(r3)		# retVal=r3 retVal=r3
	lwz		r3,8(r3)		# retVal=r3 retVal=r3
	lwz		r0,0(r3)		# retVal=r3
	se_cmpi		r0,2
	bc		0,2,.L852	# ne
#             {
#                retVal = PduR_DcmTransmit(pPeriodicTxChannels[i].tx_pdu_id, &pPeriodicTxStatus->pdu_info);
	.d2line		2084
.Llo528:
	rlwinm		r4,r29,3,21,28		# i=r29
	lhzux		r3,r4,r27		# retVal=r3
	diab.addi		r4,r25,8		# pPeriodicTxStatus=r25
	bl		PduR_DcmTransmit
.Llo529:
	mr		r28,r3		# retVal=r28 retVal=r3
# 
#                /*
#                 * The TxConfirmation might be called directly upon PduR_DcmTransmit.
#                 * Thus is an extra check needed to not discard an already confirmed state.
#                 */
#                if ((E_OK == retVal) && (pPeriodicTxStatus->state != DCM_PERIODIC_TX_CONFIRMED))
	.d2line		2090
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
	se_cmpi		r3,0		# retVal=r3
	bc		0,2,.L854	# ne
.Llo530:
	lwz		r0,16(r25)		# pPeriodicTxStatus=r25
.Llo531:
	se_cmpi		r0,3
	bc		1,2,.L854	# eq
#                {
#                   pPeriodicTxStatus->state = DCM_PERIODIC_TX_PENDING;
	.d2line		2092
	diab.li		r0,1
	stw		r0,16(r25)		# pPeriodicTxStatus=r25
	b		.L854
.L852:
#                }
#             }
#             else
#             {
#                /*
#                   * Simulate a confirmation if not full communication.
#                   * DSL will notify DSP about the confirmation in the next schedule.
#                   */
#                retVal = E_OK;
	.d2line		2101
.Llo532:
	diab.li		r28,0		# retVal=r28
#                pPeriodicTxStatus->state = DCM_PERIODIC_TX_CONFIRMED;
	.d2line		2102
.Llo533:
	diab.li		r0,3
	stw		r0,16(r25)		# pPeriodicTxStatus=r25
#                pPeriodicTxStatus->buf_pos = (PduLengthType)0U;
	.d2line		2103
	diab.li		r3,0		# retVal=r3
	sth		r3,2(r25)		# pPeriodicTxStatus=r25 retVal=r3
# 
#                /* Trigger Dcm_SE_TransmitPeriodicData to handle the confirmed tx channel */
#                Dcm_DspTransmitPeriodicDataTrigger();
	.d2line		2106
	bl		Dcm_DspTransmitPeriodicDataTrigger
.L854:
#             }
# 
#             Dcm_DslInstance.active_periodic_tx = i;
	.d2line		2109
	lis		r3,(Dcm_DslInstance+44)@ha		# retVal=r3
	stb		r29,(Dcm_DslInstance+44)@l(r3)		# retVal=r3 i=r29
.L851:
#          }
#       }
	.d2line		2111
	diab.addi		r4,r29,1		# i=r29
	se_addi		r29,1		# i=r29 i=r29
	b		.L848
.L855:
#    }
#    else
#    {
#       /* Periodic transmission Type 1 is not supported yet.*/
#    }
# 
#    return retVal;
	.d2line		2118
.Llo522:
	rlwinm		r3,r28,0,24,31		# retVal=r3 retVal=r28
# }
	.d2line		2119
	.d2epilogue_begin
.Llo524:
	lmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	2,10
.Llo534:
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo525:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1781:
	.type		Dcm_DslSendPeriodicTxData,@function
	.size		Dcm_DslSendPeriodicTxData,.-Dcm_DslSendPeriodicTxData
# Number of nodes = 155

# Allocations for Dcm_DslSendPeriodicTxData
#	?a4		dataBuf
#	?a5		length
#	?a6		i
#	?a7		retVal
#	?a8		pPeriodicTxChannels
#	?a9		pPeriodicResponse
#	?a10		pPeriodicTxStatus
# static FUNC(void, DCM_CODE) PeriodicSubStateMachine(P2CONST(Dcm_Cfg_PeriodicTxChannelType, AUTOMATIC, DCM_APPL_CONST) txChannel)
	.align		1
	.section	.text_vle
        .d2line         3161,29
#$$ld
.L1802:

#$$bf	PeriodicSubStateMachine,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
PeriodicSubStateMachine:
.Llo537:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# txChannel=r3 txChannel=r3
	.d2prologue_end
# {
#    if (DCM_PERIODIC_TX_CONFIRMED == txChannel->channel_status->state)
	.d2line		3163
	lwz		r4,4(r3)		# txChannel=r3
	lwz		r0,16(r4)
	se_cmpi		r0,3
	bc		0,2,.L1107	# ne
#    {
#       txChannel->channel_status->state = DCM_PERIODIC_TX_IDLE;
	.d2line		3165
.Llo538:
	diab.li		r0,0
.Llo539:
	lwz		r3,4(r3)		# txChannel=r3 txChannel=r3
	stw		r0,16(r3)		# txChannel=r3
#       Dcm_DspConfirmPeriodicTxData();
	.d2line		3166
	bl		Dcm_DspConfirmPeriodicTxData
.L1107:
#    }
#    else
#    {
#       /*
#        * DCM_PERIODIC_TX_IDLE
#        * DCM_PERIODIC_TX_PENDING
#        * DCM_PERIODIC_TX_BUSY
#        *
#        * The Tx channel is not confirmed yet so wait until the next schedule.
#        */
#    }
# }
	.d2line		3178
	.d2epilogue_begin
.Llo540:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1803:
	.type		PeriodicSubStateMachine,@function
	.size		PeriodicSubStateMachine,.-PeriodicSubStateMachine
# Number of nodes = 21

# Allocations for PeriodicSubStateMachine
#	?a4		txChannel
# FUNC(void, DCM_CODE) Dcm_DslPeriodicStateMachine(void)
	.align		2
	.section	.text_vle
        .d2line         2124,22
#$$ld
.L1808:

#$$bf	Dcm_DslPeriodicStateMachine,interprocedural,rasave,nostackparams
	.globl		Dcm_DslPeriodicStateMachine
	.d2_cfa_start __cie
Dcm_DslPeriodicStateMachine:
.Llo541:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    uint8 periodicCounter;
# 
#    /*
#     * Only run if there is an ongoing periodic responses
#     */
# 
#    for (periodicCounter = 0; (NULL_PTR != Dcm_DslInstance.p_active_periodic_response)
	.d2line		2132
	diab.li		r31,0		# periodicCounter=r31
.L862:
	lis		r3,(Dcm_DslInstance+48)@ha
	lwz		r0,(Dcm_DslInstance+48)@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L864	# eq
	rlwinm		r0,r31,0,24,31		# periodicCounter=r31
	lis		r3,(Dcm_DslInstance+48)@ha
	lwz		r3,(Dcm_DslInstance+48)@l(r3)
	lbz		r3,0(r3)
	se_cmp		r0,r3
	bc		0,0,.L864	# ge
#       && (periodicCounter < Dcm_DslInstance.p_active_periodic_response->num_tx_channels); periodicCounter++)
#    {
#       PeriodicSubStateMachine(&Dcm_DslInstance.p_active_periodic_response->tx_channels[periodicCounter]);
	.d2line		2135
	lis		r3,(Dcm_DslInstance+48)@ha
	lwz		r3,(Dcm_DslInstance+48)@l(r3)
	lwz		r3,4(r3)
	rlwinm		r0,r31,3,21,28		# periodicCounter=r31
	se_add		r3,r0
	bl		PeriodicSubStateMachine
#    }
	.d2line		2136
	diab.addi		r0,r31,1		# periodicCounter=r31
	se_addi		r31,1		# periodicCounter=r31 periodicCounter=r31
	b		.L862
.L864:
# 
#    /* Reset active_periodic_tx since all tx channels have been tried. */
#    Dcm_DslInstance.active_periodic_tx = 0;
	.d2line		2139
.Llo542:
	diab.li		r3,0
	lis		r4,(Dcm_DslInstance+44)@ha
	stb		r3,(Dcm_DslInstance+44)@l(r4)
# }
	.d2line		2140
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
.L1809:
	.type		Dcm_DslPeriodicStateMachine,@function
	.size		Dcm_DslPeriodicStateMachine,.-Dcm_DslPeriodicStateMachine
# Number of nodes = 46

# Allocations for Dcm_DslPeriodicStateMachine
#	?a4		periodicCounter
# static FUNC(void, DCM_CODE) PreemptProtocol(boolean isROESwitch)
	.align		1
	.section	.text_vle
        .d2line         2758,29
#$$ld
.L1815:

#$$bf	PreemptProtocol,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
PreemptProtocol:
.Llo543:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# isROESwitch=r31 isROESwitch=r3
	.d2prologue_end
# {
#    uint8 ServIndReqIndex;
# 
#    /* Stop dsd */
#    Dcm_DsdStopProtocol();
	.d2line		2763
	bl		Dcm_DsdStopProtocol
# 
#    if (FALSE == isROESwitch)
	.d2line		2765
.Llo544:
	rlwinm		r31,r31,0,24,31		# isROESwitch=r31 isROESwitch=r31
.Llo545:
	se_cmpi		r31,0		# isROESwitch=r31
	bc		0,2,.L1012	# ne
#    {
#       /* Inform application of old protocol stop */
#       for (ServIndReqIndex = 0; ServIndReqIndex < Dcm_LCfg.num_cb_req_service; ServIndReqIndex++)
	.d2line		2768
.Llo546:
	diab.li		r31,0		# ServIndReqIndex=r31
.L1013:
.Llo547:
	rlwinm		r0,r31,0,24,31		# ServIndReqIndex=r31
	lis		r3,(Dcm_LCfg+145)@ha
	lbz		r3,(Dcm_LCfg+145)@l(r3)
	se_cmp		r0,r3
	bc		0,0,.L1012	# ge
#       {
#          /*
#           * MISRA-C:2004 RULE 16.10 VIOLATION:
#           * If a function returns error information, then that error information shall be tested.
#           * Ignore the return value since nothing to do upon E_NOT_OK.
#           * Returning Std_ReturnType is also defined by the SWS and cannot be removed.
#           */
#          (void)Dcm_LCfg.p_cb_req_services[ServIndReqIndex].stop_protocol(Dcm_DslInstance.p_active_protocol->identifier);
	.d2line		2776
	lis		r3,(Dcm_LCfg+148)@ha
	lwz		r0,(Dcm_LCfg+148)@l(r3)
	rlwinm		r3,r31,3,21,28		# ServIndReqIndex=r31
	se_add		r3,r0
	lwz		r0,4(r3)
	mtspr		ctr,r0
	lis		r3,(Dcm_DslInstance+8)@ha
	lwz		r3,(Dcm_DslInstance+8)@l(r3)
	lbz		r3,0(r3)
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
#       }
	.d2line		2777
	diab.addi		r0,r31,1		# ServIndReqIndex=r31
	se_addi		r31,1		# ServIndReqIndex=r31 ServIndReqIndex=r31
	b		.L1013
.L1012:
#    }
#    TimerStop(Dcm_DslInstance.response_pending_timer);
	.d2line		2779
.Llo548:
	bl		SchM_Enter_Dcm_EaTimers
	diab.li		r0,65535
	lis		r3,(Dcm_DslInstance+16)@ha
	sth		r0,(Dcm_DslInstance+16)@l(r3)
	bl		SchM_Exit_Dcm_EaTimers
# }
	.d2line		2780
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
.L1816:
	.type		PreemptProtocol,@function
	.size		PreemptProtocol,.-PreemptProtocol
# Number of nodes = 55

# Allocations for PreemptProtocol
#	?a4		isROESwitch
#	?a5		ServIndReqIndex
# static FUNC(Dcm_Cfg_RxChannelPointerType, DCM_CODE) GetPendingChannel(void)
	.align		1
	.section	.text_vle
        .d2line         2838,53
#$$ld
.L1823:

#$$bf	GetPendingChannel,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.d2_cfa_start __cie
GetPendingChannel:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    uint16 i;
#    P2CONST(Dcm_Cfg_RxChannelType, AUTOMATIC, DCM_APPL_DATA) pChannel = NULL_PTR;
	.d2line		2841
	diab.li		r5,0		# pChannel=r5
# 
# 
#    /* Loop through all RxChannels */
#    for (i = (uint16)0U; i < Dcm_pPbCfg->num_rx_channels; i++)
	.d2line		2845
.Llo557:
	diab.li		r3,0
.L1034:
.Llo549:
	rlwinm		r0,r3,0,16,31		# i=r3
	lis		r4,Dcm_pPbCfg@ha
	lwz		r4,Dcm_pPbCfg@l(r4)
	lhz		r4,6(r4)
	se_cmp		r0,r4
	bc		0,0,.L1038	# ge
#    {
#       if (DCM_CHANNEL_PENDING == *(Dcm_pPbCfg->p_rx_channels[i].p_state))
	.d2line		2847
	lis		r4,Dcm_pPbCfg@ha
	lwz		r4,Dcm_pPbCfg@l(r4)
	lwz		r4,8(r4)
	rlwinm		r0,r3,0,16,31		# i=r3
	e_mulli		r0,r0,44
	se_add		r4,r0
	lwz		r4,32(r4)
	lwz		r0,0(r4)
	se_cmpi		r0,1
	bc		0,2,.L1037	# ne
#       {
#          /* Found a new request, mark it as busy */
#          pChannel = &Dcm_pPbCfg->p_rx_channels[i];
	.d2line		2850
.Llo550:
	lis		r4,Dcm_pPbCfg@ha
	lwz		r4,Dcm_pPbCfg@l(r4)
	lwz		r5,8(r4)		# pChannel=r5
.Llo551:
	rlwinm		r3,r3,0,16,31		# i=r3 i=r3
	e_mulli		r3,r3,44		# i=r3 i=r3
	se_add		r3,r5		# i=r3 i=r3 pChannel=r5
.Llo552:
	mr		r5,r3		# pChannel=r5 pChannel=r3
#          *pChannel->p_state = DCM_CHANNEL_BUSY;
	.d2line		2851
	diab.li		r0,2
	lwz		r3,32(r5)		# i=r3 pChannel=r5
.Llo553:
	stw		r0,0(r3)		# i=r3
	b		.L1038
.L1037:
#          break;
#       }
#    }
	.d2line		2854
	diab.addi		r0,r3,1		# i=r3
	se_addi		r3,1		# i=r3 i=r3
	b		.L1034
.L1038:
# 
#    if ((NULL_PTR != pChannel) && (DCM_NO_COMM_MODE == *pChannel->p_commMode))
	.d2line		2856
	se_cmpi		r5,0		# pChannel=r5
	bc		1,2,.L1039	# eq
.Llo554:
	lwz		r3,36(r5)		# i=r3 pChannel=r5
.Llo555:
	lwz		r0,0(r3)		# i=r3
	se_cmpi		r0,0
	bc		0,2,.L1039	# ne
	.section	.text_vle
.L1830:
#    {
#       CONSTP2CONST(Dcm_Cfg_BufferType, AUTOMATIC, DCM_APPL_DATA) pBuffer = pChannel->p_buffer;
	.d2line		2858
.Llo556:
	lwz		r3,12(r5)		# i=r3 pChannel=r5
.Llo559:
	mr		r3,r3		# pBuffer=r3 pBuffer=r3
#       CONSTP2VAR(Dcm_Cfg_BufferStatusType, AUTOMATIC, DCM_APPL_DATA) pBufferStatus = pBuffer->p_status;
	.d2line		2859
	lwz		r3,8(r3)		# pBuffer=r3 pBuffer=r3
.Llo560:
	mr		r3,r3		# pBufferStatus=r3 pBufferStatus=r3
# 
#       /*
#        * Do not handle requests in NoComMode
#        * Release channel and buffer.
#        */
#       *pChannel->p_state = DCM_CHANNEL_IDLE;
	.d2line		2865
	diab.li		r0,0
	lwz		r4,32(r5)		# pChannel=r5
	stw		r0,0(r4)
# 
#       pBufferStatus->state = DCM_BUF_EMPTY;
	.d2line		2867
	stw		r0,4(r3)		# pBufferStatus=r3
#       pBufferStatus->buf_pos = (PduLengthType)0U;
	.d2line		2868
	sth		r0,8(r3)		# pBufferStatus=r3
# 
#       pChannel = NULL_PTR;
	.d2line		2870
	diab.li		r5,0		# pChannel=r5
	.section	.text_vle
.L1831:
.L1039:
#    }
# 
#    return pChannel;
	.d2line		2873
.Llo561:
	mr		r3,r5		# pChannel=r3 pChannel=r5
# }
	.d2line		2874
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo558:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1824:
	.type		GetPendingChannel,@function
	.size		GetPendingChannel,.-GetPendingChannel
# Number of nodes = 97

# Allocations for GetPendingChannel
#	?a4		i
#	?a5		pChannel
#	?a6		pBuffer
#	?a7		pBufferStatus
# static FUNC(Std_ReturnType, DCM_CODE) TransmitIntermediateResponse(CONSTP2CONST(Dcm_Cfg_TxChannelType, AUTOMATIC, DCM_APPL_CONST) pTxChannel, 
	.align		1
	.section	.text_vle
        .d2line         3002,39
#$$ld
.L1840:

#$$bf	TransmitIntermediateResponse,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
TransmitIntermediateResponse:
.Llo562:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# pTxChannel=r31 pTxChannel=r3
	.d2prologue_end
#                                                                    uint8 const sid,
#                                                                    Dcm_NegativeResponseCodeType const ErrorCode)
# {
#    Std_ReturnType retVal;
# 
#    ComposeNegativeResponse(&DslIntermediateTxBuffer,
	.d2line		3008
	lhz		r6,2(r31)		# pTxChannel=r31
	lis		r3,DslIntermediateTxBuffer@ha
.Llo563:
	e_add16i		r3,r3,DslIntermediateTxBuffer@l
	mr		r0,r4		# sid=r0 sid=r4
	mr		r0,r5		# ErrorCode=r0 ErrorCode=r5
	bl		ComposeNegativeResponse
#                            sid,
#                            ErrorCode,
#                            pTxChannel->conf_pdu_id);
# 
#    Dcm_DslInstance.negative_response_transmitted = TRUE;
	.d2line		3013
.Llo566:
	diab.li		r0,1
	lis		r3,(Dcm_DslInstance+22)@ha
	stb		r0,(Dcm_DslInstance+22)@l(r3)
# 
#    if (DCM_FULL_COMM_MODE == *Dcm_DslInstance.p_active_rx_channel->p_commMode )
	.d2line		3015
	lis		r3,(Dcm_DslInstance+36)@ha
	lwz		r3,(Dcm_DslInstance+36)@l(r3)
	lwz		r3,36(r3)
	lwz		r0,0(r3)
	se_cmpi		r0,2
	bc		0,2,.L1066	# ne
#    {
#       /*
#        * The DCM is about to send, wait for confirmation.
#        */
#       Dcm_DslInstance.p_active_tx_channel = pTxChannel;
	.d2line		3020
.Llo564:
	lis		r3,(Dcm_DslInstance+32)@ha		# pTxChannel=r3
	stw		r31,(Dcm_DslInstance+32)@l(r3)		# pTxChannel=r3 pTxChannel=r31
#       retVal = TransmitResponse(pTxChannel, &DslIntermediateTxBuffer);
	.d2line		3021
	lis		r4,DslIntermediateTxBuffer@ha
	e_add16i		r4,r4,DslIntermediateTxBuffer@l
	mr		r3,r31		# pTxChannel=r3 pTxChannel=r31
	bl		TransmitResponse
.Llo567:
	mr		r3,r3		# retVal=r3 retVal=r3
	b		.L1067
.L1066:
#    }
#    else
#    {
#       /*
#        * Simulate confirmation when not in Full communication mode
#        * Dcm_TpTxConfirmation will set tx_confirmation to TRUE
#        * in order to fetch the "confirmation" in the next schedule.
#        */
#       Dcm_TpTxConfirmation(pTxChannel->conf_pdu_id, NTFRSLT_OK);
	.d2line		3030
.Llo568:
	lhz		r3,2(r31)		# retVal=r3 pTxChannel=r31
	diab.li		r4,0
	bl		Dcm_TpTxConfirmation
#       retVal = E_OK;
	.d2line		3031
.Llo569:
	diab.li		r3,0		# retVal=r3
.L1067:
#    }
# 
#    return retVal;
	.d2line		3034
.Llo565:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		3035
	.d2epilogue_begin
.Llo570:
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
.L1841:
	.type		TransmitIntermediateResponse,@function
	.size		TransmitIntermediateResponse,.-TransmitIntermediateResponse
# Number of nodes = 67

# Allocations for TransmitIntermediateResponse
#	?a4		pTxChannel
#	?a5		sid
#	?a6		ErrorCode
#	?a7		retVal
# static FUNC(boolean, DCM_CODE) CheckProtocol(P2CONST(Dcm_Cfg_RxChannelType, AUTOMATIC, DCM_APPL_CONST) p_RequestRxChannel, boolean isROESwitch)
	.align		1
	.section	.text_vle
        .d2line         3040,32
#$$ld
.L1850:

#$$bf	CheckProtocol,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
CheckProtocol:
.Llo571:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# p_RequestRxChannel=r31 p_RequestRxChannel=r3
.Llo572:
	mr		r4,r4		# isROESwitch=r4 isROESwitch=r4
	.d2prologue_end
# {
#    uint8 ServIndReqIndex;
#    boolean ProtocolStartGranted = TRUE;
	.d2line		3043
.Llo573:
	diab.li		r29,1		# ProtocolStartGranted=r29
#    Std_ReturnType stdRetVal;
# 
#    if ((Dcm_DslInstance.p_active_protocol == p_RequestRxChannel->p_protocol))
	.d2line		3046
	lis		r3,(Dcm_DslInstance+8)@ha
	lwz		r0,(Dcm_DslInstance+8)@l(r3)
	lwz		r3,20(r31)		# p_RequestRxChannel=r31
	se_cmpl		r0,r3
	bc		1,2,.L1072	# eq
#    {
#       /* This is the same protocol as previous request, since need not to inform application */
#    }
#    else if (FALSE != isROESwitch)
	.d2line		3050
	rlwinm		r4,r4,0,24,31		# isROESwitch=r4 isROESwitch=r4
	se_cmpi		r4,0		# isROESwitch=r4
	bc		0,2,.L1072	# ne
#    {
#       /**
#        * Switching to ROE protocol from any other protocol or Switching from ROE protocol to previously requested protocol
#        * need not to inform application, since it is handled internally.
#        */
#    }
#    else
#    {
#       /**
#        * case1: This is not the same protocol as previous request.
#        * case2: Switching from ROE protocol to other than previously requested protocol.
#        */
# 
#       /* Inform application of new protocol start */
#       for (ServIndReqIndex=0; ServIndReqIndex<Dcm_LCfg.num_cb_req_service; ServIndReqIndex++)
	.d2line		3065
.Llo575:
	diab.li		r30,0		# ServIndReqIndex=r30
.L1075:
.Llo576:
	rlwinm		r0,r30,0,24,31		# stdRetVal=r0 ServIndReqIndex=r30
.Llo578:
	lis		r3,(Dcm_LCfg+145)@ha		# stdRetVal=r3
	lbz		r3,(Dcm_LCfg+145)@l(r3)		# stdRetVal=r3 stdRetVal=r3
	se_cmp		r0,r3		# stdRetVal=r0 stdRetVal=r3
	bc		0,0,.L1077	# ge
#       {
#          stdRetVal = Dcm_LCfg.p_cb_req_services[ServIndReqIndex].start_protocol(p_RequestRxChannel->p_protocol->identifier);
	.d2line		3067
.Llo579:
	lis		r3,(Dcm_LCfg+148)@ha		# stdRetVal=r3
.Llo580:
	lwz		r3,(Dcm_LCfg+148)@l(r3)		# stdRetVal=r3 stdRetVal=r3
	rlwinm		r0,r30,3,21,28		# stdRetVal=r0 ServIndReqIndex=r30
	lwzx		r0,r3,r0		# stdRetVal=r0 stdRetVal=r3
	mtspr		ctr,r0		# stdRetVal=ctr
	lwz		r3,20(r31)		# stdRetVal=r3 p_RequestRxChannel=r31
	lbz		r3,0(r3)		# stdRetVal=r3 stdRetVal=r3
.Llo581:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 1 u
	bcctrl		20,0
.Llo582:
	mr		r0,r3		# stdRetVal=r0 stdRetVal=r3
#          if ((E_OK != stdRetVal) && (Dcm_LCfg.rte_unconnected != stdRetVal)) /* [SWS_Dcm_00674] */
	.d2line		3068
	rlwinm		r3,r3,0,24,31		# stdRetVal=r3 stdRetVal=r3
.Llo583:
	se_cmpi		r3,0		# stdRetVal=r3
.Llo584:
	bc		1,2,.L1078	# eq
.Llo585:
	lis		r3,(Dcm_LCfg+2)@ha		# stdRetVal=r3
.Llo586:
	lbz		r3,(Dcm_LCfg+2)@l(r3)		# stdRetVal=r3 stdRetVal=r3
.Llo587:
	rlwinm		r0,r0,0,24,31		# stdRetVal=r0 stdRetVal=r0
.Llo588:
	se_cmp		r3,r0		# stdRetVal=r3 stdRetVal=r0
#          {
#             ProtocolStartGranted = FALSE;
	.d2line		3070
	diab.li		r0,0		# stdRetVal=r0
	isel		r29,r29,r0,2		# ProtocolStartGranted=r29 ProtocolStartGranted=r29 stdRetVal=r0
.L1078:
#          }
#       }
	.d2line		3072
.Llo589:
	diab.addi		r0,r30,1		# stdRetVal=r0 ServIndReqIndex=r30
	se_addi		r30,1		# ServIndReqIndex=r30 ServIndReqIndex=r30
	b		.L1075
.L1077:
# 
#       /* Application acknowledges the new protocol */
#       if (TRUE == ProtocolStartGranted)
	.d2line		3075
	rlwinm		r3,r29,0,24,31		# stdRetVal=r3 ProtocolStartGranted=r29
.Llo590:
	se_cmpi		r3,1		# stdRetVal=r3
	bc		0,2,.L1072	# ne
#       {
#          /*
#           * [SWS_Dcm_00147] : The session is reset to default session regardless of previous session level.
#           */
#          Dcm_SetSesCtrlType(DCM_DEFAULT_SESSION);
	.d2line		3080
.Llo574:
	diab.li		r3,1		# stdRetVal=r3
	bl		Dcm_SetSesCtrlType
.L1072:
#       }
#    }
#    return ProtocolStartGranted;
	.d2line		3083
	rlwinm		r3,r29,0,24,31		# stdRetVal=r3 ProtocolStartGranted=r29
# }
	.d2line		3084
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo577:
	lwz		r0,36(r1)		# stdRetVal=r0
	mtspr		lr,r0		# stdRetVal=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1851:
	.type		CheckProtocol,@function
	.size		CheckProtocol,.-CheckProtocol
# Number of nodes = 80

# Allocations for CheckProtocol
#	?a4		p_RequestRxChannel
#	?a5		isROESwitch
#	?a6		ServIndReqIndex
#	?a7		ProtocolStartGranted
#	?a8		stdRetVal
# FUNC(void, DCM_CODE) Dcm_SE_DslStateMachine(void)
	.align		2
	.section	.text_vle
        .d2line         2145,22
#$$ld
.L1864:

#$$bf	Dcm_SE_DslStateMachine,interprocedural,rasave,nostackparams
	.globl		Dcm_SE_DslStateMachine
	.d2_cfa_start __cie
Dcm_SE_DslStateMachine:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    Dcm_TimerServerType responsePendingTimeout;
#    uint8 currentHandledServiceId;
#    CONST(DslStateType, AUTOMATIC) oldState = Dcm_DslInstance.dsl_state;
	.d2line		2149
	lis		r3,Dcm_DslInstance@ha
	lwz		r29,Dcm_DslInstance@l(r3)
.Llo609:
	mr		r29,r29		# oldState=r29 oldState=r29
# 
#    /*
#     * Check if an application has required a transition to the default session.
#     */
#    if (TRUE == Dcm_DslInstance.reset_to_default_session)
	.d2line		2154
	lis		r3,(Dcm_DslInstance+23)@ha
	lbz		r0,(Dcm_DslInstance+23)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L868	# ne
#    {
#       Dcm_SetSesCtrlType(DCM_DEFAULT_SESSION);
	.d2line		2156
	diab.li		r3,1
	bl		Dcm_SetSesCtrlType
# 
#       Dcm_DslInstance.reset_to_default_session = FALSE;
	.d2line		2158
	diab.li		r0,0
	lis		r3,(Dcm_DslInstance+23)@ha
	stb		r0,(Dcm_DslInstance+23)@l(r3)
.L868:
#    }
# 
#    switch (Dcm_DslInstance.dsl_state)
	.d2line		2161
	lis		r3,Dcm_DslInstance@ha
	lwz		r6,Dcm_DslInstance@l(r3)
	se_cmpli	r6,6
	se_slwi		r6,2
	e_add2is		r6,.L1872@ha
	bc		1,1,.L942	# gt
	lwz		r7,.L1872@l(r6)
	mtspr		ctr,r7
	bcctr		20,0
.L1872:
#$$sl
	.long		.L869
	.long		.L882
	.long		.L881
	.long		.L911
	.long		.L921
	.long		.L931
	.long		.L931
#$$se
.L869:
	.section	.text_vle
.L1873:
#    {
#       case DSL_IDLE:
#       {
#          Dcm_Cfg_RxChannelPointerType pPendingChannel = NULL_PTR;
	.d2line		2165
	diab.li		r31,0		# pPendingChannel=r31
# 
#          /*
#           * Wait for upper layers to go idle before fetching any pending channel
#           */
#          if (Dcm_DsdIsIdle())
	.d2line		2170
.Llo591:
	bl		Dcm_DsdIsIdle
	e_andi.		r3,r3,255
	bc		1,2,.L870	# eq
#          {
#             pPendingChannel = GetPendingChannel();
	.d2line		2172
	bl		GetPendingChannel
	mr		r31,r3		# pPendingChannel=r31 pPendingChannel=r3
.L870:
#          }
# 
#          /* 
#           * Always set to FALSE to make it easy. The other option would be to change
#           * on transition with a high risk of miss some change.
#           */
#          SetResponsePendingStatus(FALSE);
	.d2line		2179
	diab.li		r0,0
	lis		r3,dslResponsePendingHasBeenSent@ha
	e_add16i		r3,r3,dslResponsePendingHasBeenSent@l
	stb		r0,0(r3)
# 
#          /* Request received */
#          if (NULL_PTR != pPendingChannel)
	.d2line		2182
	se_cmpi		r31,0		# pPendingChannel=r31
	bc		1,2,.L881	# eq
	.section	.text_vle
.L1879:
#          {
#             /* Check whether or not it is a switching to/from a ROE protocol. */
#             CONST(boolean, AUTOMATIC) isROESwitch = checkROESwitch(pPendingChannel);
	.d2line		2185
	mr		r3,r31		# pPendingChannel=r3 pPendingChannel=r31
	bl		checkROESwitch
.Llo631:
	mr		r30,r3		# isROESwitch=r30 isROESwitch=r3
# 
#             /* A new request is received */
#             Dcm_DslInstance.p_active_rx_channel = pPendingChannel;
	.d2line		2188
	lis		r3,(Dcm_DslInstance+36)@ha		# pPendingChannel=r3
.Llo632:
	stw		r31,(Dcm_DslInstance+36)@l(r3)		# pPendingChannel=r3 pPendingChannel=r31
# 
#             /*
#              * The current networkId is possibly needed to notify ComM
#              * after the active channel is released.
#              */
#             Dcm_DslInstance.networkId = Dcm_DslInstance.p_active_rx_channel->networkId;
	.d2line		2194
	mr		r3,r31		# pPendingChannel=r3 pPendingChannel=r31
	lbz		r0,2(r3)		# pPendingChannel=r3
	lis		r3,(Dcm_DslInstance+26)@ha		# pPendingChannel=r3
	stb		r0,(Dcm_DslInstance+26)@l(r3)		# pPendingChannel=r3
# 
#             if ((NULL_PTR != Dcm_DslInstance.p_active_protocol) && (Dcm_DslInstance.p_active_rx_channel->p_protocol != Dcm_DslInstance.p_active_protocol))
	.d2line		2196
	lis		r3,(Dcm_DslInstance+8)@ha		# pPendingChannel=r3
	lwz		r0,(Dcm_DslInstance+8)@l(r3)		# pPendingChannel=r3
	se_cmpi		r0,0
	bc		1,2,.L873	# eq
.Llo633:
	lis		r3,(Dcm_DslInstance+36)@ha		# pPendingChannel=r3
	lwz		r3,(Dcm_DslInstance+36)@l(r3)		# pPendingChannel=r3 pPendingChannel=r3
	lwz		r0,20(r3)		# pPendingChannel=r3
	lis		r3,(Dcm_DslInstance+8)@ha		# pPendingChannel=r3
	lwz		r3,(Dcm_DslInstance+8)@l(r3)		# pPendingChannel=r3 pPendingChannel=r3
	se_cmpl		r0,r3		# pPendingChannel=r3
	bc		1,2,.L873	# eq
#             {
#                /* Previous protocol was preempted */
#                PreemptProtocol(isROESwitch);
	.d2line		2199
	mr		r3,r30		# isROESwitch=r3 isROESwitch=r30
	bl		PreemptProtocol
.L873:
#             }
# 
#             if (TRUE == CheckProtocol(pPendingChannel, isROESwitch))
	.d2line		2202
	mr		r3,r31		# pPendingChannel=r3 pPendingChannel=r31
	mr		r4,r30		# isROESwitch=r4 isROESwitch=r30
	bl		CheckProtocol
	rlwinm		r3,r3,0,24,31		# pPendingChannel=r3 pPendingChannel=r3
	se_cmpi		r3,1		# pPendingChannel=r3
	bc		0,2,.L874	# ne
#             {
#                /* Set active protocol to protocol of new request */
#                Dcm_DslInstance.p_active_protocol = Dcm_DslInstance.p_active_rx_channel->p_protocol;
	.d2line		2205
.Llo592:
	lis		r3,(Dcm_DslInstance+36)@ha		# pPendingChannel=r3
.Llo610:
	lwz		r3,(Dcm_DslInstance+36)@l(r3)		# pPendingChannel=r3 pPendingChannel=r3
	lwz		r4,20(r3)		# pPendingChannel=r4 pPendingChannel=r3
	lis		r3,(Dcm_DslInstance+8)@ha		# pPendingChannel=r3
	stw		r4,(Dcm_DslInstance+8)@l(r3)		# pPendingChannel=r3 pPendingChannel=r4
# 
#                /* Update the debug variable Dcm_DbgActiveProtocol. */
#                Dcm_DbgSetProtocol(Dcm_DslInstance.p_active_protocol->identifier);
	.d2line		2208
	lbz		r0,0(r4)		# pPendingChannel=r4
	lis		r3,Dcm_DbgCurrentProtocol@ha		# pPendingChannel=r3
	e_add16i		r3,r3,Dcm_DbgCurrentProtocol@l		# pPendingChannel=r3 pPendingChannel=r3
	stb		r0,0(r3)		# pPendingChannel=r3
# 
#                if (DCM_DEFAULT_SESSION == Dcm_DslInstance.active_session)
	.d2line		2210
	lis		r3,(Dcm_DslInstance+13)@ha		# pPendingChannel=r3
	lbz		r0,(Dcm_DslInstance+13)@l(r3)		# pPendingChannel=r3
	se_cmpi		r0,1
	bc		0,2,.L875	# ne
#                {
#                   /*
#                    * [SWS_Dcm_00163]: Stay in full communication mode when a request is received in the default session
#                    */
#                   ActivateDiagnosticCommunication(Dcm_DslInstance.p_active_rx_channel->networkId);
	.d2line		2215
.Llo611:
	lis		r3,(Dcm_DslInstance+36)@ha		# pPendingChannel=r3
.Llo612:
	lwz		r3,(Dcm_DslInstance+36)@l(r3)		# pPendingChannel=r3 pPendingChannel=r3
	lbz		r3,2(r3)		# pPendingChannel=r3 pPendingChannel=r3
.Llo613:
	bl		ComM_DCM_ActiveDiagnostic
	diab.li		r0,1
	lis		r3,Dcm_DbgCurrentDiagnosticActivity@ha		# pPendingChannel=r3
.Llo614:
	e_add16i		r3,r3,Dcm_DbgCurrentDiagnosticActivity@l		# pPendingChannel=r3 pPendingChannel=r3
	stb		r0,0(r3)		# pPendingChannel=r3
.L875:
#                }
# 
#                /*
#                 * Initialise variable on entry to DSL_PROCESS_SERVICE
#                 *
#                 * Shall be done before forward of indication to DSD since it might drop it
#                 * by instant (DcmRespondAllRequest == false).
#                 */
#                Dcm_DslInstance.transmit_no_response = FALSE;
	.d2line		2224
.Llo615:
	diab.li		r0,0
	lis		r3,(Dcm_DslInstance+21)@ha		# pPendingChannel=r3
.Llo616:
	stb		r0,(Dcm_DslInstance+21)@l(r3)		# pPendingChannel=r3
#                Dcm_DslInstance.protocol_stopped = FALSE;
	.d2line		2225
	lis		r3,(Dcm_DslInstance+20)@ha		# pPendingChannel=r3
	stb		r0,(Dcm_DslInstance+20)@l(r3)		# pPendingChannel=r3
# 
# #if (DCM_PAGEDBUFFER_ENABLED == STD_ON)
#                Dcm_DslInstance.transmit_aborted = FALSE;
#                Dcm_DslInstance.page_length = (uint16)0U;
# #endif /* DCM_PAGEDBUFFER_ENABLED */
# 
#                /* Forward indication to DSD */
#                Dcm_DsdRxIndication(Dcm_DslInstance.p_active_rx_channel);
	.d2line		2233
	lis		r3,(Dcm_DslInstance+36)@ha		# pPendingChannel=r3
	lwz		r3,(Dcm_DslInstance+36)@l(r3)		# pPendingChannel=r3 pPendingChannel=r3
.Llo617:
	bl		Dcm_DsdRxIndication
# 
#                /* Fetch the P2 server adjust time until sending NRC 0x78 */
#                Dcm_GetSesTimingValues(&responsePendingTimeout);
	.d2line		2236
	diab.addi		r3,r1,8		# pPendingChannel=r3
	bl		Dcm_GetSesTimingValues
#                TimerStart(Dcm_DslInstance.response_pending_timer, responsePendingTimeout.timer_p2_server);
	.d2line		2237
	bl		SchM_Enter_Dcm_EaTimers
	lhz		r0,8(r1)
	lis		r3,(Dcm_DslInstance+16)@ha		# pPendingChannel=r3
.Llo618:
	sth		r0,(Dcm_DslInstance+16)@l(r3)		# pPendingChannel=r3
	bl		SchM_Exit_Dcm_EaTimers
#                Dcm_DslInstance.response_pending_timer_elapsed = FALSE;
	.d2line		2238
.Llo619:
	diab.li		r0,0
	lis		r3,(Dcm_DslInstance+19)@ha		# pPendingChannel=r3
.Llo620:
	stb		r0,(Dcm_DslInstance+19)@l(r3)		# pPendingChannel=r3
# 
#                /* Reset the pending counter */
#                Dcm_DslInstance.response_pending_counter = 0;
	.d2line		2241
	lis		r3,(Dcm_DslInstance+18)@ha		# pPendingChannel=r3
	stb		r0,(Dcm_DslInstance+18)@l(r3)		# pPendingChannel=r3
# 
#                Dcm_DslInstance.dsl_state = DSL_PROCESS_SERVICE;
	.d2line		2243
	diab.li		r0,1
	lis		r3,Dcm_DslInstance@ha		# pPendingChannel=r3
	e_add16i		r3,r3,Dcm_DslInstance@l		# pPendingChannel=r3 pPendingChannel=r3
	stw		r0,0(r3)		# pPendingChannel=r3
	b		.L881
.L874:
#             }
#             /*
#              * [SWS_Dcm_00674]
#              * The protocol was rejected by application
#              * Return NRC 0x22 (Conditions not correct)
#              */
#             else if (E_OK == TransmitIntermediateResponse(Dcm_DslInstance.p_active_rx_channel->p_txchannel,
	.d2line		2250
.Llo621:
	lis		r3,(Dcm_DslInstance+36)@ha		# pPendingChannel=r3
.Llo622:
	lwz		r3,(Dcm_DslInstance+36)@l(r3)		# pPendingChannel=r3 pPendingChannel=r3
	lwz		r4,12(r3)		# pPendingChannel=r4 pPendingChannel=r3
	lwz		r4,4(r4)		# pPendingChannel=r4 pPendingChannel=r4
	lbz		r4,0(r4)		# pPendingChannel=r4 pPendingChannel=r4
	lwz		r3,24(r3)		# pPendingChannel=r3 pPendingChannel=r3
.Llo623:
	diab.li		r5,34
	bl		TransmitIntermediateResponse
.Llo624:
	rlwinm		r3,r3,0,24,31		# pPendingChannel=r3 pPendingChannel=r3
	se_cmpi		r3,0		# pPendingChannel=r3
	bc		0,2,.L879	# ne
#                                                          Dcm_DslInstance.p_active_rx_channel->p_buffer->ptr[0],
#                                                          DCM_E_CONDITIONSNOTCORRECT))
#             {
#                Dcm_DslInstance.dsl_state = DSL_WAIT_CONF;
	.d2line		2254
.Llo625:
	diab.li		r0,5
	lis		r3,Dcm_DslInstance@ha		# pPendingChannel=r3
.Llo626:
	e_add16i		r3,r3,Dcm_DslInstance@l		# pPendingChannel=r3 pPendingChannel=r3
	stw		r0,0(r3)		# pPendingChannel=r3
	b		.L881
.L879:
#             }
#             else
#             {
#                /*
#                 * Failed to send error response. Release the RxChannel
#                 */
#                ReleaseRxChannel(Dcm_DslInstance.p_active_rx_channel);
	.d2line		2261
.Llo627:
	lis		r3,(Dcm_DslInstance+36)@ha		# pPendingChannel=r3
.Llo628:
	lwz		r3,(Dcm_DslInstance+36)@l(r3)		# pPendingChannel=r3 pPendingChannel=r3
.Llo629:
	bl		ReleaseRxChannel
	.section	.text_vle
.L1880:
	b		.L881
	.section	.text_vle
.L1874:
.L882:
	.section	.text_vle
.L1885:
#             }
#          }
#          break;
#       }
# 
#       case DSL_PROCESS_SERVICE:
#       {
#          CONST(Dcm_Cfg_RxChannelPointerType, DCM_CONST) pPendingChannel = GetPendingChannel();
	.d2line		2269
	bl		GetPendingChannel
	.d2line		2271
	mr.		r6,r3		# pPendingChannel=?a10 pPendingChannel=r3
# 
#          if (NULL_PTR != pPendingChannel)
.Llo634:
	bc		1,2,.L883	# eq
	.section	.text_vle
.L1891:
#          {
#             /* Check whether or not it is a switching to/from a ROE protocol. */
#             CONST(boolean, AUTOMATIC) isROESwitch = checkROESwitch(pPendingChannel);
	.d2line		2274
	mr		r3,r6		# pPendingChannel=r3 pPendingChannel=r6
	bl		checkROESwitch
# 
#             /* A new request preempts active protocol */
#             Dcm_DslInstance.p_preempting_rx_channel = pPendingChannel;
	.d2line		2277
.Llo641:
	lis		r4,(Dcm_DslInstance+40)@ha
	stw		r6,(Dcm_DslInstance+40)@l(r4)		# pPendingChannel=r6
# 
#             /* Stop protocol */
#             PreemptProtocol(isROESwitch);
	.d2line		2280
	mr		r0,r3		# isROESwitch=r0 isROESwitch=r3
	bl		PreemptProtocol
# 
#             /* Send BusyRepeatRequest on preempting channel */
#             Dcm_DslInstance.dsl_state = DSL_SEND_BRR;
	.d2line		2283
.Llo635:
	diab.li		r0,8		# pPendingChannel=r0
.Llo636:
	lis		r3,Dcm_DslInstance@ha		# pPendingChannel=r3
	e_add16i		r3,r3,Dcm_DslInstance@l		# pPendingChannel=r3 pPendingChannel=r3
	stw		r0,0(r3)		# pPendingChannel=r3 pPendingChannel=r0
#             Dcm_DslInstance.preemption_state = DSL_PROCESS_SERVICE;
	.d2line		2284
	diab.li		r0,1		# pPendingChannel=r0
	lis		r3,(Dcm_DslInstance+4)@ha		# pPendingChannel=r3
	stw		r0,(Dcm_DslInstance+4)@l(r3)		# pPendingChannel=r3 pPendingChannel=r0
	.section	.text_vle
.L1892:
.Llo637:
	b		.L881
.L883:
#          }
#          else
#          {
#             if (TRUE == Dcm_DslInstance.protocol_stopped)
	.d2line		2288
.Llo638:
	lis		r3,(Dcm_DslInstance+20)@ha
	lbz		r0,(Dcm_DslInstance+20)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L888	# ne
#             {
#                ReleaseRxChannel(Dcm_DslInstance.p_active_rx_channel);
	.d2line		2290
.Llo639:
	lis		r3,(Dcm_DslInstance+36)@ha
	lwz		r3,(Dcm_DslInstance+36)@l(r3)
	bl		ReleaseRxChannel
# 
#                /*
#                 * [SWS_Dcm_00164]: Deactivate diagnostic communication in default session when handling is finished
#                 */
#                DeactivateDiagnosticCommunication();
	.d2line		2295
	lis		r3,(Dcm_DslInstance+13)@ha
	lbz		r0,(Dcm_DslInstance+13)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L887	# ne
	lis		r3,(Dcm_DslInstance+26)@ha
	lbz		r3,(Dcm_DslInstance+26)@l(r3)
	bl		ComM_DCM_InactiveDiagnostic
	diab.li		r0,0
	lis		r3,Dcm_DbgCurrentDiagnosticActivity@ha
	e_add16i		r3,r3,Dcm_DbgCurrentDiagnosticActivity@l
	stb		r0,0(r3)
.L887:
# 
#                Dcm_DslInstance.dsl_state = DSL_IDLE;
	.d2line		2297
	diab.li		r0,0
	lis		r3,Dcm_DslInstance@ha
	e_add16i		r3,r3,Dcm_DslInstance@l
	stw		r0,0(r3)
.L888:
#             }
#             else
#             {
#                /* Do nothing */
#             }
# 
#             /* Get current handler service ID to handle number of pending response */
#             currentHandledServiceId = Dcm_DsdGetCurrentHandledServiceID();
	.d2line		2305
	bl		Dcm_DsdGetCurrentHandledServiceID
.Llo593:
	mr		r31,r3		# currentHandledServiceId=r31 currentHandledServiceId=r3
# 
#             if (TRUE == Dcm_DslInstance.transmit_no_response)
	.d2line		2307
.Llo630:
	lis		r3,(Dcm_DslInstance+21)@ha
.Llo594:
	lbz		r0,(Dcm_DslInstance+21)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L889	# ne
#             {
#                StartS3ServerTimer();
	.d2line		2309
.Llo595:
	bl		SchM_Enter_Dcm_EaTimers
	lis		r3,(Dcm_LCfg+6)@ha
	lhz		r0,(Dcm_LCfg+6)@l(r3)
	lis		r3,(Dcm_DslInstance+14)@ha
	sth		r0,(Dcm_DslInstance+14)@l(r3)
	bl		SchM_Exit_Dcm_EaTimers
#                ReleaseRxChannel(Dcm_DslInstance.p_active_rx_channel);
	.d2line		2310
	lis		r3,(Dcm_DslInstance+36)@ha
	lwz		r3,(Dcm_DslInstance+36)@l(r3)
	bl		ReleaseRxChannel
# 
#                /*
#                 * [SWS_Dcm_00164]: Deactivate diagnostic communication in default session when handling is finished
#                 */
#                DeactivateDiagnosticCommunication();
	.d2line		2315
	lis		r3,(Dcm_DslInstance+13)@ha
	lbz		r0,(Dcm_DslInstance+13)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L892	# ne
.Llo596:
	lis		r3,(Dcm_DslInstance+26)@ha
	lbz		r3,(Dcm_DslInstance+26)@l(r3)
	bl		ComM_DCM_InactiveDiagnostic
	diab.li		r0,0
	lis		r3,Dcm_DbgCurrentDiagnosticActivity@ha
	e_add16i		r3,r3,Dcm_DbgCurrentDiagnosticActivity@l
	stb		r0,0(r3)
.L892:
# 
#                Dcm_DslInstance.dsl_state = DSL_IDLE;
	.d2line		2317
	diab.li		r0,0
	lis		r3,Dcm_DslInstance@ha
	e_add16i		r3,r3,Dcm_DslInstance@l
	stw		r0,0(r3)
	b		.L881
.L889:
#             }
#             else if (NULL_PTR != Dcm_DslInstance.p_dsd_tx_channel)
	.d2line		2319
.Llo597:
	lis		r3,(Dcm_DslInstance+28)@ha
	lwz		r0,(Dcm_DslInstance+28)@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L894	# eq
#             {
#                /* DSD Generated a response */
#                Dcm_DslInstance.p_active_tx_channel = Dcm_DslInstance.p_dsd_tx_channel;
	.d2line		2322
	lis		r3,(Dcm_DslInstance+28)@ha
	lwz		r0,(Dcm_DslInstance+28)@l(r3)
	lis		r4,(Dcm_DslInstance+32)@ha
	stw		r0,(Dcm_DslInstance+32)@l(r4)
#                Dcm_DslInstance.p_dsd_tx_channel = NULL_PTR;
	.d2line		2323
	diab.li		r0,0
	stw		r0,(Dcm_DslInstance+28)@l(r3)
# 
#                /*
#                 * State has to be switched before the fake negative response in order to do a proper clean up.
#                 */
#                Dcm_DslInstance.dsl_state = DSL_WAIT_CONF;
	.d2line		2328
	diab.li		r0,5
	lis		r3,Dcm_DslInstance@ha
	e_add16i		r3,r3,Dcm_DslInstance@l
	stw		r0,0(r3)
# 
#                /* Check if it is a negative response that shall be sent */
#                ShallNegativeResponseBeSent(Dcm_DslInstance.p_active_tx_channel->p_buffer->ptr[0]);
	.d2line		2331
	lwz		r3,(Dcm_DslInstance+32)@l(r4)
	lwz		r3,4(r3)
	lwz		r3,4(r3)
	lbz		r0,0(r3)
	cmpi		0,0,r0,127
	bc		0,2,.L896	# ne
.Llo598:
	diab.li		r0,1
	lis		r3,(Dcm_DslInstance+22)@ha
	stb		r0,(Dcm_DslInstance+22)@l(r3)
	b		.L897
.L896:
	diab.li		r0,0
	lis		r3,(Dcm_DslInstance+22)@ha
	stb		r0,(Dcm_DslInstance+22)@l(r3)
.L897:
# 
#                if (DCM_FULL_COMM_MODE != *Dcm_DslInstance.p_active_rx_channel->p_commMode)
	.d2line		2333
	lis		r3,(Dcm_DslInstance+36)@ha
	lwz		r3,(Dcm_DslInstance+36)@l(r3)
	lwz		r3,36(r3)
	lwz		r0,0(r3)
	se_cmpi		r0,2
	bc		1,2,.L898	# eq
#                {
#                   /* Simulate confirmation when not in Full communication mode */
#                   Dcm_TpTxConfirmation(Dcm_DslInstance.p_active_tx_channel->conf_pdu_id, NTFRSLT_OK);
	.d2line		2336
	lis		r3,(Dcm_DslInstance+32)@ha
	lwz		r3,(Dcm_DslInstance+32)@l(r3)
	lhz		r3,2(r3)
	diab.li		r4,0
	bl		Dcm_TpTxConfirmation
	b		.L881
.L898:
#                }
#                else if (E_OK != TransmitResponse(Dcm_DslInstance.p_active_tx_channel, Dcm_DslInstance.p_active_tx_channel->p_buffer))
	.d2line		2338
	lis		r3,(Dcm_DslInstance+32)@ha
	lwz		r3,(Dcm_DslInstance+32)@l(r3)
	lwz		r4,4(r3)
	bl		TransmitResponse
	e_andi.		r3,r3,255
	bc		1,2,.L881	# eq
#                {
#                   /* Simulate confirmation failure when PduR_DcmTransmit was not ok */
#                   Dcm_TpTxConfirmation(Dcm_DslInstance.p_active_tx_channel->conf_pdu_id, NTFRSLT_E_NOT_OK);
	.d2line		2341
	lis		r3,(Dcm_DslInstance+32)@ha
	lwz		r3,(Dcm_DslInstance+32)@l(r3)
	lhz		r3,2(r3)
	diab.li		r4,1
	bl		Dcm_TpTxConfirmation
	b		.L881
.L894:
#                }
#                else
#                {
#                   /*
#                    * Successfully sent response, wait for confirm.
#                    */
# #if (DCM_PAGEDBUFFER_ENABLED == STD_ON)
#                   if (TRUE == Dcm_DslInstance.process_page)
#                   {
#                      /* More pages to process from Dsd, wait for PduR to read current data */
#                      Dcm_DslInstance.process_page = FALSE;
#                      Dcm_DslInstance.dsl_state = DSL_WAIT_READ_DATA;
#                   }
#                   else
#                   {
#                      /* Response is complete */
#                   }
# #endif
#                }
#             }
#             else if (!Dcm_DslInstance.response_pending_timer_elapsed)
	.d2line		2362
.Llo599:
	lis		r3,(Dcm_DslInstance+19)@ha
	lbz		r0,(Dcm_DslInstance+19)@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L881	# eq
#             {
#                /* Response pending timer has not elapsed yet so stay in this state */
#             }
#             else if ((Dcm_pPbCfg->max_num_resp_pend != 0xFF) && (Dcm_DslInstance.response_pending_counter >= Dcm_pPbCfg->max_num_resp_pend))
	.d2line		2366
	lis		r3,Dcm_pPbCfg@ha
	lwz		r3,Dcm_pPbCfg@l(r3)
	lbz		r0,20(r3)
	cmpi		0,0,r0,255
	bc		1,2,.L905	# eq
	lis		r3,(Dcm_DslInstance+18)@ha
	lbz		r0,(Dcm_DslInstance+18)@l(r3)
	lis		r3,Dcm_pPbCfg@ha
	lwz		r3,Dcm_pPbCfg@l(r3)
	lbz		r3,20(r3)
	se_cmp		r0,r3
	bc		1,0,.L905	# lt
#             {
#                /*
#                 * Switch state regardless of send result since aborting . State has to
#                 * be switched before the fake negative response in order to do a proper clean up.
#                 * Switch to DSL_WAIT_CONF even if it's a negative response since there will never be any
#                 * positive response.
#                 *
#                 * Also inform the DSD about the cancellation for clean purpose.
#                 */
#                Dcm_DsdServiceCancelled();
	.d2line		2376
	bl		Dcm_DsdServiceCancelled
#                Dcm_DslInstance.dsl_state = DSL_WAIT_CONF;
	.d2line		2377
	diab.li		r0,5
	lis		r3,Dcm_DslInstance@ha
	e_add16i		r3,r3,Dcm_DslInstance@l
	stw		r0,0(r3)
#                /*
#                 * Max number of response pending sent - send General reject and abort processing
#                 */
#                if (E_OK != TransmitIntermediateResponse(Dcm_DslInstance.p_active_rx_channel->p_txchannel,
	.d2line		2381
	lis		r3,(Dcm_DslInstance+36)@ha
	lwz		r3,(Dcm_DslInstance+36)@l(r3)
	lwz		r3,24(r3)
	mr		r4,r31		# currentHandledServiceId=r4 currentHandledServiceId=r31
	diab.li		r5,16
	bl		TransmitIntermediateResponse
	e_andi.		r3,r3,255
	bc		1,2,.L881	# eq
#                                                         currentHandledServiceId,
#                                                         DCM_E_GENERALREJECT))
#                {
#                   /*
#                    * Never sent, confirm the transmit in order to clean up.
#                    */
#                   ReleaseRxChannel(Dcm_DslInstance.p_active_rx_channel);
	.d2line		2388
.Llo600:
	lis		r3,(Dcm_DslInstance+36)@ha
	lwz		r3,(Dcm_DslInstance+36)@l(r3)
	bl		ReleaseRxChannel
#                   Dcm_DslInstance.tx_confirmation = TRUE;
	.d2line		2389
	diab.li		r0,1
	lis		r3,(Dcm_DslInstance+24)@ha
	stb		r0,(Dcm_DslInstance+24)@l(r3)
	b		.L881
.L905:
#                }
#                else
#                {
#                   /*
#                    * Sent general reject, wait for confirmation
#                    */
#                }
#             }
#             /*
#              * Send pending response if not 255 [Dcm693_Conf] or limit reached
#              */
#             else if (E_OK == TransmitIntermediateResponse(Dcm_DslInstance.p_active_rx_channel->p_txchannel,
	.d2line		2401
.Llo601:
	lis		r3,(Dcm_DslInstance+36)@ha
	lwz		r3,(Dcm_DslInstance+36)@l(r3)
	lwz		r3,24(r3)
	mr		r4,r31		# currentHandledServiceId=r4 currentHandledServiceId=r31
	diab.li		r5,120
	bl		TransmitIntermediateResponse
	e_andi.		r3,r3,255
	bc		0,2,.L881	# ne
#                                                           currentHandledServiceId,
#                                                           DCM_INT_NRC_REQUESTCORRECTLYRECEIVEDRESPONSEPENDING))
#             {
#                Dcm_DslInstance.dsl_state = DSL_WAIT_CONF_RCRRP;
	.d2line		2405
.Llo602:
	diab.li		r0,3
	lis		r3,Dcm_DslInstance@ha
	e_add16i		r3,r3,Dcm_DslInstance@l
	stw		r0,0(r3)
#                Dcm_DsdClearSuppressPositiveResponse();
	.d2line		2406
	bl		Dcm_DsdClearSuppressPositiveResponse
	b		.L881
	.section	.text_vle
.L1886:
.L911:
	.section	.text_vle
.L1897:
#             }
#             else
#             {
#                /* Do nothing - Retry of Response Pending sending will take place in next schedule */
#             }
#          }
#          break;
#       }
# 
#       case DSL_WAIT_CONF_RCRRP:
#       {
#          CONST(Dcm_Cfg_RxChannelPointerType, DCM_CONST) pPendingChannel = GetPendingChannel();
	.d2line		2418
	bl		GetPendingChannel
	.d2line		2426
	mr.		r6,r3		# pPendingChannel=?a12 pPendingChannel=r3
# 
#          /*
#           * Always set to TRUE to make it easy. The other option would be to change
#           * on transition with a high risk of miss some change.
#           */
#          SetResponsePendingStatus(TRUE);
	.d2line		2424
.Llo642:
	diab.li		r0,1
	lis		r3,dslResponsePendingHasBeenSent@ha
	e_add16i		r3,r3,dslResponsePendingHasBeenSent@l
	stb		r0,0(r3)
# 
#          if (NULL_PTR != pPendingChannel)
	bc		1,2,.L913	# eq
	.section	.text_vle
.L1903:
#          {
#             /* Check whether or not it is a switching to/from a ROE protocol. */
#             CONST(boolean, AUTOMATIC) isROESwitch = checkROESwitch(pPendingChannel);
	.d2line		2429
	mr		r3,r6		# pPendingChannel=r3 pPendingChannel=r6
	bl		checkROESwitch
# 
#             /* Protocol was preempted */
#             Dcm_DslInstance.p_preempting_rx_channel = pPendingChannel;
	.d2line		2432
.Llo654:
	lis		r4,(Dcm_DslInstance+40)@ha
	stw		r6,(Dcm_DslInstance+40)@l(r4)		# pPendingChannel=r6
#             PreemptProtocol(isROESwitch);
	.d2line		2433
	mr		r0,r3		# isROESwitch=r0 isROESwitch=r3
	bl		PreemptProtocol
#             Dcm_DslInstance.response_pending_timer_elapsed = FALSE;
	.d2line		2434
.Llo643:
	diab.li		r0,0		# pPendingChannel=r0
.Llo644:
	lis		r3,(Dcm_DslInstance+19)@ha		# pPendingChannel=r3
	stb		r0,(Dcm_DslInstance+19)@l(r3)		# pPendingChannel=r3 pPendingChannel=r0
# 
#             if (FALSE != Dcm_DslInstance.tx_confirmation)
	.d2line		2436
	lis		r3,(Dcm_DslInstance+24)@ha		# pPendingChannel=r3
	lbz		r0,(Dcm_DslInstance+24)@l(r3)		# pPendingChannel=r0 pPendingChannel=r3
	se_cmpi		r0,0		# pPendingChannel=r0
	bc		1,2,.L914	# eq
#             {
#                /* Can't cancel, TX confirmation already received. Send BusyRepeatRequest */
#                Dcm_DslInstance.dsl_state = DSL_SEND_BRR;
	.d2line		2439
.Llo645:
	diab.li		r0,8		# pPendingChannel=r0
.Llo646:
	lis		r3,Dcm_DslInstance@ha		# pPendingChannel=r3
	e_add16i		r3,r3,Dcm_DslInstance@l		# pPendingChannel=r3 pPendingChannel=r3
	stw		r0,0(r3)		# pPendingChannel=r3 pPendingChannel=r0
	b		.L915
.L914:
#             }
#             else
#             {
#                Dcm_DslInstance.dsl_state = DSL_WAIT_CONF_PREEMPTION;
	.d2line		2443
.Llo647:
	diab.li		r0,2		# pPendingChannel=r0
.Llo648:
	lis		r3,Dcm_DslInstance@ha		# pPendingChannel=r3
	e_add16i		r3,r3,Dcm_DslInstance@l		# pPendingChannel=r3 pPendingChannel=r3
	stw		r0,0(r3)		# pPendingChannel=r3 pPendingChannel=r0
# 
#                /*
#                 * MISRA-C:2004 RULE 16.10 VIOLATION:
#                 * If a function returns error information, then that error information shall be tested.
#                 * Ignore the result of PduR_DcmCancelTransmit, a confirmation will always be received.
#                 * If successful cancellation: Wait for cancel tx confirmation
#                 * If unsuccessful cancellation: Send BusyRepeatRequest once RCRRP confirmation is received
#                 */
#                (void)PduR_DcmCancelTransmit(Dcm_DslInstance.p_active_tx_channel->tx_pdu_id);
	.d2line		2452
	lis		r3,(Dcm_DslInstance+32)@ha		# pPendingChannel=r3
	lwz		r3,(Dcm_DslInstance+32)@l(r3)		# pPendingChannel=r3 pPendingChannel=r3
	lhz		r3,0(r3)		# pPendingChannel=r3 pPendingChannel=r3
	bl		PduR_DcmCancelTransmit
.L915:
#             }
# 
#             Dcm_DslInstance.preemption_state = DSL_WAIT_CONF_RCRRP;
	.d2line		2455
.Llo649:
	diab.li		r0,3		# pPendingChannel=r0
.Llo650:
	lis		r3,(Dcm_DslInstance+4)@ha		# pPendingChannel=r3
	stw		r0,(Dcm_DslInstance+4)@l(r3)		# pPendingChannel=r3 pPendingChannel=r0
	.section	.text_vle
.L1904:
.Llo651:
	b		.L881
.L913:
#          }
#          else if (TRUE == Dcm_DslInstance.tx_confirmation)
	.d2line		2457
.Llo652:
	lis		r3,(Dcm_DslInstance+24)@ha
	lbz		r0,(Dcm_DslInstance+24)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L881	# ne
#          {
#             /* Fetch the P2 star server adjust time until sending NRC 0x78 */
#             Dcm_GetSesTimingValues(&responsePendingTimeout);
	.d2line		2460
.Llo653:
	diab.addi		r3,r1,8
	bl		Dcm_GetSesTimingValues
#             TimerStart(Dcm_DslInstance.response_pending_timer, responsePendingTimeout.timer_p2_star_server);
	.d2line		2461
	bl		SchM_Enter_Dcm_EaTimers
	lhz		r0,10(r1)
	lis		r3,(Dcm_DslInstance+16)@ha
	sth		r0,(Dcm_DslInstance+16)@l(r3)
	bl		SchM_Exit_Dcm_EaTimers
#             Dcm_DslInstance.response_pending_timer_elapsed = FALSE;
	.d2line		2462
	diab.li		r0,0
	lis		r3,(Dcm_DslInstance+19)@ha
	stb		r0,(Dcm_DslInstance+19)@l(r3)
# 
#             /*
#              * Increase the counter and switch back to process service
#              */
#             Dcm_DslInstance.response_pending_counter++;
	.d2line		2467
	lis		r4,(Dcm_DslInstance+18)@ha
	lbz		r3,(Dcm_DslInstance+18)@l(r4)
	se_addi		r3,1
	stb		r3,(Dcm_DslInstance+18)@l(r4)
#             Dcm_DslInstance.dsl_state = DSL_PROCESS_SERVICE;
	.d2line		2468
	diab.li		r0,1
	lis		r3,Dcm_DslInstance@ha
	e_add16i		r3,r3,Dcm_DslInstance@l
	stw		r0,0(r3)
# 
#             /*
#              * Call DSD in order to confirm the RCRRP transmission.
#              * The DSD might not be waiting (in case of P2/P2* timeout) for such a confirm, but will then ignore it.
#              */
#             Dcm_DsdRcrrpConfirmation();
	.d2line		2474
	bl		Dcm_DsdRcrrpConfirmation
	b		.L881
	.section	.text_vle
.L1898:
.L921:
#          }
#          else
#          {
#             /* Stay in this state */
#          }
#          break;
#       }
# 
#       case DSL_WAIT_CONF_PREEMPTION:
#       {
#          /* Wait for confirmation - state change done in confirmation */
#          break;
#       }
# 
#       case DSL_WAIT_CONF_BRR:
#       {
#          if (TRUE == Dcm_DslInstance.tx_confirmation)
	.d2line		2491
	lis		r3,(Dcm_DslInstance+24)@ha
	lbz		r0,(Dcm_DslInstance+24)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L881	# ne
	lis		r3,(Dcm_DslInstance+4)@ha
	lwz		r3,(Dcm_DslInstance+4)@l(r3)
#          {
#             switch (Dcm_DslInstance.preemption_state)
#             {
#                case DSL_WAIT_CONF:
#                case DSL_WAIT_PROCESS_PAGE:
#                case DSL_WAIT_READ_DATA:
	.d2line		2497
	diab.addi		r3,r3,-5
	se_cmpli	r3,2
	bc		1,1,.L927	# gt
#                {
# 
#                   /* Prepeare accepting a new request */
#                   Dcm_DslInstance.dsl_state = DSL_IDLE;
	.d2line		2501
	diab.li		r0,0
	lis		r3,Dcm_DslInstance@ha
	e_add16i		r3,r3,Dcm_DslInstance@l
	stw		r0,0(r3)
	b		.L926
.L927:
#                   break;
#                }
# 
#                default:
#                {
#                   /* Shall always be DSL_PROCESS_SERVICE or DSL_WAIT_CONF_RCRRP, all other values are covered above. */
#                   DCM_ASSERT_STATE(SID_MAINFUNCTION, (DSL_PROCESS_SERVICE == Dcm_DslInstance.preemption_state) || (DSL_WAIT_CONF_RCRRP == Dcm_DslInstance.preemption_state))
	.d2line		2508
	lis		r3,(Dcm_DslInstance+4)@ha
	lwz		r0,(Dcm_DslInstance+4)@l(r3)
	se_cmpi		r0,1
	bc		1,2,.L947	# eq
	lis		r3,(Dcm_DslInstance+4)@ha
	lwz		r0,(Dcm_DslInstance+4)@l(r3)
	se_cmpi		r0,3
	bc		1,2,.L947	# eq
	diab.li		r0,0
	b		.L948
.L947:
	diab.li		r0,1
.L948:
	e_andi.		r0,r0,255
	bc		0,2,.L928	# ne
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,37
	diab.li		r6,34
	bl		Det_ReportError
.L928:
# 
#                   /* Continue clean-up after Dcm_DsdStopProtocol() */
#                   Dcm_DslInstance.dsl_state = DSL_PROCESS_SERVICE;
	.d2line		2511
	diab.li		r0,1
	lis		r3,Dcm_DslInstance@ha
	e_add16i		r3,r3,Dcm_DslInstance@l
	stw		r0,0(r3)
.L926:
#                   break;
#                }
#             }
# 
#             if (NULL_PTR != Dcm_DslInstance.p_preempting_rx_channel)
	.d2line		2516
	lis		r3,(Dcm_DslInstance+40)@ha
	lwz		r0,(Dcm_DslInstance+40)@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L881	# eq
#             {
#                /*
#                 * If the Dcm_DslInstance.preemption_state is in wrong state( see above "default:"),
#                 * Dsl state will stay in "DSL_WAIT_CONF_BRR" and this may cause crash if
#                 * Dcm_DslInstance.p_preempting_rx_channel is already NULL_PTR.
#                 */
#                ReleaseRxChannel(Dcm_DslInstance.p_preempting_rx_channel);
	.d2line		2523
	lis		r3,(Dcm_DslInstance+40)@ha
	lwz		r3,(Dcm_DslInstance+40)@l(r3)
	bl		ReleaseRxChannel
#                Dcm_DslInstance.p_preempting_rx_channel = NULL_PTR;
	.d2line		2524
	diab.li		r0,0
	lis		r3,(Dcm_DslInstance+40)@ha
	stw		r0,(Dcm_DslInstance+40)@l(r3)
	b		.L881
.L931:
	.section	.text_vle
.L1909:
#             }
#          }
#          break;
#       }
# 
#       case DSL_WAIT_CONF:
#       case DSL_WAIT_PROCESS_PAGE:
#       {
#          CONST(Dcm_Cfg_RxChannelPointerType, DCM_CONST) pPendingChannel = GetPendingChannel();
	.d2line		2533
	bl		GetPendingChannel
.Llo655:
	mr		r31,r3		# pPendingChannel=r31 pPendingChannel=r3
# 
#          if (TRUE == Dcm_DslInstance.tx_confirmation)
	.d2line		2535
.Llo603:
	lis		r3,(Dcm_DslInstance+24)@ha
.Llo656:
	lbz		r0,(Dcm_DslInstance+24)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L932	# ne
#          {
#             Dcm_DsdTxConfirmation(Dcm_DslInstance.tx_confirmation_result);
	.d2line		2537
.Llo657:
	lis		r3,(Dcm_DslInstance+25)@ha
	lbz		r3,(Dcm_DslInstance+25)@l(r3)
	bl		Dcm_DsdTxConfirmation
#             Dcm_DslInstance.dsl_state = DSL_IDLE;
	.d2line		2538
	diab.li		r0,0
	lis		r3,Dcm_DslInstance@ha
	e_add16i		r3,r3,Dcm_DslInstance@l
	stw		r0,0(r3)
# 
# #if (DCM_PAGEDBUFFER_ENABLED == STD_ON)
#             Dcm_DslInstance.page_length = (uint16)0U;
# #endif /* DCM_PAGEDBUFFER_ENABLED */
# 
#             if (NULL_PTR == pPendingChannel)
	.d2line		2544
	se_cmpi		r31,0		# pPendingChannel=r31
	bc		0,2,.L933	# ne
	.section	.text_vle
.L1915:
#             {
#                CONST(Dcm_Cfg_RxChannelPointerType, AUTOMATIC) pRxChannel = *(Dcm_DslInstance.p_active_tx_channel->pp_rx_channel);
	.d2line		2546
.Llo604:
	lis		r3,(Dcm_DslInstance+32)@ha
	lwz		r3,(Dcm_DslInstance+32)@l(r3)
	lwz		r3,12(r3)
	lwz		r31,0(r3)		# pPendingChannel=r31
.Llo658:
	mr		r31,r31		# pRxChannel=r31 pRxChannel=r31
#                StartS3ServerTimer();
	.d2line		2547
	bl		SchM_Enter_Dcm_EaTimers
	lis		r3,(Dcm_LCfg+6)@ha
	lhz		r0,(Dcm_LCfg+6)@l(r3)
	lis		r3,(Dcm_DslInstance+14)@ha
	sth		r0,(Dcm_DslInstance+14)@l(r3)
	bl		SchM_Exit_Dcm_EaTimers
# 
#                /* [SWS_Dcm_00136] Do not deactivate communication for Roe transmissions since it is not activated by Roe */
#                if (!pRxChannel->is_roe)
	.d2line		2550
	lbz		r0,8(r31)		# pRxChannel=r31
	se_cmpi		r0,0
	bc		0,2,.L881	# ne
#                {
#                   /*
#                   * [SWS_Dcm_00164]: Deactivate diagnostic communication in default session when handling is finished
#                   */
#                   DeactivateDiagnosticCommunication();
	.d2line		2555
.Llo659:
	lis		r3,(Dcm_DslInstance+13)@ha
	lbz		r0,(Dcm_DslInstance+13)@l(r3)
	se_cmpi		r0,1
	bc		0,2,.L881	# ne
	lis		r3,(Dcm_DslInstance+26)@ha
	lbz		r3,(Dcm_DslInstance+26)@l(r3)
	bl		ComM_DCM_InactiveDiagnostic
	diab.li		r0,0
	lis		r3,Dcm_DbgCurrentDiagnosticActivity@ha
	e_add16i		r3,r3,Dcm_DbgCurrentDiagnosticActivity@l
	stb		r0,0(r3)
	.section	.text_vle
.L1916:
	b		.L881
.L933:
#                }
#             }
#             else
#             {
#                /*
#                 * A new request was received. Set the pending channel status back to DCM_CHANNEL_PENDING
#                 * so that it could be retrived at the next schedling.
#                 */
#                *pPendingChannel->p_state = DCM_CHANNEL_PENDING;
	.d2line		2564
.Llo605:
	diab.li		r0,1
	lwz		r3,32(r31)		# pPendingChannel=r31
	stw		r0,0(r3)
	b		.L881
.L932:
#             }
#          }
#          else if (NULL_PTR != pPendingChannel)
	.d2line		2567
	se_cmpi		r31,0		# pPendingChannel=r31
	bc		1,2,.L881	# eq
	.section	.text_vle
.L1921:
#          {
#             /* Check whether or not it is a switching to/from a ROE protocol. */
#             CONST(boolean, AUTOMATIC) isROESwitch = checkROESwitch(pPendingChannel);
	.d2line		2570
	mr		r3,r31		# pPendingChannel=r3 pPendingChannel=r31
	bl		checkROESwitch
# 
#             /* Request was preempted, cancel DcmTransmit */
#             Dcm_DslInstance.p_preempting_rx_channel = pPendingChannel;
	.d2line		2573
.Llo660:
	lis		r4,(Dcm_DslInstance+40)@ha
	stw		r31,(Dcm_DslInstance+40)@l(r4)		# pPendingChannel=r31
#             PreemptProtocol(isROESwitch);
	.d2line		2574
	mr		r0,r3		# isROESwitch=r0 isROESwitch=r3
	bl		PreemptProtocol
# 
#             /*
#             * preemption state could be DSL_WAIT_CONF or DSL_WAIT_PROCESS_PAGE.
#             */
#             Dcm_DslInstance.preemption_state = Dcm_DslInstance.dsl_state;
	.d2line		2579
.Llo661:
	lis		r3,Dcm_DslInstance@ha		# pPendingChannel=r3
	lwz		r0,Dcm_DslInstance@l(r3)		# pPendingChannel=r0 pPendingChannel=r3
	lis		r3,(Dcm_DslInstance+4)@ha		# pPendingChannel=r3
	stw		r0,(Dcm_DslInstance+4)@l(r3)		# pPendingChannel=r3 pPendingChannel=r0
#             Dcm_DslInstance.dsl_state = DSL_WAIT_CONF_PREEMPTION;
	.d2line		2580
	diab.li		r0,2		# pPendingChannel=r0
	lis		r3,Dcm_DslInstance@ha		# pPendingChannel=r3
	e_add16i		r3,r3,Dcm_DslInstance@l		# pPendingChannel=r3 pPendingChannel=r3
	stw		r0,0(r3)		# pPendingChannel=r3 pPendingChannel=r0
# 
#             /*
#              * MISRA-C:2004 RULE 16.10 VIOLATION:
#              * If a function returns error information, then that error information shall be tested.
#              * Ignore the result of PduR_DcmCancelTransmit, a confirmation will always be received.
#              * If successful cancellation: Wait for cancel tx confirmation
#              * If unsuccessful cancellation: Send BusyRepeatRequest once Tx confirmation is received
#              */
#             (void)PduR_DcmCancelTransmit(Dcm_DslInstance.p_active_tx_channel->tx_pdu_id);
	.d2line		2589
	lis		r3,(Dcm_DslInstance+32)@ha		# pPendingChannel=r3
	lwz		r3,(Dcm_DslInstance+32)@l(r3)		# pPendingChannel=r3 pPendingChannel=r3
	lhz		r3,0(r3)		# pPendingChannel=r3 pPendingChannel=r3
	bl		PduR_DcmCancelTransmit
	.section	.text_vle
.L1922:
.Llo606:
	b		.L881
	.section	.text_vle
.L1910:
.L942:
#          }
# 
# #if (DCM_PAGEDBUFFER_ENABLED == STD_ON)
#          else if (TRUE == Dcm_DslInstance.process_page)
#          {
#             Dcm_DslInstance.process_page = FALSE;
#             Dcm_DslInstance.dsl_state = DSL_WAIT_READ_DATA;
#          }
# #endif /* DCM_PAGEDBUFFER_ENABLED */
#          else
#          {
#             /* Stay in this state */
#          }
#          break;
#       }
# 
# #if (DCM_PAGEDBUFFER_ENABLED == STD_ON)
#       case DSL_WAIT_READ_DATA:
#       {
#          CONST(Dcm_Cfg_RxChannelPointerType, DCM_CONST) pPendingChannel = GetPendingChannel();
# 
#          /* This state is completely handled in Dcm_CopyTxData */
#          if (NULL_PTR != pPendingChannel)
#          {
#             /* Check whether or not it is a switching to/from a ROE protocol. */
#             CONST(boolean, AUTOMATIC) isROESwitch = checkROESwitch(pPendingChannel);
# 
#             /* Request was preempted, cancel DcmTransmit */
#             Dcm_DslInstance.p_preempting_rx_channel = pPendingChannel;
#             PreemptProtocol(isROESwitch);
# 
#             Dcm_DslInstance.preemption_state = DSL_WAIT_READ_DATA;
#             Dcm_DslInstance.dsl_state = DSL_WAIT_CONF_PREEMPTION;
# 
#             /*
#              * MISRA-C:2004 RULE 16.10 VIOLATION:
#              * If a function returns error information, then that error information shall be tested.
#              * Ignore the result of PduR_DcmCancelTransmit, a confirmation will always be received.
#              * If successful cancellation: Wait for cancel tx confirmation
#              * If unsuccessful cancellation: Send BusyRepeatRequest once Tx confirmation is received
#              */
#             (void)PduR_DcmCancelTransmit(Dcm_DslInstance.p_active_tx_channel->tx_pdu_id);
#          }
# 
#          break;
#       }
# #endif /* DCM_PAGEDBUFFER_ENABLED */
# 
#       default:
#       {
#          /* Shall always be DSL_SEND_BRR, all other values are covered above. */
#          DCM_ASSERT_STATE(SID_MAINFUNCTION, DSL_SEND_BRR == Dcm_DslInstance.dsl_state)
	.d2line		2641
	lis		r3,Dcm_DslInstance@ha
	lwz		r0,Dcm_DslInstance@l(r3)
	se_cmpi		r0,8
	bc		1,2,.L943	# eq
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,37
	diab.li		r6,34
	bl		Det_ReportError
.L943:
# 
#          if (E_OK == TransmitIntermediateResponse(Dcm_DslInstance.p_preempting_rx_channel->p_txchannel,
	.d2line		2643
	lis		r3,(Dcm_DslInstance+40)@ha
	lwz		r3,(Dcm_DslInstance+40)@l(r3)
	lwz		r4,12(r3)
	lwz		r4,12(r4)
	lwz		r4,0(r4)
	lbz		r4,0(r4)
	lwz		r3,24(r3)
	diab.li		r5,33
	bl		TransmitIntermediateResponse
	e_andi.		r3,r3,255
	bc		0,2,.L881	# ne
#                                                   Dcm_DslInstance.p_preempting_rx_channel->p_buffer->pdu_info->SduDataPtr[0],
#                                                   DCM_E_BUSYREPEATREQUEST))
#          {
#             Dcm_DslInstance.dsl_state = DSL_WAIT_CONF_BRR;
	.d2line		2647
	diab.li		r0,4
	lis		r3,Dcm_DslInstance@ha
	e_add16i		r3,r3,Dcm_DslInstance@l
	stw		r0,0(r3)
.L881:
#          }
#          else
#          {
#             /*
#              * Try next schedule
#              */
#          }
#          break;
#       }
#    }
# 
#    if (oldState != Dcm_DslInstance.dsl_state)
	.d2line		2659
.Llo607:
	lis		r3,Dcm_DslInstance@ha		# pPendingChannel=r3
	lwz		r0,Dcm_DslInstance@l(r3)		# pPendingChannel=r0 pPendingChannel=r3
.Llo640:
	se_cmp		r0,r29		# pPendingChannel=r0 oldState=r29
	bc		1,2,.L867	# eq
#    {
#       SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine();
	.d2line		2661
.Llo608:
	bl		SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine
.L867:
#    }
# }
	.d2line		2663
	.d2epilogue_begin
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# pPendingChannel=r0
	mtspr		lr,r0		# pPendingChannel=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1865:
	.type		Dcm_SE_DslStateMachine,@function
	.size		Dcm_SE_DslStateMachine,.-Dcm_SE_DslStateMachine
# Number of nodes = 1024

# Allocations for Dcm_SE_DslStateMachine
#	?a4		$$52
#	?a5		$$51
#	SP,8		responsePendingTimeout
#	?a6		currentHandledServiceId
#	?a7		oldState
#	?a8		pPendingChannel
#	?a9		isROESwitch
#	?a10		pPendingChannel
#	?a11		isROESwitch
#	?a12		pPendingChannel
#	?a13		isROESwitch
#	?a14		pPendingChannel
#	?a15		pRxChannel
#	?a16		isROESwitch
# static FUNC(void, DCM_CODE) SetChannelCommMode(CONST(uint8, DCM_CONST) NetworkId, CONST(Dcm_Cfg_ChannelCommModeType, DCM_CONST) commMode)
	.align		1
	.section	.text_vle
        .d2line         2736,29
#$$ld
.L1929:

#$$bf	SetChannelCommMode,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.d2_cfa_start __cie
SetChannelCommMode:
.Llo662:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# NetworkId=r3 NetworkId=r3
	mr		r0,r4		# commMode=r0 commMode=r4
	.d2prologue_end
# {
#    if (NULL_PTR != Dcm_pPbCfg)
	.d2line		2738
	lis		r4,Dcm_pPbCfg@ha
.Llo666:
	lwz		r4,Dcm_pPbCfg@l(r4)
	se_cmpi		r4,0
	bc		1,2,.L1001	# eq
	.section	.text_vle
.L1937:
#    {
#       uint16 i = 0;
	.d2line		2740
.Llo667:
	diab.li		r4,0		# i=r4
# 
#       /* Find the first RxChannel with the give NetworkId */
#       for (i = (uint16)0U; i < Dcm_pPbCfg->num_rx_channels; i++)
.L1003:
	.d2line		2743
.Llo668:
	rlwinm		r6,r4,0,16,31		# i=r4
	lis		r5,Dcm_pPbCfg@ha
	lwz		r5,Dcm_pPbCfg@l(r5)
	lhz		r5,6(r5)
	se_cmp		r6,r5
	bc		0,0,.L1001	# ge
#       {
#          if (NetworkId == Dcm_pPbCfg->p_rx_channels[i].networkId)
	.d2line		2745
	rlwinm		r6,r3,0,24,31		# NetworkId=r3
	lis		r5,Dcm_pPbCfg@ha
	lwz		r5,Dcm_pPbCfg@l(r5)
	lwz		r7,8(r5)
	rlwinm		r5,r4,0,16,31		# i=r4
	e_mulli		r5,r5,44
	se_add		r5,r7
	lbz		r5,2(r5)
	se_cmp		r6,r5
	bc		0,2,.L1006	# ne
#          {
#             *Dcm_pPbCfg->p_rx_channels[i].p_commMode = commMode;
	.d2line		2747
.Llo663:
	lis		r3,Dcm_pPbCfg@ha		# NetworkId=r3
.Llo664:
	lwz		r3,Dcm_pPbCfg@l(r3)		# NetworkId=r3 NetworkId=r3
	lwz		r3,8(r3)		# NetworkId=r3 NetworkId=r3
.Llo669:
	rlwinm		r4,r4,0,16,31		# i=r4 i=r4
	e_mulli		r4,r4,44		# i=r4 i=r4
	se_add		r3,r4		# NetworkId=r3 NetworkId=r3 i=r4
	lwz		r3,36(r3)		# NetworkId=r3 NetworkId=r3
	stw		r0,0(r3)		# NetworkId=r3 commMode=r0
	b		.L1001
.L1006:
#             break;
#          }
#       }
	.d2line		2750
	diab.addi		r5,r4,1		# i=r4
	se_addi		r4,1		# i=r4 i=r4
	b		.L1003
	.section	.text_vle
.L1938:
.L1001:
#    }
# }
	.d2line		2752
	.d2epilogue_begin
.Llo665:
	lwz		r0,20(r1)		# commMode=r0
	mtspr		lr,r0		# commMode=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1930:
	.type		SetChannelCommMode,@function
	.size		SetChannelCommMode,.-SetChannelCommMode
# Number of nodes = 52

# Allocations for SetChannelCommMode
#	?a4		NetworkId
#	?a5		commMode
#	?a6		i
# FUNC(void, DCM_CODE) Dcm_ComM_NoComModeEntered(uint8 NetworkId)
	.align		2
	.section	.text_vle
        .d2line         2668,22
#$$ld
.L1945:

#$$bf	Dcm_ComM_NoComModeEntered,interprocedural,rasave,nostackparams
	.globl		Dcm_ComM_NoComModeEntered
	.d2_cfa_start __cie
Dcm_ComM_NoComModeEntered:
.Llo670:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# NetworkId=r31 NetworkId=r3
	.d2prologue_end
# {
#    DCM_ASSERT_UNINIT(SID_COMMNOCOMMODEENTERED)
	.d2line		2670
	lis		r3,Dcm_pPbCfg@ha
.Llo671:
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L986	# ne
.Llo672:
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,33
	diab.li		r6,5
	bl		Det_ReportError
.L986:
#    SetChannelCommMode(NetworkId, DCM_NO_COMM_MODE);
	.d2line		2671
	mr		r3,r31		# NetworkId=r3 NetworkId=r31
	diab.li		r4,0
	bl		SetChannelCommMode
# }
	.d2line		2672
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo673:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1946:
	.type		Dcm_ComM_NoComModeEntered,@function
	.size		Dcm_ComM_NoComModeEntered,.-Dcm_ComM_NoComModeEntered
# Number of nodes = 20

# Allocations for Dcm_ComM_NoComModeEntered
#	?a4		NetworkId
# FUNC(void, DCM_CODE) Dcm_ComM_SilentComModeEntered(uint8 NetworkId)
	.align		2
	.section	.text_vle
        .d2line         2677,22
#$$ld
.L1951:

#$$bf	Dcm_ComM_SilentComModeEntered,interprocedural,rasave,nostackparams
	.globl		Dcm_ComM_SilentComModeEntered
	.d2_cfa_start __cie
Dcm_ComM_SilentComModeEntered:
.Llo674:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# NetworkId=r31 NetworkId=r3
	.d2prologue_end
# {
#    DCM_ASSERT_UNINIT(SID_COMMSILENTCOMMODEENTERED)
	.d2line		2679
	lis		r3,Dcm_pPbCfg@ha
.Llo675:
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L989	# ne
.Llo676:
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,34
	diab.li		r6,5
	bl		Det_ReportError
.L989:
#    SetChannelCommMode(NetworkId, DCM_SILENT_COMM_MODE);
	.d2line		2680
	mr		r3,r31		# NetworkId=r3 NetworkId=r31
	diab.li		r4,1
	bl		SetChannelCommMode
# }
	.d2line		2681
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo677:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1952:
	.type		Dcm_ComM_SilentComModeEntered,@function
	.size		Dcm_ComM_SilentComModeEntered,.-Dcm_ComM_SilentComModeEntered
# Number of nodes = 20

# Allocations for Dcm_ComM_SilentComModeEntered
#	?a4		NetworkId
# FUNC(void, DCM_CODE) Dcm_ComM_FullComModeEntered(uint8 NetworkId)
	.align		2
	.section	.text_vle
        .d2line         2686,22
#$$ld
.L1957:

#$$bf	Dcm_ComM_FullComModeEntered,interprocedural,rasave,nostackparams
	.globl		Dcm_ComM_FullComModeEntered
	.d2_cfa_start __cie
Dcm_ComM_FullComModeEntered:
.Llo678:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# NetworkId=r31 NetworkId=r3
	.d2prologue_end
# {
#    DCM_ASSERT_UNINIT(SID_COMMFULLCOMMODEENTERED)
	.d2line		2688
	lis		r3,Dcm_pPbCfg@ha
.Llo679:
	lwz		r0,Dcm_pPbCfg@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L992	# ne
.Llo680:
	diab.li		r3,53
	diab.li		r4,0
	diab.li		r5,35
	diab.li		r6,5
	bl		Det_ReportError
.L992:
#    SetChannelCommMode(NetworkId, DCM_FULL_COMM_MODE);
	.d2line		2689
	mr		r3,r31		# NetworkId=r3 NetworkId=r31
	diab.li		r4,2
	bl		SetChannelCommMode
# 
#    /*
#     * [SWS_Dcm_00133]
#     * Always trigger ROE regardless which network.
#     * If any possible events are not affected, nothing will happen
#     * since those events are still in SILENT or NO communication.
#     */
#    SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent();
	.d2line		2697
	bl		SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent
# }
	.d2line		2698
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo681:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L1958:
	.type		Dcm_ComM_FullComModeEntered,@function
	.size		Dcm_ComM_FullComModeEntered,.-Dcm_ComM_FullComModeEntered
# Number of nodes = 22

# Allocations for Dcm_ComM_FullComModeEntered
#	?a4		NetworkId

# Allocations for module
	.section	.text_vle
	.0byte		.L1961
	.data
	.type		Dcm_DbgCurrentSession,@object
	.size		Dcm_DbgCurrentSession,1
	.align		0
	.globl		Dcm_DbgCurrentSession
Dcm_DbgCurrentSession:
	.byte		1
	.data
	.type		Dcm_DbgCurrentProtocol,@object
	.size		Dcm_DbgCurrentProtocol,1
	.align		0
	.globl		Dcm_DbgCurrentProtocol
Dcm_DbgCurrentProtocol:
	.byte		12
	.section	.text_vle
	.type		DslIntermediateTxBuffer,@object
	.size		DslIntermediateTxBuffer,16
	.align		2
DslIntermediateTxBuffer:
	.byte		0
	.space		1
	.short		3
	.long		intermediateTxChannelStorage
	.long		intermediateTxChannelStorage+4
	.long		intermediateTxChannelStorage+16
	.section	.text_vle
#$$ld
.L5:
.L2358:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L2353:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\ComStack_Types.h"
.L2314:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dcm\\ssc\\make\\..\\inc\\Dcm_PBCfg_Types.h"
.L2292:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\Dcm_Lcfg.h"
.L1967:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dcm\\ssc\\make\\..\\inc\\Dcm_Int.h"
.L1962:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dcm\\ssc\\make\\..\\inc\\Dcm_LCfg_Types.h"
.L1236:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dcm\\ssc\\make\\..\\src\\Dcm_Dsl.c"
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dcm\\ssc\\make\\..\\src\\Dcm_Dsl.c"
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
.L1239:
	.sleb128	2
	.4byte		.L1233-.L2
	.byte		"checkROESwitch"
	.byte		0
	.4byte		.L1236
	.uleb128	2708
	.uleb128	31
	.4byte		.L1237
	.byte		0x1
	.4byte		.L1234
	.4byte		.L1235
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L1236
	.uleb128	2708
	.uleb128	31
	.byte		"p_RequestRxChannel"
	.byte		0
	.4byte		.L1240
	.4byte		.L1244
	.section	.debug_info,,n
.L1245:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2710
	.uleb128	12
	.byte		"isROE"
	.byte		0
	.4byte		.L1237
	.4byte		.L1246
	.section	.debug_info,,n
	.sleb128	0
.L1233:
	.section	.debug_info,,n
.L1253:
	.sleb128	2
	.4byte		.L1248-.L2
	.byte		"GetPriorityOfNextPendingChannel"
	.byte		0
	.4byte		.L1236
	.uleb128	2786
	.uleb128	31
	.4byte		.L1251
	.byte		0x1
	.4byte		.L1249
	.4byte		.L1250
	.sleb128	3
	.4byte		.L1236
	.uleb128	2786
	.uleb128	31
	.byte		"indexPtr"
	.byte		0
	.4byte		.L1254
	.4byte		.L1256
.L1257:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2788
	.uleb128	11
	.byte		"i"
	.byte		0
	.4byte		.L1251
	.4byte		.L1258
.L1259:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2789
	.uleb128	11
	.byte		"pendingPriority"
	.byte		0
	.4byte		.L1251
	.4byte		.L1260
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1264
	.4byte		.L1261
	.4byte		.L1262
.L1265:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2794
	.uleb128	69
	.byte		"pChannel"
	.byte		0
	.4byte		.L1266
	.4byte		.L1267
	.section	.debug_info,,n
	.sleb128	0
.L1264:
	.section	.debug_info,,n
	.sleb128	0
.L1248:
	.section	.debug_info,,n
.L1272:
	.sleb128	2
	.4byte		.L1269-.L2
	.byte		"HasLowerOrEqualPriorityThanPendingReq"
	.byte		0
	.4byte		.L1236
	.uleb128	2813
	.uleb128	32
	.4byte		.L1237
	.byte		0x1
	.4byte		.L1270
	.4byte		.L1271
	.sleb128	3
	.4byte		.L1236
	.uleb128	2813
	.uleb128	32
	.byte		"refPriority"
	.byte		0
	.4byte		.L1273
	.4byte		.L1275
.L1276:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2815
	.uleb128	11
	.byte		"tempPrio"
	.byte		0
	.4byte		.L1251
	.4byte		.L1277
	.section	.debug_info,,n
.L1278:
	.sleb128	6
	.4byte		.L1236
	.uleb128	2816
	.uleb128	11
	.byte		"index"
	.byte		0
	.4byte		.L1251
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L1269:
	.section	.debug_info,,n
.L1283:
	.sleb128	7
	.4byte		.L1280-.L2
	.byte		"TakeRxBuffer"
	.byte		0
	.4byte		.L1236
	.uleb128	2879
	.uleb128	29
	.byte		0x1
	.4byte		.L1281
	.4byte		.L1282
	.sleb128	3
	.4byte		.L1236
	.uleb128	2879
	.uleb128	29
	.byte		"pBuffer"
	.byte		0
	.4byte		.L1284
	.4byte		.L1288
	.sleb128	3
	.4byte		.L1236
	.uleb128	2879
	.uleb128	29
	.byte		"PduId"
	.byte		0
	.4byte		.L1289
	.4byte		.L1291
	.sleb128	3
	.4byte		.L1236
	.uleb128	2879
	.uleb128	29
	.byte		"PduSize"
	.byte		0
	.4byte		.L1292
	.4byte		.L1294
	.sleb128	3
	.4byte		.L1236
	.uleb128	2879
	.uleb128	29
	.byte		"pBufferSize"
	.byte		0
	.4byte		.L1295
	.4byte		.L1297
.L1298:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2881
	.uleb128	67
	.byte		"pBufferStatus"
	.byte		0
	.4byte		.L1299
	.4byte		.L1303
	.section	.debug_info,,n
	.sleb128	0
.L1280:
	.section	.debug_info,,n
.L1308:
	.sleb128	7
	.4byte		.L1305-.L2
	.byte		"TakeRxChannel"
	.byte		0
	.4byte		.L1236
	.uleb128	2897
	.uleb128	29
	.byte		0x1
	.4byte		.L1306
	.4byte		.L1307
	.sleb128	3
	.4byte		.L1236
	.uleb128	2897
	.uleb128	29
	.byte		"pRxChannel"
	.byte		0
	.4byte		.L1240
	.4byte		.L1309
	.sleb128	3
	.4byte		.L1236
	.uleb128	2897
	.uleb128	29
	.byte		"PduId"
	.byte		0
	.4byte		.L1289
	.4byte		.L1310
	.sleb128	3
	.4byte		.L1236
	.uleb128	2897
	.uleb128	29
	.byte		"PduSize"
	.byte		0
	.4byte		.L1292
	.4byte		.L1311
	.sleb128	3
	.4byte		.L1236
	.uleb128	2897
	.uleb128	29
	.byte		"pBufferSize"
	.byte		0
	.4byte		.L1295
	.4byte		.L1312
	.section	.debug_info,,n
	.sleb128	0
.L1305:
	.section	.debug_info,,n
.L1317:
	.sleb128	7
	.4byte		.L1314-.L2
	.byte		"Take2ndRxChannel"
	.byte		0
	.4byte		.L1236
	.uleb128	2910
	.uleb128	29
	.byte		0x1
	.4byte		.L1315
	.4byte		.L1316
	.sleb128	3
	.4byte		.L1236
	.uleb128	2910
	.uleb128	29
	.byte		"pRxChannel"
	.byte		0
	.4byte		.L1240
	.4byte		.L1318
	.sleb128	3
	.4byte		.L1236
	.uleb128	2910
	.uleb128	29
	.byte		"PduId"
	.byte		0
	.4byte		.L1289
	.4byte		.L1319
	.sleb128	3
	.4byte		.L1236
	.uleb128	2910
	.uleb128	29
	.byte		"PduSize"
	.byte		0
	.4byte		.L1292
	.4byte		.L1320
	.sleb128	3
	.4byte		.L1236
	.uleb128	2910
	.uleb128	29
	.byte		"pBufferSize"
	.byte		0
	.4byte		.L1295
	.4byte		.L1321
	.section	.debug_info,,n
	.sleb128	0
.L1314:
	.section	.debug_info,,n
.L1328:
	.sleb128	8
	.4byte		.L1323-.L2
	.byte		"Dcm_StartOfReception"
	.byte		0
	.4byte		.L1236
	.uleb128	736
	.uleb128	35
	.4byte		.L1326
	.byte		0x1
	.byte		0x1
	.4byte		.L1324
	.4byte		.L1325
	.sleb128	3
	.4byte		.L1236
	.uleb128	736
	.uleb128	35
	.byte		"DcmRxPduId"
	.byte		0
	.4byte		.L1290
	.4byte		.L1329
	.sleb128	3
	.4byte		.L1236
	.uleb128	736
	.uleb128	35
	.byte		"TpSduLength"
	.byte		0
	.4byte		.L1293
	.4byte		.L1330
	.sleb128	3
	.4byte		.L1236
	.uleb128	736
	.uleb128	35
	.byte		"RxBufferSizePtr"
	.byte		0
	.4byte		.L1296
	.4byte		.L1331
.L1332:
	.sleb128	4
	.4byte		.L1236
	.uleb128	739
	.uleb128	61
	.byte		"pCfgRxChannel"
	.byte		0
	.4byte		.L1240
	.4byte		.L1333
.L1334:
	.sleb128	4
	.4byte		.L1236
	.uleb128	740
	.uleb128	58
	.byte		"pCfgBuffer"
	.byte		0
	.4byte		.L1284
	.4byte		.L1335
.L1336:
	.sleb128	4
	.4byte		.L1236
	.uleb128	741
	.uleb128	22
	.byte		"retVal"
	.byte		0
	.4byte		.L1326
	.4byte		.L1337
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1341
	.4byte		.L1338
	.4byte		.L1339
.L1342:
	.sleb128	4
	.4byte		.L1236
	.uleb128	778
	.uleb128	15
	.byte		"isRxBufferInUse"
	.byte		0
	.4byte		.L1237
	.4byte		.L1343
.L1344:
	.sleb128	4
	.4byte		.L1236
	.uleb128	779
	.uleb128	15
	.byte		"isRequestOngoing"
	.byte		0
	.4byte		.L1237
	.4byte		.L1345
.L1346:
	.sleb128	4
	.4byte		.L1236
	.uleb128	780
	.uleb128	15
	.byte		"isTxBusy"
	.byte		0
	.4byte		.L1237
	.4byte		.L1347
.L1348:
	.sleb128	4
	.4byte		.L1236
	.uleb128	782
	.uleb128	70
	.byte		"pBufferStatus"
	.byte		0
	.4byte		.L1299
	.4byte		.L1349
.L1350:
	.sleb128	4
	.4byte		.L1236
	.uleb128	785
	.uleb128	33
	.byte		"hasLowerOrEqualPrioThanPendingReq"
	.byte		0
	.4byte		.L1351
	.4byte		.L1352
.L1353:
	.sleb128	4
	.4byte		.L1236
	.uleb128	787
	.uleb128	33
	.byte		"hasSameProtocol"
	.byte		0
	.4byte		.L1351
	.4byte		.L1354
.L1355:
	.sleb128	4
	.4byte		.L1236
	.uleb128	790
	.uleb128	33
	.byte		"isInDefaultSession"
	.byte		0
	.4byte		.L1351
	.4byte		.L1356
.L1357:
	.sleb128	4
	.4byte		.L1236
	.uleb128	792
	.uleb128	33
	.byte		"isRoeSwitch"
	.byte		0
	.4byte		.L1351
	.4byte		.L1358
.L1359:
	.sleb128	4
	.4byte		.L1236
	.uleb128	795
	.uleb128	33
	.byte		"hasLowerOrEqualPrio"
	.byte		0
	.4byte		.L1351
	.4byte		.L1360
	.section	.debug_info,,n
	.sleb128	0
.L1341:
	.section	.debug_info,,n
	.sleb128	0
.L1323:
	.section	.debug_info,,n
.L1365:
	.sleb128	8
	.4byte		.L1362-.L2
	.byte		"Dcm_CopyRxData"
	.byte		0
	.4byte		.L1236
	.uleb128	945
	.uleb128	35
	.4byte		.L1326
	.byte		0x1
	.byte		0x1
	.4byte		.L1363
	.4byte		.L1364
	.sleb128	3
	.4byte		.L1236
	.uleb128	945
	.uleb128	35
	.byte		"DcmRxPduId"
	.byte		0
	.4byte		.L1290
	.4byte		.L1366
	.sleb128	3
	.4byte		.L1236
	.uleb128	945
	.uleb128	35
	.byte		"PduInfoPtr"
	.byte		0
	.4byte		.L1367
	.4byte		.L1370
	.sleb128	3
	.4byte		.L1236
	.uleb128	945
	.uleb128	35
	.byte		"RxBufferSizePtr"
	.byte		0
	.4byte		.L1296
	.4byte		.L1371
.L1372:
	.sleb128	4
	.4byte		.L1236
	.uleb128	949
	.uleb128	22
	.byte		"retVal"
	.byte		0
	.4byte		.L1326
	.4byte		.L1373
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1377
	.4byte		.L1374
	.4byte		.L1375
.L1378:
	.sleb128	4
	.4byte		.L1236
	.uleb128	967
	.uleb128	64
	.byte		"pCfgBuffer"
	.byte		0
	.4byte		.L1284
	.4byte		.L1379
.L1380:
	.sleb128	4
	.4byte		.L1236
	.uleb128	968
	.uleb128	68
	.byte		"pBufferStatus"
	.byte		0
	.4byte		.L1300
	.4byte		.L1381
.L1382:
	.sleb128	4
	.4byte		.L1236
	.uleb128	969
	.uleb128	24
	.byte		"bytesToCopyLimit"
	.byte		0
	.4byte		.L1293
	.4byte		.L1383
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1387
	.4byte		.L1384
	.4byte		.L1385
.L1388:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1002
	.uleb128	27
	.byte		"bytesToCopy"
	.byte		0
	.4byte		.L1293
	.4byte		.L1389
	.section	.debug_info,,n
	.sleb128	0
.L1387:
	.section	.debug_info,,n
	.sleb128	0
.L1377:
	.section	.debug_info,,n
	.sleb128	0
.L1362:
	.section	.debug_info,,n
.L1394:
	.sleb128	7
	.4byte		.L1391-.L2
	.byte		"ReleaseRxChannel"
	.byte		0
	.4byte		.L1236
	.uleb128	2925
	.uleb128	29
	.byte		0x1
	.4byte		.L1392
	.4byte		.L1393
	.sleb128	3
	.4byte		.L1236
	.uleb128	2925
	.uleb128	29
	.byte		"pRxChannel"
	.byte		0
	.4byte		.L1266
	.4byte		.L1395
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1399
	.4byte		.L1396
	.4byte		.L1397
.L1400:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2936
	.uleb128	65
	.byte		"pBufferStatus"
	.byte		0
	.4byte		.L1300
	.4byte		.L1401
	.section	.debug_info,,n
	.sleb128	0
.L1399:
	.section	.debug_info,,n
	.sleb128	0
.L1391:
	.section	.debug_info,,n
.L1406:
	.sleb128	2
	.4byte		.L1403-.L2
	.byte		"HandleConcurrentTesterPresent"
	.byte		0
	.4byte		.L1236
	.uleb128	2956
	.uleb128	32
	.4byte		.L1237
	.byte		0x1
	.4byte		.L1404
	.4byte		.L1405
	.sleb128	3
	.4byte		.L1236
	.uleb128	2956
	.uleb128	32
	.byte		"pRxChannel"
	.byte		0
	.4byte		.L1266
	.4byte		.L1407
	.sleb128	3
	.4byte		.L1236
	.uleb128	2956
	.uleb128	32
	.byte		"pPduInfo"
	.byte		0
	.4byte		.L1408
	.4byte		.L1411
.L1412:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2959
	.uleb128	12
	.byte		"retVal"
	.byte		0
	.4byte		.L1237
	.4byte		.L1413
	.section	.debug_info,,n
	.sleb128	0
.L1403:
	.section	.debug_info,,n
.L1418:
	.sleb128	7
	.4byte		.L1415-.L2
	.byte		"ComposeNegativeResponse"
	.byte		0
	.4byte		.L1236
	.uleb128	2984
	.uleb128	29
	.byte		0x1
	.4byte		.L1416
	.4byte		.L1417
	.sleb128	3
	.4byte		.L1236
	.uleb128	2984
	.uleb128	29
	.byte		"pTxBuffer"
	.byte		0
	.4byte		.L1419
	.4byte		.L1420
	.sleb128	3
	.4byte		.L1236
	.uleb128	2984
	.uleb128	29
	.byte		"sid"
	.byte		0
	.4byte		.L1273
	.4byte		.L1421
	.sleb128	3
	.4byte		.L1236
	.uleb128	2984
	.uleb128	29
	.byte		"ErrorCode"
	.byte		0
	.4byte		.L1422
	.4byte		.L1424
	.sleb128	3
	.4byte		.L1236
	.uleb128	2984
	.uleb128	29
	.byte		"pduId"
	.byte		0
	.4byte		.L1289
	.4byte		.L1425
	.section	.debug_info,,n
	.sleb128	0
.L1415:
	.section	.debug_info,,n
.L1430:
	.sleb128	2
	.4byte		.L1427-.L2
	.byte		"GetTxChannelTableIndex"
	.byte		0
	.4byte		.L1236
	.uleb128	3519
	.uleb128	31
	.4byte		.L1251
	.byte		0x1
	.4byte		.L1428
	.4byte		.L1429
	.sleb128	3
	.4byte		.L1236
	.uleb128	3519
	.uleb128	31
	.byte		"DcmTxPduId"
	.byte		0
	.4byte		.L1289
	.4byte		.L1431
.L1432:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3521
	.uleb128	11
	.byte		"txTableIndex"
	.byte		0
	.4byte		.L1251
	.4byte		.L1433
	.section	.debug_info,,n
	.sleb128	0
.L1427:
	.section	.debug_info,,n
.L1438:
	.sleb128	7
	.4byte		.L1435-.L2
	.byte		"GenericTxConfirmation"
	.byte		0
	.4byte		.L1236
	.uleb128	3361
	.uleb128	29
	.byte		0x1
	.4byte		.L1436
	.4byte		.L1437
	.sleb128	3
	.4byte		.L1236
	.uleb128	3361
	.uleb128	29
	.byte		"DcmTxPduId"
	.byte		0
	.4byte		.L1289
	.4byte		.L1439
	.sleb128	3
	.4byte		.L1236
	.uleb128	3361
	.uleb128	29
	.byte		"Result"
	.byte		0
	.4byte		.L1440
	.4byte		.L1442
	.sleb128	3
	.4byte		.L1236
	.uleb128	3361
	.uleb128	29
	.byte		"serviceId"
	.byte		0
	.4byte		.L1273
	.4byte		.L1443
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1447
	.4byte		.L1444
	.4byte		.L1445
.L1448:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3365
	.uleb128	38
	.byte		"oldDslState"
	.byte		0
	.4byte		.L1449
	.4byte		.L1452
.L1453:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3366
	.uleb128	32
	.byte		"txTableIndex"
	.byte		0
	.4byte		.L1454
	.4byte		.L1455
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1459
	.4byte		.L1456
	.4byte		.L1457
.L1460:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3383
	.uleb128	65
	.byte		"pPeriodicTxChannel"
	.byte		0
	.4byte		.L1461
	.4byte		.L1467
.L1468:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3384
	.uleb128	75
	.byte		"pPeriodicTxStatus"
	.byte		0
	.4byte		.L1469
	.4byte		.L1473
	.section	.debug_info,,n
	.sleb128	0
.L1459:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1477
	.4byte		.L1474
	.4byte		.L1475
.L1478:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3394
	.uleb128	72
	.byte		"pTxChannel"
	.byte		0
	.4byte		.L1479
	.4byte		.L1484
.L1485:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3395
	.uleb128	57
	.byte		"pRxChannel"
	.byte		0
	.4byte		.L1486
	.4byte		.L1488
	.section	.debug_info,,n
	.sleb128	0
.L1477:
	.section	.debug_info,,n
	.sleb128	0
.L1447:
	.section	.debug_info,,n
	.sleb128	0
.L1435:
	.section	.debug_info,,n
.L1493:
	.sleb128	9
	.4byte		.L1490-.L2
	.byte		"Dcm_TpTxConfirmation"
	.byte		0
	.4byte		.L1236
	.uleb128	1490
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1491
	.4byte		.L1492
	.sleb128	3
	.4byte		.L1236
	.uleb128	1490
	.uleb128	22
	.byte		"DcmTxPduId"
	.byte		0
	.4byte		.L1290
	.4byte		.L1494
	.sleb128	3
	.4byte		.L1236
	.uleb128	1490
	.uleb128	22
	.byte		"Result"
	.byte		0
	.4byte		.L1441
	.4byte		.L1495
	.section	.debug_info,,n
	.sleb128	0
.L1490:
	.section	.debug_info,,n
.L1501:
	.sleb128	2
	.4byte		.L1497-.L2
	.byte		"TransmitResponse"
	.byte		0
	.4byte		.L1236
	.uleb128	3089
	.uleb128	39
	.4byte		.L1500
	.byte		0x1
	.4byte		.L1498
	.4byte		.L1499
	.sleb128	3
	.4byte		.L1236
	.uleb128	3089
	.uleb128	39
	.byte		"pTxChannel"
	.byte		0
	.4byte		.L1479
	.4byte		.L1502
	.sleb128	3
	.4byte		.L1236
	.uleb128	3089
	.uleb128	39
	.byte		"pActiveTxBuffer"
	.byte		0
	.4byte		.L1419
	.4byte		.L1503
.L1504:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3092
	.uleb128	19
	.byte		"retVal"
	.byte		0
	.4byte		.L1500
	.4byte		.L1505
.L1506:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3093
	.uleb128	62
	.byte		"pBufferStatus"
	.byte		0
	.4byte		.L1300
	.4byte		.L1507
.L1508:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3095
	.uleb128	30
	.byte		"maxPendingReached"
	.byte		0
	.4byte		.L1351
	.4byte		.L1509
.L1510:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3100
	.uleb128	30
	.byte		"isBrrOrPending"
	.byte		0
	.4byte		.L1351
	.4byte		.L1511
.L1512:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3104
	.uleb128	51
	.byte		"pRxChannel"
	.byte		0
	.4byte		.L1486
	.4byte		.L1513
.L1514:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3105
	.uleb128	30
	.byte		"isRoe"
	.byte		0
	.4byte		.L1351
	.4byte		.L1515
	.section	.debug_info,,n
	.sleb128	0
.L1497:
	.section	.debug_info,,n
.L1520:
	.sleb128	9
	.4byte		.L1517-.L2
	.byte		"Dcm_TpRxIndication"
	.byte		0
	.4byte		.L1236
	.uleb128	1054
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1518
	.4byte		.L1519
	.sleb128	3
	.4byte		.L1236
	.uleb128	1054
	.uleb128	22
	.byte		"DcmRxPduId"
	.byte		0
	.4byte		.L1290
	.4byte		.L1521
	.sleb128	3
	.4byte		.L1236
	.uleb128	1054
	.uleb128	22
	.byte		"Result"
	.byte		0
	.4byte		.L1441
	.4byte		.L1522
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1526
	.4byte		.L1523
	.4byte		.L1524
.L1527:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1067
	.uleb128	72
	.byte		"pCfgRxChannel"
	.byte		0
	.4byte		.L1266
	.4byte		.L1528
.L1529:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1068
	.uleb128	64
	.byte		"pCfgBuffer"
	.byte		0
	.4byte		.L1284
	.4byte		.L1530
.L1531:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1069
	.uleb128	68
	.byte		"pBufferStatus"
	.byte		0
	.4byte		.L1300
	.4byte		.L1532
	.section	.debug_info,,n
	.sleb128	0
.L1526:
	.section	.debug_info,,n
	.sleb128	0
.L1517:
	.section	.debug_info,,n
.L1537:
	.sleb128	8
	.4byte		.L1534-.L2
	.byte		"Dcm_CopyTxData"
	.byte		0
	.4byte		.L1236
	.uleb128	1178
	.uleb128	35
	.4byte		.L1326
	.byte		0x1
	.byte		0x1
	.4byte		.L1535
	.4byte		.L1536
	.sleb128	3
	.4byte		.L1236
	.uleb128	1178
	.uleb128	35
	.byte		"DcmTxPduId"
	.byte		0
	.4byte		.L1290
	.4byte		.L1538
	.sleb128	3
	.4byte		.L1236
	.uleb128	1178
	.uleb128	35
	.byte		"PduInfoPtr"
	.byte		0
	.4byte		.L1367
	.4byte		.L1539
	.section	.debug_info,,n
	.sleb128	10
	.4byte		.L1236
	.uleb128	1178
	.uleb128	35
	.byte		"RetryInfoPtr"
	.byte		0
	.4byte		.L1540
	.sleb128	2
	.byte		0x90
	.uleb128	5
	.sleb128	3
	.4byte		.L1236
	.uleb128	1178
	.uleb128	35
	.byte		"TxDataCntPtr"
	.byte		0
	.4byte		.L1296
	.4byte		.L1543
.L1544:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1183
	.uleb128	22
	.byte		"retVal"
	.byte		0
	.4byte		.L1326
	.4byte		.L1545
.L1546:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1184
	.uleb128	35
	.byte		"oldDslState"
	.byte		0
	.4byte		.L1449
	.4byte		.L1547
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1551
	.4byte		.L1548
	.4byte		.L1549
.L1552:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1188
	.uleb128	20
	.byte		"txTableIndex"
	.byte		0
	.4byte		.L1454
	.4byte		.L1553
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1557
	.4byte		.L1554
	.4byte		.L1555
.L1558:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1203
	.uleb128	65
	.byte		"pPeriodicTxChannel"
	.byte		0
	.4byte		.L1461
	.4byte		.L1559
.L1560:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1204
	.uleb128	77
	.byte		"pPeriodicTxStatus"
	.byte		0
	.4byte		.L1469
	.4byte		.L1561
	.section	.debug_info,,n
	.sleb128	0
.L1557:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1565
	.4byte		.L1562
	.4byte		.L1563
.L1566:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1253
	.uleb128	24
	.byte		"length"
	.byte		0
	.4byte		.L1293
	.4byte		.L1567
.L1568:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1254
	.uleb128	73
	.byte		"pTxChannel"
	.byte		0
	.4byte		.L1479
	.4byte		.L1569
.L1570:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1255
	.uleb128	54
	.byte		"pCfgBuffer"
	.byte		0
	.4byte		.L1571
	.4byte		.L1573
.L1574:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1256
	.uleb128	68
	.byte		"pBufferStatus"
	.byte		0
	.4byte		.L1300
	.4byte		.L1575
	.section	.debug_info,,n
	.sleb128	0
.L1565:
	.section	.debug_info,,n
	.sleb128	0
.L1551:
	.section	.debug_info,,n
	.sleb128	0
.L1534:
	.section	.debug_info,,n
.L1580:
	.sleb128	9
	.4byte		.L1577-.L2
	.byte		"Dcm_TxConfirmation"
	.byte		0
	.4byte		.L1236
	.uleb128	1498
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1578
	.4byte		.L1579
	.sleb128	3
	.4byte		.L1236
	.uleb128	1498
	.uleb128	22
	.byte		"DcmTxPduId"
	.byte		0
	.4byte		.L1290
	.4byte		.L1581
	.section	.debug_info,,n
	.sleb128	0
.L1577:
	.section	.debug_info,,n
.L1586:
	.sleb128	9
	.4byte		.L1583-.L2
	.byte		"Dcm_RxIndication"
	.byte		0
	.4byte		.L1236
	.uleb128	1506
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1584
	.4byte		.L1585
	.sleb128	10
	.4byte		.L1236
	.uleb128	1506
	.uleb128	22
	.byte		"DcmRxPduId"
	.byte		0
	.4byte		.L1290
	.sleb128	2
	.byte		0x90
	.uleb128	3
	.sleb128	10
	.4byte		.L1236
	.uleb128	1506
	.uleb128	22
	.byte		"PduInfoPtr"
	.byte		0
	.4byte		.L1367
	.sleb128	2
	.byte		0x90
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L1583:
	.section	.debug_info,,n
.L1591:
	.sleb128	8
	.4byte		.L1588-.L2
	.byte		"Dcm_GetSesCtrlType"
	.byte		0
	.4byte		.L1236
	.uleb128	1519
	.uleb128	32
	.4byte		.L1500
	.byte		0x1
	.byte		0x1
	.4byte		.L1589
	.4byte		.L1590
	.sleb128	3
	.4byte		.L1236
	.uleb128	1519
	.uleb128	32
	.byte		"SesCtrlType"
	.byte		0
	.4byte		.L1592
	.4byte		.L1594
	.section	.debug_info,,n
	.sleb128	0
.L1588:
	.section	.debug_info,,n
.L1599:
	.sleb128	9
	.4byte		.L1596-.L2
	.byte		"Dcm_SetSecurityLevel"
	.byte		0
	.4byte		.L1236
	.uleb128	1731
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1597
	.4byte		.L1598
	.sleb128	3
	.4byte		.L1236
	.uleb128	1731
	.uleb128	22
	.byte		"SecurityLevel"
	.byte		0
	.4byte		.L1600
	.4byte		.L1601
	.section	.debug_info,,n
	.sleb128	0
.L1596:
	.section	.debug_info,,n
.L1606:
	.sleb128	7
	.4byte		.L1603-.L2
	.byte		"StopAllDidCtrl"
	.byte		0
	.4byte		.L1236
	.uleb128	3563
	.uleb128	29
	.byte		0x1
	.4byte		.L1604
	.4byte		.L1605
.L1607:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3565
	.uleb128	11
	.byte		"didIndex"
	.byte		0
	.4byte		.L1251
	.4byte		.L1608
.L1609:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3566
	.uleb128	62
	.byte		"pDidCtrl"
	.byte		0
	.4byte		.L1610
	.4byte		.L1614
.L1615:
	.sleb128	6
	.4byte		.L1236
	.uleb128	3567
	.uleb128	33
	.byte		"ErrorCode"
	.byte		0
	.4byte		.L1423
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1619
	.4byte		.L1616
	.4byte		.L1617
.L1620:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3574
	.uleb128	18
	.byte		"active"
	.byte		0
	.4byte		.L1237
	.4byte		.L1621
.L1622:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3575
	.uleb128	25
	.byte		"underControlIndex"
	.byte		0
	.4byte		.L1623
	.4byte		.L1624
	.section	.debug_info,,n
	.sleb128	0
.L1619:
	.section	.debug_info,,n
	.sleb128	0
.L1603:
	.section	.debug_info,,n
.L1629:
	.sleb128	9
	.4byte		.L1626-.L2
	.byte		"Dcm_SetSesCtrlType"
	.byte		0
	.4byte		.L1236
	.uleb128	1543
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1627
	.4byte		.L1628
	.sleb128	3
	.4byte		.L1236
	.uleb128	1543
	.uleb128	22
	.byte		"SesCtrlType"
	.byte		0
	.4byte		.L1593
	.4byte		.L1630
.L1631:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1545
	.uleb128	45
	.byte		"sesCtrlTypeResult"
	.byte		0
	.4byte		.L1632
	.4byte		.L1633
.L1634:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1546
	.uleb128	38
	.byte		"oldSession"
	.byte		0
	.4byte		.L1635
	.4byte		.L1636
	.section	.debug_info,,n
	.sleb128	0
.L1626:
	.section	.debug_info,,n
.L1641:
	.sleb128	9
	.4byte		.L1638-.L2
	.byte		"Dcm_GetSesTimingValues"
	.byte		0
	.4byte		.L1236
	.uleb128	1671
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1639
	.4byte		.L1640
	.sleb128	3
	.4byte		.L1236
	.uleb128	1671
	.uleb128	22
	.byte		"timerValues"
	.byte		0
	.4byte		.L1642
	.4byte		.L1645
.L1646:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1683
	.uleb128	31
	.byte		"pCurrentSession"
	.byte		0
	.4byte		.L1647
	.4byte		.L1652
	.section	.debug_info,,n
	.sleb128	0
.L1638:
	.section	.debug_info,,n
.L1657:
	.sleb128	8
	.4byte		.L1654-.L2
	.byte		"Dcm_GetSecurityLevel"
	.byte		0
	.4byte		.L1236
	.uleb128	1707
	.uleb128	32
	.4byte		.L1500
	.byte		0x1
	.byte		0x1
	.4byte		.L1655
	.4byte		.L1656
	.sleb128	3
	.4byte		.L1236
	.uleb128	1707
	.uleb128	32
	.byte		"SecLevel"
	.byte		0
	.4byte		.L1658
	.4byte		.L1659
	.section	.debug_info,,n
	.sleb128	0
.L1654:
	.section	.debug_info,,n
.L1664:
	.sleb128	8
	.4byte		.L1661-.L2
	.byte		"Dcm_GetActiveProtocol"
	.byte		0
	.4byte		.L1236
	.uleb128	1748
	.uleb128	32
	.4byte		.L1500
	.byte		0x1
	.byte		0x1
	.4byte		.L1662
	.4byte		.L1663
	.sleb128	3
	.4byte		.L1236
	.uleb128	1748
	.uleb128	32
	.byte		"ActiveProtocol"
	.byte		0
	.4byte		.L1665
	.4byte		.L1667
.L1668:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1750
	.uleb128	19
	.byte		"retVal"
	.byte		0
	.4byte		.L1500
	.4byte		.L1669
	.section	.debug_info,,n
	.sleb128	0
.L1661:
	.section	.debug_info,,n
.L1674:
	.sleb128	8
	.4byte		.L1671-.L2
	.byte		"Dcm_ResetToDefaultSession"
	.byte		0
	.4byte		.L1236
	.uleb128	1786
	.uleb128	32
	.4byte		.L1500
	.byte		0x1
	.byte		0x1
	.4byte		.L1672
	.4byte		.L1673
	.section	.debug_info,,n
	.sleb128	0
.L1671:
	.section	.debug_info,,n
.L1679:
	.sleb128	9
	.4byte		.L1676-.L2
	.byte		"Dcm_GetResponsePendingStatus"
	.byte		0
	.4byte		.L1236
	.uleb128	1801
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1677
	.4byte		.L1678
	.sleb128	3
	.4byte		.L1236
	.uleb128	1801
	.uleb128	22
	.byte		"HasBeenSent"
	.byte		0
	.4byte		.L1680
	.4byte		.L1681
	.section	.debug_info,,n
	.sleb128	0
.L1676:
	.section	.debug_info,,n
.L1686:
	.sleb128	9
	.4byte		.L1683-.L2
	.byte		"Dcm_DslInit"
	.byte		0
	.4byte		.L1236
	.uleb128	1816
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1684
	.4byte		.L1685
	.sleb128	3
	.4byte		.L1236
	.uleb128	1816
	.uleb128	22
	.byte		"ConfigPtr"
	.byte		0
	.4byte		.L1687
	.4byte		.L1691
.L1692:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1818
	.uleb128	11
	.byte		"u16Counter"
	.byte		0
	.4byte		.L1251
	.4byte		.L1693
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1697
	.4byte		.L1694
	.4byte		.L1695
.L1698:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1857
	.uleb128	64
	.byte		"pChannel"
	.byte		0
	.4byte		.L1240
	.4byte		.L1699
.L1700:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1858
	.uleb128	65
	.byte		"pBufferStatus"
	.byte		0
	.4byte		.L1300
	.4byte		.L1701
	.section	.debug_info,,n
	.sleb128	0
.L1697:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1705
	.4byte		.L1702
	.4byte		.L1703
.L1706:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1883
	.uleb128	20
	.byte		"counterWithOffset"
	.byte		0
	.4byte		.L1454
	.4byte		.L1707
	.section	.debug_info,,n
	.sleb128	0
.L1705:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1711
	.4byte		.L1708
	.4byte		.L1709
.L1712:
	.sleb128	4
	.4byte		.L1236
	.uleb128	1890
	.uleb128	65
	.byte		"pDidCtrl"
	.byte		0
	.4byte		.L1610
	.4byte		.L1713
	.section	.debug_info,,n
	.sleb128	0
.L1711:
	.section	.debug_info,,n
	.sleb128	0
.L1683:
	.section	.debug_info,,n
.L1718:
	.sleb128	7
	.4byte		.L1715-.L2
	.byte		"HandlePossibleJumpFromBootloader"
	.byte		0
	.4byte		.L1236
	.uleb128	3183
	.uleb128	29
	.byte		0x1
	.4byte		.L1716
	.4byte		.L1717
.L1719:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3185
	.uleb128	31
	.byte		"retVal"
	.byte		0
	.4byte		.L1720
	.4byte		.L1721
.L1722:
	.sleb128	6
	.4byte		.L1236
	.uleb128	3186
	.uleb128	31
	.byte		"progCond"
	.byte		0
	.4byte		.L1723
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L1725:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3187
	.uleb128	31
	.byte		"i"
	.byte		0
	.4byte		.L1251
	.4byte		.L1726
.L1727:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3188
	.uleb128	31
	.byte		"pSession"
	.byte		0
	.4byte		.L1647
	.4byte		.L1728
	.section	.debug_info,,n
	.sleb128	0
.L1715:
	.section	.debug_info,,n
.L1733:
	.sleb128	7
	.4byte		.L1730-.L2
	.byte		"TriggerResponsePending"
	.byte		0
	.4byte		.L1236
	.uleb128	3616
	.uleb128	29
	.byte		0x1
	.4byte		.L1731
	.4byte		.L1732
	.section	.debug_info,,n
	.sleb128	0
.L1730:
	.section	.debug_info,,n
.L1738:
	.sleb128	9
	.4byte		.L1735-.L2
	.byte		"Dcm_DslHandleTimers"
	.byte		0
	.4byte		.L1236
	.uleb128	1915
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1736
	.4byte		.L1737
	.section	.debug_info,,n
	.sleb128	0
.L1735:
	.section	.debug_info,,n
.L1743:
	.sleb128	9
	.4byte		.L1740-.L2
	.byte		"Dcm_DslTransmit"
	.byte		0
	.4byte		.L1236
	.uleb128	1946
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1741
	.4byte		.L1742
	.sleb128	3
	.4byte		.L1236
	.uleb128	1946
	.uleb128	22
	.byte		"pTxChannel"
	.byte		0
	.4byte		.L1480
	.4byte		.L1744
	.section	.debug_info,,n
	.sleb128	0
.L1740:
	.section	.debug_info,,n
.L1749:
	.sleb128	9
	.4byte		.L1746-.L2
	.byte		"Dcm_DslForceResponsePending"
	.byte		0
	.4byte		.L1236
	.uleb128	1956
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1747
	.4byte		.L1748
	.section	.debug_info,,n
	.sleb128	0
.L1746:
	.section	.debug_info,,n
.L1754:
	.sleb128	9
	.4byte		.L1751-.L2
	.byte		"Dcm_DslTransmitNoResponse"
	.byte		0
	.4byte		.L1236
	.uleb128	1988
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1752
	.4byte		.L1753
	.section	.debug_info,,n
	.sleb128	0
.L1751:
	.section	.debug_info,,n
.L1759:
	.sleb128	9
	.4byte		.L1756-.L2
	.byte		"Dcm_DslProtocolStopped"
	.byte		0
	.4byte		.L1236
	.uleb128	1997
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1757
	.4byte		.L1758
	.section	.debug_info,,n
	.sleb128	0
.L1756:
	.section	.debug_info,,n
.L1764:
	.sleb128	8
	.4byte		.L1761-.L2
	.byte		"Dcm_DslSetPeriodicTxConnection"
	.byte		0
	.4byte		.L1236
	.uleb128	2009
	.uleb128	32
	.4byte		.L1500
	.byte		0x1
	.byte		0x1
	.4byte		.L1762
	.4byte		.L1763
.L1765:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2011
	.uleb128	10
	.byte		"i"
	.byte		0
	.4byte		.L1274
	.4byte		.L1766
.L1767:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2012
	.uleb128	19
	.byte		"retVal"
	.byte		0
	.4byte		.L1500
	.4byte		.L1768
.L1769:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2013
	.uleb128	70
	.byte		"pPeriodicTxChannels"
	.byte		0
	.4byte		.L1463
	.4byte		.L1770
.L1771:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2014
	.uleb128	63
	.byte		"pPeriodicTxStatus"
	.byte		0
	.4byte		.L1470
	.4byte		.L1772
	.section	.debug_info,,n
	.sleb128	0
.L1761:
	.section	.debug_info,,n
.L1777:
	.sleb128	9
	.4byte		.L1774-.L2
	.byte		"Dcm_DslClearPeriodicTxConnection"
	.byte		0
	.4byte		.L1236
	.uleb128	2042
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1775
	.4byte		.L1776
	.section	.debug_info,,n
	.sleb128	0
.L1774:
	.section	.debug_info,,n
.L1782:
	.sleb128	8
	.4byte		.L1779-.L2
	.byte		"Dcm_DslSendPeriodicTxData"
	.byte		0
	.4byte		.L1236
	.uleb128	2051
	.uleb128	32
	.4byte		.L1500
	.byte		0x1
	.byte		0x1
	.4byte		.L1780
	.4byte		.L1781
	.sleb128	3
	.4byte		.L1236
	.uleb128	2051
	.uleb128	32
	.byte		"dataBuf"
	.byte		0
	.4byte		.L1783
	.4byte		.L1784
	.sleb128	3
	.4byte		.L1236
	.uleb128	2051
	.uleb128	32
	.byte		"length"
	.byte		0
	.4byte		.L1623
	.4byte		.L1785
.L1786:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2053
	.uleb128	10
	.byte		"i"
	.byte		0
	.4byte		.L1274
	.4byte		.L1787
.L1788:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2054
	.uleb128	19
	.byte		"retVal"
	.byte		0
	.4byte		.L1500
	.4byte		.L1789
.L1790:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2055
	.uleb128	70
	.byte		"pPeriodicTxChannels"
	.byte		0
	.4byte		.L1463
	.4byte		.L1791
.L1792:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2056
	.uleb128	69
	.byte		"pPeriodicResponse"
	.byte		0
	.4byte		.L1793
	.4byte		.L1797
.L1798:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2057
	.uleb128	64
	.byte		"pPeriodicTxStatus"
	.byte		0
	.4byte		.L1470
	.4byte		.L1799
	.section	.debug_info,,n
	.sleb128	0
.L1779:
	.section	.debug_info,,n
.L1804:
	.sleb128	7
	.4byte		.L1801-.L2
	.byte		"PeriodicSubStateMachine"
	.byte		0
	.4byte		.L1236
	.uleb128	3161
	.uleb128	29
	.byte		0x1
	.4byte		.L1802
	.4byte		.L1803
	.sleb128	3
	.4byte		.L1236
	.uleb128	3161
	.uleb128	29
	.byte		"txChannel"
	.byte		0
	.4byte		.L1463
	.4byte		.L1805
	.section	.debug_info,,n
	.sleb128	0
.L1801:
	.section	.debug_info,,n
.L1810:
	.sleb128	9
	.4byte		.L1807-.L2
	.byte		"Dcm_DslPeriodicStateMachine"
	.byte		0
	.4byte		.L1236
	.uleb128	2124
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1808
	.4byte		.L1809
.L1811:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2126
	.uleb128	10
	.byte		"periodicCounter"
	.byte		0
	.4byte		.L1274
	.4byte		.L1812
	.section	.debug_info,,n
	.sleb128	0
.L1807:
	.section	.debug_info,,n
.L1817:
	.sleb128	7
	.4byte		.L1814-.L2
	.byte		"PreemptProtocol"
	.byte		0
	.4byte		.L1236
	.uleb128	2758
	.uleb128	29
	.byte		0x1
	.4byte		.L1815
	.4byte		.L1816
	.sleb128	3
	.4byte		.L1236
	.uleb128	2758
	.uleb128	29
	.byte		"isROESwitch"
	.byte		0
	.4byte		.L1237
	.4byte		.L1818
.L1819:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2760
	.uleb128	10
	.byte		"ServIndReqIndex"
	.byte		0
	.4byte		.L1274
	.4byte		.L1820
	.section	.debug_info,,n
	.sleb128	0
.L1814:
	.section	.debug_info,,n
.L1825:
	.sleb128	2
	.4byte		.L1822-.L2
	.byte		"GetPendingChannel"
	.byte		0
	.4byte		.L1236
	.uleb128	2838
	.uleb128	53
	.4byte		.L1487
	.byte		0x1
	.4byte		.L1823
	.4byte		.L1824
.L1826:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2840
	.uleb128	11
	.byte		"i"
	.byte		0
	.4byte		.L1251
	.4byte		.L1827
.L1828:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2841
	.uleb128	61
	.byte		"pChannel"
	.byte		0
	.4byte		.L1240
	.4byte		.L1829
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1833
	.4byte		.L1830
	.4byte		.L1831
.L1834:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2858
	.uleb128	66
	.byte		"pBuffer"
	.byte		0
	.4byte		.L1419
	.4byte		.L1835
.L1836:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2859
	.uleb128	70
	.byte		"pBufferStatus"
	.byte		0
	.4byte		.L1299
	.4byte		.L1837
	.section	.debug_info,,n
	.sleb128	0
.L1833:
	.section	.debug_info,,n
	.sleb128	0
.L1822:
	.section	.debug_info,,n
.L1842:
	.sleb128	2
	.4byte		.L1839-.L2
	.byte		"TransmitIntermediateResponse"
	.byte		0
	.4byte		.L1236
	.uleb128	3002
	.uleb128	39
	.4byte		.L1500
	.byte		0x1
	.4byte		.L1840
	.4byte		.L1841
	.sleb128	3
	.4byte		.L1236
	.uleb128	3002
	.uleb128	39
	.byte		"pTxChannel"
	.byte		0
	.4byte		.L1479
	.4byte		.L1843
	.sleb128	3
	.4byte		.L1236
	.uleb128	3002
	.uleb128	39
	.byte		"sid"
	.byte		0
	.4byte		.L1273
	.4byte		.L1844
	.sleb128	3
	.4byte		.L1236
	.uleb128	3002
	.uleb128	39
	.byte		"ErrorCode"
	.byte		0
	.4byte		.L1422
	.4byte		.L1845
.L1846:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3006
	.uleb128	19
	.byte		"retVal"
	.byte		0
	.4byte		.L1500
	.4byte		.L1847
	.section	.debug_info,,n
	.sleb128	0
.L1839:
	.section	.debug_info,,n
.L1852:
	.sleb128	2
	.4byte		.L1849-.L2
	.byte		"CheckProtocol"
	.byte		0
	.4byte		.L1236
	.uleb128	3040
	.uleb128	32
	.4byte		.L1237
	.byte		0x1
	.4byte		.L1850
	.4byte		.L1851
	.sleb128	3
	.4byte		.L1236
	.uleb128	3040
	.uleb128	32
	.byte		"p_RequestRxChannel"
	.byte		0
	.4byte		.L1240
	.4byte		.L1853
	.sleb128	3
	.4byte		.L1236
	.uleb128	3040
	.uleb128	32
	.byte		"isROESwitch"
	.byte		0
	.4byte		.L1237
	.4byte		.L1854
.L1855:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3042
	.uleb128	10
	.byte		"ServIndReqIndex"
	.byte		0
	.4byte		.L1274
	.4byte		.L1856
.L1857:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3043
	.uleb128	12
	.byte		"ProtocolStartGranted"
	.byte		0
	.4byte		.L1237
	.4byte		.L1858
.L1859:
	.sleb128	4
	.4byte		.L1236
	.uleb128	3044
	.uleb128	19
	.byte		"stdRetVal"
	.byte		0
	.4byte		.L1500
	.4byte		.L1860
	.section	.debug_info,,n
	.sleb128	0
.L1849:
	.section	.debug_info,,n
.L1866:
	.sleb128	9
	.4byte		.L1863-.L2
	.byte		"Dcm_SE_DslStateMachine"
	.byte		0
	.4byte		.L1236
	.uleb128	2145
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1864
	.4byte		.L1865
.L1867:
	.sleb128	6
	.4byte		.L1236
	.uleb128	2147
	.uleb128	24
	.byte		"responsePendingTimeout"
	.byte		0
	.4byte		.L1643
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L1868:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2148
	.uleb128	10
	.byte		"currentHandledServiceId"
	.byte		0
	.4byte		.L1274
	.4byte		.L1869
.L1870:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2149
	.uleb128	35
	.byte		"oldState"
	.byte		0
	.4byte		.L1449
	.4byte		.L1871
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1876
	.4byte		.L1873
	.4byte		.L1874
.L1877:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2165
	.uleb128	39
	.byte		"pPendingChannel"
	.byte		0
	.4byte		.L1487
	.4byte		.L1878
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1882
	.4byte		.L1879
	.4byte		.L1880
.L1883:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2185
	.uleb128	39
	.byte		"isROESwitch"
	.byte		0
	.4byte		.L1351
	.4byte		.L1884
	.section	.debug_info,,n
	.sleb128	0
.L1882:
	.section	.debug_info,,n
	.sleb128	0
.L1876:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1888
	.4byte		.L1885
	.4byte		.L1886
.L1889:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2269
	.uleb128	57
	.byte		"pPendingChannel"
	.byte		0
	.4byte		.L1486
	.4byte		.L1890
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1894
	.4byte		.L1891
	.4byte		.L1892
.L1895:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2274
	.uleb128	39
	.byte		"isROESwitch"
	.byte		0
	.4byte		.L1351
	.4byte		.L1896
	.section	.debug_info,,n
	.sleb128	0
.L1894:
	.section	.debug_info,,n
	.sleb128	0
.L1888:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1900
	.4byte		.L1897
	.4byte		.L1898
.L1901:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2418
	.uleb128	57
	.byte		"pPendingChannel"
	.byte		0
	.4byte		.L1486
	.4byte		.L1902
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1906
	.4byte		.L1903
	.4byte		.L1904
.L1907:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2429
	.uleb128	39
	.byte		"isROESwitch"
	.byte		0
	.4byte		.L1351
	.4byte		.L1908
	.section	.debug_info,,n
	.sleb128	0
.L1906:
	.section	.debug_info,,n
	.sleb128	0
.L1900:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1912
	.4byte		.L1909
	.4byte		.L1910
.L1913:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2533
	.uleb128	57
	.byte		"pPendingChannel"
	.byte		0
	.4byte		.L1486
	.4byte		.L1914
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1918
	.4byte		.L1915
	.4byte		.L1916
.L1919:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2546
	.uleb128	63
	.byte		"pRxChannel"
	.byte		0
	.4byte		.L1486
	.4byte		.L1920
	.section	.debug_info,,n
	.sleb128	0
.L1918:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1924
	.4byte		.L1921
	.4byte		.L1922
.L1925:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2570
	.uleb128	39
	.byte		"isROESwitch"
	.byte		0
	.4byte		.L1351
	.4byte		.L1926
	.section	.debug_info,,n
	.sleb128	0
.L1924:
	.section	.debug_info,,n
	.sleb128	0
.L1912:
	.section	.debug_info,,n
	.sleb128	0
.L1863:
	.section	.debug_info,,n
.L1931:
	.sleb128	7
	.4byte		.L1928-.L2
	.byte		"SetChannelCommMode"
	.byte		0
	.4byte		.L1236
	.uleb128	2736
	.uleb128	29
	.byte		0x1
	.4byte		.L1929
	.4byte		.L1930
	.sleb128	3
	.4byte		.L1236
	.uleb128	2736
	.uleb128	29
	.byte		"NetworkId"
	.byte		0
	.4byte		.L1273
	.4byte		.L1932
	.sleb128	3
	.4byte		.L1236
	.uleb128	2736
	.uleb128	29
	.byte		"commMode"
	.byte		0
	.4byte		.L1933
	.4byte		.L1936
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L1940
	.4byte		.L1937
	.4byte		.L1938
.L1941:
	.sleb128	4
	.4byte		.L1236
	.uleb128	2740
	.uleb128	14
	.byte		"i"
	.byte		0
	.4byte		.L1251
	.4byte		.L1942
	.section	.debug_info,,n
	.sleb128	0
.L1940:
	.section	.debug_info,,n
	.sleb128	0
.L1928:
	.section	.debug_info,,n
.L1947:
	.sleb128	9
	.4byte		.L1944-.L2
	.byte		"Dcm_ComM_NoComModeEntered"
	.byte		0
	.4byte		.L1236
	.uleb128	2668
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1945
	.4byte		.L1946
	.sleb128	3
	.4byte		.L1236
	.uleb128	2668
	.uleb128	22
	.byte		"NetworkId"
	.byte		0
	.4byte		.L1274
	.4byte		.L1948
	.section	.debug_info,,n
	.sleb128	0
.L1944:
	.section	.debug_info,,n
.L1953:
	.sleb128	9
	.4byte		.L1950-.L2
	.byte		"Dcm_ComM_SilentComModeEntered"
	.byte		0
	.4byte		.L1236
	.uleb128	2677
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1951
	.4byte		.L1952
	.sleb128	3
	.4byte		.L1236
	.uleb128	2677
	.uleb128	22
	.byte		"NetworkId"
	.byte		0
	.4byte		.L1274
	.4byte		.L1954
	.section	.debug_info,,n
	.sleb128	0
.L1950:
	.section	.debug_info,,n
.L1959:
	.sleb128	9
	.4byte		.L1956-.L2
	.byte		"Dcm_ComM_FullComModeEntered"
	.byte		0
	.4byte		.L1236
	.uleb128	2686
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L1957
	.4byte		.L1958
	.sleb128	3
	.4byte		.L1236
	.uleb128	2686
	.uleb128	22
	.byte		"NetworkId"
	.byte		0
	.4byte		.L1274
	.4byte		.L1960
	.section	.debug_info,,n
	.sleb128	0
.L1956:
	.section	.debug_info,,n
.L1961:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1962
	.uleb128	795
	.uleb128	49
	.byte		"Dcm_LCfg"
	.byte		0
	.4byte		.L1963
	.section	.debug_info,,n
.L1966:
	.sleb128	11
	.byte		0x1
	.byte		0x1
	.4byte		.L1967
	.uleb128	673
	.uleb128	54
	.byte		"Dcm_pPbCfg"
	.byte		0
	.4byte		.L1687
	.0byte		.L1966
	.section	.debug_info,,n
.L1968:
	.sleb128	12
	.byte		0x1
	.4byte		.L1236
	.uleb128	417
	.uleb128	18
	.byte		"Dcm_DbgCurrentSecurityLevel"
	.byte		0
	.4byte		.L1600
	.sleb128	5
	.byte		0x3
	.4byte		Dcm_DbgCurrentSecurityLevel
	.comm		Dcm_DbgCurrentSecurityLevel,1,0
.L1969:
	.sleb128	12
	.byte		0x1
	.4byte		.L1236
	.uleb128	422
	.uleb128	17
	.byte		"Dcm_DbgCurrentSession"
	.byte		0
	.4byte		.L1593
	.sleb128	5
	.byte		0x3
	.4byte		Dcm_DbgCurrentSession
	.section	.debug_info,,n
.L1970:
	.sleb128	12
	.byte		0x1
	.4byte		.L1236
	.uleb128	427
	.uleb128	18
	.byte		"Dcm_DbgCurrentProtocol"
	.byte		0
	.4byte		.L1666
	.sleb128	5
	.byte		0x3
	.4byte		Dcm_DbgCurrentProtocol
	.section	.debug_info,,n
.L1971:
	.sleb128	12
	.byte		0x1
	.4byte		.L1236
	.uleb128	434
	.uleb128	7
	.byte		"Dcm_DbgCurrentDiagnosticActivity"
	.byte		0
	.4byte		.L1274
	.sleb128	5
	.byte		0x3
	.4byte		Dcm_DbgCurrentDiagnosticActivity
	.comm		Dcm_DbgCurrentDiagnosticActivity,1,0
.L1972:
	.sleb128	6
	.4byte		.L1236
	.uleb128	456
	.uleb128	38
	.byte		"Dcm_DslInstance"
	.byte		0
	.4byte		.L1973
	.sleb128	5
	.byte		0x3
	.4byte		Dcm_DslInstance
	.lcomm		Dcm_DslInstance,64,2
.L1975:
	.sleb128	6
	.4byte		.L1236
	.uleb128	461
	.uleb128	58
	.byte		"intermediateTxChannelStorage"
	.byte		0
	.4byte		.L1976
	.sleb128	5
	.byte		0x3
	.4byte		intermediateTxChannelStorage
	.lcomm		intermediateTxChannelStorage,24,2
.L1978:
	.sleb128	6
	.4byte		.L1236
	.uleb128	481
	.uleb128	45
	.byte		"DslIntermediateTxBuffer"
	.byte		0
	.4byte		.L1285
	.sleb128	5
	.byte		0x3
	.4byte		DslIntermediateTxBuffer
	.section	.debug_info,,n
.L1979:
	.sleb128	6
	.4byte		.L1236
	.uleb128	507
	.uleb128	36
	.byte		"dslResponsePendingHasBeenSent"
	.byte		0
	.4byte		.L1237
	.sleb128	5
	.byte		0x3
	.4byte		dslResponsePendingHasBeenSent
	.lcomm		dslResponsePendingHasBeenSent,1,0
	.section	.debug_info,,n
.L1974:
	.sleb128	13
	.4byte		.L1236
	.uleb128	295
	.uleb128	14
	.4byte		.L1980-.L2
	.byte		"Dcm_DslInstanceType_Tag"
	.byte		0
	.uleb128	64
	.section	.debug_info,,n
.L492:
	.sleb128	14
	.byte		"dsl_state"
	.byte		0
	.4byte		.L1450
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L493:
	.sleb128	14
	.byte		"preemption_state"
	.byte		0
	.4byte		.L1450
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L494:
	.sleb128	14
	.byte		"p_active_protocol"
	.byte		0
	.4byte		.L1981
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L495:
	.sleb128	14
	.byte		"active_security_level"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L496:
	.sleb128	14
	.byte		"active_session"
	.byte		0
	.4byte		.L1593
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L497:
	.sleb128	14
	.byte		"s3_server_timer"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L498:
	.sleb128	14
	.byte		"response_pending_timer"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L499:
	.sleb128	14
	.byte		"response_pending_counter"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L500:
	.sleb128	14
	.byte		"response_pending_timer_elapsed"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L501:
	.sleb128	14
	.byte		"protocol_stopped"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L502:
	.sleb128	14
	.byte		"transmit_no_response"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L503:
	.sleb128	14
	.byte		"negative_response_transmitted"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L504:
	.sleb128	14
	.byte		"reset_to_default_session"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L505:
	.sleb128	14
	.byte		"tx_confirmation"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L506:
	.sleb128	14
	.byte		"tx_confirmation_result"
	.byte		0
	.4byte		.L1985
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
.L507:
	.sleb128	14
	.byte		"networkId"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L508:
	.sleb128	14
	.byte		"p_dsd_tx_channel"
	.byte		0
	.4byte		.L1480
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L509:
	.sleb128	14
	.byte		"p_active_tx_channel"
	.byte		0
	.4byte		.L1480
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L510:
	.sleb128	14
	.byte		"p_active_rx_channel"
	.byte		0
	.4byte		.L1487
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L511:
	.sleb128	14
	.byte		"p_preempting_rx_channel"
	.byte		0
	.4byte		.L1487
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L512:
	.sleb128	14
	.byte		"active_periodic_tx"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L513:
	.sleb128	14
	.byte		"p_active_periodic_response"
	.byte		0
	.4byte		.L1793
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L514:
	.sleb128	14
	.byte		"jumpFromBootloader"
	.byte		0
	.4byte		.L1986
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
	.sleb128	0
.L1980:
.L1977:
	.sleb128	13
	.4byte		.L1236
	.uleb128	295
	.uleb128	14
	.4byte		.L1988-.L2
	.byte		"DslIntermediateTxChannelStorageType_Tag"
	.byte		0
	.uleb128	24
.L489:
	.sleb128	14
	.byte		"data"
	.byte		0
	.4byte		.L1989
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L490:
	.sleb128	14
	.byte		"status"
	.byte		0
	.4byte		.L1301
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L491:
	.sleb128	14
	.byte		"pdu_info"
	.byte		0
	.4byte		.L1368
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L1988:
.L1987:
	.sleb128	13
	.4byte		.L1236
	.uleb128	272
	.uleb128	1
	.4byte		.L1991-.L2
	.byte		"DslJumpFromBootloaderType_Tag"
	.byte		0
	.uleb128	12
.L486:
	.sleb128	14
	.byte		"state"
	.byte		0
	.4byte		.L1992
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L487:
	.sleb128	14
	.byte		"p_rx_channel"
	.byte		0
	.4byte		.L1487
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L488:
	.sleb128	14
	.byte		"sub_function"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L1991:
.L1965:
	.sleb128	13
	.4byte		.L1962
	.uleb128	683
	.uleb128	14
	.4byte		.L1994-.L2
	.byte		"Dcm_LinkTimeConfigType_Tag"
	.byte		0
	.uleb128	180
.L425:
	.sleb128	14
	.byte		"maxNumberOfRecords"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L426:
	.sleb128	14
	.byte		"rte_unconnected"
	.byte		0
	.4byte		.L1500
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L427:
	.sleb128	14
	.byte		"power_down_time"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L428:
	.sleb128	14
	.byte		"delay_boot_inv_key"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L429:
	.sleb128	14
	.byte		"timer_s3_server"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L430:
	.sleb128	14
	.byte		"resp_on_second_declined_request"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L431:
	.sleb128	14
	.byte		"periodic_transmission_rates"
	.byte		0
	.4byte		.L1995
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L432:
	.sleb128	14
	.byte		"paged_buffer_timeout"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L433:
	.sleb128	14
	.byte		"p_response_buffer"
	.byte		0
	.4byte		.L1997
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L434:
	.sleb128	14
	.byte		"sourceBufferSize"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L435:
	.sleb128	14
	.byte		"p_dddid_sourceBuffer"
	.byte		0
	.4byte		.L1997
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L436:
	.sleb128	14
	.byte		"num_sessions"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L437:
	.sleb128	14
	.byte		"sessions"
	.byte		0
	.4byte		.L1998
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L438:
	.sleb128	14
	.byte		"num_securities"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L439:
	.sleb128	14
	.byte		"securities"
	.byte		0
	.4byte		.L1999
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L440:
	.sleb128	14
	.byte		"num_service_tables"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L441:
	.sleb128	14
	.byte		"service_tables"
	.byte		0
	.4byte		.L2004
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L442:
	.sleb128	14
	.byte		"max_did_to_read"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L443:
	.sleb128	14
	.byte		"p_requested_dids"
	.byte		0
	.4byte		.L2009
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L444:
	.sleb128	14
	.byte		"num_dids"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L445:
	.sleb128	14
	.byte		"dids"
	.byte		0
	.4byte		.L2013
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L446:
	.sleb128	14
	.byte		"num_periodic_dynamic_dids"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L447:
	.sleb128	14
	.byte		"periodicDynamicDids"
	.byte		0
	.4byte		.L2018
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L448:
	.sleb128	14
	.byte		"requested_periodicDids"
	.byte		0
	.4byte		.L1254
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L449:
	.sleb128	14
	.byte		"check_per_source_did"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L450:
	.sleb128	14
	.byte		"num_did_ranges"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	86
	.byte		0x1
.L451:
	.sleb128	14
	.byte		"p_did_ranges"
	.byte		0
	.4byte		.L2023
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L452:
	.sleb128	14
	.byte		"num_pids"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L453:
	.sleb128	14
	.byte		"p_pids"
	.byte		0
	.4byte		.L2028
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L454:
	.sleb128	14
	.byte		"num_req_ctrl"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
.L455:
	.sleb128	14
	.byte		"p_req_ctrl"
	.byte		0
	.4byte		.L2033
	.sleb128	2
	.byte		0x23
	.uleb128	104
	.byte		0x1
.L456:
	.sleb128	14
	.byte		"p_roe"
	.byte		0
	.4byte		.L2038
	.sleb128	2
	.byte		0x23
	.uleb128	108
	.byte		0x1
.L457:
	.sleb128	14
	.byte		"num_vehicle_info"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
.L458:
	.sleb128	14
	.byte		"p_vehicle_info"
	.byte		0
	.4byte		.L2043
	.sleb128	2
	.byte		0x23
	.uleb128	116
	.byte		0x1
.L459:
	.sleb128	14
	.byte		"num_routine_ctrl"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
.L460:
	.sleb128	14
	.byte		"p_routine_ctrl"
	.byte		0
	.4byte		.L2048
	.sleb128	2
	.byte		0x23
	.uleb128	124
	.byte		0x1
.L461:
	.sleb128	14
	.byte		"num_freezeframe_records"
	.byte		0
	.4byte		.L1274
	.sleb128	3
	.byte		0x23
	.uleb128	128
	.byte		0x1
.L462:
	.sleb128	14
	.byte		"p_freezeframe_records"
	.byte		0
	.4byte		.L2053
	.sleb128	3
	.byte		0x23
	.uleb128	132
	.byte		0x1
.L463:
	.sleb128	14
	.byte		"num_extendeddata_records"
	.byte		0
	.4byte		.L1274
	.sleb128	3
	.byte		0x23
	.uleb128	136
	.byte		0x1
.L464:
	.sleb128	14
	.byte		"p_extendeddata_records"
	.byte		0
	.4byte		.L2053
	.sleb128	3
	.byte		0x23
	.uleb128	140
	.byte		0x1
.L465:
	.sleb128	14
	.byte		"index_obdedr_start"
	.byte		0
	.4byte		.L1274
	.sleb128	3
	.byte		0x23
	.uleb128	144
	.byte		0x1
.L466:
	.sleb128	14
	.byte		"num_cb_req_service"
	.byte		0
	.4byte		.L1274
	.sleb128	3
	.byte		0x23
	.uleb128	145
	.byte		0x1
.L467:
	.sleb128	14
	.byte		"p_cb_req_services"
	.byte		0
	.4byte		.L2055
	.sleb128	3
	.byte		0x23
	.uleb128	148
	.byte		0x1
.L468:
	.sleb128	14
	.byte		"p_write_memory"
	.byte		0
	.4byte		.L2060
	.sleb128	3
	.byte		0x23
	.uleb128	152
	.byte		0x1
.L469:
	.sleb128	14
	.byte		"p_read_memory"
	.byte		0
	.4byte		.L2060
	.sleb128	3
	.byte		0x23
	.uleb128	156
	.byte		0x1
.L470:
	.sleb128	14
	.byte		"p_software_download"
	.byte		0
	.4byte		.L2065
	.sleb128	3
	.byte		0x23
	.uleb128	160
	.byte		0x1
.L471:
	.sleb128	14
	.byte		"p_routine_state"
	.byte		0
	.4byte		.L2070
	.sleb128	3
	.byte		0x23
	.uleb128	164
	.byte		0x1
.L472:
	.sleb128	14
	.byte		"p_ddid_init_info"
	.byte		0
	.4byte		.L2074
	.sleb128	3
	.byte		0x23
	.uleb128	168
	.byte		0x1
.L473:
	.sleb128	14
	.byte		"p_get_periodic_data_trigger"
	.byte		0
	.4byte		.L2079
	.sleb128	3
	.byte		0x23
	.uleb128	172
	.byte		0x1
.L474:
	.sleb128	14
	.byte		"p_transmit_periodic_data_trigger"
	.byte		0
	.4byte		.L2082
	.sleb128	3
	.byte		0x23
	.uleb128	176
	.byte		0x1
	.sleb128	0
.L1994:
.L2012:
	.sleb128	13
	.4byte		.L1962
	.uleb128	683
	.uleb128	14
	.4byte		.L2085-.L2
	.byte		"Dcm_Cfg_RequestedDidInfoType_Tag"
	.byte		0
	.uleb128	8
.L423:
	.sleb128	14
	.byte		"identifier"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	14
	.byte		"did_type"
	.byte		0
	.4byte		.L2086
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L2085:
.L2078:
	.sleb128	13
	.4byte		.L1962
	.uleb128	652
	.uleb128	14
	.4byte		.L2088-.L2
	.byte		"Dcm_Cfg_DDidInitInfoType_Tag"
	.byte		0
	.uleb128	16
.L419:
	.sleb128	14
	.byte		"ddid_init_policy"
	.byte		0
	.4byte		.L2089
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L420:
	.sleb128	14
	.byte		"ddprid_init_policy"
	.byte		0
	.4byte		.L2091
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L421:
	.sleb128	14
	.byte		"ddprid_nvm_hash_rom"
	.byte		0
	.4byte		.L2093
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L422:
	.sleb128	14
	.byte		"p_ddprid_nvm_hash_ram"
	.byte		0
	.4byte		.L2095
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L2088:
.L2042:
	.sleb128	13
	.4byte		.L1962
	.uleb128	477
	.uleb128	1
	.4byte		.L2096-.L2
	.byte		"Dcm_Cfg_RoeType_Tag"
	.byte		0
	.uleb128	28
.L410:
	.sleb128	14
	.byte		"dtc_status_change_event"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L411:
	.sleb128	14
	.byte		"num_event"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L412:
	.sleb128	14
	.byte		"num_event_window_time"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L413:
	.sleb128	14
	.byte		"inter_msg_timeout"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	14
	.byte		"p_event_cfg"
	.byte		0
	.4byte		.L2097
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	14
	.byte		"p_event_window_times"
	.byte		0
	.4byte		.L2102
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	14
	.byte		"p_nvm_status"
	.byte		0
	.4byte		.L2107
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L417:
	.sleb128	14
	.byte		"p_event_status"
	.byte		0
	.4byte		.L2111
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L418:
	.sleb128	14
	.byte		"p_nvm_event_status"
	.byte		0
	.4byte		.L2115
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L2096:
.L2114:
	.sleb128	13
	.4byte		.L1962
	.uleb128	477
	.uleb128	1
	.4byte		.L2119-.L2
	.byte		"Dcm_Cfg_RoeEventStatusType_Tag"
	.byte		0
	.uleb128	8
.L407:
	.sleb128	14
	.byte		"state"
	.byte		0
	.4byte		.L2120
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L408:
	.sleb128	14
	.byte		"queue_next"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L409:
	.sleb128	14
	.byte		"queue_previous"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
	.sleb128	0
.L2119:
.L2106:
	.sleb128	13
	.4byte		.L1962
	.uleb128	477
	.uleb128	1
	.4byte		.L2122-.L2
	.byte		"Dcm_Cfg_RoeEventWindowTimeType_Tag"
	.byte		0
	.uleb128	2
.L405:
	.sleb128	14
	.byte		"type"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L406:
	.sleb128	14
	.byte		"evaluate_storage_state"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L2122:
.L2101:
	.sleb128	13
	.4byte		.L1962
	.uleb128	477
	.uleb128	1
	.4byte		.L2123-.L2
	.byte		"Dcm_Cfg_RoeEventType_Tag"
	.byte		0
	.uleb128	8
.L402:
	.sleb128	14
	.byte		"initial_event_state_stopped"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L403:
	.sleb128	14
	.byte		"did"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L404:
	.sleb128	14
	.byte		"p_schm_mode_switch"
	.byte		0
	.4byte		.L2124
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L2123:
.L2069:
	.sleb128	13
	.4byte		.L1962
	.uleb128	477
	.uleb128	1
	.4byte		.L2127-.L2
	.byte		"Dcm_Cfg_SoftwareDownloadType_Tag"
	.byte		0
	.uleb128	12
.L399:
	.sleb128	14
	.byte		"RequestDownloadFunc"
	.byte		0
	.4byte		.L2128
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L400:
	.sleb128	14
	.byte		"WriteMemoryFunc"
	.byte		0
	.4byte		.L2134
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L401:
	.sleb128	14
	.byte		"RequestTransferExitFunc"
	.byte		0
	.4byte		.L2139
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L2127:
.L2064:
	.sleb128	13
	.4byte		.L1962
	.uleb128	477
	.uleb128	1
	.4byte		.L2143-.L2
	.byte		"Dcm_Cfg_MemoryType_Tag"
	.byte		0
	.uleb128	16
.L395:
	.sleb128	14
	.byte		"use_memory_id"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L396:
	.sleb128	14
	.byte		"MemoryOperationFunc"
	.byte		0
	.4byte		.L2134
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L397:
	.sleb128	14
	.byte		"p_memory_ranges"
	.byte		0
	.4byte		.L2144
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L398:
	.sleb128	14
	.byte		"num_memory_ranges"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L2143:
.L2148:
	.sleb128	13
	.4byte		.L1962
	.uleb128	477
	.uleb128	1
	.4byte		.L2149-.L2
	.byte		"Dcm_Cfg_MemoryRangeType_Tag"
	.byte		0
	.uleb128	20
.L390:
	.sleb128	14
	.byte		"memid"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L391:
	.sleb128	14
	.byte		"low"
	.byte		0
	.4byte		.L2093
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L392:
	.sleb128	14
	.byte		"high"
	.byte		0
	.4byte		.L2093
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L393:
	.sleb128	14
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L394:
	.sleb128	14
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L2150
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L2149:
.L2059:
	.sleb128	13
	.4byte		.L1962
	.uleb128	477
	.uleb128	1
	.4byte		.L2154-.L2
	.byte		"Dcm_Cfg_CallbackReqServType_Tag"
	.byte		0
	.uleb128	8
.L388:
	.sleb128	14
	.byte		"start_protocol"
	.byte		0
	.4byte		.L2155
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L389:
	.sleb128	14
	.byte		"stop_protocol"
	.byte		0
	.4byte		.L2158
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L2154:
.L2052:
	.sleb128	13
	.4byte		.L1962
	.uleb128	477
	.uleb128	1
	.4byte		.L2161-.L2
	.byte		"Dcm_Cfg_RoutineCtrlType_Tag"
	.byte		0
	.uleb128	28
.L378:
	.sleb128	14
	.byte		"identifier"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L379:
	.sleb128	14
	.byte		"StartFunc"
	.byte		0
	.4byte		.L2162
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L380:
	.sleb128	14
	.byte		"StopFunc"
	.byte		0
	.4byte		.L2165
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L381:
	.sleb128	14
	.byte		"RequestResultsFunc"
	.byte		0
	.4byte		.L2168
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L382:
	.sleb128	14
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L383:
	.sleb128	14
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L384:
	.sleb128	14
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L2150
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
	.sleb128	0
.L2161:
.L2022:
	.sleb128	13
	.4byte		.L1962
	.uleb128	416
	.uleb128	1
	.4byte		.L2171-.L2
	.byte		"Dcm_Cfg_PeriodicDynamicDidType_Tag"
	.byte		0
	.uleb128	24
.L371:
	.sleb128	14
	.byte		"identifier"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L372:
	.sleb128	14
	.byte		"size"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L373:
	.sleb128	14
	.byte		"pDDDidInfo"
	.byte		0
	.4byte		.L2172
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L374:
	.sleb128	14
	.byte		"pDataSourcesRead"
	.byte		0
	.4byte		.L2177
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L375:
	.sleb128	14
	.byte		"pDataSourcesDefine"
	.byte		0
	.4byte		.L2182
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L376:
	.sleb128	14
	.byte		"pNumberOfDefinedSources"
	.byte		0
	.4byte		.L1997
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L377:
	.sleb128	14
	.byte		"sample_data"
	.byte		0
	.4byte		.L2184
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L2171:
.L2187:
	.sleb128	13
	.4byte		.L1962
	.uleb128	416
	.uleb128	1
	.4byte		.L2188-.L2
	.byte		"Dcm_Cfg_PeriodicSampleDataType_Tag"
	.byte		0
	.uleb128	8
.L368:
	.sleb128	14
	.byte		"buffer_data_ready"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L369:
	.sleb128	14
	.byte		"buffer_size"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L370:
	.sleb128	14
	.byte		"data_buffer"
	.byte		0
	.4byte		.L1783
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L2188:
.L2176:
	.sleb128	13
	.4byte		.L1962
	.uleb128	416
	.uleb128	1
	.4byte		.L2189-.L2
	.byte		"Dcm_Cfg_DDDDidInfoType_Tag"
	.byte		0
	.uleb128	12
.L365:
	.sleb128	14
	.byte		"max_no_of_requested_sources"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L366:
	.sleb128	14
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L367:
	.sleb128	14
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L2189:
.L2181:
	.sleb128	13
	.4byte		.L1962
	.uleb128	416
	.uleb128	1
	.4byte		.L2190-.L2
	.byte		"Dcm_Cfg_DDDDidSourceType_Tag"
	.byte		0
	.uleb128	20
.L360:
	.sleb128	14
	.byte		"record_type"
	.byte		0
	.4byte		.L2191
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L361:
	.sleb128	14
	.byte		"memory_id"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L362:
	.sleb128	14
	.byte		"address"
	.byte		0
	.4byte		.L2093
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L363:
	.sleb128	14
	.byte		"size"
	.byte		0
	.4byte		.L2093
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L364:
	.sleb128	14
	.byte		"pDidRead"
	.byte		0
	.4byte		.L2193
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L2190:
.L2027:
	.sleb128	13
	.4byte		.L1962
	.uleb128	274
	.uleb128	1
	.4byte		.L2197-.L2
	.byte		"Dcm_Cfg_DidRangeType_Tag"
	.byte		0
	.uleb128	20
.L354:
	.sleb128	14
	.byte		"lower_limit"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L355:
	.sleb128	14
	.byte		"upper_limit"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L356:
	.sleb128	14
	.byte		"max_data_length"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L357:
	.sleb128	14
	.byte		"IsDidAvailableFunc"
	.byte		0
	.4byte		.L2198
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L358:
	.sleb128	14
	.byte		"p_did_range_read"
	.byte		0
	.4byte		.L2204
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L359:
	.sleb128	14
	.byte		"p_did_range_write"
	.byte		0
	.4byte		.L2209
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L2197:
.L2213:
	.sleb128	13
	.4byte		.L1962
	.uleb128	274
	.uleb128	1
	.4byte		.L2214-.L2
	.byte		"Dcm_Cfg_DidRangeWriteType_Tag"
	.byte		0
	.uleb128	16
.L350:
	.sleb128	14
	.byte		"WriteDidDataFunc"
	.byte		0
	.4byte		.L2215
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L351:
	.sleb128	14
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L352:
	.sleb128	14
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L353:
	.sleb128	14
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L2150
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L2214:
.L2208:
	.sleb128	13
	.4byte		.L1962
	.uleb128	274
	.uleb128	1
	.4byte		.L2219-.L2
	.byte		"Dcm_Cfg_DidRangeReadType_Tag"
	.byte		0
	.uleb128	20
.L345:
	.sleb128	14
	.byte		"ReadDidDataFunc"
	.byte		0
	.4byte		.L2220
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L346:
	.sleb128	14
	.byte		"ReadDidDataLengthFunc"
	.byte		0
	.4byte		.L2224
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L347:
	.sleb128	14
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L348:
	.sleb128	14
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L349:
	.sleb128	14
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L2150
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L2219:
.L2017:
	.sleb128	13
	.4byte		.L1962
	.uleb128	274
	.uleb128	1
	.4byte		.L2228-.L2
	.byte		"Dcm_Cfg_DidType_Tag"
	.byte		0
	.uleb128	28
.L336:
	.sleb128	14
	.byte		"identifier"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L337:
	.sleb128	14
	.byte		"size"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L338:
	.sleb128	14
	.byte		"scalingInfoSize"
	.byte		0
	.4byte		.L1623
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L339:
	.sleb128	14
	.byte		"pDidWrite"
	.byte		0
	.4byte		.L2229
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L340:
	.sleb128	14
	.byte		"pDidRead"
	.byte		0
	.4byte		.L2234
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L341:
	.sleb128	14
	.byte		"pDidControl"
	.byte		0
	.4byte		.L2235
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L342:
	.sleb128	14
	.byte		"GetScalingInformationFunc"
	.byte		0
	.4byte		.L2236
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L343:
	.sleb128	14
	.byte		"RetStatus"
	.byte		0
	.4byte		.L1500
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L344:
	.sleb128	14
	.byte		"hasFixedLength"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
	.sleb128	0
.L2228:
.L1613:
	.sleb128	13
	.4byte		.L1962
	.uleb128	274
	.uleb128	1
	.4byte		.L2240-.L2
	.byte		"Dcm_Cfg_DidControlType_Tag"
	.byte		0
	.uleb128	32
.L326:
	.sleb128	14
	.byte		"control_enable_mask_record_size"
	.byte		0
	.4byte		.L1623
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L327:
	.sleb128	14
	.byte		"p_under_control"
	.byte		0
	.4byte		.L1997
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L328:
	.sleb128	14
	.byte		"rctecu_index"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L329:
	.sleb128	14
	.byte		"rtd_index"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L330:
	.sleb128	14
	.byte		"fcs_index"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L331:
	.sleb128	14
	.byte		"sta_index"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L332:
	.sleb128	14
	.byte		"ReadDataFunc"
	.byte		0
	.4byte		.L2241
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L333:
	.sleb128	14
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L334:
	.sleb128	14
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L335:
	.sleb128	14
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L2150
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L2240:
.L2196:
	.sleb128	13
	.4byte		.L1962
	.uleb128	274
	.uleb128	1
	.4byte		.L2245-.L2
	.byte		"Dcm_Cfg_DidReadType_Tag"
	.byte		0
	.uleb128	24
.L320:
	.sleb128	14
	.byte		"ConditionCheckReadFunc"
	.byte		0
	.4byte		.L2246
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L321:
	.sleb128	14
	.byte		"ReadDataLengthFunc"
	.byte		0
	.4byte		.L2250
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L322:
	.sleb128	14
	.byte		"ReadDataFunc"
	.byte		0
	.4byte		.L2241
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L323:
	.sleb128	14
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L324:
	.sleb128	14
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L325:
	.sleb128	14
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L2150
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L2245:
.L2233:
	.sleb128	13
	.4byte		.L1962
	.uleb128	274
	.uleb128	1
	.4byte		.L2254-.L2
	.byte		"Dcm_Cfg_DidWriteType_Tag"
	.byte		0
	.uleb128	16
.L316:
	.sleb128	14
	.byte		"WriteDataFunc"
	.byte		0
	.4byte		.L2255
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L317:
	.sleb128	14
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L318:
	.sleb128	14
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L319:
	.sleb128	14
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L2150
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L2254:
.L2032:
	.sleb128	13
	.4byte		.L1962
	.uleb128	274
	.uleb128	1
	.4byte		.L2259-.L2
	.byte		"Dcm_Cfg_PidType_Tag"
	.byte		0
	.uleb128	24
.L309:
	.sleb128	14
	.byte		"identifier"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L310:
	.sleb128	14
	.byte		"size"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L311:
	.sleb128	14
	.byte		"service_type"
	.byte		0
	.4byte		.L2260
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L312:
	.sleb128	14
	.byte		"num_support_infos"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L313:
	.sleb128	14
	.byte		"p_support_info"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L314:
	.sleb128	14
	.byte		"num_pidDatas"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L315:
	.sleb128	14
	.byte		"p_pidDatas"
	.byte		0
	.4byte		.L2262
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L2259:
.L2266:
	.sleb128	13
	.4byte		.L1962
	.uleb128	274
	.uleb128	1
	.4byte		.L2267-.L2
	.byte		"Dcm_Cfg_PidDataType_Tag"
	.byte		0
	.uleb128	8
.L306:
	.sleb128	14
	.byte		"data_Pos"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L307:
	.sleb128	14
	.byte		"size"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L308:
	.sleb128	14
	.byte		"ReadDataFunc"
	.byte		0
	.4byte		.L2268
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L2267:
.L2047:
	.sleb128	13
	.4byte		.L1962
	.uleb128	213
	.uleb128	1
	.4byte		.L2271-.L2
	.byte		"Dcm_Cfg_VehicleInfoType_Tag"
	.byte		0
	.uleb128	8
.L303:
	.sleb128	14
	.byte		"identifier"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L304:
	.sleb128	14
	.byte		"size"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L305:
	.sleb128	14
	.byte		"GetInfotypeValueDataFunc"
	.byte		0
	.4byte		.L2272
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L2271:
.L2037:
	.sleb128	13
	.4byte		.L1962
	.uleb128	213
	.uleb128	1
	.4byte		.L2275-.L2
	.byte		"Dcm_Cfg_ReqCtrlType_Tag"
	.byte		0
	.uleb128	12
.L299:
	.sleb128	14
	.byte		"identifier"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L300:
	.sleb128	14
	.byte		"in_size"
	.byte		0
	.4byte		.L1623
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L301:
	.sleb128	14
	.byte		"out_size"
	.byte		0
	.4byte		.L1623
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L302:
	.sleb128	14
	.byte		"RequestControlFunc"
	.byte		0
	.4byte		.L2276
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L2275:
.L2003:
	.sleb128	13
	.4byte		.L1962
	.uleb128	213
	.uleb128	1
	.4byte		.L2280-.L2
	.byte		"Dcm_Cfg_SecurityType_Tag"
	.byte		0
	.uleb128	24
.L291:
	.sleb128	14
	.byte		"security_level"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L292:
	.sleb128	14
	.byte		"GetSeedFunc"
	.byte		0
	.4byte		.L2281
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L293:
	.sleb128	14
	.byte		"CompareKeyFunc"
	.byte		0
	.4byte		.L2285
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L294:
	.sleb128	14
	.byte		"num_max_att_delay"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L295:
	.sleb128	14
	.byte		"delay_inv_key"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L296:
	.sleb128	14
	.byte		"num_seed"
	.byte		0
	.4byte		.L1623
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L297:
	.sleb128	14
	.byte		"num_key"
	.byte		0
	.4byte		.L1623
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L298:
	.sleb128	14
	.byte		"address_size"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L2280:
.L1651:
	.sleb128	13
	.4byte		.L1962
	.uleb128	213
	.uleb128	1
	.4byte		.L2289-.L2
	.byte		"Dcm_Cfg_SessionType_Tag"
	.byte		0
	.uleb128	16
.L285:
	.sleb128	14
	.byte		"session_level"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L286:
	.sleb128	14
	.byte		"p2_server_max"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L287:
	.sleb128	14
	.byte		"p2_star_server_max"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L288:
	.sleb128	14
	.byte		"client_p2_server_max"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L289:
	.sleb128	14
	.byte		"client_p2_star_server_max"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L290:
	.sleb128	14
	.byte		"jump_to_bootloader"
	.byte		0
	.4byte		.L2290
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L2289:
.L2008:
	.sleb128	13
	.4byte		.L2292
	.uleb128	67
	.uleb128	14
	.4byte		.L2293-.L2
	.byte		"Dcm_Cfg_ServiceTableType_Tag"
	.byte		0
	.uleb128	8
.L282:
	.sleb128	14
	.byte		"identifier"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L283:
	.sleb128	14
	.byte		"num_services"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L284:
	.sleb128	14
	.byte		"p_identifier_table"
	.byte		0
	.4byte		.L2294
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L2293:
.L2298:
	.sleb128	13
	.4byte		.L2292
	.uleb128	67
	.uleb128	14
	.4byte		.L2299-.L2
	.byte		"Dcm_Cfg_ServiceType_Tag"
	.byte		0
	.uleb128	32
.L274:
	.sleb128	14
	.byte		"service_id"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L275:
	.sleb128	14
	.byte		"trigger_func"
	.byte		0
	.4byte		.L2300
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L276:
	.sleb128	14
	.byte		"possible_suppress_bit"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L277:
	.sleb128	14
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L278:
	.sleb128	14
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L279:
	.sleb128	14
	.byte		"num_subServices"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L280:
	.sleb128	14
	.byte		"p_subServices"
	.byte		0
	.4byte		.L2304
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L281:
	.sleb128	14
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L2150
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
	.sleb128	0
.L2299:
.L2308:
	.sleb128	13
	.4byte		.L2292
	.uleb128	67
	.uleb128	14
	.4byte		.L2309-.L2
	.byte		"Dcm_Cfg_SubServiceType_Tag"
	.byte		0
	.uleb128	20
.L269:
	.sleb128	14
	.byte		"sub_service_id"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L270:
	.sleb128	14
	.byte		"p_security_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L271:
	.sleb128	14
	.byte		"p_session_levels"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L272:
	.sleb128	14
	.byte		"modeRuleFunc"
	.byte		0
	.4byte		.L2150
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L273:
	.sleb128	14
	.byte		"trigger_func"
	.byte		0
	.4byte		.L2300
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L2309:
.L1644:
	.sleb128	13
	.4byte		.L2292
	.uleb128	67
	.uleb128	14
	.4byte		.L2310-.L2
	.byte		"Dcm_TimerServerType_Tag"
	.byte		0
	.uleb128	4
.L267:
	.sleb128	14
	.byte		"timer_p2_server"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L268:
	.sleb128	14
	.byte		"timer_p2_star_server"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L2310:
.L2118:
	.sleb128	13
	.4byte		.L2292
	.uleb128	67
	.uleb128	14
	.4byte		.L2311-.L2
	.byte		"Dcm_Cfg_RoeNvmEventStatusType_Tag"
	.byte		0
	.uleb128	8
.L188:
	.sleb128	14
	.byte		"stored_state"
	.byte		0
	.4byte		.L2120
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L189:
	.sleb128	14
	.byte		"event_window_time"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L190:
	.sleb128	14
	.byte		"rx_pdu_id"
	.byte		0
	.4byte		.L1290
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L2311:
.L2110:
	.sleb128	13
	.4byte		.L2292
	.uleb128	67
	.uleb128	14
	.4byte		.L2312-.L2
	.byte		"Dcm_Cfg_RoeNvmStatusType_Tag"
	.byte		0
	.uleb128	1
.L187:
	.sleb128	14
	.byte		"dtc_status_mask"
	.byte		0
	.4byte		.L2313
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L2312:
.L1690:
	.sleb128	13
	.4byte		.L2314
	.uleb128	247
	.uleb128	1
	.4byte		.L2315-.L2
	.byte		"Dcm_ConfigType_Tag"
	.byte		0
	.uleb128	52
.L172:
	.sleb128	14
	.byte		"first_periodic_tx_confirmation_id_value"
	.byte		0
	.4byte		.L1290
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L173:
	.sleb128	14
	.byte		"first_roe_tx_confirmation_id_value"
	.byte		0
	.4byte		.L1290
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L174:
	.sleb128	14
	.byte		"first_invalid_tx_confirmation_id_value"
	.byte		0
	.4byte		.L1290
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L175:
	.sleb128	14
	.byte		"num_rx_channels"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L176:
	.sleb128	14
	.byte		"p_rx_channels"
	.byte		0
	.4byte		.L1266
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L177:
	.sleb128	14
	.byte		"p_tx_channels"
	.byte		0
	.4byte		.L1479
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L178:
	.sleb128	14
	.byte		"p_periodic_tx_lookup_table"
	.byte		0
	.4byte		.L2316
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L179:
	.sleb128	14
	.byte		"max_num_resp_pend"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L180:
	.sleb128	14
	.byte		"p_pids_support_01"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L181:
	.sleb128	14
	.byte		"p_pids_support_02"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L182:
	.sleb128	14
	.byte		"p_req_ctrl_support"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L183:
	.sleb128	14
	.byte		"p_vehicle_info_type_support"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L184:
	.sleb128	14
	.byte		"p_service_table_support"
	.byte		0
	.4byte		.L2318
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L185:
	.sleb128	14
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L2323
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L186:
	.sleb128	14
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L2323
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
	.sleb128	0
.L2315:
.L2322:
	.sleb128	13
	.4byte		.L2314
	.uleb128	247
	.uleb128	1
	.4byte		.L2326-.L2
	.byte		"Dcm_Cfg_ServiceTableSupport_Tag"
	.byte		0
	.uleb128	8
.L170:
	.sleb128	14
	.byte		"service_table_id"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L171:
	.sleb128	14
	.byte		"p_service_support"
	.byte		0
	.4byte		.L2053
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L2326:
.L1243:
	.sleb128	13
	.4byte		.L2314
	.uleb128	191
	.uleb128	1
	.4byte		.L2327-.L2
	.byte		"Dcm_Cfg_RxChannelType_Tag"
	.byte		0
	.uleb128	44
.L154:
	.sleb128	14
	.byte		"pdu_id"
	.byte		0
	.4byte		.L1290
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L155:
	.sleb128	14
	.byte		"networkId"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L156:
	.sleb128	14
	.byte		"tester_source_addr"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L157:
	.sleb128	14
	.byte		"roe_pdu_id"
	.byte		0
	.4byte		.L1290
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L158:
	.sleb128	14
	.byte		"is_roe"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L159:
	.sleb128	14
	.byte		"p_buffer"
	.byte		0
	.4byte		.L1419
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L160:
	.sleb128	14
	.byte		"p_2ndReqBuffer"
	.byte		0
	.4byte		.L1419
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L161:
	.sleb128	14
	.byte		"p_protocol"
	.byte		0
	.4byte		.L2328
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L162:
	.sleb128	14
	.byte		"p_txchannel"
	.byte		0
	.4byte		.L1479
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L163:
	.sleb128	14
	.byte		"addr_type"
	.byte		0
	.4byte		.L2329
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L164:
	.sleb128	14
	.byte		"p_state"
	.byte		0
	.4byte		.L2331
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L165:
	.sleb128	14
	.byte		"p_commMode"
	.byte		0
	.4byte		.L2335
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L166:
	.sleb128	14
	.byte		"p_periodic"
	.byte		0
	.4byte		.L2337
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L2327:
.L1796:
	.sleb128	13
	.4byte		.L2314
	.uleb128	191
	.uleb128	1
	.4byte		.L2338-.L2
	.byte		"Dcm_Cfg_PeriodicResponseType_Tag"
	.byte		0
	.uleb128	12
.L151:
	.sleb128	14
	.byte		"num_tx_channels"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L152:
	.sleb128	14
	.byte		"tx_channels"
	.byte		0
	.4byte		.L2339
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L153:
	.sleb128	14
	.byte		"p_commMode"
	.byte		0
	.4byte		.L2335
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L2338:
.L1984:
	.sleb128	13
	.4byte		.L2314
	.uleb128	191
	.uleb128	1
	.4byte		.L2340-.L2
	.byte		"Dcm_Cfg_ProtocolType_Tag"
	.byte		0
	.uleb128	10
.L144:
	.sleb128	14
	.byte		"identifier"
	.byte		0
	.4byte		.L1666
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L145:
	.sleb128	14
	.byte		"priority"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L146:
	.sleb128	14
	.byte		"identifier_table_id"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L147:
	.sleb128	14
	.byte		"send_resp_pend_on_trans_to_boot"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L148:
	.sleb128	14
	.byte		"preempt_timeout"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L149:
	.sleb128	14
	.byte		"p2_adjust_timeout"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L150:
	.sleb128	14
	.byte		"p2_star_adjust_timeout"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L2340:
.L1466:
	.sleb128	13
	.4byte		.L2314
	.uleb128	91
	.uleb128	1
	.4byte		.L2341-.L2
	.byte		"Dcm_Cfg_PeriodicTxChannelType_Tag"
	.byte		0
	.uleb128	8
.L141:
	.sleb128	14
	.byte		"tx_pdu_id"
	.byte		0
	.4byte		.L1290
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L142:
	.sleb128	14
	.byte		"conf_pdu_id"
	.byte		0
	.4byte		.L1290
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L143:
	.sleb128	14
	.byte		"channel_status"
	.byte		0
	.4byte		.L1469
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L2341:
.L1472:
	.sleb128	13
	.4byte		.L2314
	.uleb128	91
	.uleb128	1
	.4byte		.L2342-.L2
	.byte		"Dcm_Cfg_PeriodicTxStatusType_Tag"
	.byte		0
	.uleb128	20
.L136:
	.sleb128	14
	.byte		"size"
	.byte		0
	.4byte		.L1293
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L137:
	.sleb128	14
	.byte		"buf_pos"
	.byte		0
	.4byte		.L1293
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L138:
	.sleb128	14
	.byte		"buf_ptr"
	.byte		0
	.4byte		.L1783
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L139:
	.sleb128	14
	.byte		"pdu_info"
	.byte		0
	.4byte		.L1368
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L140:
	.sleb128	14
	.byte		"state"
	.byte		0
	.4byte		.L2343
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L2342:
.L1483:
	.sleb128	13
	.4byte		.L2314
	.uleb128	91
	.uleb128	1
	.4byte		.L2345-.L2
	.byte		"Dcm_Cfg_TxChannelType_Tag"
	.byte		0
	.uleb128	20
.L130:
	.sleb128	14
	.byte		"tx_pdu_id"
	.byte		0
	.4byte		.L1290
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L131:
	.sleb128	14
	.byte		"conf_pdu_id"
	.byte		0
	.4byte		.L1290
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L132:
	.sleb128	14
	.byte		"p_buffer"
	.byte		0
	.4byte		.L1284
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L133:
	.sleb128	14
	.byte		"pp_active_buffer"
	.byte		0
	.4byte		.L2346
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L134:
	.sleb128	14
	.byte		"pp_rx_channel"
	.byte		0
	.4byte		.L2347
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L135:
	.sleb128	14
	.byte		"p_busy"
	.byte		0
	.4byte		.L1680
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L2345:
.L1287:
	.sleb128	13
	.4byte		.L2314
	.uleb128	91
	.uleb128	1
	.4byte		.L2348-.L2
	.byte		"Dcm_Cfg_BufferType_Tag"
	.byte		0
	.uleb128	16
.L125:
	.sleb128	14
	.byte		"identifier"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L126:
	.sleb128	14
	.byte		"size"
	.byte		0
	.4byte		.L1293
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L127:
	.sleb128	14
	.byte		"ptr"
	.byte		0
	.4byte		.L1997
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L128:
	.sleb128	14
	.byte		"p_status"
	.byte		0
	.4byte		.L1299
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L129:
	.sleb128	14
	.byte		"pdu_info"
	.byte		0
	.4byte		.L2349
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L2348:
.L1302:
	.sleb128	13
	.4byte		.L2314
	.uleb128	91
	.uleb128	1
	.4byte		.L2350-.L2
	.byte		"Dcm_Cfg_BufferStatusType_Tag"
	.byte		0
	.uleb128	12
.L122:
	.sleb128	14
	.byte		"pdu_id"
	.byte		0
	.4byte		.L1290
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L123:
	.sleb128	14
	.byte		"state"
	.byte		0
	.4byte		.L2351
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L124:
	.sleb128	14
	.byte		"buf_pos"
	.byte		0
	.4byte		.L1293
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L2350:
.L1724:
	.sleb128	13
	.4byte		.L2353
	.uleb128	65
	.uleb128	14
	.4byte		.L2354-.L2
	.byte		"Dcm_ProgConditionsType_Tag"
	.byte		0
	.uleb128	10
.L115:
	.sleb128	14
	.byte		"ProtocolId"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L116:
	.sleb128	14
	.byte		"TesterSourceAddr"
	.byte		0
	.4byte		.L1251
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L117:
	.sleb128	14
	.byte		"Sid"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L118:
	.sleb128	14
	.byte		"SubFncId"
	.byte		0
	.4byte		.L1274
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L119:
	.sleb128	14
	.byte		"ReprogramingRequest"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L120:
	.sleb128	14
	.byte		"ApplUpdated"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L121:
	.sleb128	14
	.byte		"ResponseRequired"
	.byte		0
	.4byte		.L1237
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L2354:
.L1542:
	.sleb128	13
	.4byte		.L2353
	.uleb128	65
	.uleb128	14
	.4byte		.L2355-.L2
	.byte		"VSTAR_RetryInfoType"
	.byte		0
	.uleb128	8
.L102:
	.sleb128	14
	.byte		"TpDataState"
	.byte		0
	.4byte		.L2356
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L103:
	.sleb128	14
	.byte		"TxTpDataCnt"
	.byte		0
	.4byte		.L1293
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L2355:
.L1369:
	.sleb128	13
	.4byte		.L2358
	.uleb128	69
	.uleb128	1
	.4byte		.L2359-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L100:
	.sleb128	14
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L1783
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L101:
	.sleb128	14
	.byte		"SduLength"
	.byte		0
	.4byte		.L1293
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L2359:
	.section	.debug_info,,n
.L1451:
	.sleb128	15
	.4byte		.L1236
	.uleb128	295
	.uleb128	14
	.4byte		.L2360-.L2
	.byte		"DslStateType_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	16
	.byte		"DSL_IDLE"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"DSL_PROCESS_SERVICE"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"DSL_WAIT_CONF_PREEMPTION"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"DSL_WAIT_CONF_RCRRP"
	.byte		0
	.sleb128	3
	.sleb128	16
	.byte		"DSL_WAIT_CONF_BRR"
	.byte		0
	.sleb128	4
	.sleb128	16
	.byte		"DSL_WAIT_CONF"
	.byte		0
	.sleb128	5
	.sleb128	16
	.byte		"DSL_WAIT_PROCESS_PAGE"
	.byte		0
	.sleb128	6
	.sleb128	16
	.byte		"DSL_WAIT_READ_DATA"
	.byte		0
	.sleb128	7
	.sleb128	16
	.byte		"DSL_SEND_BRR"
	.byte		0
	.sleb128	8
	.sleb128	0
.L2360:
	.section	.debug_info,,n
.L1993:
	.sleb128	17
	.4byte		.L1236
	.uleb128	272
	.uleb128	1
	.4byte		.L2361-.L2
	.uleb128	4
	.sleb128	16
	.byte		"DSL_JFB_INIT"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"DSL_JFB_W4_COMM"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"DSL_JFB_FINISHED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L2361:
.L2087:
	.sleb128	15
	.4byte		.L1962
	.uleb128	683
	.uleb128	14
	.4byte		.L2362-.L2
	.byte		"Dcm_Cfg_DidEnumType_Tag"
	.byte		0
	.uleb128	4
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
.L2362:
.L2092:
	.sleb128	15
	.4byte		.L1962
	.uleb128	652
	.uleb128	14
	.4byte		.L2363-.L2
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
.L2363:
.L2090:
	.sleb128	15
	.4byte		.L1962
	.uleb128	643
	.uleb128	14
	.4byte		.L2364-.L2
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
.L2364:
.L2073:
	.sleb128	17
	.4byte		.L1962
	.uleb128	477
	.uleb128	1
	.4byte		.L2365-.L2
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
.L2365:
.L2192:
	.sleb128	17
	.4byte		.L1962
	.uleb128	416
	.uleb128	1
	.4byte		.L2366-.L2
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
.L2366:
.L2261:
	.sleb128	17
	.4byte		.L1962
	.uleb128	274
	.uleb128	1
	.4byte		.L2367-.L2
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
.L2367:
.L2291:
	.sleb128	17
	.4byte		.L1962
	.uleb128	213
	.uleb128	1
	.4byte		.L2368-.L2
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
.L2368:
.L2121:
	.sleb128	15
	.4byte		.L2292
	.uleb128	67
	.uleb128	14
	.4byte		.L2369-.L2
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
.L2369:
.L1935:
	.sleb128	17
	.4byte		.L2314
	.uleb128	191
	.uleb128	1
	.4byte		.L2370-.L2
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
.L2370:
.L2334:
	.sleb128	17
	.4byte		.L2314
	.uleb128	180
	.uleb128	1
	.4byte		.L2371-.L2
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
.L2371:
.L2344:
	.sleb128	17
	.4byte		.L2314
	.uleb128	91
	.uleb128	1
	.4byte		.L2372-.L2
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
.L2372:
.L2352:
	.sleb128	17
	.4byte		.L2314
	.uleb128	82
	.uleb128	1
	.4byte		.L2373-.L2
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
.L2373:
.L2330:
	.sleb128	17
	.4byte		.L2314
	.uleb128	73
	.uleb128	1
	.4byte		.L2374-.L2
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
.L2374:
.L2357:
	.sleb128	15
	.4byte		.L2353
	.uleb128	65
	.uleb128	14
	.4byte		.L2375-.L2
	.byte		"VSTAR_TpDataStateType"
	.byte		0
	.uleb128	4
	.sleb128	16
	.byte		"TP_DATACONF"
	.byte		0
	.sleb128	0
	.sleb128	16
	.byte		"TP_DATARETRY"
	.byte		0
	.sleb128	1
	.sleb128	16
	.byte		"TP_CONFPENDING"
	.byte		0
	.sleb128	2
	.sleb128	16
	.byte		"TP_NORETRY"
	.byte		0
	.sleb128	3
	.sleb128	0
.L2375:
.L1327:
	.sleb128	15
	.4byte		.L2353
	.uleb128	50
	.uleb128	14
	.4byte		.L2376-.L2
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
.L2376:
	.section	.debug_info,,n
.L1238:
	.sleb128	18
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L1237:
	.sleb128	19
	.byte		"boolean"
	.byte		0
	.4byte		.L1238
.L1242:
	.sleb128	19
	.byte		"Dcm_Cfg_RxChannelType"
	.byte		0
	.4byte		.L1243
	.section	.debug_info,,n
.L1241:
	.sleb128	20
	.4byte		.L1242
	.section	.debug_info,,n
.L1240:
	.sleb128	21
	.4byte		.L1241
.L1252:
	.sleb128	18
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L1251:
	.sleb128	19
	.byte		"uint16"
	.byte		0
	.4byte		.L1252
.L1255:
	.sleb128	21
	.4byte		.L1251
.L1254:
	.sleb128	20
	.4byte		.L1255
.L1266:
	.sleb128	20
	.4byte		.L1240
.L1274:
	.sleb128	19
	.byte		"uint8"
	.byte		0
	.4byte		.L1238
.L1273:
	.sleb128	20
	.4byte		.L1274
.L1286:
	.sleb128	19
	.byte		"Dcm_Cfg_BufferType"
	.byte		0
	.4byte		.L1287
.L1285:
	.sleb128	20
	.4byte		.L1286
.L1284:
	.sleb128	21
	.4byte		.L1285
.L1290:
	.sleb128	19
	.byte		"PduIdType"
	.byte		0
	.4byte		.L1251
.L1289:
	.sleb128	20
	.4byte		.L1290
.L1293:
	.sleb128	19
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L1251
.L1292:
	.sleb128	20
	.4byte		.L1293
.L1296:
	.sleb128	21
	.4byte		.L1293
.L1295:
	.sleb128	20
	.4byte		.L1296
.L1301:
	.sleb128	19
	.byte		"Dcm_Cfg_BufferStatusType"
	.byte		0
	.4byte		.L1302
.L1300:
	.sleb128	21
	.4byte		.L1301
.L1299:
	.sleb128	20
	.4byte		.L1300
.L1326:
	.sleb128	19
	.byte		"BufReq_ReturnType"
	.byte		0
	.4byte		.L1327
.L1351:
	.sleb128	20
	.4byte		.L1237
.L1368:
	.sleb128	19
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L1369
.L1367:
	.sleb128	21
	.4byte		.L1368
.L1410:
	.sleb128	20
	.4byte		.L1368
.L1409:
	.sleb128	21
	.4byte		.L1410
.L1408:
	.sleb128	20
	.4byte		.L1409
.L1419:
	.sleb128	20
	.4byte		.L1284
.L1423:
	.sleb128	19
	.byte		"Dcm_NegativeResponseCodeType"
	.byte		0
	.4byte		.L1274
.L1422:
	.sleb128	20
	.4byte		.L1423
.L1441:
	.sleb128	19
	.byte		"NotifResultType"
	.byte		0
	.4byte		.L1274
.L1440:
	.sleb128	20
	.4byte		.L1441
.L1450:
	.sleb128	19
	.byte		"DslStateType"
	.byte		0
	.4byte		.L1451
.L1449:
	.sleb128	20
	.4byte		.L1450
.L1454:
	.sleb128	20
	.4byte		.L1251
.L1465:
	.sleb128	19
	.byte		"Dcm_Cfg_PeriodicTxChannelType"
	.byte		0
	.4byte		.L1466
.L1464:
	.sleb128	20
	.4byte		.L1465
.L1463:
	.sleb128	21
	.4byte		.L1464
.L1462:
	.sleb128	19
	.byte		"Dcm_Cfg_PeriodicTxChannelPointerType"
	.byte		0
	.4byte		.L1463
.L1461:
	.sleb128	20
	.4byte		.L1462
.L1471:
	.sleb128	19
	.byte		"Dcm_Cfg_PeriodicTxStatusType"
	.byte		0
	.4byte		.L1472
.L1470:
	.sleb128	21
	.4byte		.L1471
.L1469:
	.sleb128	20
	.4byte		.L1470
.L1482:
	.sleb128	19
	.byte		"Dcm_Cfg_TxChannelType"
	.byte		0
	.4byte		.L1483
.L1481:
	.sleb128	20
	.4byte		.L1482
.L1480:
	.sleb128	21
	.4byte		.L1481
.L1479:
	.sleb128	20
	.4byte		.L1480
.L1487:
	.sleb128	19
	.byte		"Dcm_Cfg_RxChannelPointerType"
	.byte		0
	.4byte		.L1240
.L1486:
	.sleb128	20
	.4byte		.L1487
.L1500:
	.sleb128	19
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L1274
.L1541:
	.sleb128	19
	.byte		"RetryInfoType"
	.byte		0
	.4byte		.L1542
.L1540:
	.sleb128	21
	.4byte		.L1541
.L1572:
	.sleb128	19
	.byte		"Dcm_Cfg_BufferPointerType"
	.byte		0
	.4byte		.L1284
.L1571:
	.sleb128	20
	.4byte		.L1572
.L1593:
	.sleb128	19
	.byte		"Dcm_SesCtrlType"
	.byte		0
	.4byte		.L1274
.L1592:
	.sleb128	21
	.4byte		.L1593
.L1600:
	.sleb128	19
	.byte		"Dcm_SecLevelType"
	.byte		0
	.4byte		.L1274
.L1612:
	.sleb128	19
	.byte		"Dcm_Cfg_DidControlType"
	.byte		0
	.4byte		.L1613
.L1611:
	.sleb128	20
	.4byte		.L1612
.L1610:
	.sleb128	21
	.4byte		.L1611
.L1623:
	.sleb128	19
	.byte		"Dcm_MsgLenType"
	.byte		0
	.4byte		.L1251
.L1632:
	.sleb128	19
	.byte		"Rte_ModeType_DcmDiagnosticSessionControl"
	.byte		0
	.4byte		.L1274
.L1635:
	.sleb128	20
	.4byte		.L1593
.L1643:
	.sleb128	19
	.byte		"Dcm_TimerServerType"
	.byte		0
	.4byte		.L1644
.L1642:
	.sleb128	21
	.4byte		.L1643
.L1650:
	.sleb128	19
	.byte		"Dcm_Cfg_SessionType"
	.byte		0
	.4byte		.L1651
.L1649:
	.sleb128	20
	.4byte		.L1650
.L1648:
	.sleb128	21
	.4byte		.L1649
.L1647:
	.sleb128	19
	.byte		"Dcm_Cfg_SessionPointerType"
	.byte		0
	.4byte		.L1648
.L1658:
	.sleb128	21
	.4byte		.L1600
.L1666:
	.sleb128	19
	.byte		"Dcm_ProtocolType"
	.byte		0
	.4byte		.L1274
.L1665:
	.sleb128	21
	.4byte		.L1666
.L1680:
	.sleb128	21
	.4byte		.L1237
.L1689:
	.sleb128	19
	.byte		"Dcm_ConfigType"
	.byte		0
	.4byte		.L1690
.L1688:
	.sleb128	20
	.4byte		.L1689
.L1687:
	.sleb128	21
	.4byte		.L1688
.L1720:
	.sleb128	19
	.byte		"Dcm_EcuStartModeType"
	.byte		0
	.4byte		.L1274
.L1723:
	.sleb128	19
	.byte		"Dcm_ProgConditionsType"
	.byte		0
	.4byte		.L1724
.L1783:
	.sleb128	21
	.4byte		.L1274
.L1795:
	.sleb128	19
	.byte		"Dcm_Cfg_PeriodicResponseType"
	.byte		0
	.4byte		.L1796
.L1794:
	.sleb128	20
	.4byte		.L1795
.L1793:
	.sleb128	21
	.4byte		.L1794
.L1934:
	.sleb128	19
	.byte		"Dcm_Cfg_ChannelCommModeType"
	.byte		0
	.4byte		.L1935
.L1933:
	.sleb128	20
	.4byte		.L1934
.L1964:
	.sleb128	19
	.byte		"Dcm_LinkTimeConfigType"
	.byte		0
	.4byte		.L1965
.L1963:
	.sleb128	20
	.4byte		.L1964
.L1973:
	.sleb128	19
	.byte		"DslInstanceType"
	.byte		0
	.4byte		.L1974
.L1976:
	.sleb128	19
	.byte		"DslIntermediateTxChannelStorageType"
	.byte		0
	.4byte		.L1977
.L1983:
	.sleb128	19
	.byte		"Dcm_Cfg_ProtocolType"
	.byte		0
	.4byte		.L1984
.L1982:
	.sleb128	20
	.4byte		.L1983
.L1981:
	.sleb128	21
	.4byte		.L1982
.L1985:
	.sleb128	19
	.byte		"Dcm_ConfirmationStatusType"
	.byte		0
	.4byte		.L1274
.L1986:
	.sleb128	19
	.byte		"DslJumpFromBootloaderType"
	.byte		0
	.4byte		.L1987
	.section	.debug_info,,n
.L1989:
	.sleb128	22
	.4byte		.L1990-.L2
	.4byte		.L1274
	.section	.debug_info,,n
	.sleb128	23
	.uleb128	2
	.sleb128	0
.L1990:
.L1992:
	.sleb128	19
	.byte		"DslJumpFromBootloaderStateType"
	.byte		0
	.4byte		.L1993
.L1995:
	.sleb128	22
	.4byte		.L1996-.L2
	.4byte		.L1251
	.sleb128	23
	.uleb128	2
	.sleb128	0
.L1996:
.L1997:
	.sleb128	20
	.4byte		.L1783
.L1998:
	.sleb128	20
	.4byte		.L1648
.L2002:
	.sleb128	19
	.byte		"Dcm_Cfg_SecurityType"
	.byte		0
	.4byte		.L2003
.L2001:
	.sleb128	20
	.4byte		.L2002
.L2000:
	.sleb128	21
	.4byte		.L2001
.L1999:
	.sleb128	20
	.4byte		.L2000
.L2007:
	.sleb128	19
	.byte		"Dcm_Cfg_ServiceTableType"
	.byte		0
	.4byte		.L2008
.L2006:
	.sleb128	20
	.4byte		.L2007
.L2005:
	.sleb128	21
	.4byte		.L2006
.L2004:
	.sleb128	20
	.4byte		.L2005
.L2011:
	.sleb128	19
	.byte		"Dcm_Cfg_RequestedDidInfoType"
	.byte		0
	.4byte		.L2012
.L2010:
	.sleb128	21
	.4byte		.L2011
.L2009:
	.sleb128	20
	.4byte		.L2010
.L2016:
	.sleb128	19
	.byte		"Dcm_Cfg_DidType"
	.byte		0
	.4byte		.L2017
.L2015:
	.sleb128	20
	.4byte		.L2016
.L2014:
	.sleb128	21
	.4byte		.L2015
.L2013:
	.sleb128	20
	.4byte		.L2014
.L2021:
	.sleb128	19
	.byte		"Dcm_Cfg_PeriodicDynamicDidType"
	.byte		0
	.4byte		.L2022
.L2020:
	.sleb128	20
	.4byte		.L2021
.L2019:
	.sleb128	21
	.4byte		.L2020
.L2018:
	.sleb128	20
	.4byte		.L2019
.L2026:
	.sleb128	19
	.byte		"Dcm_Cfg_DidRangeType"
	.byte		0
	.4byte		.L2027
.L2025:
	.sleb128	20
	.4byte		.L2026
.L2024:
	.sleb128	21
	.4byte		.L2025
.L2023:
	.sleb128	20
	.4byte		.L2024
.L2031:
	.sleb128	19
	.byte		"Dcm_Cfg_PidType"
	.byte		0
	.4byte		.L2032
.L2030:
	.sleb128	20
	.4byte		.L2031
.L2029:
	.sleb128	21
	.4byte		.L2030
.L2028:
	.sleb128	20
	.4byte		.L2029
.L2036:
	.sleb128	19
	.byte		"Dcm_Cfg_ReqCtrlType"
	.byte		0
	.4byte		.L2037
.L2035:
	.sleb128	20
	.4byte		.L2036
.L2034:
	.sleb128	21
	.4byte		.L2035
.L2033:
	.sleb128	20
	.4byte		.L2034
.L2041:
	.sleb128	19
	.byte		"Dcm_Cfg_RoeType"
	.byte		0
	.4byte		.L2042
.L2040:
	.sleb128	20
	.4byte		.L2041
.L2039:
	.sleb128	21
	.4byte		.L2040
.L2038:
	.sleb128	20
	.4byte		.L2039
.L2046:
	.sleb128	19
	.byte		"Dcm_Cfg_VehicleInfoType"
	.byte		0
	.4byte		.L2047
.L2045:
	.sleb128	20
	.4byte		.L2046
.L2044:
	.sleb128	21
	.4byte		.L2045
.L2043:
	.sleb128	20
	.4byte		.L2044
.L2051:
	.sleb128	19
	.byte		"Dcm_Cfg_RoutineCtrlType"
	.byte		0
	.4byte		.L2052
.L2050:
	.sleb128	20
	.4byte		.L2051
.L2049:
	.sleb128	21
	.4byte		.L2050
.L2048:
	.sleb128	20
	.4byte		.L2049
.L2054:
	.sleb128	21
	.4byte		.L1273
.L2053:
	.sleb128	20
	.4byte		.L2054
.L2058:
	.sleb128	19
	.byte		"Dcm_Cfg_CallbackReqServType"
	.byte		0
	.4byte		.L2059
.L2057:
	.sleb128	20
	.4byte		.L2058
.L2056:
	.sleb128	21
	.4byte		.L2057
.L2055:
	.sleb128	20
	.4byte		.L2056
.L2063:
	.sleb128	19
	.byte		"Dcm_Cfg_MemoryType"
	.byte		0
	.4byte		.L2064
.L2062:
	.sleb128	20
	.4byte		.L2063
.L2061:
	.sleb128	21
	.4byte		.L2062
.L2060:
	.sleb128	20
	.4byte		.L2061
.L2068:
	.sleb128	19
	.byte		"Dcm_Cfg_SoftwareDownloadType"
	.byte		0
	.4byte		.L2069
.L2067:
	.sleb128	20
	.4byte		.L2068
.L2066:
	.sleb128	21
	.4byte		.L2067
.L2065:
	.sleb128	20
	.4byte		.L2066
.L2072:
	.sleb128	19
	.byte		"Dcm_Cfg_RoutineStateType"
	.byte		0
	.4byte		.L2073
.L2071:
	.sleb128	21
	.4byte		.L2072
.L2070:
	.sleb128	20
	.4byte		.L2071
.L2077:
	.sleb128	19
	.byte		"Dcm_Cfg_DDidInitInfoType"
	.byte		0
	.4byte		.L2078
.L2076:
	.sleb128	20
	.4byte		.L2077
.L2075:
	.sleb128	21
	.4byte		.L2076
.L2074:
	.sleb128	20
	.4byte		.L2075
	.section	.debug_info,,n
.L2080:
	.sleb128	24
	.4byte		.L2081-.L2
	.byte		0x1
	.sleb128	0
.L2081:
.L2079:
	.sleb128	21
	.4byte		.L2080
.L2083:
	.sleb128	24
	.4byte		.L2084-.L2
	.byte		0x1
	.sleb128	0
.L2084:
.L2082:
	.sleb128	21
	.4byte		.L2083
.L2086:
	.sleb128	19
	.byte		"Dcm_Cfg_DidEnumType"
	.byte		0
	.4byte		.L2087
.L2089:
	.sleb128	19
	.byte		"Dcm_Cfg_DDIDInitPolicyType"
	.byte		0
	.4byte		.L2090
.L2091:
	.sleb128	19
	.byte		"Dcm_Cfg_DDPRIDInitPolicyType"
	.byte		0
	.4byte		.L2092
.L2094:
	.sleb128	18
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L2093:
	.sleb128	19
	.byte		"uint32"
	.byte		0
	.4byte		.L2094
.L2095:
	.sleb128	21
	.4byte		.L2093
.L2100:
	.sleb128	19
	.byte		"Dcm_Cfg_RoeEventType"
	.byte		0
	.4byte		.L2101
.L2099:
	.sleb128	20
	.4byte		.L2100
.L2098:
	.sleb128	21
	.4byte		.L2099
.L2097:
	.sleb128	20
	.4byte		.L2098
.L2105:
	.sleb128	19
	.byte		"Dcm_Cfg_RoeEventWindowTimeType"
	.byte		0
	.4byte		.L2106
.L2104:
	.sleb128	20
	.4byte		.L2105
.L2103:
	.sleb128	21
	.4byte		.L2104
.L2102:
	.sleb128	20
	.4byte		.L2103
.L2109:
	.sleb128	19
	.byte		"Dcm_Cfg_RoeNvmStatusType"
	.byte		0
	.4byte		.L2110
.L2108:
	.sleb128	21
	.4byte		.L2109
.L2107:
	.sleb128	20
	.4byte		.L2108
.L2113:
	.sleb128	19
	.byte		"Dcm_Cfg_RoeEventStatusType"
	.byte		0
	.4byte		.L2114
.L2112:
	.sleb128	21
	.4byte		.L2113
.L2111:
	.sleb128	20
	.4byte		.L2112
.L2117:
	.sleb128	19
	.byte		"Dcm_Cfg_RoeNvmEventStatusType"
	.byte		0
	.4byte		.L2118
.L2116:
	.sleb128	21
	.4byte		.L2117
.L2115:
	.sleb128	20
	.4byte		.L2116
.L2120:
	.sleb128	19
	.byte		"Dcm_Roe_EventStateType"
	.byte		0
	.4byte		.L2121
	.section	.debug_info,,n
.L2125:
	.sleb128	25
	.4byte		.L2126-.L2
	.4byte		.L1500
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	26
	.4byte		.L1274
	.sleb128	0
.L2126:
.L2124:
	.sleb128	21
	.4byte		.L2125
.L2130:
	.sleb128	25
	.4byte		.L2131-.L2
	.4byte		.L1500
	.byte		0x1
.L2132:
	.sleb128	19
	.byte		"Dcm_OpStatusType"
	.byte		0
	.4byte		.L1274
	.sleb128	26
	.4byte		.L2132
	.sleb128	26
	.4byte		.L1274
	.sleb128	26
	.4byte		.L2093
	.sleb128	26
	.4byte		.L2093
	.sleb128	26
	.4byte		.L2095
.L2133:
	.sleb128	21
	.4byte		.L1423
	.sleb128	26
	.4byte		.L2133
	.sleb128	0
.L2131:
.L2129:
	.sleb128	21
	.4byte		.L2130
.L2128:
	.sleb128	19
	.byte		"Dcm_ProcessRequestDownloadFuncType"
	.byte		0
	.4byte		.L2129
.L2138:
	.sleb128	19
	.byte		"Dcm_ReturnMemOperationType"
	.byte		0
	.4byte		.L1274
.L2136:
	.sleb128	25
	.4byte		.L2137-.L2
	.4byte		.L2138
	.byte		0x1
	.sleb128	26
	.4byte		.L2132
	.sleb128	26
	.4byte		.L1274
	.sleb128	26
	.4byte		.L2093
	.sleb128	26
	.4byte		.L2093
	.sleb128	26
	.4byte		.L1783
	.sleb128	0
.L2137:
.L2135:
	.sleb128	21
	.4byte		.L2136
.L2134:
	.sleb128	19
	.byte		"Dcm_MemOperationType"
	.byte		0
	.4byte		.L2135
.L2141:
	.sleb128	25
	.4byte		.L2142-.L2
	.4byte		.L1500
	.byte		0x1
	.sleb128	26
	.4byte		.L2132
	.sleb128	26
	.4byte		.L1783
	.sleb128	26
	.4byte		.L2093
	.sleb128	26
	.4byte		.L2133
	.sleb128	0
.L2142:
.L2140:
	.sleb128	21
	.4byte		.L2141
.L2139:
	.sleb128	19
	.byte		"Dcm_ProcessRequestTransferExitFuncType"
	.byte		0
	.4byte		.L2140
.L2147:
	.sleb128	19
	.byte		"Dcm_Cfg_MemoryRangeType"
	.byte		0
	.4byte		.L2148
.L2146:
	.sleb128	20
	.4byte		.L2147
.L2145:
	.sleb128	21
	.4byte		.L2146
.L2144:
	.sleb128	20
	.4byte		.L2145
.L2152:
	.sleb128	25
	.4byte		.L2153-.L2
	.4byte		.L1423
	.byte		0x1
	.sleb128	0
.L2153:
.L2151:
	.sleb128	21
	.4byte		.L2152
.L2150:
	.sleb128	19
	.byte		"Dcm_ModeRuleFuncType"
	.byte		0
	.4byte		.L2151
.L2156:
	.sleb128	25
	.4byte		.L2157-.L2
	.4byte		.L1500
	.byte		0x1
	.sleb128	26
	.4byte		.L1666
	.sleb128	0
.L2157:
.L2155:
	.sleb128	21
	.4byte		.L2156
.L2159:
	.sleb128	25
	.4byte		.L2160-.L2
	.4byte		.L1500
	.byte		0x1
	.sleb128	26
	.4byte		.L1666
	.sleb128	0
.L2160:
.L2158:
	.sleb128	21
	.4byte		.L2159
.L2163:
	.sleb128	25
	.4byte		.L2164-.L2
	.4byte		.L1274
	.byte		0x1
	.sleb128	26
	.4byte		.L2054
	.sleb128	26
	.4byte		.L2132
	.sleb128	26
	.4byte		.L1783
	.sleb128	26
	.4byte		.L1255
	.sleb128	26
	.4byte		.L2133
	.sleb128	0
.L2164:
.L2162:
	.sleb128	21
	.4byte		.L2163
.L2166:
	.sleb128	25
	.4byte		.L2167-.L2
	.4byte		.L1274
	.byte		0x1
	.sleb128	26
	.4byte		.L2054
	.sleb128	26
	.4byte		.L2132
	.sleb128	26
	.4byte		.L1783
	.sleb128	26
	.4byte		.L1255
	.sleb128	26
	.4byte		.L2133
	.sleb128	0
.L2167:
.L2165:
	.sleb128	21
	.4byte		.L2166
.L2169:
	.sleb128	25
	.4byte		.L2170-.L2
	.4byte		.L1274
	.byte		0x1
	.sleb128	26
	.4byte		.L2132
	.sleb128	26
	.4byte		.L1783
	.sleb128	26
	.4byte		.L1255
	.sleb128	26
	.4byte		.L2133
	.sleb128	0
.L2170:
.L2168:
	.sleb128	21
	.4byte		.L2169
.L2175:
	.sleb128	19
	.byte		"Dcm_Cfg_DDDDidInfoType"
	.byte		0
	.4byte		.L2176
.L2174:
	.sleb128	20
	.4byte		.L2175
.L2173:
	.sleb128	21
	.4byte		.L2174
.L2172:
	.sleb128	20
	.4byte		.L2173
.L2180:
	.sleb128	19
	.byte		"Dcm_Cfg_DDDDidSourceType"
	.byte		0
	.4byte		.L2181
.L2179:
	.sleb128	20
	.4byte		.L2180
.L2178:
	.sleb128	21
	.4byte		.L2179
.L2177:
	.sleb128	20
	.4byte		.L2178
.L2183:
	.sleb128	21
	.4byte		.L2180
.L2182:
	.sleb128	20
	.4byte		.L2183
.L2186:
	.sleb128	19
	.byte		"Dcm_Cfg_PeriodicSampleDataType"
	.byte		0
	.4byte		.L2187
.L2185:
	.sleb128	21
	.4byte		.L2186
.L2184:
	.sleb128	20
	.4byte		.L2185
.L2191:
	.sleb128	19
	.byte		"Dcm_Cfg_DDSourcesType"
	.byte		0
	.4byte		.L2192
.L2195:
	.sleb128	19
	.byte		"Dcm_Cfg_DidReadType"
	.byte		0
	.4byte		.L2196
.L2194:
	.sleb128	20
	.4byte		.L2195
.L2193:
	.sleb128	21
	.4byte		.L2194
.L2200:
	.sleb128	25
	.4byte		.L2201-.L2
	.4byte		.L1500
	.byte		0x1
	.sleb128	26
	.4byte		.L1251
	.sleb128	26
	.4byte		.L2132
.L2203:
	.sleb128	19
	.byte		"Dcm_DidSupportedType"
	.byte		0
	.4byte		.L1274
.L2202:
	.sleb128	21
	.4byte		.L2203
	.sleb128	26
	.4byte		.L2202
	.sleb128	0
.L2201:
.L2199:
	.sleb128	21
	.4byte		.L2200
.L2198:
	.sleb128	19
	.byte		"Dcm_IsDidAvailableFuncType"
	.byte		0
	.4byte		.L2199
.L2207:
	.sleb128	19
	.byte		"Dcm_Cfg_DidRangeReadType"
	.byte		0
	.4byte		.L2208
.L2206:
	.sleb128	20
	.4byte		.L2207
.L2205:
	.sleb128	21
	.4byte		.L2206
.L2204:
	.sleb128	20
	.4byte		.L2205
.L2212:
	.sleb128	19
	.byte		"Dcm_Cfg_DidRangeWriteType"
	.byte		0
	.4byte		.L2213
.L2211:
	.sleb128	20
	.4byte		.L2212
.L2210:
	.sleb128	21
	.4byte		.L2211
.L2209:
	.sleb128	20
	.4byte		.L2210
.L2217:
	.sleb128	25
	.4byte		.L2218-.L2
	.4byte		.L1500
	.byte		0x1
	.sleb128	26
	.4byte		.L1251
	.sleb128	26
	.4byte		.L2054
	.sleb128	26
	.4byte		.L2132
	.sleb128	26
	.4byte		.L1251
	.sleb128	26
	.4byte		.L2133
	.sleb128	0
.L2218:
.L2216:
	.sleb128	21
	.4byte		.L2217
.L2215:
	.sleb128	19
	.byte		"Dcm_WriteDidDataFuncType"
	.byte		0
	.4byte		.L2216
.L2222:
	.sleb128	25
	.4byte		.L2223-.L2
	.4byte		.L1500
	.byte		0x1
	.sleb128	26
	.4byte		.L1251
	.sleb128	26
	.4byte		.L1783
	.sleb128	26
	.4byte		.L2132
	.sleb128	26
	.4byte		.L1255
	.sleb128	26
	.4byte		.L2133
	.sleb128	0
.L2223:
.L2221:
	.sleb128	21
	.4byte		.L2222
.L2220:
	.sleb128	19
	.byte		"Dcm_ReadDidDataFuncType"
	.byte		0
	.4byte		.L2221
.L2226:
	.sleb128	25
	.4byte		.L2227-.L2
	.4byte		.L1500
	.byte		0x1
	.sleb128	26
	.4byte		.L1251
	.sleb128	26
	.4byte		.L2132
	.sleb128	26
	.4byte		.L1255
	.sleb128	0
.L2227:
.L2225:
	.sleb128	21
	.4byte		.L2226
.L2224:
	.sleb128	19
	.byte		"Dcm_ReadDidDataLengthFuncType"
	.byte		0
	.4byte		.L2225
.L2232:
	.sleb128	19
	.byte		"Dcm_Cfg_DidWriteType"
	.byte		0
	.4byte		.L2233
.L2231:
	.sleb128	20
	.4byte		.L2232
.L2230:
	.sleb128	21
	.4byte		.L2231
.L2229:
	.sleb128	20
	.4byte		.L2230
.L2234:
	.sleb128	20
	.4byte		.L2193
.L2235:
	.sleb128	20
	.4byte		.L1610
.L2238:
	.sleb128	25
	.4byte		.L2239-.L2
	.4byte		.L1500
	.byte		0x1
	.sleb128	26
	.4byte		.L2132
	.sleb128	26
	.4byte		.L1783
	.sleb128	26
	.4byte		.L2133
	.sleb128	0
.L2239:
.L2237:
	.sleb128	21
	.4byte		.L2238
.L2236:
	.sleb128	19
	.byte		"Dcm_GetScalingInformationFuncType"
	.byte		0
	.4byte		.L2237
.L2243:
	.sleb128	25
	.4byte		.L2244-.L2
	.4byte		.L1500
	.byte		0x1
	.sleb128	26
	.4byte		.L2132
	.sleb128	26
	.4byte		.L1783
	.sleb128	0
.L2244:
.L2242:
	.sleb128	21
	.4byte		.L2243
.L2241:
	.sleb128	19
	.byte		"Dcm_ReadDataFuncType"
	.byte		0
	.4byte		.L2242
.L2248:
	.sleb128	25
	.4byte		.L2249-.L2
	.4byte		.L1500
	.byte		0x1
	.sleb128	26
	.4byte		.L2132
	.sleb128	26
	.4byte		.L2133
	.sleb128	0
.L2249:
.L2247:
	.sleb128	21
	.4byte		.L2248
.L2246:
	.sleb128	19
	.byte		"Dcm_ConditionCheckReadFuncType"
	.byte		0
	.4byte		.L2247
.L2252:
	.sleb128	25
	.4byte		.L2253-.L2
	.4byte		.L1500
	.byte		0x1
	.sleb128	26
	.4byte		.L2132
	.sleb128	26
	.4byte		.L1255
	.sleb128	0
.L2253:
.L2251:
	.sleb128	21
	.4byte		.L2252
.L2250:
	.sleb128	19
	.byte		"Dcm_ReadDataLengthFuncType"
	.byte		0
	.4byte		.L2251
.L2257:
	.sleb128	25
	.4byte		.L2258-.L2
	.4byte		.L1500
	.byte		0x1
	.sleb128	26
	.4byte		.L2054
	.sleb128	26
	.4byte		.L1251
	.sleb128	26
	.4byte		.L2132
	.sleb128	26
	.4byte		.L2133
	.sleb128	0
.L2258:
.L2256:
	.sleb128	21
	.4byte		.L2257
.L2255:
	.sleb128	19
	.byte		"Dcm_WriteDataFuncType"
	.byte		0
	.4byte		.L2256
.L2260:
	.sleb128	19
	.byte		"Dcm_Cfg_PidServiceType"
	.byte		0
	.4byte		.L2261
.L2265:
	.sleb128	19
	.byte		"Dcm_Cfg_PidDataType"
	.byte		0
	.4byte		.L2266
.L2264:
	.sleb128	20
	.4byte		.L2265
.L2263:
	.sleb128	21
	.4byte		.L2264
.L2262:
	.sleb128	20
	.4byte		.L2263
.L2269:
	.sleb128	25
	.4byte		.L2270-.L2
	.4byte		.L1500
	.byte		0x1
	.sleb128	26
	.4byte		.L1783
	.sleb128	0
.L2270:
.L2268:
	.sleb128	21
	.4byte		.L2269
.L2273:
	.sleb128	25
	.4byte		.L2274-.L2
	.4byte		.L1500
	.byte		0x1
	.sleb128	26
	.4byte		.L2132
	.sleb128	26
	.4byte		.L1783
	.sleb128	0
.L2274:
.L2272:
	.sleb128	21
	.4byte		.L2273
.L2278:
	.sleb128	25
	.4byte		.L2279-.L2
	.4byte		.L1500
	.byte		0x1
	.sleb128	26
	.4byte		.L1783
	.sleb128	26
	.4byte		.L2054
	.sleb128	0
.L2279:
.L2277:
	.sleb128	21
	.4byte		.L2278
.L2276:
	.sleb128	19
	.byte		"Dcm_RequestControlFuncType"
	.byte		0
	.4byte		.L2277
.L2283:
	.sleb128	25
	.4byte		.L2284-.L2
	.4byte		.L1500
	.byte		0x1
	.sleb128	26
	.4byte		.L2054
	.sleb128	26
	.4byte		.L2132
	.sleb128	26
	.4byte		.L1783
	.sleb128	26
	.4byte		.L2133
	.sleb128	0
.L2284:
.L2282:
	.sleb128	21
	.4byte		.L2283
.L2281:
	.sleb128	19
	.byte		"Dcm_GetSeedFuncType"
	.byte		0
	.4byte		.L2282
.L2287:
	.sleb128	25
	.4byte		.L2288-.L2
	.4byte		.L1500
	.byte		0x1
	.sleb128	26
	.4byte		.L2054
	.sleb128	26
	.4byte		.L2132
	.sleb128	26
	.4byte		.L2133
	.sleb128	0
.L2288:
.L2286:
	.sleb128	21
	.4byte		.L2287
.L2285:
	.sleb128	19
	.byte		"Dcm_CompareKeyFuncType"
	.byte		0
	.4byte		.L2286
.L2290:
	.sleb128	19
	.byte		"Dcm_Cfg_SessionsForBootEnum"
	.byte		0
	.4byte		.L2291
.L2297:
	.sleb128	19
	.byte		"Dcm_Cfg_ServiceType"
	.byte		0
	.4byte		.L2298
.L2296:
	.sleb128	20
	.4byte		.L2297
.L2295:
	.sleb128	21
	.4byte		.L2296
.L2294:
	.sleb128	20
	.4byte		.L2295
.L2302:
	.sleb128	24
	.4byte		.L2303-.L2
	.byte		0x1
	.sleb128	0
.L2303:
.L2301:
	.sleb128	21
	.4byte		.L2302
.L2300:
	.sleb128	19
	.byte		"Dcm_ServiceTriggerFuncType"
	.byte		0
	.4byte		.L2301
.L2307:
	.sleb128	19
	.byte		"Dcm_Cfg_SubServiceType"
	.byte		0
	.4byte		.L2308
.L2306:
	.sleb128	20
	.4byte		.L2307
.L2305:
	.sleb128	21
	.4byte		.L2306
.L2304:
	.sleb128	20
	.4byte		.L2305
.L2313:
	.sleb128	19
	.byte		"Dem_UdsStatusByteType"
	.byte		0
	.4byte		.L1274
.L2317:
	.sleb128	21
	.4byte		.L1461
.L2316:
	.sleb128	20
	.4byte		.L2317
.L2321:
	.sleb128	19
	.byte		"Dcm_Cfg_ServiceTableSupport"
	.byte		0
	.4byte		.L2322
.L2320:
	.sleb128	20
	.4byte		.L2321
.L2319:
	.sleb128	21
	.4byte		.L2320
.L2318:
	.sleb128	20
	.4byte		.L2319
.L2325:
	.sleb128	20
	.4byte		.L2093
.L2324:
	.sleb128	21
	.4byte		.L2325
.L2323:
	.sleb128	20
	.4byte		.L2324
.L2328:
	.sleb128	20
	.4byte		.L1981
.L2329:
	.sleb128	19
	.byte		"Dcm_Cfg_AddrTypeType"
	.byte		0
	.4byte		.L2330
.L2333:
	.sleb128	19
	.byte		"Dcm_Cfg_ChannelStateType"
	.byte		0
	.4byte		.L2334
.L2332:
	.sleb128	21
	.4byte		.L2333
.L2331:
	.sleb128	20
	.4byte		.L2332
.L2336:
	.sleb128	21
	.4byte		.L1934
.L2335:
	.sleb128	20
	.4byte		.L2336
.L2337:
	.sleb128	20
	.4byte		.L1793
.L2339:
	.sleb128	20
	.4byte		.L1463
.L2343:
	.sleb128	19
	.byte		"Dcm_Cfg_PeriodicTxChannelStateType"
	.byte		0
	.4byte		.L2344
.L2346:
	.sleb128	21
	.4byte		.L1572
.L2347:
	.sleb128	21
	.4byte		.L1487
.L2349:
	.sleb128	20
	.4byte		.L1367
.L2351:
	.sleb128	19
	.byte		"Dcm_Cfg_BufferStateType"
	.byte		0
	.4byte		.L2352
.L2356:
	.sleb128	19
	.byte		"TpDataStateType"
	.byte		0
	.4byte		.L2357
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L1244:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L1246:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),5
	.d2locend
.L1256:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L1258:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo8),4
	.d2locend
.L1260:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),6
	.d2locend
.L1267:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),7
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),0
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),7
	.d2locend
.L1275:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),31
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),31
	.d2locend
.L1277:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo24),3
	.d2locend
.L1288:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locend
.L1291:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo27),4
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo26),4
	.d2locend
.L1294:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo29),5
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo26),5
	.d2locend
.L1297:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo31),6
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo26),7
	.d2locend
.L1303:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo27),6
	.d2locend
.L1309:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),3
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),31
	.d2locend
.L1310:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo36),4
	.d2locend
.L1311:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo36),5
	.d2locend
.L1312:
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo36),6
	.d2locend
.L1318:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),31
	.d2locend
.L1319:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo41),4
	.d2locend
.L1320:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo41),5
	.d2locend
.L1321:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo41),6
	.d2locend
.L1329:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),3
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),31
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),31
	.d2locend
.L1330:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo44),4
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo45),30
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),30
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),4
	.d2locend
.L1331:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo44),5
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo45),29
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),29
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),5
	.d2locend
.L1333:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),28
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo45),28
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),28
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo49),3
	.d2locend
.L1335:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo57),27
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),27
	.d2locend
.L1337:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo58),21
	.d2locend
.L1343:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),3
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),0
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),0
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),0
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),0
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),0
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),0
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo49),0
	.d2locend
.L1345:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),5
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),5
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo78),5
	.d2locend
.L1347:
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),4
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo70),4
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo82),4
	.d2locend
.L1349:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo64),27
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo66),27
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),27
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo78),27
	.d2locend
.L1352:
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),3
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),3
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo75),26
	.d2locend
.L1354:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),25
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo62),25
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo92),25
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo78),25
	.d2locend
.L1356:
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo94),0
	.d2locreg	%offsetof(.Llo95), %offsetof(.Llo96),3
	.d2locreg	%offsetof(.Llo97), %offsetof(.Llo62),24
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),24
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo78),24
	.d2locend
.L1358:
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),3
	.d2locreg	%offsetof(.Llo100), %offsetof(.Llo62),23
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo101),23
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo78),23
	.d2locend
.L1360:
	.d2locreg	%offsetof(.Llo102), %offsetof(.Llo103),22
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo76),22
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo106),22
	.d2locend
.L1366:
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo108),3
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),31
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),31
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo114),31
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),31
	.d2locend
.L1370:
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo109),4
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),30
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),30
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),4
	.d2locend
.L1371:
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo109),5
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo118),29
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo116),29
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo120),5
	.d2locend
.L1373:
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo113),3
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),3
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),3
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo115),3
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),3
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo119),3
	.d2locend
.L1379:
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo118),28
	.d2locend
.L1381:
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo118),27
	.d2locend
.L1383:
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo114),0
	.d2locreg	%offsetof(.Llo132), %offsetof(.Llo133),0
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo135),0
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo118),0
	.d2locend
.L1389:
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),5
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo118),5
	.d2locend
.L1395:
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo140),3
	.d2locend
.L1401:
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),5
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo140),5
	.d2locend
.L1407:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),3
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),3
	.d2locend
.L1411:
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo148),4
	.d2locend
.L1413:
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo150),6
	.d2locend
.L1420:
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo152),3
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo154),31
	.d2locend
.L1421:
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo155),4
	.d2locend
.L1424:
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo155),5
	.d2locend
.L1425:
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo155),6
	.d2locend
.L1431:
	.d2locreg	%offsetof(.Llo156), %offsetof(.Llo157),3
	.d2locreg	%offsetof(.Llo158), %offsetof(.Llo159),4
	.d2locend
.L1433:
	.d2locreg	%offsetof(.Llo160), %offsetof(.Llo159),4
	.d2locend
.L1439:
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo162),3
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo164),7
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo166),7
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo168),3
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo170),3
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo172),7
	.d2locend
.L1442:
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo163),4
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo164),6
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo166),6
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo175),6
	.d2locreg	%offsetof(.Llo176), %offsetof(.Llo177),6
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo172),6
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo179),4
	.d2locreg	%offsetof(.Llo180), %offsetof(.Llo181),4
	.d2locend
.L1443:
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo163),5
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo182),30
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo180),30
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo181),5
	.d2locend
.L1452:
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo168),31
	.d2locend
.L1455:
	.d2locreg	%offsetof(.Llo185), %offsetof(.Llo186),3
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo164),0
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo166),0
	.d2locreg	%offsetof(.Llo188), %offsetof(.Llo189),0
	.d2locreg	%offsetof(.Llo190), %offsetof(.Llo191),0
	.d2locreg	%offsetof(.Llo192), %offsetof(.Llo193),0
	.d2locreg	%offsetof(.Llo194), %offsetof(.Llo195),0
	.d2locreg	%offsetof(.Llo196), %offsetof(.Llo197),0
	.d2locreg	%offsetof(.Llo198), %offsetof(.Llo199),0
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo201),0
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo176),0
	.d2locreg	%offsetof(.Llo203), %offsetof(.Llo204),0
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),0
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),0
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo210),0
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo212),0
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo214),0
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo216),0
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo218),0
	.d2locreg	%offsetof(.Llo219), %offsetof(.Llo220),0
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),0
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo224),0
	.d2locreg	%offsetof(.Llo225), %offsetof(.Llo226),0
	.d2locreg	%offsetof(.Llo227), %offsetof(.Llo228),0
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo168),0
	.d2locreg	%offsetof(.Llo230), %offsetof(.Llo170),0
	.d2locend
.L1467:
	.d2locreg	%offsetof(.Llo231), %offsetof(.Llo232),3
	.d2locend
.L1473:
	.d2locreg	%offsetof(.Llo233), %offsetof(.Llo231),3
	.d2locreg	%offsetof(.Llo232), %offsetof(.Llo191),3
	.d2locend
.L1484:
	.d2locreg	%offsetof(.Llo234), %offsetof(.Llo235),3
	.d2locreg	%offsetof(.Llo236), %offsetof(.Llo194),0
	.d2locreg	%offsetof(.Llo237), %offsetof(.Llo197),3
	.d2locreg	%offsetof(.Llo238), %offsetof(.Llo199),3
	.d2locreg	%offsetof(.Llo239), %offsetof(.Llo201),3
	.d2locreg	%offsetof(.Llo240), %offsetof(.Llo176),3
	.d2locreg	%offsetof(.Llo241), %offsetof(.Llo204),3
	.d2locreg	%offsetof(.Llo242), %offsetof(.Llo206),3
	.d2locreg	%offsetof(.Llo243), %offsetof(.Llo208),3
	.d2locreg	%offsetof(.Llo244), %offsetof(.Llo210),3
	.d2locreg	%offsetof(.Llo245), %offsetof(.Llo212),3
	.d2locreg	%offsetof(.Llo246), %offsetof(.Llo226),3
	.d2locend
.L1488:
	.d2locreg	%offsetof(.Llo247), %offsetof(.Llo218),30
	.d2locreg	%offsetof(.Llo248), %offsetof(.Llo249),3
	.d2locreg	%offsetof(.Llo250), %offsetof(.Llo220),3
	.d2locreg	%offsetof(.Llo251), %offsetof(.Llo222),3
	.d2locreg	%offsetof(.Llo252), %offsetof(.Llo253),3
	.d2locreg	%offsetof(.Llo254), %offsetof(.Llo224),3
	.d2locreg	%offsetof(.Llo246), %offsetof(.Llo168),30
	.d2locend
.L1494:
	.d2locreg	%offsetof(.Llo255), %offsetof(.Llo256),3
	.d2locend
.L1495:
	.d2locreg	%offsetof(.Llo255), %offsetof(.Llo256),4
	.d2locend
.L1502:
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo258),3
	.d2locreg	%offsetof(.Llo259), %offsetof(.Llo260),3
	.d2locreg	%offsetof(.Llo261), %offsetof(.Llo262),3
	.d2locreg	%offsetof(.Llo263), %offsetof(.Llo264),3
	.d2locreg	%offsetof(.Llo265), %offsetof(.Llo266),3
	.d2locreg	%offsetof(.Llo267), %offsetof(.Llo268),3
	.d2locend
.L1503:
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo269),4
	.d2locreg	%offsetof(.Llo259), %offsetof(.Llo260),4
	.d2locreg	%offsetof(.Llo270), %offsetof(.Llo271),4
	.d2locreg	%offsetof(.Llo272), %offsetof(.Llo273),4
	.d2locreg	%offsetof(.Llo274), %offsetof(.Llo275),4
	.d2locend
.L1505:
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo276),31
	.d2locend
.L1507:
	.d2locreg	%offsetof(.Llo277), %offsetof(.Llo278),5
	.d2locreg	%offsetof(.Llo259), %offsetof(.Llo260),5
	.d2locend
.L1509:
	.d2locreg	%offsetof(.Llo279), %offsetof(.Llo280),0
	.d2locreg	%offsetof(.Llo281), %offsetof(.Llo278),0
	.d2locreg	%offsetof(.Llo259), %offsetof(.Llo260),0
	.d2locreg	%offsetof(.Llo263), %offsetof(.Llo264),0
	.d2locend
.L1511:
	.d2locreg	%offsetof(.Llo282), %offsetof(.Llo283),7
	.d2locreg	%offsetof(.Llo284), %offsetof(.Llo280),7
	.d2locend
.L1513:
	.d2locreg	%offsetof(.Llo285), %offsetof(.Llo286),6
	.d2locend
.L1515:
	.d2locreg	%offsetof(.Llo287), %offsetof(.Llo288),6
	.d2locreg	%offsetof(.Llo289), %offsetof(.Llo290),6
	.d2locreg	%offsetof(.Llo291), %offsetof(.Llo292),6
	.d2locreg	%offsetof(.Llo293), %offsetof(.Llo278),6
	.d2locend
.L1521:
	.d2locreg	%offsetof(.Llo294), %offsetof(.Llo295),3
	.d2locreg	%offsetof(.Llo296), %offsetof(.Llo297),31
	.d2locreg	%offsetof(.Llo298), %offsetof(.Llo299),31
	.d2locreg	%offsetof(.Llo300), %offsetof(.Llo301),31
	.d2locend
.L1522:
	.d2locreg	%offsetof(.Llo294), %offsetof(.Llo296),4
	.d2locreg	%offsetof(.Llo302), %offsetof(.Llo303),29
	.d2locreg	%offsetof(.Llo304), %offsetof(.Llo305),4
	.d2locreg	%offsetof(.Llo306), %offsetof(.Llo307),4
	.d2locreg	%offsetof(.Llo308), %offsetof(.Llo309),4
	.d2locreg	%offsetof(.Llo300), %offsetof(.Llo301),29
	.d2locreg	%offsetof(.Llo310), %offsetof(.Llo311),4
	.d2locend
.L1528:
	.d2locreg	%offsetof(.Llo312), %offsetof(.Llo313),0
	.d2locreg	%offsetof(.Llo314), %offsetof(.Llo315),31
	.d2locend
.L1530:
	.d2locreg	%offsetof(.Llo316), %offsetof(.Llo317),30
	.d2locreg	%offsetof(.Llo318), %offsetof(.Llo315),30
	.d2locend
.L1532:
	.d2locreg	%offsetof(.Llo304), %offsetof(.Llo305),3
	.d2locreg	%offsetof(.Llo319), %offsetof(.Llo320),3
	.d2locreg	%offsetof(.Llo306), %offsetof(.Llo321),3
	.d2locreg	%offsetof(.Llo308), %offsetof(.Llo322),3
	.d2locend
.L1538:
	.d2locreg	%offsetof(.Llo323), %offsetof(.Llo324),3
	.d2locreg	%offsetof(.Llo325), %offsetof(.Llo326),7
	.d2locreg	%offsetof(.Llo327), %offsetof(.Llo328),7
	.d2locreg	%offsetof(.Llo329), %offsetof(.Llo330),7
	.d2locreg	%offsetof(.Llo331), %offsetof(.Llo332),7
	.d2locend
.L1539:
	.d2locreg	%offsetof(.Llo323), %offsetof(.Llo325),4
	.d2locreg	%offsetof(.Llo333), %offsetof(.Llo334),31
	.d2locreg	%offsetof(.Llo329), %offsetof(.Llo335),31
	.d2locreg	%offsetof(.Llo331), %offsetof(.Llo332),31
	.d2locreg	%offsetof(.Llo336), %offsetof(.Llo337),4
	.d2locreg	%offsetof(.Llo338), %offsetof(.Llo339),4
	.d2locreg	%offsetof(.Llo340), %offsetof(.Llo341),31
	.d2locreg	%offsetof(.Llo342), %offsetof(.Llo343),4
	.d2locend
.L1543:
	.d2locreg	%offsetof(.Llo323), %offsetof(.Llo325),6
	.d2locreg	%offsetof(.Llo333), %offsetof(.Llo334),30
	.d2locreg	%offsetof(.Llo329), %offsetof(.Llo335),30
	.d2locreg	%offsetof(.Llo331), %offsetof(.Llo332),30
	.d2locreg	%offsetof(.Llo336), %offsetof(.Llo344),6
	.d2locreg	%offsetof(.Llo338), %offsetof(.Llo339),6
	.d2locreg	%offsetof(.Llo340), %offsetof(.Llo341),30
	.d2locreg	%offsetof(.Llo342), %offsetof(.Llo343),6
	.d2locend
.L1545:
	.d2locreg	%offsetof(.Llo345), %offsetof(.Llo328),29
	.d2locreg	%offsetof(.Llo346), %offsetof(.Llo347),29
	.d2locreg	%offsetof(.Llo348), %offsetof(.Llo349),29
	.d2locreg	%offsetof(.Llo334), %offsetof(.Llo332),29
	.d2locreg	%offsetof(.Llo339), %offsetof(.Llo350),29
	.d2locend
.L1547:
	.d2locreg	%offsetof(.Llo351), %offsetof(.Llo341),25
	.d2locend
.L1553:
	.d2locreg	%offsetof(.Llo352), %offsetof(.Llo353),3
	.d2locreg	%offsetof(.Llo327), %offsetof(.Llo328),4
	.d2locreg	%offsetof(.Llo354), %offsetof(.Llo355),4
	.d2locreg	%offsetof(.Llo356), %offsetof(.Llo357),4
	.d2locreg	%offsetof(.Llo358), %offsetof(.Llo359),4
	.d2locreg	%offsetof(.Llo360), %offsetof(.Llo361),4
	.d2locend
.L1559:
	.d2locreg	%offsetof(.Llo362), %offsetof(.Llo363),3
	.d2locreg	%offsetof(.Llo364), %offsetof(.Llo365),3
	.d2locreg	%offsetof(.Llo366), %offsetof(.Llo367),3
	.d2locreg	%offsetof(.Llo368), %offsetof(.Llo334),3
	.d2locreg	%offsetof(.Llo340), %offsetof(.Llo341),3
	.d2locend
.L1561:
	.d2locreg	%offsetof(.Llo369), %offsetof(.Llo346),29
	.d2locreg	%offsetof(.Llo347), %offsetof(.Llo365),29
	.d2locreg	%offsetof(.Llo349), %offsetof(.Llo334),29
	.d2locend
.L1567:
	.d2locreg	%offsetof(.Llo370), %offsetof(.Llo335),28
	.d2locreg	%offsetof(.Llo339), %offsetof(.Llo341),28
	.d2locend
.L1569:
	.d2locreg	%offsetof(.Llo371), %offsetof(.Llo359),3
	.d2locreg	%offsetof(.Llo372), %offsetof(.Llo373),3
	.d2locreg	%offsetof(.Llo374), %offsetof(.Llo375),3
	.d2locreg	%offsetof(.Llo376), %offsetof(.Llo335),3
	.d2locend
.L1573:
	.d2locreg	%offsetof(.Llo377), %offsetof(.Llo335),27
	.d2locreg	%offsetof(.Llo339), %offsetof(.Llo341),27
	.d2locend
.L1575:
	.d2locreg	%offsetof(.Llo378), %offsetof(.Llo335),26
	.d2locreg	%offsetof(.Llo339), %offsetof(.Llo341),26
	.d2locend
.L1581:
	.d2locreg	%offsetof(.Llo379), %offsetof(.Llo380),3
	.d2locend
.L1594:
	.d2locreg	%offsetof(.Llo381), %offsetof(.Llo382),3
	.d2locreg	%offsetof(.Llo383), %offsetof(.Llo384),31
	.d2locend
.L1601:
	.d2locreg	%offsetof(.Llo385), %offsetof(.Llo386),3
	.d2locreg	%offsetof(.Llo387), %offsetof(.Llo388),31
	.d2locend
.L1608:
	.d2locreg	%offsetof(.Llo389), %offsetof(.Llo390),31
	.d2locend
.L1614:
	.d2locreg	%offsetof(.Llo391), %offsetof(.Llo390),30
	.d2locend
.L1621:
	.d2locreg	%offsetof(.Llo392), %offsetof(.Llo393),5
	.d2locreg	%offsetof(.Llo394), %offsetof(.Llo395),5
	.d2locend
.L1624:
	.d2locreg	%offsetof(.Llo396), %offsetof(.Llo397),3
	.d2locreg	%offsetof(.Llo398), %offsetof(.Llo399),3
	.d2locreg	%offsetof(.Llo400), %offsetof(.Llo393),3
	.d2locreg	%offsetof(.Llo401), %offsetof(.Llo402),3
	.d2locend
.L1630:
	.d2locreg	%offsetof(.Llo403), %offsetof(.Llo404),3
	.d2locreg	%offsetof(.Llo405), %offsetof(.Llo406),31
	.d2locend
.L1633:
	.d2locreg	%offsetof(.Llo407), %offsetof(.Llo408),3
	.d2locreg	%offsetof(.Llo409), %offsetof(.Llo410),3
	.d2locreg	%offsetof(.Llo411), %offsetof(.Llo412),3
	.d2locend
.L1636:
	.d2locreg	%offsetof(.Llo413), %offsetof(.Llo406),30
	.d2locend
.L1645:
	.d2locreg	%offsetof(.Llo414), %offsetof(.Llo415),3
	.d2locreg	%offsetof(.Llo416), %offsetof(.Llo417),31
	.d2locend
.L1652:
	.d2locreg	%offsetof(.Llo414), %offsetof(.Llo418),31
	.d2locreg	%offsetof(.Llo415), %offsetof(.Llo419),3
	.d2locreg	%offsetof(.Llo420), %offsetof(.Llo421),3
	.d2locend
.L1659:
	.d2locreg	%offsetof(.Llo422), %offsetof(.Llo423),3
	.d2locreg	%offsetof(.Llo424), %offsetof(.Llo425),31
	.d2locend
.L1667:
	.d2locreg	%offsetof(.Llo426), %offsetof(.Llo427),3
	.d2locreg	%offsetof(.Llo428), %offsetof(.Llo429),31
	.d2locend
.L1669:
	.d2locreg	%offsetof(.Llo430), %offsetof(.Llo431),3
	.d2locreg	%offsetof(.Llo432), %offsetof(.Llo433),3
	.d2locreg	%offsetof(.Llo429), %offsetof(.Llo434),3
	.d2locend
.L1681:
	.d2locreg	%offsetof(.Llo435), %offsetof(.Llo436),3
	.d2locreg	%offsetof(.Llo437), %offsetof(.Llo438),31
	.d2locend
.L1691:
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo440),3
	.d2locreg	%offsetof(.Llo441), %offsetof(.Llo442),30
	.d2locend
.L1693:
	.d2locreg	%offsetof(.Llo443), %offsetof(.Llo444),6
	.d2locreg	%offsetof(.Llo445), %offsetof(.Llo446),3
	.d2locreg	%offsetof(.Llo447), %offsetof(.Llo442),3
	.d2locreg	%offsetof(.Llo448), %offsetof(.Llo449),31
	.d2locreg	%offsetof(.Llo450), %offsetof(.Llo451),3
	.d2locreg	%offsetof(.Llo452), %offsetof(.Llo453),3
	.d2locend
.L1699:
	.d2locreg	%offsetof(.Llo454), %offsetof(.Llo455),3
	.d2locreg	%offsetof(.Llo456), %offsetof(.Llo457),3
	.d2locend
.L1701:
	.d2locreg	%offsetof(.Llo458), %offsetof(.Llo457),4
	.d2locreg	%offsetof(.Llo445), %offsetof(.Llo459),4
	.d2locreg	%offsetof(.Llo460), %offsetof(.Llo461),4
	.d2locreg	%offsetof(.Llo462), %offsetof(.Llo463),4
	.d2locreg	%offsetof(.Llo464), %offsetof(.Llo465),4
	.d2locreg	%offsetof(.Llo466), %offsetof(.Llo467),4
	.d2locreg	%offsetof(.Llo468), %offsetof(.Llo451),4
	.d2locreg	%offsetof(.Llo469), %offsetof(.Llo453),4
	.d2locend
.L1707:
	.d2locreg	%offsetof(.Llo470), %offsetof(.Llo471),4
	.d2locreg	%offsetof(.Llo472), %offsetof(.Llo473),4
	.d2locend
.L1713:
	.d2locreg	%offsetof(.Llo474), %offsetof(.Llo475),3
	.d2locend
.L1721:
	.d2locreg	%offsetof(.Llo476), %offsetof(.Llo477),3
	.d2locreg	%offsetof(.Llo478), %offsetof(.Llo479),3
	.d2locreg	%offsetof(.Llo480), %offsetof(.Llo481),3
	.d2locreg	%offsetof(.Llo482), %offsetof(.Llo483),3
	.d2locreg	%offsetof(.Llo484), %offsetof(.Llo485),3
	.d2locreg	%offsetof(.Llo486), %offsetof(.Llo487),3
	.d2locreg	%offsetof(.Llo488), %offsetof(.Llo489),3
	.d2locreg	%offsetof(.Llo490), %offsetof(.Llo491),3
	.d2locreg	%offsetof(.Llo492), %offsetof(.Llo493),3
	.d2locreg	%offsetof(.Llo494), %offsetof(.Llo495),3
	.d2locreg	%offsetof(.Llo496), %offsetof(.Llo497),3
	.d2locreg	%offsetof(.Llo498), %offsetof(.Llo499),3
	.d2locend
.L1726:
	.d2locreg	%offsetof(.Llo500), %offsetof(.Llo493),4
	.d2locend
.L1728:
	.d2locreg	%offsetof(.Llo501), %offsetof(.Llo502),31
	.d2locend
.L1744:
	.d2locreg	%offsetof(.Llo503), %offsetof(.Llo504),3
	.d2locreg	%offsetof(.Llo505), %offsetof(.Llo506),0
	.d2locend
.L1766:
	.d2locreg	%offsetof(.Llo507), %offsetof(.Llo508),3
	.d2locreg	%offsetof(.Llo509), %offsetof(.Llo510),3
	.d2locend
.L1768:
	.d2locreg	%offsetof(.Llo510), %offsetof(.Llo511),3
	.d2locreg	%offsetof(.Llo512), %offsetof(.Llo513),3
	.d2locend
.L1770:
	.d2locreg	%offsetof(.Llo514), %offsetof(.Llo508),0
	.d2locreg	%offsetof(.Llo515), %offsetof(.Llo511),0
	.d2locend
.L1772:
	.d2locreg	%offsetof(.Llo516), %offsetof(.Llo517),4
	.d2locreg	%offsetof(.Llo518), %offsetof(.Llo508),4
	.d2locend
.L1784:
	.d2locreg	%offsetof(.Llo519), %offsetof(.Llo520),3
	.d2locreg	%offsetof(.Llo521), %offsetof(.Llo522),31
	.d2locend
.L1785:
	.d2locreg	%offsetof(.Llo519), %offsetof(.Llo521),4
	.d2locreg	%offsetof(.Llo523), %offsetof(.Llo522),30
	.d2locreg	%offsetof(.Llo524), %offsetof(.Llo525),4
	.d2locend
.L1787:
	.d2locreg	%offsetof(.Llo526), %offsetof(.Llo522),29
	.d2locend
.L1789:
	.d2locreg	%offsetof(.Llo527), %offsetof(.Llo528),28
	.d2locreg	%offsetof(.Llo529), %offsetof(.Llo530),3
	.d2locreg	%offsetof(.Llo531), %offsetof(.Llo532),28
	.d2locreg	%offsetof(.Llo533), %offsetof(.Llo534),28
	.d2locend
.L1791:
	.d2locreg	%offsetof(.Llo523), %offsetof(.Llo522),27
	.d2locend
.L1797:
	.d2locreg	%offsetof(.Llo535), %offsetof(.Llo522),26
	.d2locend
.L1799:
	.d2locreg	%offsetof(.Llo536), %offsetof(.Llo522),25
	.d2locend
.L1805:
	.d2locreg	%offsetof(.Llo537), %offsetof(.Llo538),3
	.d2locreg	%offsetof(.Llo539), %offsetof(.Llo540),3
	.d2locend
.L1812:
	.d2locreg	%offsetof(.Llo541), %offsetof(.Llo542),31
	.d2locend
.L1818:
	.d2locreg	%offsetof(.Llo543), %offsetof(.Llo544),3
	.d2locreg	%offsetof(.Llo545), %offsetof(.Llo546),31
	.d2locend
.L1820:
	.d2locreg	%offsetof(.Llo547), %offsetof(.Llo548),31
	.d2locend
.L1827:
	.d2locreg	%offsetof(.Llo549), %offsetof(.Llo550),3
	.d2locreg	%offsetof(.Llo551), %offsetof(.Llo552),3
	.d2locreg	%offsetof(.Llo553), %offsetof(.Llo554),3
	.d2locreg	%offsetof(.Llo555), %offsetof(.Llo556),3
	.d2locend
.L1829:
	.d2locreg	%offsetof(.Llo557), %offsetof(.Llo558),5
	.d2locend
.L1835:
	.d2locreg	%offsetof(.Llo559), %offsetof(.Llo560),3
	.d2locend
.L1837:
	.d2locreg	%offsetof(.Llo560), %offsetof(.Llo561),3
	.d2locend
.L1843:
	.d2locreg	%offsetof(.Llo562), %offsetof(.Llo563),3
	.d2locreg	%offsetof(.Llo564), %offsetof(.Llo565),31
	.d2locend
.L1844:
	.d2locreg	%offsetof(.Llo562), %offsetof(.Llo566),4
	.d2locend
.L1845:
	.d2locreg	%offsetof(.Llo562), %offsetof(.Llo567),5
	.d2locreg	%offsetof(.Llo568), %offsetof(.Llo569),5
	.d2locend
.L1847:
	.d2locreg	%offsetof(.Llo567), %offsetof(.Llo568),3
	.d2locreg	%offsetof(.Llo565), %offsetof(.Llo570),3
	.d2locend
.L1853:
	.d2locreg	%offsetof(.Llo571), %offsetof(.Llo572),3
	.d2locreg	%offsetof(.Llo573), %offsetof(.Llo574),31
	.d2locend
.L1854:
	.d2locreg	%offsetof(.Llo571), %offsetof(.Llo575),4
	.d2locend
.L1856:
	.d2locreg	%offsetof(.Llo576), %offsetof(.Llo574),30
	.d2locend
.L1858:
	.d2locreg	%offsetof(.Llo571), %offsetof(.Llo577),29
	.d2locend
.L1860:
	.d2locreg	%offsetof(.Llo578), %offsetof(.Llo579),0
	.d2locreg	%offsetof(.Llo580), %offsetof(.Llo581),3
	.d2locreg	%offsetof(.Llo582), %offsetof(.Llo583),3
	.d2locreg	%offsetof(.Llo584), %offsetof(.Llo585),0
	.d2locreg	%offsetof(.Llo586), %offsetof(.Llo587),3
	.d2locreg	%offsetof(.Llo588), %offsetof(.Llo589),0
	.d2locreg	%offsetof(.Llo590), %offsetof(.Llo574),3
	.d2locend
.L1869:
	.d2locreg	%offsetof(.Llo591), %offsetof(.Llo592),31
	.d2locreg	%offsetof(.Llo593), %offsetof(.Llo594),3
	.d2locreg	%offsetof(.Llo595), %offsetof(.Llo596),31
	.d2locreg	%offsetof(.Llo597), %offsetof(.Llo598),31
	.d2locreg	%offsetof(.Llo599), %offsetof(.Llo600),31
	.d2locreg	%offsetof(.Llo601), %offsetof(.Llo602),31
	.d2locreg	%offsetof(.Llo603), %offsetof(.Llo604),31
	.d2locreg	%offsetof(.Llo605), %offsetof(.Llo606),31
	.d2locreg	%offsetof(.Llo607), %offsetof(.Llo608),31
	.d2locend
.L1871:
	.d2locreg	%offsetof(.Llo609), %offsetof(.Llo608),29
	.d2locend
.L1878:
	.d2locreg	%offsetof(.Llo591), %offsetof(.Llo592),31
	.d2locreg	%offsetof(.Llo610), %offsetof(.Llo611),3
	.d2locreg	%offsetof(.Llo612), %offsetof(.Llo613),3
	.d2locreg	%offsetof(.Llo614), %offsetof(.Llo615),3
	.d2locreg	%offsetof(.Llo616), %offsetof(.Llo617),3
	.d2locreg	%offsetof(.Llo618), %offsetof(.Llo619),3
	.d2locreg	%offsetof(.Llo620), %offsetof(.Llo621),3
	.d2locreg	%offsetof(.Llo622), %offsetof(.Llo623),3
	.d2locreg	%offsetof(.Llo624), %offsetof(.Llo625),3
	.d2locreg	%offsetof(.Llo626), %offsetof(.Llo627),3
	.d2locreg	%offsetof(.Llo628), %offsetof(.Llo629),3
	.d2locreg	%offsetof(.Llo630), %offsetof(.Llo596),31
	.d2locreg	%offsetof(.Llo597), %offsetof(.Llo598),31
	.d2locreg	%offsetof(.Llo599), %offsetof(.Llo600),31
	.d2locreg	%offsetof(.Llo601), %offsetof(.Llo602),31
	.d2locreg	%offsetof(.Llo603), %offsetof(.Llo604),31
	.d2locreg	%offsetof(.Llo605), %offsetof(.Llo606),31
	.d2locreg	%offsetof(.Llo607), %offsetof(.Llo608),31
	.d2locend
.L1884:
	.d2locreg	%offsetof(.Llo631), %offsetof(.Llo632),3
	.d2locreg	%offsetof(.Llo633), %offsetof(.Llo592),30
	.d2locend
.L1890:
	.d2locreg	%offsetof(.Llo634), %offsetof(.Llo635),6
	.d2locreg	%offsetof(.Llo636), %offsetof(.Llo637),0
	.d2locreg	%offsetof(.Llo638), %offsetof(.Llo639),6
	.d2locreg	%offsetof(.Llo640), %offsetof(.Llo608),0
	.d2locend
.L1896:
	.d2locreg	%offsetof(.Llo641), %offsetof(.Llo635),3
	.d2locend
.L1902:
	.d2locreg	%offsetof(.Llo642), %offsetof(.Llo643),6
	.d2locreg	%offsetof(.Llo644), %offsetof(.Llo645),0
	.d2locreg	%offsetof(.Llo646), %offsetof(.Llo647),0
	.d2locreg	%offsetof(.Llo648), %offsetof(.Llo649),0
	.d2locreg	%offsetof(.Llo650), %offsetof(.Llo651),0
	.d2locreg	%offsetof(.Llo652), %offsetof(.Llo653),6
	.d2locend
.L1908:
	.d2locreg	%offsetof(.Llo654), %offsetof(.Llo643),3
	.d2locend
.L1914:
	.d2locreg	%offsetof(.Llo591), %offsetof(.Llo592),31
	.d2locreg	%offsetof(.Llo630), %offsetof(.Llo596),31
	.d2locreg	%offsetof(.Llo597), %offsetof(.Llo598),31
	.d2locreg	%offsetof(.Llo599), %offsetof(.Llo600),31
	.d2locreg	%offsetof(.Llo601), %offsetof(.Llo602),31
	.d2locreg	%offsetof(.Llo655), %offsetof(.Llo656),3
	.d2locreg	%offsetof(.Llo657), %offsetof(.Llo604),31
	.d2locreg	%offsetof(.Llo605), %offsetof(.Llo606),31
	.d2locreg	%offsetof(.Llo607), %offsetof(.Llo608),31
	.d2locend
.L1920:
	.d2locreg	%offsetof(.Llo658), %offsetof(.Llo659),31
	.d2locend
.L1926:
	.d2locreg	%offsetof(.Llo660), %offsetof(.Llo661),3
	.d2locend
.L1932:
	.d2locreg	%offsetof(.Llo662), %offsetof(.Llo663),3
	.d2locreg	%offsetof(.Llo664), %offsetof(.Llo665),3
	.d2locend
.L1936:
	.d2locreg	%offsetof(.Llo662), %offsetof(.Llo666),4
	.d2locreg	%offsetof(.Llo667), %offsetof(.Llo665),0
	.d2locend
.L1942:
	.d2locreg	%offsetof(.Llo668), %offsetof(.Llo663),4
	.d2locreg	%offsetof(.Llo669), %offsetof(.Llo665),4
	.d2locend
.L1948:
	.d2locreg	%offsetof(.Llo670), %offsetof(.Llo671),3
	.d2locreg	%offsetof(.Llo672), %offsetof(.Llo673),31
	.d2locend
.L1954:
	.d2locreg	%offsetof(.Llo674), %offsetof(.Llo675),3
	.d2locreg	%offsetof(.Llo676), %offsetof(.Llo677),31
	.d2locend
.L1960:
	.d2locreg	%offsetof(.Llo678), %offsetof(.Llo679),3
	.d2locreg	%offsetof(.Llo680), %offsetof(.Llo681),31
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Dcm_ComM_FullComModeEntered"
	.wrcm.nstrlist "calls", "Det_ReportError","SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent","SetChannelCommMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Dcm_ComM_SilentComModeEntered"
	.wrcm.nstrlist "calls", "Det_ReportError","SetChannelCommMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Dcm_ComM_NoComModeEntered"
	.wrcm.nstrlist "calls", "Det_ReportError","SetChannelCommMode"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "SetChannelCommMode"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Dcm_SE_DslStateMachine"
	.wrcm.nlist "calls"
	.wrcm.str "CheckProtocol"
	.wrcm.str "ComM_DCM_ActiveDiagnostic"
	.wrcm.str "ComM_DCM_InactiveDiagnostic"
	.wrcm.str "Dcm_DsdClearSuppressPositiveResponse"
	.wrcm.str "Dcm_DsdGetCurrentHandledServiceID"
	.wrcm.str "Dcm_DsdIsIdle"
	.wrcm.str "Dcm_DsdRcrrpConfirmation"
	.wrcm.str "Dcm_DsdRxIndication"
	.wrcm.str "Dcm_DsdServiceCancelled"
	.wrcm.str "Dcm_DsdTxConfirmation"
	.wrcm.str "Dcm_GetSesTimingValues"
	.wrcm.str "Dcm_SetSesCtrlType"
	.wrcm.str "Dcm_TpTxConfirmation"
	.wrcm.str "Det_ReportError"
	.wrcm.str "GetPendingChannel"
	.wrcm.str "PduR_DcmCancelTransmit"
	.wrcm.str "PreemptProtocol"
	.wrcm.str "ReleaseRxChannel"
	.wrcm.str "SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine"
	.wrcm.str "SchM_Enter_Dcm_EaTimers"
	.wrcm.str "SchM_Exit_Dcm_EaTimers"
	.wrcm.str "TransmitIntermediateResponse"
	.wrcm.str "TransmitResponse"
	.wrcm.str "checkROESwitch"
	.wrcm.end
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CheckProtocol"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "Dcm_SetSesCtrlType"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "TransmitIntermediateResponse"
	.wrcm.nstrlist "calls", "ComposeNegativeResponse","Dcm_TpTxConfirmation","TransmitResponse"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "GetPendingChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "PreemptProtocol"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "Dcm_DsdStopProtocol","SchM_Enter_Dcm_EaTimers","SchM_Exit_Dcm_EaTimers"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Dcm_DslPeriodicStateMachine"
	.wrcm.nstrlist "calls", "PeriodicSubStateMachine"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "PeriodicSubStateMachine"
	.wrcm.nstrlist "calls", "Dcm_DspConfirmPeriodicTxData"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Dcm_DslSendPeriodicTxData"
	.wrcm.nstrlist "calls", "Dcm_DspTransmitPeriodicDataTrigger","PduR_DcmTransmit"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Dcm_DslClearPeriodicTxConnection"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dcm_DslSetPeriodicTxConnection"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dcm_DslProtocolStopped"
	.wrcm.nstrlist "calls", "SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dcm_DslTransmitNoResponse"
	.wrcm.nstrlist "calls", "SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dcm_DslForceResponsePending"
	.wrcm.nstrlist "calls", "TriggerResponsePending"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dcm_DslTransmit"
	.wrcm.nstrlist "calls", "SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dcm_DslHandleTimers"
	.wrcm.nstrlist "calls", "Dcm_SetSesCtrlType","HandlePossibleJumpFromBootloader","SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine","SchM_Enter_Dcm_EaTimers","SchM_Exit_Dcm_EaTimers","TriggerResponsePending"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "TriggerResponsePending"
	.wrcm.nstrlist "calls", "SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine","SchM_Enter_Dcm_EaTimers","SchM_Exit_Dcm_EaTimers"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "HandlePossibleJumpFromBootloader"
	.wrcm.nstrlist "calls", "ComM_DCM_ActiveDiagnostic","Dcm_DspGetSessionConfiguration","Dcm_GetProgConditions","Dcm_SetSesCtrlType","TransmitResponse"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Dcm_DslInit"
	.wrcm.nstrlist "calls", "Dcm_Memset","SchM_Enter_Dcm_EaTimers","SchM_Exit_Dcm_EaTimers"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Dcm_GetResponsePendingStatus"
	.wrcm.nstrlist "calls", "Det_ReportError"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Dcm_ResetToDefaultSession"
	.wrcm.nstrlist "calls", "Det_ReportError","SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dcm_GetActiveProtocol"
	.wrcm.nstrlist "calls", "Det_ReportError"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Dcm_GetSecurityLevel"
	.wrcm.nstrlist "calls", "Det_ReportError"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Dcm_GetSesTimingValues"
	.wrcm.nstrlist "calls", "Dcm_DspGetSessionConfiguration"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Dcm_SetSesCtrlType"
	.wrcm.nlist "calls"
	.wrcm.str "ComM_DCM_ActiveDiagnostic"
	.wrcm.str "ComM_DCM_InactiveDiagnostic"
	.wrcm.str "Dcm_DspEnableDtcSetting"
	.wrcm.str "Dcm_DspResetPendingSecurityLevel"
	.wrcm.str "Dcm_DspResetPeriodicTransmission"
	.wrcm.str "Dcm_DspRoe_GenSessionChange"
	.wrcm.str "Dcm_IsServiceAvailableSession"
	.wrcm.str "Dcm_SesCtrlTypeToSessionMode"
	.wrcm.str "Dcm_SetSecurityLevel"
	.wrcm.str "SchM_Enter_Dcm_EaTimers"
	.wrcm.str "SchM_Exit_Dcm_EaTimers"
	.wrcm.str "SchM_Switch_Dcm_DcmDiagnosticSessionControl"
	.wrcm.str "StopAllDidCtrl"
	.wrcm.end
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "StopAllDidCtrl"
	.wrcm.nstrlist "calls", "Dcm_Memset","Dcm_ReturnControlToECUWrapper"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Dcm_SetSecurityLevel"
	.wrcm.nstrlist "calls", "Det_ReportError"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Dcm_GetSesCtrlType"
	.wrcm.nstrlist "calls", "Det_ReportError"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Dcm_RxIndication"
	.wrcm.nstrlist "calls", "Det_ReportError"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dcm_TxConfirmation"
	.wrcm.nstrlist "calls", "GenericTxConfirmation"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dcm_CopyTxData"
	.wrcm.nstrlist "calls", "Dcm_Memcpy","Det_ReportError","GetTxChannelTableIndex","SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Dcm_TpRxIndication"
	.wrcm.nstrlist "calls", "ComposeNegativeResponse","Det_ReportError","HandleConcurrentTesterPresent","ReleaseRxChannel","SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine","SchM_Enter_Dcm_EaTimers","SchM_Exit_Dcm_EaTimers","TransmitResponse"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "TransmitResponse"
	.wrcm.nstrlist "calls", "Dcm_TpTxConfirmation","PduR_DcmTransmit"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Dcm_TpTxConfirmation"
	.wrcm.nstrlist "calls", "GenericTxConfirmation"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "GenericTxConfirmation"
	.wrcm.nlist "calls"
	.wrcm.str "ComM_DCM_InactiveDiagnostic"
	.wrcm.str "Dcm_DsdServiceCancelled"
	.wrcm.str "Dcm_DsdTxConfirmation"
	.wrcm.str "Dcm_DspRoe_GenConfirmation"
	.wrcm.str "Dcm_DspTransmitPeriodicDataTrigger"
	.wrcm.str "Det_ReportError"
	.wrcm.str "GetTxChannelTableIndex"
	.wrcm.str "ReleaseRxChannel"
	.wrcm.str "SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine"
	.wrcm.str "SchM_Enter_Dcm_EaTimers"
	.wrcm.str "SchM_Exit_Dcm_EaTimers"
	.wrcm.end
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "GetTxChannelTableIndex"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "ComposeNegativeResponse"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "HandleConcurrentTesterPresent"
	.wrcm.nstrlist "calls", "ReleaseRxChannel","SchM_Enter_Dcm_EaTimers","SchM_Exit_Dcm_EaTimers"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "ReleaseRxChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Dcm_CopyRxData"
	.wrcm.nstrlist "calls", "Dcm_Memcpy","Det_ReportError"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "Dcm_StartOfReception"
	.wrcm.nstrlist "calls", "Det_ReportError","HasLowerOrEqualPriorityThanPendingReq","SchM_Enter_Dcm_EaRxBuffers","SchM_Enter_Dcm_EaTimers","SchM_Exit_Dcm_EaRxBuffers","SchM_Exit_Dcm_EaTimers","Take2ndRxChannel","TakeRxChannel","checkROESwitch"
	.wrcm.nint32 "frameSize", 64
	.wrcm.end
	.wrcm.nelem "Take2ndRxChannel"
	.wrcm.nstrlist "calls", "SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine","TakeRxBuffer"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "TakeRxChannel"
	.wrcm.nstrlist "calls", "SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine","TakeRxBuffer"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "TakeRxBuffer"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "HasLowerOrEqualPriorityThanPendingReq"
	.wrcm.nstrlist "calls", "GetPriorityOfNextPendingChannel"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "GetPriorityOfNextPendingChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "checkROESwitch"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dcm_Dsl.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dcm_Dsl.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dcm_Dsl.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dcm_Dsl.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dcm_Dsl.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dcm_Dsl.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\DIAG\Dcm\ssc\make\..\src\Dcm_Dsl.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
