#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanIf_MainFunction.c"
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
# FUNC(void, CANIF_CODE) CanIf_MainFunction (void)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_MainFunction.c"
        .d2line         61,24
#$$ld
.L236:

#$$bf	CanIf_MainFunction,interprocedural,rasave,nostackparams
	.globl		CanIf_MainFunction
	.d2_cfa_start __cie
CanIf_MainFunction:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# 
#     /* Variable for holding loop index */
#     VAR(PduIdType, AUTOMATIC) LoopInd;
# 
#     /* Variable for holding bit index */
#     VAR(uint8, AUTOMATIC) BitInd_u8;
# 
#     /* Variable for holding RxPdu index */
#     VAR(PduIdType, AUTOMATIC) RxPduInd;
# 
# 
#     /* Report error to DET if CanIf module is not initialized */
#     if (CANIF_UNINITIALIZED == CanIf_InitStatus_u8)
	.d2line		75
	lis		r3,CanIf_InitStatus_u8@ha
	lbz		r0,CanIf_InitStatus_u8@l(r3)
	se_cmpi		r0,0
	bc		1,2,.L193	# eq
#     {
# /* if DET is enabled REQ: [DEV_CANIF14000] */
# #if( CANIF_DEV_ERROR_DETECT == STD_ON )
#         (void)Det_ReportError( CANIF_MODULE_ID,
#                       CANIF_INSTANCE_ID,
#                       CANIF_SID_MAIN_FUNCTION,
#                       CANIF_E_UNINIT );
# 
# #endif /* End #if( CANIF_DEV_ERROR_DETECT == STD_ON ) */
#     }
#     else
# 
#     {
# 
#         /* check the notify status of all RxPdus for which
#            Interrupt decoupling is enabled */
#         for (LoopInd = 0;
	.d2line		92
	diab.li		r31,0		# LoopInd=r31
.L196:
.Llo1:
	rlwinm		r5,r31,0,16,31		# LoopInd=r31
	lis		r3,CanIf_BufferInfo_p@ha		# vstar_copy8_src=r3
.Llo24:
	lwz		r3,CanIf_BufferInfo_p@l(r3)		# vstar_copy8_src=r3 vstar_copy8_src=r3
	lhz		r0,6(r3)		# vstar_copy8_src=r3
	se_cmp		r5,r0
	bc		0,0,.L193	# ge
#              LoopInd < CanIf_BufferInfo_p->CanIfRxIndStBufferSize_u16;
#              LoopInd++)
#         {
# 
#             /* check if any of the interrupt decoupling flags are set */
#             if (0 != CanIf_RxPduIntDecNotifySt_pu8[LoopInd])
	.d2line		98
.Llo25:
	lis		r3,CanIf_RxPduIntDecNotifySt_pu8@ha		# vstar_copy8_src=r3
.Llo26:
	lwz		r3,CanIf_RxPduIntDecNotifySt_pu8@l(r3)		# vstar_copy8_src=r3 vstar_copy8_src=r3
	rlwinm		r5,r31,0,16,31		# LoopInd=r31
	lbzx		r0,r3,r5		# vstar_copy8_src=r3
	se_cmpi		r0,0
	bc		1,2,.L199	# eq
#             {
#                 /* check each of the interrupt decoupling flags in
#                    current byte */
#                 for (BitInd_u8 = 0;
	.d2line		102
.Llo27:
	diab.li		r30,0		# BitInd_u8=r30
.L200:
.Llo3:
	rlwinm		r29,r30,0,24,31		# RxPduInd=r29 BitInd_u8=r30
.Llo4:
	se_cmpi		r29,8		# RxPduInd=r29
	bc		0,0,.L199	# ge
#                      BitInd_u8 < CANIF_BITS_IN_BYTE;
#                      BitInd_u8++)
#                 {
# 
#                     /* Enter Critical Section*/
#                     SchM_Enter_CanIf( SCHM_CANIF_EXCLUSIVE_AREA_0 );
	.d2line		108
.Llo5:
	diab.li		r3,0		# vstar_copy8_src=r3
	bl		SchM_Enter_CanIf
# 
#                     /* if notify status is set for any of the RxPDUs */
#                     if (CANIF_IS_BIT_SET(CanIf_RxPduIntDecNotifySt_pu8[LoopInd],BitInd_u8))
	.d2line		111
	lis		r3,CanIf_RxPduIntDecNotifySt_pu8@ha		# vstar_copy8_src=r3
.Llo28:
	lwz		r3,CanIf_RxPduIntDecNotifySt_pu8@l(r3)		# vstar_copy8_src=r3 vstar_copy8_src=r3
	rlwinm		r5,r31,0,16,31		# LoopInd=r31
	lbzx		r3,r3,r5		# vstar_copy8_src=r3 vstar_copy8_src=r3
	diab.li		r0,1
	slw		r0,r0,r30		# BitInd_u8=r30
	rlwinm		r0,r0,0,24,31
	and.		r0,r0,r3		# vstar_copy8_src=r3
	bc		1,2,.L203	# eq
	.section	.text_vle
.L251:
#                     {
#                         /* Variable for holding Buffer index */
#                         VAR(uint32, AUTOMATIC) BufferInd;
# 
#                         /* Variable for holding Buffer */
#                         VAR(uint8, AUTOMATIC) Buffer_au8[CANIF_MAX_DLC] = {0};
	.d2line		117
.Llo29:
	lis		r7,.L204@ha
	e_add16i		r7,r7,.L204@l
	diab.addi		r7,r7,-1
	diab.addi		r6,r1,7
	diab.li		r5,4
	mtspr		ctr,r5
.L264:
	lbzu		r4,1(r7)		# vstar_copy8_dst=r4
.Llo16:
	lbzu		r5,1(r7)
	stbu		r4,1(r6)		# vstar_copy8_dst=r4
	stbu		r5,1(r6)
	bc		2,0,.L264
# 
#                         /* Variable for holding data length */
#                         VAR(uint8, AUTOMATIC) PduDLC_u8;
# 
#                         /* generate the RxPduId from indication status buffer index */
#                         RxPduInd = (PduIdType)(LoopInd * (PduIdType)CANIF_BITS_IN_BYTE) + (PduIdType)BitInd_u8;
	.d2line		123
.Llo17:
	rlwinm		r5,r31,3,0,28		# LoopInd=r31
	rlwinm		r29,r30,0,24,31		# RxPduInd=r29 BitInd_u8=r30
.Llo6:
	se_add		r5,r29		# RxPduInd=r29
	mr		r29,r5		# RxPduInd=r29 RxPduInd=r5
# 
#                         /* get the buffer index from RxPdu configuration */
#                         BufferInd = CanIf_RxPduConfigInfo_p[RxPduInd].CanIfRxPduIntDecBufferInd;
	.d2line		126
.Llo7:
	rlwinm		r0,r29,0,16,31		# RxPduInd=r29
.Llo8:
	lis		r3,CanIf_RxPduConfigInfo_p@ha		# BufferInd=r3
.Llo12:
	lwz		r3,CanIf_RxPduConfigInfo_p@l(r3)		# BufferInd=r3 BufferInd=r3
	rlwinm		r4,r0,5,0,26		# vstar_copy8_dst=r4
.Llo18:
	se_slwi		r0,3
	subf		r0,r0,r4		# vstar_copy8_dst=r4
	se_add		r3,r0		# BufferInd=r3 BufferInd=r3
	lwz		r3,8(r3)		# BufferInd=r3 BufferInd=r3
	mr		r3,r3		# BufferInd=r3 BufferInd=r3
# 
#                         /* get the data length of corresponding RxPdu */
#                         PduDLC_u8 = CanIf_RxPduIntDecDataBuf_pu8[BufferInd];
	.d2line		129
	lis		r4,CanIf_RxPduIntDecDataBuf_pu8@ha		# vstar_copy8_dst=r4
	lwz		r4,CanIf_RxPduIntDecDataBuf_pu8@l(r4)		# vstar_copy8_dst=r4 vstar_copy8_dst=r4
	lbzux		r28,r4,r3		# PduDLC_u8=r28 vstar_copy8_dst=r4
.Llo15:
	mr		r28,r28		# PduDLC_u8=r28 PduDLC_u8=r28
# 
#                         /* Update the BufferInd to point to the Rx Data */
#                         BufferInd++;
	.d2line		132
	diab.addi		r0,r3,1		# BufferInd=r3
	addi		r0,r3,1		# BufferInd=r3
	.section	.text_vle
.L265:
# 
#                         /* Copy the buffered data corresponding to RxPduInd */
#                         /* PRQA S 3440++ */ /* ++ used for the most optimal assembly code */
#                         /* PRQA S 2003++ */ /* fall-through in switch is intentional loop unrolling */
#                         /* PRQA S 489++ */  /* pointer increment, MISRA 17.4 violation for performance reasons: MISRA C ADC R1 */
#                         /* PRQA S 2016++ */ /* default statement is intentionally empty */
#                         /* PRQA S 2931++ */ /* pointer arithmetic, MISRA 17.1 violation for performance reasons */
#                         VSTAR_COPY8(Buffer_au8, &CanIf_RxPduIntDecDataBuf_pu8[BufferInd], PduDLC_u8);
	.d2line		140
.Llo9:
	diab.addi		r3,r1,8		# vstar_copy8_dst=r3
.Llo10:
	lis		r3,CanIf_RxPduIntDecDataBuf_pu8@ha		# vstar_copy8_dst=r3
.Llo19:
	lwz		r3,CanIf_RxPduIntDecDataBuf_pu8@l(r3)		# vstar_copy8_dst=r3 vstar_copy8_dst=r3
.Llo13:
	se_add		r0,r3		# BufferInd=r3
.Llo30:
	mr		r3,r0		# vstar_copy8_src=r3 vstar_copy8_src=r0
.Llo14:
	diab.addi		r4,r1,7		# vstar_copy8_dst=r4
.Llo20:
	diab.addi		r3,r3,-1		# vstar_copy8_src=r3 vstar_copy8_src=r3
	rlwinm		r6,r28,0,24,31		# PduDLC_u8=r28
	se_cmpli	r6,8
	se_slwi		r6,2
	e_add2is		r6,.L276@ha
	bc		1,1,.L215	# gt
.Llo31:
	lwz		r7,.L276@l(r6)
.Llo32:
	mtspr		ctr,r7
	bcctr		20,0
.L276:
#$$sl
	.long		.L215
	.long		.L213
	.long		.L212
	.long		.L211
	.long		.L210
	.long		.L209
	.long		.L208
	.long		.L207
	.long		.L206
#$$se
.L206:
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r4)		# vstar_copy8_dst=r4
.L207:
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r4)		# vstar_copy8_dst=r4
.L208:
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r4)		# vstar_copy8_dst=r4
.L209:
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r4)		# vstar_copy8_dst=r4
.L210:
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r4)		# vstar_copy8_dst=r4
.L211:
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r4)		# vstar_copy8_dst=r4
.L212:
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r4)		# vstar_copy8_dst=r4
.L213:
	lbz		r0,1(r3)		# vstar_copy8_src=r3
	stb		r0,1(r4)		# vstar_copy8_dst=r4
.L215:
	.section	.text_vle
.L266:
#                         /* PRQA S 2931-- */ /* pointer arithmetic, MISRA 17.1 violation for performance reasons */
#                         /* PRQA S 2016-- */ /* default statement is intentionally empty */
#                         /* PRQA S 489-- */  /* pointer increment, MISRA 17.4 violation for performance reasons: MISRA C ADC R1 */
#                         /* PRQA S 2003-- */ /* fall-through in switch is intentional loop unrolling */
#                         /* PRQA S 3440-- */ /* ++ used for the most optimal assembly code */
# 
#                         /* MISRA-C: 2004 Rule 21.1 VIOLATION:
#                            Reason: For making the clear mask, we need to
#                            complement a uint8 variable. So while complementing
#                            the MSB becomes 1, which is actually the signed bit.
#                            This creates the problem.
#                            So this warning cannot be removed
#                            Approved/Verified by: Faisal
#                         */
#                         /* Clear the notification status  */
#                         CANIF_CLR_BIT (CanIf_RxPduIntDecNotifySt_pu8[LoopInd], BitInd_u8);
	.d2line		156
.Llo21:
	lis		r3,CanIf_RxPduIntDecNotifySt_pu8@ha		# vstar_copy8_src=r3
.Llo33:
	lwz		r3,CanIf_RxPduIntDecNotifySt_pu8@l(r3)		# vstar_copy8_src=r3 vstar_copy8_src=r3
	rlwinm		r5,r31,0,16,31		# LoopInd=r31
	lbzx		r4,r3,r5		# vstar_copy8_dst=r4 vstar_copy8_src=r3
.Llo22:
	diab.li		r0,1
	slw		r0,r0,r30		# BitInd_u8=r30
	andc		r0,r4,r0		# vstar_copy8_dst=r4
	stbx		r0,r3,r5		# vstar_copy8_src=r3
# 
#                         SchM_Exit_CanIf( SCHM_CANIF_EXCLUSIVE_AREA_0 );
	.d2line		158
	diab.li		r3,0		# vstar_copy8_src=r3
.Llo34:
	bl		SchM_Exit_CanIf
# 
#                         /* Report indication to corresponding upper layer */
#                         CanIf_ReportRxIndication (RxPduInd, PduDLC_u8, Buffer_au8);
	.d2line		161
.Llo23:
	rlwinm		r3,r29,0,16,31		# vstar_copy8_src=r3 RxPduInd=r29
	rlwinm		r4,r28,0,24,31		# vstar_copy8_dst=r4 PduDLC_u8=r28
	diab.addi		r5,r1,8
	bl		CanIf_ReportRxIndication
	.section	.text_vle
.L252:
.Llo11:
	b		.L217
.L203:
# 
#                     } /* End if (CANIF_IS_BIT_SET( CanIf_RxPduIntDecNotifySt_pu8[LoopInd],BitInd_u8)) */
#                     else
#                     {
#                         /* Leave Critical Section*/
#                         SchM_Exit_CanIf( SCHM_CANIF_EXCLUSIVE_AREA_0 );
	.d2line		167
	diab.li		r3,0		# vstar_copy8_src=r3
	bl		SchM_Exit_CanIf
.L217:
# 
#                     } /* End if (CANIF_IS_BIT_SET( CanIf_RxPduIntDecNotifySt_pu8[LoopInd],BitInd_u8)) */
# 
#                 } /* End for (BitInd_u8 = 0;
	.d2line		171
	diab.addi		r29,r30,1		# RxPduInd=r29 BitInd_u8=r30
	se_addi		r30,1		# BitInd_u8=r30 BitInd_u8=r30
	b		.L200
.L199:
#                      BitInd_u8 < CANIF_BITS_IN_BYTE;
#                      BitInd_u8++) */
# 
#             } /* End if (0 != CanIf_RxPduIntDecNotifySt_pu8[LoopInd]) */
# 
#         } /* End for (LoopInd = 0;
	.d2line		177
	diab.addi		r5,r31,1		# LoopInd=r31
	se_addi		r31,1		# LoopInd=r31 LoopInd=r31
	b		.L196
.L193:
#              LoopInd < CanIf_BufferInfo_p->CanIfRxIndStBufferSize_u16;
#              LoopInd++) */
# 
#     } /* End if ( CANIF_UNINITIALIZED == CanIf_InitStatus ) */
# 
# 
# } /* End CanIf_MainFunction () */
	.d2line		184
	.d2epilogue_begin
.Llo2:
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
.L237:
	.type		CanIf_MainFunction,@function
	.size		CanIf_MainFunction,.-CanIf_MainFunction
# Number of nodes = 185

# Allocations for CanIf_MainFunction
#	?a4		$$70
#	?a5		$$69
#	?a6		LoopInd
#	?a7		BitInd_u8
#	?a8		RxPduInd
#	?a9		BufferInd
#	SP,8		Buffer_au8
#	?a10		PduDLC_u8
#	?a11		vstar_copy8_dst
#	?a12		vstar_copy8_src

# Allocations for module
	.section	.text_vle
	.type		.L204,@object
	.size		.L204,8
	.align		2
#	static		__static_init1
.L204:
	.space		8
	.section	.text_vle
#$$ld
.L5:
.L291:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\CanIf_Types.h"
.L278:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\inc\\internal\\CanIf_Private.h"
.L238:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_MainFunction.c"
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
	.uleb128	4
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
	.uleb128	10
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
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
	.uleb128	12
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	13
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	15
	.uleb128	15
	.byte		0x0
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanIf\\ssc\\make\\..\\src\\CanIf_MainFunction.c"
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
.L239:
	.sleb128	2
	.4byte		.L235-.L2
	.byte		"CanIf_MainFunction"
	.byte		0
	.4byte		.L238
	.uleb128	61
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L236
	.4byte		.L237
	.section	.debug_info,,n
.L240:
	.sleb128	3
	.4byte		.L238
	.uleb128	65
	.uleb128	31
	.byte		"LoopInd"
	.byte		0
	.4byte		.L241
	.4byte		.L244
.L245:
	.sleb128	3
	.4byte		.L238
	.uleb128	68
	.uleb128	27
	.byte		"BitInd_u8"
	.byte		0
	.4byte		.L246
	.4byte		.L248
.L249:
	.sleb128	3
	.4byte		.L238
	.uleb128	71
	.uleb128	31
	.byte		"RxPduInd"
	.byte		0
	.4byte		.L241
	.4byte		.L250
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L254
	.4byte		.L251
	.4byte		.L252
.L255:
	.sleb128	3
	.4byte		.L238
	.uleb128	114
	.uleb128	48
	.byte		"BufferInd"
	.byte		0
	.4byte		.L256
	.4byte		.L258
	.section	.debug_info,,n
.L259:
	.sleb128	5
	.4byte		.L238
	.uleb128	117
	.uleb128	47
	.byte		"Buffer_au8"
	.byte		0
	.4byte		.L260
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L262:
	.sleb128	3
	.4byte		.L238
	.uleb128	120
	.uleb128	47
	.byte		"PduDLC_u8"
	.byte		0
	.4byte		.L246
	.4byte		.L263
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L268
	.4byte		.L265
	.4byte		.L266
.L269:
	.sleb128	3
	.4byte		.L238
	.uleb128	140
	.uleb128	25
	.byte		"vstar_copy8_dst"
	.byte		0
	.4byte		.L270
	.4byte		.L271
.L272:
	.sleb128	3
	.4byte		.L238
	.uleb128	140
	.uleb128	25
	.byte		"vstar_copy8_src"
	.byte		0
	.4byte		.L273
	.4byte		.L275
	.section	.debug_info,,n
	.sleb128	0
.L268:
	.section	.debug_info,,n
	.sleb128	0
.L254:
	.section	.debug_info,,n
	.sleb128	0
.L235:
	.section	.debug_info,,n
.L277:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L278
	.uleb128	323
	.uleb128	29
	.byte		"CanIf_InitStatus_u8"
	.byte		0
	.4byte		.L246
	.0byte		.L277
.L279:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L278
	.uleb128	379
	.uleb128	49
	.byte		"CanIf_RxPduIntDecDataBuf_pu8"
	.byte		0
	.4byte		.L270
.L280:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L278
	.uleb128	385
	.uleb128	49
	.byte		"CanIf_RxPduIntDecNotifySt_pu8"
	.byte		0
	.4byte		.L270
.L281:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L278
	.uleb128	436
	.uleb128	1
	.byte		"CanIf_RxPduConfigInfo_p"
	.byte		0
	.4byte		.L282
.L286:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L278
	.uleb128	444
	.uleb128	1
	.byte		"CanIf_BufferInfo_p"
	.byte		0
	.4byte		.L287
	.section	.debug_info,,n
.L290:
	.sleb128	7
	.4byte		.L291
	.uleb128	266
	.uleb128	1
	.4byte		.L292-.L2
	.uleb128	8
	.section	.debug_info,,n
.L175:
	.sleb128	8
	.byte		"CanIfNumberOfTxBuffers_u16"
	.byte		0
	.4byte		.L242
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L176:
	.sleb128	8
	.byte		"RxPduDataBufferSize_u16"
	.byte		0
	.4byte		.L242
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L177:
	.sleb128	8
	.byte		"RxPduIntDecDataBufferSize_u16"
	.byte		0
	.4byte		.L242
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L178:
	.sleb128	8
	.byte		"CanIfRxIndStBufferSize_u16"
	.byte		0
	.4byte		.L242
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L292:
.L285:
	.sleb128	7
	.4byte		.L291
	.uleb128	266
	.uleb128	1
	.4byte		.L293-.L2
	.uleb128	24
.L122:
	.sleb128	8
	.byte		"CanIfCanRxPduCanId"
	.byte		0
	.4byte		.L294
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L123:
	.sleb128	8
	.byte		"CanIfRxPduIdCanIdType"
	.byte		0
	.4byte		.L296
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L124:
	.sleb128	8
	.byte		"CanIfRxPduIntDecBufferInd"
	.byte		0
	.4byte		.L256
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L125:
	.sleb128	8
	.byte		"PduIdRef"
	.byte		0
	.4byte		.L241
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L126:
	.sleb128	8
	.byte		"CanIfCanRxPduHrhRef"
	.byte		0
	.4byte		.L298
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L127:
	.sleb128	8
	.byte		"CanIfCanRxPduIdDlc_u8"
	.byte		0
	.4byte		.L246
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L128:
	.sleb128	8
	.byte		"CanIfRxPduCallBackInd_u8"
	.byte		0
	.4byte		.L246
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L129:
	.sleb128	8
	.byte		"CanIfReadRxPduData_b"
	.byte		0
	.4byte		.L299
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L130:
	.sleb128	8
	.byte		"CanIfReadRxPduNotifyStatus_b"
	.byte		0
	.4byte		.L299
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L131:
	.sleb128	8
	.byte		"CanIfCanDriverRef_u8"
	.byte		0
	.4byte		.L246
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L132:
	.sleb128	8
	.byte		"CanIfRxPduIntDecoupling_b"
	.byte		0
	.4byte		.L299
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L293:
	.section	.debug_info,,n
.L297:
	.sleb128	9
	.4byte		.L291
	.uleb128	185
	.uleb128	1
	.4byte		.L300-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"CANIF_RX_CANID_EXTENDED"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"CANIF_RX_CANID_STANDARD"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"CANIF_RX_CANID_EXTENDED_FD"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"CANIF_RX_CANID_STANDARD_FD"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"CANIF_RX_CANID_EXTENDED_NO_FD"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"CANIF_RX_CANID_STANDARD_NO_FD"
	.byte		0
	.sleb128	5
	.sleb128	0
.L300:
	.section	.debug_info,,n
.L243:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L242:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L243
.L241:
	.sleb128	12
	.byte		"PduIdType"
	.byte		0
	.4byte		.L242
.L247:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L246:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L247
.L257:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L256:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L257
	.section	.debug_info,,n
.L260:
	.sleb128	13
	.4byte		.L261-.L2
	.4byte		.L246
	.section	.debug_info,,n
	.sleb128	14
	.uleb128	7
	.sleb128	0
.L261:
	.section	.debug_info,,n
.L270:
	.sleb128	15
	.4byte		.L246
	.section	.debug_info,,n
.L274:
	.sleb128	16
	.4byte		.L246
.L273:
	.sleb128	15
	.4byte		.L274
.L284:
	.sleb128	12
	.byte		"CanIfRxPduConfigInfo_t"
	.byte		0
	.4byte		.L285
.L283:
	.sleb128	16
	.4byte		.L284
.L282:
	.sleb128	15
	.4byte		.L283
.L289:
	.sleb128	12
	.byte		"CanIfBufferInfo_t"
	.byte		0
	.4byte		.L290
.L288:
	.sleb128	16
	.4byte		.L289
.L287:
	.sleb128	15
	.4byte		.L288
.L295:
	.sleb128	12
	.byte		"Can_IdType"
	.byte		0
	.4byte		.L256
.L294:
	.sleb128	12
	.byte		"CanIfCanId_t"
	.byte		0
	.4byte		.L295
.L296:
	.sleb128	12
	.byte		"CanIfRxPduCanIdType_t"
	.byte		0
	.4byte		.L297
.L298:
	.sleb128	12
	.byte		"CanIf_HrhIndexType"
	.byte		0
	.4byte		.L242
.L299:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L247
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L244:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),31
	.d2locend
.L248:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo2),30
	.d2locend
.L250:
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo5),29
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),29
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),5
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),29
	.d2locend
.L258:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locend
.L263:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo11),28
	.d2locend
.L271:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),4
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo9),4
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),4
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),4
	.d2locend
.L275:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),0
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanIf_MainFunction"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "CanIf_ReportRxIndication","SchM_Enter_CanIf","SchM_Exit_CanIf"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_MainFunction.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_MainFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_MainFunction.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanIf_MainFunction.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanIf_MainFunction.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanIf_MainFunction.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanIf\ssc\make\..\src\CanIf_MainFunction.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
