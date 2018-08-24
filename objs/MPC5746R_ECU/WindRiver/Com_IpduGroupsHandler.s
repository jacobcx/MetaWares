#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Com_IpduGroupsHandler.c"
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
# static FUNC(void, COM_CODE) InitializeSignal(
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_IpduGroupsHandler.c"
        .d2line         827,29
#$$ld
.L313:

#$$bf	InitializeSignal,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
InitializeSignal:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# SignalPB_Ref=r3 SignalPB_Ref=r3
	mr		r0,r4		# destinationBuffer=r0 destinationBuffer=r4
	.d2prologue_end
#         P2CONST(Com_SignalsPB, AUTOMATIC, COM_CONST_PB) SignalPB_Ref,
#         CONSTP2VAR(uint8, AUTOMATIC, COM_CONST_PB) destinationBuffer)
# {
#     P2CONST(uint8, AUTOMATIC, COM_CONST_PB) initValueRef;
# 
# #if COM_ENABLE_FLOATING_POINT == STD_ON
#     CONST(float32, AUTOMATIC) float32DefaultInitValue = (float32)0.0F;
#     CONST(float64, AUTOMATIC) float64DefaultInitValue = (float64)0.0;
# #endif
#     CONST(uint8, AUTOMATIC) defaultInitValueArr[5] = {0, 0, 0, 0, 0};
	.d2line		837
	lis		r7,.L269@ha
	e_add16i		r7,r7,.L269@l
	lbz		r4,0(r7)
.Llo5:
	lbz		r5,1(r7)
	stb		r4,8(r1)
	stb		r5,9(r1)
	lbz		r4,2(r7)
	lbz		r5,3(r7)
	stb		r4,10(r1)
	stb		r5,11(r1)
	lbz		r5,4(r7)
	stb		r5,12(r1)
# 
#     /* If signal has a configured init value */
#     if(SignalPB_Ref->InitValue_Ref != NULL_PTR)
	.d2line		840
	lwz		r4,16(r3)		# SignalPB_Ref=r3
	se_cmpi		r4,0
	bc		1,2,.L270	# eq
#     {
#         initValueRef = SignalPB_Ref->InitValue_Ref;
	.d2line		842
.Llo6:
	lwz		r4,16(r3)		# SignalPB_Ref=r3
.Llo9:
	mr		r4,r4		# initValueRef=r4 initValueRef=r4
	b		.L271
.L270:
#     }
#     else
#     {
# #if COM_ENABLE_FLOATING_POINT == STD_ON
#         if(SignalPB_Ref->ComXf_Signal.Type == COM_FLOAT32)
#         {
#             initValueRef = (P2CONST(uint8, AUTOMATIC, COM_APPL_DATA)) &float32DefaultInitValue;
#         }
#         else if(SignalPB_Ref->ComXf_Signal.Type == COM_FLOAT64)
#         {
#             initValueRef = (P2CONST(uint8, AUTOMATIC, COM_APPL_DATA)) &float64DefaultInitValue;
#         }
#         else
# #endif /* COM_ENABLE_FLOATING_POINT */
#         {
#             initValueRef = defaultInitValueArr;
	.d2line		858
.Llo10:
	diab.addi		r4,r1,8		# initValueRef=r4
.L271:
#         }
#     }
# #if COM_ENABLE_FLOATING_POINT == STD_ON
#     if((SignalPB_Ref->ComXf_Signal.Type == COM_FLOAT32) || (SignalPB_Ref->ComXf_Signal.Type == COM_FLOAT64))
#     {
#         ComXf_PackSignal(initValueRef, destinationBuffer, &SignalPB_Ref->ComXf_Signal
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#                          ,SignalPB_Ref->ComXf_Signal.BufferLength
# #endif
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                          ,NULL_PTR
# #endif
#                          );
#     }
#     else
# #endif /* COM_ENABLE_FLOATING_POINT */
#     {
#         if(((SignalPB_Ref->ComXf_Signal.Type == COM_BYTES) ||
	.d2line		876
.Llo11:
	lwz		r5,44(r3)		# SignalPB_Ref=r3
	se_cmpi		r5,7
	bc		1,2,.L274	# eq
	lwz		r5,44(r3)		# SignalPB_Ref=r3
	se_cmpi		r5,8
	bc		0,2,.L272	# ne
.L274:
	lwz		r5,16(r3)		# SignalPB_Ref=r3
	se_cmpi		r5,0
	bc		0,2,.L272	# ne
#            (SignalPB_Ref->ComXf_Signal.Type == COM_UINT8_DYN)) &&
#            (SignalPB_Ref->InitValue_Ref == NULL_PTR))
#         {
#             /* Init UINT8_N and UINT8_DYN with default init value */
#             vstar_set(destinationBuffer, 0, (uint32) SignalPB_Ref->ComXf_Signal.BufferLength);
	.d2line		881
.Llo12:
	lhz		r5,40(r3)		# SignalPB_Ref=r3
	mr		r3,r0		# destinationBuffer=r3 destinationBuffer=r0
.Llo2:
	diab.li		r4,0		# initValueRef=r4
	bl		vstar_set
.Llo7:
	b		.L268
.L272:
#         }
#         else
#         {
#             Com_CopyBufferNr(initValueRef,
	.d2line		885
.Llo3:
	lhz		r5,40(r3)		# SignalPB_Ref=r3
	lbz		r6,50(r3)		# SignalPB_Ref=r3
	lbz		r7,51(r3)		# SignalPB_Ref=r3
	mr		r3,r4		# initValueRef=r3 initValueRef=r4
.Llo4:
	mr		r4,r0		# destinationBuffer=r4 destinationBuffer=r0
.Llo13:
	bl		Com_CopyBufferNr
.L268:
#                              destinationBuffer,
#                              SignalPB_Ref->ComXf_Signal.BufferLength,
#                              SignalPB_Ref->ComXf_Signal.Mask1,
#                              SignalPB_Ref->ComXf_Signal.Mask2);
#         }
#     }
# }
	.d2line		892
	.d2epilogue_begin
.Llo8:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L314:
	.type		InitializeSignal,@function
	.size		InitializeSignal,.-InitializeSignal
# Number of nodes = 75

# Allocations for InitializeSignal
#	?a4		SignalPB_Ref
#	?a5		destinationBuffer
#	?a6		initValueRef
#	SP,8		defaultInitValueArr
# FUNC(void, COM_CODE) Com_InitializeIpdu(
	.align		2
	.section	.text_vle
        .d2line         719,22
#$$ld
.L336:

#$$bf	Com_InitializeIpdu,interprocedural,rasave,nostackparams
	.globl		Com_InitializeIpdu
	.d2_cfa_start __cie
Com_InitializeIpdu:
.Llo14:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	26,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# IpduId=r0 IpduId=r3
	mr		r4,r4		# Transmit=r4 Transmit=r4
	.d2prologue_end
#         CONST (PduIdType, AUTOMATIC) IpduId,
#         CONST (boolean, AUTOMATIC)  Transmit)
# {
#     P2CONST(Com_SignalsPB, AUTOMATIC, COM_CONST_PB) SignalPB_Ref;
#     P2CONST(Com_TxIpdu,AUTOMATIC,COM_CONST_PB) TxIpduRef;
#     P2CONST(Com_RxIpdu,AUTOMATIC,COM_CONST_PB) RxIpduRef;
#     VAR(Com_SignalIdType, AUTOMATIC) SignalId;
# 
#     SignalPB_Ref = Com_Main->Signals_Ref;
	.d2line		728
	lis		r3,Com_Main@ha
.Llo15:
	lwz		r3,Com_Main@l(r3)
	lwz		r26,36(r3)
.Llo66:
	mr		r26,r26		# SignalPB_Ref=r26 SignalPB_Ref=r26
# 
#     if (Transmit == FALSE)
	.d2line		730
	rlwinm		r4,r4,0,24,31		# Transmit=r4 Transmit=r4
	se_cmpi		r4,0		# Transmit=r4
	bc		0,2,.L231	# ne
#     {
#         /* Initialize Rx IPDU   */
# 
#         RxIpduRef = &(Com_Main->RxIpdus_Ref[IpduId]);
	.d2line		734
.Llo56:
	lis		r3,Com_Main@ha
	lwz		r3,Com_Main@l(r3)
	lwz		r30,16(r3)		# RxIpduRef=r30
.Llo16:
	rlwinm		r0,r0,0,16,31		# IpduId=r0 IpduId=r0
	e_mulli		r0,r0,40		# IpduId=r0 IpduId=r0
	se_add		r0,r30		# IpduId=r0 IpduId=r0 RxIpduRef=r30
.Llo17:
	mr		r30,r0		# RxIpduRef=r30 RxIpduRef=r0
#         /*check if ipdu is not a gap*/
#         if ((RxIpduRef->IPduFlags & COM_RXIPDU_ISGAP) != 0)
	.d2line		736
.Llo70:
	lbz		r0,34(r30)		# IpduId=r0 RxIpduRef=r30
.Llo18:
	se_btsti		r0,24		# IpduId=r0
	bc		1,2,.L230	# eq
	.section	.text_vle
.L364:
#         {
#             VAR(uint16,AUTOMATIC) RxIPduIndex;
#             /* Loop through on Signals and SignalGroups */
#             for (RxIPduIndex = (uint16)0; RxIPduIndex < RxIpduRef->NumberOfSignals; RxIPduIndex++)
	.d2line		740
.Llo19:
	diab.li		r29,0		# RxIPduIndex=r29
.L233:
.Llo73:
	rlwinm		r0,r29,0,16,31		# IpduId=r0 RxIPduIndex=r29
.Llo20:
	lhz		r3,30(r30)		# RxIpduRef=r30
	se_cmp		r0,r3		# IpduId=r0
	bc		0,0,.L230	# ge
#             {
#                 SignalId = RxIpduRef->SignalIndex_Ref[RxIPduIndex];
	.d2line		742
.Llo21:
	lwz		r3,8(r30)		# RxIpduRef=r30
	rlwinm		r0,r29,1,15,30		# IpduId=r0 RxIPduIndex=r29
	lhzx		r31,r3,r0		# SignalId=r31
.Llo71:
	mr		r31,r31		# SignalId=r31 SignalId=r31
#                 /* If normal Signal */
#                 if(SignalPB_Ref[SignalId].NotifyLength == 1)
	.d2line		744
	rlwinm		r0,r31,0,16,31		# IpduId=r0 SignalId=r31
.Llo22:
	rlwinm		r3,r0,6,0,25		# IpduId=r0
	se_slwi		r0,3		# IpduId=r0 IpduId=r0
	subf		r0,r0,r3		# IpduId=r0 IpduId=r0
	add		r3,r0,r26		# IpduId=r0 SignalPB_Ref=r26
	lbz		r0,32(r3)		# IpduId=r0
	se_cmpi		r0,1		# IpduId=r0
	bc		0,2,.L236	# ne
#                 {
#                     InitializeSignal(&SignalPB_Ref[SignalId], SignalPB_Ref[SignalId].BackGroundBuffer_Ref);
	.d2line		746
.Llo23:
	rlwinm		r31,r31,0,16,31		# SignalId=r31 SignalId=r31
	rlwinm		r0,r31,3,0,28		# IpduId=r0 SignalId=r31
.Llo24:
	se_slwi		r31,6		# SignalId=r31 SignalId=r31
	subf		r0,r0,r31		# IpduId=r0 IpduId=r0 SignalId=r31
	add		r3,r0,r26		# IpduId=r0 SignalPB_Ref=r26
	lwz		r4,4(r3)		# Transmit=r4
	bl		InitializeSignal
.Llo25:
	b		.L237
.L236:
	.section	.text_vle
.L370:
#                 }
#                 else
#                 {
#                     /* Initialize GroupSignals */
#                     VAR(uint16, AUTOMATIC) GroupSignalIndex;
#                     for(GroupSignalIndex = 0; GroupSignalIndex<(uint16)SignalPB_Ref[SignalId].NotifyLength;GroupSignalIndex++)
	.d2line		752
	diab.li		r28,0		# GroupSignalIndex=r28
.L238:
.Llo75:
	rlwinm		r3,r31,0,16,31		# SignalId=r31
	rlwinm		r0,r28,0,16,31		# IpduId=r0 GroupSignalIndex=r28
.Llo26:
	rlwinm		r4,r3,6,0,25		# Transmit=r4
.Llo57:
	se_slwi		r3,3
	subf		r3,r3,r4		# Transmit=r4
	se_add		r3,r26		# SignalPB_Ref=r26
	lbz		r3,32(r3)
	se_cmp		r0,r3		# IpduId=r0
	bc		0,0,.L237	# ge
	.section	.text_vle
.L376:
#                     {
#                         CONST(Com_SignalIdType, AUTOMATIC) GroupSignalId =
	.d2line		754
.Llo27:
	rlwinm		r0,r31,0,16,31		# IpduId=r0 SignalId=r31
.Llo28:
	lis		r3,Com_Main@ha
	lwz		r3,Com_Main@l(r3)
	lwz		r3,44(r3)
	rlwinm		r4,r0,6,0,25		# Transmit=r4 IpduId=r0
.Llo58:
	se_slwi		r0,3		# IpduId=r0 IpduId=r0
	subf		r0,r0,r4		# IpduId=r0 IpduId=r0 Transmit=r4
	add		r4,r0,r26		# Transmit=r4 IpduId=r0 SignalPB_Ref=r26
	lhz		r0,22(r4)		# IpduId=r0 Transmit=r4
	rlwinm		r4,r28,0,16,31		# Transmit=r4 GroupSignalIndex=r28
	se_add		r0,r4		# IpduId=r0 IpduId=r0 Transmit=r4
	se_slwi		r0,1		# IpduId=r0 IpduId=r0
	lhzx		r0,r3,r0		# IpduId=r0
.Llo29:
	mr		r0,r0		# GroupSignalId=r0 GroupSignalId=r0
#                                 Com_Main->GroupSignalToIPdu_Ref[SignalPB_Ref[SignalId].InvalidIndex+GroupSignalIndex];
#                         InitializeSignal(&SignalPB_Ref[GroupSignalId],  SignalPB_Ref[GroupSignalId].BackGroundBuffer_Ref);
	.d2line		756
	rlwinm		r0,r0,0,16,31		# GroupSignalId=r0 GroupSignalId=r0
	rlwinm		r3,r0,3,0,28		# GroupSignalId=r0
	se_slwi		r0,6		# GroupSignalId=r0 GroupSignalId=r0
	subf		r3,r3,r0		# GroupSignalId=r0
	se_add		r3,r26		# SignalPB_Ref=r26
	lwz		r4,4(r3)		# Transmit=r4
.Llo59:
	bl		InitializeSignal
	.section	.text_vle
.L377:
#                     }/* foreach GroupSignals */
	.d2line		757
.Llo76:
	diab.addi		r0,r28,1		# GroupSignalId=r0 GroupSignalIndex=r28
	se_addi		r28,1		# GroupSignalIndex=r28 GroupSignalIndex=r28
	b		.L238
	.section	.text_vle
.L371:
.L237:
#                 }/*If SignalGroup */
#             }/* foreach NumberOfSignals */
	.d2line		759
	diab.addi		r0,r29,1		# IpduId=r0 RxIPduIndex=r29
	se_addi		r29,1		# RxIPduIndex=r29 RxIPduIndex=r29
	b		.L233
	.section	.text_vle
.L365:
.L231:
#         }/* Gap check*/
#     }
#     else
#     {
#         /* Initialize Tx IPDU */
# 
#         TxIpduRef = &(Com_Main->TxIpdus_Ref[IpduId]);
	.d2line		766
.Llo30:
	rlwinm		r0,r0,0,16,31		# IpduId=r0 IpduId=r0
	lis		r3,Com_Main@ha
	lwz		r3,Com_Main@l(r3)
	lwz		r31,32(r3)		# TxIpduRef=r31
.Llo68:
	rlwinm		r3,r0,6,0,25		# IpduId=r0
	se_slwi		r0,2		# IpduId=r0 IpduId=r0
	subf		r0,r0,r3		# IpduId=r0 IpduId=r0
	se_add		r0,r31		# IpduId=r0 IpduId=r0 TxIpduRef=r31
.Llo31:
	mr		r31,r0		# TxIpduRef=r31 TxIpduRef=r0
# 
#         /*check if ipdu is not a gap*/
#         if ((TxIpduRef->IpduFlags & COM_TXIPDU_IS_IPDU) != 0)
	.d2line		769
.Llo69:
	lhz		r0,56(r31)		# IpduId=r0 TxIpduRef=r31
.Llo32:
	se_btsti		r0,20		# IpduId=r0
	bc		1,2,.L230	# eq
	.section	.text_vle
.L383:
#         {
#             VAR(uint16,AUTOMATIC) TxIPduIndex;
#             VAR(uint16, AUTOMATIC) LengthIndex;
# 
#             /* REQ: [COM217] initialize with ComTxIPduUnusedAreasDefault */
#             for (LengthIndex = (uint16)0; LengthIndex < TxIpduRef->InitializeLength;
	.d2line		775
.Llo33:
	diab.li		r3,0		# LengthIndex=r3
.L243:
.Llo77:
	rlwinm		r5,r3,0,16,31		# LengthIndex=r3
	lhz		r0,50(r31)		# IpduId=r0 TxIpduRef=r31
.Llo34:
	se_cmp		r5,r0		# IpduId=r0
	bc		0,0,.L245	# ge
#                     LengthIndex++)
#             {
#                 /* Initialize ipdu with unused value*/
#                 TxIpduRef->Pdu.SduDataPtr[LengthIndex] = TxIpduRef->UnusedValue;
	.d2line		779
.Llo35:
	lbz		r0,58(r31)		# IpduId=r0 TxIpduRef=r31
.Llo36:
	lwz		r4,28(r31)		# Transmit=r4 TxIpduRef=r31
.Llo60:
	rlwinm		r5,r3,0,16,31		# LengthIndex=r3
	stbx		r0,r4,r5		# Transmit=r4 IpduId=r0
#             }
	.d2line		780
	diab.addi		r5,r3,1		# LengthIndex=r3
	se_addi		r3,1		# LengthIndex=r3 LengthIndex=r3
	b		.L243
.L245:
# 
#             for (TxIPduIndex = (uint16)0; TxIPduIndex < TxIpduRef->NumberOfSignals; TxIPduIndex++)
	.d2line		782
.Llo37:
	diab.li		r29,0		# TxIPduIndex=r29
.L246:
.Llo74:
	rlwinm		r4,r29,0,16,31		# Transmit=r4 TxIPduIndex=r29
.Llo61:
	lhz		r0,40(r31)		# IpduId=r0 TxIpduRef=r31
.Llo38:
	se_cmp		r4,r0		# Transmit=r4 IpduId=r0
	bc		0,0,.L230	# ge
#             {
#                 SignalId = Com_Main->IpduToSignal_Ref[((TxIpduRef->Signals_Index)
	.d2line		784
.Llo39:
	lis		r3,Com_Main@ha		# LengthIndex=r3
.Llo78:
	lwz		r3,Com_Main@l(r3)		# LengthIndex=r3 LengthIndex=r3
	lwz		r3,40(r3)		# LengthIndex=r3 LengthIndex=r3
	lhz		r0,38(r31)		# IpduId=r0 TxIpduRef=r31
.Llo40:
	rlwinm		r4,r29,0,16,31		# Transmit=r4 TxIPduIndex=r29
.Llo62:
	se_add		r0,r4		# IpduId=r0 IpduId=r0 Transmit=r4
	se_slwi		r0,1		# IpduId=r0 IpduId=r0
.Llo41:
	lhzx		r30,r3,r0		# SignalId=r30 LengthIndex=r3
.Llo72:
	mr		r30,r30		# SignalId=r30 SignalId=r30
#                         + TxIPduIndex)];
# 
#                 if(SignalPB_Ref[SignalId].NotifyLength == 1)
	.d2line		787
	rlwinm		r0,r30,0,16,31		# IpduId=r0 SignalId=r30
.Llo42:
	rlwinm		r3,r0,6,0,25		# LengthIndex=r3 IpduId=r0
	se_slwi		r0,3		# IpduId=r0 IpduId=r0
	subf		r0,r0,r3		# IpduId=r0 IpduId=r0 LengthIndex=r3
	add		r3,r0,r26		# LengthIndex=r3 IpduId=r0 SignalPB_Ref=r26
	lbz		r0,32(r3)		# IpduId=r0 LengthIndex=r3
	se_cmpi		r0,1		# IpduId=r0
	bc		0,2,.L249	# ne
#                 {
#                     /* Initialize normal signals in FG buffer */
#                     InitializeSignal(&SignalPB_Ref[SignalId], SignalPB_Ref[SignalId].ForeGroundBuffer_Ref);
	.d2line		790
.Llo43:
	rlwinm		r30,r30,0,16,31		# SignalId=r30 SignalId=r30
	rlwinm		r0,r30,3,0,28		# IpduId=r0 SignalId=r30
.Llo44:
	se_slwi		r30,6		# SignalId=r30 SignalId=r30
	subf		r3,r0,r30		# LengthIndex=r3 IpduId=r0 SignalId=r30
.Llo79:
	lwzux		r4,r3,r26		# Transmit=r4 LengthIndex=r3
	subf		r3,r0,r30		# LengthIndex=r3 IpduId=r0 SignalId=r30
	se_add		r3,r26		# LengthIndex=r3 LengthIndex=r3 SignalPB_Ref=r26
.Llo80:
	bl		InitializeSignal
.Llo45:
	b		.L250
.L249:
	.section	.text_vle
.L391:
#                 }
#                 else
#                 {
#                     /* Initialize group signals in FG buffer and in shadow buffer */
#                     VAR(uint8,AUTOMATIC) GroupIndex;
#                     for(GroupIndex = (uint8)0; GroupIndex < SignalPB_Ref[SignalId].NotifyLength; GroupIndex++)
	.d2line		796
	diab.li		r28,0		# GroupIndex=r28
.L251:
.Llo87:
	rlwinm		r3,r30,0,16,31		# LengthIndex=r3 SignalId=r30
.Llo81:
	rlwinm		r0,r28,0,24,31		# IpduId=r0 GroupIndex=r28
.Llo46:
	rlwinm		r4,r3,6,0,25		# Transmit=r4 LengthIndex=r3
.Llo63:
	se_slwi		r3,3		# LengthIndex=r3 LengthIndex=r3
	subf		r3,r3,r4		# LengthIndex=r3 LengthIndex=r3 Transmit=r4
	se_add		r3,r26		# LengthIndex=r3 LengthIndex=r3 SignalPB_Ref=r26
	lbz		r3,32(r3)		# LengthIndex=r3 LengthIndex=r3
	se_cmp		r0,r3		# IpduId=r0 LengthIndex=r3
	bc		0,0,.L250	# ge
	.section	.text_vle
.L397:
#                     {
#                         CONST(Com_SignalIdType, AUTOMATIC) GroupSignalId =
	.d2line		798
.Llo47:
	rlwinm		r0,r30,0,16,31		# IpduId=r0 SignalId=r30
.Llo48:
	lis		r3,Com_Main@ha		# LengthIndex=r3
.Llo82:
	lwz		r3,Com_Main@l(r3)		# LengthIndex=r3 LengthIndex=r3
	lwz		r3,40(r3)		# LengthIndex=r3 LengthIndex=r3
	rlwinm		r4,r0,6,0,25		# Transmit=r4 IpduId=r0
.Llo64:
	se_slwi		r0,3		# IpduId=r0 IpduId=r0
	subf		r0,r0,r4		# IpduId=r0 IpduId=r0 Transmit=r4
	add		r4,r0,r26		# Transmit=r4 IpduId=r0 SignalPB_Ref=r26
	lhz		r4,22(r4)		# Transmit=r4 Transmit=r4
	rlwinm		r0,r28,0,24,31		# IpduId=r0 GroupIndex=r28
	se_add		r4,r0		# Transmit=r4 Transmit=r4 IpduId=r0
	rlwinm		r0,r4,1,0,30		# IpduId=r0 Transmit=r4
.Llo49:
	lhzx		r27,r3,r0		# GroupSignalId=r27 LengthIndex=r3
.Llo88:
	mr		r27,r27		# GroupSignalId=r27 GroupSignalId=r27
#                                 Com_Main->IpduToSignal_Ref[SignalPB_Ref[SignalId].InvalidIndex + (uint16)GroupIndex];
# 
#                         /* Initialize group signal in FG buffer */
#                         InitializeSignal(&SignalPB_Ref[GroupSignalId],  SignalPB_Ref[GroupSignalId].ForeGroundBuffer_Ref);
	.d2line		802
	rlwinm		r0,r27,0,16,31		# IpduId=r0 GroupSignalId=r27
.Llo50:
	rlwinm		r5,r0,3,0,28		# IpduId=r0
	se_slwi		r0,6		# IpduId=r0 IpduId=r0
	subf		r3,r5,r0		# LengthIndex=r3 IpduId=r0
	lwzux		r4,r3,r26		# Transmit=r4 LengthIndex=r3
.Llo65:
	subf		r3,r5,r0		# LengthIndex=r3 IpduId=r0
	se_add		r3,r26		# LengthIndex=r3 LengthIndex=r3 SignalPB_Ref=r26
.Llo83:
	bl		InitializeSignal
# 
# #if COM_AR_VERSION != 403
#                         /* Initialize group signal in shadow buffer if the signalgroup is not Array accessed */
#                         if((SignalPB_Ref[SignalId].ComXf_Signal.Flags & COM_SIGNAL_SIGNALGROUP_ARRAYACCESS) == 0)
	.d2line		806
.Llo51:
	rlwinm		r0,r30,0,16,31		# IpduId=r0 SignalId=r30
.Llo52:
	rlwinm		r3,r0,6,0,25		# LengthIndex=r3 IpduId=r0
.Llo84:
	se_slwi		r0,3		# IpduId=r0 IpduId=r0
	subf		r0,r0,r3		# IpduId=r0 IpduId=r0 LengthIndex=r3
	add		r3,r0,r26		# LengthIndex=r3 IpduId=r0 SignalPB_Ref=r26
	lhz		r0,42(r3)		# IpduId=r0 LengthIndex=r3
	rlwinm		r0,r0,19,29,31		# IpduId=r0 IpduId=r0
	se_btsti		r0,31		# IpduId=r0
	bc		0,2,.L254	# ne
# #endif
#                         {
#                             Com_CopyInitValue(GroupSignalId, SignalPB_Ref[GroupSignalId].ShadowBuffer_Ref);
	.d2line		809
.Llo53:
	rlwinm		r27,r27,0,16,31		# GroupSignalId=r27 GroupSignalId=r27
	rlwinm		r3,r27,6,0,25		# LengthIndex=r3 GroupSignalId=r27
.Llo85:
	rlwinm		r0,r27,3,0,28		# IpduId=r0 GroupSignalId=r27
.Llo54:
	subf		r0,r0,r3		# IpduId=r0 IpduId=r0 LengthIndex=r3
	add		r3,r0,r26		# LengthIndex=r3 IpduId=r0 SignalPB_Ref=r26
	lwz		r4,8(r3)		# Transmit=r4 LengthIndex=r3
	mr		r3,r27		# GroupSignalId=r3
.Llo86:
	bl		Com_CopyInitValue
.L254:
	.section	.text_vle
.L398:
#                         }
#                     }
	.d2line		811
.Llo55:
	diab.addi		r0,r28,1		# IpduId=r0 GroupIndex=r28
	se_addi		r28,1		# GroupIndex=r28 GroupIndex=r28
	b		.L251
	.section	.text_vle
.L392:
.L250:
#                 }
#             }
	.d2line		813
	diab.addi		r4,r29,1		# Transmit=r4 TxIPduIndex=r29
	se_addi		r29,1		# TxIPduIndex=r29 TxIPduIndex=r29
	b		.L246
	.section	.text_vle
.L384:
.L230:
#         }
#     }
# }
	.d2line		816
	.d2epilogue_begin
.Llo67:
	lmw		r26,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)		# IpduId=r0
	mtspr		lr,r0		# IpduId=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L337:
	.type		Com_InitializeIpdu,@function
	.size		Com_InitializeIpdu,.-Com_InitializeIpdu
# Number of nodes = 348

# Allocations for Com_InitializeIpdu
#	?a4		IpduId
#	?a5		Transmit
#	?a6		$$62
#	?a7		$$61
#	?a8		$$60
#	?a9		$$59
#	?a10		$$58
#	?a11		$$57
#	?a12		$$56
#	?a13		$$55
#	?a14		$$54
#	?a15		$$53
#	?a16		$$52
#	?a17		$$51
#	?a18		$$50
#	?a19		$$49
#	?a20		$$48
#	?a21		$$47
#	?a22		$$46
#	?a23		SignalPB_Ref
#	?a24		TxIpduRef
#	?a25		RxIpduRef
#	?a26		SignalId
#	?a27		RxIPduIndex
#	?a28		GroupSignalIndex
#	?a29		GroupSignalId
#	?a30		TxIPduIndex
#	?a31		LengthIndex
#	?a32		GroupIndex
#	?a33		GroupSignalId
# FUNC(void, COM_CODE) Com_ClearIpduUpdateBits(
	.align		2
	.section	.text_vle
        .d2line         902,22
#$$ld
.L405:

#$$bf	Com_ClearIpduUpdateBits,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,lr
	.globl		Com_ClearIpduUpdateBits
	.d2_cfa_start __cie
Com_ClearIpduUpdateBits:
.Llo89:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# TxIpduRef=r3 TxIpduRef=r3
	.d2prologue_end
#         CONSTP2CONST(Com_TxIpdu, AUTOMATIC, COM_CONST_PB) TxIpduRef)
# {
#     VAR(uint16, AUTOMATIC) Index;
#     P2CONST(uint16, AUTOMATIC, COM_CONST_PB) SignalIdPtr = TxIpduRef->SignalsWithUpdateBit_Ref;
	.d2line		906
	lwz		r6,44(r3)		# TxIpduRef=r3
.Llo92:
	mr		r6,r6		# SignalIdPtr=r6 SignalIdPtr=r6
#     CONSTP2CONST(Com_SignalsPB, AUTOMATIC, COM_CONST_PB) SignalPtr = Com_Main->Signals_Ref;
	.d2line		907
	lis		r4,Com_Main@ha
	lwz		r4,Com_Main@l(r4)
	lwz		r0,36(r4)
.Llo93:
	mr		r0,r0		# SignalPtr=r0 SignalPtr=r0
# 
#     for (Index = (uint16)0; Index < (TxIpduRef->NumberOfSignalsWithUpdateBit); Index++)
	.d2line		909
	diab.li		r5,0		# Index=r5
.L281:
.Llo91:
	rlwinm		r4,r5,0,16,31		# Index=r5
	lhz		r7,48(r3)		# TxIpduRef=r3
	se_cmp		r4,r7
	bc		0,0,.L280	# ge
#     {
#         *(SignalPtr[*SignalIdPtr].UpdateBit_Ref) &= (uint8)~(SignalPtr[*SignalIdPtr].UpdateBitMask);
	.d2line		911
	lhz		r4,0(r6)		# SignalIdPtr=r6
	rlwinm		r7,r4,6,0,25
	se_slwi		r4,3
	subf		r4,r4,r7
	add		r7,r4,r0		# SignalPtr=r0
	lwz		r4,12(r7)
	lbz		r31,0(r4)
	lbz		r7,31(r7)
	andc		r31,r31,r7
	stb		r31,0(r4)
#         /* PRQA S 0489 1 */ /* Incrementing pointer is simpler than array indexing. */
#         SignalIdPtr++;
	.d2line		913
	se_addi		r6,2		# SignalIdPtr=r6 SignalIdPtr=r6
#     }
	.d2line		914
	diab.addi		r4,r5,1		# Index=r5
	se_addi		r5,1		# Index=r5 Index=r5
	b		.L281
.L280:
# }
	.d2line		915
	.d2epilogue_begin
.Llo90:
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
.L406:
	.type		Com_ClearIpduUpdateBits,@function
	.size		Com_ClearIpduUpdateBits,.-Com_ClearIpduUpdateBits
# Number of nodes = 51

# Allocations for Com_ClearIpduUpdateBits
#	?a4		TxIpduRef
#	?a5		$$64
#	?a6		$$63
#	?a7		$$45
#	?a8		Index
#	?a9		SignalIdPtr
#	?a10		SignalPtr
# static FUNC(void, COM_CODE) Com_TxIpduControl(
	.align		1
	.section	.text_vle
        .d2line         339,29
#$$ld
.L421:

#$$bf	Com_TxIpduControl,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Com_TxIpduControl:
.Llo94:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# IpduId=r31 IpduId=r3
	mr		r4,r4		# SuperStatus=r4 SuperStatus=r4
	mr		r30,r5		# initialize=r30 initialize=r5
	.d2prologue_end
#         CONST (PduIdType, AUTOMATIC) IpduId,
#         CONST (boolean, AUTOMATIC) SuperStatus,
#         CONST (boolean, AUTOMATIC) initialize)
# {
#     VAR(uint8, AUTOMATIC) ActiveTM;
# #if COM_ENABLE_TMS == STD_ON
#     P2CONST(Com_SignalsPB,AUTOMATIC,COM_CONST_PB) SignalPointer;
#     VAR(uint16,AUTOMATIC) Index;
# #endif /* COM_ENABLE_TMS */
# #if COM_ENABLE_IPDU_COUNTER == STD_ON
#     VAR(Com_SignalIdType, AUTOMATIC) SigIndex;
#     VAR(uint16, AUTOMATIC) LoopIndex;
# #endif /* COM_ENABLE_TMS */
# 
#     P2CONST(Com_TxIpdu,AUTOMATIC,COM_CONST_PB) Ipdu;
#     Ipdu = &( Com_Main->TxIpdus_Ref[IpduId] );
	.d2line		355
	rlwinm		r0,r31,0,16,31		# IpduId=r31
	lis		r3,Com_Main@ha
.Llo95:
	lwz		r3,Com_Main@l(r3)
	lwz		r29,32(r3)
	rlwinm		r3,r0,6,0,25
	se_slwi		r0,2
	subf		r0,r0,r3
	se_add		r0,r29
.Llo116:
	mr		r29,r0		# Ipdu=r29 Ipdu=r0
# 
#     /* if requested "superposition" status is activated and current IPDU
#      status is de-activated, then perform actions to start IPDU */
#     if( ( TRUE == SuperStatus ) && (*Ipdu->IsIPduGroupEnabled_Ref == FALSE) )
	.d2line		359
	rlwinm		r0,r4,0,24,31		# SuperStatus=r4
.Llo117:
	se_cmpi		r0,1
	bc		0,2,.L209	# ne
.Llo96:
	lwz		r3,4(r29)		# Ipdu=r29
.Llo106:
	lbz		r0,0(r3)
	se_cmpi		r0,0
	bc		0,2,.L209	# ne
#     {
#         SchM_Enter_Com_COM_MAIN_TXIPDU();
	.d2line		361
.Llo100:
	bl		SchM_Enter_Com_COM_MAIN_TXIPDU
#         /* perform actions to start an IPDU */
#         if((TRUE == initialize))
	.d2line		363
.Llo107:
	rlwinm		r30,r30,0,24,31		# initialize=r30 initialize=r30
	se_cmpi		r30,1		# initialize=r30
	bc		0,2,.L210	# ne
#         {
#             /* Clear IPDU pending-for-transmission bit */
#             *Ipdu->IsTxPending_Ref = FALSE;
	.d2line		366
.Llo108:
	diab.li		r30,0		# initialize=r30
.Llo109:
	lwz		r3,8(r29)		# Ipdu=r3 Ipdu=r29
	stb		r30,0(r3)		# Ipdu=r3 initialize=r30
# 
# #if COM_ENABLE_RETRY_FAILED_TRANSMIT == STD_ON
#             /* Clear Retry-transmission flag */
#             *Ipdu->IsTransmissionFailed_Ref = FALSE;
	.d2line		370
	lwz		r3,24(r29)		# Ipdu=r3 Ipdu=r29
	stb		r30,0(r3)		# Ipdu=r3 initialize=r30
# #endif /* COM_ENABLE_RETRY_FAILED_TRANSMIT */
# #if COM_ENABLE_TMS == STD_ON
#             /* get the currently active tx mode */
#             ActiveTM = (*Ipdu->CurrentTxMode_Ref != FALSE)? COM_TXMODETRUE_INDEX: COM_TXMODEFALSE_INDEX;
# #else
#             ActiveTM = COM_TXMODETRUE_INDEX;
# #endif /* COM_ENABLE_TMS */
# 
#             /* initialize Ipdu buffer with its signals initial values  */
#             Com_InitializeIpdu(IpduId, TRUE);
	.d2line		380
	mr		r3,r31		# IpduId=r3 IpduId=r31
	diab.li		r4,1		# SuperStatus=r4
	bl		Com_InitializeIpdu
# 
#             /* check if the active txmode is valid */
#             if( Ipdu->TxMode[ActiveTM] != COM_INVALID_TM_INDEX )
	.d2line		383
	mr		r3,r29		# Ipdu=r3 Ipdu=r29
	lhz		r0,52(r3)		# Ipdu=r3
	cmpli		0,0,r0,65535
	bc		1,2,.L210	# eq
#             {
# #if COM_ENABLE_NTIMES_TM == STD_ON
#                 /* check if transmission mode is Ntimes */
#                 if( Com_Main->TxModes_Ref[Ipdu->TxMode[ActiveTM]].NtimesRepetitions != (uint8)0 )
#                 {
#                     /* reset Ntimes timers */
#                     Com_Main->NtimesTimers_Ref[Ipdu->NtimesRepetitions_Index] = (uint16)0;
#                 }
# #endif /* COM_ENABLE_NTIMES_TM  */
#                 /* check if Active TM for this IPDU has periodic
#                  counter */
#                 if( Com_Main->TxModes_Ref[Ipdu->TxMode[ActiveTM]].Period != (Com_Timer)0 )
	.d2line		395
.Llo97:
	lis		r3,Com_Main@ha		# Ipdu=r3
	lwz		r3,Com_Main@l(r3)		# Ipdu=r3 Ipdu=r3
	lwz		r4,48(r3)		# SuperStatus=r4 Ipdu=r3
.Llo101:
	rlwinm		r3,r30,1,23,30		# Ipdu=r3 ActiveTM=r30
	se_add		r3,r29		# Ipdu=r3 Ipdu=r3 Ipdu=r29
	lhz		r0,52(r3)		# Ipdu=r3
	rlwinm		r0,r0,2,14,29
	lhzx		r0,r4,r0		# SuperStatus=r4
	se_cmpi		r0,0
	bc		1,2,.L210	# eq
#                 {
#                     /* initialize Cycle counter */
#                     Com_Main->CycleTimers_Ref[Ipdu->TxMode[ActiveTM]] =
	.d2line		398
.Llo102:
	lis		r3,Com_Main@ha		# Ipdu=r3
	lwz		r4,Com_Main@l(r3)		# SuperStatus=r4 Ipdu=r3
.Llo103:
	lwz		r0,48(r4)		# SuperStatus=r4
.Llo110:
	rlwinm		r30,r30,1,23,30		# ActiveTM=r30 ActiveTM=r30
.Llo111:
	se_add		r30,r29		# ActiveTM=r30 ActiveTM=r30 Ipdu=r29
	lhz		r4,52(r30)		# SuperStatus=r4 ActiveTM=r30
	rlwinm		r4,r4,2,14,29		# SuperStatus=r4 SuperStatus=r4
	se_add		r4,r0		# SuperStatus=r4 SuperStatus=r4
	lhz		r0,2(r4)		# SuperStatus=r4
	lwz		r3,Com_Main@l(r3)		# Ipdu=r3 Ipdu=r3
	lwz		r3,52(r3)		# Ipdu=r3 Ipdu=r3
	lhz		r4,52(r30)		# SuperStatus=r4 ActiveTM=r30
	rlwinm		r4,r4,1,15,30		# SuperStatus=r4 SuperStatus=r4
.Llo104:
	sthx		r0,r3,r4		# Ipdu=r3
.L210:
#                             Com_Main->TxModes_Ref[Ipdu->TxMode[ActiveTM]].Offset;
#                 }
#             }
#         }
# 
# #if COM_ENABLE_IPDU_COUNTER == STD_ON
#         for(LoopIndex = (uint16)0; LoopIndex < Ipdu->NumberOfSignals; LoopIndex++)
#         {
#             SigIndex = Com_Main->IpduToSignal_Ref[( ( Ipdu->Signals_Index ) + LoopIndex )];
#             /* Init DSC Counter in TxIpdu with 0 */
#             if( ( ( Ipdu->IpduFlags & COM_IPDU_DSCCOUNTER_TRUE ) != 0 )
#                     && ( ( Com_Main->Signals_Ref[SigIndex].ComXf_Signal.Flags & COM_SIGNAL_DSCCOUNTER ) != 0 ) )
#             {
#                 uint8 CounterInit = (uint8)0x00U;
#                 Com_PackSignal(SigIndex, &CounterInit
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#                                ,
#                                0
# #endif
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                                ,NULL_PTR
# #endif
#                                );
#             }
#         }
# #endif /* COM_ENABLE_IPDU_COUNTER */
# 
#         /* clear update bits */
#         Com_ClearIpduUpdateBits(Ipdu);
	.d2line		427
.Llo98:
	mr		r3,r29		# Ipdu=r3 Ipdu=r29
	bl		Com_ClearIpduUpdateBits
# 
# #if COM_ENABLE_MDT == STD_ON
#         /* check if MDT is configured */
#         if( ( 0 != ( Ipdu->MDT ) )
#                 && ( ( ( 0U != ( Ipdu->IpduFlags & COM_TXIPDU_DIRECT_TM_FALSE ) ) )
#                         || ( ( 0U != ( Ipdu->IpduFlags & COM_TXIPDU_DIRECT_TM_TRUE ) ) ) ) )
#         {
#             Com_Main->MdtTimers_Ref[Ipdu->MDT_Index] = (uint16)0;
#         }
# #endif /* COM_ENABLE_MDT */
# #if COM_ENABLE_TMS == STD_ON
#         /* loop through all signals inside this IPDU */
#         for(Index = (uint16)0; Index < Ipdu->NumberOfSignals; Index++)
#         {
#             SignalPointer =
#             &(Com_Main->Signals_Ref[(Com_Main->IpduToSignal_Ref[((Ipdu->Signals_Index)
#                                     + Index)])]);
# 
#             /*check signal has filter and filter type is  */
#             if((0U != (SignalPointer->SignalFlagsLT & COM_F_HAS_FILTER))
#                     &&(COM_F_ONE_EVERY_N ==
#                             (uint8)(SignalPointer->SignalFlagsLT & COM_F_FILTER_TYPE)))
#             {
#                 /* set occurence to zero */
#                 Com_Main->EveryNFilters[(Com_Main->FiltersOneEveryNLT[
#                         SignalPointer->Filter_Index]).CounterIndex]=0;
#             }
#         }
# #endif /* COM_ENABLE_TMS */
# #if COM_ENABLE_TX_DM == STD_ON
#         /* Start Tx Deadline Monitoring configured for an I-PDU with transmission mode NONE ONLY */
#         /* Note: transmission mode "none" is identified by an invalid index to
#          TM array plus a cleared "Direct" IPDU bit */
#         if((Ipdu->DmTimeOut != (Com_Timer)0)
#                 && ((Ipdu->TxMode[0] == COM_INVALID_TM_INDEX) && ((uint8)(Ipdu->IpduFlags & COM_TXIPDU_DIRECT_TM_TRUE) == (uint8)0))
# #if COM_ENABLE_TMS == STD_ON
#                 && ((Ipdu->TxMode[1] == COM_INVALID_TM_INDEX) && ((uint8)(Ipdu->IpduFlags & COM_TXIPDU_DIRECT_TM_FALSE) == (uint8)0))
# #endif /* COM_ENABLE_TMS == STD_ON */
#         )
# 
#         {
#             *(Ipdu->DmTimer_Ref) = (Com_Timer)(Ipdu->DmTimeOut + (uint16)1);
#         }
#         else if((Ipdu->DmTimeOut != (uint16)0) && (*(Ipdu->DmTimer_Ref) != (uint16)0))
#         {
#             *(Ipdu->DmTimer_Ref) = Ipdu->DmTimeOut;
#         }
#         else
#         {
#             /* Do Nothing */
#         }
# #endif
#         /* mark ipdu as started*/
#         *Ipdu->IsIPduGroupEnabled_Ref = TRUE;
	.d2line		481
	diab.li		r0,1
	lwz		r3,4(r29)		# Ipdu=r3 Ipdu=r29
	stb		r0,0(r3)		# Ipdu=r3
# 
#         SchM_Exit_Com_COM_MAIN_TXIPDU();
	.d2line		483
	bl		SchM_Exit_Com_COM_MAIN_TXIPDU
	b		.L208
.L209:
#     }
#     /* else if requested "superposition" status is de-activated and current
#      IPDU status is activated, then perform actions to stop IPDU */
#     else if( ( FALSE == SuperStatus ) && (*Ipdu->IsIPduGroupEnabled_Ref != FALSE) )
	.d2line		487
.Llo105:
	rlwinm		r4,r4,0,24,31		# SuperStatus=r4 SuperStatus=r4
	se_cmpi		r4,0		# SuperStatus=r4
	bc		0,2,.L208	# ne
.Llo99:
	lwz		r3,4(r29)		# Ipdu=r29
.Llo112:
	lbz		r0,0(r3)
	se_cmpi		r0,0
	bc		1,2,.L208	# eq
#     {
#         /* perform IPDU stop actions */
#         /* REQ: [COM479] */
# #if COM_ENABLE_TX_ERROR_NOTIFICATION == STD_ON
#         if ( *Ipdu->IsConfirmationPending_Ref != FALSE)
#         {
#             /* notify signals for transmission error */
#             Com_NotifySignals(Ipdu->Signals_Index,
#                     Ipdu->NumberOfSignals,
#                     COM_NOTIFY_TX_ERROR);
#         }
# #endif /* COM_ENABLE_TX_ERROR_NOTIFICATION */
#         SchM_Enter_Com_COM_MAIN_TXIPDU();
	.d2line		500
	bl		SchM_Enter_Com_COM_MAIN_TXIPDU
#         /* clear IPDU's deferred confirmation and pending confirmation flags */
#         *Ipdu->IsConfirmationPending_Ref = FALSE;
	.d2line		502
.Llo113:
	diab.li		r0,0
	lwz		r3,12(r29)		# Ipdu=r29
	stb		r0,0(r3)
#         *Ipdu->IsConfirmationDeferred_Ref = FALSE;
	.d2line		503
	lwz		r3,16(r29)		# Ipdu=r29
	stb		r0,0(r3)
# 
#         /* mark the Ipdu as stopped */
#         *Ipdu->IsIPduGroupEnabled_Ref = FALSE;
	.d2line		506
	lwz		r3,4(r29)		# Ipdu=r29
	stb		r0,0(r3)
# 
# #if COM_ENABLE_LARGE_DATA_TYPES == STD_ON
#         /*check ipdu type(normal or TP)*/
#         if( 0 != ( Ipdu->IpduFlags & COM_TXIPDU_TP ) )
#         {
#             /*for Tp ipdu and unlock Buffer*/
#             *Ipdu->IsTpBufferLocked_Ref = FALSE;
#         }
# #endif /* COM_ENABLE_LARGE_DATA_TYPES */
#         SchM_Exit_Com_COM_MAIN_TXIPDU();
	.d2line		516
	bl		SchM_Exit_Com_COM_MAIN_TXIPDU
.L208:
#     }
#     else
#     {
#         /* Do nothing */
#     }
# }
	.d2line		522
	.d2epilogue_begin
.Llo114:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo115:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L422:
	.type		Com_TxIpduControl,@function
	.size		Com_TxIpduControl,.-Com_TxIpduControl
# Number of nodes = 177

# Allocations for Com_TxIpduControl
#	?a4		IpduId
#	?a5		SuperStatus
#	?a6		initialize
#	?a7		$$65
#	?a8		ActiveTM
#	?a9		Ipdu
# static FUNC(void, COM_CODE) Com_RxIpduControl(
	.align		1
	.section	.text_vle
        .d2line         539,29
#$$ld
.L433:

#$$bf	Com_RxIpduControl,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Com_RxIpduControl:
.Llo118:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# IpduId=r31 IpduId=r3
.Llo119:
	mr		r4,r4		# SuperStatus=r4 SuperStatus=r4
.Llo120:
	mr		r5,r5		# initialize=r5 initialize=r5
	.d2prologue_end
#         CONST (PduIdType, AUTOMATIC) IpduId,
#         CONST (boolean, AUTOMATIC) SuperStatus,
#         CONST (boolean, AUTOMATIC) initialize)
# {
# #if COM_ENABLE_FILTERS == STD_ON
#     VAR(uint16,AUTOMATIC) Index;
# #endif /* COM_ENABLE_FILTERS */
#     P2CONST(Com_RxIpdu,AUTOMATIC,COM_CONST_PB) Ipdu;
# #if COM_ENABLE_RX_DM == STD_ON
#     VAR(uint8, AUTOMATIC) RxDmIndex;
# #endif /* COM_ENABLE_RX_DM */
# #if ( (COM_ENABLE_FILTERS == STD_ON) || (COM_ENABLE_SIGNAL_GATEWAY == STD_ON) )
#     VAR(Com_SignalIdType, AUTOMATIC) SignalIndex;
# #endif
#     /* variable to cache Ipdu ram flags */
#     P2VAR(uint8,AUTOMATIC,COM_VAR_PB) RxIpduRamFlag;
# 
#     /* cache Ipdu information */
#     Ipdu = &(Com_Main->RxIpdus_Ref[IpduId]);
	.d2line		558
	lis		r3,Com_Main@ha
	lwz		r6,Com_Main@l(r3)
	lwz		r30,16(r6)
	rlwinm		r29,r31,0,16,31		# IpduId=r31
	e_mulli		r0,r29,40
	se_add		r0,r30
.Llo128:
	mr		r30,r0		# Ipdu=r30 Ipdu=r0
#     /* cache Ipdu ram flags  */
#     RxIpduRamFlag = & Com_Main->RxIpdusFlags[IpduId];
	.d2line		560
	lwz		r3,Com_Main@l(r3)
	lwz		r0,68(r3)
.Llo129:
	se_add		r0,r29
.Llo131:
	mr		r29,r0		# RxIpduRamFlag=r29 RxIpduRamFlag=r0
# 
#     /* if requested "superposition" status is activated and current IPDU
#      status is de-activated, then perform actions to start IPDU */
#     if((TRUE == SuperStatus) &&
	.d2line		564
	rlwinm		r0,r4,0,24,31		# SuperStatus=r4
.Llo132:
	se_cmpi		r0,1
	bc		0,2,.L220	# ne
.Llo130:
	lbz		r0,0(r29)		# RxIpduRamFlag=r29
	se_btsti		r0,24
	bc		0,2,.L220	# ne
#             ((uint8)(*RxIpduRamFlag & COM_RXIPDU_ACTIVE) == (uint8)0))
#     {
#         /* perform actions to start an IPDU */
#         if((TRUE == initialize) ||
	.d2line		568
	rlwinm		r5,r5,0,24,31		# initialize=r5 initialize=r5
	se_cmpi		r5,1		# initialize=r5
	bc		1,2,.L225	# eq
.Llo126:
	lbz		r0,0(r29)		# RxIpduRamFlag=r29
	se_btsti		r0,28
	bc		1,2,.L221	# eq
.L225:
#                 ((*RxIpduRamFlag & COM_RXIPDU_FIRST_TIME) != 0))
#         {
#             SchM_Enter_Com_COM_MAIN_DEFERRED_BACKGROUND();
	.d2line		571
	bl		SchM_Enter_Com_COM_MAIN_DEFERRED_BACKGROUND
#             SchM_Enter_Com_COM_MAIN_DEFERRED_FOREGROUND();
	.d2line		572
	bl		SchM_Enter_Com_COM_MAIN_DEFERRED_FOREGROUND
#             /* initialize Rx IPDU */
#             Com_InitializeIpdu(IpduId,FALSE);
	.d2line		574
	mr		r3,r31		# IpduId=r3 IpduId=r31
	diab.li		r4,0		# SuperStatus=r4
	bl		Com_InitializeIpdu
# 
#             /* Copy updated length of the IPdu to ForegroundBuffer */
#             COM_COPY_INTERNAL(Ipdu->ForeGroundBuffer_Ref,Ipdu->BackGroundBuffer_Ref,(uint32)Ipdu->IpduLength);
	.d2line		577
	lhz		r5,32(r30)		# initialize=r5 Ipdu=r30
	lwz		r3,12(r30)		# IpduId=r3 Ipdu=r30
	lwz		r4,16(r30)		# SuperStatus=r4 Ipdu=r30
	bl		vstar_copy
# 
#             /*Initialize deferred length */
#             Com_Main->DeferredLength_Ref[IpduId] = 0;
	.d2line		580
	diab.li		r0,0
	lis		r3,Com_Main@ha		# IpduId=r3
	lwz		r3,Com_Main@l(r3)		# IpduId=r3 IpduId=r3
	lwz		r3,56(r3)		# IpduId=r3 IpduId=r3
	rlwinm		r31,r31,1,15,30		# IpduId=r31 IpduId=r31
.Llo121:
	sthx		r0,r3,r31		# IpduId=r3
# 
#             SchM_Exit_Com_COM_MAIN_DEFERRED_FOREGROUND();
	.d2line		582
.Llo122:
	bl		SchM_Exit_Com_COM_MAIN_DEFERRED_FOREGROUND
#             SchM_Exit_Com_COM_MAIN_DEFERRED_BACKGROUND();
	.d2line		583
.Llo123:
	bl		SchM_Exit_Com_COM_MAIN_DEFERRED_BACKGROUND
# 
# #if COM_ENABLE_IPDU_COUNTER == STD_ON
#             /* Clear DSC Running Flag */
#             *Ipdu->IsDSCRunning_Ref = FALSE;
# #endif /* COM_ENABLE_IPDU_COUNTER */
# 
#             /* clear Frist time flag (no need to check flag) */
#             *RxIpduRamFlag &= (uint8)~(COM_RXIPDU_FIRST_TIME);
	.d2line		591
	lbz		r0,0(r29)		# RxIpduRamFlag=r29
	.diab.bclri		r0,28
	stb		r0,0(r29)		# RxIpduRamFlag=r29
.L221:
#         }
# #if COM_ENABLE_RX_DM == STD_ON
#         /*REQ: [COM733]*/
#         /* initialize reception deadline monitoring with offset*/
#         for (RxDmIndex = (uint8)0; RxDmIndex < Ipdu->RxDmListLength;
#                 RxDmIndex++)
#         {
#             /* Clear previous restart request */
#             Com_Main->Com_RxDmTimeoutRestartRequest_Ref[Ipdu->RxDmList_Index + (PduIdType)RxDmIndex] = FALSE;
#             /* Set First Timeout restart request */
#             Com_Main->Com_RxDmFirstTimeoutRestartRequest_Ref[Ipdu->RxDmList_Index + (PduIdType)RxDmIndex] = TRUE;
#         }
# #endif /* COM_ENABLE_RX_DM  */
#         /* mark ipdu as started*/
#         *RxIpduRamFlag |= COM_RXIPDU_ACTIVE;
	.d2line		606
.Llo124:
	lbz		r0,0(r29)		# RxIpduRamFlag=r29
	.diab.bseti		r0,24
	stb		r0,0(r29)		# RxIpduRamFlag=r29
	b		.L219
.L220:
# #if COM_ENABLE_FILTERS == STD_ON
#         /* loop through all signals inside this IPDU */
#         for(Index = (uint16)0; Index < Ipdu->NumberOfSignals; Index++)
#         {
#             SignalIndex = Ipdu->SignalIndex_Ref[Index];
# 
#             /*check signal has filter and filter type is  */
#             if(((Com_Main->Signals_Ref[SignalIndex].SignalFlagsLT &
#                                     COM_F_HAS_FILTER) != 0) &&
#                     (COM_F_ONE_EVERY_N ==(uint8)((Com_Main->Signals_Ref[SignalIndex].SignalFlagsLT)&
#                                     COM_F_FILTER_TYPE)))
#             {
#                 /* set occurence to zero */
#                 Com_Main->EveryNFilters[(Com_Main->FiltersOneEveryNLT[(Com_Main->Signals_Ref[SignalIndex]).
#                         Filter_Index]).CounterIndex]=0;
#             }
#         }
# #endif /* COM_ENABLE_FILTERS */
#     }
#     /* else if requested "superposition" status is de-activated and current
#      IPDU status is activated, then perform actions to stop IPDU */
#     else if ((FALSE == SuperStatus) &&
	.d2line		628
.Llo127:
	rlwinm		r4,r4,0,24,31		# SuperStatus=r4 SuperStatus=r4
	se_cmpi		r4,0		# SuperStatus=r4
	bc		0,2,.L219	# ne
.Llo125:
	lbz		r0,0(r29)		# RxIpduRamFlag=r29
	se_btsti		r0,24
	bc		1,2,.L219	# eq
#             ((*RxIpduRamFlag & COM_RXIPDU_ACTIVE) != 0))
#     {
#         /* perform IPDU stop actions */
# 
# #if COM_ENABLE_SIGNAL_GATEWAY == STD_ON
#         if(Com_Main->GwPointers_Ref != NULL_PTR)
#         /* check if this node perform Gatewaying */
#         {
#             for (SignalIndex = (Com_SignalIdType)0; SignalIndex < Ipdu->NumberOfSignals;
#                     SignalIndex++)
#             {
# 
#                 /* clear flags of Gateway signals */
#                 *(Com_GwPointerArrayWrite[SignalIndex]) &= (uint8) ~(Com_Main->GwMasks_Ref[SignalIndex]);
#             }
#         }
# #endif /* COM_ENABLE_SIGNAL_GATEWAY */
#         /*  mark the Ipdu as stopped */
#         *RxIpduRamFlag &= (uint8)~(COM_RXIPDU_ACTIVE);
	.d2line		647
	lbz		r0,0(r29)		# RxIpduRamFlag=r29
	rlwinm		r0,r0,0,25,31
	stb		r0,0(r29)		# RxIpduRamFlag=r29
.L219:
#     }
#     else
#     {
#         /* Do nothing */
#     }
# }
	.d2line		653
	.d2epilogue_begin
.Llo133:
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
.L434:
	.type		Com_RxIpduControl,@function
	.size		Com_RxIpduControl,.-Com_RxIpduControl
# Number of nodes = 112

# Allocations for Com_RxIpduControl
#	?a4		IpduId
#	?a5		SuperStatus
#	?a6		initialize
#	?a7		Ipdu
#	?a8		RxIpduRamFlag
# static FUNC(void, COM_CODE) Com_ControlVector(
	.align		1
	.section	.text_vle
        .d2line         936,29
#$$ld
.L445:

#$$bf	Com_ControlVector,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Com_ControlVector:
.Llo134:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# ipduGroupVector=r31 ipduGroupVector=r3
	mr		r30,r4		# initialize=r30 initialize=r4
	mr		r28,r5		# Identify=r28 Identify=r5
	.d2prologue_end
#         VAR(Com_IpduGroupVector, AUTOMATIC) ipduGroupVector,
#         CONST(boolean, AUTOMATIC) initialize,
#         CONST(boolean, AUTOMATIC) Identify)
# /* PRQA S 3673 ++ */
# {
#     VAR(PduIdType, AUTOMATIC) Index;
#     VAR(uint16, AUTOMATIC) GroupIndex;
#     VAR(boolean, AUTOMATIC) SuperStatus;
#     P2CONST(Com_TxIpdu,AUTOMATIC,COM_CONST_PB) TxIpdu;
#     P2CONST(Com_RxIpdu,AUTOMATIC,COM_CONST_PB) RxIpdu;
# 
#     for(Index = 0; Index < Com_Main->TxIpduIdArrayLength; Index++)
	.d2line		948
	diab.li		r29,0		# Index=r29
.L287:
.Llo136:
	rlwinm		r4,r29,0,16,31		# GroupIndex=r4 Index=r29
.Llo137:
	lis		r3,Com_Main@ha		# TxIpdu=r3
.Llo135:
	lwz		r3,Com_Main@l(r3)		# TxIpdu=r3 TxIpdu=r3
	lhz		r0,86(r3)		# SuperStatus=r0 TxIpdu=r3
.Llo148:
	se_cmp		r4,r0		# GroupIndex=r4 SuperStatus=r0
	bc		0,0,.L289	# ge
#     {
#         SuperStatus = FALSE;
	.d2line		950
.Llo143:
	diab.li		r0,0		# SuperStatus=r0
#         TxIpdu = &( Com_Main->TxIpdus_Ref[Index] );
	.d2line		951
.Llo149:
	rlwinm		r4,r29,0,16,31		# GroupIndex=r4 Index=r29
.Llo144:
	lis		r3,Com_Main@ha		# TxIpdu=r3
.Llo153:
	lwz		r3,Com_Main@l(r3)		# TxIpdu=r3 TxIpdu=r3
	lwz		r3,32(r3)		# TxIpdu=r3 TxIpdu=r3
	rlwinm		r5,r4,6,0,25		# GroupIndex=r4
	se_slwi		r4,2		# GroupIndex=r4 GroupIndex=r4
	subf		r4,r4,r5		# GroupIndex=r4 GroupIndex=r4
	se_add		r3,r4		# TxIpdu=r3 TxIpdu=r3 GroupIndex=r4
	mr		r3,r3		# TxIpdu=r3 TxIpdu=r3
#         /* loop over all configured IPDU groups */
#         for(GroupIndex = (uint16)0; ( ( GroupIndex < ( TxIpdu->TxGroupListLength ) ) && ( SuperStatus == FALSE ) );
	.d2line		953
	diab.li		r4,0		# GroupIndex=r4
.L290:
	rlwinm		r5,r4,0,16,31		# GroupIndex=r4
	lhz		r6,36(r3)		# TxIpdu=r3
	se_cmp		r5,r6
	bc		0,0,.L292	# ge
	rlwinm		r5,r0,0,24,31		# SuperStatus=r0
	se_cmpi		r5,0
	bc		0,2,.L292	# ne
#                 GroupIndex++)
#         {
#             SuperStatus = (boolean)( (uint8)( ipduGroupVector[TxIpdu->TxGroupList_Ref[GroupIndex] >> 3U]
	.d2line		956
	lwz		r5,0(r3)		# TxIpdu=r3
	rlwinm		r0,r4,1,15,30		# SuperStatus=r0 GroupIndex=r4
	lhzux		r6,r5,r0
	rlwinm		r5,r6,29,19,31
	lbzux		r6,r5,r31
	lwz		r5,0(r3)		# TxIpdu=r3
	lhzx		r5,r5,r0
	srawi		r0,r5,3		# SuperStatus=r0
	addze		r0,r0		# SuperStatus=r0 SuperStatus=r0
	se_slwi		r0,3		# SuperStatus=r0 SuperStatus=r0
	subf		r0,r0,r5		# SuperStatus=r0 SuperStatus=r0
	srw		r6,r6,r0		# SuperStatus=r0
	rlwinm		r0,r6,0,31,31		# SuperStatus=r0
	mr		r0,r0		# SuperStatus=r0 SuperStatus=r0
#                     >> ( TxIpdu->TxGroupList_Ref[GroupIndex] % (PduIdType)8U ) ) & COM_GROUP_BIT_MASK );
#         }
	.d2line		958
	diab.addi		r5,r4,1		# GroupIndex=r4
	se_addi		r4,1		# GroupIndex=r4 GroupIndex=r4
	b		.L290
.L292:
# 
#         if( FALSE != Identify )
	.d2line		960
	rlwinm		r5,r28,0,24,31		# Identify=r28
	se_cmpi		r5,0
	bc		1,2,.L293	# eq
#         {
#             Com_TxIpduControl(Index, SuperStatus, initialize);
	.d2line		962
.Llo145:
	mr		r3,r29		# Index=r3 Index=r29
	mr		r5,r30		# initialize=r5 initialize=r30
	mr		r4,r0		# SuperStatus=r4 SuperStatus=r0
	bl		Com_TxIpduControl
.L293:
#         }
#     }
	.d2line		964
	diab.addi		r3,r29,1		# TxIpdu=r3 Index=r29
	se_addi		r29,1		# Index=r29 Index=r29
	b		.L287
.L289:
# 
#     for(Index = 0; Index < Com_Main->RxIpduIdArrayLength; Index++)
	.d2line		966
.Llo141:
	diab.li		r29,0		# Index=r29
.L294:
.Llo142:
	rlwinm		r0,r29,0,16,31		# SuperStatus=r0 Index=r29
.Llo150:
	lis		r3,Com_Main@ha		# TxIpdu=r3
.Llo154:
	lwz		r3,Com_Main@l(r3)		# TxIpdu=r3 TxIpdu=r3
	lhz		r3,88(r3)		# TxIpdu=r3 TxIpdu=r3
	se_cmp		r0,r3		# SuperStatus=r0 TxIpdu=r3
	bc		0,0,.L286	# ge
#     {
#         SuperStatus = FALSE;
	.d2line		968
.Llo151:
	diab.li		r6,0		# SuperStatus=r6
# 
#         RxIpdu = &( Com_Main->RxIpdus_Ref[Index] );
	.d2line		970
.Llo152:
	lis		r3,Com_Main@ha		# TxIpdu=r3
.Llo155:
	lwz		r3,Com_Main@l(r3)		# TxIpdu=r3 TxIpdu=r3
	lwz		r5,16(r3)		# RxIpdu=r5 TxIpdu=r3
.Llo161:
	rlwinm		r3,r29,0,16,31		# TxIpdu=r3 Index=r29
	e_mulli		r3,r3,40		# TxIpdu=r3 TxIpdu=r3
	se_add		r3,r5		# TxIpdu=r3 TxIpdu=r3 RxIpdu=r5
.Llo156:
	mr		r5,r3		# RxIpdu=r5 RxIpdu=r3
#         /* loop over all configured IPDU groups */
#         for(GroupIndex = (uint16)0; ( ( GroupIndex < ( RxIpdu->RxGroupListLength ) ) && ( SuperStatus == FALSE ) );
	.d2line		972
.Llo162:
	diab.li		r4,0		# GroupIndex=r4
.L297:
.Llo146:
	rlwinm		r0,r4,0,16,31		# SuperStatus=r0 GroupIndex=r4
	lhz		r3,28(r5)		# TxIpdu=r3 RxIpdu=r5
.Llo157:
	se_cmp		r0,r3		# SuperStatus=r0 TxIpdu=r3
	bc		0,0,.L299	# ge
.Llo158:
	rlwinm		r0,r6,0,24,31		# SuperStatus=r0 SuperStatus=r6
	se_cmpi		r0,0		# SuperStatus=r0
	bc		0,2,.L299	# ne
#                 GroupIndex++)
#         {
#             SuperStatus = (boolean)( (uint8)( ipduGroupVector[RxIpdu->RxGroupList_Ref[GroupIndex] >> 3U]
	.d2line		975
	lwz		r3,4(r5)		# TxIpdu=r3 RxIpdu=r5
.Llo159:
	rlwinm		r6,r4,1,15,30		# SuperStatus=r6 GroupIndex=r4
	lhzux		r0,r3,r6		# SuperStatus=r0 TxIpdu=r3
	rlwinm		r3,r0,29,19,31		# TxIpdu=r3 SuperStatus=r0
	lbzux		r0,r3,r31		# SuperStatus=r0 TxIpdu=r3
	lwz		r3,4(r5)		# TxIpdu=r3 RxIpdu=r5
	lhzx		r3,r3,r6		# TxIpdu=r3 TxIpdu=r3
	rlwinm		r3,r3,0,29,31		# TxIpdu=r3 TxIpdu=r3
	srw		r0,r0,r3		# SuperStatus=r0 SuperStatus=r0 TxIpdu=r3
	rlwinm		r0,r0,0,31,31		# SuperStatus=r0 SuperStatus=r0
	mr		r6,r0		# SuperStatus=r6 SuperStatus=r0
#                     >> ( RxIpdu->RxGroupList_Ref[GroupIndex] % 8U ) ) & COM_GROUP_BIT_MASK );
#         }
	.d2line		977
	diab.addi		r0,r4,1		# SuperStatus=r0 GroupIndex=r4
	se_addi		r4,1		# GroupIndex=r4 GroupIndex=r4
	b		.L297
.L299:
# 
#         if( FALSE != Identify )
	.d2line		979
.Llo160:
	rlwinm		r5,r28,0,24,31		# RxIpdu=r5 Identify=r28
.Llo163:
	se_cmpi		r5,0		# RxIpdu=r5
	bc		1,2,.L300	# eq
#         {
#             Com_RxIpduControl(Index, SuperStatus, initialize);
	.d2line		981
.Llo147:
	mr		r3,r29		# Index=r3 Index=r29
	mr		r5,r30		# initialize=r5 initialize=r30
	mr		r4,r6		# SuperStatus=r4 SuperStatus=r6
	bl		Com_RxIpduControl
.L300:
#         }
# #if COM_ENABLE_RX_DM == STD_ON
#         else
#         {
#             Com_DmRxIpduControl(Index, SuperStatus);
#         }
# #endif
#     }
	.d2line		989
	diab.addi		r0,r29,1		# SuperStatus=r0 Index=r29
	se_addi		r29,1		# Index=r29 Index=r29
	b		.L294
.L286:
# }
	.d2line		990
	.d2epilogue_begin
.Llo138:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo139:
	lwz		r0,36(r1)		# SuperStatus=r0
	mtspr		lr,r0		# SuperStatus=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo140:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L446:
	.type		Com_ControlVector,@function
	.size		Com_ControlVector,.-Com_ControlVector
# Number of nodes = 188

# Allocations for Com_ControlVector
#	?a4		ipduGroupVector
#	?a5		initialize
#	?a6		Identify
#	?a7		$$66
#	?a8		Index
#	?a9		GroupIndex
#	?a10		SuperStatus
#	?a11		TxIpdu
#	?a12		RxIpdu
# FUNC(void, COM_CODE) Com_IpduGroupControl(
	.align		2
	.section	.text_vle
        .d2line         95,22
#$$ld
.L463:

#$$bf	Com_IpduGroupControl,interprocedural,rasave,nostackparams
	.globl		Com_IpduGroupControl
	.d2_cfa_start __cie
Com_IpduGroupControl:
.Llo164:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#         VAR(Com_IpduGroupVector, AUTOMATIC) ipduGroupVector,
#         VAR(boolean, AUTOMATIC) initialize)
# {
# #if COM_DEV_ERROR_DETECT == STD_ON
#     if( Com_Status == COM_UNINIT )
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                         COM_INSTANCE_ID,
#                         COMServiceId_IpduGroupControl,
#                         COM_E_UNINIT);
#     }
# 
#     else if( ipduGroupVector == NULL_PTR )
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                         COM_INSTANCE_ID,
#                         COMServiceId_IpduGroupControl,
#                         COM_E_PARAM_POINTER);
#     }
# 
#     else
# #endif /* COM_DEV_ERROR_DETECT */
#     {
#         Com_ControlVector(ipduGroupVector, initialize, TRUE);
	.d2line		119
	mr		r0,r3		# ipduGroupVector=r0 ipduGroupVector=r3
	mr		r0,r4		# initialize=r0 initialize=r4
	diab.li		r5,1
	bl		Com_ControlVector
#     }
# }
	.d2line		121
	.d2epilogue_begin
.Llo165:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L464:
	.type		Com_IpduGroupControl,@function
	.size		Com_IpduGroupControl,.-Com_IpduGroupControl
# Number of nodes = 9

# Allocations for Com_IpduGroupControl
#	?a4		ipduGroupVector
#	?a5		initialize
# FUNC(void, COM_CODE) Com_ReceptionDMControl(
	.align		2
	.section	.text_vle
        .d2line         131,22
#$$ld
.L470:

#$$bf	Com_ReceptionDMControl,interprocedural,rasave,nostackparams
	.globl		Com_ReceptionDMControl
	.d2_cfa_start __cie
Com_ReceptionDMControl:
.Llo166:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#         VAR(Com_IpduGroupVector, AUTOMATIC) ipduGroupVector)
# {
# #if COM_DEV_ERROR_DETECT == STD_ON
#     if( Com_Status == COM_UNINIT )
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                         COM_INSTANCE_ID,
#                         COMServiceId_ReceptionDMControl,
#                         COM_E_UNINIT);
#     }
# 
#     else if( ipduGroupVector == NULL_PTR )
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                         COM_INSTANCE_ID,
#                         COMServiceId_ReceptionDMControl,
#                         COM_E_PARAM_POINTER);
#     }
# 
#     else
# #endif /* COM_DEV_ERROR_DETECT */
#     {
#         Com_ControlVector(ipduGroupVector, FALSE, FALSE);
	.d2line		154
	mr		r0,r3		# ipduGroupVector=r0 ipduGroupVector=r3
	diab.li		r4,0
	diab.li		r5,0
	bl		Com_ControlVector
#     }
# }
	.d2line		156
	.d2epilogue_begin
.Llo167:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L471:
	.type		Com_ReceptionDMControl,@function
	.size		Com_ReceptionDMControl,.-Com_ReceptionDMControl
# Number of nodes = 8

# Allocations for Com_ReceptionDMControl
#	?a4		ipduGroupVector
# FUNC(void, COM_CODE) Com_ClearIpduGroupVector(
	.align		2
	.section	.text_vle
        .d2line         167,22
#$$ld
.L476:

#$$bf	Com_ClearIpduGroupVector,interprocedural,rasave,nostackparams
	.globl		Com_ClearIpduGroupVector
	.d2_cfa_start __cie
Com_ClearIpduGroupVector:
.Llo168:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#         VAR(Com_IpduGroupVector, AUTOMATIC) ipduGroupVector)
# {
# #if COM_DEV_ERROR_DETECT == STD_ON
#     if( Com_Status == COM_UNINIT )
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                         COM_INSTANCE_ID,
#                         COMServiceId_ClearIpduGroupVector,
#                         COM_E_UNINIT);
#     }
# 
#     else if( ipduGroupVector == NULL_PTR )
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                         COM_INSTANCE_ID,
#                         COMServiceId_ClearIpduGroupVector,
#                         COM_E_PARAM_POINTER);
#     }
# 
#     else
# #endif /* COM_DEV_ERROR_DETECT */
#     {
#         vstar_set(ipduGroupVector, (uint8) COM_CLEAR_BYTE_MASK, (uint32)COM_GROUP_VECTOR_LENGTH);
	.d2line		190
	mr		r0,r3		# ipduGroupVector=r0 ipduGroupVector=r3
	diab.li		r4,0
	diab.li		r5,3
	bl		vstar_set
#     }
# }
	.d2line		192
	.d2epilogue_begin
.Llo169:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L477:
	.type		Com_ClearIpduGroupVector,@function
	.size		Com_ClearIpduGroupVector,.-Com_ClearIpduGroupVector
# Number of nodes = 8

# Allocations for Com_ClearIpduGroupVector
#	?a4		ipduGroupVector
# FUNC(void, COM_CODE) Com_SetIpduGroup(
	.align		2
	.section	.text_vle
        .d2line         210,22
#$$ld
.L482:

#$$bf	Com_SetIpduGroup,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r29,r30,r31,cr0,lr
	.globl		Com_SetIpduGroup
	.d2_cfa_start __cie
Com_SetIpduGroup:
.Llo170:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	29,31,1,1
	stw		r0,36(r1)		# ipduGroupVector=r0
	.d2_cfa_offset    108,-1
	mr.		r0,r3		# ipduGroupVector=?a4 ipduGroupVector=r3
	mr		r4,r4		# ipduGroupId=r4 ipduGroupId=r4
.Llo218:
	mr		r5,r5		# bitval=r5 bitval=r5
	.d2prologue_end
#         VAR(Com_IpduGroupVector, AUTOMATIC) ipduGroupVector,
#         VAR(Com_IpduGroupIdType, AUTOMATIC) ipduGroupId,
#         VAR(boolean, AUTOMATIC) bitval)
# {
#     P2CONST(Com_IpduGroup,AUTOMATIC,COM_CONST_PB) ThisGroup;
#     VAR(PduIdType, AUTOMATIC) GroupId;
#     VAR(uint16, AUTOMATIC) DescendentIndex;
#     VAR(uint16, AUTOMATIC) AncestorIndex;
#     VAR(boolean, AUTOMATIC) IsAllOtherGroupsActive;
# 
# 
#     if(ipduGroupVector == NULL_PTR)
	.d2line		222
	bc		1,2,.L171	# eq
#     {
# #if COM_DEV_ERROR_DETECT == STD_ON
#         (void)Det_ReportError(COM_MODULE_ID,
#                 COM_INSTANCE_ID,
#                 COMServiceId_SetIpduGroup,
#                 COM_E_PARAM_POINTER );
# #endif /* COM_DEV_ERROR_DETECT */
#     }
#     else if ((uint32)ipduGroupId >= ((uint32)COM_GROUP_VECTOR_LENGTH*8U))
	.d2line		231
.Llo171:
	rlwinm		r6,r4,0,16,31		# ipduGroupId=r4
.Llo172:
	se_cmpli	r6,24
	bc		0,0,.L171	# ge
#     {
# #if COM_DEV_ERROR_DETECT == STD_ON
#         (void)Det_ReportError(COM_MODULE_ID,
#                  COM_INSTANCE_ID,
#                  COMServiceId_SetIpduGroup,
#                  COM_E_PARAM);
# #endif /* COM_DEV_ERROR_DETECT */
#     }
# #if COM_DEV_ERROR_DETECT == STD_ON
#     else if (Com_Status == COM_UNINIT)
#     {
#         (void)Det_ReportError(COM_MODULE_ID,
#                 COM_INSTANCE_ID,
#                 COMServiceId_SetIpduGroup,
#                 COM_E_UNINIT);
#     }
# #endif /* COM_DEV_ERROR_DETECT */
#     else
#     {
#         ThisGroup = &Com_Main->IpduGroups_Ref[ipduGroupId];
	.d2line		251
.Llo180:
	rlwinm		r6,r4,0,16,31		# ipduGroupId=r4
	lis		r3,Com_Main@ha
	lwz		r3,Com_Main@l(r3)
	lwz		r3,12(r3)
	rlwinm		r7,r6,5,0,26
	se_slwi		r6,3
	subf		r6,r6,r7
	se_add		r3,r6
.Llo200:
	mr		r3,r3		# ThisGroup=r3 ThisGroup=r3
# 
#         if(FALSE != bitval)
	.d2line		253
.Llo181:
	rlwinm		r5,r5,0,24,31		# bitval=r5 bitval=r5
	se_cmpi		r5,0		# bitval=r5
	bc		1,2,.L176	# eq
#         {
#             ipduGroupVector[ipduGroupId>>3U] |=
	.d2line		255
.Llo182:
	rlwinm		r5,r4,29,19,31		# bitval=r5 ipduGroupId=r4
.Llo183:
	add		r6,r5,r0		# bitval=r5 ipduGroupVector=r0
	lbzx		r6,r5,r0		# bitval=r5 ipduGroupVector=r0
	diab.li		r7,1
	rlwinm		r4,r4,0,29,31		# ipduGroupId=r4 ipduGroupId=r4
.Llo219:
	slw		r7,r7,r4		# ipduGroupId=r4
	or		r6,r6,r7
	stbx		r6,r5,r0		# bitval=r5 ipduGroupVector=r0
#                     (uint8)((uint8)(COM_GROUP_BIT_MASK << (ipduGroupId&7U)));
# 
#             /* start all descendant IPduGroups */
#             for(DescendentIndex=(uint16)0;DescendentIndex < ThisGroup->DescendentListLength;
	.d2line		259
	diab.li		r4,0		# DescendentIndex=r4
.L177:
.Llo176:
	rlwinm		r6,r4,0,16,31		# DescendentIndex=r4
	lhz		r5,12(r3)		# bitval=r5 ThisGroup=r3
.Llo184:
	se_cmp		r6,r5		# bitval=r5
	bc		0,0,.L179	# ge
#                     DescendentIndex++)
#             {
#                 GroupId = ThisGroup->DescendentGroupList_Ref[DescendentIndex];
	.d2line		262
.Llo185:
	lwz		r5,0(r3)		# bitval=r5 ThisGroup=r3
.Llo186:
	rlwinm		r6,r4,1,15,30		# DescendentIndex=r4
	lhzx		r7,r5,r6		# GroupId=r7 bitval=r5
.Llo201:
	mr		r7,r7		# GroupId=r7 GroupId=r7
#                 (ipduGroupVector[GroupId >> 3U] |=
	.d2line		263
	rlwinm		r5,r7,29,19,31		# bitval=r5 GroupId=r7
	add		r6,r5,r0		# bitval=r5 ipduGroupVector=r0
	lbzx		r6,r5,r0		# bitval=r5 ipduGroupVector=r0
	diab.li		r31,1
	rlwinm		r7,r7,0,29,31		# GroupId=r7 GroupId=r7
	slw		r31,r31,r7		# GroupId=r7
	or		r6,r6,r31
	stbx		r6,r5,r0		# bitval=r5 ipduGroupVector=r0
#                         (uint8)(COM_GROUP_BIT_MASK << (GroupId&7U)));
#             }
	.d2line		265
	diab.addi		r6,r4,1		# DescendentIndex=r4
	se_addi		r4,1		# DescendentIndex=r4 DescendentIndex=r4
	b		.L177
.L179:
# 
#             /* loop on all ancestors, generated as direct parents first */
#             for(AncestorIndex = (uint16)0;(AncestorIndex < (ThisGroup->AncestorListLength));AncestorIndex++)
	.d2line		268
.Llo187:
	diab.li		r4,0		# AncestorIndex=r4
.L180:
.Llo177:
	rlwinm		r6,r4,0,16,31		# DescendentIndex=r6 AncestorIndex=r4
.Llo214:
	lhz		r5,16(r3)		# bitval=r5 ThisGroup=r3
.Llo188:
	se_cmp		r6,r5		# DescendentIndex=r6 bitval=r5
	bc		0,0,.L171	# ge
	.section	.text_vle
.L503:
#             {
#                 P2CONST(Com_IpduGroup,AUTOMATIC,COM_CONST_PB) AncestorGroup
	.d2line		270
.Llo189:
	lwz		r5,8(r3)		# bitval=r5 ThisGroup=r3
.Llo190:
	rlwinm		r6,r4,1,15,30		# DescendentIndex=r6 AncestorIndex=r4
.Llo215:
	lhzx		r6,r5,r6		# DescendentIndex=r6 bitval=r5
	lis		r5,Com_Main@ha		# bitval=r5
	lwz		r5,Com_Main@l(r5)		# bitval=r5 bitval=r5
	lwz		r5,12(r5)		# bitval=r5 bitval=r5
	rlwinm		r7,r6,5,0,26		# GroupId=r7 DescendentIndex=r6
.Llo202:
	se_slwi		r6,3		# DescendentIndex=r6 DescendentIndex=r6
	subf		r6,r6,r7		# DescendentIndex=r6 DescendentIndex=r6 GroupId=r7
	se_add		r5,r6		# bitval=r5 bitval=r5 DescendentIndex=r6
.Llo191:
	mr		r5,r5		# AncestorGroup=r5 AncestorGroup=r5
#                     = &Com_Main->IpduGroups_Ref[ThisGroup->AncestorGroupList_Ref[AncestorIndex]];
#                 IsAllOtherGroupsActive = TRUE;
	.d2line		272
	diab.li		r31,1		# IsAllOtherGroupsActive=r31
# 
#                 /* check all direct children are active */
#                 for(DescendentIndex = (uint16)0; (DescendentIndex <
	.d2line		275
.Llo221:
	diab.li		r6,0		# DescendentIndex=r6
.L183:
.Llo203:
	rlwinm		r30,r6,0,16,31		# GroupId=r30 DescendentIndex=r6
.Llo204:
	lhz		r7,14(r5)		# GroupId=r7 AncestorGroup=r5
	se_cmp		r30,r7		# GroupId=r30 GroupId=r7
	bc		0,0,.L187	# ge
#                                 (AncestorGroup->ChildListLength)); DescendentIndex++)
#                 {
#                         GroupId = AncestorGroup->ChildGroupList_Ref[DescendentIndex];
	.d2line		278
.Llo205:
	lwz		r7,4(r5)		# GroupId=r7 AncestorGroup=r5
.Llo206:
	rlwinm		r30,r6,1,15,30		# GroupId=r30 DescendentIndex=r6
	lhzx		r30,r7,r30		# GroupId=r30 GroupId=r7
	mr		r30,r30		# GroupId=r30 GroupId=r30
#                         if((((ipduGroupVector[GroupId>>3]) &
	.d2line		279
	rlwinm		r7,r30,29,19,31		# GroupId=r7 GroupId=r30
	lbzux		r29,r7,r0		# GroupId=r7
	diab.li		r7,1		# GroupId=r7
	rlwinm		r30,r30,0,29,31		# GroupId=r30 GroupId=r30
	slw		r7,r7,r30		# GroupId=r7 GroupId=r7 GroupId=r30
	rlwinm		r7,r7,0,24,31		# GroupId=r7 GroupId=r7
	and.		r7,r7,r29		# GroupId=r7 GroupId=r7
.Llo207:
	bc		0,2,.L186	# ne
#                                                 ((uint8)(COM_GROUP_BIT_MASK << (GroupId%8U)))) == 0U))
#                         {
#                             /* one child is not active */
#                             IsAllOtherGroupsActive = FALSE;
	.d2line		283
	diab.li		r31,0		# IsAllOtherGroupsActive=r31
	b		.L187
.L186:
#                             break;
#                         }
#                 }
	.d2line		286
	diab.addi		r30,r6,1		# GroupId=r30 DescendentIndex=r6
	se_addi		r6,1		# DescendentIndex=r6 DescendentIndex=r6
	b		.L183
.L187:
# 
#                 if((TRUE == IsAllOtherGroupsActive) &&
	.d2line		288
	rlwinm		r31,r31,0,24,31		# IsAllOtherGroupsActive=r31 IsAllOtherGroupsActive=r31
	se_cmpi		r31,1		# IsAllOtherGroupsActive=r31
	bc		0,2,.L188	# ne
.Llo216:
	lhz		r5,14(r5)		# AncestorGroup=r5 AncestorGroup=r5
	se_cmpi		r5,0		# AncestorGroup=r5
	bc		0,1,.L188	# le
#                         (AncestorGroup->ChildListLength > 0))
#                 {
#                     GroupId = ThisGroup->AncestorGroupList_Ref[AncestorIndex];
	.d2line		291
.Llo223:
	lwz		r5,8(r3)		# AncestorGroup=r5 ThisGroup=r3
.Llo224:
	rlwinm		r6,r4,1,15,30		# DescendentIndex=r6 AncestorIndex=r4
	lhzx		r7,r5,r6		# GroupId=r7 AncestorGroup=r5
.Llo208:
	mr		r7,r7		# GroupId=r7 GroupId=r7
#                     (ipduGroupVector[GroupId>>3U] |=
	.d2line		292
	rlwinm		r5,r7,29,19,31		# AncestorGroup=r5 GroupId=r7
	add		r6,r5,r0		# DescendentIndex=r6 AncestorGroup=r5 ipduGroupVector=r0
	lbzx		r6,r5,r0		# DescendentIndex=r6 AncestorGroup=r5 ipduGroupVector=r0
.Llo217:
	diab.li		r31,1		# IsAllOtherGroupsActive=r31
.Llo222:
	rlwinm		r7,r7,0,29,31		# GroupId=r7 GroupId=r7
	slw		r31,r31,r7		# IsAllOtherGroupsActive=r31 IsAllOtherGroupsActive=r31 GroupId=r7
	or		r6,r6,r31		# DescendentIndex=r6 DescendentIndex=r6 IsAllOtherGroupsActive=r31
	stbx		r6,r5,r0		# AncestorGroup=r5 ipduGroupVector=r0 DescendentIndex=r6
.L188:
	.section	.text_vle
.L504:
#                             (uint8)(COM_GROUP_BIT_MASK << (GroupId&7U)));
#                 }
#             }
	.d2line		295
.Llo209:
	diab.addi		r6,r4,1		# DescendentIndex=r6 AncestorIndex=r4
	se_addi		r4,1		# AncestorIndex=r4 AncestorIndex=r4
	b		.L180
.L176:
#         }
#         else
#         {
#             ipduGroupVector[ipduGroupId>>3U] &=
	.d2line		299
	rlwinm		r5,r4,29,19,31		# bitval=r5 ipduGroupId=r4
.Llo192:
	add		r6,r5,r0		# bitval=r5 ipduGroupVector=r0
	lbzx		r6,r5,r0		# bitval=r5 ipduGroupVector=r0
	diab.li		r7,1
	rlwinm		r4,r4,0,29,31		# ipduGroupId=r4 ipduGroupId=r4
.Llo220:
	slw		r7,r7,r4		# ipduGroupId=r4
	andc		r4,r6,r7		# ipduGroupId=r4
	stbx		r4,r5,r0		# bitval=r5 ipduGroupVector=r0 ipduGroupId=r4
#                     (uint8)~((uint8)(COM_GROUP_BIT_MASK << (ipduGroupId&7U)));
# 
#             /* stop all descendent IPduGroups */
#             for(DescendentIndex=(uint16)0;DescendentIndex < (ThisGroup->DescendentListLength);
	.d2line		303
	diab.li		r4,0		# DescendentIndex=r4
.L190:
.Llo178:
	rlwinm		r6,r4,0,16,31		# DescendentIndex=r4
	lhz		r5,12(r3)		# bitval=r5 ThisGroup=r3
.Llo193:
	se_cmp		r6,r5		# bitval=r5
	bc		0,0,.L192	# ge
#                     DescendentIndex++)
#             {
#                 GroupId = ThisGroup->DescendentGroupList_Ref[DescendentIndex];
	.d2line		306
.Llo194:
	lwz		r5,0(r3)		# bitval=r5 ThisGroup=r3
.Llo195:
	rlwinm		r6,r4,1,15,30		# DescendentIndex=r4
	lhzx		r7,r5,r6		# GroupId=r7 bitval=r5
.Llo210:
	mr		r7,r7		# GroupId=r7 GroupId=r7
#                 (ipduGroupVector[GroupId>>3U] &=
	.d2line		307
	rlwinm		r5,r7,29,19,31		# bitval=r5 GroupId=r7
	add		r6,r5,r0		# bitval=r5 ipduGroupVector=r0
	lbzx		r6,r5,r0		# bitval=r5 ipduGroupVector=r0
	diab.li		r31,1
	rlwinm		r7,r7,0,29,31		# GroupId=r7 GroupId=r7
	slw		r31,r31,r7		# GroupId=r7
	andc		r6,r6,r31
	stbx		r6,r5,r0		# bitval=r5 ipduGroupVector=r0
#                         (uint8)~((uint8)((COM_GROUP_BIT_MASK<<(GroupId&7U)))));
#             }
	.d2line		309
	diab.addi		r6,r4,1		# DescendentIndex=r4
	se_addi		r4,1		# DescendentIndex=r4 DescendentIndex=r4
	b		.L190
.L192:
# 
#             /* stop all ancestor IPduGroups */
#             for(AncestorIndex = (uint16)0;(AncestorIndex < (ThisGroup->AncestorListLength));AncestorIndex++)
	.d2line		312
.Llo196:
	diab.li		r4,0		# AncestorIndex=r4
.L193:
.Llo179:
	rlwinm		r6,r4,0,16,31		# GroupId=r6 AncestorIndex=r4
.Llo211:
	lhz		r5,16(r3)		# bitval=r5 ThisGroup=r3
.Llo197:
	se_cmp		r6,r5		# GroupId=r6 bitval=r5
	bc		0,0,.L171	# ge
#             {
#                 GroupId = ThisGroup->AncestorGroupList_Ref[AncestorIndex];
	.d2line		314
.Llo198:
	lwz		r5,8(r3)		# bitval=r5 ThisGroup=r3
.Llo199:
	rlwinm		r6,r4,1,15,30		# GroupId=r6 AncestorIndex=r4
.Llo212:
	lhzx		r6,r5,r6		# GroupId=r6 bitval=r5
	mr		r6,r6		# GroupId=r6 GroupId=r6
#                 (ipduGroupVector[GroupId>>3U] &=
	.d2line		315
	rlwinm		r5,r6,29,19,31		# bitval=r5 GroupId=r6
	add		r7,r5,r0		# GroupId=r7 bitval=r5 ipduGroupVector=r0
	lbzx		r7,r5,r0		# GroupId=r7 bitval=r5 ipduGroupVector=r0
	diab.li		r31,1
	rlwinm		r6,r6,0,29,31		# GroupId=r6 GroupId=r6
	slw		r31,r31,r6		# GroupId=r6
	andc		r6,r7,r31		# GroupId=r6 GroupId=r7
	stbx		r6,r5,r0		# bitval=r5 ipduGroupVector=r0 GroupId=r6
#                                 (uint8) ~((uint8)((COM_GROUP_BIT_MASK) << (GroupId&7U))));
#             }
	.d2line		317
	diab.addi		r6,r4,1		# GroupId=r6 AncestorIndex=r4
.Llo213:
	se_addi		r4,1		# AncestorIndex=r4 AncestorIndex=r4
	b		.L193
.L171:
#         }
#     }
# }
	.d2line		320
	.d2epilogue_begin
.Llo173:
	lmw		r29,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	3,10
.Llo174:
	lwz		r0,36(r1)		# ipduGroupVector=r0
	mtspr		lr,r0		# ipduGroupVector=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo175:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L483:
	.type		Com_SetIpduGroup,@function
	.size		Com_SetIpduGroup,.-Com_SetIpduGroup
# Number of nodes = 292

# Allocations for Com_SetIpduGroup
#	?a4		ipduGroupVector
#	?a5		ipduGroupId
#	?a6		bitval
#	?a7		$$68
#	?a8		$$67
#	?a9		$$44
#	?a10		$$43
#	?a11		$$42
#	?a12		$$41
#	?a13		$$40
#	?a14		$$39
#	?a15		ThisGroup
#	?a16		GroupId
#	?a17		DescendentIndex
#	?a18		AncestorIndex
#	?a19		IsAllOtherGroupsActive
#	?a20		AncestorGroup

# Allocations for module
	.section	.text_vle
	.type		.L269,@object
	.size		.L269,5
	.align		2
#	static		__static_init1
.L269:
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.byte		0
	.section	.text_vle
#$$ld
.L5:
.L568:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L564:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\ComXf_CommonTypes.h"
.L515:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\Com_Types.h"
.L510:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\Com_i.h"
.L315:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_IpduGroupsHandler.c"
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
	.uleb128	11
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	18
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_IpduGroupsHandler.c"
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
.L316:
	.sleb128	2
	.4byte		.L312-.L2
	.byte		"InitializeSignal"
	.byte		0
	.4byte		.L315
	.uleb128	827
	.uleb128	29
	.byte		0x1
	.4byte		.L313
	.4byte		.L314
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L315
	.uleb128	827
	.uleb128	29
	.byte		"SignalPB_Ref"
	.byte		0
	.4byte		.L317
	.4byte		.L321
	.sleb128	3
	.4byte		.L315
	.uleb128	827
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L322
	.4byte		.L326
	.section	.debug_info,,n
.L327:
	.sleb128	4
	.4byte		.L315
	.uleb128	831
	.uleb128	45
	.byte		"initValueRef"
	.byte		0
	.4byte		.L328
	.4byte		.L330
	.section	.debug_info,,n
.L331:
	.sleb128	5
	.4byte		.L315
	.uleb128	837
	.uleb128	29
	.byte		"defaultInitValueArr"
	.byte		0
	.4byte		.L332
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L312:
	.section	.debug_info,,n
.L338:
	.sleb128	6
	.4byte		.L335-.L2
	.byte		"Com_InitializeIpdu"
	.byte		0
	.4byte		.L315
	.uleb128	719
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L336
	.4byte		.L337
	.sleb128	3
	.4byte		.L315
	.uleb128	719
	.uleb128	22
	.byte		"IpduId"
	.byte		0
	.4byte		.L339
	.4byte		.L343
	.sleb128	3
	.4byte		.L315
	.uleb128	719
	.uleb128	22
	.byte		"Transmit"
	.byte		0
	.4byte		.L344
	.4byte		.L346
.L347:
	.sleb128	4
	.4byte		.L315
	.uleb128	723
	.uleb128	53
	.byte		"SignalPB_Ref"
	.byte		0
	.4byte		.L317
	.4byte		.L348
.L349:
	.sleb128	4
	.4byte		.L315
	.uleb128	724
	.uleb128	48
	.byte		"TxIpduRef"
	.byte		0
	.4byte		.L350
	.4byte		.L354
.L355:
	.sleb128	4
	.4byte		.L315
	.uleb128	725
	.uleb128	48
	.byte		"RxIpduRef"
	.byte		0
	.4byte		.L356
	.4byte		.L360
.L361:
	.sleb128	4
	.4byte		.L315
	.uleb128	726
	.uleb128	38
	.byte		"SignalId"
	.byte		0
	.4byte		.L362
	.4byte		.L363
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L367
	.4byte		.L364
	.4byte		.L365
.L368:
	.sleb128	4
	.4byte		.L315
	.uleb128	738
	.uleb128	35
	.byte		"RxIPduIndex"
	.byte		0
	.4byte		.L341
	.4byte		.L369
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L373
	.4byte		.L370
	.4byte		.L371
.L374:
	.sleb128	4
	.4byte		.L315
	.uleb128	751
	.uleb128	44
	.byte		"GroupSignalIndex"
	.byte		0
	.4byte		.L341
	.4byte		.L375
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L379
	.4byte		.L376
	.4byte		.L377
.L380:
	.sleb128	4
	.4byte		.L315
	.uleb128	754
	.uleb128	60
	.byte		"GroupSignalId"
	.byte		0
	.4byte		.L381
	.4byte		.L382
	.section	.debug_info,,n
	.sleb128	0
.L379:
	.section	.debug_info,,n
	.sleb128	0
.L373:
	.section	.debug_info,,n
	.sleb128	0
.L367:
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L386
	.4byte		.L383
	.4byte		.L384
.L387:
	.sleb128	4
	.4byte		.L315
	.uleb128	771
	.uleb128	35
	.byte		"TxIPduIndex"
	.byte		0
	.4byte		.L341
	.4byte		.L388
.L389:
	.sleb128	4
	.4byte		.L315
	.uleb128	772
	.uleb128	36
	.byte		"LengthIndex"
	.byte		0
	.4byte		.L341
	.4byte		.L390
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L394
	.4byte		.L391
	.4byte		.L392
.L395:
	.sleb128	4
	.4byte		.L315
	.uleb128	795
	.uleb128	42
	.byte		"GroupIndex"
	.byte		0
	.4byte		.L324
	.4byte		.L396
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L400
	.4byte		.L397
	.4byte		.L398
.L401:
	.sleb128	4
	.4byte		.L315
	.uleb128	798
	.uleb128	60
	.byte		"GroupSignalId"
	.byte		0
	.4byte		.L381
	.4byte		.L402
	.section	.debug_info,,n
	.sleb128	0
.L400:
	.section	.debug_info,,n
	.sleb128	0
.L394:
	.section	.debug_info,,n
	.sleb128	0
.L386:
	.section	.debug_info,,n
	.sleb128	0
.L335:
	.section	.debug_info,,n
.L407:
	.sleb128	6
	.4byte		.L404-.L2
	.byte		"Com_ClearIpduUpdateBits"
	.byte		0
	.4byte		.L315
	.uleb128	902
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L405
	.4byte		.L406
	.sleb128	3
	.4byte		.L315
	.uleb128	902
	.uleb128	22
	.byte		"TxIpduRef"
	.byte		0
	.4byte		.L408
	.4byte		.L409
.L410:
	.sleb128	4
	.4byte		.L315
	.uleb128	905
	.uleb128	28
	.byte		"Index"
	.byte		0
	.4byte		.L341
	.4byte		.L411
.L412:
	.sleb128	4
	.4byte		.L315
	.uleb128	906
	.uleb128	46
	.byte		"SignalIdPtr"
	.byte		0
	.4byte		.L413
	.4byte		.L415
.L416:
	.sleb128	4
	.4byte		.L315
	.uleb128	907
	.uleb128	58
	.byte		"SignalPtr"
	.byte		0
	.4byte		.L417
	.4byte		.L418
	.section	.debug_info,,n
	.sleb128	0
.L404:
	.section	.debug_info,,n
.L423:
	.sleb128	2
	.4byte		.L420-.L2
	.byte		"Com_TxIpduControl"
	.byte		0
	.4byte		.L315
	.uleb128	339
	.uleb128	29
	.byte		0x1
	.4byte		.L421
	.4byte		.L422
	.sleb128	3
	.4byte		.L315
	.uleb128	339
	.uleb128	29
	.byte		"IpduId"
	.byte		0
	.4byte		.L339
	.4byte		.L424
	.sleb128	3
	.4byte		.L315
	.uleb128	339
	.uleb128	29
	.byte		"SuperStatus"
	.byte		0
	.4byte		.L344
	.4byte		.L425
	.sleb128	3
	.4byte		.L315
	.uleb128	339
	.uleb128	29
	.byte		"initialize"
	.byte		0
	.4byte		.L344
	.4byte		.L426
.L427:
	.sleb128	4
	.4byte		.L315
	.uleb128	344
	.uleb128	27
	.byte		"ActiveTM"
	.byte		0
	.4byte		.L324
	.4byte		.L428
.L429:
	.sleb128	4
	.4byte		.L315
	.uleb128	354
	.uleb128	48
	.byte		"Ipdu"
	.byte		0
	.4byte		.L350
	.4byte		.L430
	.section	.debug_info,,n
	.sleb128	0
.L420:
	.section	.debug_info,,n
.L435:
	.sleb128	2
	.4byte		.L432-.L2
	.byte		"Com_RxIpduControl"
	.byte		0
	.4byte		.L315
	.uleb128	539
	.uleb128	29
	.byte		0x1
	.4byte		.L433
	.4byte		.L434
	.sleb128	3
	.4byte		.L315
	.uleb128	539
	.uleb128	29
	.byte		"IpduId"
	.byte		0
	.4byte		.L339
	.4byte		.L436
	.sleb128	3
	.4byte		.L315
	.uleb128	539
	.uleb128	29
	.byte		"SuperStatus"
	.byte		0
	.4byte		.L344
	.4byte		.L437
	.sleb128	3
	.4byte		.L315
	.uleb128	539
	.uleb128	29
	.byte		"initialize"
	.byte		0
	.4byte		.L344
	.4byte		.L438
.L439:
	.sleb128	4
	.4byte		.L315
	.uleb128	547
	.uleb128	48
	.byte		"Ipdu"
	.byte		0
	.4byte		.L356
	.4byte		.L440
.L441:
	.sleb128	4
	.4byte		.L315
	.uleb128	555
	.uleb128	39
	.byte		"RxIpduRamFlag"
	.byte		0
	.4byte		.L323
	.4byte		.L442
	.section	.debug_info,,n
	.sleb128	0
.L432:
	.section	.debug_info,,n
.L447:
	.sleb128	2
	.4byte		.L444-.L2
	.byte		"Com_ControlVector"
	.byte		0
	.4byte		.L315
	.uleb128	936
	.uleb128	29
	.byte		0x1
	.4byte		.L445
	.4byte		.L446
	.sleb128	3
	.4byte		.L315
	.uleb128	936
	.uleb128	29
	.byte		"ipduGroupVector"
	.byte		0
	.4byte		.L323
	.4byte		.L448
	.sleb128	3
	.4byte		.L315
	.uleb128	936
	.uleb128	29
	.byte		"initialize"
	.byte		0
	.4byte		.L344
	.4byte		.L449
	.sleb128	3
	.4byte		.L315
	.uleb128	936
	.uleb128	29
	.byte		"Identify"
	.byte		0
	.4byte		.L344
	.4byte		.L450
.L451:
	.sleb128	4
	.4byte		.L315
	.uleb128	942
	.uleb128	31
	.byte		"Index"
	.byte		0
	.4byte		.L340
	.4byte		.L452
.L453:
	.sleb128	4
	.4byte		.L315
	.uleb128	943
	.uleb128	28
	.byte		"GroupIndex"
	.byte		0
	.4byte		.L341
	.4byte		.L454
.L455:
	.sleb128	4
	.4byte		.L315
	.uleb128	944
	.uleb128	29
	.byte		"SuperStatus"
	.byte		0
	.4byte		.L345
	.4byte		.L456
.L457:
	.sleb128	4
	.4byte		.L315
	.uleb128	945
	.uleb128	48
	.byte		"TxIpdu"
	.byte		0
	.4byte		.L350
	.4byte		.L458
.L459:
	.sleb128	4
	.4byte		.L315
	.uleb128	946
	.uleb128	48
	.byte		"RxIpdu"
	.byte		0
	.4byte		.L356
	.4byte		.L460
	.section	.debug_info,,n
	.sleb128	0
.L444:
	.section	.debug_info,,n
.L465:
	.sleb128	6
	.4byte		.L462-.L2
	.byte		"Com_IpduGroupControl"
	.byte		0
	.4byte		.L315
	.uleb128	95
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L463
	.4byte		.L464
	.sleb128	3
	.4byte		.L315
	.uleb128	95
	.uleb128	22
	.byte		"ipduGroupVector"
	.byte		0
	.4byte		.L323
	.4byte		.L466
	.sleb128	3
	.4byte		.L315
	.uleb128	95
	.uleb128	22
	.byte		"initialize"
	.byte		0
	.4byte		.L345
	.4byte		.L467
	.section	.debug_info,,n
	.sleb128	0
.L462:
	.section	.debug_info,,n
.L472:
	.sleb128	6
	.4byte		.L469-.L2
	.byte		"Com_ReceptionDMControl"
	.byte		0
	.4byte		.L315
	.uleb128	131
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L470
	.4byte		.L471
	.sleb128	3
	.4byte		.L315
	.uleb128	131
	.uleb128	22
	.byte		"ipduGroupVector"
	.byte		0
	.4byte		.L323
	.4byte		.L473
	.section	.debug_info,,n
	.sleb128	0
.L469:
	.section	.debug_info,,n
.L478:
	.sleb128	6
	.4byte		.L475-.L2
	.byte		"Com_ClearIpduGroupVector"
	.byte		0
	.4byte		.L315
	.uleb128	167
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L476
	.4byte		.L477
	.sleb128	3
	.4byte		.L315
	.uleb128	167
	.uleb128	22
	.byte		"ipduGroupVector"
	.byte		0
	.4byte		.L323
	.4byte		.L479
	.section	.debug_info,,n
	.sleb128	0
.L475:
	.section	.debug_info,,n
.L484:
	.sleb128	6
	.4byte		.L481-.L2
	.byte		"Com_SetIpduGroup"
	.byte		0
	.4byte		.L315
	.uleb128	210
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L482
	.4byte		.L483
	.sleb128	3
	.4byte		.L315
	.uleb128	210
	.uleb128	22
	.byte		"ipduGroupVector"
	.byte		0
	.4byte		.L323
	.4byte		.L485
	.sleb128	3
	.4byte		.L315
	.uleb128	210
	.uleb128	22
	.byte		"ipduGroupId"
	.byte		0
	.4byte		.L486
	.4byte		.L487
	.sleb128	3
	.4byte		.L315
	.uleb128	210
	.uleb128	22
	.byte		"bitval"
	.byte		0
	.4byte		.L345
	.4byte		.L488
.L489:
	.sleb128	4
	.4byte		.L315
	.uleb128	215
	.uleb128	51
	.byte		"ThisGroup"
	.byte		0
	.4byte		.L490
	.4byte		.L494
.L495:
	.sleb128	4
	.4byte		.L315
	.uleb128	216
	.uleb128	31
	.byte		"GroupId"
	.byte		0
	.4byte		.L340
	.4byte		.L496
.L497:
	.sleb128	4
	.4byte		.L315
	.uleb128	217
	.uleb128	28
	.byte		"DescendentIndex"
	.byte		0
	.4byte		.L341
	.4byte		.L498
.L499:
	.sleb128	4
	.4byte		.L315
	.uleb128	218
	.uleb128	28
	.byte		"AncestorIndex"
	.byte		0
	.4byte		.L341
	.4byte		.L500
.L501:
	.sleb128	4
	.4byte		.L315
	.uleb128	219
	.uleb128	29
	.byte		"IsAllOtherGroupsActive"
	.byte		0
	.4byte		.L345
	.4byte		.L502
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L506
	.4byte		.L503
	.4byte		.L504
.L507:
	.sleb128	4
	.4byte		.L315
	.uleb128	270
	.uleb128	63
	.byte		"AncestorGroup"
	.byte		0
	.4byte		.L490
	.4byte		.L508
	.section	.debug_info,,n
	.sleb128	0
.L506:
	.section	.debug_info,,n
	.sleb128	0
.L481:
	.section	.debug_info,,n
.L509:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L510
	.uleb128	513
	.uleb128	55
	.byte		"Com_Main"
	.byte		0
	.4byte		.L511
	.0byte		.L509
	.section	.debug_info,,n
.L514:
	.sleb128	9
	.4byte		.L515
	.uleb128	82
	.uleb128	1
	.4byte		.L516-.L2
	.uleb128	100
	.section	.debug_info,,n
.L120:
	.sleb128	10
	.byte		"ConfigurationId"
	.byte		0
	.4byte		.L517
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L121:
	.sleb128	10
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L519
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L122:
	.sleb128	10
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L519
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L123:
	.sleb128	10
	.byte		"IpduGroups_Ref"
	.byte		0
	.4byte		.L521
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L124:
	.sleb128	10
	.byte		"RxIpdus_Ref"
	.byte		0
	.4byte		.L522
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L125:
	.sleb128	10
	.byte		"RxIpdusDeferred_Ref"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L126:
	.sleb128	10
	.byte		"RxIpdusImmediate_Ref"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L127:
	.sleb128	10
	.byte		"RxIpdusRxDM_Ref"
	.byte		0
	.4byte		.L523
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L128:
	.sleb128	10
	.byte		"TxIpdus_Ref"
	.byte		0
	.4byte		.L408
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L129:
	.sleb128	10
	.byte		"Signals_Ref"
	.byte		0
	.4byte		.L417
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L130:
	.sleb128	10
	.byte		"IpduToSignal_Ref"
	.byte		0
	.4byte		.L525
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L131:
	.sleb128	10
	.byte		"GroupSignalToIPdu_Ref"
	.byte		0
	.4byte		.L525
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L132:
	.sleb128	10
	.byte		"TxModes_Ref"
	.byte		0
	.4byte		.L527
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L133:
	.sleb128	10
	.byte		"CycleTimers_Ref"
	.byte		0
	.4byte		.L532
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L134:
	.sleb128	10
	.byte		"DeferredLength_Ref"
	.byte		0
	.4byte		.L535
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L135:
	.sleb128	10
	.byte		"DeferredReceivedIPdu_Ref"
	.byte		0
	.4byte		.L538
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L136:
	.sleb128	10
	.byte		"DeferredReceivedIPduArrayLength"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L137:
	.sleb128	10
	.byte		"RxIpdusFlags"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L138:
	.sleb128	10
	.byte		"Com_ZeroMask"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L139:
	.sleb128	10
	.byte		"SignalGroup_base"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L140:
	.sleb128	10
	.byte		"MemberSignal_base"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	78
	.byte		0x1
.L141:
	.sleb128	10
	.byte		"SignalArrayLength"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L142:
	.sleb128	10
	.byte		"SignalGroupArrayLength"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	82
	.byte		0x1
.L143:
	.sleb128	10
	.byte		"MemberSignalArrayLength"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L144:
	.sleb128	10
	.byte		"TxIpduIdArrayLength"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	86
	.byte		0x1
.L145:
	.sleb128	10
	.byte		"RxIpduIdArrayLength"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L146:
	.sleb128	10
	.byte		"RxIPduDeferredArrayLength"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	90
	.byte		0x1
.L147:
	.sleb128	10
	.byte		"RxIPduImmediateArralLength"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L148:
	.sleb128	10
	.byte		"RxIPduRxDMArralLength"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	94
	.byte		0x1
.L149:
	.sleb128	10
	.byte		"IpduGroupArrayLength"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
	.sleb128	0
.L516:
.L493:
	.sleb128	9
	.4byte		.L515
	.uleb128	82
	.uleb128	1
	.4byte		.L539-.L2
	.uleb128	24
.L109:
	.sleb128	10
	.byte		"DescendentGroupList_Ref"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L110:
	.sleb128	10
	.byte		"ChildGroupList_Ref"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L111:
	.sleb128	10
	.byte		"AncestorGroupList_Ref"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L112:
	.sleb128	10
	.byte		"DescendentListLength"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L113:
	.sleb128	10
	.byte		"ChildListLength"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L114:
	.sleb128	10
	.byte		"AncestorListLength"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L115:
	.sleb128	10
	.byte		"ParentListLength"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L116:
	.sleb128	10
	.byte		"Flags"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L539:
.L359:
	.sleb128	9
	.4byte		.L515
	.uleb128	82
	.uleb128	1
	.4byte		.L542-.L2
	.uleb128	40
.L97:
	.sleb128	10
	.byte		"RxIPduId"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L98:
	.sleb128	10
	.byte		"RxGroupList_Ref"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L99:
	.sleb128	10
	.byte		"SignalIndex_Ref"
	.byte		0
	.4byte		.L525
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L100:
	.sleb128	10
	.byte		"ForeGroundBuffer_Ref"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L101:
	.sleb128	10
	.byte		"BackGroundBuffer_Ref"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L102:
	.sleb128	10
	.byte		"RxIpduFlags_Ref"
	.byte		0
	.4byte		.L543
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L103:
	.sleb128	10
	.byte		"IsBackGroundBufferUpdated_Ref"
	.byte		0
	.4byte		.L547
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L104:
	.sleb128	10
	.byte		"RxGroupListLength"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L105:
	.sleb128	10
	.byte		"NumberOfSignals"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L106:
	.sleb128	10
	.byte		"IpduLength"
	.byte		0
	.4byte		.L537
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L107:
	.sleb128	10
	.byte		"IPduFlags"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L108:
	.sleb128	10
	.byte		"Com_DeferredNotificationCall_Ref"
	.byte		0
	.4byte		.L549
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L542:
.L551:
	.sleb128	9
	.4byte		.L515
	.uleb128	82
	.uleb128	1
	.4byte		.L552-.L2
	.uleb128	4
.L95:
	.sleb128	10
	.byte		"Com_DeferredNotificationIndex"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L96:
	.sleb128	10
	.byte		"Com_DeferredNotificationIndexType"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L552:
.L546:
	.sleb128	9
	.4byte		.L515
	.uleb128	82
	.uleb128	1
	.4byte		.L553-.L2
	.uleb128	2
.L93:
	.sleb128	10
	.byte		"DeferredIPduReceived"
	.byte		0
	.4byte		.L345
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L94:
	.sleb128	10
	.byte		"IsBackGroundBufferUpdated"
	.byte		0
	.4byte		.L345
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L553:
.L353:
	.sleb128	9
	.4byte		.L515
	.uleb128	82
	.uleb128	1
	.4byte		.L554-.L2
	.uleb128	60
.L75:
	.sleb128	10
	.byte		"TxGroupList_Ref"
	.byte		0
	.4byte		.L540
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L76:
	.sleb128	10
	.byte		"IsIPduGroupEnabled_Ref"
	.byte		0
	.4byte		.L547
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L77:
	.sleb128	10
	.byte		"IsTxPending_Ref"
	.byte		0
	.4byte		.L547
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L78:
	.sleb128	10
	.byte		"IsConfirmationPending_Ref"
	.byte		0
	.4byte		.L547
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L79:
	.sleb128	10
	.byte		"IsConfirmationDeferred_Ref"
	.byte		0
	.4byte		.L547
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L80:
	.sleb128	10
	.byte		"CurrentTxMode_Ref"
	.byte		0
	.4byte		.L547
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L81:
	.sleb128	10
	.byte		"IsTransmissionFailed_Ref"
	.byte		0
	.4byte		.L547
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L82:
	.sleb128	10
	.byte		"Pdu"
	.byte		0
	.4byte		.L555
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L83:
	.sleb128	10
	.byte		"TxGroupListLength"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L84:
	.sleb128	10
	.byte		"Signals_Index"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L85:
	.sleb128	10
	.byte		"NumberOfSignals"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L86:
	.sleb128	10
	.byte		"SignalsWithUpdateBit_Ref"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L87:
	.sleb128	10
	.byte		"NumberOfSignalsWithUpdateBit"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L88:
	.sleb128	10
	.byte		"InitializeLength"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
.L89:
	.sleb128	10
	.byte		"TxMode"
	.byte		0
	.4byte		.L557
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L90:
	.sleb128	10
	.byte		"TargetId"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	54
	.byte		0x1
.L91:
	.sleb128	10
	.byte		"IpduFlags"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L92:
	.sleb128	10
	.byte		"UnusedValue"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	58
	.byte		0x1
	.sleb128	0
.L554:
.L320:
	.sleb128	9
	.4byte		.L515
	.uleb128	82
	.uleb128	1
	.4byte		.L559-.L2
	.uleb128	56
.L54:
	.sleb128	10
	.byte		"ForeGroundBuffer_Ref"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L55:
	.sleb128	10
	.byte		"BackGroundBuffer_Ref"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L56:
	.sleb128	10
	.byte		"ShadowBuffer_Ref"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L57:
	.sleb128	10
	.byte		"UpdateBit_Ref"
	.byte		0
	.4byte		.L322
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L58:
	.sleb128	10
	.byte		"InitValue_Ref"
	.byte		0
	.4byte		.L560
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L59:
	.sleb128	10
	.byte		"IPDU"
	.byte		0
	.4byte		.L340
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L60:
	.sleb128	10
	.byte		"InvalidIndex"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L61:
	.sleb128	10
	.byte		"BytePosition"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L62:
	.sleb128	10
	.byte		"NotifyFunctionIndex"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L63:
	.sleb128	10
	.byte		"TimeoutFunctionIndex"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L64:
	.sleb128	10
	.byte		"SignalFlagsLT"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L65:
	.sleb128	10
	.byte		"UpdateBitMask"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L66:
	.sleb128	10
	.byte		"NotifyLength"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L67:
	.sleb128	10
	.byte		"MinimumReceiveLength"
	.byte		0
	.4byte		.L537
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L68:
	.sleb128	10
	.byte		"ComXf_Signal"
	.byte		0
	.4byte		.L561
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L559:
.L531:
	.sleb128	9
	.4byte		.L515
	.uleb128	82
	.uleb128	1
	.4byte		.L563-.L2
	.uleb128	4
.L52:
	.sleb128	10
	.byte		"Period"
	.byte		0
	.4byte		.L534
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L53:
	.sleb128	10
	.byte		"Offset"
	.byte		0
	.4byte		.L534
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L563:
.L562:
	.sleb128	9
	.4byte		.L564
	.uleb128	44
	.uleb128	1
	.4byte		.L565-.L2
	.uleb128	20
.L43:
	.sleb128	10
	.byte		"SignBitMask"
	.byte		0
	.4byte		.L517
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L44:
	.sleb128	10
	.byte		"BufferLength"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L45:
	.sleb128	10
	.byte		"Flags"
	.byte		0
	.4byte		.L341
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L46:
	.sleb128	10
	.byte		"Type"
	.byte		0
	.4byte		.L566
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L47:
	.sleb128	10
	.byte		"TransferProperty"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L48:
	.sleb128	10
	.byte		"PackingType"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L49:
	.sleb128	10
	.byte		"Mask1"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L50:
	.sleb128	10
	.byte		"Mask2"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L51:
	.sleb128	10
	.byte		"shift"
	.byte		0
	.4byte		.L324
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L565:
	.section	.debug_info,,n
.L556:
	.sleb128	11
	.4byte		.L568
	.uleb128	69
	.uleb128	1
	.4byte		.L569-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L39:
	.sleb128	10
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L323
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L40:
	.sleb128	10
	.byte		"SduLength"
	.byte		0
	.4byte		.L537
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L569:
	.section	.debug_info,,n
.L567:
	.sleb128	12
	.4byte		.L564
	.uleb128	44
	.uleb128	1
	.4byte		.L570-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	13
	.byte		"COM_BOOLEAN"
	.byte		0
	.sleb128	0
	.sleb128	13
	.byte		"COM_UINT8"
	.byte		0
	.sleb128	1
	.sleb128	13
	.byte		"COM_UINT16"
	.byte		0
	.sleb128	2
	.sleb128	13
	.byte		"COM_UINT32"
	.byte		0
	.sleb128	3
	.sleb128	13
	.byte		"COM_SINT8"
	.byte		0
	.sleb128	4
	.sleb128	13
	.byte		"COM_SINT16"
	.byte		0
	.sleb128	5
	.sleb128	13
	.byte		"COM_SINT32"
	.byte		0
	.sleb128	6
	.sleb128	13
	.byte		"COM_BYTES"
	.byte		0
	.sleb128	7
	.sleb128	13
	.byte		"COM_UINT8_DYN"
	.byte		0
	.sleb128	8
	.sleb128	13
	.byte		"COM_FLOAT32"
	.byte		0
	.sleb128	9
	.sleb128	13
	.byte		"COM_FLOAT64"
	.byte		0
	.sleb128	10
	.sleb128	0
.L570:
	.section	.debug_info,,n
.L319:
	.sleb128	14
	.byte		"Com_SignalsPB"
	.byte		0
	.4byte		.L320
	.section	.debug_info,,n
.L318:
	.sleb128	15
	.4byte		.L319
	.section	.debug_info,,n
.L317:
	.sleb128	16
	.4byte		.L318
	.section	.debug_info,,n
.L325:
	.sleb128	17
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L324:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L325
.L323:
	.sleb128	16
	.4byte		.L324
.L322:
	.sleb128	15
	.4byte		.L323
.L329:
	.sleb128	15
	.4byte		.L324
.L328:
	.sleb128	16
	.4byte		.L329
	.section	.debug_info,,n
.L332:
	.sleb128	18
	.4byte		.L333-.L2
	.4byte		.L329
	.section	.debug_info,,n
	.sleb128	19
	.uleb128	4
	.sleb128	0
.L333:
.L342:
	.sleb128	17
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L341:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L342
.L340:
	.sleb128	14
	.byte		"PduIdType"
	.byte		0
	.4byte		.L341
.L339:
	.sleb128	15
	.4byte		.L340
.L345:
	.sleb128	14
	.byte		"boolean"
	.byte		0
	.4byte		.L325
.L344:
	.sleb128	15
	.4byte		.L345
.L352:
	.sleb128	14
	.byte		"Com_TxIpdu"
	.byte		0
	.4byte		.L353
.L351:
	.sleb128	15
	.4byte		.L352
.L350:
	.sleb128	16
	.4byte		.L351
.L358:
	.sleb128	14
	.byte		"Com_RxIpdu"
	.byte		0
	.4byte		.L359
.L357:
	.sleb128	15
	.4byte		.L358
.L356:
	.sleb128	16
	.4byte		.L357
.L362:
	.sleb128	14
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L341
.L381:
	.sleb128	15
	.4byte		.L362
.L408:
	.sleb128	15
	.4byte		.L350
.L414:
	.sleb128	15
	.4byte		.L341
.L413:
	.sleb128	16
	.4byte		.L414
.L417:
	.sleb128	15
	.4byte		.L317
.L486:
	.sleb128	14
	.byte		"Com_IpduGroupIdType"
	.byte		0
	.4byte		.L341
.L492:
	.sleb128	14
	.byte		"Com_IpduGroup"
	.byte		0
	.4byte		.L493
.L491:
	.sleb128	15
	.4byte		.L492
.L490:
	.sleb128	16
	.4byte		.L491
.L513:
	.sleb128	14
	.byte		"Com_ConfigType"
	.byte		0
	.4byte		.L514
.L512:
	.sleb128	15
	.4byte		.L513
.L511:
	.sleb128	16
	.4byte		.L512
.L518:
	.sleb128	17
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L517:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L518
.L520:
	.sleb128	15
	.4byte		.L517
.L519:
	.sleb128	16
	.4byte		.L520
.L521:
	.sleb128	15
	.4byte		.L490
.L522:
	.sleb128	15
	.4byte		.L356
.L524:
	.sleb128	16
	.4byte		.L522
.L523:
	.sleb128	15
	.4byte		.L524
.L526:
	.sleb128	16
	.4byte		.L381
.L525:
	.sleb128	15
	.4byte		.L526
.L530:
	.sleb128	14
	.byte		"Com_TxModeType"
	.byte		0
	.4byte		.L531
.L529:
	.sleb128	15
	.4byte		.L530
.L528:
	.sleb128	16
	.4byte		.L529
.L527:
	.sleb128	15
	.4byte		.L528
.L534:
	.sleb128	14
	.byte		"Com_Timer"
	.byte		0
	.4byte		.L341
.L533:
	.sleb128	16
	.4byte		.L534
.L532:
	.sleb128	15
	.4byte		.L533
.L537:
	.sleb128	14
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L341
.L536:
	.sleb128	16
	.4byte		.L537
.L535:
	.sleb128	15
	.4byte		.L536
.L538:
	.sleb128	16
	.4byte		.L340
.L541:
	.sleb128	16
	.4byte		.L339
.L540:
	.sleb128	15
	.4byte		.L541
.L545:
	.sleb128	14
	.byte		"Com_RxIPduFlag"
	.byte		0
	.4byte		.L546
.L544:
	.sleb128	16
	.4byte		.L545
.L543:
	.sleb128	15
	.4byte		.L544
.L548:
	.sleb128	16
	.4byte		.L345
.L547:
	.sleb128	15
	.4byte		.L548
.L550:
	.sleb128	14
	.byte		"Com_DeferredNotificationCall"
	.byte		0
	.4byte		.L551
.L549:
	.sleb128	16
	.4byte		.L550
.L555:
	.sleb128	14
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L556
.L557:
	.sleb128	18
	.4byte		.L558-.L2
	.4byte		.L341
	.sleb128	19
	.uleb128	0
	.sleb128	0
.L558:
.L560:
	.sleb128	15
	.4byte		.L328
.L561:
	.sleb128	14
	.byte		"ComXf_SignalsPB"
	.byte		0
	.4byte		.L562
.L566:
	.sleb128	14
	.byte		"Com_SignalType"
	.byte		0
	.4byte		.L567
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L321:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L326:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),0
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo8),0
	.d2locend
.L330:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),4
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),4
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo13),4
	.d2locend
.L343:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),0
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),0
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),0
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),0
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),0
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),0
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),0
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),0
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),0
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),0
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),0
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),0
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),0
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),0
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo51),0
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),0
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),0
	.d2locend
.L346:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo56),4
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo27),4
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),4
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo37),4
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo39),4
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo43),4
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo47),4
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),4
	.d2locend
.L348:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),26
	.d2locend
.L354:
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),31
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo67),31
	.d2locend
.L360:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo70),30
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo30),30
	.d2locend
.L363:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo30),31
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo67),30
	.d2locend
.L369:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo30),29
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo67),29
	.d2locend
.L375:
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo30),28
	.d2locend
.L382:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo76),0
	.d2locend
.L388:
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo30),29
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo67),29
	.d2locend
.L390:
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo74),3
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo43),3
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),3
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo47),3
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),3
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo53),3
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),3
	.d2locend
.L396:
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo67),28
	.d2locend
.L402:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo55),27
	.d2locend
.L409:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),3
	.d2locend
.L411:
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo90),5
	.d2locend
.L415:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo90),6
	.d2locend
.L418:
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo90),0
	.d2locend
.L424:
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),3
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),31
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),31
	.d2locend
.L425:
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo100),4
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),4
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),4
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo99),4
	.d2locend
.L426:
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo96),5
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo100),30
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo108),30
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo102),30
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),30
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),30
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo113),5
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo115),5
	.d2locend
.L428:
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo102),30
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo105),30
	.d2locend
.L430:
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),0
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo114),29
	.d2locend
.L436:
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo119),3
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),31
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),3
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo125),31
	.d2locend
.L437:
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo126),4
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo125),4
	.d2locend
.L438:
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo126),5
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo125),5
	.d2locend
.L440:
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo129),0
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo125),30
	.d2locend
.L442:
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),0
	.d2locreg	%offsetof(.Llo130), %offsetof(.Llo133),29
	.d2locend
.L448:
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo135),3
	.d2locend
.L449:
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo136),4
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),30
	.d2locend
.L450:
	.d2locreg	%offsetof(.Llo134), %offsetof(.Llo136),5
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),28
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo140),5
	.d2locend
.L452:
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo141),29
	.d2locreg	%offsetof(.Llo142), %offsetof(.Llo138),29
	.d2locend
.L454:
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo143),4
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo145),4
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo147),4
	.d2locend
.L456:
	.d2locreg	%offsetof(.Llo148), %offsetof(.Llo143),0
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo141),0
	.d2locreg	%offsetof(.Llo150), %offsetof(.Llo151),0
	.d2locreg	%offsetof(.Llo152), %offsetof(.Llo138),6
	.d2locend
.L458:
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo143),3
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo145),3
	.d2locreg	%offsetof(.Llo154), %offsetof(.Llo151),3
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo156),3
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),3
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo160),3
	.d2locend
.L460:
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo162),5
	.d2locreg	%offsetof(.Llo146), %offsetof(.Llo160),5
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo147),5
	.d2locend
.L466:
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo165),3
	.d2locend
.L467:
	.d2locreg	%offsetof(.Llo164), %offsetof(.Llo165),4
	.d2locend
.L473:
	.d2locreg	%offsetof(.Llo166), %offsetof(.Llo167),3
	.d2locend
.L479:
	.d2locreg	%offsetof(.Llo168), %offsetof(.Llo169),3
	.d2locend
.L485:
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo171),3
	.d2locreg	%offsetof(.Llo172), %offsetof(.Llo173),0
	.d2locreg	%offsetof(.Llo174), %offsetof(.Llo175),3
	.d2locend
.L487:
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo176),4
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo178),4
	.d2locreg	%offsetof(.Llo179), %offsetof(.Llo173),4
	.d2locend
.L488:
	.d2locreg	%offsetof(.Llo170), %offsetof(.Llo180),5
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo182),5
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo176),5
	.d2locreg	%offsetof(.Llo184), %offsetof(.Llo185),5
	.d2locreg	%offsetof(.Llo186), %offsetof(.Llo187),5
	.d2locreg	%offsetof(.Llo188), %offsetof(.Llo189),5
	.d2locreg	%offsetof(.Llo190), %offsetof(.Llo191),5
	.d2locreg	%offsetof(.Llo192), %offsetof(.Llo178),5
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo194),5
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo196),5
	.d2locreg	%offsetof(.Llo197), %offsetof(.Llo198),5
	.d2locreg	%offsetof(.Llo199), %offsetof(.Llo173),5
	.d2locend
.L494:
	.d2locreg	%offsetof(.Llo200), %offsetof(.Llo173),3
	.d2locend
.L496:
	.d2locreg	%offsetof(.Llo201), %offsetof(.Llo187),7
	.d2locreg	%offsetof(.Llo202), %offsetof(.Llo203),7
	.d2locreg	%offsetof(.Llo204), %offsetof(.Llo205),30
	.d2locreg	%offsetof(.Llo206), %offsetof(.Llo207),7
	.d2locreg	%offsetof(.Llo208), %offsetof(.Llo209),7
	.d2locreg	%offsetof(.Llo210), %offsetof(.Llo196),7
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo198),6
	.d2locreg	%offsetof(.Llo212), %offsetof(.Llo213),6
	.d2locend
.L498:
	.d2locreg	%offsetof(.Llo176), %offsetof(.Llo187),4
	.d2locreg	%offsetof(.Llo214), %offsetof(.Llo189),6
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo216),6
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo209),6
	.d2locreg	%offsetof(.Llo178), %offsetof(.Llo196),4
	.d2locend
.L500:
	.d2locreg	%offsetof(.Llo218), %offsetof(.Llo219),4
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo220),4
	.d2locreg	%offsetof(.Llo179), %offsetof(.Llo173),4
	.d2locend
.L502:
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo216),31
	.d2locreg	%offsetof(.Llo222), %offsetof(.Llo209),31
	.d2locend
.L508:
	.d2locreg	%offsetof(.Llo191), %offsetof(.Llo223),5
	.d2locreg	%offsetof(.Llo224), %offsetof(.Llo209),5
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Com_SetIpduGroup"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Com_ClearIpduGroupVector"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "vstar_set"
	.wrcm.end
	.wrcm.nelem "Com_ReceptionDMControl"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Com_ControlVector"
	.wrcm.end
	.wrcm.nelem "Com_IpduGroupControl"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Com_ControlVector"
	.wrcm.end
	.wrcm.nelem "Com_ControlVector"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Com_RxIpduControl","Com_TxIpduControl"
	.wrcm.end
	.wrcm.nelem "Com_RxIpduControl"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Com_InitializeIpdu","SchM_Enter_Com_COM_MAIN_DEFERRED_BACKGROUND","SchM_Enter_Com_COM_MAIN_DEFERRED_FOREGROUND","SchM_Exit_Com_COM_MAIN_DEFERRED_BACKGROUND","SchM_Exit_Com_COM_MAIN_DEFERRED_FOREGROUND","vstar_copy"
	.wrcm.end
	.wrcm.nelem "Com_TxIpduControl"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Com_ClearIpduUpdateBits","Com_InitializeIpdu","SchM_Enter_Com_COM_MAIN_TXIPDU","SchM_Exit_Com_COM_MAIN_TXIPDU"
	.wrcm.end
	.wrcm.nelem "Com_ClearIpduUpdateBits"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Com_InitializeIpdu"
	.wrcm.nint32 "frameSize", 48
	.wrcm.nstrlist "calls", "Com_CopyInitValue","InitializeSignal"
	.wrcm.end
	.wrcm.nelem "InitializeSignal"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "Com_CopyBufferNr","vstar_set"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Com_IpduGroupsHandler.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Com_IpduGroupsHandler.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Com_IpduGroupsHandler.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Com_IpduGroupsHandler.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Com_IpduGroupsHandler.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Com_IpduGroupsHandler.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\Com\ssc\make\..\src\Com_IpduGroupsHandler.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
