#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Com_SignalProcessing.c"
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
# FUNC(void, COM_CODE) Com_CopyBufferNr(
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_SignalProcessing.c"
        .d2line         74,22
#$$ld
.L199:

#$$bf	Com_CopyBufferNr,interprocedural,rasave,nostackparams
	.globl		Com_CopyBufferNr
	.d2_cfa_start __cie
Com_CopyBufferNr:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# BufferLength=r0
	.d2_cfa_offset    108,-1
	mr		r31,r3		# SourceBuffer=r31 SourceBuffer=r3
.Llo2:
	mr		r3,r4		# DestinationBuffer=r3 DestinationBuffer=r4
.Llo3:
	mr		r5,r5		# BufferLength=r5 BufferLength=r5
.Llo5:
	mr		r6,r6		# Mask1=r6 Mask1=r6
	mr		r7,r7		# Mask2=r7 Mask2=r7
	.d2prologue_end
#         CONSTP2CONST(uint8, AUTOMATIC, COM_APPL_DATA) SourceBuffer,
#         CONSTP2VAR(uint8, AUTOMATIC, COM_APPL_DATA) DestinationBuffer,
#         VAR(uint16, AUTOMATIC) BufferLength,
#         CONST (uint8, AUTOMATIC) Mask1,
#         CONST (uint8, AUTOMATIC) Mask2)
# {
#     /* MISRA 17.4 This function is heavily using pointer indexing. */
#     /* The underlying functionality requires this and the parameter */
#     /* is handed over as pointer */
#     /* PRQA S 0492 8 */
#     BufferLength--;
	.d2line		85
	diab.li		r0,65535		# BufferLength=r0
	se_add		r0,r5		# BufferLength=r0 BufferLength=r0 BufferLength=r5
	mr		r0,r0		# BufferLength=r0 BufferLength=r0
#     /* PRQA S 0402 2 */ /* False positive report, PRQA CR 20859 */
#     VSTAR_REPLACEBYMASK(DestinationBuffer[0],SourceBuffer[0],Mask1);
	.d2line		87
	lbz		r5,0(r3)		# BufferLength=r5 DestinationBuffer=r3
.Llo9:
	lbz		r4,0(r31)		# BufferLength=r4 SourceBuffer=r31
.Llo10:
	xor		r4,r4,r5		# BufferLength=r4 BufferLength=r4 BufferLength=r5
	and		r4,r4,r6		# BufferLength=r4 BufferLength=r4 Mask1=r6
	xor		r4,r4,r5		# BufferLength=r4 BufferLength=r4 BufferLength=r5
	stb		r4,0(r3)		# DestinationBuffer=r3 BufferLength=r4
#     VSTAR_REPLACEBYMASK(DestinationBuffer[BufferLength],SourceBuffer[BufferLength],Mask2);
	.d2line		88
	rlwinm		r5,r0,0,16,31		# BufferLength=r5 BufferLength=r0
	add		r4,r5,r3		# BufferLength=r4 BufferLength=r5 DestinationBuffer=r3
	lbzx		r8,r5,r3		# BufferLength=r5 DestinationBuffer=r3
	mr		r4,r5		# BufferLength=r4
	lbzux		r6,r4,r3		# Mask1=r6 BufferLength=r4
	mr		r4,r5		# BufferLength=r4
	lbzux		r9,r4,r31		# BufferLength=r4
	xor		r4,r6,r9		# BufferLength=r4 Mask1=r6
	and		r4,r4,r7		# BufferLength=r4 BufferLength=r4 Mask2=r7
	xor		r4,r8,r4		# BufferLength=r4 BufferLength=r4
	stbx		r4,r5,r3		# BufferLength=r5 DestinationBuffer=r3 BufferLength=r4
#     if(BufferLength > 1U)
	.d2line		89
	se_cmpli	r5,1		# BufferLength=r5
	bc		0,1,.L168	# le
#     {
#         --BufferLength;
	.d2line		91
.Llo6:
	diab.li		r5,65535		# BufferLength=r5
.Llo11:
	se_add		r0,r5		# BufferLength=r0 BufferLength=r0 BufferLength=r5
	mr		r5,r0		# BufferLength=r5 BufferLength=r0
#         COM_COPY_EXTERNAL(&DestinationBuffer[1],&SourceBuffer[1],(uint32)BufferLength);
	.d2line		92
.Llo7:
	se_addi		r3,1		# DestinationBuffer=r3 DestinationBuffer=r3
.Llo8:
	diab.addi		r4,r31,1		# BufferLength=r4 SourceBuffer=r31
	rlwinm		r5,r5,0,16,31		# BufferLength=r5 BufferLength=r5
	bl		vstar_copy
.L168:
#     }
# }
	.d2line		94
	.d2epilogue_begin
.Llo4:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# BufferLength=r0
	mtspr		lr,r0		# BufferLength=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L200:
	.type		Com_CopyBufferNr,@function
	.size		Com_CopyBufferNr,.-Com_CopyBufferNr
# Number of nodes = 50

# Allocations for Com_CopyBufferNr
#	?a4		SourceBuffer
#	?a5		DestinationBuffer
#	?a6		BufferLength
#	?a7		Mask1
#	?a8		Mask2
#	?a9		$$39
# FUNC(boolean, COM_CODE) Com_CopyBuffer(
	.align		2
	.section	.text_vle
        .d2line         96,25
#$$ld
.L219:

#$$bf	Com_CopyBuffer,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r9,r10,r31,cr0,lr
	.globl		Com_CopyBuffer
	.d2_cfa_start __cie
Com_CopyBuffer:
.Llo12:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# BufferLength=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# SourceBuffer=r3 SourceBuffer=r3
	mr		r4,r4		# DestinationBuffer=r4 DestinationBuffer=r4
	mr		r5,r5		# BufferLength=r5 BufferLength=r5
	mr		r6,r6		# Mask1=r6 Mask1=r6
	mr		r7,r7		# Mask2=r7 Mask2=r7
	.d2prologue_end
#         CONSTP2CONST(uint8, AUTOMATIC, COM_APPL_DATA) SourceBuffer,
#         CONSTP2VAR(uint8, AUTOMATIC, COM_APPL_DATA) DestinationBuffer,
#         VAR(uint16, AUTOMATIC) BufferLength,
#         CONST(uint8, AUTOMATIC) Mask1,
#         CONST(uint8, AUTOMATIC) Mask2)
# {
#     /* MISRA 17.4 This function is heavily using pointer indexing. */
#     /* The underlying functionality requires this and the parameter */
#     /* is handed over as pointer */
#     /* PRQA S 0492 32 */ /* PRQA S 0489 32 */ /* PRQA S 0490 32 */
#     P2CONST(uint8, AUTOMATIC, COM_APPL_DATA) SrcPtr;
#     P2VAR(uint8, AUTOMATIC, COM_APPL_DATA) DstPtr;
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#     VAR(uint8, AUTOMATIC) IsBuffersDifferent;
# #endif
#     /* Index to last element */
#     --BufferLength;
	.d2line		113
	diab.li		r0,65535		# BufferLength=r0
	se_add		r0,r5		# BufferLength=r0 BufferLength=r0 BufferLength=r5
	mr		r0,r0		# BufferLength=r0 BufferLength=r0
# 
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#     IsBuffersDifferent =
#             VSTAR_MISMATCHBYMASK_RAW(DestinationBuffer[0],SourceBuffer[0],Mask1) |
#             VSTAR_MISMATCHBYMASK_RAW(DestinationBuffer[BufferLength],SourceBuffer[BufferLength],Mask2);
# #endif
#     /* PRQA S 0402 4 */ /* False positive report, PRQA CR 20859 */
#     /* Copy first byte*/
#     VSTAR_REPLACEBYMASK(DestinationBuffer[0],SourceBuffer[0],Mask1);
	.d2line		122
	lbz		r31,0(r4)		# DestinationBuffer=r4
	lbz		r5,0(r3)		# BufferLength=r5 SourceBuffer=r3
.Llo15:
	xor		r5,r5,r31		# BufferLength=r5 BufferLength=r5
.Llo16:
	and		r5,r5,r6		# BufferLength=r5 BufferLength=r5 Mask1=r6
	xor		r5,r5,r31		# BufferLength=r5 BufferLength=r5
	stb		r5,0(r4)		# DestinationBuffer=r4 BufferLength=r5
#     /* Copy last byte */
#     VSTAR_REPLACEBYMASK(DestinationBuffer[BufferLength],SourceBuffer[BufferLength],Mask2);
	.d2line		124
	rlwinm		r6,r0,0,16,31		# Mask1=r6 BufferLength=r0
	add		r5,r6,r4		# BufferLength=r5 Mask1=r6 DestinationBuffer=r4
	lbzx		r9,r6,r4		# Mask1=r6 DestinationBuffer=r4
	mr		r5,r6		# Mask1=r5
	lbzux		r8,r5,r4		# Mask1=r5
	mr		r5,r6		# Mask1=r5
	lbzux		r10,r5,r3		# Mask1=r5
	xor		r5,r8,r10		# Mask1=r5
	and		r5,r5,r7		# Mask1=r5 Mask1=r5 Mask2=r7
	xor		r5,r9,r5		# Mask1=r5 Mask1=r5
	stbx		r5,r6,r4		# Mask1=r6 DestinationBuffer=r4 Mask1=r5
# 
#     /* Copy all bytes between first and last */
#     SrcPtr = &SourceBuffer[1];
	.d2line		127
	diab.addi		r5,r3,1		# Mask1=r5 SourceBuffer=r3
	addi		r5,r3,1		# Mask1=r5 SourceBuffer=r3
#     DstPtr = &DestinationBuffer[1];
	.d2line		128
.Llo21:
	se_addi		r4,1		# DestinationBuffer=r4 DestinationBuffer=r4
.Llo14:
	mr		r4,r4		# DstPtr=r4 DstPtr=r4
	.section	.text_vle
.L232:
#     {
#         CONSTP2CONST(uint8, AUTOMATIC, COM_APPL_DATA) LimitPtr = &SourceBuffer[BufferLength];
	.d2line		130
.Llo20:
	rlwinm		r0,r0,0,16,31		# BufferLength=r0 BufferLength=r0
	se_add		r0,r3		# BufferLength=r0 BufferLength=r0 SourceBuffer=r3
.Llo17:
	mr		r3,r0		# LimitPtr=r3 LimitPtr=r0
.L172:
#         while(SrcPtr < LimitPtr)
	.d2line		131
.Llo13:
	se_cmpl		r5,r3		# SrcPtr=r5 LimitPtr=r3
.Llo22:
	bc		0,0,.L173	# ge
#         {
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#             IsBuffersDifferent |= (*SrcPtr) ^ (*DstPtr);
# #endif /* COM_ENABLE_TRIGGERED_ON_CHANGE */
#             *DstPtr = *SrcPtr;
	.d2line		136
	lbz		r0,0(r5)		# BufferLength=r0 SrcPtr=r5
.Llo18:
	stb		r0,0(r4)		# DstPtr=r4 BufferLength=r0
#             ++SrcPtr;
	.d2line		137
	se_addi		r5,1		# SrcPtr=r5 SrcPtr=r5
#             ++DstPtr;
	.d2line		138
	se_addi		r4,1		# DstPtr=r4 DstPtr=r4
	b		.L172
.L173:
	.section	.text_vle
.L233:
#         }
#     }
# 
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#     return (IsBuffersDifferent != 0U) ? TRUE : FALSE;
# #else
#     return FALSE;
	.d2line		145
.Llo19:
	diab.li		r3,0		# LimitPtr=r3
# #endif
# }
	.d2line		147
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# BufferLength=r0
	mtspr		lr,r0		# BufferLength=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L220:
	.type		Com_CopyBuffer,@function
	.size		Com_CopyBuffer,.-Com_CopyBuffer
# Number of nodes = 62

# Allocations for Com_CopyBuffer
#	?a4		SourceBuffer
#	?a5		DestinationBuffer
#	?a6		BufferLength
#	?a7		Mask1
#	?a8		Mask2
#	?a9		$$40
#	?a10		SrcPtr
#	?a11		DstPtr
#	?a12		LimitPtr
# FUNC(void, COM_CODE) Com_CopyBufferReversedNr(
	.align		2
	.section	.text_vle
        .d2line         149,22
#$$ld
.L240:

#$$bf	Com_CopyBufferReversedNr,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r9,r30,r31,cr0,lr
	.globl		Com_CopyBufferReversedNr
	.d2_cfa_start __cie
Com_CopyBufferReversedNr:
.Llo23:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# SourceBuffer=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# SourceBuffer=r3 SourceBuffer=r3
	mr		r4,r4		# DestinationBuffer=r4 DestinationBuffer=r4
	mr		r5,r5		# BufferLength=r5 BufferLength=r5
.Llo28:
	mr		r6,r6		# Mask1=r6 Mask1=r6
	mr		r0,r7		# Mask2=r0 Mask2=r7
	.d2prologue_end
#         CONSTP2CONST(uint8, AUTOMATIC, COM_APPL_DATA) SourceBuffer,
#         CONSTP2VAR(uint8, AUTOMATIC, COM_APPL_DATA) DestinationBuffer,
#         VAR(uint16, AUTOMATIC) BufferLength,
#         CONST(uint8, AUTOMATIC) Mask1,
#         CONST(uint8, AUTOMATIC) Mask2)
# {
#     /* MISRA 17.4 This function is heavily using pointer indexing. */
#     /* The underlying functionality requires this and the parameter */
#     /* is handed over as pointer */
#     /* PRQA S 0492 19 */ /* PRQA S 0489 19 */ /* PRQA S 0490 19 */
#     /* Update ONLY Related Part to the signal */
#     P2CONST(uint8, AUTOMATIC, COM_APPL_DATA) SrcPtr;
#     P2VAR(uint8, AUTOMATIC, COM_APPL_DATA) DestPtr;
#     P2CONST(uint8, AUTOMATIC, COM_APPL_DATA) LimitPtr;
#     /* Index to last element */
#     --BufferLength;
	.d2line		165
	diab.li		r7,65535		# SourceBuffer=r7
.Llo29:
	se_add		r5,r7		# Mask2=r5 Mask2=r5 BufferLength=r7
	mr		r7,r5		# BufferLength=r7 BufferLength=r5
#     /* PRQA S 0402 2 */ /* False positive report, PRQA CR 20859 */
#     VSTAR_REPLACEBYMASK(DestinationBuffer[BufferLength],SourceBuffer[0],Mask1);
	.d2line		167
.Llo30:
	rlwinm		r7,r7,0,16,31		# BufferLength=r7 BufferLength=r7
.Llo31:
	add		r31,r7,r4		# DestPtr=r31 BufferLength=r7 DestinationBuffer=r4
.Llo35:
	lbzx		r8,r7,r4		# BufferLength=r7 DestinationBuffer=r4
	mr		r5,r7		# BufferLength=r5
	lbzux		r9,r5,r4		# BufferLength=r5
	lbz		r5,0(r3)		# BufferLength=r5 SourceBuffer=r3
	xor		r5,r9,r5		# BufferLength=r5 BufferLength=r5
	and		r5,r5,r6		# BufferLength=r5 BufferLength=r5 Mask1=r6
	xor		r5,r8,r5		# BufferLength=r5 BufferLength=r5
	stbx		r5,r7,r4		# BufferLength=r7 DestinationBuffer=r4 BufferLength=r5
#     VSTAR_REPLACEBYMASK(DestinationBuffer[0],SourceBuffer[BufferLength],Mask2);
	.d2line		168
	lbz		r30,0(r4)		# DestinationBuffer=r4
	mr		r5,r7		# BufferLength=r5
	lbzux		r6,r5,r3		# Mask1=r6 BufferLength=r5
	xor		r5,r30,r6		# BufferLength=r5 Mask1=r6
.Llo33:
	and		r0,r0,r5		# SourceBuffer=r0 SourceBuffer=r0 Mask2=r5
	xor		r0,r0,r30		# SourceBuffer=r0 SourceBuffer=r0
	stb		r0,0(r4)		# DestinationBuffer=r4 SourceBuffer=r0
# 
#     SrcPtr = &SourceBuffer[1];
	.d2line		170
	diab.addi		r4,r3,1		# DestinationBuffer=r4 SourceBuffer=r3
.Llo27:
	addi		r4,r3,1		# DestinationBuffer=r4 SourceBuffer=r3
#     DestPtr = &DestinationBuffer[BufferLength];
	.d2line		171
.Llo34:
	mr		r31,r31		# DestPtr=r31 DestPtr=r31
#     --DestPtr;
	.d2line		172
	diab.addi		r31,r31,-1		# DestPtr=r31 DestPtr=r31
#     LimitPtr = &SourceBuffer[BufferLength];
	.d2line		173
	se_add		r3,r7		# SourceBuffer=r3 SourceBuffer=r3 SourceBuffer=r7
.Llo24:
	mr		r3,r3		# LimitPtr=r3 LimitPtr=r3
.L177:
#     while(SrcPtr < LimitPtr)
	.d2line		174
.Llo32:
	se_cmpl		r4,r3		# SrcPtr=r4 LimitPtr=r3
	bc		0,0,.L176	# ge
#     {
#         *DestPtr = *SrcPtr;
	.d2line		176
	lbz		r0,0(r4)		# SourceBuffer=r0 SrcPtr=r4
.Llo25:
	stb		r0,0(r31)		# DestPtr=r31 SourceBuffer=r0
#         ++SrcPtr;
	.d2line		177
	se_addi		r4,1		# SrcPtr=r4 SrcPtr=r4
#         --DestPtr;
	.d2line		178
	diab.addi		r31,r31,-1		# DestPtr=r31 DestPtr=r31
	b		.L177
.L176:
#     }
# }
	.d2line		180
	.d2epilogue_begin
.Llo26:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# SourceBuffer=r0
	mtspr		lr,r0		# SourceBuffer=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L241:
	.type		Com_CopyBufferReversedNr,@function
	.size		Com_CopyBufferReversedNr,.-Com_CopyBufferReversedNr
# Number of nodes = 63

# Allocations for Com_CopyBufferReversedNr
#	?a4		SourceBuffer
#	?a5		DestinationBuffer
#	?a6		BufferLength
#	?a7		Mask1
#	?a8		Mask2
#	?a9		$$41
#	?a10		SrcPtr
#	?a11		DestPtr
#	?a12		LimitPtr
# FUNC(void, COM_CODE) Com_UnPackSignal(
	.align		2
	.section	.text_vle
        .d2line         382,22
#$$ld
.L256:

#$$bf	Com_UnPackSignal,interprocedural,rasave,nostackparams
	.globl		Com_UnPackSignal
	.d2_cfa_start __cie
Com_UnPackSignal:
.Llo36:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)		# SourceBuffer=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# Id=r3 Id=r3
	mr		r4,r4		# DestinationBuffer=r4 DestinationBuffer=r4
	mr.		r0,r5		# SourceBuffer=?a6 SourceBuffer=r5
	.d2prologue_end
#         CONST(Com_SignalIdType, AUTOMATIC) Id,
#         CONSTP2VAR(uint8, AUTOMATIC, COM_APPL_DATA) DestinationBuffer,
#         CONSTP2CONST(uint8, AUTOMATIC, COM_APPL_CONST_PB) SourceBuffer
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#         ,CONST(uint16, AUTOMATIC) Length
# #endif
# #if COM_ENABLE_TMS == STD_ON
#         ,CONST(boolean, AUTOMATIC) SignExtension
# #endif
# )
# {
#     P2CONST(uint8, AUTOMATIC, COM_APPL_CONST_PB) srcp;
#     if(SourceBuffer != NULL_PTR)
	.d2line		395
.Llo44:
	bc		1,2,.L192	# eq
#     {
#         /* set the used buffer for unpacking to argument source buffer */
#         srcp  = SourceBuffer;
	.d2line		398
	mr		r0,r0		# srcp=r0 srcp=r0
	b		.L193
.L192:
#     }
#     else
#     {
#         /* set signal source buffer to foreground buffer */
#         srcp  = Com_Main->Signals_Ref[Id].ForeGroundBuffer_Ref;
	.d2line		403
.Llo45:
	rlwinm		r0,r3,0,16,31		# SourceBuffer=r0 Id=r3
.Llo40:
	lis		r5,Com_Main@ha
.Llo41:
	lwz		r5,Com_Main@l(r5)
	lwz		r5,36(r5)
	rlwinm		r6,r0,6,0,25		# SourceBuffer=r0
	se_slwi		r0,3		# SourceBuffer=r0 SourceBuffer=r0
	subf		r0,r0,r6		# SourceBuffer=r0 SourceBuffer=r0
	lwzx		r0,r5,r0		# SourceBuffer=r0
.Llo42:
	mr		r0,r0		# srcp=r0 srcp=r0
.L193:
#     }
# 
#     ComXf_UnPackSignal(srcp, DestinationBuffer, &Com_Main->Signals_Ref[Id].ComXf_Signal
	.d2line		406
.Llo38:
	rlwinm		r5,r3,0,16,31		# Id=r3
.Llo43:
	lis		r3,Com_Main@ha		# Id=r3
	lwz		r3,Com_Main@l(r3)		# Id=r3 Id=r3
	lwz		r6,36(r3)		# Id=r3
	rlwinm		r3,r5,6,0,25		# Id=r3
	se_slwi		r5,3
	subf		r5,r5,r3		# Id=r3
	se_add		r6,r5
	diab.addi		r5,r6,36
	mr		r3,r0		# srcp=r3 srcp=r0
.Llo37:
	mr		r4,r4		# DestinationBuffer=r4 DestinationBuffer=r4
.Llo39:
	diab.li		r6,1
	bl		ComXf_UnPackSignal
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#                        , Length
# #endif
# #if COM_ENABLE_TMS == STD_ON
#                        ,SignExtension
# #else
#                        ,TRUE
# #endif
#                        );
# 
# }
	.d2line		417
	.d2epilogue_begin
.Llo46:
	lwz		r0,20(r1)		# SourceBuffer=r0
	mtspr		lr,r0		# SourceBuffer=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L257:
	.type		Com_UnPackSignal,@function
	.size		Com_UnPackSignal,.-Com_UnPackSignal
# Number of nodes = 39

# Allocations for Com_UnPackSignal
#	?a4		Id
#	?a5		DestinationBuffer
#	?a6		SourceBuffer
#	?a7		$$44
#	?a8		$$43
#	?a9		srcp
# FUNC(void, COM_CODE) Com_CopyInitValue(
	.align		2
	.section	.text_vle
        .d2line         192,22
#$$ld
.L268:

#$$bf	Com_CopyInitValue,interprocedural,rasave,nostackparams
	.globl		Com_CopyInitValue
	.d2_cfa_start __cie
Com_CopyInitValue:
.Llo47:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# SignalId=r31 SignalId=r3
	mr		r30,r4		# DestinationBuffer=r30 DestinationBuffer=r4
	.d2prologue_end
#         CONST(Com_SignalIdType, AUTOMATIC) SignalId,
#         CONSTP2VAR(uint8, AUTOMATIC, COM_APPL_DATA) DestinationBuffer)
# {
#     CONSTP2CONST(Com_SignalsPB,AUTOMATIC,COM_CONST_PB) SignalPB_Ref = &(Com_Main->Signals_Ref[SignalId]);
	.d2line		196
.Llo54:
	rlwinm		r0,r31,0,16,31		# SignalId=r31
	lis		r3,Com_Main@ha
.Llo48:
	lwz		r3,Com_Main@l(r3)
	lwz		r4,36(r3)		# SignalPB_Ref=r4
.Llo51:
	rlwinm		r3,r0,6,0,25
	se_slwi		r0,3
	subf		r0,r0,r3
	se_add		r0,r4		# SignalPB_Ref=r4
	mr		r4,r0		# SignalPB_Ref=r4 SignalPB_Ref=r0
#     if(SignalPB_Ref->InitValue_Ref != NULL_PTR)
	.d2line		197
.Llo55:
	lwz		r0,16(r4)		# SignalPB_Ref=r4
	se_cmpi		r0,0
	bc		1,2,.L182	# eq
	.section	.text_vle
.L280:
#     {
# #if COM_ENABLE_DIRECT_PACKING == STD_ON
#         /* direct packing types,(Types that support direct packing(uint8_N,
#            uint8_Dyn,Float32,Float64) should have Type greater than COM_BYTES) */
#         if(SignalPB_Ref->ComXf_Signal.Type >= COM_BYTES)
#         {
#             CONST(uint16, AUTOMATIC) shadowSignalLength = GetSignalLength(&SignalPB_Ref->ComXf_Signal);
#             COM_COPY_EXTERNAL(DestinationBuffer, SignalPB_Ref->InitValue_Ref, (uint32) shadowSignalLength);
#         }
#         else
# #endif /* COM_ENABLE_DIRECT_PACKING */
#         {
#             VAR(uint8, AUTOMATIC) tmp_buf[MAX_SIGNAL_SIZE];
#             /* Copy init value to tmp_buf */
#             Com_CopyBufferNr(SignalPB_Ref->InitValue_Ref,
	.d2line		212
.Llo49:
	lwz		r3,16(r4)		# SignalId=r3 SignalPB_Ref=r4
	lhz		r5,40(r4)		# SignalPB_Ref=r4
	lbz		r6,50(r4)		# SignalPB_Ref=r4
	lbz		r7,51(r4)		# SignalPB_Ref=r4
	diab.addi		r4,r1,8		# SignalPB_Ref=r4
.Llo56:
	bl		Com_CopyBufferNr
#                              tmp_buf,
#                              SignalPB_Ref->ComXf_Signal.BufferLength,
#                              SignalPB_Ref->ComXf_Signal.Mask1,
#                              SignalPB_Ref->ComXf_Signal.Mask2);
# 
#             /* Unpack signal to DestinationBuffer */
#             Com_UnPackSignal(SignalId, DestinationBuffer, tmp_buf
	.d2line		219
	diab.addi		r5,r1,8
	mr		r3,r31		# SignalId=r3 SignalId=r31
	mr		r4,r30		# DestinationBuffer=r4 DestinationBuffer=r30
	bl		Com_UnPackSignal
	.section	.text_vle
.L281:
.Llo50:
	b		.L181
.L182:
	.section	.text_vle
.L287:
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#                     ,SignalPB_Ref->ComXf_Signal.BufferLength
# #endif
# #if COM_ENABLE_TMS == STD_ON
#                     ,TRUE
# #endif
#                     );
#         }
#     }
#     else
#     {
#         CONST(uint16, AUTOMATIC) shadowSignalLength = GetSignalLength(&SignalPB_Ref->ComXf_Signal);
	.d2line		231
.Llo52:
	diab.addi		r3,r4,36		# SignalPB_Ref=r3 SignalPB_Ref=r4
	bl		GetSignalLength
.Llo57:
	mr		r5,r3		# shadowSignalLength=r5 shadowSignalLength=r3
#         vstar_set(DestinationBuffer, 0, (uint32) shadowSignalLength);
	.d2line		232
	rlwinm		r5,r5,0,16,31		# shadowSignalLength=r5 shadowSignalLength=r5
	mr		r3,r30		# DestinationBuffer=r3 DestinationBuffer=r30
.Llo58:
	diab.li		r4,0		# SignalPB_Ref=r4
	bl		vstar_set
	.section	.text_vle
.L288:
.L181:
#     }
# }
	.d2line		234
	.d2epilogue_begin
.Llo53:
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
.L269:
	.type		Com_CopyInitValue,@function
	.size		Com_CopyInitValue,.-Com_CopyInitValue
# Number of nodes = 73

# Allocations for Com_CopyInitValue
#	?a4		SignalId
#	?a5		DestinationBuffer
#	?a6		$$45
#	?a7		SignalPB_Ref
#	SP,8		tmp_buf
#	?a8		shadowSignalLength
# FUNC(boolean, COM_CODE) Com_CopyBufferReversed(
	.align		2
	.section	.text_vle
        .d2line         307,25
#$$ld
.L296:

#$$bf	Com_CopyBufferReversed,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r9,r31,cr0,lr
	.globl		Com_CopyBufferReversed
	.d2_cfa_start __cie
Com_CopyBufferReversed:
.Llo59:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# BufferLength=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# SourceBuffer=r3 SourceBuffer=r3
.Llo71:
	mr		r4,r4		# DestinationBuffer=r4 DestinationBuffer=r4
	mr		r5,r5		# BufferLength=r5 BufferLength=r5
.Llo62:
	mr		r6,r6		# Mask1=r6 Mask1=r6
	mr		r0,r7		# Mask2=r0 Mask2=r7
	.d2prologue_end
#         CONSTP2CONST(uint8, AUTOMATIC, COM_APPL_DATA) SourceBuffer,
#         CONSTP2VAR(uint8, AUTOMATIC, COM_APPL_DATA) DestinationBuffer,
#         VAR(uint16, AUTOMATIC) BufferLength,
#         CONST(uint8, AUTOMATIC) Mask1,
#         CONST(uint8, AUTOMATIC) Mask2)
# {
#     /* MISRA 17.4 This function is heavily using pointer indexing. */
#     /* The underlying functionality requires this and the parameter */
#     /* is handed over as pointer */
#     /* PRQA S 0492 30 */ /* PRQA S 0489 30 */ /* PRQA S 0490 30 */
#     P2CONST(uint8, AUTOMATIC, COM_APPL_DATA) SrcPtr;
#     P2VAR(uint8, AUTOMATIC, COM_APPL_DATA) DstPtr;
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#     VAR(uint8, AUTOMATIC) IsBuffersDifferent;
# #endif
#     /* Index to last element */
#     --BufferLength;
	.d2line		324
.Llo63:
	diab.li		r7,65535		# BufferLength=r7
.Llo67:
	se_add		r5,r7		# SrcPtr=r5 SrcPtr=r5 BufferLength=r7
.Llo70:
	mr		r7,r5		# BufferLength=r7 BufferLength=r5
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
# 
#     IsBuffersDifferent =
#             VSTAR_MISMATCHBYMASK_RAW(DestinationBuffer[BufferLength],SourceBuffer[0],Mask1) |
#             VSTAR_MISMATCHBYMASK_RAW(DestinationBuffer[0],SourceBuffer[BufferLength],Mask2);
# #endif
#     /* PRQA S 0402 2 */ /* False positive report, PRQA CR 20859 */
#     VSTAR_REPLACEBYMASK(DestinationBuffer[BufferLength],SourceBuffer[0],Mask1);
	.d2line		332
	rlwinm		r7,r7,0,16,31		# BufferLength=r7 BufferLength=r7
	add		r5,r7,r4		# SrcPtr=r5 BufferLength=r7 DestinationBuffer=r4
	lbzx		r8,r7,r4		# BufferLength=r7 DestinationBuffer=r4
	mr		r5,r7		# BufferLength=r5
	lbzux		r9,r5,r4		# BufferLength=r5
	lbz		r5,0(r3)		# BufferLength=r5 SourceBuffer=r3
	xor		r5,r9,r5		# BufferLength=r5 BufferLength=r5
	and		r5,r5,r6		# BufferLength=r5 BufferLength=r5 Mask1=r6
	xor		r5,r8,r5		# BufferLength=r5 BufferLength=r5
	stbx		r5,r7,r4		# BufferLength=r7 DestinationBuffer=r4 BufferLength=r5
#     VSTAR_REPLACEBYMASK(DestinationBuffer[0],SourceBuffer[BufferLength],Mask2);
	.d2line		333
	lbz		r31,0(r4)		# DestinationBuffer=r4
	mr		r5,r7		# BufferLength=r5
	lbzux		r6,r5,r3		# Mask1=r6 BufferLength=r5
	xor		r5,r31,r6		# BufferLength=r5 Mask1=r6
.Llo68:
	and		r0,r0,r5		# BufferLength=r0 BufferLength=r0 Mask2=r5
	xor		r0,r0,r31		# BufferLength=r0 BufferLength=r0
	stb		r0,0(r4)		# DestinationBuffer=r4 BufferLength=r0
#     SrcPtr = &SourceBuffer[BufferLength];
	.d2line		334
	add		r5,r7,r3		# Mask2=r5 BufferLength=r7 SourceBuffer=r3
.Llo69:
	mr		r5,r5		# SrcPtr=r5 SrcPtr=r5
#     --SrcPtr;
	.d2line		335
	diab.addi		r5,r5,-1		# SrcPtr=r5 SrcPtr=r5
#     DstPtr = &DestinationBuffer[1];
	.d2line		336
	se_addi		r4,1		# DestinationBuffer=r4 DestinationBuffer=r4
.Llo61:
	mr		r4,r4		# DstPtr=r4 DstPtr=r4
	.section	.text_vle
.L308:
#     {
#         CONSTP2CONST(uint8, AUTOMATIC, COM_APPL_DATA) LimitPtr = SourceBuffer;
	.d2line		338
.Llo64:
	mr		r3,r3		# LimitPtr=r3 LimitPtr=r3
.L187:
#         while(SrcPtr > LimitPtr)
	.d2line		339
.Llo60:
	se_cmpl		r5,r3		# SrcPtr=r5 LimitPtr=r3
	bc		0,1,.L188	# le
#         {
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#             IsBuffersDifferent |= (*SrcPtr) ^ (*DstPtr);
# #endif /* COM_ENABLE_TRIGGERED_ON_CHANGE */
#             *DstPtr = *SrcPtr;
	.d2line		344
	lbz		r0,0(r5)		# BufferLength=r0 SrcPtr=r5
.Llo65:
	stb		r0,0(r4)		# DstPtr=r4 BufferLength=r0
#             --SrcPtr;
	.d2line		345
	diab.addi		r5,r5,-1		# SrcPtr=r5 SrcPtr=r5
#             ++DstPtr;
	.d2line		346
	se_addi		r4,1		# DstPtr=r4 DstPtr=r4
	b		.L187
.L188:
	.section	.text_vle
.L309:
#         }
#     }
# 
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#     return (IsBuffersDifferent != 0U) ? TRUE : FALSE;
# #else
#     return FALSE;
	.d2line		353
.Llo66:
	diab.li		r3,0		# LimitPtr=r3
# #endif
# }
	.d2line		355
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# BufferLength=r0
	mtspr		lr,r0		# BufferLength=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L297:
	.type		Com_CopyBufferReversed,@function
	.size		Com_CopyBufferReversed,.-Com_CopyBufferReversed
# Number of nodes = 62

# Allocations for Com_CopyBufferReversed
#	?a4		SourceBuffer
#	?a5		DestinationBuffer
#	?a6		BufferLength
#	?a7		Mask1
#	?a8		Mask2
#	?a9		$$42
#	?a10		SrcPtr
#	?a11		DstPtr
#	?a12		LimitPtr
# FUNC(void, COM_CODE) Com_PackSignal(
	.align		2
	.section	.text_vle
        .d2line         440,22
#$$ld
.L316:

#$$bf	Com_PackSignal,interprocedural,rasave,nostackparams
	.globl		Com_PackSignal
	.d2_cfa_start __cie
Com_PackSignal:
.Llo72:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# Id=r0
	stw		r0,20(r1)		# Id=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# Id=r0 Id=r3
	mr		r3,r4		# SourceBuffer=r3 SourceBuffer=r4
	.d2prologue_end
#         CONST(Com_SignalIdType, AUTOMATIC) Id,
#         CONSTP2CONST(void, AUTOMATIC, COM_APPL_CONST) SourceBuffer
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#         ,CONST(uint16, AUTOMATIC) Length
# #endif
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#         ,CONSTP2VAR(boolean, AUTOMATIC, COM_APPL_DATA) SignalChangedStatus
# #endif
#     )
# {
#     ComXf_PackSignal(SourceBuffer, Com_Main->Signals_Ref[Id].ForeGroundBuffer_Ref, &Com_Main->Signals_Ref[Id].ComXf_Signal
	.d2line		451
.Llo73:
	rlwinm		r0,r0,0,16,31		# Id=r0 Id=r0
.Llo74:
	lis		r5,Com_Main@ha
	lwz		r4,Com_Main@l(r5)
.Llo76:
	lwz		r4,36(r4)
	rlwinm		r6,r0,6,0,25		# Id=r0
	se_slwi		r0,3		# Id=r0 Id=r0
	subf		r0,r0,r6		# Id=r0 Id=r0
	lwzx		r4,r4,r0
	lwz		r5,Com_Main@l(r5)
	lwz		r5,36(r5)
	se_add		r5,r0		# Id=r0
	diab.addi		r5,r5,36
.Llo77:
	mr		r3,r3		# SourceBuffer=r3 SourceBuffer=r3
.Llo78:
	bl		ComXf_PackSignal
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#                      ,Length
# #endif
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                      ,SignalChangedStatus
# #endif
#                      );
# }
	.d2line		459
	.d2epilogue_begin
.Llo75:
	lwz		r0,20(r1)		# Id=r0
	mtspr		lr,r0		# Id=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L317:
	.type		Com_PackSignal,@function
	.size		Com_PackSignal,.-Com_PackSignal
# Number of nodes = 27

# Allocations for Com_PackSignal
#	?a4		Id
#	?a5		SourceBuffer
#	?a6		$$47
#	?a7		$$46

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L399:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L395:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\ComXf_CommonTypes.h"
.L331:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\Com_Types.h"
.L326:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\Com_i.h"
.L201:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_SignalProcessing.c"
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
	.uleb128	20
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\Com_SignalProcessing.c"
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
.L202:
	.sleb128	2
	.4byte		.L198-.L2
	.byte		"Com_CopyBufferNr"
	.byte		0
	.4byte		.L201
	.uleb128	74
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L199
	.4byte		.L200
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L201
	.uleb128	74
	.uleb128	22
	.byte		"SourceBuffer"
	.byte		0
	.4byte		.L203
	.4byte		.L208
	.sleb128	3
	.4byte		.L201
	.uleb128	74
	.uleb128	22
	.byte		"DestinationBuffer"
	.byte		0
	.4byte		.L209
	.4byte		.L211
	.sleb128	3
	.4byte		.L201
	.uleb128	74
	.uleb128	22
	.byte		"BufferLength"
	.byte		0
	.4byte		.L212
	.4byte		.L214
	.sleb128	3
	.4byte		.L201
	.uleb128	74
	.uleb128	22
	.byte		"Mask1"
	.byte		0
	.4byte		.L205
	.4byte		.L215
	.sleb128	3
	.4byte		.L201
	.uleb128	74
	.uleb128	22
	.byte		"Mask2"
	.byte		0
	.4byte		.L205
	.4byte		.L216
	.section	.debug_info,,n
	.sleb128	0
.L198:
	.section	.debug_info,,n
.L222:
	.sleb128	4
	.4byte		.L218-.L2
	.byte		"Com_CopyBuffer"
	.byte		0
	.4byte		.L201
	.uleb128	96
	.uleb128	25
	.4byte		.L221
	.byte		0x1
	.byte		0x1
	.4byte		.L219
	.4byte		.L220
	.sleb128	3
	.4byte		.L201
	.uleb128	96
	.uleb128	25
	.byte		"SourceBuffer"
	.byte		0
	.4byte		.L203
	.4byte		.L223
	.sleb128	3
	.4byte		.L201
	.uleb128	96
	.uleb128	25
	.byte		"DestinationBuffer"
	.byte		0
	.4byte		.L209
	.4byte		.L224
	.sleb128	3
	.4byte		.L201
	.uleb128	96
	.uleb128	25
	.byte		"BufferLength"
	.byte		0
	.4byte		.L212
	.4byte		.L225
	.sleb128	3
	.4byte		.L201
	.uleb128	96
	.uleb128	25
	.byte		"Mask1"
	.byte		0
	.4byte		.L205
	.4byte		.L226
	.sleb128	3
	.4byte		.L201
	.uleb128	96
	.uleb128	25
	.byte		"Mask2"
	.byte		0
	.4byte		.L205
	.4byte		.L227
	.section	.debug_info,,n
.L228:
	.sleb128	5
	.4byte		.L201
	.uleb128	107
	.uleb128	46
	.byte		"SrcPtr"
	.byte		0
	.4byte		.L204
	.4byte		.L229
.L230:
	.sleb128	5
	.4byte		.L201
	.uleb128	108
	.uleb128	44
	.byte		"DstPtr"
	.byte		0
	.4byte		.L210
	.4byte		.L231
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L235
	.4byte		.L232
	.4byte		.L233
.L236:
	.sleb128	5
	.4byte		.L201
	.uleb128	130
	.uleb128	55
	.byte		"LimitPtr"
	.byte		0
	.4byte		.L203
	.4byte		.L237
	.section	.debug_info,,n
	.sleb128	0
.L235:
	.section	.debug_info,,n
	.sleb128	0
.L218:
	.section	.debug_info,,n
.L242:
	.sleb128	2
	.4byte		.L239-.L2
	.byte		"Com_CopyBufferReversedNr"
	.byte		0
	.4byte		.L201
	.uleb128	149
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L240
	.4byte		.L241
	.sleb128	3
	.4byte		.L201
	.uleb128	149
	.uleb128	22
	.byte		"SourceBuffer"
	.byte		0
	.4byte		.L203
	.4byte		.L243
	.sleb128	3
	.4byte		.L201
	.uleb128	149
	.uleb128	22
	.byte		"DestinationBuffer"
	.byte		0
	.4byte		.L209
	.4byte		.L244
	.sleb128	3
	.4byte		.L201
	.uleb128	149
	.uleb128	22
	.byte		"BufferLength"
	.byte		0
	.4byte		.L212
	.4byte		.L245
	.sleb128	3
	.4byte		.L201
	.uleb128	149
	.uleb128	22
	.byte		"Mask1"
	.byte		0
	.4byte		.L205
	.4byte		.L246
	.sleb128	3
	.4byte		.L201
	.uleb128	149
	.uleb128	22
	.byte		"Mask2"
	.byte		0
	.4byte		.L205
	.4byte		.L247
.L248:
	.sleb128	5
	.4byte		.L201
	.uleb128	161
	.uleb128	46
	.byte		"SrcPtr"
	.byte		0
	.4byte		.L204
	.4byte		.L249
.L250:
	.sleb128	5
	.4byte		.L201
	.uleb128	162
	.uleb128	44
	.byte		"DestPtr"
	.byte		0
	.4byte		.L210
	.4byte		.L251
.L252:
	.sleb128	5
	.4byte		.L201
	.uleb128	163
	.uleb128	46
	.byte		"LimitPtr"
	.byte		0
	.4byte		.L204
	.4byte		.L253
	.section	.debug_info,,n
	.sleb128	0
.L239:
	.section	.debug_info,,n
.L258:
	.sleb128	2
	.4byte		.L255-.L2
	.byte		"Com_UnPackSignal"
	.byte		0
	.4byte		.L201
	.uleb128	382
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L256
	.4byte		.L257
	.sleb128	3
	.4byte		.L201
	.uleb128	382
	.uleb128	22
	.byte		"Id"
	.byte		0
	.4byte		.L259
	.4byte		.L261
	.sleb128	3
	.4byte		.L201
	.uleb128	382
	.uleb128	22
	.byte		"DestinationBuffer"
	.byte		0
	.4byte		.L209
	.4byte		.L262
	.sleb128	3
	.4byte		.L201
	.uleb128	382
	.uleb128	22
	.byte		"SourceBuffer"
	.byte		0
	.4byte		.L203
	.4byte		.L263
.L264:
	.sleb128	5
	.4byte		.L201
	.uleb128	394
	.uleb128	50
	.byte		"srcp"
	.byte		0
	.4byte		.L204
	.4byte		.L265
	.section	.debug_info,,n
	.sleb128	0
.L255:
	.section	.debug_info,,n
.L270:
	.sleb128	2
	.4byte		.L267-.L2
	.byte		"Com_CopyInitValue"
	.byte		0
	.4byte		.L201
	.uleb128	192
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L268
	.4byte		.L269
	.sleb128	3
	.4byte		.L201
	.uleb128	192
	.uleb128	22
	.byte		"SignalId"
	.byte		0
	.4byte		.L259
	.4byte		.L271
	.sleb128	3
	.4byte		.L201
	.uleb128	192
	.uleb128	22
	.byte		"DestinationBuffer"
	.byte		0
	.4byte		.L209
	.4byte		.L272
.L273:
	.sleb128	5
	.4byte		.L201
	.uleb128	196
	.uleb128	56
	.byte		"SignalPB_Ref"
	.byte		0
	.4byte		.L274
	.4byte		.L279
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L283
	.4byte		.L280
	.4byte		.L281
	.section	.debug_info,,n
.L284:
	.sleb128	7
	.4byte		.L201
	.uleb128	210
	.uleb128	35
	.byte		"tmp_buf"
	.byte		0
	.4byte		.L285
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
	.section	.debug_info,,n
	.sleb128	0
.L283:
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L290
	.4byte		.L287
	.4byte		.L288
.L291:
	.sleb128	5
	.4byte		.L201
	.uleb128	231
	.uleb128	34
	.byte		"shadowSignalLength"
	.byte		0
	.4byte		.L292
	.4byte		.L293
	.section	.debug_info,,n
	.sleb128	0
.L290:
	.section	.debug_info,,n
	.sleb128	0
.L267:
	.section	.debug_info,,n
.L298:
	.sleb128	4
	.4byte		.L295-.L2
	.byte		"Com_CopyBufferReversed"
	.byte		0
	.4byte		.L201
	.uleb128	307
	.uleb128	25
	.4byte		.L221
	.byte		0x1
	.byte		0x1
	.4byte		.L296
	.4byte		.L297
	.sleb128	3
	.4byte		.L201
	.uleb128	307
	.uleb128	25
	.byte		"SourceBuffer"
	.byte		0
	.4byte		.L203
	.4byte		.L299
	.sleb128	3
	.4byte		.L201
	.uleb128	307
	.uleb128	25
	.byte		"DestinationBuffer"
	.byte		0
	.4byte		.L209
	.4byte		.L300
	.sleb128	3
	.4byte		.L201
	.uleb128	307
	.uleb128	25
	.byte		"BufferLength"
	.byte		0
	.4byte		.L212
	.4byte		.L301
	.sleb128	3
	.4byte		.L201
	.uleb128	307
	.uleb128	25
	.byte		"Mask1"
	.byte		0
	.4byte		.L205
	.4byte		.L302
	.sleb128	3
	.4byte		.L201
	.uleb128	307
	.uleb128	25
	.byte		"Mask2"
	.byte		0
	.4byte		.L205
	.4byte		.L303
.L304:
	.sleb128	5
	.4byte		.L201
	.uleb128	318
	.uleb128	46
	.byte		"SrcPtr"
	.byte		0
	.4byte		.L204
	.4byte		.L305
.L306:
	.sleb128	5
	.4byte		.L201
	.uleb128	319
	.uleb128	44
	.byte		"DstPtr"
	.byte		0
	.4byte		.L210
	.4byte		.L307
	.section	.debug_info,,n
	.sleb128	6
	.4byte		.L311
	.4byte		.L308
	.4byte		.L309
.L312:
	.sleb128	5
	.4byte		.L201
	.uleb128	338
	.uleb128	55
	.byte		"LimitPtr"
	.byte		0
	.4byte		.L203
	.4byte		.L313
	.section	.debug_info,,n
	.sleb128	0
.L311:
	.section	.debug_info,,n
	.sleb128	0
.L295:
	.section	.debug_info,,n
.L318:
	.sleb128	2
	.4byte		.L315-.L2
	.byte		"Com_PackSignal"
	.byte		0
	.4byte		.L201
	.uleb128	440
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L316
	.4byte		.L317
	.sleb128	3
	.4byte		.L201
	.uleb128	440
	.uleb128	22
	.byte		"Id"
	.byte		0
	.4byte		.L259
	.4byte		.L319
	.sleb128	3
	.4byte		.L201
	.uleb128	440
	.uleb128	22
	.byte		"SourceBuffer"
	.byte		0
	.4byte		.L320
	.4byte		.L324
	.section	.debug_info,,n
	.sleb128	0
.L315:
	.section	.debug_info,,n
.L325:
	.sleb128	8
	.byte		0x1
	.byte		0x1
	.4byte		.L326
	.uleb128	513
	.uleb128	55
	.byte		"Com_Main"
	.byte		0
	.4byte		.L327
	.0byte		.L325
	.section	.debug_info,,n
.L330:
	.sleb128	9
	.4byte		.L331
	.uleb128	82
	.uleb128	1
	.4byte		.L332-.L2
	.uleb128	100
	.section	.debug_info,,n
.L120:
	.sleb128	10
	.byte		"ConfigurationId"
	.byte		0
	.4byte		.L333
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L121:
	.sleb128	10
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L335
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L122:
	.sleb128	10
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L335
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L123:
	.sleb128	10
	.byte		"IpduGroups_Ref"
	.byte		0
	.4byte		.L337
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L124:
	.sleb128	10
	.byte		"RxIpdus_Ref"
	.byte		0
	.4byte		.L342
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L125:
	.sleb128	10
	.byte		"RxIpdusDeferred_Ref"
	.byte		0
	.4byte		.L347
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L126:
	.sleb128	10
	.byte		"RxIpdusImmediate_Ref"
	.byte		0
	.4byte		.L347
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L127:
	.sleb128	10
	.byte		"RxIpdusRxDM_Ref"
	.byte		0
	.4byte		.L347
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L128:
	.sleb128	10
	.byte		"TxIpdus_Ref"
	.byte		0
	.4byte		.L349
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L129:
	.sleb128	10
	.byte		"Signals_Ref"
	.byte		0
	.4byte		.L274
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L130:
	.sleb128	10
	.byte		"IpduToSignal_Ref"
	.byte		0
	.4byte		.L354
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L131:
	.sleb128	10
	.byte		"GroupSignalToIPdu_Ref"
	.byte		0
	.4byte		.L354
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L132:
	.sleb128	10
	.byte		"TxModes_Ref"
	.byte		0
	.4byte		.L356
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L133:
	.sleb128	10
	.byte		"CycleTimers_Ref"
	.byte		0
	.4byte		.L361
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L134:
	.sleb128	10
	.byte		"DeferredLength_Ref"
	.byte		0
	.4byte		.L364
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L135:
	.sleb128	10
	.byte		"DeferredReceivedIPdu_Ref"
	.byte		0
	.4byte		.L367
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L136:
	.sleb128	10
	.byte		"DeferredReceivedIPduArrayLength"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L137:
	.sleb128	10
	.byte		"RxIpdusFlags"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L138:
	.sleb128	10
	.byte		"Com_ZeroMask"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L139:
	.sleb128	10
	.byte		"SignalGroup_base"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L140:
	.sleb128	10
	.byte		"MemberSignal_base"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	78
	.byte		0x1
.L141:
	.sleb128	10
	.byte		"SignalArrayLength"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L142:
	.sleb128	10
	.byte		"SignalGroupArrayLength"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	82
	.byte		0x1
.L143:
	.sleb128	10
	.byte		"MemberSignalArrayLength"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L144:
	.sleb128	10
	.byte		"TxIpduIdArrayLength"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	86
	.byte		0x1
.L145:
	.sleb128	10
	.byte		"RxIpduIdArrayLength"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L146:
	.sleb128	10
	.byte		"RxIPduDeferredArrayLength"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	90
	.byte		0x1
.L147:
	.sleb128	10
	.byte		"RxIPduImmediateArralLength"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L148:
	.sleb128	10
	.byte		"RxIPduRxDMArralLength"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	94
	.byte		0x1
.L149:
	.sleb128	10
	.byte		"IpduGroupArrayLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
	.sleb128	0
.L332:
.L341:
	.sleb128	9
	.4byte		.L331
	.uleb128	82
	.uleb128	1
	.4byte		.L369-.L2
	.uleb128	24
.L109:
	.sleb128	10
	.byte		"DescendentGroupList_Ref"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L110:
	.sleb128	10
	.byte		"ChildGroupList_Ref"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L111:
	.sleb128	10
	.byte		"AncestorGroupList_Ref"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L112:
	.sleb128	10
	.byte		"DescendentListLength"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L113:
	.sleb128	10
	.byte		"ChildListLength"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L114:
	.sleb128	10
	.byte		"AncestorListLength"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L115:
	.sleb128	10
	.byte		"ParentListLength"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L116:
	.sleb128	10
	.byte		"Flags"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L369:
.L346:
	.sleb128	9
	.4byte		.L331
	.uleb128	82
	.uleb128	1
	.4byte		.L373-.L2
	.uleb128	40
.L97:
	.sleb128	10
	.byte		"RxIPduId"
	.byte		0
	.4byte		.L368
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L98:
	.sleb128	10
	.byte		"RxGroupList_Ref"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L99:
	.sleb128	10
	.byte		"SignalIndex_Ref"
	.byte		0
	.4byte		.L354
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L100:
	.sleb128	10
	.byte		"ForeGroundBuffer_Ref"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L101:
	.sleb128	10
	.byte		"BackGroundBuffer_Ref"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L102:
	.sleb128	10
	.byte		"RxIpduFlags_Ref"
	.byte		0
	.4byte		.L374
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L103:
	.sleb128	10
	.byte		"IsBackGroundBufferUpdated_Ref"
	.byte		0
	.4byte		.L378
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L104:
	.sleb128	10
	.byte		"RxGroupListLength"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L105:
	.sleb128	10
	.byte		"NumberOfSignals"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L106:
	.sleb128	10
	.byte		"IpduLength"
	.byte		0
	.4byte		.L366
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L107:
	.sleb128	10
	.byte		"IPduFlags"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L108:
	.sleb128	10
	.byte		"Com_DeferredNotificationCall_Ref"
	.byte		0
	.4byte		.L380
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L373:
.L382:
	.sleb128	9
	.4byte		.L331
	.uleb128	82
	.uleb128	1
	.4byte		.L383-.L2
	.uleb128	4
.L95:
	.sleb128	10
	.byte		"Com_DeferredNotificationIndex"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L96:
	.sleb128	10
	.byte		"Com_DeferredNotificationIndexType"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L383:
.L377:
	.sleb128	9
	.4byte		.L331
	.uleb128	82
	.uleb128	1
	.4byte		.L384-.L2
	.uleb128	2
.L93:
	.sleb128	10
	.byte		"DeferredIPduReceived"
	.byte		0
	.4byte		.L221
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L94:
	.sleb128	10
	.byte		"IsBackGroundBufferUpdated"
	.byte		0
	.4byte		.L221
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L384:
.L353:
	.sleb128	9
	.4byte		.L331
	.uleb128	82
	.uleb128	1
	.4byte		.L385-.L2
	.uleb128	60
.L75:
	.sleb128	10
	.byte		"TxGroupList_Ref"
	.byte		0
	.4byte		.L370
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L76:
	.sleb128	10
	.byte		"IsIPduGroupEnabled_Ref"
	.byte		0
	.4byte		.L378
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L77:
	.sleb128	10
	.byte		"IsTxPending_Ref"
	.byte		0
	.4byte		.L378
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L78:
	.sleb128	10
	.byte		"IsConfirmationPending_Ref"
	.byte		0
	.4byte		.L378
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L79:
	.sleb128	10
	.byte		"IsConfirmationDeferred_Ref"
	.byte		0
	.4byte		.L378
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L80:
	.sleb128	10
	.byte		"CurrentTxMode_Ref"
	.byte		0
	.4byte		.L378
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L81:
	.sleb128	10
	.byte		"IsTransmissionFailed_Ref"
	.byte		0
	.4byte		.L378
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L82:
	.sleb128	10
	.byte		"Pdu"
	.byte		0
	.4byte		.L386
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L83:
	.sleb128	10
	.byte		"TxGroupListLength"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L84:
	.sleb128	10
	.byte		"Signals_Index"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L85:
	.sleb128	10
	.byte		"NumberOfSignals"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L86:
	.sleb128	10
	.byte		"SignalsWithUpdateBit_Ref"
	.byte		0
	.4byte		.L388
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L87:
	.sleb128	10
	.byte		"NumberOfSignalsWithUpdateBit"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L88:
	.sleb128	10
	.byte		"InitializeLength"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	50
	.byte		0x1
.L89:
	.sleb128	10
	.byte		"TxMode"
	.byte		0
	.4byte		.L389
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L90:
	.sleb128	10
	.byte		"TargetId"
	.byte		0
	.4byte		.L368
	.sleb128	2
	.byte		0x23
	.uleb128	54
	.byte		0x1
.L91:
	.sleb128	10
	.byte		"IpduFlags"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L92:
	.sleb128	10
	.byte		"UnusedValue"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	58
	.byte		0x1
	.sleb128	0
.L385:
.L278:
	.sleb128	9
	.4byte		.L331
	.uleb128	82
	.uleb128	1
	.4byte		.L391-.L2
	.uleb128	56
.L54:
	.sleb128	10
	.byte		"ForeGroundBuffer_Ref"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L55:
	.sleb128	10
	.byte		"BackGroundBuffer_Ref"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L56:
	.sleb128	10
	.byte		"ShadowBuffer_Ref"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L57:
	.sleb128	10
	.byte		"UpdateBit_Ref"
	.byte		0
	.4byte		.L209
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L58:
	.sleb128	10
	.byte		"InitValue_Ref"
	.byte		0
	.4byte		.L203
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L59:
	.sleb128	10
	.byte		"IPDU"
	.byte		0
	.4byte		.L368
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L60:
	.sleb128	10
	.byte		"InvalidIndex"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L61:
	.sleb128	10
	.byte		"BytePosition"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L62:
	.sleb128	10
	.byte		"NotifyFunctionIndex"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L63:
	.sleb128	10
	.byte		"TimeoutFunctionIndex"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L64:
	.sleb128	10
	.byte		"SignalFlagsLT"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L65:
	.sleb128	10
	.byte		"UpdateBitMask"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L66:
	.sleb128	10
	.byte		"NotifyLength"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L67:
	.sleb128	10
	.byte		"MinimumReceiveLength"
	.byte		0
	.4byte		.L366
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L68:
	.sleb128	10
	.byte		"ComXf_Signal"
	.byte		0
	.4byte		.L392
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
	.sleb128	0
.L391:
.L360:
	.sleb128	9
	.4byte		.L331
	.uleb128	82
	.uleb128	1
	.4byte		.L394-.L2
	.uleb128	4
.L52:
	.sleb128	10
	.byte		"Period"
	.byte		0
	.4byte		.L363
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L53:
	.sleb128	10
	.byte		"Offset"
	.byte		0
	.4byte		.L363
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L394:
.L393:
	.sleb128	9
	.4byte		.L395
	.uleb128	44
	.uleb128	1
	.4byte		.L396-.L2
	.uleb128	20
.L43:
	.sleb128	10
	.byte		"SignBitMask"
	.byte		0
	.4byte		.L333
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L44:
	.sleb128	10
	.byte		"BufferLength"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L45:
	.sleb128	10
	.byte		"Flags"
	.byte		0
	.4byte		.L212
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L46:
	.sleb128	10
	.byte		"Type"
	.byte		0
	.4byte		.L397
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L47:
	.sleb128	10
	.byte		"TransferProperty"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L48:
	.sleb128	10
	.byte		"PackingType"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L49:
	.sleb128	10
	.byte		"Mask1"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L50:
	.sleb128	10
	.byte		"Mask2"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L51:
	.sleb128	10
	.byte		"shift"
	.byte		0
	.4byte		.L206
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L396:
	.section	.debug_info,,n
.L387:
	.sleb128	11
	.4byte		.L399
	.uleb128	69
	.uleb128	1
	.4byte		.L400-.L2
	.byte		"VSTAR_PduInfoType"
	.byte		0
	.uleb128	8
.L39:
	.sleb128	10
	.byte		"SduDataPtr"
	.byte		0
	.4byte		.L210
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L40:
	.sleb128	10
	.byte		"SduLength"
	.byte		0
	.4byte		.L366
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L400:
	.section	.debug_info,,n
.L398:
	.sleb128	12
	.4byte		.L395
	.uleb128	44
	.uleb128	1
	.4byte		.L401-.L2
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
.L401:
	.section	.debug_info,,n
.L207:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L206:
	.sleb128	15
	.byte		"uint8"
	.byte		0
	.4byte		.L207
	.section	.debug_info,,n
.L205:
	.sleb128	16
	.4byte		.L206
	.section	.debug_info,,n
.L204:
	.sleb128	17
	.4byte		.L205
.L203:
	.sleb128	16
	.4byte		.L204
.L210:
	.sleb128	17
	.4byte		.L206
.L209:
	.sleb128	16
	.4byte		.L210
.L213:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L212:
	.sleb128	15
	.byte		"uint16"
	.byte		0
	.4byte		.L213
.L221:
	.sleb128	15
	.byte		"boolean"
	.byte		0
	.4byte		.L207
.L260:
	.sleb128	15
	.byte		"Com_SignalIdType"
	.byte		0
	.4byte		.L212
.L259:
	.sleb128	16
	.4byte		.L260
.L277:
	.sleb128	15
	.byte		"Com_SignalsPB"
	.byte		0
	.4byte		.L278
.L276:
	.sleb128	16
	.4byte		.L277
.L275:
	.sleb128	17
	.4byte		.L276
.L274:
	.sleb128	16
	.4byte		.L275
	.section	.debug_info,,n
.L285:
	.sleb128	18
	.4byte		.L286-.L2
	.4byte		.L206
	.section	.debug_info,,n
	.sleb128	19
	.uleb128	7
	.sleb128	0
.L286:
.L292:
	.sleb128	16
	.4byte		.L212
	.section	.debug_info,,n
.L323:
	.sleb128	20
	.byte		"void"
	.byte		0
	.byte		0x0
.L322:
	.sleb128	16
	.4byte		.L323
.L321:
	.sleb128	17
	.4byte		.L322
.L320:
	.sleb128	16
	.4byte		.L321
.L329:
	.sleb128	15
	.byte		"Com_ConfigType"
	.byte		0
	.4byte		.L330
.L328:
	.sleb128	16
	.4byte		.L329
.L327:
	.sleb128	17
	.4byte		.L328
.L334:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L333:
	.sleb128	15
	.byte		"uint32"
	.byte		0
	.4byte		.L334
.L336:
	.sleb128	16
	.4byte		.L333
.L335:
	.sleb128	17
	.4byte		.L336
.L340:
	.sleb128	15
	.byte		"Com_IpduGroup"
	.byte		0
	.4byte		.L341
.L339:
	.sleb128	16
	.4byte		.L340
.L338:
	.sleb128	17
	.4byte		.L339
.L337:
	.sleb128	16
	.4byte		.L338
.L345:
	.sleb128	15
	.byte		"Com_RxIpdu"
	.byte		0
	.4byte		.L346
.L344:
	.sleb128	16
	.4byte		.L345
.L343:
	.sleb128	17
	.4byte		.L344
.L342:
	.sleb128	16
	.4byte		.L343
.L348:
	.sleb128	17
	.4byte		.L342
.L347:
	.sleb128	16
	.4byte		.L348
.L352:
	.sleb128	15
	.byte		"Com_TxIpdu"
	.byte		0
	.4byte		.L353
.L351:
	.sleb128	16
	.4byte		.L352
.L350:
	.sleb128	17
	.4byte		.L351
.L349:
	.sleb128	16
	.4byte		.L350
.L355:
	.sleb128	17
	.4byte		.L259
.L354:
	.sleb128	16
	.4byte		.L355
.L359:
	.sleb128	15
	.byte		"Com_TxModeType"
	.byte		0
	.4byte		.L360
.L358:
	.sleb128	16
	.4byte		.L359
.L357:
	.sleb128	17
	.4byte		.L358
.L356:
	.sleb128	16
	.4byte		.L357
.L363:
	.sleb128	15
	.byte		"Com_Timer"
	.byte		0
	.4byte		.L212
.L362:
	.sleb128	17
	.4byte		.L363
.L361:
	.sleb128	16
	.4byte		.L362
.L366:
	.sleb128	15
	.byte		"PduLengthType"
	.byte		0
	.4byte		.L212
.L365:
	.sleb128	17
	.4byte		.L366
.L364:
	.sleb128	16
	.4byte		.L365
.L368:
	.sleb128	15
	.byte		"PduIdType"
	.byte		0
	.4byte		.L212
.L367:
	.sleb128	17
	.4byte		.L368
.L372:
	.sleb128	16
	.4byte		.L368
.L371:
	.sleb128	17
	.4byte		.L372
.L370:
	.sleb128	16
	.4byte		.L371
.L376:
	.sleb128	15
	.byte		"Com_RxIPduFlag"
	.byte		0
	.4byte		.L377
.L375:
	.sleb128	17
	.4byte		.L376
.L374:
	.sleb128	16
	.4byte		.L375
.L379:
	.sleb128	17
	.4byte		.L221
.L378:
	.sleb128	16
	.4byte		.L379
.L381:
	.sleb128	15
	.byte		"Com_DeferredNotificationCall"
	.byte		0
	.4byte		.L382
.L380:
	.sleb128	17
	.4byte		.L381
.L386:
	.sleb128	15
	.byte		"PduInfoType"
	.byte		0
	.4byte		.L387
.L388:
	.sleb128	17
	.4byte		.L292
.L389:
	.sleb128	18
	.4byte		.L390-.L2
	.4byte		.L212
	.sleb128	19
	.uleb128	0
	.sleb128	0
.L390:
.L392:
	.sleb128	15
	.byte		"ComXf_SignalsPB"
	.byte		0
	.4byte		.L393
.L397:
	.sleb128	15
	.byte		"Com_SignalType"
	.byte		0
	.4byte		.L398
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L208:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L211:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locend
.L214:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo9),5
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo4),0
	.d2locend
.L215:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo6),6
	.d2locend
.L216:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo6),7
	.d2locend
.L223:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locend
.L224:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo14),4
	.d2locend
.L225:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo15),5
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),0
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locend
.L226:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo20),6
	.d2locend
.L227:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo20),7
	.d2locend
.L229:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo19),5
	.d2locend
.L231:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo19),4
	.d2locend
.L237:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo13),0
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo19),3
	.d2locend
.L243:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),0
	.d2locend
.L244:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo27),4
	.d2locend
.L245:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo28),5
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),7
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),7
	.d2locend
.L246:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo32),6
	.d2locend
.L247:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo29),7
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo32),5
	.d2locend
.L249:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo26),4
	.d2locend
.L251:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo26),31
	.d2locend
.L253:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo26),3
	.d2locend
.L261:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),3
	.d2locend
.L262:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo38),4
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo39),4
	.d2locend
.L263:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo40),5
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),0
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo43),5
	.d2locend
.L265:
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),0
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo46),0
	.d2locend
.L271:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),3
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),31
	.d2locend
.L272:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo51),4
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),30
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),30
	.d2locend
.L279:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo54),30
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo55),4
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo56),4
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo57),4
	.d2locend
.L293:
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locend
.L299:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),3
	.d2locend
.L300:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo61),4
	.d2locend
.L301:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo62),5
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),0
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),0
	.d2locend
.L302:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo64),6
	.d2locend
.L303:
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo67),7
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),5
	.d2locend
.L305:
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo70),5
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo66),5
	.d2locend
.L307:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo66),4
	.d2locend
.L313:
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo66),3
	.d2locend
.L319:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),3
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),0
	.d2locend
.L324:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo76),4
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Com_PackSignal"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "ComXf_PackSignal"
	.wrcm.end
	.wrcm.nelem "Com_CopyBufferReversed"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Com_CopyInitValue"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Com_CopyBufferNr","Com_UnPackSignal","GetSignalLength","vstar_set"
	.wrcm.end
	.wrcm.nelem "Com_UnPackSignal"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "ComXf_UnPackSignal"
	.wrcm.end
	.wrcm.nelem "Com_CopyBufferReversedNr"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Com_CopyBuffer"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Com_CopyBufferNr"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "vstar_copy"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Com_SignalProcessing.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Com_SignalProcessing.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Com_SignalProcessing.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Com_SignalProcessing.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Com_SignalProcessing.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Com_SignalProcessing.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\Com\ssc\make\..\src\Com_SignalProcessing.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
