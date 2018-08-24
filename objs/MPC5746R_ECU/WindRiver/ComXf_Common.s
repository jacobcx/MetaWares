#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"ComXf_Common.c"
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
# FUNC(uint8, COM_CODE) ComXf_UnPackSignal(
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\ComXf_Common.c"
        .d2line         56,23
#$$ld
.L386:

#$$bf	ComXf_UnPackSignal,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r25,r26,r27,r28,r29,r30,r31,cr0,xer-ctr
	.globl		ComXf_UnPackSignal
	.d2_cfa_start __cie
ComXf_UnPackSignal:
.Llo1:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	25,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r30,r3		# SourceBuffer=r30 SourceBuffer=r3
.Llo24:
	mr		r4,r4		# DestinationBuffer=r4 DestinationBuffer=r4
	mr		r7,r5		# XfSignalPB_Ref=r7 XfSignalPB_Ref=r5
.Llo4:
	mr		r3,r6		# SignExtension=r3 SignExtension=r6
	.d2prologue_end
#         CONSTP2CONST(uint8, AUTOMATIC, COM_APPL_DATA) SourceBuffer,
#         CONSTP2VAR(uint8, AUTOMATIC, COM_APPL_DATA) DestinationBuffer,
#         CONSTP2CONST(ComXf_SignalsPB, AUTOMATIC, COM_APPL_DATA) XfSignalPB_Ref
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#        ,CONST(uint16, AUTOMATIC) Length
# #endif
#        ,CONST(boolean, AUTOMATIC) SignExtension
# )
# {
#     VAR(uint8, AUTOMATIC) returnValue = E_OK;
	.d2line		66
.Llo2:
	diab.li		r5,0		# returnValue=r5
#     CONST(uint8, AUTOMATIC) packing_type = XfSignalPB_Ref->PackingType;
	.d2line		67
.Llo13:
	lbz		r31,13(r7)		# XfSignalPB_Ref=r7
.Llo15:
	mr		r31,r31		# packing_type=r31 packing_type=r31
#     CONST(Com_SignalType, AUTOMATIC) signal_type = XfSignalPB_Ref->Type;
	.d2line		68
	lwz		r8,8(r7)		# XfSignalPB_Ref=r7
.Llo21:
	mr		r8,r8		# signal_type=r8 signal_type=r8
#     P2CONST(uint8, AUTOMATIC, COM_APPL_DATA)  srcp = SourceBuffer;
	.d2line		69
	mr		r30,r30		# srcp=r30 srcp=r30
	.section	.text_vle
.L421:
#     P2VAR(uint8, AUTOMATIC, COM_APPL_DATA) destp;
# 
# #if COM_ENABLE_DIRECT_PACKING == STD_ON
# 
#     /* direct packing types,(Types that support direct packing(uint8_N,
#        uint8_Dyn,Float32,Float64) should have Type greater than BYTES) */
#     if (signal_type >= COM_BYTES)
#     {
#         /* reading byte aligned signals */
#         VAR(uint16, AUTOMATIC) data_len;
#         VAR(uint16, AUTOMATIC) index;
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#         if (signal_type == COM_UINT8_DYN)
#         {
#             data_len = Length;
#         }
#         else
# #endif
#         {
#             data_len  = (uint16)XfSignalPB_Ref->BufferLength;
#         }
# 
#         if (IS_ENDIANNESS_CONV_NEEDED(packing_type, XfSignalPB_Ref->Flags))
#         {
#             srcp = srcp + (data_len - 1U);
#             destp = DestinationBuffer;
# 
#             for (index = 0; index < data_len; index++)
#             {
#                 *destp = *srcp;
#                 destp++;
#                 srcp--;
#             }
#         }
#         else
#         {
#             COM_COPY_EXTERNAL(DestinationBuffer, srcp, (uint32)data_len);
#         }
#     }
#     else
# #endif /* COM_ENABLE_DIRECT_PACKING */
#     {
#         CONST(uint16, AUTOMATIC) signal_flags = XfSignalPB_Ref->Flags;
#         CONST(uint8, AUTOMATIC) shift_val = XfSignalPB_Ref->shift;
#         CONST(uint32, AUTOMATIC) signBitMask = XfSignalPB_Ref->SignBitMask;
#         VAR(uint32, AUTOMATIC) tmp_uint32 = (uint32)0U;
	.d2line		115
.Llo6:
	diab.li		r25,0
.Llo7:
	stw		r25,8(r1)
#         VAR(uint8, AUTOMATIC) tmpMSB_uint8 = 0;
	.d2line		112
	lhz		r28,6(r7)		# XfSignalPB_Ref=r7
.Llo27:
	mr		r28,r28		# signal_flags=r28 signal_flags=r28
	.d2line		113
	lbz		r27,16(r7)		# XfSignalPB_Ref=r7
.Llo28:
	mr		r27,r27		# shift_val=r27 shift_val=r27
	.d2line		114
	lwz		r26,0(r7)		# XfSignalPB_Ref=r7
.Llo30:
	mr		r26,r26		# signBitMask=r26 signBitMask=r26
#         P2VAR(uint8, AUTOMATIC, COM_APPL_DATA) tmpUint32Addr = (P2VAR(uint8, AUTOMATIC, COM_APPL_DATA)) &tmp_uint32;
	.d2line		117
	diab.addi		r29,r1,8		# tmpUint32Addr=r29
# 
# #if (CPU_BYTE_ORDER == LOW_BYTE_FIRST)
#         destp = tmpUint32Addr;
# #else
#         switch(packing_type)
	.d2line		122
.Llo26:
	rlwinm		r6,r31,0,24,31		# packing_type=r31
	cmpi		0,0,r6,99
	bc		1,1,.L442	# gt
.Llo5:
	bc		1,2,.L173	# eq
	cmpi		0,0,r6,67
	bc		1,1,.L443	# gt
	bc		1,2,.L173	# eq
	cmpi		0,0,r6,34
	bc		1,2,.L179	# eq
	cmpi		0,0,r6,50
	bc		1,2,.L179	# eq
	cmpi		0,0,r6,66
	bc		1,2,.L179	# eq
	b		.L180
.L443:
	cmpi		0,0,r6,82
	bc		1,2,.L179	# eq
	cmpi		0,0,r6,83
	bc		1,2,.L173	# eq
	cmpi		0,0,r6,98
	bc		1,2,.L179	# eq
	b		.L180
.L442:
	cmpi		0,0,r6,115
	bc		1,1,.L444	# gt
	bc		1,2,.L173	# eq
	cmpi		0,0,r6,100
	bc		1,2,.L168	# eq
	cmpi		0,0,r6,101
	bc		1,2,.L168	# eq
	cmpi		0,0,r6,114
	bc		1,2,.L179	# eq
	b		.L180
.L444:
	cmpi		0,0,r6,116
	bc		1,2,.L168	# eq
	cmpi		0,0,r6,117
	bc		1,2,.L168	# eq
	b		.L180
.L168:
#         {
#             case INT32PACKEDTO5LITTLEENDBYTES:
#             case INT32PACKEDTO5BIGENDBYTES:
#             case INT32PACKEDTO4LITTLEENDBYTES:
#             case INT32PACKEDTO4BIGENDBYTES:
#             {
#                 destp = tmpUint32Addr;
	.d2line		129
	mr		r29,r29		# destp=r29 destp=r29
.Llo31:
	b		.L169
.L173:
#                 break;
#             }
#             case INT32PACKEDTO3LITTLEENDBYTES:
#             case INT16PACKEDTO3LITTLEENDBYTES:
#             case INT32PACKEDTO3BIGENDBYTES:
#             case INT16PACKEDTO3BIGENDBYTES:
#             {
#                 destp = tmpUint32Addr + 1;
	.d2line		137
.Llo32:
	se_addi		r29,1		# tmpUint32Addr=r29 tmpUint32Addr=r29
.Llo33:
	mr		r29,r29		# destp=r29 destp=r29
	b		.L169
.L179:
#                 break;
#             }
#             case INT32PACKEDTO2LITTLEENDBYTES:
#             case INT16PACKEDTO2LITTLEENDBYTES:
#             case INT8PACKEDTO2LITTLEENDBYTES:
#             case INT32PACKEDTO2BIGENDBYTES:
#             case INT16PACKEDTO2BIGENDBYTES:
#             case INT8PACKEDTO2BIGENDBYTES:
#             {
#                 destp = tmpUint32Addr + BIGEND_COMPENSATION_FACTOR_FOR_THREE_BYTES_DATA;
	.d2line		147
.Llo34:
	se_addi		r29,2		# tmpUint32Addr=r29 tmpUint32Addr=r29
.Llo35:
	mr		r29,r29		# destp=r29 destp=r29
	b		.L169
.L180:
#                 break;
#             }
#             default:
#             {
#                 destp = tmpUint32Addr + HIGH_BYTE_FIRST_START_DIFFERENCE_FOUR_BYTES;
	.d2line		152
.Llo36:
	se_addi		r29,3		# tmpUint32Addr=r29 tmpUint32Addr=r29
.Llo37:
	mr		r29,r29		# destp=r29 destp=r29
.L169:
#                 break;
#             }
#         }
# #endif
#         switch(packing_type)
	.d2line		157
	rlwinm		r6,r31,0,24,31		# packing_type=r31
	cmpi		0,0,r6,50
	bc		1,1,.L445	# gt
	bc		1,2,.L187	# eq
	cmpi		0,0,r6,33
	bc		1,1,.L446	# gt
	bc		1,2,.L195	# eq
	se_cmpi		r6,1
	bc		1,2,.L195	# eq
	se_cmpi		r6,17
	bc		1,2,.L195	# eq
	b		.L204
.L446:
	cmpi		0,0,r6,34
	bc		1,2,.L203	# eq
	cmpi		0,0,r6,49
	bc		1,2,.L195	# eq
	b		.L204
.L445:
	diab.addi		r0,r6,-65
	cmpli		0,0,r0,52
	rlwinm		r6,r0,2,0,29
	e_add2is		r6,.L447@ha
	bc		1,1,.L204	# gt
	lwz		r7,.L447@l(r6)		# XfSignalPB_Ref=r7
	mtspr		ctr,r7		# XfSignalPB_Ref=ctr
	bcctr		20,0
.L447:
#$$sl
	.long		.L195
	.long		.L203
	.long		.L200
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L195
	.long		.L187
	.long		.L184
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L195
	.long		.L203
	.long		.L200
	.long		.L198
	.long		.L197
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L204
	.long		.L195
	.long		.L187
	.long		.L184
	.long		.L182
	.long		.L181
#$$se
.L181:
#         {
#             /**************************************************************************************************************/
#             /***************************  Copy with same endianness *******************************************************/
#             /**************************************************************************************************************/
# #if (CPU_BYTE_ORDER == LOW_BYTE_FIRST)
#             case INT32PACKEDTO5LITTLEENDBYTES:
#             {
#                 tmpMSB_uint8 = *(srcp + EXTRA_BYTE_FACTOR);
#             }
#     #else
#             case INT32PACKEDTO5BIGENDBYTES:
#             {
#                 tmpMSB_uint8 = *srcp;
	.d2line		170
	lbz		r25,0(r30)		# srcp=r30
	mr		r25,r25		# tmpMSB_uint8=r25 tmpMSB_uint8=r25
#                 srcp++;
	.d2line		171
	se_addi		r30,1		# srcp=r30 srcp=r30
.L182:
#             }
#     #endif
#     #if (CPU_BYTE_ORDER == LOW_BYTE_FIRST)
#             case INT32PACKEDTO4LITTLEENDBYTES:
#     #else
#             case INT32PACKEDTO4BIGENDBYTES:
#     #endif
#             {
#                 *destp = *srcp;
	.d2line		180
	lbz		r0,0(r30)		# srcp=r30
	stb		r0,0(r29)		# destp=r29
#                 srcp++;
	.d2line		181
	se_addi		r30,1		# srcp=r30 srcp=r30
#                 destp++;
	.d2line		182
	se_addi		r29,1		# destp=r29 destp=r29
.L184:
#             }
#     #if (CPU_BYTE_ORDER == LOW_BYTE_FIRST)
#             case INT32PACKEDTO3LITTLEENDBYTES:
#             case INT16PACKEDTO3LITTLEENDBYTES:
#     #else
#             case INT32PACKEDTO3BIGENDBYTES:
#             case INT16PACKEDTO3BIGENDBYTES:
#     #endif
#             {
#                 *destp = *srcp;
	.d2line		192
	lbz		r0,0(r30)		# srcp=r30
	stb		r0,0(r29)		# destp=r29
#                 srcp++;
	.d2line		193
	se_addi		r30,1		# srcp=r30 srcp=r30
#                 destp++;
	.d2line		194
	se_addi		r29,1		# destp=r29 destp=r29
.L187:
#             }
#     #if (CPU_BYTE_ORDER == LOW_BYTE_FIRST)
#             case INT32PACKEDTO2LITTLEENDBYTES:
#             case INT16PACKEDTO2LITTLEENDBYTES:
#             case INT8PACKEDTO2LITTLEENDBYTES:
#     #else
#             case INT32PACKEDTO2BIGENDBYTES:
#             case INT16PACKEDTO2BIGENDBYTES:
#             case INT8PACKEDTO2BIGENDBYTES:
#     #endif
#             {
#                 *destp = *srcp;
	.d2line		206
	lbz		r0,0(r30)		# srcp=r30
	stb		r0,0(r29)		# destp=r29
#                 srcp++;
	.d2line		207
	se_addi		r30,1		# srcp=r30 srcp=r30
#                 destp++;
	.d2line		208
	se_addi		r29,1		# destp=r29 destp=r29
.L195:
#             }
#             case INT32PACKEDTO1LITTLEENDBYTES:
#             case INT16PACKEDTO1LITTLEENDBYTES:
#             case INT8PACKEDTO1LITTLEENDBYTES:
#             case INT32PACKEDTO1BIGENDBYTES:
#             case INT16PACKEDTO1BIGENDBYTES:
#             case INT8PACKEDTO1BIGENDBYTES:
#             case BOOLPACKEDTO1LITTLEENDBYTE:
#             case BOOLPACKEDTO1BIGENDBYTE:
#             {
#                 *destp = *srcp;
	.d2line		219
	lbz		r0,0(r30)		# srcp=r30
	stb		r0,0(r29)		# destp=r29
	b		.L196
.L197:
#                 break;
#             }
#             /**************************************************************************************************************/
#             /***************************  Copy with different endianness **************************************************/
#             /**************************************************************************************************************/
# #if (CPU_BYTE_ORDER == LOW_BYTE_FIRST)
#             case INT32PACKEDTO5BIGENDBYTES:
#             {
#                 tmpMSB_uint8 = *srcp;
#                 srcp = srcp + BIGEND_COMPENSATION_FACTOR_FOR_FIVE_BYTES_DATA;
#                 *destp = *srcp;
# 
#                 srcp--;
#                 destp++;
#                 *destp = *srcp;
# 
#                 srcp--;
#                 destp++;
#                 *destp = *srcp;
# 
#                 srcp--;
#                 destp++;
#                 *destp = *srcp;
#                 break;
#             }
# #else
#             case INT32PACKEDTO5LITTLEENDBYTES:
#             {
#                 tmpMSB_uint8 = *(srcp + EXTRA_BYTE_FACTOR);
	.d2line		248
	lbz		r25,4(r30)		# srcp=r30
	mr		r25,r25		# tmpMSB_uint8=r25 tmpMSB_uint8=r25
#                 srcp = srcp + BIGEND_COMPENSATION_FACTOR_FOR_FOUR_BYTES_DATA;
#                 *destp = *srcp;
	.d2line		250
	lbz		r0,3(r30)		# srcp=r30
	stb		r0,0(r29)		# destp=r29
# 
#                 srcp--;
#                 destp++;
#                 *destp = *srcp;
	.d2line		254
	lbz		r0,2(r30)		# srcp=r30
	stb		r0,1(r29)		# destp=r29
# 
#                 srcp--;
#                 destp++;
#                 *destp = *srcp;
	.d2line		258
	lbz		r0,1(r30)		# srcp=r30
	stb		r0,2(r29)		# destp=r29
# 
#                 srcp--;
#                 destp++;
#                 *destp = *srcp;
	.d2line		262
	lbz		r0,0(r30)		# srcp=r30
	stb		r0,3(r29)		# destp=r29
	b		.L196
.L198:
#                 break;
#             }
# #endif
# #if (CPU_BYTE_ORDER == LOW_BYTE_FIRST)
#             case INT32PACKEDTO4BIGENDBYTES:
# #else
#             case INT32PACKEDTO4LITTLEENDBYTES:
# #endif
#             {
#                 srcp = srcp + BIGEND_COMPENSATION_FACTOR_FOR_FOUR_BYTES_DATA;
#                 *destp = *srcp;
	.d2line		273
	lbz		r0,3(r30)		# srcp=r30
	stb		r0,0(r29)		# destp=r29
#                 srcp--;
#                 destp++;
#                 *destp = *srcp;
	.d2line		276
	lbz		r0,2(r30)		# srcp=r30
	stb		r0,1(r29)		# destp=r29
# 
#                 srcp--;
#                 destp++;
#                 *destp = *srcp;
	.d2line		280
	lbz		r0,1(r30)		# srcp=r30
	stb		r0,2(r29)		# destp=r29
# 
#                 srcp--;
#                 destp++;
#                 *destp = *srcp;
	.d2line		284
	lbz		r0,0(r30)		# srcp=r30
	stb		r0,3(r29)		# destp=r29
	b		.L196
.L200:
#                 break;
#             }
# #if (CPU_BYTE_ORDER == LOW_BYTE_FIRST)
#             case INT32PACKEDTO3BIGENDBYTES:
#             case INT16PACKEDTO3BIGENDBYTES:
# #else
#             case INT32PACKEDTO3LITTLEENDBYTES:
#             case INT16PACKEDTO3LITTLEENDBYTES:
# #endif
#             {
#                 srcp = srcp + BIGEND_COMPENSATION_FACTOR_FOR_THREE_BYTES_DATA;
#                 *destp = *srcp;
	.d2line		296
	lbz		r0,2(r30)		# srcp=r30
	stb		r0,0(r29)		# destp=r29
# 
#                 srcp--;
#                 destp++;
#                 *destp = *srcp;
	.d2line		300
	lbz		r0,1(r30)		# srcp=r30
	stb		r0,1(r29)		# destp=r29
# 
#                 srcp--;
#                 destp++;
#                 *destp = *srcp;
	.d2line		304
	lbz		r0,0(r30)		# srcp=r30
	stb		r0,2(r29)		# destp=r29
	b		.L196
.L203:
#                 break;
#             }
# #if (CPU_BYTE_ORDER == LOW_BYTE_FIRST)
#             case INT32PACKEDTO2BIGENDBYTES:
#             case INT16PACKEDTO2BIGENDBYTES:
#             case INT8PACKEDTO2BIGENDBYTES:
# #else
#             case INT32PACKEDTO2LITTLEENDBYTES:
#             case INT16PACKEDTO2LITTLEENDBYTES:
#             case INT8PACKEDTO2LITTLEENDBYTES:
# #endif
#             {
#                 srcp ++;
#                 *destp = *srcp;
	.d2line		318
	lbz		r0,1(r30)		# srcp=r30
	stb		r0,0(r29)		# destp=r29
# 
#                 srcp--;
#                 destp++;
#                 *destp = *srcp;
	.d2line		322
	lbz		r0,0(r30)		# srcp=r30
	stb		r0,1(r29)		# destp=r29
	b		.L196
.L204:
#                 break;
#             }
#             default:
#             {
#                 /* Note: this should not happen (i.e. incorrect SignalPB_Ref->ComXf_Signal.PackingType) */
#                 /* Set tmpMSB_uint8 in case invalid packingType ends with 101 (binary). */
#                 tmpMSB_uint8 = (uint8)0U;
	.d2line		329
	diab.li		r25,0		# tmpMSB_uint8=r25
.L196:
#                 /* This causes tmp_shifted_value to become zero. */
#                 break;
#             }
#         }
# 
#         if(shift_val != 0)
	.d2line		335
.Llo25:
	rlwinm		r0,r27,0,24,31		# shift_val=r27
	se_cmpi		r0,0
	bc		1,2,.L205	# eq
#         {
# 
#             tmp_uint32 >>= (uint32)shift_val;
	.d2line		338
.Llo16:
	lwz		r0,8(r1)
	srw		r0,r0,r27		# shift_val=r27
	stw		r0,8(r1)
# 
#             if((packing_type & COM_USED_BYTES_MASK) == MAX_DATA_SIZE)
	.d2line		340
.Llo17:
	rlwinm		r31,r31,0,28,31		# packing_type=r31 packing_type=r31
	se_cmpi		r31,5		# packing_type=r31
	bc		0,2,.L205	# ne
	.section	.text_vle
.L448:
#             {
#                 CONST (uint32,AUTOMATIC) tmp_shifted_value = (uint32)tmpMSB_uint8 << (TEMP_DATA_SIZE_BITS - shift_val);
	.d2line		342
.Llo18:
	rlwinm		r25,r25,0,24,31		# tmpMSB_uint8=r25 tmpMSB_uint8=r25
.Llo29:
	rlwinm		r27,r27,0,24,31		# shift_val=r27 shift_val=r27
	subfic		r0,r27,32		# shift_val=r27
	slw		r0,r25,r0		# tmpMSB_uint8=r25
.Llo38:
	mr		r0,r0		# tmp_shifted_value=r0 tmp_shifted_value=r0
#                 tmp_uint32 |= tmp_shifted_value;
	.d2line		343
.Llo39:
	lwz		r6,8(r1)		# tmp_shifted_value=r6
.Llo40:
	or		r0,r0,r6		# tmp_shifted_value=r6
	stw		r0,8(r1)
	.section	.text_vle
.L449:
.L205:
#             }
#         }
# 
#     /* The Sign extension can be optimized out if no sign signal is used by the node */
# 
#         if(((signal_flags & COM_SIGNED_INT_MASK) != 0) &&
	.d2line		349
.Llo19:
	rlwinm		r28,r28,0,16,31		# signal_flags=r28 signal_flags=r28
	se_btsti		r28,17		# signal_flags=r28
	bc		1,2,.L207	# eq
.Llo20:
	rlwinm		r3,r3,0,24,31		# SignExtension=r3 SignExtension=r3
	se_cmpi		r3,1		# SignExtension=r3
	bc		0,2,.L207	# ne
.Llo8:
	lwz		r0,8(r1)
	diab.addi		r3,r26,1		# SignExtension=r3 signBitMask=r26
.Llo9:
	and.		r0,r0,r3		# SignExtension=r3
	bc		1,2,.L207	# eq
#             (SignExtension == TRUE) &&
#             ((tmp_uint32 &(signBitMask + (uint32)1)) != (uint32)0))
#         {
#             tmp_uint32 |= ~signBitMask;
	.d2line		353
.Llo10:
	lwz		r0,8(r1)
	orc		r0,r0,r26		# signBitMask=r26
	stw		r0,8(r1)
# 
#             /* the (signal_flags & COM_SIGNED_INT_MASK) condition guarantees signed, non-bytes signal type. */
#             switch(signal_type)
	.d2line		356
	mr		r6,r8		# signal_type=r6 signal_type=r8
.Llo41:
	se_cmpli	r6,10		# tmp_shifted_value=r6
	se_slwi		r6,2		# tmp_shifted_value=r6 tmp_shifted_value=r6
	e_add2is		r6,.L454@ha		# tmp_shifted_value=r6
	bc		1,1,.L222	# gt
.Llo22:
	lwz		r7,.L454@l(r6)		# XfSignalPB_Ref=r7 tmp_shifted_value=r6
	mtspr		ctr,r7		# XfSignalPB_Ref=ctr
	bcctr		20,0
.L454:
#$$sl
	.long		.L223
	.long		.L223
	.long		.L223
	.long		.L223
	.long		.L208
	.long		.L210
	.long		.L212
	.long		.L223
	.long		.L223
	.long		.L223
	.long		.L223
#$$se
.L208:
#             {
#                 case COM_SINT8:
#                 {
#                                     /* Writing as uint8 has the same result as sint8 */
#                     *DestinationBuffer = (uint8) tmp_uint32;
	.d2line		361
.Llo42:
	lwz		r0,8(r1)
	stb		r0,0(r4)		# DestinationBuffer=r4
	b		.L223
.L210:
#                     break;
#                 }
#                 case COM_SINT16:
#                 {
#                     WRITE_INT16(DestinationBuffer, tmp_uint32);
	.d2line		366
	lwz		r0,8(r1)
	sth		r0,0(r4)		# DestinationBuffer=r4
	b		.L223
.L212:
#                     break;
#                 }
#                 case COM_SINT32:
#                 {
#                     WRITE_INT32(DestinationBuffer, tmp_uint32);
	.d2line		371
	lwz		r0,8(r1)
	stw		r0,0(r4)		# DestinationBuffer=r4
	b		.L223
.L222:
#                     break;
#                 }
#                 case COM_BOOLEAN:
#                 case COM_UINT8:
#                 case COM_UINT16:
#                 case COM_UINT32:
#                 case COM_BYTES:
#                 case COM_UINT8_DYN:
#                 case COM_FLOAT32:
#                 case COM_FLOAT64:
#                 {
#                     /* These signal types do not pass the (signal_flags & COM_SIGNED_INT_MASK) != 0 condition
#                      * Therefore these should not appear here. Leave DestinationBuffer untouched. */
#                     break;
#                 }
#                 default:
#                 {
#                     /* Illegal signal type: leave DestinationBuffer untouched. */
#                     returnValue = E_SER_GENERIC_ERROR;
	.d2line		390
.Llo43:
	diab.li		r5,128		# returnValue=r5
	b		.L223
.L207:
#                     break;
#                 }
#             }
#         }
#         else
#         {
#             tmp_uint32 = (tmp_uint32 & signBitMask) + (tmp_uint32 & (signBitMask + (uint32)1U));
	.d2line		397
.Llo23:
	lwz		r3,8(r1)		# SignExtension=r3
.Llo11:
	and		r0,r3,r26		# SignExtension=r3 signBitMask=r26
	se_addi		r26,1		# signBitMask=r26 signBitMask=r26
	and		r3,r3,r26		# SignExtension=r3 SignExtension=r3 signBitMask=r26
	se_add		r0,r3		# SignExtension=r3
	stw		r0,8(r1)
# 
#             switch(signal_type)
	.d2line		399
	mr		r6,r8		# signal_type=r6 signal_type=r8
.Llo44:
	se_cmpli	r6,10		# tmp_shifted_value=r6
	se_slwi		r6,2		# tmp_shifted_value=r6 tmp_shifted_value=r6
	e_add2is		r6,.L455@ha		# tmp_shifted_value=r6
	bc		1,1,.L238	# gt
.Llo12:
	lwz		r7,.L455@l(r6)		# XfSignalPB_Ref=r7 tmp_shifted_value=r6
	mtspr		ctr,r7		# XfSignalPB_Ref=ctr
	bcctr		20,0
.L455:
#$$sl
	.long		.L224
	.long		.L227
	.long		.L229
	.long		.L232
	.long		.L227
	.long		.L229
	.long		.L232
	.long		.L223
	.long		.L223
	.long		.L223
	.long		.L223
#$$se
.L224:
#             {
#                 case COM_BOOLEAN:
#                 {
#                     *(P2VAR(boolean, AUTOMATIC, COM_APPL_DATA)) DestinationBuffer = (boolean)tmp_uint32;
	.d2line		403
.Llo45:
	lwz		r0,8(r1)
	stb		r0,0(r4)		# DestinationBuffer=r4
	b		.L223
.L227:
#                     break;
#                 }
#                 case COM_UINT8:
#                 case COM_SINT8:
#                 {
#                     *DestinationBuffer = (uint8) tmp_uint32;
	.d2line		409
	lwz		r0,8(r1)
	stb		r0,0(r4)		# DestinationBuffer=r4
	b		.L223
.L229:
#                     break;
#                 }
#                 case COM_UINT16:
#                 case COM_SINT16:
#                 {
#                     WRITE_INT16(DestinationBuffer, tmp_uint32);
	.d2line		415
	lwz		r0,8(r1)
	sth		r0,0(r4)		# DestinationBuffer=r4
	b		.L223
.L232:
#                     break;
#                 }
#                 case COM_UINT32:
#                 case COM_SINT32:
#                 {
#                     WRITE_INT32(DestinationBuffer, tmp_uint32);
	.d2line		421
	lwz		r0,8(r1)
	stw		r0,0(r4)		# DestinationBuffer=r4
	b		.L223
.L238:
#                     break;
#                 }
#                 case COM_BYTES:
#                 case COM_UINT8_DYN:
#                 case COM_FLOAT32:
#                 case COM_FLOAT64:
#                 {
#                     /* These signal types are legal here, but there is nothing to do. */
#                     break;
#                 }
#                 default:
#                 {
#                     /* Illegal signal type: leave DestinationBuffer untouched. */
#                     returnValue = E_SER_GENERIC_ERROR;
	.d2line		435
.Llo46:
	diab.li		r5,128		# returnValue=r5
.L223:
	.section	.text_vle
.L422:
#                     break;
#                 }
#             }
#         }
#     }
#     return returnValue;
	.d2line		441
.Llo3:
	rlwinm		r3,r5,0,24,31		# SignExtension=r3 returnValue=r5
# }
	.d2line		442
	.d2epilogue_begin
	lmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)
	mtspr		lr,r0
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo14:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L387:
	.type		ComXf_UnPackSignal,@function
	.size		ComXf_UnPackSignal,.-ComXf_UnPackSignal
# Number of nodes = 352

# Allocations for ComXf_UnPackSignal
#	?a4		SourceBuffer
#	?a5		DestinationBuffer
#	?a6		XfSignalPB_Ref
#	?a7		SignExtension
#	?a8		returnValue
#	?a9		packing_type
#	?a10		signal_type
#	?a11		srcp
#	?a12		destp
#	?a13		signal_flags
#	?a14		shift_val
#	?a15		signBitMask
#	SP,8		tmp_uint32
#	?a16		tmpMSB_uint8
#	?a17		tmpUint32Addr
#	?a18		tmp_shifted_value
# FUNC(uint8, COM_CODE) ComXf_PackSignal(
	.align		2
	.section	.text_vle
        .d2line         472,23
#$$ld
.L465:

#$$bf	ComXf_PackSignal,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r25,r26,r27,r28,r29,r30,r31,cr0,lr,ctr
	.globl		ComXf_PackSignal
	.d2_cfa_start __cie
ComXf_PackSignal:
.Llo47:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	25,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# SourceBuffer=r3 SourceBuffer=r3
.Llo88:
	mr		r25,r4		# DestinationBuffer=r25 DestinationBuffer=r4
.Llo90:
	mr		r6,r5		# XfSignalPB_Ref=r6 XfSignalPB_Ref=r5
	.d2prologue_end
#         CONSTP2CONST(uint8, AUTOMATIC, COM_APPL_CONST) SourceBuffer,
#         CONSTP2VAR(uint8, AUTOMATIC, COM_APPL_CONST) DestinationBuffer,
#         CONSTP2CONST(ComXf_SignalsPB, AUTOMATIC, COM_APPL_DATA) XfSignalPB_Ref
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#        ,CONST(uint16, AUTOMATIC) Length
# #endif
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#        ,CONSTP2VAR(boolean, AUTOMATIC, COM_APPL_DATA) SignalChangedStatus
# #endif
#     )
# {
#     VAR(uint8, AUTOMATIC) returnValue = E_OK;
	.d2line		484
	diab.li		r4,0		# returnValue=r4
#     CONST(uint8, AUTOMATIC) packing_type = XfSignalPB_Ref->PackingType;
	.d2line		485
.Llo65:
	lbz		r5,13(r6)		# XfSignalPB_Ref=r6
.Llo66:
	mr		r5,r5		# packing_type=r5 packing_type=r5
#     P2CONST(uint8, AUTOMATIC, COM_APPL_DATA)  srcp = SourceBuffer;
	.d2line		486
	mr		r31,r3		# srcp=r31 srcp=r3
#     P2VAR(uint8, AUTOMATIC, COM_APPL_DATA) destp = DestinationBuffer;
	.d2line		487
	mr		r25,r25		# destp=r25 destp=r25
	.section	.text_vle
.L479:
# 
# #if COM_ENABLE_DIRECT_PACKING == STD_ON
#     CONST(Com_SignalType, AUTOMATIC) signal_type = XfSignalPB_Ref->Type;
#     VAR(uint16, AUTOMATIC) data_len;
# #if COM_ENABLE_DYNAMIC_SIGNALS == STD_ON
#     if (signal_type == COM_UINT8_DYN)
#     {
#         data_len = Length;
#     }
#     else
# #endif
#     {
#         data_len  = XfSignalPB_Ref->BufferLength;
#     }
# #endif /* COM_ENABLE_DIRECT_PACKING */
# 
# #if COM_ENABLE_DIRECT_PACKING == STD_ON
#     /* direct packing types,(Types that support direct packing(uint8_N,
#        uint8_Dyn,Float32,Float64) should have Type greater than BYTES) */
#     if (signal_type >= COM_BYTES)
#     {
#         VAR(uint16, AUTOMATIC)  index;
#         /* write byte aligned signals which are integer multiple of 8 bits  */
#         if (IS_ENDIANNESS_CONV_NEEDED(packing_type, XfSignalPB_Ref->Flags))
#         {
#             srcp = srcp + (data_len - 1U);
# 
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#             if (NULL_PTR != SignalChangedStatus)
#             {
#                 for (index = 0; index < data_len; index++)
#                 {
#                     if(*destp != *srcp)
#                     {
#                         *SignalChangedStatus = TRUE;
#                     }
#                     *destp = *srcp;
#                     destp++;
#                     srcp--;
#                 }
#             }
#             else
# #endif /* COM_ENABLE_TRIGGERED_ON_CHANGE */
#             {
#                 for (index = 0; index < data_len; index++)
#                 {
#                     *destp = *srcp;
#                     destp++;
#                     srcp--;
#                 }
#             }
#         }
#         else
#         {
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#             if (NULL_PTR != SignalChangedStatus)
#             {
#                 while (data_len > 0)
#                 {
#                     if (*destp != *srcp)
#                     {
#                         *SignalChangedStatus = TRUE;
#                         break;
#                     }
#                     destp++;
#                     srcp++;
#                     data_len--;
#                 }
#             }
#             if (data_len > 0)
# #endif /* COM_ENABLE_TRIGGERED_ON_CHANGE */
#             {
#                 COM_COPY_EXTERNAL(destp, srcp, (uint32)data_len);
#             }
#         }
#     }
#     else
# #endif /* COM_ENABLE_DIRECT_PACKING */
#     {
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#         VAR(boolean, AUTOMATIC) IsSignalChanged = FALSE;
# #endif
#         CONST(uint8, AUTOMATIC) shift_val = XfSignalPB_Ref->shift;
	.d2line		570
.Llo67:
	lbz		r30,16(r6)		# XfSignalPB_Ref=r6
.Llo89:
	mr		r30,r30		# shift_val=r30 shift_val=r30
#         VAR(uint32, AUTOMATIC)  tmp_uint32;
#         VAR(uint16, AUTOMATIC)  tmp_uint16;
#         VAR(uint8, AUTOMATIC) first_byte, last_byte, tmp_uint8;
#         CONST(uint8, AUTOMATIC) mask1 = XfSignalPB_Ref->Mask1;
	.d2line		574
	lbz		r29,14(r6)		# XfSignalPB_Ref=r6
.Llo124:
	mr		r29,r29		# mask1=r29 mask1=r29
#         CONST(uint8, AUTOMATIC) mask2 = XfSignalPB_Ref->Mask2;
	.d2line		575
	lbz		r28,15(r6)		# XfSignalPB_Ref=r6
.Llo125:
	mr		r28,r28		# mask2=r28 mask2=r28
#         P2VAR(uint8, AUTOMATIC, COM_APPL_DATA) tmpUint16Addr = (P2VAR(uint8, AUTOMATIC, COM_APPL_DATA)) &tmp_uint16;
	.d2line		576
	diab.addi		r27,r1,10		# tmpUint16Addr=r27
#         P2VAR(uint8, AUTOMATIC, COM_APPL_DATA) tmpUint32Addr = (P2VAR(uint8, AUTOMATIC, COM_APPL_DATA)) &tmp_uint32;
	.d2line		577
.Llo126:
	diab.addi		r26,r1,12		# tmpUint32Addr=r26
# 
#         /* handling of shifting */
#         switch(packing_type)
	.d2line		580
.Llo128:
	rlwinm		r6,r5,0,24,31		# XfSignalPB_Ref=r6 packing_type=r5
	cmpi		0,0,r6,50		# XfSignalPB_Ref=r6
	bc		1,1,.L500	# gt
	bc		1,2,.L294	# eq
.Llo129:
	cmpi		0,0,r6,33		# XfSignalPB_Ref=r6
	bc		1,1,.L501	# gt
	bc		1,2,.L303	# eq
.Llo127:
	se_cmpi		r6,1		# XfSignalPB_Ref=r6
	bc		1,2,.L303	# eq
	se_cmpi		r6,17		# XfSignalPB_Ref=r6
	bc		1,2,.L303	# eq
.Llo68:
	b		.L273
.L501:
.Llo69:
	cmpi		0,0,r6,34		# XfSignalPB_Ref=r6
	bc		1,2,.L294	# eq
	cmpi		0,0,r6,49		# XfSignalPB_Ref=r6
	bc		1,2,.L303	# eq
.Llo70:
	b		.L273
.L500:
.Llo71:
	diab.addi		r0,r6,-65		# XfSignalPB_Ref=r6
	cmpli		0,0,r0,52
	rlwinm		r6,r0,2,0,29		# XfSignalPB_Ref=r6
	e_add2is		r6,.L502@ha		# XfSignalPB_Ref=r6
	bc		1,1,.L273	# gt
	lwz		r7,.L502@l(r6)		# XfSignalPB_Ref=r6
	mtspr		ctr,r7
	bcctr		20,0
.L502:
#$$sl
	.long		.L296
	.long		.L290
	.long		.L281
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L305
	.long		.L290
	.long		.L281
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L298
	.long		.L286
	.long		.L277
	.long		.L277
	.long		.L269
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L273
	.long		.L307
	.long		.L283
	.long		.L277
	.long		.L277
	.long		.L269
#$$se
.L269:
#         {
# #if (CPU_BYTE_ORDER == LOW_BYTE_FIRST)
#             case INT32PACKEDTO5LITTLEENDBYTES:
#             case INT32PACKEDTO5BIGENDBYTES:
#             {
#                                     /* tmp_uint16: MSB contains the MSB of the
#                                      * packed data */
#                 PACK_INT8_TO_2BYTES(tmp_uint16, srcp + PACKING_EXTRA_BYTE_FACTOR, shift_val);
#                                     /* tmp_uint32: first 4 bytes of the packed data
#                                      * Variable is not directly used after assignment
#                                      * but it is accessed through srcp */
#                 PACK_INT32_TO_4BYTES(tmp_uint32, srcp, shift_val);
#                                     /* Set srcp to first byte of aligned buffer. */
#                 srcp = tmpUint32Addr;
#                 break;
#             }
#             case INT32PACKEDTO4LITTLEENDBYTES:
#             case INT32PACKEDTO3LITTLEENDBYTES:
#             case INT32PACKEDTO4BIGENDBYTES:
#             case INT32PACKEDTO3BIGENDBYTES:
#             {
#                 PACK_INT32_TO_4BYTES(tmp_uint32, srcp, shift_val);
#                 srcp = tmpUint32Addr;
#                 break;
#             }
#             case INT16PACKEDTO3LITTLEENDBYTES:
#             case INT16PACKEDTO3BIGENDBYTES:
#             {
#                 PACK_INT16_TO_4BYTES(tmp_uint32, srcp, shift_val);
#                 srcp = tmpUint32Addr;
#                 break;
#             }
#             case INT32PACKEDTO2LITTLEENDBYTES:
#             case INT16PACKEDTO2LITTLEENDBYTES:
#             case INT32PACKEDTO2BIGENDBYTES :
#             case INT16PACKEDTO2BIGENDBYTES:
#             {
#                 PACK_INT16_TO_2BYTES(tmp_uint16, srcp, shift_val);
#                 srcp = tmpUint16Addr;
#                 break;
#             }
#             case INT8PACKEDTO2LITTLEENDBYTES:
#             case INT8PACKEDTO2BIGENDBYTES:
#             {
#                 PACK_INT8_TO_2BYTES(tmp_uint16, srcp, shift_val);
#                 srcp = tmpUint16Addr;
#                 break;
#             }
#             case INT32PACKEDTO1LITTLEENDBYTES:
#             case INT16PACKEDTO1LITTLEENDBYTES:
#             case INT8PACKEDTO1LITTLEENDBYTES:
#             case INT32PACKEDTO1BIGENDBYTES:
#             case INT16PACKEDTO1BIGENDBYTES:
#             case INT8PACKEDTO1BIGENDBYTES:
#             case BOOLPACKEDTO1LITTLEENDBYTE:
#             case BOOLPACKEDTO1BIGENDBYTE:
#             {
#                 PACK_INT8_TO_1BYTE(tmp_uint8, srcp, shift_val);
#                 srcp = &tmp_uint8;
#                 break;
#             }
# #else /* Big-endian MCU */
#             case INT32PACKEDTO5LITTLEENDBYTES:
#             case INT32PACKEDTO5BIGENDBYTES:
#             {
#                                     /* tmp_uint16: MSB contains the MSB of the
#                                      * packed data */
#                 PACK_INT8_TO_2BYTES(tmp_uint16, srcp, shift_val);
	.d2line		648
.Llo72:
	lbz		r0,0(r3)		# SourceBuffer=r3
	slw		r0,r0,r30		# shift_val=r30
	sth		r0,10(r1)
#                                     /* tmp_uint32: 2-5. bytes of the packed data */
#                 PACK_INT32_TO_4BYTES(tmp_uint32, srcp, shift_val);
	.d2line		650
	lwz		r0,0(r3)		# SourceBuffer=r3
	slw		r0,r0,r30		# shift_val=r30
	stw		r0,12(r1)
#                 srcp = tmpUint32Addr + PACKING_EXTRA_BYTE_FACTOR;
	.d2line		651
	diab.addi		r31,r26,3		# tmpUint32Addr=r26
	addi		r31,r26,3		# tmpUint32Addr=r26
	b		.L273
.L277:
#                 break;
#             }
#             case INT32PACKEDTO4LITTLEENDBYTES:
#             case INT32PACKEDTO3LITTLEENDBYTES:
#             case INT32PACKEDTO4BIGENDBYTES:
#             case INT32PACKEDTO3BIGENDBYTES:
#             {
#                 PACK_INT32_TO_4BYTES(tmp_uint32, srcp, shift_val);
	.d2line		659
	lwz		r0,0(r3)		# SourceBuffer=r3
	slw		r0,r0,r30		# shift_val=r30
	stw		r0,12(r1)
#                 srcp = tmpUint32Addr + PACKING_EXTRA_BYTE_FACTOR;
	.d2line		660
	diab.addi		r31,r26,3		# tmpUint32Addr=r26
	addi		r31,r26,3		# tmpUint32Addr=r26
	b		.L273
.L281:
#                 break;
#             }
#             case INT16PACKEDTO3LITTLEENDBYTES:
#             case INT16PACKEDTO3BIGENDBYTES:
#             {
#                 PACK_INT16_TO_4BYTES(tmp_uint32, srcp, shift_val);
	.d2line		666
	lhz		r0,0(r3)		# SourceBuffer=r3
	slw		r0,r0,r30		# shift_val=r30
	stw		r0,12(r1)
#                 srcp = tmpUint32Addr + PACKING_EXTRA_BYTE_FACTOR;
	.d2line		667
	diab.addi		r31,r26,3		# tmpUint32Addr=r26
	addi		r31,r26,3		# tmpUint32Addr=r26
	b		.L273
.L283:
#                 break;
#             }
#             case INT32PACKEDTO2BIGENDBYTES:
#             {
#                 PACK_INT16_TO_2BYTES(tmp_uint16, srcp + 2, shift_val);
	.d2line		672
	lhz		r0,2(r3)		# SourceBuffer=r3
	slw		r0,r0,r30		# shift_val=r30
	sth		r0,10(r1)
#                 srcp = tmpUint16Addr + 1;
	.d2line		673
	diab.addi		r31,r27,1		# tmpUint16Addr=r27
	addi		r31,r27,1		# tmpUint16Addr=r27
	b		.L273
.L286:
#                 break;
#             }
#             case INT32PACKEDTO2LITTLEENDBYTES:
#             {
#                 PACK_INT16_TO_2BYTES(tmp_uint16, srcp + 2, shift_val);
	.d2line		678
	lhz		r0,2(r3)		# SourceBuffer=r3
	slw		r0,r0,r30		# shift_val=r30
	sth		r0,10(r1)
#                 srcp = tmpUint16Addr + 1;
	.d2line		679
	diab.addi		r31,r27,1		# tmpUint16Addr=r27
	addi		r31,r27,1		# tmpUint16Addr=r27
	b		.L273
.L290:
#                 break;
#             }
#             case INT16PACKEDTO2LITTLEENDBYTES:
#             case INT16PACKEDTO2BIGENDBYTES:
#             {
#                 PACK_INT16_TO_2BYTES(tmp_uint16, srcp, shift_val);
	.d2line		685
	lhz		r0,0(r3)		# SourceBuffer=r3
	slw		r0,r0,r30		# shift_val=r30
	sth		r0,10(r1)
#                 srcp = tmpUint16Addr + 1;
	.d2line		686
	diab.addi		r31,r27,1		# tmpUint16Addr=r27
	addi		r31,r27,1		# tmpUint16Addr=r27
	b		.L273
.L294:
#                 break;
#             }
#             case INT8PACKEDTO2BIGENDBYTES:
#             case INT8PACKEDTO2LITTLEENDBYTES:
#             {
#                 PACK_INT8_TO_2BYTES(tmp_uint16, srcp, shift_val);
	.d2line		692
.Llo73:
	lbz		r0,0(r3)		# SourceBuffer=r3
	slw		r0,r0,r30		# shift_val=r30
	sth		r0,10(r1)
#                 srcp = tmpUint16Addr + 1;
	.d2line		693
	diab.addi		r31,r27,1		# tmpUint16Addr=r27
	addi		r31,r27,1		# tmpUint16Addr=r27
	b		.L273
.L296:
#                 break;
#             }
#             case INT16PACKEDTO1LITTLEENDBYTES:
#             {
#                 PACK_INT8_TO_1BYTE(tmp_uint8, srcp + 1, shift_val);
	.d2line		698
.Llo74:
	lbz		r0,1(r3)		# SourceBuffer=r3
	slw		r0,r0,r30		# shift_val=r30
	stb		r0,8(r1)
#                 srcp = &tmp_uint8;
	.d2line		699
	diab.addi		r31,r1,8		# srcp=r31
	b		.L273
.L298:
#                 break;
#             }
#             case INT32PACKEDTO1LITTLEENDBYTES:
#             {
#                 PACK_INT8_TO_1BYTE(tmp_uint8, srcp + 3, shift_val);
	.d2line		704
	lbz		r0,3(r3)		# SourceBuffer=r3
	slw		r0,r0,r30		# shift_val=r30
	stb		r0,8(r1)
#                 srcp = &tmp_uint8;
	.d2line		705
	diab.addi		r31,r1,8		# srcp=r31
	b		.L273
.L303:
#                 break;
#             }
#             case INT8PACKEDTO1LITTLEENDBYTES:
#             case INT8PACKEDTO1BIGENDBYTES:
#             case BOOLPACKEDTO1LITTLEENDBYTE:
#             case BOOLPACKEDTO1BIGENDBYTE:
#             {
#                 PACK_INT8_TO_1BYTE(tmp_uint8, srcp, shift_val);
	.d2line		713
.Llo75:
	lbz		r0,0(r3)		# SourceBuffer=r3
	slw		r0,r0,r30		# shift_val=r30
	stb		r0,8(r1)
#                 srcp = &tmp_uint8;
	.d2line		714
	diab.addi		r31,r1,8		# srcp=r31
	b		.L273
.L305:
#                 break;
#             }
#             case INT16PACKEDTO1BIGENDBYTES:
#             {
#                 PACK_INT8_TO_1BYTE(tmp_uint8, srcp + 1, shift_val);
	.d2line		719
.Llo76:
	lbz		r0,1(r3)		# SourceBuffer=r3
	slw		r0,r0,r30		# shift_val=r30
	stb		r0,8(r1)
#                 srcp = &tmp_uint8;
	.d2line		720
	diab.addi		r31,r1,8		# srcp=r31
	b		.L273
.L307:
#                 break;
#             }
#             case INT32PACKEDTO1BIGENDBYTES:
#             {
#                 PACK_INT8_TO_1BYTE(tmp_uint8, srcp + 3, shift_val);
	.d2line		725
	lbz		r0,3(r3)		# SourceBuffer=r3
	slw		r0,r0,r30		# shift_val=r30
	stb		r0,8(r1)
#                 srcp = &tmp_uint8;
	.d2line		726
	diab.addi		r31,r1,8		# srcp=r31
.L273:
#                 break;
#             }
# #endif /* CPU_BYTE_ORDER == LOW_BYTE_FIRST */
#             default:
#             {
#                 /* All legal PackingTypes (that are written by the generator tool)
#                  * are listed above. In case of illegal packing type, nothing to
#                  * do here (handled in default clause of next switch). */
#                 break;
#             }
#         }
# 
#         /* calculate the first and last byte address */
#         switch(packing_type)
	.d2line		740
	rlwinm		r6,r5,0,24,31		# XfSignalPB_Ref=r6 packing_type=r5
.Llo77:
	cmpi		0,0,r6,50		# XfSignalPB_Ref=r6
	bc		1,1,.L503	# gt
.Llo48:
	bc		1,2,.L324	# eq
	cmpi		0,0,r6,33		# XfSignalPB_Ref=r6
	bc		1,1,.L504	# gt
	bc		1,2,.L332	# eq
	se_cmpi		r6,1		# XfSignalPB_Ref=r6
	bc		1,2,.L332	# eq
	se_cmpi		r6,17		# XfSignalPB_Ref=r6
	bc		1,2,.L332	# eq
.Llo78:
	b		.L333
.L504:
.Llo79:
	cmpi		0,0,r6,34		# XfSignalPB_Ref=r6
	bc		1,2,.L317	# eq
	cmpi		0,0,r6,49		# XfSignalPB_Ref=r6
	bc		1,2,.L332	# eq
.Llo80:
	b		.L333
.L503:
.Llo81:
	diab.addi		r0,r6,-65		# XfSignalPB_Ref=r6
	cmpli		0,0,r0,52
	rlwinm		r6,r0,2,0,29		# XfSignalPB_Ref=r6
	e_add2is		r6,.L505@ha		# XfSignalPB_Ref=r6
	bc		1,1,.L333	# gt
	lwz		r7,.L505@l(r6)		# XfSignalPB_Ref=r6
	mtspr		ctr,r7
	bcctr		20,0
.L505:
#$$sl
	.long		.L332
	.long		.L317
	.long		.L314
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L332
	.long		.L324
	.long		.L321
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L332
	.long		.L317
	.long		.L314
	.long		.L312
	.long		.L310
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L333
	.long		.L332
	.long		.L324
	.long		.L321
	.long		.L319
	.long		.L318
#$$se
.L310:
#         {
# #if (CPU_BYTE_ORDER == LOW_BYTE_FIRST)
#             case INT32PACKEDTO5LITTLEENDBYTES:
#             {
#                 first_byte = *srcp;
#                 last_byte = MSB_U16(tmp_uint16);
#                 srcp++;
#                 break;
#             }
#             case INT32PACKEDTO4LITTLEENDBYTES:
#             {
#                 first_byte = *srcp;
#                 last_byte = *(srcp + PACKING_FACTOR_FOR_FOUR_BYTES_DATA);
#                 srcp++;
#                 break;
#             }
#             case INT32PACKEDTO3LITTLEENDBYTES:
#             case INT16PACKEDTO3LITTLEENDBYTES:
#             {
#                 first_byte = *srcp;
#                 last_byte = *(srcp + PACKING_FACTOR_FOR_THREE_BYTES_DATA);
#                 srcp++;
#                 break;
#             }
#             case INT32PACKEDTO2LITTLEENDBYTES:
#             case INT16PACKEDTO2LITTLEENDBYTES:
#             case INT8PACKEDTO2LITTLEENDBYTES:
#             {
#                 first_byte = *srcp;
#                 last_byte = *(srcp + PACKING_FACTOR_FOR_TWO_BYTES_DATA);
#                 break;
#             }
#             case INT32PACKEDTO5BIGENDBYTES:
#             {
#                 first_byte = MSB_U16(tmp_uint16);
#                 last_byte = *srcp;
#                 srcp = srcp + 3;
#                 break;
#             }
#             case INT32PACKEDTO4BIGENDBYTES:
#             {
#                 first_byte = *(srcp + PACKING_FACTOR_FOR_FOUR_BYTES_DATA);
#                 last_byte = *srcp;
#                 srcp = srcp + 2;
#                 break;
#             }
#             case INT32PACKEDTO3BIGENDBYTES:
#             case INT16PACKEDTO3BIGENDBYTES:
#             {
#                 first_byte = *(srcp + PACKING_FACTOR_FOR_THREE_BYTES_DATA);
#                 last_byte = *srcp;
#                 srcp++;
#                 break;
#             }
#             case INT32PACKEDTO2BIGENDBYTES :
#             case INT16PACKEDTO2BIGENDBYTES:
#             case INT8PACKEDTO2BIGENDBYTES:
#             {
#                 first_byte = *(srcp + PACKING_FACTOR_FOR_TWO_BYTES_DATA);
#                 last_byte = *srcp;
#                 break;
#             }
# #else /* Big-endian MCU */
#             case INT32PACKEDTO5LITTLEENDBYTES:
#             {
#                 first_byte = *srcp;
	.d2line		806
.Llo82:
	lbz		r6,0(r31)		# XfSignalPB_Ref=r6 srcp=r31
.Llo92:
	mr		r6,r6		# first_byte=r6 first_byte=r6
#                 last_byte = MSB_U16(tmp_uint16);
	.d2line		807
	lhz		r0,10(r1)
	rlwinm		r0,r0,24,24,31
.Llo115:
	mr		r0,r0		# last_byte=r0 last_byte=r0
#                 srcp--;
	.d2line		808
	diab.addi		r31,r31,-1		# srcp=r31 srcp=r31
	b		.L311
.L312:
#                 break;
#             }
#             case INT32PACKEDTO4LITTLEENDBYTES:
#             {
#                 first_byte = *srcp;
	.d2line		813
.Llo93:
	lbz		r6,0(r31)		# XfSignalPB_Ref=r6 srcp=r31
.Llo94:
	mr		r6,r6		# first_byte=r6 first_byte=r6
#                 last_byte = *(srcp - BIGEND_COMPENSATION_FACTOR_FOR_FOUR_BYTES_DATA);
	.d2line		814
	lbz		r0,-3(r31)		# srcp=r31
.Llo116:
	mr		r0,r0		# last_byte=r0 last_byte=r0
#                 srcp--;
	.d2line		815
	diab.addi		r31,r31,-1		# srcp=r31 srcp=r31
	b		.L311
.L314:
#                 break;
#             }
#             case INT32PACKEDTO3LITTLEENDBYTES:
#             case INT16PACKEDTO3LITTLEENDBYTES:
#             {
#                 first_byte = *srcp;
	.d2line		821
.Llo95:
	lbz		r6,0(r31)		# XfSignalPB_Ref=r6 srcp=r31
.Llo96:
	mr		r6,r6		# first_byte=r6 first_byte=r6
#                 last_byte = *(srcp - BIGEND_COMPENSATION_FACTOR_FOR_THREE_BYTES_DATA);
	.d2line		822
	lbz		r0,-2(r31)		# srcp=r31
.Llo117:
	mr		r0,r0		# last_byte=r0 last_byte=r0
#                 srcp--;
	.d2line		823
	diab.addi		r31,r31,-1		# srcp=r31 srcp=r31
	b		.L311
.L317:
#                 break;
#             }
#             case INT32PACKEDTO2LITTLEENDBYTES:
#             case INT16PACKEDTO2LITTLEENDBYTES:
#             case INT8PACKEDTO2LITTLEENDBYTES:
#             {
#                 first_byte = *srcp;
	.d2line		830
.Llo97:
	lbz		r6,0(r31)		# XfSignalPB_Ref=r6 srcp=r31
.Llo98:
	mr		r6,r6		# first_byte=r6 first_byte=r6
#                 srcp--;
#                 last_byte = *srcp;
	.d2line		832
	lbzu		r0,-1(r31)		# srcp=r31
.Llo118:
	mr		r0,r0		# last_byte=r0 last_byte=r0
	b		.L311
.L318:
#                 break;
#             }
#             case INT32PACKEDTO5BIGENDBYTES:
#             {
#                 first_byte = MSB_U16(tmp_uint16);
	.d2line		837
.Llo99:
	lhz		r6,10(r1)		# XfSignalPB_Ref=r6
.Llo83:
	rlwinm		r6,r6,24,24,31		# XfSignalPB_Ref=r6 XfSignalPB_Ref=r6
.Llo84:
	mr		r6,r6		# first_byte=r6 first_byte=r6
#                 last_byte = *srcp;
	.d2line		838
	lbz		r0,0(r31)		# srcp=r31
.Llo119:
	mr		r0,r0		# last_byte=r0 last_byte=r0
#                 srcp = srcp - PACKING_EXTRA_BYTE_FACTOR;
	.d2line		839
	diab.addi		r3,r31,-3		# SourceBuffer=r3 srcp=r31
	diab.addi		r31,r31,-3		# srcp=r31 srcp=r31
	b		.L311
.L319:
#                 break;
#             }
#             case INT32PACKEDTO4BIGENDBYTES:
#             {
#                 first_byte = *(srcp - PACKING_FACTOR_FOR_FOUR_BYTES_DATA);
	.d2line		844
.Llo100:
	lbz		r6,-3(r31)		# XfSignalPB_Ref=r6 srcp=r31
.Llo101:
	mr		r6,r6		# first_byte=r6 first_byte=r6
#                 last_byte = *srcp;
	.d2line		845
	lbz		r0,0(r31)		# srcp=r31
.Llo120:
	mr		r0,r0		# last_byte=r0 last_byte=r0
#                 srcp = srcp - 2;
	.d2line		846
	diab.addi		r3,r31,-2		# SourceBuffer=r3 srcp=r31
	diab.addi		r31,r31,-2		# srcp=r31 srcp=r31
	b		.L311
.L321:
#                 break;
#             }
#             case INT32PACKEDTO3BIGENDBYTES:
#             case INT16PACKEDTO3BIGENDBYTES:
#             {
#                 first_byte = *(srcp - PACKING_FACTOR_FOR_THREE_BYTES_DATA);
	.d2line		852
.Llo102:
	lbz		r6,-2(r31)		# XfSignalPB_Ref=r6 srcp=r31
.Llo103:
	mr		r6,r6		# first_byte=r6 first_byte=r6
#                 last_byte = *srcp;
	.d2line		853
	lbz		r0,0(r31)		# srcp=r31
.Llo121:
	mr		r0,r0		# last_byte=r0 last_byte=r0
#                 srcp--;
	.d2line		854
	diab.addi		r31,r31,-1		# srcp=r31 srcp=r31
	b		.L311
.L324:
#                 break;
#             }
#             case INT32PACKEDTO2BIGENDBYTES :
#             case INT16PACKEDTO2BIGENDBYTES:
#             case INT8PACKEDTO2BIGENDBYTES:
#             {
#                 first_byte = *(srcp - PACKING_FACTOR_FOR_TWO_BYTES_DATA);
	.d2line		861
.Llo104:
	lbz		r6,-1(r31)		# XfSignalPB_Ref=r6 srcp=r31
.Llo105:
	mr		r6,r6		# first_byte=r6 first_byte=r6
#                 last_byte = *srcp;
	.d2line		862
	lbz		r0,0(r31)		# srcp=r31
.Llo122:
	mr		r0,r0		# last_byte=r0 last_byte=r0
	b		.L311
.L332:
#                 break;
#             }
# #endif /* CPU_BYTE_ORDER == LOW_BYTE_FIRST */
#             /* Handle separately the single byte case */
#             case INT32PACKEDTO1LITTLEENDBYTES:
#             case INT16PACKEDTO1LITTLEENDBYTES:
#             case INT8PACKEDTO1LITTLEENDBYTES:
#             case BOOLPACKEDTO1LITTLEENDBYTE:
#             case INT32PACKEDTO1BIGENDBYTES:
#             case INT16PACKEDTO1BIGENDBYTES:
#             case INT8PACKEDTO1BIGENDBYTES:
#             case BOOLPACKEDTO1BIGENDBYTE:
#             {
#                 first_byte = *srcp & mask1;
	.d2line		876
.Llo85:
	lbz		r3,0(r31)		# SourceBuffer=r3 srcp=r31
.Llo49:
	and		r3,r3,r29		# SourceBuffer=r3 SourceBuffer=r3 mask1=r29
.Llo50:
	mr		r3,r3		# first_byte=r3 first_byte=r3
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if((uint8)(*destp & mask1) != first_byte)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
# 
#                 *destp &= (uint8)~mask1;
	.d2line		884
	lbz		r0,0(r25)		# destp=r25
	andc		r0,r0,r29		# mask1=r29
	stb		r0,0(r25)		# destp=r25
#                 *destp |= first_byte;
	.d2line		885
	se_extzb		r0
	or		r0,r0,r3		# first_byte=r3
	stb		r0,0(r25)		# destp=r25
# 
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(NULL_PTR != SignalChangedStatus)
#                 {
#                     *SignalChangedStatus = IsSignalChanged;
#                 }
# #endif
#                 return returnValue;
	.d2line		893
	rlwinm		r3,r4,0,24,31		# first_byte=r3 returnValue=r4
.Llo106:
	b		.L267
.L333:
#             }
#             default:
#             {
#                 first_byte = *destp & mask1;
	.d2line		897
.Llo86:
	lbz		r0,0(r25)		# destp=r25
	and		r6,r0,r29		# XfSignalPB_Ref=r6 mask1=r29
.Llo107:
	mr		r6,r6		# first_byte=r6 first_byte=r6
#                 last_byte = *destp & mask2;
	.d2line		898
	and		r0,r0,r28		# mask2=r28
.Llo123:
	mr		r0,r0		# last_byte=r0 last_byte=r0
.L311:
#                 break;
#             }
#         }
#         /* Store the first byte */
#         first_byte &= mask1;
	.d2line		903
	and		r6,r6,r29		# first_byte=r6 first_byte=r6 mask1=r29
	mr		r6,r6		# first_byte=r6 first_byte=r6
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#         if((uint8)(*destp & mask1) != first_byte)
#         {
#             IsSignalChanged = TRUE;
#         }
# #endif
#         *destp &= (uint8)~mask1;
	.d2line		910
	lbz		r3,0(r25)		# SourceBuffer=r3 destp=r25
.Llo51:
	andc		r3,r3,r29		# SourceBuffer=r3 SourceBuffer=r3 mask1=r29
	stb		r3,0(r25)		# destp=r25 SourceBuffer=r3
#         *destp |= first_byte;
	.d2line		911
	se_extzb		r3		# SourceBuffer=r3
	or		r3,r3,r6		# SourceBuffer=r3 SourceBuffer=r3 first_byte=r6
	stb		r3,0(r25)		# destp=r25 SourceBuffer=r3
#         destp++;
	.d2line		912
	se_addi		r25,1		# destp=r25 destp=r25
#         /* store the middle bytes */
#         switch(packing_type)
	.d2line		914
	rlwinm		r6,r5,0,24,31		# first_byte=r6 packing_type=r5
	cmpi		0,0,r6,101		# first_byte=r6
	bc		1,1,.L506	# gt
.Llo52:
	bc		1,2,.L334	# eq
	cmpi		0,0,r6,67		# first_byte=r6
	bc		1,2,.L338	# eq
	cmpi		0,0,r6,83		# first_byte=r6
	bc		1,2,.L342	# eq
	cmpi		0,0,r6,99		# first_byte=r6
	bc		1,2,.L338	# eq
	cmpi		0,0,r6,100		# first_byte=r6
	bc		1,2,.L336	# eq
.Llo108:
	b		.L335
.L506:
.Llo109:
	cmpi		0,0,r6,115		# first_byte=r6
	bc		1,2,.L342	# eq
	cmpi		0,0,r6,116		# first_byte=r6
	bc		1,2,.L340	# eq
	cmpi		0,0,r6,117		# first_byte=r6
	bc		1,2,.L339	# eq
.Llo110:
	b		.L335
.L334:
#         {
# #if (CPU_BYTE_ORDER == LOW_BYTE_FIRST)
#             case INT32PACKEDTO5LITTLEENDBYTES:
#             {
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
#                 destp++;
#                 srcp++;
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
#                 destp++;
#                 srcp++;
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                *destp = *srcp;
#                 destp++;
#                 break;
#             }
#             case INT32PACKEDTO4LITTLEENDBYTES:
#             {
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
#                 destp++;
#                 srcp++;
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
#                 destp++;
#                 break;
#             }
#             case INT32PACKEDTO3LITTLEENDBYTES:
#             case INT16PACKEDTO3LITTLEENDBYTES:
#             {
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
#                 destp++;
#                 break;
#             }
#             case INT32PACKEDTO5BIGENDBYTES:
#             {
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
#                 destp++;
#                 srcp--;
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
#                 destp++;
#                 srcp--;
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
#                 destp++;
#                 break;
#             }
#             case INT32PACKEDTO4BIGENDBYTES:
#             {
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
#                 destp++;
#                 srcp--;
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
#                 destp++;
#                 break;
#             }
#             case INT32PACKEDTO3BIGENDBYTES:
#             case INT16PACKEDTO3BIGENDBYTES:
#             {
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
#                 destp++;
#                 break;
#             }
# #else /* Big-endian MCU */
#             case INT32PACKEDTO5LITTLEENDBYTES:
#             {
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
	.d2line		1054
.Llo111:
	lbz		r3,0(r31)		# SourceBuffer=r3 srcp=r31
.Llo53:
	stb		r3,0(r25)		# destp=r25 SourceBuffer=r3
#                 destp++;
#                 srcp--;
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
	.d2line		1063
	lbz		r3,-1(r31)		# SourceBuffer=r3 srcp=r31
	stb		r3,1(r25)		# destp=r25 SourceBuffer=r3
#                 destp++;
#                 srcp--;
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
	.d2line		1072
	lbz		r3,-2(r31)		# SourceBuffer=r3 srcp=r31
	stb		r3,2(r25)		# destp=r25 SourceBuffer=r3
	diab.addi		r3,r25,3		# SourceBuffer=r3 destp=r25
.Llo54:
	se_addi		r25,3		# destp=r25 destp=r25
	b		.L335
.L336:
#                 destp++;
#                 break;
#             }
#             case INT32PACKEDTO4LITTLEENDBYTES:
#             {
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
	.d2line		1084
.Llo112:
	lbz		r3,0(r31)		# SourceBuffer=r3 srcp=r31
.Llo55:
	stb		r3,0(r25)		# destp=r25 SourceBuffer=r3
#                 destp++;
#                 srcp--;
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
	.d2line		1093
	lbz		r3,-1(r31)		# SourceBuffer=r3 srcp=r31
	stb		r3,1(r25)		# destp=r25 SourceBuffer=r3
	diab.addi		r3,r25,2		# SourceBuffer=r3 destp=r25
.Llo56:
	se_addi		r25,2		# destp=r25 destp=r25
	b		.L335
.L338:
#                 destp++;
#                 break;
#             }
#             case INT32PACKEDTO3LITTLEENDBYTES:
#             case INT16PACKEDTO3LITTLEENDBYTES:
#             {
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
	.d2line		1106
.Llo113:
	lbz		r3,0(r31)		# SourceBuffer=r3 srcp=r31
.Llo57:
	stb		r3,0(r25)		# destp=r25 SourceBuffer=r3
#                 destp++;
	.d2line		1107
	se_addi		r25,1		# destp=r25 destp=r25
	b		.L335
.L339:
#                 break;
#             }
#             case INT32PACKEDTO5BIGENDBYTES:
#             {
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
	.d2line		1118
.Llo58:
	lbz		r3,0(r31)		# SourceBuffer=r3 srcp=r31
.Llo59:
	stb		r3,0(r25)		# destp=r25 SourceBuffer=r3
#                 destp++;
#                 srcp++;
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
	.d2line		1127
	lbz		r3,1(r31)		# SourceBuffer=r3 srcp=r31
	stb		r3,1(r25)		# destp=r25 SourceBuffer=r3
#                 destp++;
#                 srcp++;
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
	.d2line		1136
	lbz		r3,2(r31)		# SourceBuffer=r3 srcp=r31
	stb		r3,2(r25)		# destp=r25 SourceBuffer=r3
	diab.addi		r3,r25,3		# SourceBuffer=r3 destp=r25
.Llo60:
	se_addi		r25,3		# destp=r25 destp=r25
	b		.L335
.L340:
#                 destp++;
#                 break;
#             }
#             case INT32PACKEDTO4BIGENDBYTES:
#             {
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
	.d2line		1148
.Llo114:
	lbz		r3,0(r31)		# SourceBuffer=r3 srcp=r31
.Llo61:
	stb		r3,0(r25)		# destp=r25 SourceBuffer=r3
#                 destp++;
#                 srcp++;
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
	.d2line		1157
	lbz		r3,1(r31)		# SourceBuffer=r3 srcp=r31
	stb		r3,1(r25)		# destp=r25 SourceBuffer=r3
	diab.addi		r3,r25,2		# SourceBuffer=r3 destp=r25
.Llo62:
	se_addi		r25,2		# destp=r25 destp=r25
	b		.L335
.L342:
#                 destp++;
#                 break;
#             }
#             case INT32PACKEDTO3BIGENDBYTES:
#             case INT16PACKEDTO3BIGENDBYTES:
#             {
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#                 if(*destp != *srcp)
#                 {
#                     IsSignalChanged = TRUE;
#                 }
# #endif
#                 *destp = *srcp;
	.d2line		1170
	lbz		r3,0(r31)		# SourceBuffer=r3 srcp=r31
.Llo63:
	stb		r3,0(r25)		# destp=r25 SourceBuffer=r3
#                 destp++;
	.d2line		1171
	se_addi		r25,1		# destp=r25 destp=r25
.L335:
#                 break;
#             }
# #endif /* CPU_BYTE_ORDER == LOW_BYTE_FIRST */
#             default:
#             {
#                 /* All legal PackingTypes (that are written by the generator tool)
#                  * are listed above. In case of illegal packing type, nothing to
#                  * do here (handled in default clause of previous switch). */
#                 break;
#             }
#         } /* PRQA S 2016 */ /* MISRA 15.3 default clause empty */
#         /* Store the last byte */
#         last_byte &= mask2;
	.d2line		1184
.Llo64:
	and		r0,r0,r28		# last_byte=r0 last_byte=r0 mask2=r28
	mr		r3,r0		# last_byte=r3 last_byte=r0
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#         if((uint8)(*destp & mask2) != last_byte)
#         {
#             IsSignalChanged = TRUE;
#         }
# #endif
#         *destp &= (uint8)~mask2;
	.d2line		1191
	lbz		r0,0(r25)		# last_byte=r0 destp=r25
	andc		r0,r0,r28		# last_byte=r0 last_byte=r0 mask2=r28
	stb		r0,0(r25)		# destp=r25 last_byte=r0
#         *destp |= last_byte;
	.d2line		1192
	se_extzb		r0		# last_byte=r0
	or		r0,r0,r3		# last_byte=r0 last_byte=r0 last_byte=r3
	stb		r0,0(r25)		# destp=r25 last_byte=r0
	.section	.text_vle
.L480:
# 
# #if COM_ENABLE_TRIGGERED_ON_CHANGE == STD_ON
#         if(NULL_PTR != SignalChangedStatus)
#         {
#             *SignalChangedStatus = IsSignalChanged;
#         }
# #endif
#     }
#     return returnValue;
	.d2line		1201
.Llo91:
	rlwinm		r3,r4,0,24,31		# last_byte=r3 returnValue=r4
.L267:
# }
	.d2line		1202
	.d2epilogue_begin
.Llo87:
	lmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)		# last_byte=r0
	mtspr		lr,r0		# last_byte=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L466:
	.type		ComXf_PackSignal,@function
	.size		ComXf_PackSignal,.-ComXf_PackSignal
# Number of nodes = 497

# Allocations for ComXf_PackSignal
#	?a4		SourceBuffer
#	?a5		DestinationBuffer
#	?a6		XfSignalPB_Ref
#	?a7		returnValue
#	?a8		packing_type
#	?a9		srcp
#	?a10		destp
#	?a11		shift_val
#	SP,12		tmp_uint32
#	SP,10		tmp_uint16
#	?a12		first_byte
#	?a13		last_byte
#	SP,8		tmp_uint8
#	?a14		mask1
#	?a15		mask2
#	?a16		tmpUint16Addr
#	?a17		tmpUint32Addr

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L507:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\inc\\ComXf_CommonTypes.h"
.L388:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\ComXf_Common.c"
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
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	14
	.uleb128	15
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\Com\\ssc\\make\\..\\src\\ComXf_Common.c"
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
.L391:
	.sleb128	2
	.4byte		.L385-.L2
	.byte		"ComXf_UnPackSignal"
	.byte		0
	.4byte		.L388
	.uleb128	56
	.uleb128	23
	.4byte		.L389
	.byte		0x1
	.byte		0x1
	.4byte		.L386
	.4byte		.L387
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L388
	.uleb128	56
	.uleb128	23
	.byte		"SourceBuffer"
	.byte		0
	.4byte		.L392
	.4byte		.L395
	.sleb128	3
	.4byte		.L388
	.uleb128	56
	.uleb128	23
	.byte		"DestinationBuffer"
	.byte		0
	.4byte		.L396
	.4byte		.L398
	.sleb128	3
	.4byte		.L388
	.uleb128	56
	.uleb128	23
	.byte		"XfSignalPB_Ref"
	.byte		0
	.4byte		.L399
	.4byte		.L404
	.sleb128	3
	.4byte		.L388
	.uleb128	56
	.uleb128	23
	.byte		"SignExtension"
	.byte		0
	.4byte		.L405
	.4byte		.L407
	.section	.debug_info,,n
.L408:
	.sleb128	4
	.4byte		.L388
	.uleb128	66
	.uleb128	27
	.byte		"returnValue"
	.byte		0
	.4byte		.L389
	.4byte		.L409
.L410:
	.sleb128	4
	.4byte		.L388
	.uleb128	67
	.uleb128	29
	.byte		"packing_type"
	.byte		0
	.4byte		.L394
	.4byte		.L411
.L412:
	.sleb128	4
	.4byte		.L388
	.uleb128	68
	.uleb128	38
	.byte		"signal_type"
	.byte		0
	.4byte		.L413
	.4byte		.L416
.L417:
	.sleb128	4
	.4byte		.L388
	.uleb128	69
	.uleb128	47
	.byte		"srcp"
	.byte		0
	.4byte		.L393
	.4byte		.L418
.L419:
	.sleb128	4
	.4byte		.L388
	.uleb128	70
	.uleb128	44
	.byte		"destp"
	.byte		0
	.4byte		.L397
	.4byte		.L420
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L424
	.4byte		.L421
	.4byte		.L422
.L425:
	.sleb128	4
	.4byte		.L388
	.uleb128	112
	.uleb128	34
	.byte		"signal_flags"
	.byte		0
	.4byte		.L426
	.4byte		.L429
.L430:
	.sleb128	4
	.4byte		.L388
	.uleb128	113
	.uleb128	33
	.byte		"shift_val"
	.byte		0
	.4byte		.L394
	.4byte		.L431
.L432:
	.sleb128	4
	.4byte		.L388
	.uleb128	114
	.uleb128	34
	.byte		"signBitMask"
	.byte		0
	.4byte		.L433
	.4byte		.L436
	.section	.debug_info,,n
.L437:
	.sleb128	6
	.4byte		.L388
	.uleb128	115
	.uleb128	32
	.byte		"tmp_uint32"
	.byte		0
	.4byte		.L434
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L438:
	.sleb128	4
	.4byte		.L388
	.uleb128	116
	.uleb128	31
	.byte		"tmpMSB_uint8"
	.byte		0
	.4byte		.L389
	.4byte		.L439
.L440:
	.sleb128	4
	.4byte		.L388
	.uleb128	117
	.uleb128	48
	.byte		"tmpUint32Addr"
	.byte		0
	.4byte		.L397
	.4byte		.L441
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L451
	.4byte		.L448
	.4byte		.L449
.L452:
	.sleb128	4
	.4byte		.L388
	.uleb128	342
	.uleb128	42
	.byte		"tmp_shifted_value"
	.byte		0
	.4byte		.L433
	.4byte		.L453
	.section	.debug_info,,n
	.sleb128	0
.L451:
	.section	.debug_info,,n
	.sleb128	0
.L424:
	.section	.debug_info,,n
	.sleb128	0
.L385:
	.section	.debug_info,,n
.L467:
	.sleb128	2
	.4byte		.L464-.L2
	.byte		"ComXf_PackSignal"
	.byte		0
	.4byte		.L388
	.uleb128	472
	.uleb128	23
	.4byte		.L389
	.byte		0x1
	.byte		0x1
	.4byte		.L465
	.4byte		.L466
	.sleb128	3
	.4byte		.L388
	.uleb128	472
	.uleb128	23
	.byte		"SourceBuffer"
	.byte		0
	.4byte		.L392
	.4byte		.L468
	.sleb128	3
	.4byte		.L388
	.uleb128	472
	.uleb128	23
	.byte		"DestinationBuffer"
	.byte		0
	.4byte		.L396
	.4byte		.L469
	.sleb128	3
	.4byte		.L388
	.uleb128	472
	.uleb128	23
	.byte		"XfSignalPB_Ref"
	.byte		0
	.4byte		.L399
	.4byte		.L470
.L471:
	.sleb128	4
	.4byte		.L388
	.uleb128	484
	.uleb128	27
	.byte		"returnValue"
	.byte		0
	.4byte		.L389
	.4byte		.L472
.L473:
	.sleb128	4
	.4byte		.L388
	.uleb128	485
	.uleb128	29
	.byte		"packing_type"
	.byte		0
	.4byte		.L394
	.4byte		.L474
.L475:
	.sleb128	4
	.4byte		.L388
	.uleb128	486
	.uleb128	47
	.byte		"srcp"
	.byte		0
	.4byte		.L393
	.4byte		.L476
.L477:
	.sleb128	4
	.4byte		.L388
	.uleb128	487
	.uleb128	44
	.byte		"destp"
	.byte		0
	.4byte		.L397
	.4byte		.L478
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L482
	.4byte		.L479
	.4byte		.L480
.L483:
	.sleb128	4
	.4byte		.L388
	.uleb128	570
	.uleb128	33
	.byte		"shift_val"
	.byte		0
	.4byte		.L394
	.4byte		.L484
.L485:
	.sleb128	6
	.4byte		.L388
	.uleb128	571
	.uleb128	33
	.byte		"tmp_uint32"
	.byte		0
	.4byte		.L434
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	12
.L486:
	.sleb128	6
	.4byte		.L388
	.uleb128	572
	.uleb128	33
	.byte		"tmp_uint16"
	.byte		0
	.4byte		.L427
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	10
.L487:
	.sleb128	4
	.4byte		.L388
	.uleb128	573
	.uleb128	31
	.byte		"first_byte"
	.byte		0
	.4byte		.L389
	.4byte		.L488
.L489:
	.sleb128	4
	.4byte		.L388
	.uleb128	573
	.uleb128	43
	.byte		"last_byte"
	.byte		0
	.4byte		.L389
	.4byte		.L490
.L491:
	.sleb128	6
	.4byte		.L388
	.uleb128	573
	.uleb128	54
	.byte		"tmp_uint8"
	.byte		0
	.4byte		.L389
	.sleb128	3
	.byte		0x92
	.uleb128	1
	.sleb128	8
.L492:
	.sleb128	4
	.4byte		.L388
	.uleb128	574
	.uleb128	33
	.byte		"mask1"
	.byte		0
	.4byte		.L394
	.4byte		.L493
.L494:
	.sleb128	4
	.4byte		.L388
	.uleb128	575
	.uleb128	33
	.byte		"mask2"
	.byte		0
	.4byte		.L394
	.4byte		.L495
.L496:
	.sleb128	4
	.4byte		.L388
	.uleb128	576
	.uleb128	48
	.byte		"tmpUint16Addr"
	.byte		0
	.4byte		.L397
	.4byte		.L497
.L498:
	.sleb128	4
	.4byte		.L388
	.uleb128	577
	.uleb128	48
	.byte		"tmpUint32Addr"
	.byte		0
	.4byte		.L397
	.4byte		.L499
	.section	.debug_info,,n
	.sleb128	0
.L482:
	.section	.debug_info,,n
	.sleb128	0
.L464:
	.section	.debug_info,,n
.L403:
	.sleb128	7
	.4byte		.L507
	.uleb128	44
	.uleb128	1
	.4byte		.L508-.L2
	.uleb128	20
	.section	.debug_info,,n
.L43:
	.sleb128	8
	.byte		"SignBitMask"
	.byte		0
	.4byte		.L434
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L44:
	.sleb128	8
	.byte		"BufferLength"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L45:
	.sleb128	8
	.byte		"Flags"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L46:
	.sleb128	8
	.byte		"Type"
	.byte		0
	.4byte		.L414
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L47:
	.sleb128	8
	.byte		"TransferProperty"
	.byte		0
	.4byte		.L389
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L48:
	.sleb128	8
	.byte		"PackingType"
	.byte		0
	.4byte		.L389
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L49:
	.sleb128	8
	.byte		"Mask1"
	.byte		0
	.4byte		.L389
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L50:
	.sleb128	8
	.byte		"Mask2"
	.byte		0
	.4byte		.L389
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L51:
	.sleb128	8
	.byte		"shift"
	.byte		0
	.4byte		.L389
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L508:
	.section	.debug_info,,n
.L415:
	.sleb128	9
	.4byte		.L507
	.uleb128	44
	.uleb128	1
	.4byte		.L509-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	10
	.byte		"COM_BOOLEAN"
	.byte		0
	.sleb128	0
	.sleb128	10
	.byte		"COM_UINT8"
	.byte		0
	.sleb128	1
	.sleb128	10
	.byte		"COM_UINT16"
	.byte		0
	.sleb128	2
	.sleb128	10
	.byte		"COM_UINT32"
	.byte		0
	.sleb128	3
	.sleb128	10
	.byte		"COM_SINT8"
	.byte		0
	.sleb128	4
	.sleb128	10
	.byte		"COM_SINT16"
	.byte		0
	.sleb128	5
	.sleb128	10
	.byte		"COM_SINT32"
	.byte		0
	.sleb128	6
	.sleb128	10
	.byte		"COM_BYTES"
	.byte		0
	.sleb128	7
	.sleb128	10
	.byte		"COM_UINT8_DYN"
	.byte		0
	.sleb128	8
	.sleb128	10
	.byte		"COM_FLOAT32"
	.byte		0
	.sleb128	9
	.sleb128	10
	.byte		"COM_FLOAT64"
	.byte		0
	.sleb128	10
	.sleb128	0
.L509:
	.section	.debug_info,,n
.L390:
	.sleb128	11
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L389:
	.sleb128	12
	.byte		"uint8"
	.byte		0
	.4byte		.L390
	.section	.debug_info,,n
.L394:
	.sleb128	13
	.4byte		.L389
	.section	.debug_info,,n
.L393:
	.sleb128	14
	.4byte		.L394
.L392:
	.sleb128	13
	.4byte		.L393
.L397:
	.sleb128	14
	.4byte		.L389
.L396:
	.sleb128	13
	.4byte		.L397
.L402:
	.sleb128	12
	.byte		"ComXf_SignalsPB"
	.byte		0
	.4byte		.L403
.L401:
	.sleb128	13
	.4byte		.L402
.L400:
	.sleb128	14
	.4byte		.L401
.L399:
	.sleb128	13
	.4byte		.L400
.L406:
	.sleb128	12
	.byte		"boolean"
	.byte		0
	.4byte		.L390
.L405:
	.sleb128	13
	.4byte		.L406
.L414:
	.sleb128	12
	.byte		"Com_SignalType"
	.byte		0
	.4byte		.L415
.L413:
	.sleb128	13
	.4byte		.L414
.L428:
	.sleb128	11
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L427:
	.sleb128	12
	.byte		"uint16"
	.byte		0
	.4byte		.L428
.L426:
	.sleb128	13
	.4byte		.L427
.L435:
	.sleb128	11
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L434:
	.sleb128	12
	.byte		"uint32"
	.byte		0
	.4byte		.L435
.L433:
	.sleb128	13
	.4byte		.L434
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L395:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L398:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),4
	.d2locend
.L404:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo4),5
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo5),7
	.d2locend
.L407:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo6),6
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locend
.L409:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),5
	.d2locend
.L411:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),31
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),31
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),31
	.d2locend
.L416:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),8
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo12),8
	.d2locend
.L418:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),30
	.d2locend
.L420:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo25),29
	.d2locend
.L429:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo20),28
	.d2locend
.L431:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo18),27
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo20),27
	.d2locend
.L436:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo22),26
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo12),26
	.d2locend
.L439:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo20),25
	.d2locend
.L441:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo31),29
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),29
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo35),29
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo37),29
	.d2locend
.L453:
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),0
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo19),6
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),6
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo23),6
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),6
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo3),6
	.d2locend
.L468:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),3
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),3
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),3
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),3
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),3
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),3
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),3
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),3
	.d2locend
.L469:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo65),4
	.d2locend
.L470:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo66),5
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo68),6
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),6
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),6
	.d2locreg	%offsetof(.Llo73), %offsetof(.Llo74),6
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo76),6
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo78),6
	.d2locreg	%offsetof(.Llo79), %offsetof(.Llo80),6
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo82),6
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),6
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),6
	.d2locend
.L472:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo87),4
	.d2locend
.L474:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo52),5
	.d2locend
.L476:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo67),3
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo64),31
	.d2locend
.L478:
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),25
	.d2locend
.L484:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo48),30
	.d2locend
.L488:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),6
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),6
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),6
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),6
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo100),6
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),6
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo104),6
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo85),6
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo106),3
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo108),6
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),6
	.d2locreg	%offsetof(.Llo111), %offsetof(.Llo112),6
	.d2locreg	%offsetof(.Llo113), %offsetof(.Llo58),6
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo64),6
	.d2locend
.L490:
	.d2locreg	%offsetof(.Llo115), %offsetof(.Llo93),0
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo95),0
	.d2locreg	%offsetof(.Llo117), %offsetof(.Llo97),0
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo99),0
	.d2locreg	%offsetof(.Llo119), %offsetof(.Llo100),0
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo102),0
	.d2locreg	%offsetof(.Llo121), %offsetof(.Llo104),0
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo85),0
	.d2locreg	%offsetof(.Llo123), %offsetof(.Llo91),0
	.d2locend
.L493:
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo52),29
	.d2locend
.L495:
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo91),28
	.d2locend
.L497:
	.d2locreg	%offsetof(.Llo126), %offsetof(.Llo127),27
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),27
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo75),27
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo48),27
	.d2locend
.L499:
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo129),26
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo73),26
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),26
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo48),26
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "ComXf_PackSignal"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "ComXf_UnPackSignal"
	.wrcm.nint32 "frameSize", 48
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComXf_Common.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComXf_Common.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComXf_Common.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\ComXf_Common.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\ComXf_Common.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\ComXf_Common.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\Com\ssc\make\..\src\ComXf_Common.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
