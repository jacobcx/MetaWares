#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Vstar_Bits.c"
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
# FUNC(void, VSTAR_BITS_CODE) vstar_copy(
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Library\\VSTAR_Bits\\ssc\\make\\..\\src\\Vstar_Bits.c"
        .d2line         177,29
#$$ld
.L4415:

#$$bf	vstar_copy,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,xer-ctr
	.globl		vstar_copy
	.d2_cfa_start __cie
vstar_copy:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
.Llo24:
	mr		r0,r4		# sourceBuffer=r0 sourceBuffer=r4
.Llo34:
	mr		r5,r5		# length=r5 length=r5
	.d2prologue_end
#     CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
#     CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer,
#     VAR(uint32,AUTOMATIC) length
#     )
# {
# 
#     P2VAR(uint8, AUTOMATIC, VSTAR_BITS_APPL_DATA) dstptr = destinationBuffer;
	.d2line		184
	mr		r6,r3		# dstptr=r6 dstptr=r3
#     P2CONST(uint8, AUTOMATIC, VSTAR_BITS_APPL_DATA) srcptr = sourceBuffer;
	.d2line		185
	mr		r4,r0		# srcptr=r4 srcptr=r0
#     /* check if the alignment of source and destination is the same */
#     /* also the hocus-pocus below does not worth if we copy less than 8 bytes */
#     /* PRQA S 306++ */ /*The cast from pointer to underlying 32 bits data is intentional to allow comparison */
#     if(length <= 8U)
	.d2line		189
.Llo7:
	se_cmpli	r5,8		# length=r5
	bc		1,1,.L16	# gt
	.section	.text_vle
.L4439:
#     {
#         /* PRQA S 3440++ */ /* ++ used for the most optimal assembly code */
#         /* PRQA S 2003++ */ /* fall-through in switch is intentional loop unrolling */
#         /* PRQA S 489++  */ /* pointer increment for optimization */
#         /* PRQA S 2016++ */ /* default case intentionally empty */
#         VSTAR_COPY8(dstptr,srcptr,length);
	.d2line		195
.Llo8:
	mr		r4,r3		# vstar_copy8_dst=r4 vstar_copy8_dst=r3
	mr		r3,r0		# vstar_copy8_src=r3 vstar_copy8_src=r0
.Llo2:
	diab.addi		r4,r4,-1		# vstar_copy8_dst=r4 vstar_copy8_dst=r4
.Llo36:
	diab.addi		r3,r3,-1		# vstar_copy8_src=r3 vstar_copy8_src=r3
	mr		r6,r5		# length=r6 length=r5
	se_cmpli	r6,8		# length=r6
	se_slwi		r6,2		# length=r6 length=r6
	e_add2is		r6,.L4447@ha		# length=r6
	bc		1,1,.L15	# gt
.Llo9:
	lwz		r7,.L4447@l(r6)		# length=r6
.Llo13:
	mtspr		ctr,r7
	bcctr		20,0
.L4447:
#$$sl
	.long		.L15
	.long		.L25
	.long		.L24
	.long		.L23
	.long		.L22
	.long		.L21
	.long		.L20
	.long		.L19
	.long		.L18
#$$se
.L18:
.Llo14:
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r4)		# vstar_copy8_dst=r4
.L19:
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r4)		# vstar_copy8_dst=r4
.L20:
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r4)		# vstar_copy8_dst=r4
.L21:
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r4)		# vstar_copy8_dst=r4
.L22:
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r4)		# vstar_copy8_dst=r4
.L23:
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r4)		# vstar_copy8_dst=r4
.L24:
	lbzu		r0,1(r3)		# vstar_copy8_src=r3
	stbu		r0,1(r4)		# vstar_copy8_dst=r4
.L25:
	lbz		r0,1(r3)		# vstar_copy8_src=r3
	stb		r0,1(r4)		# vstar_copy8_dst=r4
	b		.L15
	.section	.text_vle
.L4440:
.L16:
#         /* PRQA S 3440-- */ /* ++ used for the most optimal assembly code */
#         /* PRQA S 2003-- */ /* fall-through in switch is intentional loop unrolling */
#         /* PRQA S 489-- */  /* pointer increment for optimization */
#         /* PRQA S 2016-- */ /* default case intentionally empty */
#     }
#     else if ( VSTAR_MISMATCHBYMASK((vstar_aligned_t)srcptr,(vstar_aligned_t)dstptr,VSTAR_OPTIMAL_ALIGNMENTMASK))
	.d2line		201
.Llo3:
	xor		r0,r0,r3		# sourceBuffer=r0 sourceBuffer=r0 destinationBuffer=r3
.Llo37:
	e_andi.		r0,r0,3		# sourceBuffer=r0 sourceBuffer=r0
.Llo10:
	bc		1,2,.L29	# eq
#     /* PRQA S 306-- */
#     {
#         /* if the alignments mismatch we have to copy byte-wise */
#         dstptr--;   /* PRQA S 489 */ /* the optimized copy is heavy on pointer arithmetics */
	.d2line		205
.Llo4:
	diab.addi		r3,r6,-1		# dstptr=r3 dstptr=r6
#         srcptr--;   /* PRQA S 489 */ /* the optimized copy is heavy on pointer arithmetics */
	.d2line		206
.Llo35:
	diab.addi		r4,r4,-1		# srcptr=r4 srcptr=r4
.L30:
	.section	.text_vle
.L4448:
# 
#         do{
#             VAR(vstar_aligned_t,AUTOMATIC) copylen = (length > 256U) ? 256U : length;
	.d2line		209
.Llo25:
	cmpli		0,0,r5,256		# length=r5
.Llo26:
	diab.li		r6,256		# dstptr=r6
	isel		r6,r6,r0,1		# copylen=r6 dstptr=r6 copylen=r0
.L559:
.Llo38:
	isel		r0,r6,r5,1		# copylen=r0 copylen=r6 length=r5
.L560:
#             switch(copylen)
	.d2line		210
.Llo39:
	mr		r6,r0		# copylen=r6 copylen=r0
	cmpli		0,0,r6,256		# copylen=r6
	se_slwi		r6,2		# copylen=r6 copylen=r6
	e_add2is		r6,.L4455@ha		# copylen=r6
	bc		1,1,.L288	# gt
.Llo40:
	lwz		r7,.L4455@l(r6)		# copylen=r6
.Llo41:
	mtspr		ctr,r7
	bcctr		20,0
.L4455:
#$$sl
	.long		.L288
	.long		.L286
	.long		.L285
	.long		.L284
	.long		.L283
	.long		.L282
	.long		.L281
	.long		.L280
	.long		.L279
	.long		.L278
	.long		.L277
	.long		.L276
	.long		.L275
	.long		.L274
	.long		.L273
	.long		.L272
	.long		.L271
	.long		.L270
	.long		.L269
	.long		.L268
	.long		.L267
	.long		.L266
	.long		.L265
	.long		.L264
	.long		.L263
	.long		.L262
	.long		.L261
	.long		.L260
	.long		.L259
	.long		.L258
	.long		.L257
	.long		.L256
	.long		.L255
	.long		.L254
	.long		.L253
	.long		.L252
	.long		.L251
	.long		.L250
	.long		.L249
	.long		.L248
	.long		.L247
	.long		.L246
	.long		.L245
	.long		.L244
	.long		.L243
	.long		.L242
	.long		.L241
	.long		.L240
	.long		.L239
	.long		.L238
	.long		.L237
	.long		.L236
	.long		.L235
	.long		.L234
	.long		.L233
	.long		.L232
	.long		.L231
	.long		.L230
	.long		.L229
	.long		.L228
	.long		.L227
	.long		.L226
	.long		.L225
	.long		.L224
	.long		.L223
	.long		.L222
	.long		.L221
	.long		.L220
	.long		.L219
	.long		.L218
	.long		.L217
	.long		.L216
	.long		.L215
	.long		.L214
	.long		.L213
	.long		.L212
	.long		.L211
	.long		.L210
	.long		.L209
	.long		.L208
	.long		.L207
	.long		.L206
	.long		.L205
	.long		.L204
	.long		.L203
	.long		.L202
	.long		.L201
	.long		.L200
	.long		.L199
	.long		.L198
	.long		.L197
	.long		.L196
	.long		.L195
	.long		.L194
	.long		.L193
	.long		.L192
	.long		.L191
	.long		.L190
	.long		.L189
	.long		.L188
	.long		.L187
	.long		.L186
	.long		.L185
	.long		.L184
	.long		.L183
	.long		.L182
	.long		.L181
	.long		.L180
	.long		.L179
	.long		.L178
	.long		.L177
	.long		.L176
	.long		.L175
	.long		.L174
	.long		.L173
	.long		.L172
	.long		.L171
	.long		.L170
	.long		.L169
	.long		.L168
	.long		.L167
	.long		.L166
	.long		.L165
	.long		.L164
	.long		.L163
	.long		.L162
	.long		.L161
	.long		.L160
	.long		.L159
	.long		.L158
	.long		.L157
	.long		.L156
	.long		.L155
	.long		.L154
	.long		.L153
	.long		.L152
	.long		.L151
	.long		.L150
	.long		.L149
	.long		.L148
	.long		.L147
	.long		.L146
	.long		.L145
	.long		.L144
	.long		.L143
	.long		.L142
	.long		.L141
	.long		.L140
	.long		.L139
	.long		.L138
	.long		.L137
	.long		.L136
	.long		.L135
	.long		.L134
	.long		.L133
	.long		.L132
	.long		.L131
	.long		.L130
	.long		.L129
	.long		.L128
	.long		.L127
	.long		.L126
	.long		.L125
	.long		.L124
	.long		.L123
	.long		.L122
	.long		.L121
	.long		.L120
	.long		.L119
	.long		.L118
	.long		.L117
	.long		.L116
	.long		.L115
	.long		.L114
	.long		.L113
	.long		.L112
	.long		.L111
	.long		.L110
	.long		.L109
	.long		.L108
	.long		.L107
	.long		.L106
	.long		.L105
	.long		.L104
	.long		.L103
	.long		.L102
	.long		.L101
	.long		.L100
	.long		.L99
	.long		.L98
	.long		.L97
	.long		.L96
	.long		.L95
	.long		.L94
	.long		.L93
	.long		.L92
	.long		.L91
	.long		.L90
	.long		.L89
	.long		.L88
	.long		.L87
	.long		.L86
	.long		.L85
	.long		.L84
	.long		.L83
	.long		.L82
	.long		.L81
	.long		.L80
	.long		.L79
	.long		.L78
	.long		.L77
	.long		.L76
	.long		.L75
	.long		.L74
	.long		.L73
	.long		.L72
	.long		.L71
	.long		.L70
	.long		.L69
	.long		.L68
	.long		.L67
	.long		.L66
	.long		.L65
	.long		.L64
	.long		.L63
	.long		.L62
	.long		.L61
	.long		.L60
	.long		.L59
	.long		.L58
	.long		.L57
	.long		.L56
	.long		.L55
	.long		.L54
	.long		.L53
	.long		.L52
	.long		.L51
	.long		.L50
	.long		.L49
	.long		.L48
	.long		.L47
	.long		.L46
	.long		.L45
	.long		.L44
	.long		.L43
	.long		.L42
	.long		.L41
	.long		.L40
	.long		.L39
	.long		.L38
	.long		.L37
	.long		.L36
	.long		.L35
	.long		.L34
	.long		.L33
	.long		.L32
	.long		.L31
#$$se
.L31:
#             {
#                 /* PRQA S 3440++ */ /* ++ used for the most optimal assembly code */
#                 /* PRQA S 2003++ */ /* fall-through in switch is intentional loop unrolling */
#                 /* PRQA S 489++ */  /* pointer increment for optimization */
#                 VSTAR_COPY_CASE256(dstptr,srcptr)
	.d2line		215
.Llo42:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
.Llo43:
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L32:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L33:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L34:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L35:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L36:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L37:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L38:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L39:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L40:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L41:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L42:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L43:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L44:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L45:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L46:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L47:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L48:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L49:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L50:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L51:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L52:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L53:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L54:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L55:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L56:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L57:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L58:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L59:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L60:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L61:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L62:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L63:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L64:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L65:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L66:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L67:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L68:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L69:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L70:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L71:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L72:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L73:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L74:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L75:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L76:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L77:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L78:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L79:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L80:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L81:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L82:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L83:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L84:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L85:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L86:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L87:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L88:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L89:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L90:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L91:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L92:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L93:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L94:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L95:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L96:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L97:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L98:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L99:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L100:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L101:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L102:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L103:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L104:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L105:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L106:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L107:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L108:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L109:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L110:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L111:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L112:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L113:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L114:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L115:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L116:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L117:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L118:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L119:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L120:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L121:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L122:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L123:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L124:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L125:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L126:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L127:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L128:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L129:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L130:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L131:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L132:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L133:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L134:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L135:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L136:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L137:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L138:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L139:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L140:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L141:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L142:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L143:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L144:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L145:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L146:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L147:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L148:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L149:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L150:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L151:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L152:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L153:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L154:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L155:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L156:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L157:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L158:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L159:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L160:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L161:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L162:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L163:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L164:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L165:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L166:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L167:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L168:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L169:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L170:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L171:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L172:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L173:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L174:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L175:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L176:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L177:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L178:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L179:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L180:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L181:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L182:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L183:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L184:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L185:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L186:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L187:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L188:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L189:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L190:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L191:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L192:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L193:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L194:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L195:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L196:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L197:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L198:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L199:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L200:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L201:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L202:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L203:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L204:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L205:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L206:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L207:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L208:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L209:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L210:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L211:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L212:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L213:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L214:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L215:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L216:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L217:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L218:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L219:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L220:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L221:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L222:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L223:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L224:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L225:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L226:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L227:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L228:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L229:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L230:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L231:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L232:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L233:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L234:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L235:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L236:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L237:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L238:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L239:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L240:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L241:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L242:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L243:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L244:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L245:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L246:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L247:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L248:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L249:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L250:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L251:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L252:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L253:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L254:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L255:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L256:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L257:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L258:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L259:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L260:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L261:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L262:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L263:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L264:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L265:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L266:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L267:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L268:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L269:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L270:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L271:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L272:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L273:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L274:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L275:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L276:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L277:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L278:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L279:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L280:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L281:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L282:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L283:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L284:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L285:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L286:
	lbzu		r6,1(r4)		# copylen=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 copylen=r6
.L288:
#                 /* PRQA S 489-- */  /* pointer increment for optimization */
#                 default:
#                 break;
#                 /* PRQA S 3440-- */ /* ++ used for the most optimal assembly code */
#                 /* PRQA S 2003-- */ /* fall-through in switch is intentional loop unrolling */
#             }/* PRQA S 2016 */ /* default statement is intentionally empty */
# 
#             length -= copylen;
	.d2line		223
.Llo44:
	subf		r5,r0,r5		# length=r5 copylen=r0 length=r5
.Llo45:
	mr		r5,r5		# length=r5 length=r5
	.section	.text_vle
.L4449:
#         }while(length > 0U);
	.d2line		224
.Llo46:
	se_cmpi		r5,0		# length=r5
.Llo47:
	bc		0,2,.L30	# ne
	b		.L15
.L29:
	.section	.text_vle
.L4456:
#     }
#     else
#     {
#         P2VAR(vstar_aligned_t, AUTOMATIC, VSTAR_BITS_APPL_DATA)     dstaligned;
#         P2CONST(vstar_aligned_t, AUTOMATIC, VSTAR_BITS_APPL_DATA)   srcaligned;
#         /* PRQA S 306++ */ /* casting pointer to underlying integer type is needed to check its physical alignment */
#         CONST(uint8,AUTOMATIC) ctr = VSTARBITS_BYTESTOALIGNMENT(dstptr);
	.d2line		231
.Llo5:
	rlwinm		r3,r3,0,30,31		# destinationBuffer=r3 destinationBuffer=r3
.Llo27:
	subfic		r0,r3,4		# sourceBuffer=r0 destinationBuffer=r3
.Llo11:
	rlwinm		r0,r0,0,30,31		# sourceBuffer=r0 sourceBuffer=r0
.Llo12:
	mr		r0,r0		# ctr=r0 ctr=r0
#         /* PRQA S 306-- */ /* casting pointer to underlying integer type is needed to check its physical alignment */
#         /* copy n bytes at the beginning that may not be aligned */
#         dstptr--;    /* PRQA S 489 */ /* the optimized copy is heavy on pointer arithmetics */
	.d2line		234
	diab.addi		r3,r6,-1		# dstptr=r3 dstptr=r6
#         srcptr--;    /* PRQA S 489 */ /* the optimized copy is heavy on pointer arithmetics */
	.d2line		235
.Llo6:
	diab.addi		r4,r4,-1		# srcptr=r4 srcptr=r4
#         switch(ctr)
	.d2line		236
.Llo49:
	rlwinm		r6,r0,0,24,31		# dstptr=r6 ctr=r0
.Llo28:
	se_cmpi		r6,1		# dstptr=r6
.Llo29:
	bc		1,2,.L292	# eq
.Llo30:
	se_cmpi		r6,2		# dstptr=r6
.Llo31:
	bc		1,2,.L291	# eq
	se_cmpi		r6,3		# dstptr=r6
	bc		1,2,.L290	# eq
.Llo32:
	b		.L294
.L290:
#         {
#             /* PRQA S 3440++ */ /* ++ used for the most optimal assembly code */
#             /* PRQA S 2003++ */ /* fall-through in switch is intentional loop unrolling */
#             /* PRQA S 489++ */  /* pointer increment for optimization */
#           #if defined(VSTAR_BITS_64)
#             VSTAR_COPY_CASE1(dstptr, srcptr, 7UL)
#             VSTAR_COPY_CASE1(dstptr, srcptr, 6UL)
#             VSTAR_COPY_CASE1(dstptr, srcptr, 5UL)
#             VSTAR_COPY_CASE1(dstptr, srcptr, 4UL)
#           #endif
#           #if defined(VSTAR_BITS_32) || defined(VSTAR_BITS_64)
#             VSTAR_COPY_CASE1(dstptr, srcptr, 3UL)
	.d2line		248
.Llo33:
	lbzu		r6,1(r4)		# dstptr=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 dstptr=r6
.L291:
#             VSTAR_COPY_CASE1(dstptr, srcptr, 2UL)
	.d2line		249
	lbzu		r6,1(r4)		# dstptr=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 dstptr=r6
.L292:
#           #endif /* VSTAR_BITS_16 */
#             VSTAR_COPY_CASE1(dstptr, srcptr, 1UL)
	.d2line		251
	lbzu		r6,1(r4)		# dstptr=r6 srcptr=r4
	stbu		r6,1(r3)		# dstptr=r3 dstptr=r6
.L294:
#             /* PRQA S 489-- */  /* pointer increment for optimization */
#             default:
#             break;
#             /* PRQA S 3440-- */ /* ++ used for the most optimal assembly code */
#             /* PRQA S 2003-- */ /* fall-through in switch is intentional loop unrolling */
#         }/* PRQA S 2016 */ /* default statement is intentionally empty */
# 
#         /* now we perform aligned 32 bits copy */
#         /* PRQA S 489++ */ /* the optimized copy is heavy on pointer arithmetics */
#         /* PRQA S 3440++ */ /* the optimized copy is heavy on pointer arithmetics */
#         dstaligned = (vstar_aligned_t*)(++dstptr); /* PRQA S 310,3305 */ /* casting to larger type for optimization */
	.d2line		262
.Llo51:
	diab.addi		r6,r3,1		# dstptr=r6 dstptr=r3
#         dstaligned--;
	.d2line		263
	diab.addi		r3,r3,-3		# dstaligned=r3 dstptr=r3
#         srcaligned = (P2CONST(vstar_aligned_t,AUTOMATIC,AUTOMATIC))(++srcptr); /* PRQA S 310,3305 */ /* casting to larger type for optimization */
	.d2line		264
	diab.addi		r6,r4,1		# srcptr=r6 srcptr=r4
#         srcaligned--;
	.d2line		265
	diab.addi		r4,r4,-3		# srcaligned=r4 srcptr=r4
#         /* PRQA S 489-- */ /* the optimized copy is heavy on pointer arithmetics */
#         /* PRQA S 3440-- */ /* the optimized copy is heavy on pointer arithmetics */
#         length-=ctr;
	.d2line		268
.Llo52:
	rlwinm		r0,r0,0,24,31		# ctr=r0 ctr=r0
	subf		r0,r0,r5		# ctr=r0 ctr=r0 length=r5
.Llo53:
	mr		r6,r0		# length=r6 length=r0
	.section	.text_vle
.L4469:
#         {
#             VAR(vstar_aligned_t,AUTOMATIC) lengthInWords = length >> VSTAR_OPTIMAL_ALIGNMENT_LOG2;
	.d2line		270
.Llo15:
	rlwinm		r5,r6,30,2,31		# length=r5 length=r6
.Llo16:
	mr		r5,r5		# lengthInWords=r5 lengthInWords=r5
#             length -= lengthInWords << VSTAR_OPTIMAL_ALIGNMENT_LOG2;
	.d2line		271
	rlwinm		r0,r5,2,0,29		# ctr=r0 lengthInWords=r5
.Llo54:
	subf		r0,r0,r6		# ctr=r0 ctr=r0 length=r6
.Llo55:
	mr		r0,r0		# length=r0 length=r0
.L295:
	.section	.text_vle
.L4475:
#             do{
#                 CONST(vstar_aligned_t,AUTOMATIC) copylen = (lengthInWords > 256U) ? 256U: lengthInWords;
	.d2line		273
.Llo17:
	cmpli		0,0,r5,256		# lengthInWords=r5
.Llo18:
	diab.li		r6,256		# length=r6
	isel		r6,r6,r31,1		# copylen=r6 length=r6 copylen=r31
.L561:
.Llo61:
	isel		r31,r6,r5,1		# copylen=r31 copylen=r6 lengthInWords=r5
.L562:
# 
#                 switch(copylen)
	.d2line		275
.Llo62:
	mr		r6,r31		# copylen=r6 copylen=r31
	cmpli		0,0,r6,256		# copylen=r6
	se_slwi		r6,2		# copylen=r6 copylen=r6
	e_add2is		r6,.L4481@ha		# copylen=r6
	bc		1,1,.L553	# gt
	lwz		r7,.L4481@l(r6)		# copylen=r6
	mtspr		ctr,r7
	bcctr		20,0
.L4481:
#$$sl
	.long		.L553
	.long		.L551
	.long		.L550
	.long		.L549
	.long		.L548
	.long		.L547
	.long		.L546
	.long		.L545
	.long		.L544
	.long		.L543
	.long		.L542
	.long		.L541
	.long		.L540
	.long		.L539
	.long		.L538
	.long		.L537
	.long		.L536
	.long		.L535
	.long		.L534
	.long		.L533
	.long		.L532
	.long		.L531
	.long		.L530
	.long		.L529
	.long		.L528
	.long		.L527
	.long		.L526
	.long		.L525
	.long		.L524
	.long		.L523
	.long		.L522
	.long		.L521
	.long		.L520
	.long		.L519
	.long		.L518
	.long		.L517
	.long		.L516
	.long		.L515
	.long		.L514
	.long		.L513
	.long		.L512
	.long		.L511
	.long		.L510
	.long		.L509
	.long		.L508
	.long		.L507
	.long		.L506
	.long		.L505
	.long		.L504
	.long		.L503
	.long		.L502
	.long		.L501
	.long		.L500
	.long		.L499
	.long		.L498
	.long		.L497
	.long		.L496
	.long		.L495
	.long		.L494
	.long		.L493
	.long		.L492
	.long		.L491
	.long		.L490
	.long		.L489
	.long		.L488
	.long		.L487
	.long		.L486
	.long		.L485
	.long		.L484
	.long		.L483
	.long		.L482
	.long		.L481
	.long		.L480
	.long		.L479
	.long		.L478
	.long		.L477
	.long		.L476
	.long		.L475
	.long		.L474
	.long		.L473
	.long		.L472
	.long		.L471
	.long		.L470
	.long		.L469
	.long		.L468
	.long		.L467
	.long		.L466
	.long		.L465
	.long		.L464
	.long		.L463
	.long		.L462
	.long		.L461
	.long		.L460
	.long		.L459
	.long		.L458
	.long		.L457
	.long		.L456
	.long		.L455
	.long		.L454
	.long		.L453
	.long		.L452
	.long		.L451
	.long		.L450
	.long		.L449
	.long		.L448
	.long		.L447
	.long		.L446
	.long		.L445
	.long		.L444
	.long		.L443
	.long		.L442
	.long		.L441
	.long		.L440
	.long		.L439
	.long		.L438
	.long		.L437
	.long		.L436
	.long		.L435
	.long		.L434
	.long		.L433
	.long		.L432
	.long		.L431
	.long		.L430
	.long		.L429
	.long		.L428
	.long		.L427
	.long		.L426
	.long		.L425
	.long		.L424
	.long		.L423
	.long		.L422
	.long		.L421
	.long		.L420
	.long		.L419
	.long		.L418
	.long		.L417
	.long		.L416
	.long		.L415
	.long		.L414
	.long		.L413
	.long		.L412
	.long		.L411
	.long		.L410
	.long		.L409
	.long		.L408
	.long		.L407
	.long		.L406
	.long		.L405
	.long		.L404
	.long		.L403
	.long		.L402
	.long		.L401
	.long		.L400
	.long		.L399
	.long		.L398
	.long		.L397
	.long		.L396
	.long		.L395
	.long		.L394
	.long		.L393
	.long		.L392
	.long		.L391
	.long		.L390
	.long		.L389
	.long		.L388
	.long		.L387
	.long		.L386
	.long		.L385
	.long		.L384
	.long		.L383
	.long		.L382
	.long		.L381
	.long		.L380
	.long		.L379
	.long		.L378
	.long		.L377
	.long		.L376
	.long		.L375
	.long		.L374
	.long		.L373
	.long		.L372
	.long		.L371
	.long		.L370
	.long		.L369
	.long		.L368
	.long		.L367
	.long		.L366
	.long		.L365
	.long		.L364
	.long		.L363
	.long		.L362
	.long		.L361
	.long		.L360
	.long		.L359
	.long		.L358
	.long		.L357
	.long		.L356
	.long		.L355
	.long		.L354
	.long		.L353
	.long		.L352
	.long		.L351
	.long		.L350
	.long		.L349
	.long		.L348
	.long		.L347
	.long		.L346
	.long		.L345
	.long		.L344
	.long		.L343
	.long		.L342
	.long		.L341
	.long		.L340
	.long		.L339
	.long		.L338
	.long		.L337
	.long		.L336
	.long		.L335
	.long		.L334
	.long		.L333
	.long		.L332
	.long		.L331
	.long		.L330
	.long		.L329
	.long		.L328
	.long		.L327
	.long		.L326
	.long		.L325
	.long		.L324
	.long		.L323
	.long		.L322
	.long		.L321
	.long		.L320
	.long		.L319
	.long		.L318
	.long		.L317
	.long		.L316
	.long		.L315
	.long		.L314
	.long		.L313
	.long		.L312
	.long		.L311
	.long		.L310
	.long		.L309
	.long		.L308
	.long		.L307
	.long		.L306
	.long		.L305
	.long		.L304
	.long		.L303
	.long		.L302
	.long		.L301
	.long		.L300
	.long		.L299
	.long		.L298
	.long		.L297
	.long		.L296
#$$se
.L296:
#                 {
#                     /* PRQA S 3440++ */ /* ++ used for the most optimal assembly code */
#                     /* PRQA S 2003++ */ /* fall-through in switch is intentional loop unrolling */
#                     /* PRQA S 489++ */  /* pointer increment for optimization */
#                     VSTAR_COPY_CASE256(dstaligned,srcaligned)
	.d2line		280
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L297:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L298:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L299:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L300:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L301:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L302:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L303:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L304:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L305:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L306:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L307:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L308:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L309:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L310:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L311:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L312:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L313:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L314:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L315:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L316:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L317:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L318:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L319:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L320:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L321:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L322:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L323:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L324:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L325:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L326:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L327:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L328:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L329:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L330:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L331:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L332:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L333:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L334:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L335:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L336:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L337:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L338:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L339:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L340:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L341:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L342:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L343:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L344:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L345:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L346:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L347:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L348:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L349:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L350:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L351:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L352:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L353:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L354:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L355:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L356:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L357:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L358:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L359:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L360:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L361:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L362:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L363:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L364:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L365:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L366:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L367:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L368:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L369:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L370:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L371:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L372:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L373:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L374:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L375:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L376:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L377:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L378:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L379:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L380:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L381:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L382:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L383:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L384:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L385:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L386:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L387:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L388:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L389:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L390:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L391:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L392:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L393:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L394:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L395:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L396:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L397:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L398:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L399:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L400:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L401:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L402:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L403:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L404:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L405:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L406:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L407:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L408:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L409:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L410:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L411:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L412:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L413:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L414:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L415:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L416:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L417:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L418:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L419:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L420:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L421:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L422:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L423:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L424:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L425:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L426:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L427:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L428:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L429:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L430:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L431:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L432:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L433:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L434:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L435:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L436:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L437:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L438:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L439:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L440:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L441:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L442:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L443:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L444:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L445:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L446:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L447:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L448:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L449:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L450:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L451:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L452:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L453:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L454:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L455:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L456:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L457:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L458:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L459:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L460:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L461:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L462:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L463:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L464:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L465:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L466:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L467:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L468:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L469:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L470:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L471:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L472:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L473:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L474:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L475:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L476:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L477:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L478:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L479:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L480:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L481:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L482:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L483:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L484:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L485:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L486:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L487:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L488:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L489:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L490:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L491:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L492:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L493:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L494:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L495:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L496:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L497:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L498:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L499:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L500:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L501:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L502:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L503:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L504:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L505:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L506:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L507:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L508:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L509:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L510:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L511:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L512:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L513:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L514:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L515:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L516:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L517:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L518:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L519:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L520:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L521:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L522:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L523:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L524:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L525:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L526:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L527:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L528:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L529:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L530:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L531:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L532:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L533:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L534:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L535:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L536:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L537:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L538:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L539:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L540:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L541:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L542:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L543:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L544:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L545:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L546:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L547:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L548:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L549:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L550:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L551:
	lwzu		r6,4(r4)		# copylen=r6 srcaligned=r4
	stwu		r6,4(r3)		# dstaligned=r3 copylen=r6
.L553:
#                     /* PRQA S 489-- */  /* pointer increment for optimization */
#                     default:
#                     break;
#                     /* PRQA S 3440-- */ /* ++ used for the most optimal assembly code */
#                     /* PRQA S 2003-- */ /* fall-through in switch is intentional loop unrolling */
#                 }/* PRQA S 2016 */ /* default statement is intentionally empty */
#                 lengthInWords -= copylen;
	.d2line		287
	subf		r5,r31,r5		# lengthInWords=r5 copylen=r31 lengthInWords=r5
	mr		r5,r5		# lengthInWords=r5 lengthInWords=r5
	.section	.text_vle
.L4476:
#             }while(lengthInWords > 0U);
	.d2line		288
	se_cmpi		r5,0		# lengthInWords=r5
	bc		0,2,.L295	# ne
	.section	.text_vle
.L4470:
#         }
#         /* PRQA S 489++*/ /* the optimized copy is heavy on pointer arithmetics */
#         /* PRQA S 3440++ */ /* the optimized copy is heavy on pointer arithmetics */
#         dstptr = (uint8*)(++dstaligned); /* PRQA S 310 */ /* casting to original type, optimization */
	.d2line		292
.Llo60:
	diab.addi		r5,r3,4		# dstaligned=r5 dstaligned=r3
#         dstptr--;
	.d2line		293
	se_addi		r3,3		# dstptr=r3 dstaligned=r3
#         srcptr = (P2CONST(uint8,AUTOMATIC,AUTOMATIC))(++srcaligned); /* PRQA S 310 */ /* casting to original type, optimization */
	.d2line		294
.Llo48:
	diab.addi		r5,r4,4		# srcaligned=r5 srcaligned=r4
#         srcptr--;
	.d2line		295
	se_addi		r4,3		# srcptr=r4 srcaligned=r4
#         /* PRQA S 489-- */ /* the optimized copy is heavy on pointer arithmetics */
#         /* PRQA S 3440-- */ /* the optimized copy is heavy on pointer arithmetics */
#         switch(length)
	.d2line		298
.Llo50:
	mr		r6,r0		# length=r6 length=r0
	se_cmpi		r6,1		# length=r6
	bc		1,2,.L556	# eq
.Llo19:
	se_cmpi		r6,2		# length=r6
.Llo20:
	bc		1,2,.L555	# eq
	se_cmpi		r6,3		# length=r6
	bc		1,2,.L554	# eq
.Llo21:
	b		.L15
.L554:
#         {
#             /* PRQA S 3440++ */ /* ++ used for the most optimal assembly code */
#             /* PRQA S 2003++ */ /* fall-through in switch is intentional loop unrolling */
#             /* PRQA S 489++ */  /* pointer increment for optimization */
#           #if defined(VSTAR_BITS_64)
#             VSTAR_COPY_CASE1(dstptr, srcptr, 7UL)
#             VSTAR_COPY_CASE1(dstptr, srcptr, 6UL)
#             VSTAR_COPY_CASE1(dstptr, srcptr, 5UL)
#             VSTAR_COPY_CASE1(dstptr, srcptr, 4UL)
#           #endif
#           #if defined(VSTAR_BITS_32) || defined(VSTAR_BITS_64)
#             VSTAR_COPY_CASE1(dstptr, srcptr, 3UL)
	.d2line		310
	lbzu		r0,1(r4)		# ctr=r0 srcptr=r4
.Llo56:
	stbu		r0,1(r3)		# dstptr=r3 ctr=r0
.L555:
#             VSTAR_COPY_CASE1(dstptr, srcptr, 2UL)
	.d2line		311
.Llo22:
	lbzu		r0,1(r4)		# ctr=r0 srcptr=r4
.Llo57:
	stbu		r0,1(r3)		# dstptr=r3 ctr=r0
.L556:
#           #endif
#             VSTAR_COPY_CASE1(dstptr, srcptr, 1UL)
	.d2line		313
.Llo58:
	lbz		r0,1(r4)		# ctr=r0 srcptr=r4
.Llo59:
	stb		r0,1(r3)		# dstptr=r3 ctr=r0
	.section	.text_vle
.L4457:
.L15:
#             /* PRQA S 489-- */  /* pointer increment for optimization */
#             default:
#             break;
#             /* PRQA S 3440-- */ /* ++ used for the most optimal assembly code */
#             /* PRQA S 2003-- */ /* fall-through in switch is intentional loop unrolling */
#         }/* PRQA S 2016 */ /* default statement is intentionally empty */
#     }
# }
	.d2line		321
	.d2epilogue_begin
.Llo23:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# copylen=r0
	mtspr		lr,r0		# copylen=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4416:
	.type		vstar_copy,@function
	.size		vstar_copy,.-vstar_copy
# Number of nodes = 3810

# Allocations for vstar_copy
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		length
#	?a7		dstptr
#	?a8		srcptr
#	?a9		vstar_copy8_dst
#	?a10		vstar_copy8_src
#	?a11		copylen
#	?a12		dstaligned
#	?a13		srcaligned
#	?a14		ctr
#	?a15		lengthInWords
#	?a16		copylen
# FUNC(void, VSTAR_BITS_CODE) vstar_set(
	.align		2
	.section	.text_vle
        .d2line         338,29
#$$ld
.L4486:

#$$bf	vstar_set,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,cr0,xer-ctr
	.globl		vstar_set
	.d2_cfa_start __cie
vstar_set:
.Llo63:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# length=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
.Llo81:
	mr		r4,r4		# setValue=r4 setValue=r4
	mr		r0,r5		# length=r0 length=r5
	.d2prologue_end
#     P2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
#     CONST(uint8,AUTOMATIC) setValue,
#     VAR(uint32,AUTOMATIC) length
#     )
# {
#     uint8* destinationBufferPtr = (uint8*)destinationBuffer;
	.d2line		344
.Llo68:
	mr		r5,r3		# destinationBufferPtr=r5 destinationBufferPtr=r3
#     /* Check if the number of bytes is less than 8 because
#      * the hocus-pocus below does not worth if we copy a few bytes only*/
#     if(length <= 8U)
	.d2line		347
.Llo69:
	se_cmpli	r0,8		# length=r0
	bc		1,1,.L1102	# gt
	.section	.text_vle
.L4494:
#     {
#         /* PRQA S 3440++ */ /* ++ used for the most optimal assembly code */
#         /* PRQA S 2003++ */ /* fall-through in switch is intentional loop unrolling */
#         /* PRQA S 489++ */  /* pointer increment for optimization */
#         /* PRQA S 2016++ */ /* default statement is intentionally empty */
#         VSTAR_SET8(destinationBufferPtr,setValue,length);
	.d2line		353
	mr		r3,r3		# dst=r3 dst=r3
.Llo64:
	diab.addi		r3,r3,-1		# dst=r3 dst=r3
	mr		r6,r0		# length=r6 length=r0
	se_cmpli	r6,8		# length=r6
	se_slwi		r6,2		# length=r6 length=r6
	e_add2is		r6,.L4500@ha		# length=r6
	bc		1,1,.L1101	# gt
.Llo70:
	lwz		r7,.L4500@l(r6)		# length=r6
.Llo71:
	mtspr		ctr,r7
	bcctr		20,0
.L4500:
#$$sl
	.long		.L1101
	.long		.L1111
	.long		.L1110
	.long		.L1109
	.long		.L1108
	.long		.L1107
	.long		.L1106
	.long		.L1105
	.long		.L1104
#$$se
.L1104:
.Llo72:
	stbu		r4,1(r3)		# dst=r3 setValue=r4
.L1105:
	stbu		r4,1(r3)		# dst=r3 setValue=r4
.L1106:
	stbu		r4,1(r3)		# dst=r3 setValue=r4
.L1107:
	stbu		r4,1(r3)		# dst=r3 setValue=r4
.L1108:
	stbu		r4,1(r3)		# dst=r3 setValue=r4
.L1109:
	stbu		r4,1(r3)		# dst=r3 setValue=r4
.L1110:
	stbu		r4,1(r3)		# dst=r3 setValue=r4
.L1111:
	stb		r4,1(r3)		# dst=r3 setValue=r4
	b		.L1101
	.section	.text_vle
.L4495:
.L1102:
	.section	.text_vle
.L4501:
#         /* PRQA S 2016-- */ /* default statement is intentionally empty */
#         /* PRQA S 489-- */  /* pointer increment for optimization */
#         /* PRQA S 2003-- */ /* fall-through in switch is intentional loop unrolling */
#         /* PRQA S 3440-- */ /* ++ used for the most optimal assembly code */
#     }
#     else
#     {
#         /* PRQA S 306++ */ /* casting pointer to underlying integer type is needed to check its physical alignment */
#         CONST(uint8,AUTOMATIC) ctr = VSTARBITS_BYTESTOALIGNMENT(destinationBufferPtr);
	.d2line		362
.Llo65:
	rlwinm		r3,r3,0,30,31		# destinationBuffer=r3 destinationBuffer=r3
.Llo88:
	subfic		r7,r3,4		# ctr=r7 destinationBuffer=r3
.Llo89:
	rlwinm		r7,r7,0,30,31		# ctr=r7 ctr=r7
	mr		r7,r7		# ctr=r7 ctr=r7
#         /* PRQA S 306-- */ /* casting pointer to underlying integer type is needed to check its physical alignment */
# 
#         /* copy n bytes at the beginning that may not be aligned */
#         destinationBufferPtr--;    /* PRQA S 489 */ /* the optimized copy is heavy on pointer arithmetics */
	.d2line		366
	diab.addi		r3,r5,-1		# destinationBufferPtr=r3 destinationBufferPtr=r5
#         switch(ctr)
	.d2line		367
.Llo66:
	rlwinm		r6,r7,0,24,31		# ctr=r7
	se_cmpi		r6,1
	bc		1,2,.L1117	# eq
.Llo82:
	se_cmpi		r6,2
.Llo83:
	bc		1,2,.L1116	# eq
	se_cmpi		r6,3
	bc		1,2,.L1115	# eq
	b		.L1119
.L1115:
#         {
#             /* PRQA S 3440++ */ /* ++ used for the most optimal assembly code */
#             /* PRQA S 2003++ */ /* fall-through in switch is intentional loop unrolling */
#             /* PRQA S 489++ */  /* pointer increment for optimization */
#           #if defined(VSTAR_BITS_64)
#             VSTAR_SET_CASE1(destinationBufferPtr, setValue, 7UL)
#             VSTAR_SET_CASE1(destinationBufferPtr, setValue, 6UL)
#             VSTAR_SET_CASE1(destinationBufferPtr, setValue, 5UL)
#             VSTAR_SET_CASE1(destinationBufferPtr, setValue, 4UL)
#           #endif
#           #if defined(VSTAR_BITS_32) || defined(VSTAR_BITS_64)
#             VSTAR_SET_CASE1(destinationBufferPtr, setValue, 3UL)
	.d2line		379
	stbu		r4,1(r3)		# destinationBufferPtr=r3 setValue=r4
.L1116:
#             VSTAR_SET_CASE1(destinationBufferPtr, setValue, 2UL)
	.d2line		380
	stbu		r4,1(r3)		# destinationBufferPtr=r3 setValue=r4
.L1117:
#           #endif
#             VSTAR_SET_CASE1(destinationBufferPtr, setValue, 1UL)
	.d2line		382
	stbu		r4,1(r3)		# destinationBufferPtr=r3 setValue=r4
.L1119:
	.section	.text_vle
.L4507:
#             /* PRQA S 489-- */  /* pointer increment for optimization */
#             default:
#             break;
#             /* PRQA S 2003-- */ /* fall-through in switch is intentional loop unrolling */
#             /* PRQA S 3440-- */ /* ++ used for the most optimal assembly code */
#         }/* PRQA S 2016 */ /* default statement is intentionally empty */
# 
#         /* now we perform aligned 32 bits copy */
#         /* PRQA S 489++ */ /* the optimized copy is heavy on pointer arithmetics */
#         /* PRQA S 3440++ */ /* the optimized copy is heavy on pointer arithmetics */
# 
#         {
#             P2VAR(vstar_aligned_t, AUTOMATIC, VSTAR_BITS_APPL_DATA) dstaligned = (vstar_aligned_t*)(++destinationBufferPtr); /* PRQA S 310,3305 */ /* casting to larger type for optimization */
	.d2line		395
	diab.addi		r5,r3,1		# destinationBufferPtr=r5 destinationBufferPtr=r3
#             dstaligned--;
	.d2line		396
	diab.addi		r3,r3,-3		# dstaligned=r3 destinationBufferPtr=r3
	.section	.text_vle
.L4513:
#             /* PRQA S 3440-- */ /* the optimized copy is heavy on pointer arithmetics */
#             /* PRQA S 489--*/ /* the optimized copy is heavy on pointer arithmetics */
#             {
#                 CONST(vstar_aligned_t,AUTOMATIC) valuealigned
	.d2line		400
.Llo84:
	rlwinm		r6,r4,24,0,7		# setValue=r4
	rlwinm		r5,r4,16,8,15		# destinationBufferPtr=r5 setValue=r4
.Llo85:
	or		r5,r5,r6		# destinationBufferPtr=r5 destinationBufferPtr=r5
	rlwinm		r6,r4,8,16,23		# setValue=r4
	or		r6,r6,r5		# destinationBufferPtr=r5
	rlwinm		r5,r4,0,24,31		# destinationBufferPtr=r5 setValue=r4
	or		r5,r5,r6		# destinationBufferPtr=r5 destinationBufferPtr=r5
.Llo86:
	mr		r5,r5		# valuealigned=r5 valuealigned=r5
#                 =
#                       #if defined(VSTAR_BITS_64)
#                         (((vstar_aligned_t)setValue) << 56U) |
#                         (((vstar_aligned_t)setValue) << 48U) |
#                         (((vstar_aligned_t)setValue) << 40U) |
#                         (((vstar_aligned_t)setValue) << 32U) |
#                       #endif
#                       #if defined(VSTAR_BITS_32) || defined(VSTAR_BITS_64)
#                         (((vstar_aligned_t)setValue) << 24U) |
#                         (((vstar_aligned_t)setValue) << 16U) |
#                       #endif
#                         (((vstar_aligned_t)setValue) << 8U) |
#                         ((vstar_aligned_t)setValue);
# 
#                 length-=ctr;
	.d2line		415
.Llo90:
	rlwinm		r7,r7,0,24,31		# ctr=r7 ctr=r7
	subf		r6,r7,r0		# ctr=r7 length=r0
	mr		r6,r6		# length=r6 length=r6
	.section	.text_vle
.L4519:
#                 {
#                     VAR(vstar_aligned_t,AUTOMATIC) lengthInWords = length >> VSTAR_OPTIMAL_ALIGNMENT_LOG2;
	.d2line		417
.Llo73:
	rlwinm		r31,r6,30,2,31		# lengthInWords=r31 length=r6
.Llo74:
	mr		r31,r31		# lengthInWords=r31 lengthInWords=r31
#                     length -= lengthInWords << VSTAR_OPTIMAL_ALIGNMENT_LOG2;
	.d2line		418
	rlwinm		r0,r31,2,0,29		# length=r0 lengthInWords=r31
	subf		r0,r0,r6		# length=r0 length=r0 length=r6
	mr		r0,r0		# length=r0 length=r0
.L1120:
	.section	.text_vle
.L4525:
#                     do{
#                         CONST(vstar_aligned_t,AUTOMATIC) copylen = (lengthInWords > 256) ? 256: lengthInWords;
	.d2line		420
.Llo75:
	cmpli		0,0,r31,256		# lengthInWords=r31
.Llo76:
	diab.li		r6,256		# length=r6
	isel		r6,r6,r30,1		# copylen=r6 length=r6 copylen=r30
.L1384:
.Llo92:
	isel		r30,r6,r31,1		# copylen=r30 copylen=r6 lengthInWords=r31
.L1385:
#                         switch(copylen)
	.d2line		421
.Llo93:
	mr		r6,r30		# copylen=r6 copylen=r30
	cmpli		0,0,r6,256		# copylen=r6
	se_slwi		r6,2		# copylen=r6 copylen=r6
	e_add2is		r6,.L4531@ha		# copylen=r6
	bc		1,1,.L1378	# gt
	lwz		r7,.L4531@l(r6)		# ctr=r7 copylen=r6
	mtspr		ctr,r7		# ctr=ctr
	bcctr		20,0
.L4531:
#$$sl
	.long		.L1378
	.long		.L1376
	.long		.L1375
	.long		.L1374
	.long		.L1373
	.long		.L1372
	.long		.L1371
	.long		.L1370
	.long		.L1369
	.long		.L1368
	.long		.L1367
	.long		.L1366
	.long		.L1365
	.long		.L1364
	.long		.L1363
	.long		.L1362
	.long		.L1361
	.long		.L1360
	.long		.L1359
	.long		.L1358
	.long		.L1357
	.long		.L1356
	.long		.L1355
	.long		.L1354
	.long		.L1353
	.long		.L1352
	.long		.L1351
	.long		.L1350
	.long		.L1349
	.long		.L1348
	.long		.L1347
	.long		.L1346
	.long		.L1345
	.long		.L1344
	.long		.L1343
	.long		.L1342
	.long		.L1341
	.long		.L1340
	.long		.L1339
	.long		.L1338
	.long		.L1337
	.long		.L1336
	.long		.L1335
	.long		.L1334
	.long		.L1333
	.long		.L1332
	.long		.L1331
	.long		.L1330
	.long		.L1329
	.long		.L1328
	.long		.L1327
	.long		.L1326
	.long		.L1325
	.long		.L1324
	.long		.L1323
	.long		.L1322
	.long		.L1321
	.long		.L1320
	.long		.L1319
	.long		.L1318
	.long		.L1317
	.long		.L1316
	.long		.L1315
	.long		.L1314
	.long		.L1313
	.long		.L1312
	.long		.L1311
	.long		.L1310
	.long		.L1309
	.long		.L1308
	.long		.L1307
	.long		.L1306
	.long		.L1305
	.long		.L1304
	.long		.L1303
	.long		.L1302
	.long		.L1301
	.long		.L1300
	.long		.L1299
	.long		.L1298
	.long		.L1297
	.long		.L1296
	.long		.L1295
	.long		.L1294
	.long		.L1293
	.long		.L1292
	.long		.L1291
	.long		.L1290
	.long		.L1289
	.long		.L1288
	.long		.L1287
	.long		.L1286
	.long		.L1285
	.long		.L1284
	.long		.L1283
	.long		.L1282
	.long		.L1281
	.long		.L1280
	.long		.L1279
	.long		.L1278
	.long		.L1277
	.long		.L1276
	.long		.L1275
	.long		.L1274
	.long		.L1273
	.long		.L1272
	.long		.L1271
	.long		.L1270
	.long		.L1269
	.long		.L1268
	.long		.L1267
	.long		.L1266
	.long		.L1265
	.long		.L1264
	.long		.L1263
	.long		.L1262
	.long		.L1261
	.long		.L1260
	.long		.L1259
	.long		.L1258
	.long		.L1257
	.long		.L1256
	.long		.L1255
	.long		.L1254
	.long		.L1253
	.long		.L1252
	.long		.L1251
	.long		.L1250
	.long		.L1249
	.long		.L1248
	.long		.L1247
	.long		.L1246
	.long		.L1245
	.long		.L1244
	.long		.L1243
	.long		.L1242
	.long		.L1241
	.long		.L1240
	.long		.L1239
	.long		.L1238
	.long		.L1237
	.long		.L1236
	.long		.L1235
	.long		.L1234
	.long		.L1233
	.long		.L1232
	.long		.L1231
	.long		.L1230
	.long		.L1229
	.long		.L1228
	.long		.L1227
	.long		.L1226
	.long		.L1225
	.long		.L1224
	.long		.L1223
	.long		.L1222
	.long		.L1221
	.long		.L1220
	.long		.L1219
	.long		.L1218
	.long		.L1217
	.long		.L1216
	.long		.L1215
	.long		.L1214
	.long		.L1213
	.long		.L1212
	.long		.L1211
	.long		.L1210
	.long		.L1209
	.long		.L1208
	.long		.L1207
	.long		.L1206
	.long		.L1205
	.long		.L1204
	.long		.L1203
	.long		.L1202
	.long		.L1201
	.long		.L1200
	.long		.L1199
	.long		.L1198
	.long		.L1197
	.long		.L1196
	.long		.L1195
	.long		.L1194
	.long		.L1193
	.long		.L1192
	.long		.L1191
	.long		.L1190
	.long		.L1189
	.long		.L1188
	.long		.L1187
	.long		.L1186
	.long		.L1185
	.long		.L1184
	.long		.L1183
	.long		.L1182
	.long		.L1181
	.long		.L1180
	.long		.L1179
	.long		.L1178
	.long		.L1177
	.long		.L1176
	.long		.L1175
	.long		.L1174
	.long		.L1173
	.long		.L1172
	.long		.L1171
	.long		.L1170
	.long		.L1169
	.long		.L1168
	.long		.L1167
	.long		.L1166
	.long		.L1165
	.long		.L1164
	.long		.L1163
	.long		.L1162
	.long		.L1161
	.long		.L1160
	.long		.L1159
	.long		.L1158
	.long		.L1157
	.long		.L1156
	.long		.L1155
	.long		.L1154
	.long		.L1153
	.long		.L1152
	.long		.L1151
	.long		.L1150
	.long		.L1149
	.long		.L1148
	.long		.L1147
	.long		.L1146
	.long		.L1145
	.long		.L1144
	.long		.L1143
	.long		.L1142
	.long		.L1141
	.long		.L1140
	.long		.L1139
	.long		.L1138
	.long		.L1137
	.long		.L1136
	.long		.L1135
	.long		.L1134
	.long		.L1133
	.long		.L1132
	.long		.L1131
	.long		.L1130
	.long		.L1129
	.long		.L1128
	.long		.L1127
	.long		.L1126
	.long		.L1125
	.long		.L1124
	.long		.L1123
	.long		.L1122
	.long		.L1121
#$$se
.L1121:
#                         {
#                             /* PRQA S 3440++ */ /* ++ used for the most optimal assembly code */
#                             /* PRQA S 2003++ */ /* fall-through in switch is intentional loop unrolling */
#                             /* PRQA S 489++ */  /* pointer increment for optimization */
#                             VSTAR_SET_CASE256(dstaligned,valuealigned)
	.d2line		426
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1122:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1123:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1124:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1125:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1126:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1127:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1128:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1129:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1130:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1131:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1132:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1133:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1134:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1135:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1136:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1137:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1138:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1139:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1140:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1141:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1142:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1143:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1144:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1145:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1146:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1147:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1148:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1149:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1150:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1151:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1152:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1153:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1154:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1155:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1156:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1157:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1158:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1159:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1160:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1161:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1162:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1163:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1164:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1165:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1166:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1167:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1168:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1169:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1170:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1171:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1172:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1173:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1174:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1175:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1176:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1177:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1178:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1179:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1180:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1181:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1182:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1183:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1184:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1185:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1186:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1187:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1188:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1189:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1190:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1191:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1192:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1193:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1194:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1195:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1196:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1197:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1198:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1199:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1200:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1201:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1202:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1203:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1204:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1205:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1206:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1207:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1208:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1209:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1210:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1211:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1212:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1213:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1214:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1215:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1216:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1217:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1218:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1219:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1220:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1221:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1222:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1223:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1224:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1225:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1226:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1227:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1228:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1229:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1230:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1231:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1232:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1233:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1234:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1235:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1236:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1237:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1238:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1239:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1240:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1241:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1242:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1243:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1244:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1245:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1246:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1247:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1248:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1249:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1250:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1251:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1252:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1253:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1254:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1255:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1256:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1257:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1258:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1259:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1260:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1261:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1262:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1263:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1264:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1265:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1266:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1267:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1268:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1269:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1270:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1271:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1272:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1273:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1274:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1275:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1276:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1277:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1278:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1279:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1280:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1281:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1282:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1283:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1284:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1285:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1286:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1287:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1288:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1289:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1290:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1291:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1292:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1293:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1294:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1295:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1296:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1297:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1298:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1299:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1300:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1301:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1302:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1303:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1304:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1305:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1306:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1307:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1308:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1309:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1310:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1311:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1312:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1313:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1314:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1315:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1316:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1317:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1318:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1319:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1320:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1321:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1322:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1323:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1324:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1325:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1326:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1327:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1328:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1329:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1330:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1331:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1332:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1333:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1334:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1335:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1336:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1337:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1338:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1339:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1340:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1341:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1342:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1343:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1344:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1345:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1346:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1347:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1348:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1349:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1350:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1351:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1352:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1353:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1354:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1355:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1356:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1357:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1358:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1359:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1360:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1361:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1362:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1363:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1364:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1365:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1366:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1367:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1368:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1369:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1370:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1371:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1372:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1373:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1374:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1375:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1376:
	stwu		r5,4(r3)		# dstaligned=r3 valuealigned=r5
.L1378:
#                             /* PRQA S 489-- */  /* pointer increment for optimization */
#                             default:
#                                 break;
#                             /* PRQA S 3440-- */ /* ++ used for the most optimal assembly code */
#                             /* PRQA S 2003-- */ /* fall-through in switch is intentional loop unrolling */
#                         }    /* PRQA S 2016 */ /* default statement is intentionally empty */
#                         lengthInWords -= copylen;
	.d2line		433
	subf		r31,r30,r31		# lengthInWords=r31 copylen=r30 lengthInWords=r31
	mr		r31,r31		# lengthInWords=r31 lengthInWords=r31
	.section	.text_vle
.L4526:
#                     }while(lengthInWords > 0U);
	.d2line		434
	se_cmpi		r31,0		# lengthInWords=r31
	bc		0,2,.L1120	# ne
	.section	.text_vle
.L4520:
	.section	.text_vle
.L4514:
#                 }
#             }
#             /* PRQA S 3440++ */ /* the optimized copy is heavy on pointer arithmetics */
#             /* PRQA S 489++*/ /* the optimized copy is heavy on pointer arithmetics */
#             destinationBufferPtr = (uint8*)(++dstaligned); /* PRQA S 310 */ /* casting to original type for optimization */
	.d2line		439
.Llo91:
	se_addi		r3,4		# dstaligned=r3 dstaligned=r3
.Llo87:
	mr		r3,r3		# destinationBufferPtr=r3 destinationBufferPtr=r3
	.section	.text_vle
.L4508:
#         }
#         destinationBufferPtr--;
	.d2line		441
	diab.addi		r3,r3,-1		# destinationBufferPtr=r3 destinationBufferPtr=r3
#         /* PRQA S 3440 */ /* the optimized copy is heavy on pointer arithmetics */
#         /* PRQA S 489--*/ /* the optimized copy is heavy on pointer arithmetics */
#         /* PRQA S 2016++ *//* switch statement default clause is left intentionally empty */
#         switch(length)
	.d2line		445
	mr		r6,r0		# length=r6 length=r0
	se_cmpi		r6,1		# length=r6
	bc		1,2,.L1381	# eq
.Llo77:
	se_cmpi		r6,2		# length=r6
.Llo78:
	bc		1,2,.L1380	# eq
	se_cmpi		r6,3		# length=r6
	bc		1,2,.L1379	# eq
.Llo79:
	b		.L1101
.L1379:
#         {
#             /* PRQA S 3440++ */ /* ++ used for the most optimal assembly code */
#             /* PRQA S 2003++ */ /* fall-through in switch is intentional loop unrolling */
#             /* PRQA S 489++ */  /* pointer increment for optimization */
#           #if defined(VSTAR_BITS_64)
#             VSTAR_SET_CASE1(destinationBufferPtr, setValue, 7UL)
#             VSTAR_SET_CASE1(destinationBufferPtr, setValue, 6UL)
#             VSTAR_SET_CASE1(destinationBufferPtr, setValue, 5UL)
#             VSTAR_SET_CASE1(destinationBufferPtr, setValue, 4UL)
#           #endif
#           #if defined(VSTAR_BITS_32) || defined(VSTAR_BITS_64)
#             VSTAR_SET_CASE1(destinationBufferPtr, setValue, 3UL)
	.d2line		457
	stbu		r4,1(r3)		# destinationBufferPtr=r3 setValue=r4
.L1380:
#             VSTAR_SET_CASE1(destinationBufferPtr, setValue, 2UL)
	.d2line		458
.Llo80:
	stbu		r4,1(r3)		# destinationBufferPtr=r3 setValue=r4
.L1381:
#           #endif
#             VSTAR_SET_CASE1(destinationBufferPtr, setValue, 1UL)
	.d2line		460
	stb		r4,1(r3)		# destinationBufferPtr=r3 setValue=r4
	.section	.text_vle
.L4502:
.L1101:
#             /* PRQA S 489-- */  /* pointer increment for optimization */
#             /* PRQA S 3440-- */ /* ++ used for the most optimal assembly code */
#             default:
#             break;
#             /* PRQA S 2003-- */ /* fall-through in switch is intentional loop unrolling */
#         }/* PRQA S 2016 */ /* default statement is intentionally empty */
#         /* PRQA S 2016-- *//* switch statement default clause is left intentionally empty */
#     }
# }
	.d2line		469
	.d2epilogue_begin
.Llo67:
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# length=r0
	mtspr		lr,r0		# length=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4487:
	.type		vstar_set,@function
	.size		vstar_set,.-vstar_set
# Number of nodes = 1445

# Allocations for vstar_set
#	?a4		destinationBuffer
#	?a5		setValue
#	?a6		length
#	?a7		destinationBufferPtr
#	?a8		dst
#	?a9		ctr
#	?a10		dstaligned
#	?a11		valuealigned
#	?a12		lengthInWords
#	?a13		copylen
# FUNC(sint32, VSTAR_BITS_CODE) vstar_cmp(
	.align		2
	.section	.text_vle
        .d2line         484,31
#$$ld
.L4537:

#$$bf	vstar_cmp,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,cr0,xer-ctr
	.globl		vstar_cmp
	.d2_cfa_start __cie
vstar_cmp:
.Llo94:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ptr1=r3 ptr1=r3
.Llo149:
	mr		r0,r4		# ptr2=r0 ptr2=r4
.Llo681:
	mr		r5,r5		# length=r5 length=r5
	.d2prologue_end
#     CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) ptr1,
#     CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) ptr2,
#     VAR(uint32,AUTOMATIC) length
#     )
# {
# 
#     P2CONST(uint8, AUTOMATIC, VSTAR_BITS_APPL_DATA) dstptr = ptr1;
	.d2line		491
	mr		r6,r3		# dstptr=r6 dstptr=r3
#     P2CONST(uint8, AUTOMATIC, VSTAR_BITS_APPL_DATA) srcptr = ptr2;
	.d2line		492
	mr		r4,r0		# srcptr=r4 srcptr=r0
# 
#     /* check if the alignment of source and destination is the same */
#     /* also the hocus-pocus below does not worth if we compare less than 8 bytes */
#     /* PRQA S 306++ */ /*The cast from pointer to underlying 32 bits data is intentional to allow comparison */
#     if(length <= 8U)
	.d2line		497
.Llo100:
	se_cmpli	r5,8		# length=r5
	bc		1,1,.L1664	# gt
	.section	.text_vle
.L4549:
#     {
#         /* PRQA S 3440++ */ /* ++ used for the most optimal assembly code */
#         /* PRQA S 2003++ */ /* fall-through in switch is intentional loop unrolling */
#         /* PRQA S 489++  */ /* pointer increment for optimization */
#         /* PRQA S 2016++ */ /* default case intentionally empty */
#         VSTAR_CMP8(dstptr,srcptr,length,VSTAR_CMP_RETURN);
	.d2line		503
.Llo101:
	mr		r4,r3		# vstar_cmp8_dst=r4 vstar_cmp8_dst=r3
	mr		r3,r0		# vstar_cmp8_src=r3 vstar_cmp8_src=r0
.Llo95:
	diab.addi		r4,r4,-1		# vstar_cmp8_dst=r4 vstar_cmp8_dst=r4
.Llo684:
	diab.addi		r3,r3,-1		# vstar_cmp8_src=r3 vstar_cmp8_src=r3
	mr		r6,r5		# length=r6 length=r5
	se_cmpli	r6,8		# length=r6
	se_slwi		r6,2		# length=r6 length=r6
	e_add2is		r6,.L4557@ha		# length=r6
	bc		1,1,.L1670	# gt
.Llo102:
	lwz		r7,.L4557@l(r6)		# length=r6
.Llo106:
	mtspr		ctr,r7
	bcctr		20,0
.L4557:
#$$sl
	.long		.L1670
	.long		.L1695
	.long		.L1691
	.long		.L1687
	.long		.L1683
	.long		.L1679
	.long		.L1675
	.long		.L1671
	.long		.L1666
#$$se
.L1666:
.Llo107:
	lbzu		r0,1(r4)		# vstar_cmp8_dst=r4
	lbzu		r5,1(r3)		# length=r5 vstar_cmp8_src=r3
.Llo108:
	se_cmp		r0,r5		# length=r5
	bc		1,2,.L1671	# eq
.Llo109:
	lbz		r0,0(r4)		# vstar_cmp8_dst=r4
.Llo685:
	lbz		r3,0(r3)		# vstar_cmp8_src=r3 vstar_cmp8_src=r3
	subf		r3,r3,r0		# vstar_cmp8_src=r3 vstar_cmp8_src=r3
.Llo686:
	b		.L1663
.L1671:
.Llo687:
	lbzu		r0,1(r4)		# vstar_cmp8_dst=r4
	lbzu		r5,1(r3)		# length=r5 vstar_cmp8_src=r3
.Llo110:
	se_cmp		r0,r5		# length=r5
	bc		1,2,.L1675	# eq
.Llo111:
	lbz		r0,0(r4)		# vstar_cmp8_dst=r4
.Llo688:
	lbz		r3,0(r3)		# vstar_cmp8_src=r3 vstar_cmp8_src=r3
	subf		r3,r3,r0		# vstar_cmp8_src=r3 vstar_cmp8_src=r3
.Llo689:
	b		.L1663
.L1675:
.Llo690:
	lbzu		r0,1(r4)		# vstar_cmp8_dst=r4
	lbzu		r5,1(r3)		# length=r5 vstar_cmp8_src=r3
.Llo112:
	se_cmp		r0,r5		# length=r5
	bc		1,2,.L1679	# eq
.Llo113:
	lbz		r0,0(r4)		# vstar_cmp8_dst=r4
.Llo691:
	lbz		r3,0(r3)		# vstar_cmp8_src=r3 vstar_cmp8_src=r3
	subf		r3,r3,r0		# vstar_cmp8_src=r3 vstar_cmp8_src=r3
.Llo692:
	b		.L1663
.L1679:
.Llo693:
	lbzu		r0,1(r4)		# vstar_cmp8_dst=r4
	lbzu		r5,1(r3)		# length=r5 vstar_cmp8_src=r3
.Llo114:
	se_cmp		r0,r5		# length=r5
	bc		1,2,.L1683	# eq
.Llo115:
	lbz		r0,0(r4)		# vstar_cmp8_dst=r4
.Llo694:
	lbz		r3,0(r3)		# vstar_cmp8_src=r3 vstar_cmp8_src=r3
	subf		r3,r3,r0		# vstar_cmp8_src=r3 vstar_cmp8_src=r3
.Llo695:
	b		.L1663
.L1683:
.Llo696:
	lbzu		r0,1(r4)		# vstar_cmp8_dst=r4
	lbzu		r5,1(r3)		# length=r5 vstar_cmp8_src=r3
.Llo116:
	se_cmp		r0,r5		# length=r5
	bc		1,2,.L1687	# eq
.Llo117:
	lbz		r0,0(r4)		# vstar_cmp8_dst=r4
.Llo697:
	lbz		r3,0(r3)		# vstar_cmp8_src=r3 vstar_cmp8_src=r3
	subf		r3,r3,r0		# vstar_cmp8_src=r3 vstar_cmp8_src=r3
.Llo698:
	b		.L1663
.L1687:
.Llo699:
	lbzu		r0,1(r4)		# vstar_cmp8_dst=r4
	lbzu		r5,1(r3)		# length=r5 vstar_cmp8_src=r3
.Llo118:
	se_cmp		r0,r5		# length=r5
	bc		1,2,.L1691	# eq
.Llo119:
	lbz		r0,0(r4)		# vstar_cmp8_dst=r4
.Llo700:
	lbz		r3,0(r3)		# vstar_cmp8_src=r3 vstar_cmp8_src=r3
	subf		r3,r3,r0		# vstar_cmp8_src=r3 vstar_cmp8_src=r3
.Llo701:
	b		.L1663
.L1691:
.Llo702:
	lbzu		r0,1(r4)		# vstar_cmp8_dst=r4
	lbzu		r5,1(r3)		# length=r5 vstar_cmp8_src=r3
.Llo120:
	se_cmp		r0,r5		# length=r5
	bc		1,2,.L1695	# eq
.Llo121:
	lbz		r0,0(r4)		# vstar_cmp8_dst=r4
.Llo703:
	lbz		r3,0(r3)		# vstar_cmp8_src=r3 vstar_cmp8_src=r3
	subf		r3,r3,r0		# vstar_cmp8_src=r3 vstar_cmp8_src=r3
.Llo704:
	b		.L1663
.L1695:
.Llo705:
	lbzu		r0,1(r4)		# vstar_cmp8_dst=r4
	lbzu		r5,1(r3)		# length=r5 vstar_cmp8_src=r3
.Llo122:
	se_cmp		r0,r5		# length=r5
	bc		1,2,.L1670	# eq
.Llo123:
	lbz		r0,0(r4)		# vstar_cmp8_dst=r4
.Llo706:
	lbz		r3,0(r3)		# vstar_cmp8_src=r3 vstar_cmp8_src=r3
	subf		r3,r3,r0		# vstar_cmp8_src=r3 vstar_cmp8_src=r3
.Llo707:
	b		.L1663
.L1670:
.Llo124:
	diab.li		r3,0		# vstar_cmp8_src=r3
	b		.L1663
	.section	.text_vle
.L4550:
.L1664:
#         /* PRQA S 3440-- */ /* ++ used for the most optimal assembly code */
#         /* PRQA S 2003-- */ /* fall-through in switch is intentional loop unrolling */
#         /* PRQA S 489-- */  /* pointer increment for optimization */
#         /* PRQA S 2016-- */ /* default case intentionally empty */
#     }
#     else if ( VSTAR_MISMATCHBYMASK((vstar_aligned_t)srcptr,(vstar_aligned_t)dstptr,VSTAR_OPTIMAL_ALIGNMENTMASK))
	.d2line		509
.Llo96:
	xor		r0,r0,r3		# ptr2=r0 ptr2=r0 ptr1=r3
.Llo125:
	e_andi.		r0,r0,3		# ptr2=r0 ptr2=r0
.Llo103:
	bc		1,2,.L1701	# eq
#     /* PRQA S 306-- */
#     {
#         /* if the alignments mismatch we have to compare byte-wise */
#         dstptr--;   /* PRQA S 489 */ /* the optimized compare is heavy on pointer arithmetics */
	.d2line		513
.Llo97:
	diab.addi		r3,r6,-1		# dstptr=r3 dstptr=r6
#         srcptr--;   /* PRQA S 489 */ /* the optimized compare is heavy on pointer arithmetics */
	.d2line		514
.Llo682:
	diab.addi		r4,r4,-1		# srcptr=r4 srcptr=r4
.L1702:
	.section	.text_vle
.L4558:
# 
#         do{
#             VAR(uint32,AUTOMATIC) cmplen = (length > 256U) ? 256U : length;
	.d2line		517
.Llo150:
	cmpli		0,0,r5,256		# length=r5
.Llo151:
	diab.li		r6,256		# dstptr=r6
	isel		r6,r6,r0,1		# cmplen=r6 dstptr=r6 cmplen=r0
.L3792:
.Llo708:
	isel		r0,r6,r5,1		# cmplen=r0 cmplen=r6 length=r5
.L3793:
#             switch(cmplen)
	.d2line		518
.Llo709:
	mr		r6,r0		# cmplen=r6 cmplen=r0
	cmpli		0,0,r6,256		# cmplen=r6
	se_slwi		r6,2		# cmplen=r6 cmplen=r6
	e_add2is		r6,.L4564@ha		# cmplen=r6
	bc		1,1,.L1707	# gt
.Llo710:
	lwz		r7,.L4564@l(r6)		# cmplen=r6
.Llo711:
	mtspr		ctr,r7
	bcctr		20,0
.L4564:
#$$sl
	.long		.L1707
	.long		.L2724
	.long		.L2720
	.long		.L2716
	.long		.L2712
	.long		.L2708
	.long		.L2704
	.long		.L2700
	.long		.L2696
	.long		.L2692
	.long		.L2688
	.long		.L2684
	.long		.L2680
	.long		.L2676
	.long		.L2672
	.long		.L2668
	.long		.L2664
	.long		.L2660
	.long		.L2656
	.long		.L2652
	.long		.L2648
	.long		.L2644
	.long		.L2640
	.long		.L2636
	.long		.L2632
	.long		.L2628
	.long		.L2624
	.long		.L2620
	.long		.L2616
	.long		.L2612
	.long		.L2608
	.long		.L2604
	.long		.L2600
	.long		.L2596
	.long		.L2592
	.long		.L2588
	.long		.L2584
	.long		.L2580
	.long		.L2576
	.long		.L2572
	.long		.L2568
	.long		.L2564
	.long		.L2560
	.long		.L2556
	.long		.L2552
	.long		.L2548
	.long		.L2544
	.long		.L2540
	.long		.L2536
	.long		.L2532
	.long		.L2528
	.long		.L2524
	.long		.L2520
	.long		.L2516
	.long		.L2512
	.long		.L2508
	.long		.L2504
	.long		.L2500
	.long		.L2496
	.long		.L2492
	.long		.L2488
	.long		.L2484
	.long		.L2480
	.long		.L2476
	.long		.L2472
	.long		.L2468
	.long		.L2464
	.long		.L2460
	.long		.L2456
	.long		.L2452
	.long		.L2448
	.long		.L2444
	.long		.L2440
	.long		.L2436
	.long		.L2432
	.long		.L2428
	.long		.L2424
	.long		.L2420
	.long		.L2416
	.long		.L2412
	.long		.L2408
	.long		.L2404
	.long		.L2400
	.long		.L2396
	.long		.L2392
	.long		.L2388
	.long		.L2384
	.long		.L2380
	.long		.L2376
	.long		.L2372
	.long		.L2368
	.long		.L2364
	.long		.L2360
	.long		.L2356
	.long		.L2352
	.long		.L2348
	.long		.L2344
	.long		.L2340
	.long		.L2336
	.long		.L2332
	.long		.L2328
	.long		.L2324
	.long		.L2320
	.long		.L2316
	.long		.L2312
	.long		.L2308
	.long		.L2304
	.long		.L2300
	.long		.L2296
	.long		.L2292
	.long		.L2288
	.long		.L2284
	.long		.L2280
	.long		.L2276
	.long		.L2272
	.long		.L2268
	.long		.L2264
	.long		.L2260
	.long		.L2256
	.long		.L2252
	.long		.L2248
	.long		.L2244
	.long		.L2240
	.long		.L2236
	.long		.L2232
	.long		.L2228
	.long		.L2224
	.long		.L2220
	.long		.L2216
	.long		.L2212
	.long		.L2208
	.long		.L2204
	.long		.L2200
	.long		.L2196
	.long		.L2192
	.long		.L2188
	.long		.L2184
	.long		.L2180
	.long		.L2176
	.long		.L2172
	.long		.L2168
	.long		.L2164
	.long		.L2160
	.long		.L2156
	.long		.L2152
	.long		.L2148
	.long		.L2144
	.long		.L2140
	.long		.L2136
	.long		.L2132
	.long		.L2128
	.long		.L2124
	.long		.L2120
	.long		.L2116
	.long		.L2112
	.long		.L2108
	.long		.L2104
	.long		.L2100
	.long		.L2096
	.long		.L2092
	.long		.L2088
	.long		.L2084
	.long		.L2080
	.long		.L2076
	.long		.L2072
	.long		.L2068
	.long		.L2064
	.long		.L2060
	.long		.L2056
	.long		.L2052
	.long		.L2048
	.long		.L2044
	.long		.L2040
	.long		.L2036
	.long		.L2032
	.long		.L2028
	.long		.L2024
	.long		.L2020
	.long		.L2016
	.long		.L2012
	.long		.L2008
	.long		.L2004
	.long		.L2000
	.long		.L1996
	.long		.L1992
	.long		.L1988
	.long		.L1984
	.long		.L1980
	.long		.L1976
	.long		.L1972
	.long		.L1968
	.long		.L1964
	.long		.L1960
	.long		.L1956
	.long		.L1952
	.long		.L1948
	.long		.L1944
	.long		.L1940
	.long		.L1936
	.long		.L1932
	.long		.L1928
	.long		.L1924
	.long		.L1920
	.long		.L1916
	.long		.L1912
	.long		.L1908
	.long		.L1904
	.long		.L1900
	.long		.L1896
	.long		.L1892
	.long		.L1888
	.long		.L1884
	.long		.L1880
	.long		.L1876
	.long		.L1872
	.long		.L1868
	.long		.L1864
	.long		.L1860
	.long		.L1856
	.long		.L1852
	.long		.L1848
	.long		.L1844
	.long		.L1840
	.long		.L1836
	.long		.L1832
	.long		.L1828
	.long		.L1824
	.long		.L1820
	.long		.L1816
	.long		.L1812
	.long		.L1808
	.long		.L1804
	.long		.L1800
	.long		.L1796
	.long		.L1792
	.long		.L1788
	.long		.L1784
	.long		.L1780
	.long		.L1776
	.long		.L1772
	.long		.L1768
	.long		.L1764
	.long		.L1760
	.long		.L1756
	.long		.L1752
	.long		.L1748
	.long		.L1744
	.long		.L1740
	.long		.L1736
	.long		.L1732
	.long		.L1728
	.long		.L1724
	.long		.L1720
	.long		.L1716
	.long		.L1712
	.long		.L1708
	.long		.L1703
#$$se
.L1703:
#             {
#                 /* PRQA S 3440++ */ /* ++ used for the most optimal assembly code */
#                 /* PRQA S 2003++ */ /* fall-through in switch is intentional loop unrolling */
#                 /* PRQA S 489++ */  /* pointer increment for optimization */
#                 VSTAR_CMP_CASE256(dstptr,srcptr,VSTAR_CMP_RETURN)
	.d2line		523
.Llo712:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
.Llo713:
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1708	# eq
.Llo714:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo715:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo152:
	b		.L1663
.L1708:
.Llo153:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1712	# eq
.Llo716:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo717:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo154:
	b		.L1663
.L1712:
.Llo155:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1716	# eq
.Llo718:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo719:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo156:
	b		.L1663
.L1716:
.Llo157:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1720	# eq
.Llo720:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo721:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo158:
	b		.L1663
.L1720:
.Llo159:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1724	# eq
.Llo722:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo723:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo160:
	b		.L1663
.L1724:
.Llo161:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1728	# eq
.Llo724:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo725:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo162:
	b		.L1663
.L1728:
.Llo163:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1732	# eq
.Llo726:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo727:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo164:
	b		.L1663
.L1732:
.Llo165:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1736	# eq
.Llo728:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo729:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo166:
	b		.L1663
.L1736:
.Llo167:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1740	# eq
.Llo730:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo731:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo168:
	b		.L1663
.L1740:
.Llo169:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1744	# eq
.Llo732:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo733:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo170:
	b		.L1663
.L1744:
.Llo171:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1748	# eq
.Llo734:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo735:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo172:
	b		.L1663
.L1748:
.Llo173:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1752	# eq
.Llo736:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo737:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo174:
	b		.L1663
.L1752:
.Llo175:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1756	# eq
.Llo738:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo739:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo176:
	b		.L1663
.L1756:
.Llo177:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1760	# eq
.Llo740:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo741:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo178:
	b		.L1663
.L1760:
.Llo179:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1764	# eq
.Llo742:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo743:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo180:
	b		.L1663
.L1764:
.Llo181:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1768	# eq
.Llo744:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo745:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo182:
	b		.L1663
.L1768:
.Llo183:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1772	# eq
.Llo746:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo747:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo184:
	b		.L1663
.L1772:
.Llo185:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1776	# eq
.Llo748:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo749:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo186:
	b		.L1663
.L1776:
.Llo187:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1780	# eq
.Llo750:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo751:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo188:
	b		.L1663
.L1780:
.Llo189:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1784	# eq
.Llo752:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo753:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo190:
	b		.L1663
.L1784:
.Llo191:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1788	# eq
.Llo754:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo755:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo192:
	b		.L1663
.L1788:
.Llo193:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1792	# eq
.Llo756:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo757:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo194:
	b		.L1663
.L1792:
.Llo195:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1796	# eq
.Llo758:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo759:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo196:
	b		.L1663
.L1796:
.Llo197:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1800	# eq
.Llo760:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo761:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo198:
	b		.L1663
.L1800:
.Llo199:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1804	# eq
.Llo762:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo763:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo200:
	b		.L1663
.L1804:
.Llo201:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1808	# eq
.Llo764:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo765:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo202:
	b		.L1663
.L1808:
.Llo203:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1812	# eq
.Llo766:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo767:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo204:
	b		.L1663
.L1812:
.Llo205:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1816	# eq
.Llo768:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo769:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo206:
	b		.L1663
.L1816:
.Llo207:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1820	# eq
.Llo770:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo771:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo208:
	b		.L1663
.L1820:
.Llo209:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1824	# eq
.Llo772:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo773:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo210:
	b		.L1663
.L1824:
.Llo211:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1828	# eq
.Llo774:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo775:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo212:
	b		.L1663
.L1828:
.Llo213:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1832	# eq
.Llo776:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo777:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo214:
	b		.L1663
.L1832:
.Llo215:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1836	# eq
.Llo778:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo779:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo216:
	b		.L1663
.L1836:
.Llo217:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1840	# eq
.Llo780:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo781:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo218:
	b		.L1663
.L1840:
.Llo219:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1844	# eq
.Llo782:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo783:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo220:
	b		.L1663
.L1844:
.Llo221:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1848	# eq
.Llo784:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo785:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo222:
	b		.L1663
.L1848:
.Llo223:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1852	# eq
.Llo786:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo787:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo224:
	b		.L1663
.L1852:
.Llo225:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1856	# eq
.Llo788:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo789:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo226:
	b		.L1663
.L1856:
.Llo227:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1860	# eq
.Llo790:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo791:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo228:
	b		.L1663
.L1860:
.Llo229:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1864	# eq
.Llo792:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo793:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo230:
	b		.L1663
.L1864:
.Llo231:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1868	# eq
.Llo794:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo795:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo232:
	b		.L1663
.L1868:
.Llo233:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1872	# eq
.Llo796:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo797:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo234:
	b		.L1663
.L1872:
.Llo235:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1876	# eq
.Llo798:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo799:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo236:
	b		.L1663
.L1876:
.Llo237:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1880	# eq
.Llo800:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo801:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo238:
	b		.L1663
.L1880:
.Llo239:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1884	# eq
.Llo802:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo803:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo240:
	b		.L1663
.L1884:
.Llo241:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1888	# eq
.Llo804:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo805:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo242:
	b		.L1663
.L1888:
.Llo243:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1892	# eq
.Llo806:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo807:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo244:
	b		.L1663
.L1892:
.Llo245:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1896	# eq
.Llo808:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo809:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo246:
	b		.L1663
.L1896:
.Llo247:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1900	# eq
.Llo810:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo811:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo248:
	b		.L1663
.L1900:
.Llo249:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1904	# eq
.Llo812:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo813:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo250:
	b		.L1663
.L1904:
.Llo251:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1908	# eq
.Llo814:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo815:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo252:
	b		.L1663
.L1908:
.Llo253:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1912	# eq
.Llo816:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo817:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo254:
	b		.L1663
.L1912:
.Llo255:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1916	# eq
.Llo818:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo819:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo256:
	b		.L1663
.L1916:
.Llo257:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1920	# eq
.Llo820:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo821:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo258:
	b		.L1663
.L1920:
.Llo259:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1924	# eq
.Llo822:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo823:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo260:
	b		.L1663
.L1924:
.Llo261:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1928	# eq
.Llo824:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo825:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo262:
	b		.L1663
.L1928:
.Llo263:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1932	# eq
.Llo826:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo827:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo264:
	b		.L1663
.L1932:
.Llo265:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1936	# eq
.Llo828:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo829:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo266:
	b		.L1663
.L1936:
.Llo267:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1940	# eq
.Llo830:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo831:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo268:
	b		.L1663
.L1940:
.Llo269:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1944	# eq
.Llo832:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo833:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo270:
	b		.L1663
.L1944:
.Llo271:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1948	# eq
.Llo834:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo835:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo272:
	b		.L1663
.L1948:
.Llo273:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1952	# eq
.Llo836:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo837:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo274:
	b		.L1663
.L1952:
.Llo275:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1956	# eq
.Llo838:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo839:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo276:
	b		.L1663
.L1956:
.Llo277:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1960	# eq
.Llo840:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo841:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo278:
	b		.L1663
.L1960:
.Llo279:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1964	# eq
.Llo842:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo843:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo280:
	b		.L1663
.L1964:
.Llo281:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1968	# eq
.Llo844:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo845:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo282:
	b		.L1663
.L1968:
.Llo283:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1972	# eq
.Llo846:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo847:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo284:
	b		.L1663
.L1972:
.Llo285:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1976	# eq
.Llo848:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo849:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo286:
	b		.L1663
.L1976:
.Llo287:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1980	# eq
.Llo850:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo851:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo288:
	b		.L1663
.L1980:
.Llo289:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1984	# eq
.Llo852:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo853:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo290:
	b		.L1663
.L1984:
.Llo291:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1988	# eq
.Llo854:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo855:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo292:
	b		.L1663
.L1988:
.Llo293:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1992	# eq
.Llo856:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo857:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo294:
	b		.L1663
.L1992:
.Llo295:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1996	# eq
.Llo858:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo859:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo296:
	b		.L1663
.L1996:
.Llo297:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2000	# eq
.Llo860:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo861:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo298:
	b		.L1663
.L2000:
.Llo299:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2004	# eq
.Llo862:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo863:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo300:
	b		.L1663
.L2004:
.Llo301:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2008	# eq
.Llo864:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo865:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo302:
	b		.L1663
.L2008:
.Llo303:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2012	# eq
.Llo866:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo867:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo304:
	b		.L1663
.L2012:
.Llo305:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2016	# eq
.Llo868:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo869:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo306:
	b		.L1663
.L2016:
.Llo307:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2020	# eq
.Llo870:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo871:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo308:
	b		.L1663
.L2020:
.Llo309:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2024	# eq
.Llo872:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo873:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo310:
	b		.L1663
.L2024:
.Llo311:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2028	# eq
.Llo874:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo875:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo312:
	b		.L1663
.L2028:
.Llo313:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2032	# eq
.Llo876:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo877:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo314:
	b		.L1663
.L2032:
.Llo315:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2036	# eq
.Llo878:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo879:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo316:
	b		.L1663
.L2036:
.Llo317:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2040	# eq
.Llo880:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo881:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo318:
	b		.L1663
.L2040:
.Llo319:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2044	# eq
.Llo882:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo883:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo320:
	b		.L1663
.L2044:
.Llo321:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2048	# eq
.Llo884:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo885:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo322:
	b		.L1663
.L2048:
.Llo323:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2052	# eq
.Llo886:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo887:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo324:
	b		.L1663
.L2052:
.Llo325:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2056	# eq
.Llo888:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo889:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo326:
	b		.L1663
.L2056:
.Llo327:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2060	# eq
.Llo890:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo891:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo328:
	b		.L1663
.L2060:
.Llo329:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2064	# eq
.Llo892:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo893:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo330:
	b		.L1663
.L2064:
.Llo331:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2068	# eq
.Llo894:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo895:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo332:
	b		.L1663
.L2068:
.Llo333:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2072	# eq
.Llo896:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo897:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo334:
	b		.L1663
.L2072:
.Llo335:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2076	# eq
.Llo898:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo899:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo336:
	b		.L1663
.L2076:
.Llo337:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2080	# eq
.Llo900:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo901:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo338:
	b		.L1663
.L2080:
.Llo339:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2084	# eq
.Llo902:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo903:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo340:
	b		.L1663
.L2084:
.Llo341:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2088	# eq
.Llo904:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo905:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo342:
	b		.L1663
.L2088:
.Llo343:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2092	# eq
.Llo906:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo907:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo344:
	b		.L1663
.L2092:
.Llo345:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2096	# eq
.Llo908:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo909:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo346:
	b		.L1663
.L2096:
.Llo347:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2100	# eq
.Llo910:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo911:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo348:
	b		.L1663
.L2100:
.Llo349:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2104	# eq
.Llo912:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo913:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo350:
	b		.L1663
.L2104:
.Llo351:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2108	# eq
.Llo914:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo915:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo352:
	b		.L1663
.L2108:
.Llo353:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2112	# eq
.Llo916:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo917:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo354:
	b		.L1663
.L2112:
.Llo355:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2116	# eq
.Llo918:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo919:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo356:
	b		.L1663
.L2116:
.Llo357:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2120	# eq
.Llo920:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo921:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo358:
	b		.L1663
.L2120:
.Llo359:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2124	# eq
.Llo922:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo923:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo360:
	b		.L1663
.L2124:
.Llo361:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2128	# eq
.Llo924:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo925:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo362:
	b		.L1663
.L2128:
.Llo363:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2132	# eq
.Llo926:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo927:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo364:
	b		.L1663
.L2132:
.Llo365:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2136	# eq
.Llo928:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo929:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo366:
	b		.L1663
.L2136:
.Llo367:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2140	# eq
.Llo930:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo931:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo368:
	b		.L1663
.L2140:
.Llo369:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2144	# eq
.Llo932:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo933:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo370:
	b		.L1663
.L2144:
.Llo371:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2148	# eq
.Llo934:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo935:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo372:
	b		.L1663
.L2148:
.Llo373:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2152	# eq
.Llo936:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo937:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo374:
	b		.L1663
.L2152:
.Llo375:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2156	# eq
.Llo938:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo939:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo376:
	b		.L1663
.L2156:
.Llo377:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2160	# eq
.Llo940:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo941:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo378:
	b		.L1663
.L2160:
.Llo379:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2164	# eq
.Llo942:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo943:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo380:
	b		.L1663
.L2164:
.Llo381:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2168	# eq
.Llo944:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo945:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo382:
	b		.L1663
.L2168:
.Llo383:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2172	# eq
.Llo946:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo947:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo384:
	b		.L1663
.L2172:
.Llo385:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2176	# eq
.Llo948:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo949:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo386:
	b		.L1663
.L2176:
.Llo387:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2180	# eq
.Llo950:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo951:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo388:
	b		.L1663
.L2180:
.Llo389:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2184	# eq
.Llo952:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo953:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo390:
	b		.L1663
.L2184:
.Llo391:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2188	# eq
.Llo954:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo955:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo392:
	b		.L1663
.L2188:
.Llo393:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2192	# eq
.Llo956:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo957:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo394:
	b		.L1663
.L2192:
.Llo395:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2196	# eq
.Llo958:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo959:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo396:
	b		.L1663
.L2196:
.Llo397:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2200	# eq
.Llo960:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo961:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo398:
	b		.L1663
.L2200:
.Llo399:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2204	# eq
.Llo962:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo963:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo400:
	b		.L1663
.L2204:
.Llo401:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2208	# eq
.Llo964:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo965:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo402:
	b		.L1663
.L2208:
.Llo403:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2212	# eq
.Llo966:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo967:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo404:
	b		.L1663
.L2212:
.Llo405:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2216	# eq
.Llo968:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo969:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo406:
	b		.L1663
.L2216:
.Llo407:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2220	# eq
.Llo970:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo971:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo408:
	b		.L1663
.L2220:
.Llo409:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2224	# eq
.Llo972:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo973:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo410:
	b		.L1663
.L2224:
.Llo411:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2228	# eq
.Llo974:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo975:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo412:
	b		.L1663
.L2228:
.Llo413:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2232	# eq
.Llo976:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo977:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo414:
	b		.L1663
.L2232:
.Llo415:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2236	# eq
.Llo978:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo979:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo416:
	b		.L1663
.L2236:
.Llo417:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2240	# eq
.Llo980:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo981:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo418:
	b		.L1663
.L2240:
.Llo419:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2244	# eq
.Llo982:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo983:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo420:
	b		.L1663
.L2244:
.Llo421:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2248	# eq
.Llo984:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo985:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo422:
	b		.L1663
.L2248:
.Llo423:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2252	# eq
.Llo986:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo987:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo424:
	b		.L1663
.L2252:
.Llo425:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2256	# eq
.Llo988:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo989:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo426:
	b		.L1663
.L2256:
.Llo427:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2260	# eq
.Llo990:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo991:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo428:
	b		.L1663
.L2260:
.Llo429:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2264	# eq
.Llo992:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo993:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo430:
	b		.L1663
.L2264:
.Llo431:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2268	# eq
.Llo994:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo995:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo432:
	b		.L1663
.L2268:
.Llo433:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2272	# eq
.Llo996:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo997:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo434:
	b		.L1663
.L2272:
.Llo435:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2276	# eq
.Llo998:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo999:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo436:
	b		.L1663
.L2276:
.Llo437:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2280	# eq
.Llo1000:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1001:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo438:
	b		.L1663
.L2280:
.Llo439:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2284	# eq
.Llo1002:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1003:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo440:
	b		.L1663
.L2284:
.Llo441:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2288	# eq
.Llo1004:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1005:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo442:
	b		.L1663
.L2288:
.Llo443:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2292	# eq
.Llo1006:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1007:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo444:
	b		.L1663
.L2292:
.Llo445:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2296	# eq
.Llo1008:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1009:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo446:
	b		.L1663
.L2296:
.Llo447:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2300	# eq
.Llo1010:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1011:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo448:
	b		.L1663
.L2300:
.Llo449:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2304	# eq
.Llo1012:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1013:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo450:
	b		.L1663
.L2304:
.Llo451:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2308	# eq
.Llo1014:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1015:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo452:
	b		.L1663
.L2308:
.Llo453:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2312	# eq
.Llo1016:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1017:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo454:
	b		.L1663
.L2312:
.Llo455:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2316	# eq
.Llo1018:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1019:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo456:
	b		.L1663
.L2316:
.Llo457:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2320	# eq
.Llo1020:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1021:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo458:
	b		.L1663
.L2320:
.Llo459:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2324	# eq
.Llo1022:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1023:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo460:
	b		.L1663
.L2324:
.Llo461:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2328	# eq
.Llo1024:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1025:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo462:
	b		.L1663
.L2328:
.Llo463:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2332	# eq
.Llo1026:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1027:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo464:
	b		.L1663
.L2332:
.Llo465:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2336	# eq
.Llo1028:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1029:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo466:
	b		.L1663
.L2336:
.Llo467:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2340	# eq
.Llo1030:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1031:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo468:
	b		.L1663
.L2340:
.Llo469:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2344	# eq
.Llo1032:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1033:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo470:
	b		.L1663
.L2344:
.Llo471:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2348	# eq
.Llo1034:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1035:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo472:
	b		.L1663
.L2348:
.Llo473:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2352	# eq
.Llo1036:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1037:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo474:
	b		.L1663
.L2352:
.Llo475:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2356	# eq
.Llo1038:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1039:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo476:
	b		.L1663
.L2356:
.Llo477:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2360	# eq
.Llo1040:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1041:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo478:
	b		.L1663
.L2360:
.Llo479:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2364	# eq
.Llo1042:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1043:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo480:
	b		.L1663
.L2364:
.Llo481:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2368	# eq
.Llo1044:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1045:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo482:
	b		.L1663
.L2368:
.Llo483:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2372	# eq
.Llo1046:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1047:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo484:
	b		.L1663
.L2372:
.Llo485:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2376	# eq
.Llo1048:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1049:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo486:
	b		.L1663
.L2376:
.Llo487:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2380	# eq
.Llo1050:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1051:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo488:
	b		.L1663
.L2380:
.Llo489:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2384	# eq
.Llo1052:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1053:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo490:
	b		.L1663
.L2384:
.Llo491:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2388	# eq
.Llo1054:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1055:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo492:
	b		.L1663
.L2388:
.Llo493:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2392	# eq
.Llo1056:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1057:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo494:
	b		.L1663
.L2392:
.Llo495:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2396	# eq
.Llo1058:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1059:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo496:
	b		.L1663
.L2396:
.Llo497:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2400	# eq
.Llo1060:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1061:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo498:
	b		.L1663
.L2400:
.Llo499:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2404	# eq
.Llo1062:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1063:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo500:
	b		.L1663
.L2404:
.Llo501:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2408	# eq
.Llo1064:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1065:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo502:
	b		.L1663
.L2408:
.Llo503:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2412	# eq
.Llo1066:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1067:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo504:
	b		.L1663
.L2412:
.Llo505:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2416	# eq
.Llo1068:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1069:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo506:
	b		.L1663
.L2416:
.Llo507:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2420	# eq
.Llo1070:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1071:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo508:
	b		.L1663
.L2420:
.Llo509:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2424	# eq
.Llo1072:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1073:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo510:
	b		.L1663
.L2424:
.Llo511:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2428	# eq
.Llo1074:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1075:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo512:
	b		.L1663
.L2428:
.Llo513:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2432	# eq
.Llo1076:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1077:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo514:
	b		.L1663
.L2432:
.Llo515:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2436	# eq
.Llo1078:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1079:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo516:
	b		.L1663
.L2436:
.Llo517:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2440	# eq
.Llo1080:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1081:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo518:
	b		.L1663
.L2440:
.Llo519:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2444	# eq
.Llo1082:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1083:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo520:
	b		.L1663
.L2444:
.Llo521:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2448	# eq
.Llo1084:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1085:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo522:
	b		.L1663
.L2448:
.Llo523:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2452	# eq
.Llo1086:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1087:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo524:
	b		.L1663
.L2452:
.Llo525:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2456	# eq
.Llo1088:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1089:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo526:
	b		.L1663
.L2456:
.Llo527:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2460	# eq
.Llo1090:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1091:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo528:
	b		.L1663
.L2460:
.Llo529:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2464	# eq
.Llo1092:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1093:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo530:
	b		.L1663
.L2464:
.Llo531:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2468	# eq
.Llo1094:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1095:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo532:
	b		.L1663
.L2468:
.Llo533:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2472	# eq
.Llo1096:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1097:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo534:
	b		.L1663
.L2472:
.Llo535:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2476	# eq
.Llo1098:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1099:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo536:
	b		.L1663
.L2476:
.Llo537:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2480	# eq
.Llo1100:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1101:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo538:
	b		.L1663
.L2480:
.Llo539:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2484	# eq
.Llo1102:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1103:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo540:
	b		.L1663
.L2484:
.Llo541:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2488	# eq
.Llo1104:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1105:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo542:
	b		.L1663
.L2488:
.Llo543:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2492	# eq
.Llo1106:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1107:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo544:
	b		.L1663
.L2492:
.Llo545:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2496	# eq
.Llo1108:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1109:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo546:
	b		.L1663
.L2496:
.Llo547:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2500	# eq
.Llo1110:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1111:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo548:
	b		.L1663
.L2500:
.Llo549:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2504	# eq
.Llo1112:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1113:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo550:
	b		.L1663
.L2504:
.Llo551:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2508	# eq
.Llo1114:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1115:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo552:
	b		.L1663
.L2508:
.Llo553:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2512	# eq
.Llo1116:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1117:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo554:
	b		.L1663
.L2512:
.Llo555:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2516	# eq
.Llo1118:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1119:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo556:
	b		.L1663
.L2516:
.Llo557:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2520	# eq
.Llo1120:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1121:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo558:
	b		.L1663
.L2520:
.Llo559:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2524	# eq
.Llo1122:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1123:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo560:
	b		.L1663
.L2524:
.Llo561:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2528	# eq
.Llo1124:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1125:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo562:
	b		.L1663
.L2528:
.Llo563:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2532	# eq
.Llo1126:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1127:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo564:
	b		.L1663
.L2532:
.Llo565:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2536	# eq
.Llo1128:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1129:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo566:
	b		.L1663
.L2536:
.Llo567:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2540	# eq
.Llo1130:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1131:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo568:
	b		.L1663
.L2540:
.Llo569:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2544	# eq
.Llo1132:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1133:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo570:
	b		.L1663
.L2544:
.Llo571:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2548	# eq
.Llo1134:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1135:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo572:
	b		.L1663
.L2548:
.Llo573:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2552	# eq
.Llo1136:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1137:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo574:
	b		.L1663
.L2552:
.Llo575:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2556	# eq
.Llo1138:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1139:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo576:
	b		.L1663
.L2556:
.Llo577:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2560	# eq
.Llo1140:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1141:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo578:
	b		.L1663
.L2560:
.Llo579:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2564	# eq
.Llo1142:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1143:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo580:
	b		.L1663
.L2564:
.Llo581:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2568	# eq
.Llo1144:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1145:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo582:
	b		.L1663
.L2568:
.Llo583:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2572	# eq
.Llo1146:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1147:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo584:
	b		.L1663
.L2572:
.Llo585:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2576	# eq
.Llo1148:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1149:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo586:
	b		.L1663
.L2576:
.Llo587:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2580	# eq
.Llo1150:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1151:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo588:
	b		.L1663
.L2580:
.Llo589:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2584	# eq
.Llo1152:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1153:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo590:
	b		.L1663
.L2584:
.Llo591:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2588	# eq
.Llo1154:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1155:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo592:
	b		.L1663
.L2588:
.Llo593:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2592	# eq
.Llo1156:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1157:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo594:
	b		.L1663
.L2592:
.Llo595:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2596	# eq
.Llo1158:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1159:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo596:
	b		.L1663
.L2596:
.Llo597:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2600	# eq
.Llo1160:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1161:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo598:
	b		.L1663
.L2600:
.Llo599:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2604	# eq
.Llo1162:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1163:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo600:
	b		.L1663
.L2604:
.Llo601:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2608	# eq
.Llo1164:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1165:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo602:
	b		.L1663
.L2608:
.Llo603:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2612	# eq
.Llo1166:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1167:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo604:
	b		.L1663
.L2612:
.Llo605:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2616	# eq
.Llo1168:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1169:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo606:
	b		.L1663
.L2616:
.Llo607:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2620	# eq
.Llo1170:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1171:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo608:
	b		.L1663
.L2620:
.Llo609:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2624	# eq
.Llo1172:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1173:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo610:
	b		.L1663
.L2624:
.Llo611:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2628	# eq
.Llo1174:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1175:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo612:
	b		.L1663
.L2628:
.Llo613:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2632	# eq
.Llo1176:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1177:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo614:
	b		.L1663
.L2632:
.Llo615:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2636	# eq
.Llo1178:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1179:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo616:
	b		.L1663
.L2636:
.Llo617:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2640	# eq
.Llo1180:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1181:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo618:
	b		.L1663
.L2640:
.Llo619:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2644	# eq
.Llo1182:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1183:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo620:
	b		.L1663
.L2644:
.Llo621:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2648	# eq
.Llo1184:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1185:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo622:
	b		.L1663
.L2648:
.Llo623:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2652	# eq
.Llo1186:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1187:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo624:
	b		.L1663
.L2652:
.Llo625:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2656	# eq
.Llo1188:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1189:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo626:
	b		.L1663
.L2656:
.Llo627:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2660	# eq
.Llo1190:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1191:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo628:
	b		.L1663
.L2660:
.Llo629:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2664	# eq
.Llo1192:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1193:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo630:
	b		.L1663
.L2664:
.Llo631:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2668	# eq
.Llo1194:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1195:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo632:
	b		.L1663
.L2668:
.Llo633:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2672	# eq
.Llo1196:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1197:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo634:
	b		.L1663
.L2672:
.Llo635:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2676	# eq
.Llo1198:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1199:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo636:
	b		.L1663
.L2676:
.Llo637:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2680	# eq
.Llo1200:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1201:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo638:
	b		.L1663
.L2680:
.Llo639:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2684	# eq
.Llo1202:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1203:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo640:
	b		.L1663
.L2684:
.Llo641:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2688	# eq
.Llo1204:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1205:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo642:
	b		.L1663
.L2688:
.Llo643:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2692	# eq
.Llo1206:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1207:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo644:
	b		.L1663
.L2692:
.Llo645:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2696	# eq
.Llo1208:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1209:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo646:
	b		.L1663
.L2696:
.Llo647:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2700	# eq
.Llo1210:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1211:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo648:
	b		.L1663
.L2700:
.Llo649:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2704	# eq
.Llo1212:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1213:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo650:
	b		.L1663
.L2704:
.Llo651:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2708	# eq
.Llo1214:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1215:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo652:
	b		.L1663
.L2708:
.Llo653:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2712	# eq
.Llo1216:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1217:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo654:
	b		.L1663
.L2712:
.Llo655:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2716	# eq
.Llo1218:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1219:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo656:
	b		.L1663
.L2716:
.Llo657:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2720	# eq
.Llo1220:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1221:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo658:
	b		.L1663
.L2720:
.Llo659:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L2724	# eq
.Llo1222:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1223:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo660:
	b		.L1663
.L2724:
.Llo661:
	lbzu		r6,1(r3)		# cmplen=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# cmplen=r6
	bc		1,2,.L1707	# eq
.Llo1224:
	lbz		r0,0(r3)		# cmplen=r0 dstptr=r3
.Llo1225:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 cmplen=r0
.Llo662:
	b		.L1663
.L1707:
#                 /* PRQA S 489-- */  /* pointer increment for optimization */
#                 default:
#                 break;
#                 /* PRQA S 3440-- */ /* ++ used for the most optimal assembly code */
#                 /* PRQA S 2003-- */ /* fall-through in switch is intentional loop unrolling */
#             }/* PRQA S 2016 */ /* default statement is intentionally empty */
# 
#             length -= cmplen;
	.d2line		531
.Llo663:
	subf		r5,r0,r5		# length=r5 cmplen=r0 length=r5
.Llo1226:
	mr		r5,r5		# length=r5 length=r5
	.section	.text_vle
.L4559:
#         }while(length > 0U);
	.d2line		532
.Llo1227:
	se_cmpi		r5,0		# length=r5
.Llo1228:
	bc		0,2,.L1702	# ne
	b		.L2729
.L1701:
	.section	.text_vle
.L4565:
#     }
#     else
#     {
#         P2VAR(vstar_aligned_t, AUTOMATIC, VSTAR_BITS_APPL_DATA)     dstaligned;
#         P2CONST(vstar_aligned_t, AUTOMATIC, VSTAR_BITS_APPL_DATA)   srcaligned;
#         /* PRQA S 306++ */ /* casting pointer to underlying integer type is needed to check its physical alignment */
#         CONST(uint8,AUTOMATIC) ctr = VSTARBITS_BYTESTOALIGNMENT(dstptr);
	.d2line		539
.Llo98:
	rlwinm		r3,r3,0,30,31		# ptr1=r3 ptr1=r3
.Llo664:
	subfic		r0,r3,4		# ptr2=r0 ptr1=r3
.Llo104:
	rlwinm		r0,r0,0,30,31		# ptr2=r0 ptr2=r0
.Llo105:
	mr		r0,r0		# ctr=r0 ctr=r0
#         /* PRQA S 306-- */ /* casting pointer to underlying integer type is needed to check its physical alignment */
#         /* compare n bytes at the beginning that may not be aligned */
#         dstptr--;    /* PRQA S 489 */ /* the optimized compare is heavy on pointer arithmetics */
	.d2line		542
	diab.addi		r3,r6,-1		# dstptr=r3 dstptr=r6
#         srcptr--;    /* PRQA S 489 */ /* the optimized compare is heavy on pointer arithmetics */
	.d2line		543
.Llo99:
	diab.addi		r4,r4,-1		# srcptr=r4 srcptr=r4
#         switch(ctr)
	.d2line		544
.Llo1233:
	rlwinm		r6,r0,0,24,31		# dstptr=r6 ctr=r0
.Llo665:
	se_cmpi		r6,1		# dstptr=r6
.Llo666:
	bc		1,2,.L2739	# eq
.Llo667:
	se_cmpi		r6,2		# dstptr=r6
.Llo668:
	bc		1,2,.L2735	# eq
	se_cmpi		r6,3		# dstptr=r6
	bc		1,2,.L2730	# eq
.Llo669:
	b		.L2734
.L2730:
#         {
#             /* PRQA S 3440++ */ /* ++ used for the most optimal assembly code */
#             /* PRQA S 2003++ */ /* fall-through in switch is intentional loop unrolling */
#             /* PRQA S 489++ */  /* pointer increment for optimization */
#           #if defined(VSTAR_BITS_64)
#             VSTAR_CMP_CASE1(dstptr, srcptr, 7UL, VSTAR_CMP_RETURN)
#             VSTAR_CMP_CASE1(dstptr, srcptr, 6UL, VSTAR_CMP_RETURN)
#             VSTAR_CMP_CASE1(dstptr, srcptr, 5UL, VSTAR_CMP_RETURN)
#             VSTAR_CMP_CASE1(dstptr, srcptr, 4UL, VSTAR_CMP_RETURN)
#           #endif
#           #if defined(VSTAR_BITS_32) || defined(VSTAR_BITS_64)
#             VSTAR_CMP_CASE1(dstptr, srcptr, 3UL, VSTAR_CMP_RETURN)
	.d2line		556
.Llo670:
	lbzu		r6,1(r3)		# dstptr=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# dstptr=r6
	bc		1,2,.L2735	# eq
.Llo1238:
	lbz		r0,0(r3)		# ctr=r0 dstptr=r3
.Llo1239:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
.Llo1229:
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 ctr=r0
.Llo671:
	b		.L1663
.L2735:
#             VSTAR_CMP_CASE1(dstptr, srcptr, 2UL, VSTAR_CMP_RETURN)
	.d2line		557
.Llo672:
	lbzu		r6,1(r3)		# dstptr=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# dstptr=r6
	bc		1,2,.L2739	# eq
.Llo1240:
	lbz		r0,0(r3)		# ctr=r0 dstptr=r3
.Llo1241:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
.Llo1230:
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 ctr=r0
.Llo673:
	b		.L1663
.L2739:
#           #endif
#             VSTAR_CMP_CASE1(dstptr, srcptr, 1UL, VSTAR_CMP_RETURN)
	.d2line		559
.Llo674:
	lbzu		r6,1(r3)		# dstptr=r6 dstptr=r3
	lbzu		r7,1(r4)		# srcptr=r4
	se_cmp		r6,r7		# dstptr=r6
	bc		1,2,.L2734	# eq
.Llo1242:
	lbz		r0,0(r3)		# ctr=r0 dstptr=r3
.Llo1243:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
.Llo1231:
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 ctr=r0
.Llo675:
	b		.L1663
.L2734:
#             /* PRQA S 489-- */  /* pointer increment for optimization */
#             default:
#             break;
#             /* PRQA S 3440-- */ /* ++ used for the most optimal assembly code */
#             /* PRQA S 2003-- */ /* fall-through in switch is intentional loop unrolling */
#         }/* PRQA S 2016 */ /* default statement is intentionally empty */
# 
#         /* now we perform aligned 32 bits compare */
#         /* PRQA S 489++ */ /* the optimized compare is heavy on pointer arithmetics */
#         /* PRQA S 3440++ */ /* the optimized compare is heavy on pointer arithmetics */
#         dstaligned = (vstar_aligned_t*)(++dstptr); /* PRQA S 310,3305 */ /* casting to larger type for optimization */
	.d2line		570
.Llo676:
	diab.addi		r6,r3,1		# dstptr=r6 dstptr=r3
#         dstaligned--;
	.d2line		571
	diab.addi		r3,r3,-3		# dstaligned=r3 dstptr=r3
#         srcaligned = (P2CONST(vstar_aligned_t,AUTOMATIC,AUTOMATIC))(++srcptr); /* PRQA S 310,3305 */ /* casting to larger type for optimization */
	.d2line		572
	diab.addi		r6,r4,1		# srcptr=r6 srcptr=r4
#         srcaligned--;
	.d2line		573
	diab.addi		r4,r4,-3		# srcaligned=r4 srcptr=r4
#         /* PRQA S 489-- */ /* the optimized compare is heavy on pointer arithmetics */
#         /* PRQA S 3440-- */ /* the optimized compare is heavy on pointer arithmetics */
#         length-=ctr;
	.d2line		576
.Llo1244:
	rlwinm		r0,r0,0,24,31		# ctr=r0 ctr=r0
	subf		r0,r0,r5		# ctr=r0 ctr=r0 length=r5
.Llo1245:
	mr		r6,r0		# length=r6 length=r0
	.section	.text_vle
.L4575:
#         {
#             VAR(vstar_aligned_t,AUTOMATIC) lengthInWords = length >> VSTAR_OPTIMAL_ALIGNMENT_LOG2;
	.d2line		578
.Llo126:
	rlwinm		r5,r6,30,2,31		# length=r5 length=r6
.Llo127:
	mr		r5,r5		# lengthInWords=r5 lengthInWords=r5
#             length -= lengthInWords << VSTAR_OPTIMAL_ALIGNMENT_LOG2;
	.d2line		579
	rlwinm		r0,r5,2,0,29		# ctr=r0 lengthInWords=r5
.Llo1246:
	subf		r0,r0,r6		# ctr=r0 ctr=r0 length=r6
.Llo1247:
	mr		r0,r0		# length=r0 length=r0
.L2744:
	.section	.text_vle
.L4581:
#             do{
#                 CONST(vstar_aligned_t,AUTOMATIC) comparelen = (lengthInWords > 256U) ? 256U: lengthInWords;
	.d2line		581
.Llo128:
	cmpli		0,0,r5,256		# lengthInWords=r5
.Llo129:
	diab.li		r6,256		# length=r6
	isel		r6,r6,r31,1		# comparelen=r6 length=r6 comparelen=r31
.L3794:
.Llo1249:
	isel		r31,r6,r5,1		# comparelen=r31 comparelen=r6 lengthInWords=r5
.L3795:
# 
#                 switch(comparelen)
	.d2line		583
.Llo1250:
	mr		r6,r31		# comparelen=r6 comparelen=r31
	cmpli		0,0,r6,256		# comparelen=r6
	se_slwi		r6,2		# comparelen=r6 comparelen=r6
	e_add2is		r6,.L4587@ha		# comparelen=r6
	bc		1,1,.L3770	# gt
	lwz		r7,.L4587@l(r6)		# comparelen=r6
	mtspr		ctr,r7
	bcctr		20,0
.L4587:
#$$sl
	.long		.L3770
	.long		.L3766
	.long		.L3762
	.long		.L3758
	.long		.L3754
	.long		.L3750
	.long		.L3746
	.long		.L3742
	.long		.L3738
	.long		.L3734
	.long		.L3730
	.long		.L3726
	.long		.L3722
	.long		.L3718
	.long		.L3714
	.long		.L3710
	.long		.L3706
	.long		.L3702
	.long		.L3698
	.long		.L3694
	.long		.L3690
	.long		.L3686
	.long		.L3682
	.long		.L3678
	.long		.L3674
	.long		.L3670
	.long		.L3666
	.long		.L3662
	.long		.L3658
	.long		.L3654
	.long		.L3650
	.long		.L3646
	.long		.L3642
	.long		.L3638
	.long		.L3634
	.long		.L3630
	.long		.L3626
	.long		.L3622
	.long		.L3618
	.long		.L3614
	.long		.L3610
	.long		.L3606
	.long		.L3602
	.long		.L3598
	.long		.L3594
	.long		.L3590
	.long		.L3586
	.long		.L3582
	.long		.L3578
	.long		.L3574
	.long		.L3570
	.long		.L3566
	.long		.L3562
	.long		.L3558
	.long		.L3554
	.long		.L3550
	.long		.L3546
	.long		.L3542
	.long		.L3538
	.long		.L3534
	.long		.L3530
	.long		.L3526
	.long		.L3522
	.long		.L3518
	.long		.L3514
	.long		.L3510
	.long		.L3506
	.long		.L3502
	.long		.L3498
	.long		.L3494
	.long		.L3490
	.long		.L3486
	.long		.L3482
	.long		.L3478
	.long		.L3474
	.long		.L3470
	.long		.L3466
	.long		.L3462
	.long		.L3458
	.long		.L3454
	.long		.L3450
	.long		.L3446
	.long		.L3442
	.long		.L3438
	.long		.L3434
	.long		.L3430
	.long		.L3426
	.long		.L3422
	.long		.L3418
	.long		.L3414
	.long		.L3410
	.long		.L3406
	.long		.L3402
	.long		.L3398
	.long		.L3394
	.long		.L3390
	.long		.L3386
	.long		.L3382
	.long		.L3378
	.long		.L3374
	.long		.L3370
	.long		.L3366
	.long		.L3362
	.long		.L3358
	.long		.L3354
	.long		.L3350
	.long		.L3346
	.long		.L3342
	.long		.L3338
	.long		.L3334
	.long		.L3330
	.long		.L3326
	.long		.L3322
	.long		.L3318
	.long		.L3314
	.long		.L3310
	.long		.L3306
	.long		.L3302
	.long		.L3298
	.long		.L3294
	.long		.L3290
	.long		.L3286
	.long		.L3282
	.long		.L3278
	.long		.L3274
	.long		.L3270
	.long		.L3266
	.long		.L3262
	.long		.L3258
	.long		.L3254
	.long		.L3250
	.long		.L3246
	.long		.L3242
	.long		.L3238
	.long		.L3234
	.long		.L3230
	.long		.L3226
	.long		.L3222
	.long		.L3218
	.long		.L3214
	.long		.L3210
	.long		.L3206
	.long		.L3202
	.long		.L3198
	.long		.L3194
	.long		.L3190
	.long		.L3186
	.long		.L3182
	.long		.L3178
	.long		.L3174
	.long		.L3170
	.long		.L3166
	.long		.L3162
	.long		.L3158
	.long		.L3154
	.long		.L3150
	.long		.L3146
	.long		.L3142
	.long		.L3138
	.long		.L3134
	.long		.L3130
	.long		.L3126
	.long		.L3122
	.long		.L3118
	.long		.L3114
	.long		.L3110
	.long		.L3106
	.long		.L3102
	.long		.L3098
	.long		.L3094
	.long		.L3090
	.long		.L3086
	.long		.L3082
	.long		.L3078
	.long		.L3074
	.long		.L3070
	.long		.L3066
	.long		.L3062
	.long		.L3058
	.long		.L3054
	.long		.L3050
	.long		.L3046
	.long		.L3042
	.long		.L3038
	.long		.L3034
	.long		.L3030
	.long		.L3026
	.long		.L3022
	.long		.L3018
	.long		.L3014
	.long		.L3010
	.long		.L3006
	.long		.L3002
	.long		.L2998
	.long		.L2994
	.long		.L2990
	.long		.L2986
	.long		.L2982
	.long		.L2978
	.long		.L2974
	.long		.L2970
	.long		.L2966
	.long		.L2962
	.long		.L2958
	.long		.L2954
	.long		.L2950
	.long		.L2946
	.long		.L2942
	.long		.L2938
	.long		.L2934
	.long		.L2930
	.long		.L2926
	.long		.L2922
	.long		.L2918
	.long		.L2914
	.long		.L2910
	.long		.L2906
	.long		.L2902
	.long		.L2898
	.long		.L2894
	.long		.L2890
	.long		.L2886
	.long		.L2882
	.long		.L2878
	.long		.L2874
	.long		.L2870
	.long		.L2866
	.long		.L2862
	.long		.L2858
	.long		.L2854
	.long		.L2850
	.long		.L2846
	.long		.L2842
	.long		.L2838
	.long		.L2834
	.long		.L2830
	.long		.L2826
	.long		.L2822
	.long		.L2818
	.long		.L2814
	.long		.L2810
	.long		.L2806
	.long		.L2802
	.long		.L2798
	.long		.L2794
	.long		.L2790
	.long		.L2786
	.long		.L2782
	.long		.L2778
	.long		.L2774
	.long		.L2770
	.long		.L2766
	.long		.L2762
	.long		.L2758
	.long		.L2754
	.long		.L2750
	.long		.L2745
#$$se
.L2745:
#                 {
#                     /* PRQA S 3440++ */ /* ++ used for the most optimal assembly code */
#                     /* PRQA S 2003++ */ /* fall-through in switch is intentional loop unrolling */
#                     /* PRQA S 489++ */  /* pointer increment for optimization */
#                     VSTAR_CMP_CASE256(dstaligned,srcaligned,VSTAR_CMP_BREAK);
	.d2line		588
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2750	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2750:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2754	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2754:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2758	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2758:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2762	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2762:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2766	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2766:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2770	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2770:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2774	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2774:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2778	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2778:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2782	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2782:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2786	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2786:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2790	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2790:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2794	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2794:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2798	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2798:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2802	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2802:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2806	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2806:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2810	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2810:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2814	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2814:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2818	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2818:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2822	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2822:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2826	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2826:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2830	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2830:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2834	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2834:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2838	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2838:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2842	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2842:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2846	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2846:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2850	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2850:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2854	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2854:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2858	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2858:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2862	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2862:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2866	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2866:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2870	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2870:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2874	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2874:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2878	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2878:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2882	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2882:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2886	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2886:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2890	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2890:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2894	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2894:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2898	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2898:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2902	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2902:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2906	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2906:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2910	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2910:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2914	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2914:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2918	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2918:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2922	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2922:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2926	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2926:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2930	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2930:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2934	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2934:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2938	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2938:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2942	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2942:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2946	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2946:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2950	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2950:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2954	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2954:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2958	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2958:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2962	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2962:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2966	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2966:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2970	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2970:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2974	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2974:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2978	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2978:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2982	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2982:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2986	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2986:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2990	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2990:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2994	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2994:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L2998	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L2998:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3002	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3002:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3006	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3006:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3010	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3010:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3014	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3014:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3018	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3018:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3022	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3022:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3026	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3026:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3030	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3030:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3034	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3034:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3038	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3038:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3042	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3042:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3046	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3046:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3050	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3050:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3054	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3054:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3058	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3058:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3062	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3062:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3066	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3066:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3070	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3070:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3074	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3074:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3078	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3078:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3082	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3082:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3086	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3086:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3090	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3090:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3094	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3094:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3098	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3098:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3102	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3102:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3106	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3106:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3110	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3110:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3114	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3114:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3118	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3118:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3122	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3122:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3126	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3126:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3130	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3130:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3134	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3134:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3138	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3138:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3142	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3142:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3146	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3146:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3150	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3150:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3154	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3154:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3158	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3158:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3162	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3162:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3166	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3166:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3170	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3170:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3174	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3174:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3178	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3178:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3182	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3182:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3186	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3186:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3190	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3190:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3194	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3194:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3198	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3198:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3202	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3202:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3206	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3206:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3210	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3210:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3214	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3214:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3218	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3218:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3222	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3222:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3226	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3226:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3230	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3230:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3234	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3234:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3238	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3238:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3242	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3242:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3246	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3246:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3250	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3250:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3254	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3254:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3258	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3258:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3262	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3262:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3266	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3266:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3270	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3270:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3274	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3274:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3278	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3278:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3282	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3282:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3286	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3286:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3290	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3290:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3294	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3294:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3298	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3298:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3302	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3302:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3306	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3306:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3310	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3310:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3314	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3314:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3318	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3318:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3322	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3322:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3326	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3326:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3330	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3330:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3334	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3334:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3338	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3338:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3342	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3342:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3346	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3346:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3350	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3350:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3354	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3354:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3358	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3358:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3362	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3362:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3366	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3366:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3370	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3370:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3374	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3374:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3378	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3378:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3382	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3382:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3386	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3386:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3390	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3390:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3394	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3394:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3398	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3398:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3402	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3402:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3406	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3406:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3410	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3410:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3414	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3414:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3418	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3418:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3422	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3422:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3426	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3426:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3430	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3430:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3434	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3434:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3438	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3438:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3442	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3442:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3446	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3446:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3450	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3450:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3454	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3454:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3458	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3458:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3462	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3462:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3466	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3466:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3470	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3470:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3474	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3474:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3478	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3478:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3482	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3482:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3486	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3486:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3490	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3490:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3494	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3494:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3498	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3498:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3502	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3502:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3506	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3506:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3510	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3510:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3514	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3514:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3518	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3518:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3522	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3522:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3526	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3526:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3530	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3530:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3534	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3534:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3538	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3538:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3542	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3542:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3546	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3546:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3550	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3550:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3554	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3554:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3558	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3558:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3562	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3562:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3566	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3566:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3570	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3570:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3574	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3574:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3578	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3578:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3582	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3582:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3586	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3586:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3590	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3590:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3594	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3594:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3598	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3598:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3602	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3602:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3606	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3606:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3610	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3610:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3614	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3614:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3618	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3618:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3622	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3622:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3626	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3626:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3630	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3630:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3634	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3634:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3638	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3638:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3642	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3642:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3646	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3646:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3650	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3650:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3654	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3654:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3658	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3658:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3662	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3662:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3666	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3666:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3670	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3670:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3674	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3674:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3678	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3678:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3682	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3682:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3686	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3686:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3690	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3690:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3694	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3694:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3698	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3698:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3702	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3702:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3706	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3706:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3710	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3710:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3714	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3714:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3718	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3718:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3722	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3722:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3726	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3726:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3730	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3730:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3734	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3734:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3738	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3738:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3742	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3742:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3746	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3746:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3750	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3750:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3754	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3754:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3758	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3758:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3762	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3762:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3766	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3766:
	lwzu		r6,4(r3)		# comparelen=r6 dstaligned=r3
	lwzu		r7,4(r4)		# srcaligned=r4
	se_cmpl		r6,r7		# comparelen=r6
	bc		1,2,.L3770	# eq
	diab.addi		r3,r3,-4		# dstaligned=r3 dstaligned=r3
	diab.addi		r4,r4,-4		# srcaligned=r4 srcaligned=r4
	diab.li		r0,4		# length=r0
	b		.L3773
.L3770:
#                     /* PRQA S 489-- */  /* pointer increment for optimization */
#                     default:
#                         lengthInWords -= comparelen;
	.d2line		591
	subf		r6,r31,r5		# comparelen=r6 comparelen=r31 lengthInWords=r5
	.d2line		592
	mr.		r5,r6		# lengthInWords=?a15 lengthInWords=?a17
#                         if(lengthInWords > 0U ){
	bc		0,2,.L2744	# ne
	.section	.text_vle
.L4582:
.L3773:
	.section	.text_vle
.L4576:
#                             continue;
#                         }
#                         break;
#                     /* PRQA S 3440-- */ /* ++ used for the most optimal assembly code */
#                     /* PRQA S 2003-- */ /* fall-through in switch is intentional loop unrolling */
#                 }/* PRQA S 2016 */ /* default statement is intentionally empty */
#                 break;
#             }while(1);
#         }
#         /* PRQA S 489++*/ /* the optimized compare is heavy on pointer arithmetics */
#         /* PRQA S 3440++ */ /* the optimized compare is heavy on pointer arithmetics */
#         dstptr = (uint8*)(++dstaligned); /* PRQA S 310 */ /* casting to original type, optimization */
	.d2line		604
.Llo1248:
	diab.addi		r5,r3,4		# dstaligned=r5 dstaligned=r3
#         dstptr--;
	.d2line		605
	se_addi		r3,3		# dstptr=r3 dstaligned=r3
#         srcptr = (P2CONST(uint8,AUTOMATIC,AUTOMATIC))(++srcaligned); /* PRQA S 310 */ /* casting to original type, optimization */
	.d2line		606
.Llo1232:
	diab.addi		r5,r4,4		# srcaligned=r5 srcaligned=r4
#         srcptr--;
	.d2line		607
	se_addi		r4,3		# srcptr=r4 srcaligned=r4
#         /* PRQA S 489-- */ /* the optimized compare is heavy on pointer arithmetics */
#         /* PRQA S 3440-- */ /* the optimized compare is heavy on pointer arithmetics */
#         switch(length)
	.d2line		610
.Llo1234:
	mr		r6,r0		# length=r6 length=r0
	se_cmpi		r6,1		# length=r6
	bc		1,2,.L3787	# eq
.Llo130:
	se_cmpi		r6,2		# length=r6
.Llo131:
	bc		1,2,.L3783	# eq
	se_cmpi		r6,3		# length=r6
	bc		1,2,.L3779	# eq
	se_cmpi		r6,4		# length=r6
	bc		1,2,.L3774	# eq
.Llo132:
	b		.L2729
.L3774:
#         {
#             /* PRQA S 3440++ */ /* ++ used for the most optimal assembly code */
#             /* PRQA S 2003++ */ /* fall-through in switch is intentional loop unrolling */
#             /* PRQA S 489++ */  /* pointer increment for optimization */
#           #if defined(VSTAR_BITS_64)
#             VSTAR_CMP_CASE1(dstptr,srcptr,8UL,VSTAR_CMP_RETURN)
#             VSTAR_CMP_CASE1(dstptr,srcptr,7UL,VSTAR_CMP_RETURN)
#             VSTAR_CMP_CASE1(dstptr,srcptr,6UL,VSTAR_CMP_RETURN)
#             VSTAR_CMP_CASE1(dstptr,srcptr,5UL,VSTAR_CMP_RETURN)
#           #endif
#           #if defined(VSTAR_BITS_32) || defined(VSTAR_BITS_64)
#             VSTAR_CMP_CASE1(dstptr,srcptr,4UL,VSTAR_CMP_RETURN)
	.d2line		622
	lbzu		r0,1(r3)		# length=r0 dstptr=r3
.Llo133:
	lbzu		r5,1(r4)		# srcaligned=r5 srcptr=r4
.Llo1235:
	se_cmp		r0,r5		# length=r0 srcaligned=r5
	bc		1,2,.L3779	# eq
.Llo134:
	lbz		r0,0(r3)		# length=r0 dstptr=r3
.Llo135:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 length=r0
.Llo677:
	b		.L1663
.L3779:
#             VSTAR_CMP_CASE1(dstptr,srcptr,3UL,VSTAR_CMP_RETURN)
	.d2line		623
.Llo136:
	lbzu		r0,1(r3)		# length=r0 dstptr=r3
.Llo137:
	lbzu		r5,1(r4)		# srcaligned=r5 srcptr=r4
.Llo1236:
	se_cmp		r0,r5		# length=r0 srcaligned=r5
	bc		1,2,.L3783	# eq
.Llo138:
	lbz		r0,0(r3)		# length=r0 dstptr=r3
.Llo139:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 length=r0
.Llo678:
	b		.L1663
.L3783:
#             VSTAR_CMP_CASE1(dstptr,srcptr,2UL,VSTAR_CMP_RETURN)
	.d2line		624
.Llo140:
	lbzu		r0,1(r3)		# length=r0 dstptr=r3
.Llo141:
	lbzu		r5,1(r4)		# srcaligned=r5 srcptr=r4
.Llo1237:
	se_cmp		r0,r5		# length=r0 srcaligned=r5
	bc		1,2,.L3787	# eq
.Llo142:
	lbz		r0,0(r3)		# length=r0 dstptr=r3
.Llo143:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 length=r0
.Llo679:
	b		.L1663
.L3787:
#           #endif
#             VSTAR_CMP_CASE1(dstptr,srcptr,1UL,VSTAR_CMP_RETURN)
	.d2line		626
.Llo144:
	lbzu		r5,1(r3)		# srcaligned=r5 dstptr=r3
.Llo145:
	lbzu		r0,1(r4)		# length=r0 srcptr=r4
	se_cmp		r5,r0		# srcaligned=r5 length=r0
	bc		1,2,.L2729	# eq
.Llo146:
	lbz		r0,0(r3)		# length=r0 dstptr=r3
.Llo147:
	lbz		r3,0(r4)		# dstptr=r3 srcptr=r4
	subf		r3,r3,r0		# dstptr=r3 dstptr=r3 length=r0
.Llo680:
	b		.L1663
	.section	.text_vle
.L4566:
.L2729:
#             /* PRQA S 489-- */  /* pointer increment for optimization */
#             default:
#             break;
#             /* PRQA S 3440-- */ /* ++ used for the most optimal assembly code */
#             /* PRQA S 2003-- */ /* fall-through in switch is intentional loop unrolling */
#         }/* PRQA S 2016 */ /* default statement is intentionally empty */
# 
#     }
#     /* no difference is found so return with zero */
#     return 0U;
	.d2line		636
.Llo148:
	diab.li		r3,0		# dstptr=r3
.L1663:
# }
	.d2line		637
	.d2epilogue_begin
.Llo683:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# cmplen=r0
	mtspr		lr,r0		# cmplen=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4538:
	.type		vstar_cmp,@function
	.size		vstar_cmp,.-vstar_cmp
# Number of nodes = 9904

# Allocations for vstar_cmp
#	?a4		ptr1
#	?a5		ptr2
#	?a6		length
#	?a7		dstptr
#	?a8		srcptr
#	?a9		vstar_cmp8_dst
#	?a10		vstar_cmp8_src
#	?a11		cmplen
#	?a12		dstaligned
#	?a13		srcaligned
#	?a14		ctr
#	?a15		lengthInWords
#	?a16		comparelen
# FUNC(void, VSTAR_BITS_CODE) vstar_hbuftobe16(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         646,29
#$$ld
.L4590:

#$$bf	vstar_hbuftobe16,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_hbuftobe16
	.d2_cfa_start __cie
vstar_hbuftobe16:
.Llo1251:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceBuffer=r4 sourceBuffer=r4
	.d2prologue_end
#                                       CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(uint16, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(uint16, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		649
.Llo1253:
	mr		r5,r4		# src=r5 src=r4
#     *(uint16 * const)destinationBuffer = VSTAR_HTOBE16(*(const uint16 * const)src);
	.d2line		650
	lhz		r4,0(r4)		# sourceBuffer=r4 sourceBuffer=r4
.Llo1254:
	sth		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		651
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1252:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4591:
	.type		vstar_hbuftobe16,@function
	.size		vstar_hbuftobe16,.-vstar_hbuftobe16
# Number of nodes = 8

# Allocations for vstar_hbuftobe16
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_hbuftole16(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         660,29
#$$ld
.L4604:

#$$bf	vstar_hbuftole16,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_hbuftole16
	.d2_cfa_start __cie
vstar_hbuftole16:
.Llo1255:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceBuffer=r4 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(uint16, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(uint16, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		663
.Llo1257:
	mr		r5,r4		# src=r5 src=r4
#     *(uint16 * const)destinationBuffer = VSTAR_HTOLE16(*(const uint16 * const)src);
	.d2line		664
	lhz		r4,0(r4)		# sourceBuffer=r4 sourceBuffer=r4
.Llo1258:
	rlwinm		r5,r4,8,16,23		# sourceBuffer=r5 sourceBuffer=r4
	rlwinm		r4,r4,24,24,31		# sourceBuffer=r4 sourceBuffer=r4
	or		r4,r4,r5		# sourceBuffer=r4 sourceBuffer=r4 sourceBuffer=r5
	sth		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		665
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1256:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4605:
	.type		vstar_hbuftole16,@function
	.size		vstar_hbuftole16,.-vstar_hbuftole16
# Number of nodes = 21

# Allocations for vstar_hbuftole16
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_bebuftoh16(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         674,29
#$$ld
.L4613:

#$$bf	vstar_bebuftoh16,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_bebuftoh16
	.d2_cfa_start __cie
vstar_bebuftoh16:
.Llo1259:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceBuffer=r4 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(uint16, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(uint16, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		677
.Llo1261:
	mr		r5,r4		# src=r5 src=r4
#     *(uint16 * const)destinationBuffer = VSTAR_BETOH16(*(const uint16 * const)src);
	.d2line		678
	lhz		r4,0(r4)		# sourceBuffer=r4 sourceBuffer=r4
.Llo1262:
	sth		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		679
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1260:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4614:
	.type		vstar_bebuftoh16,@function
	.size		vstar_bebuftoh16,.-vstar_bebuftoh16
# Number of nodes = 8

# Allocations for vstar_bebuftoh16
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_lebuftoh16(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         688,29
#$$ld
.L4622:

#$$bf	vstar_lebuftoh16,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_lebuftoh16
	.d2_cfa_start __cie
vstar_lebuftoh16:
.Llo1263:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceBuffer=r4 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(uint16, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(uint16, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		691
.Llo1265:
	mr		r5,r4		# src=r5 src=r4
#     *(uint16 * const)destinationBuffer = VSTAR_LETOH16(*(const uint16 * const)src);
	.d2line		692
	lhz		r4,0(r4)		# sourceBuffer=r4 sourceBuffer=r4
.Llo1266:
	rlwinm		r5,r4,8,16,23		# sourceBuffer=r5 sourceBuffer=r4
	rlwinm		r4,r4,24,24,31		# sourceBuffer=r4 sourceBuffer=r4
	or		r4,r4,r5		# sourceBuffer=r4 sourceBuffer=r4 sourceBuffer=r5
	sth		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		693
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1264:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4623:
	.type		vstar_lebuftoh16,@function
	.size		vstar_lebuftoh16,.-vstar_lebuftoh16
# Number of nodes = 21

# Allocations for vstar_lebuftoh16
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_htobe16(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         702,29
#$$ld
.L4631:

#$$bf	vstar_htobe16,interprocedural,nostackparams

# Regs written: r0,r1,r3,r5,lr
	.globl		vstar_htobe16
	.d2_cfa_start __cie
vstar_htobe16:
.Llo1267:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# destinationBuffer=r5 destinationBuffer=r3
.Llo1268:
	mr		r3,r4		# sourceValue=r3 sourceValue=r4
	.d2prologue_end
#                                    CONST(uint16,AUTOMATIC) sourceValue)
# {
#     CONST(uint16, AUTOMATIC) src = (CONST(uint16, AUTOMATIC)) sourceValue;
	.d2line		705
.Llo1269:
	mr		r3,r3		# src=r3 src=r3
#     *(uint16 * const)destinationBuffer = VSTAR_HTOBE16(src);
	.d2line		706
.Llo1271:
	sth		r4,0(r5)		# destinationBuffer=r5 sourceValue=r4
# }
	.d2line		707
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1270:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4632:
	.type		vstar_htobe16,@function
	.size		vstar_htobe16,.-vstar_htobe16
# Number of nodes = 7

# Allocations for vstar_htobe16
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_htole16(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         716,29
#$$ld
.L4640:

#$$bf	vstar_htole16,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_htole16
	.d2_cfa_start __cie
vstar_htole16:
.Llo1272:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceValue=r4 sourceValue=r4
	.d2prologue_end
#                                    CONST(uint16,AUTOMATIC) sourceValue)
# {
#     CONST(uint16, AUTOMATIC) src = (CONST(uint16, AUTOMATIC)) sourceValue;
	.d2line		719
.Llo1274:
	mr		r4,r4		# src=r4 src=r4
#     *(uint16 * const)destinationBuffer = VSTAR_HTOLE16(src);
	.d2line		720
	rlwinm		r5,r4,8,16,23		# src=r4
	rlwinm		r4,r4,24,24,31		# src=r4 src=r4
	or		r4,r4,r5		# src=r4 src=r4
	sth		r4,0(r3)		# destinationBuffer=r3 src=r4
# }
	.d2line		721
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1273:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4641:
	.type		vstar_htole16,@function
	.size		vstar_htole16,.-vstar_htole16
# Number of nodes = 19

# Allocations for vstar_htole16
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_betoh16(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         730,29
#$$ld
.L4649:

#$$bf	vstar_betoh16,interprocedural,nostackparams

# Regs written: r0,r1,r3,r5,lr
	.globl		vstar_betoh16
	.d2_cfa_start __cie
vstar_betoh16:
.Llo1275:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# destinationBuffer=r5 destinationBuffer=r3
.Llo1276:
	mr		r3,r4		# sourceValue=r3 sourceValue=r4
	.d2prologue_end
#                                    CONST(uint16,AUTOMATIC) sourceValue)
# {
#     CONST(uint16, AUTOMATIC) src = (CONST(uint16, AUTOMATIC)) sourceValue;
	.d2line		733
.Llo1277:
	mr		r3,r3		# src=r3 src=r3
#     *(uint16 * const)destinationBuffer = VSTAR_BETOH16(src);
	.d2line		734
.Llo1279:
	sth		r4,0(r5)		# destinationBuffer=r5 sourceValue=r4
# }
	.d2line		735
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1278:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4650:
	.type		vstar_betoh16,@function
	.size		vstar_betoh16,.-vstar_betoh16
# Number of nodes = 7

# Allocations for vstar_betoh16
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_letoh16(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         744,29
#$$ld
.L4658:

#$$bf	vstar_letoh16,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_letoh16
	.d2_cfa_start __cie
vstar_letoh16:
.Llo1280:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceValue=r4 sourceValue=r4
	.d2prologue_end
#                                    CONST(uint16,AUTOMATIC) sourceValue)
# {
#     CONST(uint16, AUTOMATIC) src = (CONST(uint16, AUTOMATIC)) sourceValue;
	.d2line		747
.Llo1282:
	mr		r4,r4		# src=r4 src=r4
#     *(uint16 * const)destinationBuffer = VSTAR_LETOH16(src);
	.d2line		748
	rlwinm		r5,r4,8,16,23		# src=r4
	rlwinm		r4,r4,24,24,31		# src=r4 src=r4
	or		r4,r4,r5		# src=r4 src=r4
	sth		r4,0(r3)		# destinationBuffer=r3 src=r4
# }
	.d2line		749
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1281:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4659:
	.type		vstar_letoh16,@function
	.size		vstar_letoh16,.-vstar_letoh16
# Number of nodes = 19

# Allocations for vstar_letoh16
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a6		src
# FUNC(uint16, VSTAR_BITS_CODE) vstar_htobe16_value(CONST(uint16,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         757,31
#$$ld
.L4667:

#$$bf	vstar_htobe16_value,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		vstar_htobe16_value
	.d2_cfa_start __cie
vstar_htobe16_value:
.Llo1283:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
	.d2prologue_end
# {
#     CONST(uint16, AUTOMATIC) src = (CONST(uint16, AUTOMATIC)) sourceValue;
	.d2line		759
.Llo1285:
	mr		r4,r3		# src=r4 src=r3
#     return VSTAR_HTOBE16(src);
	.d2line		760
	rlwinm		r3,r3,0,16,31		# sourceValue=r3 sourceValue=r3
# }
	.d2line		761
	.d2epilogue_begin
.Llo1284:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4668:
	.type		vstar_htobe16_value,@function
	.size		vstar_htobe16_value,.-vstar_htobe16_value
# Number of nodes = 5

# Allocations for vstar_htobe16_value
#	?a4		sourceValue
#	?a5		src
# FUNC(uint16, VSTAR_BITS_CODE) vstar_htole16_value(CONST(uint16,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         769,31
#$$ld
.L4675:

#$$bf	vstar_htole16_value,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		vstar_htole16_value
	.d2_cfa_start __cie
vstar_htole16_value:
.Llo1286:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
	.d2prologue_end
# {
#     CONST(uint16, AUTOMATIC) src = (CONST(uint16, AUTOMATIC)) sourceValue;
	.d2line		771
.Llo1287:
	mr		r3,r3		# src=r3 src=r3
#     return VSTAR_HTOLE16(src);
	.d2line		772
	rlwinm		r4,r3,8,16,23		# src=r3
	rlwinm		r3,r3,24,24,31		# src=r3 src=r3
	or		r4,r4,r3		# src=r3
	rlwinm		r3,r4,0,16,31		# src=r3
# }
	.d2line		773
	.d2epilogue_begin
.Llo1288:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4676:
	.type		vstar_htole16_value,@function
	.size		vstar_htole16_value,.-vstar_htole16_value
# Number of nodes = 17

# Allocations for vstar_htole16_value
#	?a4		sourceValue
#	?a5		src
# FUNC(uint16, VSTAR_BITS_CODE) vstar_betoh16_value(CONST(uint16,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         781,31
#$$ld
.L4683:

#$$bf	vstar_betoh16_value,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		vstar_betoh16_value
	.d2_cfa_start __cie
vstar_betoh16_value:
.Llo1289:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
	.d2prologue_end
# {
#     CONST(uint16, AUTOMATIC) src = (CONST(uint16, AUTOMATIC)) sourceValue;
	.d2line		783
.Llo1291:
	mr		r4,r3		# src=r4 src=r3
#     return VSTAR_BETOH16(src);
	.d2line		784
	rlwinm		r3,r3,0,16,31		# sourceValue=r3 sourceValue=r3
# }
	.d2line		785
	.d2epilogue_begin
.Llo1290:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4684:
	.type		vstar_betoh16_value,@function
	.size		vstar_betoh16_value,.-vstar_betoh16_value
# Number of nodes = 5

# Allocations for vstar_betoh16_value
#	?a4		sourceValue
#	?a5		src
# FUNC(uint16, VSTAR_BITS_CODE) vstar_letoh16_value(CONST(uint16,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         793,31
#$$ld
.L4691:

#$$bf	vstar_letoh16_value,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		vstar_letoh16_value
	.d2_cfa_start __cie
vstar_letoh16_value:
.Llo1292:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
	.d2prologue_end
# {
#     CONST(uint16, AUTOMATIC) src = (CONST(uint16, AUTOMATIC)) sourceValue;
	.d2line		795
.Llo1293:
	mr		r3,r3		# src=r3 src=r3
#     return VSTAR_LETOH16(src);
	.d2line		796
	rlwinm		r4,r3,8,16,23		# src=r3
	rlwinm		r3,r3,24,24,31		# src=r3 src=r3
	or		r4,r4,r3		# src=r3
	rlwinm		r3,r4,0,16,31		# src=r3
# }
	.d2line		797
	.d2epilogue_begin
.Llo1294:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4692:
	.type		vstar_letoh16_value,@function
	.size		vstar_letoh16_value,.-vstar_letoh16_value
# Number of nodes = 17

# Allocations for vstar_letoh16_value
#	?a4		sourceValue
#	?a5		src
# FUNC(void, VSTAR_BITS_CODE) vstar_hbuftobe16_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         806,29
#$$ld
.L4699:

#$$bf	vstar_hbuftobe16_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_hbuftobe16_sint
	.d2_cfa_start __cie
vstar_hbuftobe16_sint:
.Llo1295:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceBuffer=r4 sourceBuffer=r4
	.d2prologue_end
#                                       CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(sint16, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(sint16, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		809
.Llo1297:
	mr		r5,r4		# src=r5 src=r4
#     *(sint16 * const)destinationBuffer = VSTAR_HTOBE16_SINT(*(const sint16 * const)src);
	.d2line		810
	lha		r4,0(r4)		# sourceBuffer=r4 sourceBuffer=r4
.Llo1298:
	sth		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		811
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1296:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4700:
	.type		vstar_hbuftobe16_sint,@function
	.size		vstar_hbuftobe16_sint,.-vstar_hbuftobe16_sint
# Number of nodes = 8

# Allocations for vstar_hbuftobe16_sint
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_hbuftole16_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         820,29
#$$ld
.L4713:

#$$bf	vstar_hbuftole16_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_hbuftole16_sint
	.d2_cfa_start __cie
vstar_hbuftole16_sint:
.Llo1299:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r4		# sourceBuffer=r5 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(sint16, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(sint16, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		823
.Llo1301:
	mr		r4,r5		# src=r4 src=r5
#     *(sint16 * const)(destinationBuffer) = VSTAR_HTOLE16_SINT(*(const sint16 * const)src);
	.d2line		824
.Llo1302:
	lha		r4,0(r5)		# sourceBuffer=r4 sourceBuffer=r5
	rlwinm		r4,r4,8,16,23		# sourceBuffer=r4 sourceBuffer=r4
	lhz		r5,0(r5)		# sourceBuffer=r5 sourceBuffer=r5
.Llo1303:
	rlwinm		r5,r5,24,24,31		# sourceBuffer=r5 sourceBuffer=r5
.Llo1304:
	or		r4,r4,r5		# sourceBuffer=r4 sourceBuffer=r4 sourceBuffer=r5
	sth		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		825
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1300:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4714:
	.type		vstar_hbuftole16_sint,@function
	.size		vstar_hbuftole16_sint,.-vstar_hbuftole16_sint
# Number of nodes = 21

# Allocations for vstar_hbuftole16_sint
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_bebuftoh16_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         835,29
#$$ld
.L4722:

#$$bf	vstar_bebuftoh16_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_bebuftoh16_sint
	.d2_cfa_start __cie
vstar_bebuftoh16_sint:
.Llo1305:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceBuffer=r4 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(sint16, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(sint16, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		838
.Llo1307:
	mr		r5,r4		# src=r5 src=r4
#     *(sint16 * const)destinationBuffer = VSTAR_BETOH16_SINT(*(const sint16 * const)src);
	.d2line		839
	lha		r4,0(r4)		# sourceBuffer=r4 sourceBuffer=r4
.Llo1308:
	sth		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		840
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1306:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4723:
	.type		vstar_bebuftoh16_sint,@function
	.size		vstar_bebuftoh16_sint,.-vstar_bebuftoh16_sint
# Number of nodes = 8

# Allocations for vstar_bebuftoh16_sint
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_lebuftoh16_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         849,29
#$$ld
.L4731:

#$$bf	vstar_lebuftoh16_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_lebuftoh16_sint
	.d2_cfa_start __cie
vstar_lebuftoh16_sint:
.Llo1309:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r4		# sourceBuffer=r5 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(sint16, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(sint16, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		852
.Llo1311:
	mr		r4,r5		# src=r4 src=r5
#     *(sint16 * const)destinationBuffer = VSTAR_LETOH16_SINT(*(const sint16 * const)src);
	.d2line		853
.Llo1312:
	lha		r4,0(r5)		# sourceBuffer=r4 sourceBuffer=r5
	rlwinm		r4,r4,8,16,23		# sourceBuffer=r4 sourceBuffer=r4
	lhz		r5,0(r5)		# sourceBuffer=r5 sourceBuffer=r5
.Llo1313:
	rlwinm		r5,r5,24,24,31		# sourceBuffer=r5 sourceBuffer=r5
.Llo1314:
	or		r4,r4,r5		# sourceBuffer=r4 sourceBuffer=r4 sourceBuffer=r5
	sth		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		854
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1310:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4732:
	.type		vstar_lebuftoh16_sint,@function
	.size		vstar_lebuftoh16_sint,.-vstar_lebuftoh16_sint
# Number of nodes = 21

# Allocations for vstar_lebuftoh16_sint
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_htobe16_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         863,29
#$$ld
.L4740:

#$$bf	vstar_htobe16_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r5,lr
	.globl		vstar_htobe16_sint
	.d2_cfa_start __cie
vstar_htobe16_sint:
.Llo1315:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# destinationBuffer=r5 destinationBuffer=r3
.Llo1316:
	mr		r3,r4		# sourceValue=r3 sourceValue=r4
	.d2prologue_end
#                                    CONST(sint16,AUTOMATIC) sourceValue)
# {
#     CONST(sint16, AUTOMATIC) src = (CONST(sint16, AUTOMATIC)) sourceValue;
	.d2line		866
.Llo1317:
	mr		r3,r3		# src=r3 src=r3
#     *(sint16 * const)destinationBuffer = VSTAR_HTOBE16_SINT(src);
	.d2line		867
.Llo1319:
	sth		r4,0(r5)		# destinationBuffer=r5 sourceValue=r4
# }
	.d2line		868
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1318:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4741:
	.type		vstar_htobe16_sint,@function
	.size		vstar_htobe16_sint,.-vstar_htobe16_sint
# Number of nodes = 7

# Allocations for vstar_htobe16_sint
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_htole16_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         877,29
#$$ld
.L4749:

#$$bf	vstar_htole16_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_htole16_sint
	.d2_cfa_start __cie
vstar_htole16_sint:
.Llo1320:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceValue=r4 sourceValue=r4
	.d2prologue_end
#                                    CONST(sint16,AUTOMATIC) sourceValue)
# {
#     CONST(sint16, AUTOMATIC) src = (CONST(sint16, AUTOMATIC)) sourceValue;
	.d2line		880
.Llo1322:
	mr		r4,r4		# src=r4 src=r4
#     *(sint16 * const)destinationBuffer = VSTAR_HTOLE16_SINT(src);
	.d2line		881
	rlwinm		r5,r4,8,16,23		# src=r4
	rlwinm		r4,r4,24,24,31		# src=r4 src=r4
	or		r4,r4,r5		# src=r4 src=r4
	sth		r4,0(r3)		# destinationBuffer=r3 src=r4
# }
	.d2line		882
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1321:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4750:
	.type		vstar_htole16_sint,@function
	.size		vstar_htole16_sint,.-vstar_htole16_sint
# Number of nodes = 19

# Allocations for vstar_htole16_sint
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_betoh16_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         891,29
#$$ld
.L4758:

#$$bf	vstar_betoh16_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r5,lr
	.globl		vstar_betoh16_sint
	.d2_cfa_start __cie
vstar_betoh16_sint:
.Llo1323:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# destinationBuffer=r5 destinationBuffer=r3
.Llo1324:
	mr		r3,r4		# sourceValue=r3 sourceValue=r4
	.d2prologue_end
#                                    CONST(sint16,AUTOMATIC) sourceValue)
# {
#     CONST(sint16, AUTOMATIC) src = (CONST(sint16, AUTOMATIC)) sourceValue;
	.d2line		894
.Llo1325:
	mr		r3,r3		# src=r3 src=r3
#     *(sint16 * const)destinationBuffer = VSTAR_BETOH16_SINT(src);
	.d2line		895
.Llo1327:
	sth		r4,0(r5)		# destinationBuffer=r5 sourceValue=r4
# }
	.d2line		896
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1326:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4759:
	.type		vstar_betoh16_sint,@function
	.size		vstar_betoh16_sint,.-vstar_betoh16_sint
# Number of nodes = 7

# Allocations for vstar_betoh16_sint
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_letoh16_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         905,29
#$$ld
.L4767:

#$$bf	vstar_letoh16_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_letoh16_sint
	.d2_cfa_start __cie
vstar_letoh16_sint:
.Llo1328:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceValue=r4 sourceValue=r4
	.d2prologue_end
#                                    CONST(sint16,AUTOMATIC) sourceValue)
# {
#     CONST(sint16, AUTOMATIC) src = (CONST(sint16, AUTOMATIC)) sourceValue;
	.d2line		908
.Llo1330:
	mr		r4,r4		# src=r4 src=r4
#     *(sint16 * const)destinationBuffer = VSTAR_LETOH16_SINT(src);
	.d2line		909
	rlwinm		r5,r4,8,16,23		# src=r4
	rlwinm		r4,r4,24,24,31		# src=r4 src=r4
	or		r4,r4,r5		# src=r4 src=r4
	sth		r4,0(r3)		# destinationBuffer=r3 src=r4
# }
	.d2line		910
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1329:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4768:
	.type		vstar_letoh16_sint,@function
	.size		vstar_letoh16_sint,.-vstar_letoh16_sint
# Number of nodes = 19

# Allocations for vstar_letoh16_sint
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a6		src
# FUNC(sint16, VSTAR_BITS_CODE) vstar_htobe16_value_sint(CONST(sint16,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         918,31
#$$ld
.L4776:

#$$bf	vstar_htobe16_value_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		vstar_htobe16_value_sint
	.d2_cfa_start __cie
vstar_htobe16_value_sint:
.Llo1331:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
	.d2prologue_end
# {
#     CONST(sint16, AUTOMATIC) src = (CONST(sint16, AUTOMATIC)) sourceValue;
	.d2line		920
.Llo1332:
	mr		r3,r3		# src=r3 src=r3
#     return VSTAR_HTOBE16_SINT(src);
	.d2line		921
	extsh		r3,r3		# src=r3 src=r3
# }
	.d2line		922
	.d2epilogue_begin
.Llo1333:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4777:
	.type		vstar_htobe16_value_sint,@function
	.size		vstar_htobe16_value_sint,.-vstar_htobe16_value_sint
# Number of nodes = 5

# Allocations for vstar_htobe16_value_sint
#	?a4		sourceValue
#	?a5		src
# FUNC(sint16, VSTAR_BITS_CODE) vstar_htole16_value_sint(CONST(sint16,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         930,31
#$$ld
.L4784:

#$$bf	vstar_htole16_value_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		vstar_htole16_value_sint
	.d2_cfa_start __cie
vstar_htole16_value_sint:
.Llo1334:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
	.d2prologue_end
# {
#     CONST(sint16, AUTOMATIC) src = (CONST(sint16, AUTOMATIC)) sourceValue;
	.d2line		932
.Llo1335:
	mr		r3,r3		# src=r3 src=r3
#     return VSTAR_HTOLE16_SINT(src);
	.d2line		933
	rlwinm		r4,r3,8,16,23		# src=r3
	rlwinm		r3,r3,24,24,31		# src=r3 src=r3
	or		r4,r4,r3		# src=r3
	extsh		r3,r4		# src=r3
# }
	.d2line		934
	.d2epilogue_begin
.Llo1336:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4785:
	.type		vstar_htole16_value_sint,@function
	.size		vstar_htole16_value_sint,.-vstar_htole16_value_sint
# Number of nodes = 17

# Allocations for vstar_htole16_value_sint
#	?a4		sourceValue
#	?a5		src
# FUNC(sint16, VSTAR_BITS_CODE) vstar_betoh16_value_sint(CONST(sint16,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         942,31
#$$ld
.L4792:

#$$bf	vstar_betoh16_value_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		vstar_betoh16_value_sint
	.d2_cfa_start __cie
vstar_betoh16_value_sint:
.Llo1337:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
	.d2prologue_end
# {
#     CONST(sint16, AUTOMATIC) src = (CONST(sint16, AUTOMATIC)) sourceValue;
	.d2line		944
.Llo1338:
	mr		r3,r3		# src=r3 src=r3
#     return VSTAR_BETOH16_SINT(src);
	.d2line		945
	extsh		r3,r3		# src=r3 src=r3
# }
	.d2line		946
	.d2epilogue_begin
.Llo1339:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4793:
	.type		vstar_betoh16_value_sint,@function
	.size		vstar_betoh16_value_sint,.-vstar_betoh16_value_sint
# Number of nodes = 5

# Allocations for vstar_betoh16_value_sint
#	?a4		sourceValue
#	?a5		src
# FUNC(sint16, VSTAR_BITS_CODE) vstar_letoh16_value_sint(CONST(sint16,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         954,31
#$$ld
.L4800:

#$$bf	vstar_letoh16_value_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		vstar_letoh16_value_sint
	.d2_cfa_start __cie
vstar_letoh16_value_sint:
.Llo1340:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
	.d2prologue_end
# {
#     CONST(sint16, AUTOMATIC) src = (CONST(sint16, AUTOMATIC)) sourceValue;
	.d2line		956
.Llo1341:
	mr		r3,r3		# src=r3 src=r3
#     return VSTAR_LETOH16_SINT(src);
	.d2line		957
	rlwinm		r4,r3,8,16,23		# src=r3
	rlwinm		r3,r3,24,24,31		# src=r3 src=r3
	or		r4,r4,r3		# src=r3
	extsh		r3,r4		# src=r3
# }
	.d2line		958
	.d2epilogue_begin
.Llo1342:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4801:
	.type		vstar_letoh16_value_sint,@function
	.size		vstar_letoh16_value_sint,.-vstar_letoh16_value_sint
# Number of nodes = 17

# Allocations for vstar_letoh16_value_sint
#	?a4		sourceValue
#	?a5		src
# FUNC(void, VSTAR_BITS_CODE) vstar_hbuftobe32(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         967,29
#$$ld
.L4808:

#$$bf	vstar_hbuftobe32,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_hbuftobe32
	.d2_cfa_start __cie
vstar_hbuftobe32:
.Llo1343:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceBuffer=r4 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(uint32, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(uint32, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		970
.Llo1345:
	mr		r5,r4		# src=r5 src=r4
#     *(uint32 * const)destinationBuffer = VSTAR_HTOBE32(*(const uint32 * const)src);
	.d2line		971
	lwz		r4,0(r4)		# sourceBuffer=r4 sourceBuffer=r4
.Llo1346:
	stw		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		972
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1344:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4809:
	.type		vstar_hbuftobe32,@function
	.size		vstar_hbuftobe32,.-vstar_hbuftobe32
# Number of nodes = 8

# Allocations for vstar_hbuftobe32
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_hbuftole32(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         981,29
#$$ld
.L4820:

#$$bf	vstar_hbuftole32,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_hbuftole32
	.d2_cfa_start __cie
vstar_hbuftole32:
.Llo1347:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceBuffer=r4 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(uint32, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(uint32, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		984
.Llo1349:
	mr		r5,r4		# src=r5 src=r4
#     *(uint32 * const)destinationBuffer = VSTAR_HTOLE32(*(const uint32 * const)src);
	.d2line		985
	lwz		r0,0(r4)		# sourceBuffer=r4
	rlwinm		r4,r0,8,24,31		# sourceBuffer=r4
.Llo1350:
	rlwimi		r4,r0,24,16,23		# sourceBuffer=r4
	rlwimi		r4,r0,8,8,15		# sourceBuffer=r4
	rlwimi		r4,r0,24,0,7		# sourceBuffer=r4
	stw		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		986
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1348:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4821:
	.type		vstar_hbuftole32,@function
	.size		vstar_hbuftole32,.-vstar_hbuftole32
# Number of nodes = 9

# Allocations for vstar_hbuftole32
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_bebuftoh32(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         995,29
#$$ld
.L4829:

#$$bf	vstar_bebuftoh32,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_bebuftoh32
	.d2_cfa_start __cie
vstar_bebuftoh32:
.Llo1351:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceBuffer=r4 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(uint32, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(uint32, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		998
.Llo1353:
	mr		r5,r4		# src=r5 src=r4
#     *(uint32 * const)destinationBuffer = VSTAR_BETOH32(*(const uint32 * const)src);
	.d2line		999
	lwz		r4,0(r4)		# sourceBuffer=r4 sourceBuffer=r4
.Llo1354:
	stw		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		1000
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1352:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4830:
	.type		vstar_bebuftoh32,@function
	.size		vstar_bebuftoh32,.-vstar_bebuftoh32
# Number of nodes = 8

# Allocations for vstar_bebuftoh32
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_lebuftoh32(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1009,29
#$$ld
.L4838:

#$$bf	vstar_lebuftoh32,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_lebuftoh32
	.d2_cfa_start __cie
vstar_lebuftoh32:
.Llo1355:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceBuffer=r4 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(uint32, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(uint32, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		1012
.Llo1357:
	mr		r5,r4		# src=r5 src=r4
#     *(uint32 * const)destinationBuffer = VSTAR_LETOH32(*(const uint32 * const)src);
	.d2line		1013
	lwz		r0,0(r4)		# sourceBuffer=r4
	rlwinm		r4,r0,8,24,31		# sourceBuffer=r4
.Llo1358:
	rlwimi		r4,r0,24,16,23		# sourceBuffer=r4
	rlwimi		r4,r0,8,8,15		# sourceBuffer=r4
	rlwimi		r4,r0,24,0,7		# sourceBuffer=r4
	stw		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		1014
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1356:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4839:
	.type		vstar_lebuftoh32,@function
	.size		vstar_lebuftoh32,.-vstar_lebuftoh32
# Number of nodes = 9

# Allocations for vstar_lebuftoh32
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_htobe32(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1023,29
#$$ld
.L4847:

#$$bf	vstar_htobe32,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_htobe32
	.d2_cfa_start __cie
vstar_htobe32:
.Llo1359:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceValue=r4 sourceValue=r4
	.d2prologue_end
#                                    CONST(uint32,AUTOMATIC) sourceValue)
# {
#     CONST(uint32, AUTOMATIC) src = (CONST(uint32, AUTOMATIC)) sourceValue;
	.d2line		1026
.Llo1361:
	mr		r5,r4		# src=r5 src=r4
#     *(uint32 * const)destinationBuffer = VSTAR_HTOBE32(src);
	.d2line		1027
	stw		r4,0(r3)		# destinationBuffer=r3 sourceValue=r4
# }
	.d2line		1028
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1360:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4848:
	.type		vstar_htobe32,@function
	.size		vstar_htobe32,.-vstar_htobe32
# Number of nodes = 7

# Allocations for vstar_htobe32
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_htole32(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1037,29
#$$ld
.L4856:

#$$bf	vstar_htole32,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		vstar_htole32
	.d2_cfa_start __cie
vstar_htole32:
.Llo1362:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# sourceValue=r0
	stw		r0,20(r1)		# sourceValue=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceValue=r4 sourceValue=r4
	.d2prologue_end
#                                    CONST(uint32,AUTOMATIC) sourceValue)
# {
#     CONST(uint32, AUTOMATIC) src = (CONST(uint32, AUTOMATIC)) sourceValue;
	.d2line		1040
.Llo1364:
	mr		r4,r4		# src=r4 src=r4
#     *(uint32 * const)destinationBuffer = VSTAR_HTOLE32(src);
	.d2line		1041
.Llo1365:
	mr		r0,r4		# sourceValue=r0 sourceValue=r4
	se_srwi		r4,24		# sourceValue=r4 sourceValue=r4
.Llo1366:
	rlwimi		r4,r0,24,16,23		# sourceValue=r4 sourceValue=r0
.Llo1367:
	rlwimi		r4,r0,8,8,15		# sourceValue=r4 sourceValue=r0
	rlwimi		r4,r0,24,0,7		# sourceValue=r4 sourceValue=r0
	stw		r4,0(r3)		# destinationBuffer=r3 sourceValue=r4
# }
	.d2line		1042
	.d2epilogue_begin
	lwz		r0,20(r1)		# sourceValue=r0
.Llo1368:
	mtspr		lr,r0		# sourceValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1363:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4857:
	.type		vstar_htole32,@function
	.size		vstar_htole32,.-vstar_htole32
# Number of nodes = 8

# Allocations for vstar_htole32
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_betoh32(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1051,29
#$$ld
.L4865:

#$$bf	vstar_betoh32,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_betoh32
	.d2_cfa_start __cie
vstar_betoh32:
.Llo1369:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceValue=r4 sourceValue=r4
	.d2prologue_end
#                                    CONST(uint32,AUTOMATIC) sourceValue)
# {
#     CONST(uint32, AUTOMATIC) src = (CONST(uint32, AUTOMATIC)) sourceValue;
	.d2line		1054
.Llo1371:
	mr		r5,r4		# src=r5 src=r4
#     *(uint32 * const)destinationBuffer = VSTAR_BETOH32(src);
	.d2line		1055
	stw		r4,0(r3)		# destinationBuffer=r3 sourceValue=r4
# }
	.d2line		1056
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1370:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4866:
	.type		vstar_betoh32,@function
	.size		vstar_betoh32,.-vstar_betoh32
# Number of nodes = 7

# Allocations for vstar_betoh32
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_letoh32(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1065,29
#$$ld
.L4874:

#$$bf	vstar_letoh32,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		vstar_letoh32
	.d2_cfa_start __cie
vstar_letoh32:
.Llo1372:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# sourceValue=r0
	stw		r0,20(r1)		# sourceValue=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceValue=r4 sourceValue=r4
	.d2prologue_end
#                                    CONST(uint32,AUTOMATIC) sourceValue)
# {
#     CONST(uint32, AUTOMATIC) src = (CONST(uint32, AUTOMATIC)) sourceValue;
	.d2line		1068
.Llo1374:
	mr		r4,r4		# src=r4 src=r4
#     *(uint32 * const)destinationBuffer = VSTAR_LETOH32(src);
	.d2line		1069
.Llo1375:
	mr		r0,r4		# sourceValue=r0 sourceValue=r4
	se_srwi		r4,24		# sourceValue=r4 sourceValue=r4
.Llo1376:
	rlwimi		r4,r0,24,16,23		# sourceValue=r4 sourceValue=r0
.Llo1377:
	rlwimi		r4,r0,8,8,15		# sourceValue=r4 sourceValue=r0
	rlwimi		r4,r0,24,0,7		# sourceValue=r4 sourceValue=r0
	stw		r4,0(r3)		# destinationBuffer=r3 sourceValue=r4
# }
	.d2line		1070
	.d2epilogue_begin
	lwz		r0,20(r1)		# sourceValue=r0
.Llo1378:
	mtspr		lr,r0		# sourceValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1373:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4875:
	.type		vstar_letoh32,@function
	.size		vstar_letoh32,.-vstar_letoh32
# Number of nodes = 8

# Allocations for vstar_letoh32
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a6		src
# FUNC(uint32, VSTAR_BITS_CODE) vstar_htobe32_value(CONST(uint32,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         1078,31
#$$ld
.L4883:

#$$bf	vstar_htobe32_value,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		vstar_htobe32_value
	.d2_cfa_start __cie
vstar_htobe32_value:
.Llo1379:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
	.d2prologue_end
# {
#     CONST(uint32, AUTOMATIC) src = (CONST(uint32, AUTOMATIC)) sourceValue;
	.d2line		1080
.Llo1380:
	mr		r3,r3		# src=r3 src=r3
#     return VSTAR_HTOBE32(src);
	.d2line		1081
.Llo1381:
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
# }
	.d2line		1082
	.d2epilogue_begin
.Llo1382:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4884:
	.type		vstar_htobe32_value,@function
	.size		vstar_htobe32_value,.-vstar_htobe32_value
# Number of nodes = 5

# Allocations for vstar_htobe32_value
#	?a4		sourceValue
#	?a5		src
# FUNC(uint32, VSTAR_BITS_CODE) vstar_htole32_value(CONST(uint32,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         1090,31
#$$ld
.L4891:

#$$bf	vstar_htole32_value,interprocedural,nostackparams

# Regs written: r0,r1,r3,lr
	.globl		vstar_htole32_value
	.d2_cfa_start __cie
vstar_htole32_value:
.Llo1383:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# sourceValue=r0
	stw		r0,20(r1)		# sourceValue=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
	.d2prologue_end
# {
#     CONST(uint32, AUTOMATIC) src = (CONST(uint32, AUTOMATIC)) sourceValue;
	.d2line		1092
.Llo1384:
	mr		r3,r3		# src=r3 src=r3
#     return VSTAR_HTOLE32(src);
	.d2line		1093
.Llo1385:
	mr		r0,r3		# sourceValue=r0 sourceValue=r3
	se_srwi		r3,24		# sourceValue=r3 sourceValue=r3
.Llo1386:
	rlwimi		r3,r0,24,16,23		# sourceValue=r3 sourceValue=r0
.Llo1387:
	rlwimi		r3,r0,8,8,15		# sourceValue=r3 sourceValue=r0
	rlwimi		r3,r0,24,0,7		# sourceValue=r3 sourceValue=r0
# }
	.d2line		1094
	.d2epilogue_begin
	lwz		r0,20(r1)		# sourceValue=r0
.Llo1388:
	mtspr		lr,r0		# sourceValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
.Llo1389:
	blr
.Llo1390:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4892:
	.type		vstar_htole32_value,@function
	.size		vstar_htole32_value,.-vstar_htole32_value
# Number of nodes = 6

# Allocations for vstar_htole32_value
#	?a4		sourceValue
#	?a5		src
# FUNC(uint32, VSTAR_BITS_CODE) vstar_betoh32_value(CONST(uint32,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         1102,31
#$$ld
.L4899:

#$$bf	vstar_betoh32_value,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		vstar_betoh32_value
	.d2_cfa_start __cie
vstar_betoh32_value:
.Llo1391:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
	.d2prologue_end
# {
#     CONST(uint32, AUTOMATIC) src = (CONST(uint32, AUTOMATIC)) sourceValue;
	.d2line		1104
.Llo1392:
	mr		r3,r3		# src=r3 src=r3
#     return VSTAR_BETOH32(src);
	.d2line		1105
.Llo1393:
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
# }
	.d2line		1106
	.d2epilogue_begin
.Llo1394:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4900:
	.type		vstar_betoh32_value,@function
	.size		vstar_betoh32_value,.-vstar_betoh32_value
# Number of nodes = 5

# Allocations for vstar_betoh32_value
#	?a4		sourceValue
#	?a5		src
# FUNC(uint32, VSTAR_BITS_CODE) vstar_letoh32_value(CONST(uint32,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         1114,31
#$$ld
.L4907:

#$$bf	vstar_letoh32_value,interprocedural,nostackparams

# Regs written: r0,r1,r3,lr
	.globl		vstar_letoh32_value
	.d2_cfa_start __cie
vstar_letoh32_value:
.Llo1395:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# sourceValue=r0
	stw		r0,20(r1)		# sourceValue=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
	.d2prologue_end
# {
#     CONST(uint32, AUTOMATIC) src = (CONST(uint32, AUTOMATIC)) sourceValue;
	.d2line		1116
.Llo1396:
	mr		r3,r3		# src=r3 src=r3
#     return VSTAR_LETOH32(src);
	.d2line		1117
.Llo1397:
	mr		r0,r3		# sourceValue=r0 sourceValue=r3
	se_srwi		r3,24		# sourceValue=r3 sourceValue=r3
.Llo1398:
	rlwimi		r3,r0,24,16,23		# sourceValue=r3 sourceValue=r0
.Llo1399:
	rlwimi		r3,r0,8,8,15		# sourceValue=r3 sourceValue=r0
	rlwimi		r3,r0,24,0,7		# sourceValue=r3 sourceValue=r0
# }
	.d2line		1118
	.d2epilogue_begin
	lwz		r0,20(r1)		# sourceValue=r0
.Llo1400:
	mtspr		lr,r0		# sourceValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
.Llo1401:
	blr
.Llo1402:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4908:
	.type		vstar_letoh32_value,@function
	.size		vstar_letoh32_value,.-vstar_letoh32_value
# Number of nodes = 6

# Allocations for vstar_letoh32_value
#	?a4		sourceValue
#	?a5		src
# FUNC(void, VSTAR_BITS_CODE) vstar_hbuftobe32_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1127,29
#$$ld
.L4915:

#$$bf	vstar_hbuftobe32_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_hbuftobe32_sint
	.d2_cfa_start __cie
vstar_hbuftobe32_sint:
.Llo1403:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceBuffer=r4 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(sint32, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(sint32, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		1130
.Llo1405:
	mr		r5,r4		# src=r5 src=r4
#     *(sint32 * const)destinationBuffer = VSTAR_HTOBE32_SINT(*(const sint32 * const)src);
	.d2line		1131
	lwz		r4,0(r4)		# sourceBuffer=r4 sourceBuffer=r4
.Llo1406:
	stw		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		1132
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1404:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4916:
	.type		vstar_hbuftobe32_sint,@function
	.size		vstar_hbuftobe32_sint,.-vstar_hbuftobe32_sint
# Number of nodes = 8

# Allocations for vstar_hbuftobe32_sint
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_hbuftole32_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1141,29
#$$ld
.L4927:

#$$bf	vstar_hbuftole32_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_hbuftole32_sint
	.d2_cfa_start __cie
vstar_hbuftole32_sint:
.Llo1407:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceBuffer=r4 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(sint32, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(sint32, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		1144
.Llo1409:
	mr		r5,r4		# src=r5 src=r4
#     *(sint32 * const)destinationBuffer = VSTAR_HTOLE32_SINT(*(const sint32 * const)src);
	.d2line		1145
	lwz		r0,0(r4)		# sourceBuffer=r4
	rlwinm		r4,r0,8,24,31		# sourceBuffer=r4
.Llo1410:
	rlwimi		r4,r0,24,16,23		# sourceBuffer=r4
	rlwimi		r4,r0,8,8,15		# sourceBuffer=r4
	rlwimi		r4,r0,24,0,7		# sourceBuffer=r4
	stw		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		1146
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1408:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4928:
	.type		vstar_hbuftole32_sint,@function
	.size		vstar_hbuftole32_sint,.-vstar_hbuftole32_sint
# Number of nodes = 9

# Allocations for vstar_hbuftole32_sint
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_bebuftoh32_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1155,29
#$$ld
.L4936:

#$$bf	vstar_bebuftoh32_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_bebuftoh32_sint
	.d2_cfa_start __cie
vstar_bebuftoh32_sint:
.Llo1411:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceBuffer=r4 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(sint32, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(sint32, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		1158
.Llo1413:
	mr		r5,r4		# src=r5 src=r4
#     *(sint32 * const)destinationBuffer = VSTAR_BETOH32_SINT(*(const sint32 * const)src);
	.d2line		1159
	lwz		r4,0(r4)		# sourceBuffer=r4 sourceBuffer=r4
.Llo1414:
	stw		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		1160
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1412:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4937:
	.type		vstar_bebuftoh32_sint,@function
	.size		vstar_bebuftoh32_sint,.-vstar_bebuftoh32_sint
# Number of nodes = 8

# Allocations for vstar_bebuftoh32_sint
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_lebuftoh32_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1169,29
#$$ld
.L4945:

#$$bf	vstar_lebuftoh32_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_lebuftoh32_sint
	.d2_cfa_start __cie
vstar_lebuftoh32_sint:
.Llo1415:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceBuffer=r4 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(sint32, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(sint32, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		1172
.Llo1417:
	mr		r5,r4		# src=r5 src=r4
#     *(sint32 * const)destinationBuffer = VSTAR_LETOH32_SINT(*(const sint32 * const)src);
	.d2line		1173
	lwz		r0,0(r4)		# sourceBuffer=r4
	rlwinm		r4,r0,8,24,31		# sourceBuffer=r4
.Llo1418:
	rlwimi		r4,r0,24,16,23		# sourceBuffer=r4
	rlwimi		r4,r0,8,8,15		# sourceBuffer=r4
	rlwimi		r4,r0,24,0,7		# sourceBuffer=r4
	stw		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		1174
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1416:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4946:
	.type		vstar_lebuftoh32_sint,@function
	.size		vstar_lebuftoh32_sint,.-vstar_lebuftoh32_sint
# Number of nodes = 9

# Allocations for vstar_lebuftoh32_sint
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_htobe32_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1183,29
#$$ld
.L4954:

#$$bf	vstar_htobe32_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_htobe32_sint
	.d2_cfa_start __cie
vstar_htobe32_sint:
.Llo1419:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceValue=r4 sourceValue=r4
	.d2prologue_end
#                                    CONST(sint32,AUTOMATIC) sourceValue)
# {
#     CONST(sint32, AUTOMATIC) src = (CONST(sint32, AUTOMATIC)) sourceValue;
	.d2line		1186
.Llo1421:
	mr		r5,r4		# src=r5 src=r4
#     *(sint32 * const)destinationBuffer = VSTAR_HTOBE32_SINT(src);
	.d2line		1187
	stw		r4,0(r3)		# destinationBuffer=r3 sourceValue=r4
# }
	.d2line		1188
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1420:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4955:
	.type		vstar_htobe32_sint,@function
	.size		vstar_htobe32_sint,.-vstar_htobe32_sint
# Number of nodes = 7

# Allocations for vstar_htobe32_sint
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_htole32_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1197,29
#$$ld
.L4963:

#$$bf	vstar_htole32_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		vstar_htole32_sint
	.d2_cfa_start __cie
vstar_htole32_sint:
.Llo1422:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# sourceValue=r0
	stw		r0,20(r1)		# sourceValue=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceValue=r4 sourceValue=r4
	.d2prologue_end
#                                    CONST(sint32,AUTOMATIC) sourceValue)
# {
#     CONST(sint32, AUTOMATIC) src = (CONST(sint32, AUTOMATIC)) sourceValue;
	.d2line		1200
.Llo1424:
	mr		r4,r4		# src=r4 src=r4
#     *(sint32 * const)destinationBuffer = VSTAR_HTOLE32_SINT(src);
	.d2line		1201
.Llo1425:
	mr		r0,r4		# sourceValue=r0 sourceValue=r4
	se_srwi		r4,24		# sourceValue=r4 sourceValue=r4
.Llo1426:
	rlwimi		r4,r0,24,16,23		# sourceValue=r4 sourceValue=r0
.Llo1427:
	rlwimi		r4,r0,8,8,15		# sourceValue=r4 sourceValue=r0
	rlwimi		r4,r0,24,0,7		# sourceValue=r4 sourceValue=r0
	stw		r4,0(r3)		# destinationBuffer=r3 sourceValue=r4
# }
	.d2line		1202
	.d2epilogue_begin
	lwz		r0,20(r1)		# sourceValue=r0
.Llo1428:
	mtspr		lr,r0		# sourceValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1423:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4964:
	.type		vstar_htole32_sint,@function
	.size		vstar_htole32_sint,.-vstar_htole32_sint
# Number of nodes = 8

# Allocations for vstar_htole32_sint
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_betoh32_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1211,29
#$$ld
.L4972:

#$$bf	vstar_betoh32_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_betoh32_sint
	.d2_cfa_start __cie
vstar_betoh32_sint:
.Llo1429:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceValue=r4 sourceValue=r4
	.d2prologue_end
#                                    CONST(sint32,AUTOMATIC) sourceValue)
# {
#     CONST(sint32, AUTOMATIC) src = (CONST(sint32, AUTOMATIC)) sourceValue;
	.d2line		1214
.Llo1431:
	mr		r5,r4		# src=r5 src=r4
#     *(sint32 * const)destinationBuffer = VSTAR_BETOH32_SINT(src);
	.d2line		1215
	stw		r4,0(r3)		# destinationBuffer=r3 sourceValue=r4
# }
	.d2line		1216
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1430:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4973:
	.type		vstar_betoh32_sint,@function
	.size		vstar_betoh32_sint,.-vstar_betoh32_sint
# Number of nodes = 7

# Allocations for vstar_betoh32_sint
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_letoh32_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1225,29
#$$ld
.L4981:

#$$bf	vstar_letoh32_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,lr
	.globl		vstar_letoh32_sint
	.d2_cfa_start __cie
vstar_letoh32_sint:
.Llo1432:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# sourceValue=r0
	stw		r0,20(r1)		# sourceValue=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r4,r4		# sourceValue=r4 sourceValue=r4
	.d2prologue_end
#                                    CONST(sint32,AUTOMATIC) sourceValue)
# {
#     CONST(sint32, AUTOMATIC) src = (CONST(sint32, AUTOMATIC)) sourceValue;
	.d2line		1228
.Llo1434:
	mr		r4,r4		# src=r4 src=r4
#     *(sint32 * const)destinationBuffer = VSTAR_LETOH32_SINT(src);
	.d2line		1229
.Llo1435:
	mr		r0,r4		# sourceValue=r0 sourceValue=r4
	se_srwi		r4,24		# sourceValue=r4 sourceValue=r4
.Llo1436:
	rlwimi		r4,r0,24,16,23		# sourceValue=r4 sourceValue=r0
.Llo1437:
	rlwimi		r4,r0,8,8,15		# sourceValue=r4 sourceValue=r0
	rlwimi		r4,r0,24,0,7		# sourceValue=r4 sourceValue=r0
	stw		r4,0(r3)		# destinationBuffer=r3 sourceValue=r4
# }
	.d2line		1230
	.d2epilogue_begin
	lwz		r0,20(r1)		# sourceValue=r0
.Llo1438:
	mtspr		lr,r0		# sourceValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1433:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4982:
	.type		vstar_letoh32_sint,@function
	.size		vstar_letoh32_sint,.-vstar_letoh32_sint
# Number of nodes = 8

# Allocations for vstar_letoh32_sint
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a6		src
# FUNC(sint32, VSTAR_BITS_CODE) vstar_htobe32_value_sint(CONST(sint32,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         1238,31
#$$ld
.L4990:

#$$bf	vstar_htobe32_value_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		vstar_htobe32_value_sint
	.d2_cfa_start __cie
vstar_htobe32_value_sint:
.Llo1439:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
	.d2prologue_end
# {
#     CONST(sint32, AUTOMATIC) src = (CONST(sint32, AUTOMATIC)) sourceValue;
	.d2line		1240
.Llo1440:
	mr		r3,r3		# src=r3 src=r3
#     return VSTAR_HTOBE32_SINT(src);
	.d2line		1241
.Llo1441:
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
# }
	.d2line		1242
	.d2epilogue_begin
.Llo1442:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4991:
	.type		vstar_htobe32_value_sint,@function
	.size		vstar_htobe32_value_sint,.-vstar_htobe32_value_sint
# Number of nodes = 5

# Allocations for vstar_htobe32_value_sint
#	?a4		sourceValue
#	?a5		src
# FUNC(sint32, VSTAR_BITS_CODE) vstar_htole32_value_sint(CONST(sint32,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         1250,31
#$$ld
.L4998:

#$$bf	vstar_htole32_value_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,lr
	.globl		vstar_htole32_value_sint
	.d2_cfa_start __cie
vstar_htole32_value_sint:
.Llo1443:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# sourceValue=r0
	stw		r0,20(r1)		# sourceValue=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
	.d2prologue_end
# {
#     CONST(sint32, AUTOMATIC) src = (CONST(sint32, AUTOMATIC)) sourceValue;
	.d2line		1252
.Llo1444:
	mr		r3,r3		# src=r3 src=r3
#     return VSTAR_HTOLE32_SINT(src);
	.d2line		1253
.Llo1445:
	mr		r0,r3		# sourceValue=r0 sourceValue=r3
	se_srwi		r3,24		# sourceValue=r3 sourceValue=r3
.Llo1446:
	rlwimi		r3,r0,24,16,23		# sourceValue=r3 sourceValue=r0
.Llo1447:
	rlwimi		r3,r0,8,8,15		# sourceValue=r3 sourceValue=r0
	rlwimi		r3,r0,24,0,7		# sourceValue=r3 sourceValue=r0
# }
	.d2line		1254
	.d2epilogue_begin
	lwz		r0,20(r1)		# sourceValue=r0
.Llo1448:
	mtspr		lr,r0		# sourceValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
.Llo1449:
	blr
.Llo1450:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L4999:
	.type		vstar_htole32_value_sint,@function
	.size		vstar_htole32_value_sint,.-vstar_htole32_value_sint
# Number of nodes = 6

# Allocations for vstar_htole32_value_sint
#	?a4		sourceValue
#	?a5		src
# FUNC(sint32, VSTAR_BITS_CODE) vstar_betoh32_value_sint(CONST(sint32,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         1262,31
#$$ld
.L5006:

#$$bf	vstar_betoh32_value_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3
	.globl		vstar_betoh32_value_sint
	.d2_cfa_start __cie
vstar_betoh32_value_sint:
.Llo1451:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
	.d2prologue_end
# {
#     CONST(sint32, AUTOMATIC) src = (CONST(sint32, AUTOMATIC)) sourceValue;
	.d2line		1264
.Llo1452:
	mr		r3,r3		# src=r3 src=r3
#     return VSTAR_BETOH32_SINT(src);
	.d2line		1265
.Llo1453:
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
# }
	.d2line		1266
	.d2epilogue_begin
.Llo1454:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5007:
	.type		vstar_betoh32_value_sint,@function
	.size		vstar_betoh32_value_sint,.-vstar_betoh32_value_sint
# Number of nodes = 5

# Allocations for vstar_betoh32_value_sint
#	?a4		sourceValue
#	?a5		src
# FUNC(sint32, VSTAR_BITS_CODE) vstar_letoh32_value_sint(CONST(sint32,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         1274,31
#$$ld
.L5014:

#$$bf	vstar_letoh32_value_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,lr
	.globl		vstar_letoh32_value_sint
	.d2_cfa_start __cie
vstar_letoh32_value_sint:
.Llo1455:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr		# sourceValue=r0
	stw		r0,20(r1)		# sourceValue=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue=r3 sourceValue=r3
	.d2prologue_end
# {
#     CONST(sint32, AUTOMATIC) src = (CONST(sint32, AUTOMATIC)) sourceValue;
	.d2line		1276
.Llo1456:
	mr		r3,r3		# src=r3 src=r3
#     return VSTAR_LETOH32_SINT(src);
	.d2line		1277
.Llo1457:
	mr		r0,r3		# sourceValue=r0 sourceValue=r3
	se_srwi		r3,24		# sourceValue=r3 sourceValue=r3
.Llo1458:
	rlwimi		r3,r0,24,16,23		# sourceValue=r3 sourceValue=r0
.Llo1459:
	rlwimi		r3,r0,8,8,15		# sourceValue=r3 sourceValue=r0
	rlwimi		r3,r0,24,0,7		# sourceValue=r3 sourceValue=r0
# }
	.d2line		1278
	.d2epilogue_begin
	lwz		r0,20(r1)		# sourceValue=r0
.Llo1460:
	mtspr		lr,r0		# sourceValue=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
.Llo1461:
	blr
.Llo1462:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5015:
	.type		vstar_letoh32_value_sint,@function
	.size		vstar_letoh32_value_sint,.-vstar_letoh32_value_sint
# Number of nodes = 6

# Allocations for vstar_letoh32_value_sint
#	?a4		sourceValue
#	?a5		src
# FUNC(void, VSTAR_BITS_CODE) vstar_hbuftobe64(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1291,29
#$$ld
.L5022:

#$$bf	vstar_hbuftobe64,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_hbuftobe64
	.d2_cfa_start __cie
vstar_hbuftobe64:
.Llo1463:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r4		# sourceBuffer=r5 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(uint64, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(uint64, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		1294
.Llo1465:
	mr		r4,r5		# src=r4 src=r5
#     *(uint64 * const)destinationBuffer = VSTAR_HTOBE64(*(const uint64 * const)src);
	.d2line		1295
.Llo1466:
	lwz		r4,0(r5)		# sourceBuffer=r4 sourceBuffer=r5
	lwz		r5,4(r5)		# sourceBuffer=r5 sourceBuffer=r5
.Llo1467:
	stw		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
.Llo1468:
	stw		r5,4(r3)		# destinationBuffer=r3 sourceBuffer=r5
# }
	.d2line		1296
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1464:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5023:
	.type		vstar_hbuftobe64,@function
	.size		vstar_hbuftobe64,.-vstar_hbuftobe64
# Number of nodes = 8

# Allocations for vstar_hbuftobe64
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_hbuftole64(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1305,29
#$$ld
.L5036:

#$$bf	vstar_hbuftole64,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,lr
	.globl		vstar_hbuftole64
	.d2_cfa_start __cie
vstar_hbuftole64:
.Llo1469:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r4		# sourceBuffer=r5 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(uint64, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(uint64, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		1308
.Llo1471:
	mr		r4,r5		# src=r4 src=r5
#     *(uint64 * const)destinationBuffer = VSTAR_HTOLE64(*(const uint64 * const)src);
	.d2line		1309
.Llo1472:
	lwz		r4,0(r5)		# sourceBuffer=r4 sourceBuffer=r5
	lwz		r31,4(r5)		# sourceBuffer=r5
	rlwinm		r5,r31,24,0,7		# sourceBuffer=r5
.Llo1473:
	rlwinm		r6,r31,8,8,15
.Llo1474:
	or		r5,r5,r6		# sourceBuffer=r5 sourceBuffer=r5
	rlwinm		r6,r31,0,8,15
	diab.li		r7,0
	rlwimi		r7,r6,24,8,31
	or		r5,r5,r7		# sourceBuffer=r5 sourceBuffer=r5
	rlwinm		r6,r31,0,0,7
	diab.li		r7,0
	rlwimi		r7,r6,8,24,31
	or		r7,r7,r5		# sourceBuffer=r5
	rlwinm		r5,r31,24,8,31		# sourceBuffer=r5
	rlwimi		r5,r4,24,0,7		# sourceBuffer=r5 sourceBuffer=r4
	rlwinm		r5,r5,0,0,7		# sourceBuffer=r5 sourceBuffer=r5
	se_srwi		r31,24
	rlwimi		r31,r4,8,0,23		# sourceBuffer=r4
	rlwinm		r31,r31,0,8,15
	or		r5,r5,r31		# sourceBuffer=r5 sourceBuffer=r5
	rlwinm		r6,r4,24,16,23		# sourceBuffer=r4
	or		r5,r5,r6		# sourceBuffer=r5 sourceBuffer=r5
	se_srwi		r4,24		# sourceBuffer=r4 sourceBuffer=r4
	stw		r7,0(r3)		# destinationBuffer=r3
	or		r4,r4,r5		# sourceBuffer=r4 sourceBuffer=r4 sourceBuffer=r5
	stw		r4,4(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		1310
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1470:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5037:
	.type		vstar_hbuftole64,@function
	.size		vstar_hbuftole64,.-vstar_hbuftole64
# Number of nodes = 59

# Allocations for vstar_hbuftole64
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_bebuftoh64(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1319,29
#$$ld
.L5045:

#$$bf	vstar_bebuftoh64,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_bebuftoh64
	.d2_cfa_start __cie
vstar_bebuftoh64:
.Llo1475:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r4		# sourceBuffer=r5 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(uint64, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(uint64, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		1322
.Llo1477:
	mr		r4,r5		# src=r4 src=r5
#     *(uint64 * const)destinationBuffer = VSTAR_BETOH64(*(const uint64 * const)src);
	.d2line		1323
.Llo1478:
	lwz		r4,0(r5)		# sourceBuffer=r4 sourceBuffer=r5
	lwz		r5,4(r5)		# sourceBuffer=r5 sourceBuffer=r5
.Llo1479:
	stw		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
.Llo1480:
	stw		r5,4(r3)		# destinationBuffer=r3 sourceBuffer=r5
# }
	.d2line		1324
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1476:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5046:
	.type		vstar_bebuftoh64,@function
	.size		vstar_bebuftoh64,.-vstar_bebuftoh64
# Number of nodes = 8

# Allocations for vstar_bebuftoh64
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_lebuftoh64(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1333,29
#$$ld
.L5054:

#$$bf	vstar_lebuftoh64,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,lr
	.globl		vstar_lebuftoh64
	.d2_cfa_start __cie
vstar_lebuftoh64:
.Llo1481:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r4		# sourceBuffer=r5 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(uint64, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(uint64, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		1336
.Llo1483:
	mr		r4,r5		# src=r4 src=r5
#     *(uint64 * const)destinationBuffer = VSTAR_LETOH64(*(const uint64 * const)src);
	.d2line		1337
.Llo1484:
	lwz		r4,0(r5)		# sourceBuffer=r4 sourceBuffer=r5
	lwz		r31,4(r5)		# sourceBuffer=r5
	rlwinm		r5,r31,24,0,7		# sourceBuffer=r5
.Llo1485:
	rlwinm		r6,r31,8,8,15
.Llo1486:
	or		r5,r5,r6		# sourceBuffer=r5 sourceBuffer=r5
	rlwinm		r6,r31,0,8,15
	diab.li		r7,0
	rlwimi		r7,r6,24,8,31
	or		r5,r5,r7		# sourceBuffer=r5 sourceBuffer=r5
	rlwinm		r6,r31,0,0,7
	diab.li		r7,0
	rlwimi		r7,r6,8,24,31
	or		r7,r7,r5		# sourceBuffer=r5
	rlwinm		r5,r31,24,8,31		# sourceBuffer=r5
	rlwimi		r5,r4,24,0,7		# sourceBuffer=r5 sourceBuffer=r4
	rlwinm		r5,r5,0,0,7		# sourceBuffer=r5 sourceBuffer=r5
	se_srwi		r31,24
	rlwimi		r31,r4,8,0,23		# sourceBuffer=r4
	rlwinm		r31,r31,0,8,15
	or		r5,r5,r31		# sourceBuffer=r5 sourceBuffer=r5
	rlwinm		r6,r4,24,16,23		# sourceBuffer=r4
	or		r5,r5,r6		# sourceBuffer=r5 sourceBuffer=r5
	se_srwi		r4,24		# sourceBuffer=r4 sourceBuffer=r4
	stw		r7,0(r3)		# destinationBuffer=r3
	or		r4,r4,r5		# sourceBuffer=r4 sourceBuffer=r4 sourceBuffer=r5
	stw		r4,4(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		1338
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1482:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5055:
	.type		vstar_lebuftoh64,@function
	.size		vstar_lebuftoh64,.-vstar_lebuftoh64
# Number of nodes = 59

# Allocations for vstar_lebuftoh64
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_htobe64(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1347,29
#$$ld
.L5063:

#$$bf	vstar_htobe64,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,lr
	.globl		vstar_htobe64
	.d2_cfa_start __cie
vstar_htobe64:
.Llo1487:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r5		# sourceValue.msb=r5 sourceValue.msb=r5
.Llo1489:
	mr		r6,r6		# sourceValue.lsb=r6 sourceValue.lsb=r6
	.d2prologue_end
#                                    CONST(uint64,AUTOMATIC) sourceValue)
# {
#     CONST(uint64, AUTOMATIC) src = (CONST(uint64, AUTOMATIC)) sourceValue;
	.d2line		1350
.Llo1490:
	mr		r4,r6		# src.lsb=r4 src.lsb=r6
	mr		r4,r5		# src.msb=r4 src.msb=r5
#     *(uint64 * const)destinationBuffer = VSTAR_HTOBE64(src);
	.d2line		1351
	stw		r5,0(r3)		# destinationBuffer=r3 sourceValue.msb=r5
	stw		r6,4(r3)		# destinationBuffer=r3 sourceValue.lsb=r6
# }
	.d2line		1352
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1488:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5064:
	.type		vstar_htobe64,@function
	.size		vstar_htobe64,.-vstar_htobe64
# Number of nodes = 7

# Allocations for vstar_htobe64
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a7		src
# FUNC(void, VSTAR_BITS_CODE) vstar_htole64(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1361,29
#$$ld
.L5078:

#$$bf	vstar_htole64,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,lr
	.globl		vstar_htole64
	.d2_cfa_start __cie
vstar_htole64:
.Llo1491:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r5		# sourceValue.msb=r5 sourceValue.msb=r5
.Llo1494:
	mr		r6,r6		# sourceValue.lsb=r6 sourceValue.lsb=r6
	.d2prologue_end
#                                    CONST(uint64,AUTOMATIC) sourceValue)
# {
#     CONST(uint64, AUTOMATIC) src = (CONST(uint64, AUTOMATIC)) sourceValue;
	.d2line		1364
.Llo1493:
	mr		r30,r6		# src.lsb=r30 src.lsb=r6
.Llo1495:
	mr		r4,r5		# src.msb=r4 src.msb=r5
#     *(uint64 * const)destinationBuffer = VSTAR_HTOLE64(src);
	.d2line		1365
.Llo1496:
	se_slwi		r6,24		# src.lsb=r6 src.lsb=r6
	rlwinm		r7,r30,8,8,15		# src.lsb=r30
	or		r6,r6,r7		# src.lsb=r6 src.lsb=r6
	rlwinm		r7,r30,0,8,15		# src.lsb=r30
	diab.li		r31,0
	rlwimi		r31,r7,24,8,31
	or		r6,r6,r31		# src.lsb=r6 src.lsb=r6
	rlwinm		r7,r30,0,0,7		# src.lsb=r30
	diab.li		r31,0
	rlwimi		r31,r7,8,24,31
	or		r31,r31,r6		# src.lsb=r6
	rlwinm		r7,r30,24,8,31		# src.lsb=r30
	rlwimi		r7,r5,24,0,7		# sourceValue.msb=r5
	rlwinm		r6,r4,24,8,31		# src.lsb=r6 src.msb=r4
	rlwinm		r7,r7,0,0,7
	se_srwi		r30,24		# src.lsb=r30 src.lsb=r30
	rlwimi		r30,r5,8,0,23		# src.lsb=r30 sourceValue.msb=r5
	se_srwi		r4,24		# src.msb=r4 src.msb=r4
	rlwinm		r30,r30,0,8,15		# src.lsb=r30 src.lsb=r30
	or		r7,r7,r30		# src.lsb=r30
	rlwinm		r6,r6,0,16,23		# src.lsb=r6 src.lsb=r6
	or		r7,r7,r6		# src.lsb=r6
	or		r4,r4,r7		# src.msb=r4 src.msb=r4
	stw		r31,0(r3)		# destinationBuffer=r3
	stw		r4,4(r3)		# destinationBuffer=r3 src.msb=r4
# }
	.d2line		1366
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1492:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5079:
	.type		vstar_htole64,@function
	.size		vstar_htole64,.-vstar_htole64
# Number of nodes = 51

# Allocations for vstar_htole64
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a7		src
# FUNC(void, VSTAR_BITS_CODE) vstar_betoh64(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1375,29
#$$ld
.L5093:

#$$bf	vstar_betoh64,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,lr
	.globl		vstar_betoh64
	.d2_cfa_start __cie
vstar_betoh64:
.Llo1497:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r5		# sourceValue.msb=r5 sourceValue.msb=r5
.Llo1499:
	mr		r6,r6		# sourceValue.lsb=r6 sourceValue.lsb=r6
	.d2prologue_end
#                                    CONST(uint64,AUTOMATIC) sourceValue)
# {
#     CONST(uint64, AUTOMATIC) src = (CONST(uint64, AUTOMATIC)) sourceValue;
	.d2line		1378
.Llo1500:
	mr		r4,r6		# src.lsb=r4 src.lsb=r6
	mr		r4,r5		# src.msb=r4 src.msb=r5
#     *(uint64 * const)destinationBuffer = VSTAR_BETOH64(src);
	.d2line		1379
	stw		r5,0(r3)		# destinationBuffer=r3 sourceValue.msb=r5
	stw		r6,4(r3)		# destinationBuffer=r3 sourceValue.lsb=r6
# }
	.d2line		1380
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1498:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5094:
	.type		vstar_betoh64,@function
	.size		vstar_betoh64,.-vstar_betoh64
# Number of nodes = 7

# Allocations for vstar_betoh64
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a7		src
# FUNC(void, VSTAR_BITS_CODE) vstar_letoh64(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1389,29
#$$ld
.L5108:

#$$bf	vstar_letoh64,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,lr
	.globl		vstar_letoh64
	.d2_cfa_start __cie
vstar_letoh64:
.Llo1501:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r5		# sourceValue.msb=r5 sourceValue.msb=r5
.Llo1504:
	mr		r6,r6		# sourceValue.lsb=r6 sourceValue.lsb=r6
	.d2prologue_end
#                                    CONST(uint64,AUTOMATIC) sourceValue)
# {
#     CONST(uint64, AUTOMATIC) src = (CONST(uint64, AUTOMATIC)) sourceValue;
	.d2line		1392
.Llo1503:
	mr		r30,r6		# src.lsb=r30 src.lsb=r6
.Llo1505:
	mr		r4,r5		# src.msb=r4 src.msb=r5
#     *(uint64 * const)destinationBuffer = VSTAR_LETOH64(src);
	.d2line		1393
.Llo1506:
	se_slwi		r6,24		# src.lsb=r6 src.lsb=r6
	rlwinm		r7,r30,8,8,15		# src.lsb=r30
	or		r6,r6,r7		# src.lsb=r6 src.lsb=r6
	rlwinm		r7,r30,0,8,15		# src.lsb=r30
	diab.li		r31,0
	rlwimi		r31,r7,24,8,31
	or		r6,r6,r31		# src.lsb=r6 src.lsb=r6
	rlwinm		r7,r30,0,0,7		# src.lsb=r30
	diab.li		r31,0
	rlwimi		r31,r7,8,24,31
	or		r31,r31,r6		# src.lsb=r6
	rlwinm		r7,r30,24,8,31		# src.lsb=r30
	rlwimi		r7,r5,24,0,7		# sourceValue.msb=r5
	rlwinm		r6,r4,24,8,31		# src.lsb=r6 src.msb=r4
	rlwinm		r7,r7,0,0,7
	se_srwi		r30,24		# src.lsb=r30 src.lsb=r30
	rlwimi		r30,r5,8,0,23		# src.lsb=r30 sourceValue.msb=r5
	se_srwi		r4,24		# src.msb=r4 src.msb=r4
	rlwinm		r30,r30,0,8,15		# src.lsb=r30 src.lsb=r30
	or		r7,r7,r30		# src.lsb=r30
	rlwinm		r6,r6,0,16,23		# src.lsb=r6 src.lsb=r6
	or		r7,r7,r6		# src.lsb=r6
	or		r4,r4,r7		# src.msb=r4 src.msb=r4
	stw		r31,0(r3)		# destinationBuffer=r3
	stw		r4,4(r3)		# destinationBuffer=r3 src.msb=r4
# }
	.d2line		1394
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1502:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5109:
	.type		vstar_letoh64,@function
	.size		vstar_letoh64,.-vstar_letoh64
# Number of nodes = 51

# Allocations for vstar_letoh64
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a7		src
# FUNC(uint64, VSTAR_BITS_CODE) vstar_htobe64_value(CONST(uint64,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         1402,31
#$$ld
.L5123:

#$$bf	vstar_htobe64_value,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		vstar_htobe64_value
	.d2_cfa_start __cie
vstar_htobe64_value:
.Llo1507:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue.msb=r3 sourceValue.msb=r3
.Llo1508:
	mr		r4,r4		# sourceValue.lsb=r4 sourceValue.lsb=r4
	.d2prologue_end
# {
#     CONST(uint64, AUTOMATIC) src = (CONST(uint64, AUTOMATIC)) sourceValue;
	.d2line		1404
.Llo1511:
	mr		r4,r4		# src.lsb=r4 src.lsb=r4
.Llo1512:
	mr		r3,r3		# src.msb=r3 src.msb=r3
#     return VSTAR_HTOBE64(src);
	.d2line		1405
.Llo1509:
	mr		r4,r4		# sourceValue.lsb=r4 sourceValue.lsb=r4
.Llo1513:
	mr		r3,r3		# sourceValue.msb=r3 sourceValue.msb=r3
# }
	.d2line		1406
	.d2epilogue_begin
.Llo1510:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5124:
	.type		vstar_htobe64_value,@function
	.size		vstar_htobe64_value,.-vstar_htobe64_value
# Number of nodes = 5

# Allocations for vstar_htobe64_value
#	?a4		sourceValue
#	?a6		src
# FUNC(uint64, VSTAR_BITS_CODE) vstar_htole64_value(CONST(uint64,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         1414,31
#$$ld
.L5137:

#$$bf	vstar_htole64_value,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31
	.globl		vstar_htole64_value
	.d2_cfa_start __cie
vstar_htole64_value:
.Llo1514:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# sourceValue.msb=r5 sourceValue.msb=r3
.Llo1515:
	mr		r4,r4		# sourceValue.lsb=r4 sourceValue.lsb=r4
	.d2prologue_end
# {
#     CONST(uint64, AUTOMATIC) src = (CONST(uint64, AUTOMATIC)) sourceValue;
	.d2line		1416
.Llo1516:
	mr		r6,r4		# src.lsb=r6 src.lsb=r4
.Llo1520:
	mr		r4,r5		# src.msb=r4 src.msb=r5
#     return VSTAR_HTOLE64(src);
	.d2line		1417
.Llo1521:
	rlwinm		r3,r6,24,0,7		# src.lsb=r6
	rlwinm		r7,r6,8,8,15		# src.lsb=r6
	or		r3,r3,r7
	rlwinm		r7,r6,0,8,15		# src.lsb=r6
	diab.li		r31,0
	rlwimi		r31,r7,24,8,31
	or		r3,r3,r31
	rlwinm		r7,r6,0,0,7		# src.lsb=r6
	diab.li		r31,0
	rlwimi		r31,r7,8,24,31
	or		r3,r3,r31
	rlwinm		r31,r6,24,8,31		# src.lsb=r6
	rlwimi		r31,r5,24,0,7		# sourceValue.msb=r5
	rlwinm		r31,r31,0,0,7
	se_srwi		r6,24		# src.lsb=r6 src.lsb=r6
	rlwimi		r6,r5,8,0,23		# src.lsb=r6 sourceValue.msb=r5
	se_srwi		r5,24		# src.msb=r5 src.msb=r5
.Llo1517:
	rlwinm		r6,r6,0,8,15		# src.lsb=r6 src.lsb=r6
.Llo1518:
	or		r31,r31,r6		# src.lsb=r6
	rlwinm		r7,r4,24,16,23		# src.msb=r4
	or		r4,r31,r7		# src.msb=r4
	or		r4,r4,r5		# src.msb=r4 src.msb=r4 src.msb=r5
# }
	.d2line		1418
	.d2epilogue_begin
.Llo1519:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1522:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5138:
	.type		vstar_htole64_value,@function
	.size		vstar_htole64_value,.-vstar_htole64_value
# Number of nodes = 49

# Allocations for vstar_htole64_value
#	?a4		sourceValue
#	?a6		src
# FUNC(uint64, VSTAR_BITS_CODE) vstar_betoh64_value(CONST(uint64,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         1426,31
#$$ld
.L5151:

#$$bf	vstar_betoh64_value,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		vstar_betoh64_value
	.d2_cfa_start __cie
vstar_betoh64_value:
.Llo1523:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue.msb=r3 sourceValue.msb=r3
.Llo1524:
	mr		r4,r4		# sourceValue.lsb=r4 sourceValue.lsb=r4
	.d2prologue_end
# {
#     CONST(uint64, AUTOMATIC) src = (CONST(uint64, AUTOMATIC)) sourceValue;
	.d2line		1428
.Llo1527:
	mr		r4,r4		# src.lsb=r4 src.lsb=r4
.Llo1528:
	mr		r3,r3		# src.msb=r3 src.msb=r3
#     return VSTAR_BETOH64(src);
	.d2line		1429
.Llo1525:
	mr		r4,r4		# sourceValue.lsb=r4 sourceValue.lsb=r4
.Llo1529:
	mr		r3,r3		# sourceValue.msb=r3 sourceValue.msb=r3
# }
	.d2line		1430
	.d2epilogue_begin
.Llo1526:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5152:
	.type		vstar_betoh64_value,@function
	.size		vstar_betoh64_value,.-vstar_betoh64_value
# Number of nodes = 5

# Allocations for vstar_betoh64_value
#	?a4		sourceValue
#	?a6		src
# FUNC(uint64, VSTAR_BITS_CODE) vstar_letoh64_value(CONST(uint64,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         1438,31
#$$ld
.L5165:

#$$bf	vstar_letoh64_value,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31
	.globl		vstar_letoh64_value
	.d2_cfa_start __cie
vstar_letoh64_value:
.Llo1530:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# sourceValue.msb=r5 sourceValue.msb=r3
.Llo1531:
	mr		r4,r4		# sourceValue.lsb=r4 sourceValue.lsb=r4
	.d2prologue_end
# {
#     CONST(uint64, AUTOMATIC) src = (CONST(uint64, AUTOMATIC)) sourceValue;
	.d2line		1440
.Llo1532:
	mr		r6,r4		# src.lsb=r6 src.lsb=r4
.Llo1536:
	mr		r4,r5		# src.msb=r4 src.msb=r5
#     return VSTAR_LETOH64(src);
	.d2line		1441
.Llo1537:
	rlwinm		r3,r6,24,0,7		# src.lsb=r6
	rlwinm		r7,r6,8,8,15		# src.lsb=r6
	or		r3,r3,r7
	rlwinm		r7,r6,0,8,15		# src.lsb=r6
	diab.li		r31,0
	rlwimi		r31,r7,24,8,31
	or		r3,r3,r31
	rlwinm		r7,r6,0,0,7		# src.lsb=r6
	diab.li		r31,0
	rlwimi		r31,r7,8,24,31
	or		r3,r3,r31
	rlwinm		r31,r6,24,8,31		# src.lsb=r6
	rlwimi		r31,r5,24,0,7		# sourceValue.msb=r5
	rlwinm		r31,r31,0,0,7
	se_srwi		r6,24		# src.lsb=r6 src.lsb=r6
	rlwimi		r6,r5,8,0,23		# src.lsb=r6 sourceValue.msb=r5
	se_srwi		r5,24		# src.msb=r5 src.msb=r5
.Llo1533:
	rlwinm		r6,r6,0,8,15		# src.lsb=r6 src.lsb=r6
.Llo1534:
	or		r31,r31,r6		# src.lsb=r6
	rlwinm		r7,r4,24,16,23		# src.msb=r4
	or		r4,r31,r7		# src.msb=r4
	or		r4,r4,r5		# src.msb=r4 src.msb=r4 src.msb=r5
# }
	.d2line		1442
	.d2epilogue_begin
.Llo1535:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1538:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5166:
	.type		vstar_letoh64_value,@function
	.size		vstar_letoh64_value,.-vstar_letoh64_value
# Number of nodes = 49

# Allocations for vstar_letoh64_value
#	?a4		sourceValue
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_hbuftobe64_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1451,29
#$$ld
.L5179:

#$$bf	vstar_hbuftobe64_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_hbuftobe64_sint
	.d2_cfa_start __cie
vstar_hbuftobe64_sint:
.Llo1539:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r4		# sourceBuffer=r5 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(sint64, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(sint64, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		1454
.Llo1541:
	mr		r4,r5		# src=r4 src=r5
#     *(sint64 * const)destinationBuffer = VSTAR_HTOBE64_SINT(*(const sint64 * const)src);
	.d2line		1455
.Llo1542:
	lwz		r4,0(r5)		# sourceBuffer=r4 sourceBuffer=r5
	lwz		r5,4(r5)		# sourceBuffer=r5 sourceBuffer=r5
.Llo1543:
	stw		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
.Llo1544:
	stw		r5,4(r3)		# destinationBuffer=r3 sourceBuffer=r5
# }
	.d2line		1456
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1540:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5180:
	.type		vstar_hbuftobe64_sint,@function
	.size		vstar_hbuftobe64_sint,.-vstar_hbuftobe64_sint
# Number of nodes = 8

# Allocations for vstar_hbuftobe64_sint
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_hbuftole64_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1465,29
#$$ld
.L5193:

#$$bf	vstar_hbuftole64_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,lr
	.globl		vstar_hbuftole64_sint
	.d2_cfa_start __cie
vstar_hbuftole64_sint:
.Llo1545:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r4		# sourceBuffer=r5 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(sint64, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(sint64, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		1468
.Llo1547:
	mr		r4,r5		# src=r4 src=r5
#     *(sint64 * const)destinationBuffer = VSTAR_HTOLE64_SINT(*(const sint64 * const)src);
	.d2line		1469
.Llo1548:
	lwz		r4,0(r5)		# sourceBuffer=r4 sourceBuffer=r5
	lwz		r31,4(r5)		# sourceBuffer=r5
	rlwinm		r5,r31,24,0,7		# sourceBuffer=r5
.Llo1549:
	rlwinm		r6,r31,8,8,15
.Llo1550:
	or		r5,r5,r6		# sourceBuffer=r5 sourceBuffer=r5
	rlwinm		r6,r31,0,8,15
	diab.li		r7,0
	rlwimi		r7,r6,24,8,31
	or		r5,r5,r7		# sourceBuffer=r5 sourceBuffer=r5
	rlwinm		r6,r31,0,0,7
	diab.li		r7,0
	rlwimi		r7,r6,8,24,31
	or		r7,r7,r5		# sourceBuffer=r5
	rlwinm		r5,r31,24,8,31		# sourceBuffer=r5
	rlwimi		r5,r4,24,0,7		# sourceBuffer=r5 sourceBuffer=r4
	rlwinm		r5,r5,0,0,7		# sourceBuffer=r5 sourceBuffer=r5
	se_srwi		r31,24
	rlwimi		r31,r4,8,0,23		# sourceBuffer=r4
	rlwinm		r31,r31,0,8,15
	or		r5,r5,r31		# sourceBuffer=r5 sourceBuffer=r5
	rlwinm		r6,r4,24,16,23		# sourceBuffer=r4
	or		r5,r5,r6		# sourceBuffer=r5 sourceBuffer=r5
	se_srwi		r4,24		# sourceBuffer=r4 sourceBuffer=r4
	stw		r7,0(r3)		# destinationBuffer=r3
	or		r4,r4,r5		# sourceBuffer=r4 sourceBuffer=r4 sourceBuffer=r5
	stw		r4,4(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		1470
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1546:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5194:
	.type		vstar_hbuftole64_sint,@function
	.size		vstar_hbuftole64_sint,.-vstar_hbuftole64_sint
# Number of nodes = 59

# Allocations for vstar_hbuftole64_sint
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_bebuftoh64_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1479,29
#$$ld
.L5202:

#$$bf	vstar_bebuftoh64_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		vstar_bebuftoh64_sint
	.d2_cfa_start __cie
vstar_bebuftoh64_sint:
.Llo1551:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r4		# sourceBuffer=r5 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(sint64, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(sint64, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		1482
.Llo1553:
	mr		r4,r5		# src=r4 src=r5
#     *(sint64 * const)destinationBuffer = VSTAR_BETOH64_SINT(*(const sint64 * const)src);
	.d2line		1483
.Llo1554:
	lwz		r4,0(r5)		# sourceBuffer=r4 sourceBuffer=r5
	lwz		r5,4(r5)		# sourceBuffer=r5 sourceBuffer=r5
.Llo1555:
	stw		r4,0(r3)		# destinationBuffer=r3 sourceBuffer=r4
.Llo1556:
	stw		r5,4(r3)		# destinationBuffer=r3 sourceBuffer=r5
# }
	.d2line		1484
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1552:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5203:
	.type		vstar_bebuftoh64_sint,@function
	.size		vstar_bebuftoh64_sint,.-vstar_bebuftoh64_sint
# Number of nodes = 8

# Allocations for vstar_bebuftoh64_sint
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_lebuftoh64_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1493,29
#$$ld
.L5211:

#$$bf	vstar_lebuftoh64_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31,lr
	.globl		vstar_lebuftoh64_sint
	.d2_cfa_start __cie
vstar_lebuftoh64_sint:
.Llo1557:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r4		# sourceBuffer=r5 sourceBuffer=r4
	.d2prologue_end
#                                    CONSTP2CONST(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) sourceBuffer)
# {
#     CONSTP2CONST(sint64, AUTOMATIC, AUTOMATIC) src = (CONSTP2CONST(sint64, AUTOMATIC, AUTOMATIC))sourceBuffer;
	.d2line		1496
.Llo1559:
	mr		r4,r5		# src=r4 src=r5
#     *(sint64 * const)destinationBuffer = VSTAR_LETOH64_SINT(*(const sint64 * const)src);
	.d2line		1497
.Llo1560:
	lwz		r4,0(r5)		# sourceBuffer=r4 sourceBuffer=r5
	lwz		r31,4(r5)		# sourceBuffer=r5
	rlwinm		r5,r31,24,0,7		# sourceBuffer=r5
.Llo1561:
	rlwinm		r6,r31,8,8,15
.Llo1562:
	or		r5,r5,r6		# sourceBuffer=r5 sourceBuffer=r5
	rlwinm		r6,r31,0,8,15
	diab.li		r7,0
	rlwimi		r7,r6,24,8,31
	or		r5,r5,r7		# sourceBuffer=r5 sourceBuffer=r5
	rlwinm		r6,r31,0,0,7
	diab.li		r7,0
	rlwimi		r7,r6,8,24,31
	or		r7,r7,r5		# sourceBuffer=r5
	rlwinm		r5,r31,24,8,31		# sourceBuffer=r5
	rlwimi		r5,r4,24,0,7		# sourceBuffer=r5 sourceBuffer=r4
	rlwinm		r5,r5,0,0,7		# sourceBuffer=r5 sourceBuffer=r5
	se_srwi		r31,24
	rlwimi		r31,r4,8,0,23		# sourceBuffer=r4
	rlwinm		r31,r31,0,8,15
	or		r5,r5,r31		# sourceBuffer=r5 sourceBuffer=r5
	rlwinm		r6,r4,24,16,23		# sourceBuffer=r4
	or		r5,r5,r6		# sourceBuffer=r5 sourceBuffer=r5
	se_srwi		r4,24		# sourceBuffer=r4 sourceBuffer=r4
	stw		r7,0(r3)		# destinationBuffer=r3
	or		r4,r4,r5		# sourceBuffer=r4 sourceBuffer=r4 sourceBuffer=r5
	stw		r4,4(r3)		# destinationBuffer=r3 sourceBuffer=r4
# }
	.d2line		1498
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1558:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5212:
	.type		vstar_lebuftoh64_sint,@function
	.size		vstar_lebuftoh64_sint,.-vstar_lebuftoh64_sint
# Number of nodes = 59

# Allocations for vstar_lebuftoh64_sint
#	?a4		destinationBuffer
#	?a5		sourceBuffer
#	?a6		src
# FUNC(void, VSTAR_BITS_CODE) vstar_htobe64_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1507,29
#$$ld
.L5220:

#$$bf	vstar_htobe64_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,lr
	.globl		vstar_htobe64_sint
	.d2_cfa_start __cie
vstar_htobe64_sint:
.Llo1563:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r5		# sourceValue.msb=r5 sourceValue.msb=r5
.Llo1565:
	mr		r6,r6		# sourceValue.lsb=r6 sourceValue.lsb=r6
	.d2prologue_end
#                                    CONST(sint64,AUTOMATIC) sourceValue)
# {
#     CONST(sint64, AUTOMATIC) src = (CONST(sint64, AUTOMATIC)) sourceValue;
	.d2line		1510
.Llo1566:
	mr		r4,r6		# src.lsb=r4 src.lsb=r6
	mr		r4,r5		# src.msb=r4 src.msb=r5
#     *(sint64 * const)destinationBuffer = VSTAR_HTOBE64_SINT(src);
	.d2line		1511
	stw		r5,0(r3)		# destinationBuffer=r3 sourceValue.msb=r5
	stw		r6,4(r3)		# destinationBuffer=r3 sourceValue.lsb=r6
# }
	.d2line		1512
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1564:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5221:
	.type		vstar_htobe64_sint,@function
	.size		vstar_htobe64_sint,.-vstar_htobe64_sint
# Number of nodes = 7

# Allocations for vstar_htobe64_sint
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a7		src
# FUNC(void, VSTAR_BITS_CODE) vstar_htole64_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1521,29
#$$ld
.L5235:

#$$bf	vstar_htole64_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,lr
	.globl		vstar_htole64_sint
	.d2_cfa_start __cie
vstar_htole64_sint:
.Llo1567:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r5		# sourceValue.msb=r5 sourceValue.msb=r5
.Llo1570:
	mr		r6,r6		# sourceValue.lsb=r6 sourceValue.lsb=r6
	.d2prologue_end
#                                    CONST(sint64,AUTOMATIC) sourceValue)
# {
#     CONST(sint64, AUTOMATIC) src = (CONST(sint64, AUTOMATIC)) sourceValue;
	.d2line		1524
.Llo1569:
	mr		r30,r6		# src.lsb=r30 src.lsb=r6
.Llo1571:
	mr		r4,r5		# src.msb=r4 src.msb=r5
#     *(sint64 * const)destinationBuffer = VSTAR_HTOLE64_SINT(src);
	.d2line		1525
.Llo1572:
	se_slwi		r6,24		# src.lsb=r6 src.lsb=r6
	rlwinm		r7,r30,8,8,15		# src.lsb=r30
	or		r6,r6,r7		# src.lsb=r6 src.lsb=r6
	rlwinm		r7,r30,0,8,15		# src.lsb=r30
	diab.li		r31,0
	rlwimi		r31,r7,24,8,31
	or		r6,r6,r31		# src.lsb=r6 src.lsb=r6
	rlwinm		r7,r30,0,0,7		# src.lsb=r30
	diab.li		r31,0
	rlwimi		r31,r7,8,24,31
	or		r31,r31,r6		# src.lsb=r6
	rlwinm		r7,r30,24,8,31		# src.lsb=r30
	rlwimi		r7,r5,24,0,7		# sourceValue.msb=r5
	rlwinm		r6,r4,24,8,31		# src.lsb=r6 src.msb=r4
	rlwinm		r7,r7,0,0,7
	se_srwi		r30,24		# src.lsb=r30 src.lsb=r30
	rlwimi		r30,r5,8,0,23		# src.lsb=r30 sourceValue.msb=r5
	se_srwi		r4,24		# src.msb=r4 src.msb=r4
	rlwinm		r30,r30,0,8,15		# src.lsb=r30 src.lsb=r30
	or		r7,r7,r30		# src.lsb=r30
	rlwinm		r6,r6,0,16,23		# src.lsb=r6 src.lsb=r6
	or		r7,r7,r6		# src.lsb=r6
	or		r4,r4,r7		# src.msb=r4 src.msb=r4
	stw		r31,0(r3)		# destinationBuffer=r3
	stw		r4,4(r3)		# destinationBuffer=r3 src.msb=r4
# }
	.d2line		1526
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1568:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5236:
	.type		vstar_htole64_sint,@function
	.size		vstar_htole64_sint,.-vstar_htole64_sint
# Number of nodes = 51

# Allocations for vstar_htole64_sint
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a7		src
# FUNC(void, VSTAR_BITS_CODE) vstar_betoh64_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1535,29
#$$ld
.L5250:

#$$bf	vstar_betoh64_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,lr
	.globl		vstar_betoh64_sint
	.d2_cfa_start __cie
vstar_betoh64_sint:
.Llo1573:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r5		# sourceValue.msb=r5 sourceValue.msb=r5
.Llo1575:
	mr		r6,r6		# sourceValue.lsb=r6 sourceValue.lsb=r6
	.d2prologue_end
#                                    CONST(sint64,AUTOMATIC) sourceValue)
# {
#     CONST(sint64, AUTOMATIC) src = (CONST(sint64, AUTOMATIC)) sourceValue;
	.d2line		1538
.Llo1576:
	mr		r4,r6		# src.lsb=r4 src.lsb=r6
	mr		r4,r5		# src.msb=r4 src.msb=r5
#     *(sint64 * const)destinationBuffer = VSTAR_BETOH64_SINT(src);
	.d2line		1539
	stw		r5,0(r3)		# destinationBuffer=r3 sourceValue.msb=r5
	stw		r6,4(r3)		# destinationBuffer=r3 sourceValue.lsb=r6
# }
	.d2line		1540
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1574:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5251:
	.type		vstar_betoh64_sint,@function
	.size		vstar_betoh64_sint,.-vstar_betoh64_sint
# Number of nodes = 7

# Allocations for vstar_betoh64_sint
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a7		src
# FUNC(void, VSTAR_BITS_CODE) vstar_letoh64_sint(CONSTP2VAR(void, AUTOMATIC, VSTAR_BITS_APPL_DATA) destinationBuffer,
	.align		2
	.section	.text_vle
        .d2line         1549,29
#$$ld
.L5265:

#$$bf	vstar_letoh64_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,lr
	.globl		vstar_letoh64_sint
	.d2_cfa_start __cie
vstar_letoh64_sint:
.Llo1577:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# destinationBuffer=r3 destinationBuffer=r3
	mr		r5,r5		# sourceValue.msb=r5 sourceValue.msb=r5
.Llo1580:
	mr		r6,r6		# sourceValue.lsb=r6 sourceValue.lsb=r6
	.d2prologue_end
#                                    CONST(sint64,AUTOMATIC) sourceValue)
# {
#     CONST(sint64, AUTOMATIC) src = (CONST(sint64, AUTOMATIC)) sourceValue;
	.d2line		1552
.Llo1579:
	mr		r30,r6		# src.lsb=r30 src.lsb=r6
.Llo1581:
	mr		r4,r5		# src.msb=r4 src.msb=r5
#     *(sint64 * const)destinationBuffer = VSTAR_LETOH64_SINT(src);
	.d2line		1553
.Llo1582:
	se_slwi		r6,24		# src.lsb=r6 src.lsb=r6
	rlwinm		r7,r30,8,8,15		# src.lsb=r30
	or		r6,r6,r7		# src.lsb=r6 src.lsb=r6
	rlwinm		r7,r30,0,8,15		# src.lsb=r30
	diab.li		r31,0
	rlwimi		r31,r7,24,8,31
	or		r6,r6,r31		# src.lsb=r6 src.lsb=r6
	rlwinm		r7,r30,0,0,7		# src.lsb=r30
	diab.li		r31,0
	rlwimi		r31,r7,8,24,31
	or		r31,r31,r6		# src.lsb=r6
	rlwinm		r7,r30,24,8,31		# src.lsb=r30
	rlwimi		r7,r5,24,0,7		# sourceValue.msb=r5
	rlwinm		r6,r4,24,8,31		# src.lsb=r6 src.msb=r4
	rlwinm		r7,r7,0,0,7
	se_srwi		r30,24		# src.lsb=r30 src.lsb=r30
	rlwimi		r30,r5,8,0,23		# src.lsb=r30 sourceValue.msb=r5
	se_srwi		r4,24		# src.msb=r4 src.msb=r4
	rlwinm		r30,r30,0,8,15		# src.lsb=r30 src.lsb=r30
	or		r7,r7,r30		# src.lsb=r30
	rlwinm		r6,r6,0,16,23		# src.lsb=r6 src.lsb=r6
	or		r7,r7,r6		# src.lsb=r6
	or		r4,r4,r7		# src.msb=r4 src.msb=r4
	stw		r31,0(r3)		# destinationBuffer=r3
	stw		r4,4(r3)		# destinationBuffer=r3 src.msb=r4
# }
	.d2line		1554
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1578:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5266:
	.type		vstar_letoh64_sint,@function
	.size		vstar_letoh64_sint,.-vstar_letoh64_sint
# Number of nodes = 51

# Allocations for vstar_letoh64_sint
#	?a4		destinationBuffer
#	?a5		sourceValue
#	?a7		src
# FUNC(sint64, VSTAR_BITS_CODE) vstar_htobe64_value_sint(CONST(sint64,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         1562,31
#$$ld
.L5280:

#$$bf	vstar_htobe64_value_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		vstar_htobe64_value_sint
	.d2_cfa_start __cie
vstar_htobe64_value_sint:
.Llo1583:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue.msb=r3 sourceValue.msb=r3
.Llo1584:
	mr		r4,r4		# sourceValue.lsb=r4 sourceValue.lsb=r4
	.d2prologue_end
# {
#     CONST(sint64, AUTOMATIC) src = (CONST(sint64, AUTOMATIC)) sourceValue;
	.d2line		1564
.Llo1587:
	mr		r4,r4		# src.lsb=r4 src.lsb=r4
.Llo1588:
	mr		r3,r3		# src.msb=r3 src.msb=r3
#     return VSTAR_HTOBE64_SINT(src);
	.d2line		1565
.Llo1585:
	mr		r4,r4		# sourceValue.lsb=r4 sourceValue.lsb=r4
.Llo1589:
	mr		r3,r3		# sourceValue.msb=r3 sourceValue.msb=r3
# }
	.d2line		1566
	.d2epilogue_begin
.Llo1586:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5281:
	.type		vstar_htobe64_value_sint,@function
	.size		vstar_htobe64_value_sint,.-vstar_htobe64_value_sint
# Number of nodes = 5

# Allocations for vstar_htobe64_value_sint
#	?a4		sourceValue
#	?a6		src
# FUNC(sint64, VSTAR_BITS_CODE) vstar_htole64_value_sint(CONST(sint64,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         1574,31
#$$ld
.L5294:

#$$bf	vstar_htole64_value_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31
	.globl		vstar_htole64_value_sint
	.d2_cfa_start __cie
vstar_htole64_value_sint:
.Llo1590:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# sourceValue.msb=r5 sourceValue.msb=r3
.Llo1591:
	mr		r4,r4		# sourceValue.lsb=r4 sourceValue.lsb=r4
	.d2prologue_end
# {
#     CONST(sint64, AUTOMATIC) src = (CONST(sint64, AUTOMATIC)) sourceValue;
	.d2line		1576
.Llo1592:
	mr		r6,r4		# src.lsb=r6 src.lsb=r4
.Llo1596:
	mr		r4,r5		# src.msb=r4 src.msb=r5
#     return VSTAR_HTOLE64_SINT(src);
	.d2line		1577
.Llo1597:
	rlwinm		r3,r6,24,0,7		# src.lsb=r6
	rlwinm		r7,r6,8,8,15		# src.lsb=r6
	or		r3,r3,r7
	rlwinm		r7,r6,0,8,15		# src.lsb=r6
	diab.li		r31,0
	rlwimi		r31,r7,24,8,31
	or		r3,r3,r31
	rlwinm		r7,r6,0,0,7		# src.lsb=r6
	diab.li		r31,0
	rlwimi		r31,r7,8,24,31
	or		r3,r3,r31
	rlwinm		r31,r6,24,8,31		# src.lsb=r6
	rlwimi		r31,r5,24,0,7		# sourceValue.msb=r5
	rlwinm		r31,r31,0,0,7
	se_srwi		r6,24		# src.lsb=r6 src.lsb=r6
	rlwimi		r6,r5,8,0,23		# src.lsb=r6 sourceValue.msb=r5
	se_srwi		r5,24		# src.msb=r5 src.msb=r5
.Llo1593:
	rlwinm		r6,r6,0,8,15		# src.lsb=r6 src.lsb=r6
.Llo1594:
	or		r31,r31,r6		# src.lsb=r6
	rlwinm		r7,r4,24,16,23		# src.msb=r4
	or		r4,r31,r7		# src.msb=r4
	or		r4,r4,r5		# src.msb=r4 src.msb=r4 src.msb=r5
# }
	.d2line		1578
	.d2epilogue_begin
.Llo1595:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1598:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5295:
	.type		vstar_htole64_value_sint,@function
	.size		vstar_htole64_value_sint,.-vstar_htole64_value_sint
# Number of nodes = 49

# Allocations for vstar_htole64_value_sint
#	?a4		sourceValue
#	?a6		src
# FUNC(sint64, VSTAR_BITS_CODE) vstar_betoh64_value_sint(CONST(sint64,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         1586,31
#$$ld
.L5308:

#$$bf	vstar_betoh64_value_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		vstar_betoh64_value_sint
	.d2_cfa_start __cie
vstar_betoh64_value_sint:
.Llo1599:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# sourceValue.msb=r3 sourceValue.msb=r3
.Llo1600:
	mr		r4,r4		# sourceValue.lsb=r4 sourceValue.lsb=r4
	.d2prologue_end
# {
#     CONST(sint64, AUTOMATIC) src = (CONST(sint64, AUTOMATIC)) sourceValue;
	.d2line		1588
.Llo1603:
	mr		r4,r4		# src.lsb=r4 src.lsb=r4
.Llo1604:
	mr		r3,r3		# src.msb=r3 src.msb=r3
#     return VSTAR_BETOH64_SINT(src);
	.d2line		1589
.Llo1601:
	mr		r4,r4		# sourceValue.lsb=r4 sourceValue.lsb=r4
.Llo1605:
	mr		r3,r3		# sourceValue.msb=r3 sourceValue.msb=r3
# }
	.d2line		1590
	.d2epilogue_begin
.Llo1602:
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5309:
	.type		vstar_betoh64_value_sint,@function
	.size		vstar_betoh64_value_sint,.-vstar_betoh64_value_sint
# Number of nodes = 5

# Allocations for vstar_betoh64_value_sint
#	?a4		sourceValue
#	?a6		src
# FUNC(sint64, VSTAR_BITS_CODE) vstar_letoh64_value_sint(CONST(sint64,AUTOMATIC) sourceValue)
	.align		2
	.section	.text_vle
        .d2line         1598,31
#$$ld
.L5322:

#$$bf	vstar_letoh64_value_sint,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r31
	.globl		vstar_letoh64_value_sint
	.d2_cfa_start __cie
vstar_letoh64_value_sint:
.Llo1606:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# sourceValue.msb=r5 sourceValue.msb=r3
.Llo1607:
	mr		r4,r4		# sourceValue.lsb=r4 sourceValue.lsb=r4
	.d2prologue_end
# {
#     CONST(sint64, AUTOMATIC) src = (CONST(sint64, AUTOMATIC)) sourceValue;
	.d2line		1600
.Llo1608:
	mr		r6,r4		# src.lsb=r6 src.lsb=r4
.Llo1612:
	mr		r4,r5		# src.msb=r4 src.msb=r5
#     return VSTAR_LETOH64_SINT(src);
	.d2line		1601
.Llo1613:
	rlwinm		r3,r6,24,0,7		# src.lsb=r6
	rlwinm		r7,r6,8,8,15		# src.lsb=r6
	or		r3,r3,r7
	rlwinm		r7,r6,0,8,15		# src.lsb=r6
	diab.li		r31,0
	rlwimi		r31,r7,24,8,31
	or		r3,r3,r31
	rlwinm		r7,r6,0,0,7		# src.lsb=r6
	diab.li		r31,0
	rlwimi		r31,r7,8,24,31
	or		r3,r3,r31
	rlwinm		r31,r6,24,8,31		# src.lsb=r6
	rlwimi		r31,r5,24,0,7		# sourceValue.msb=r5
	rlwinm		r31,r31,0,0,7
	se_srwi		r6,24		# src.lsb=r6 src.lsb=r6
	rlwimi		r6,r5,8,0,23		# src.lsb=r6 sourceValue.msb=r5
	se_srwi		r5,24		# src.msb=r5 src.msb=r5
.Llo1609:
	rlwinm		r6,r6,0,8,15		# src.lsb=r6 src.lsb=r6
.Llo1610:
	or		r31,r31,r6		# src.lsb=r6
	rlwinm		r7,r4,24,16,23		# src.msb=r4
	or		r4,r31,r7		# src.msb=r4
	or		r4,r4,r5		# src.msb=r4 src.msb=r4 src.msb=r5
# }
	.d2line		1602
	.d2epilogue_begin
.Llo1611:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo1614:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L5323:
	.type		vstar_letoh64_value_sint,@function
	.size		vstar_letoh64_value_sint,.-vstar_letoh64_value_sint
# Number of nodes = 49

# Allocations for vstar_letoh64_value_sint
#	?a4		sourceValue
#	?a6		src

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L4417:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Library\\VSTAR_Bits\\ssc\\make\\..\\src\\Vstar_Bits.c"
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
	.uleb128	7
	.uleb128	54
	.byte		0x0
	.uleb128	2
	.uleb128	9
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	8
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
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Library\\VSTAR_Bits\\ssc\\make\\..\\src\\Vstar_Bits.c"
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
.L4418:
	.sleb128	2
	.4byte		.L4414-.L2
	.byte		"vstar_copy"
	.byte		0
	.4byte		.L4417
	.uleb128	177
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4415
	.4byte		.L4416
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L4417
	.uleb128	177
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4422
	.sleb128	3
	.4byte		.L4417
	.uleb128	177
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L4426
	.sleb128	3
	.4byte		.L4417
	.uleb128	177
	.uleb128	29
	.byte		"length"
	.byte		0
	.4byte		.L4427
	.4byte		.L4429
	.section	.debug_info,,n
.L4430:
	.sleb128	4
	.4byte		.L4417
	.uleb128	184
	.uleb128	51
	.byte		"dstptr"
	.byte		0
	.4byte		.L4431
	.4byte		.L4434
.L4435:
	.sleb128	4
	.4byte		.L4417
	.uleb128	185
	.uleb128	53
	.byte		"srcptr"
	.byte		0
	.4byte		.L4436
	.4byte		.L4438
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L4442
	.4byte		.L4439
	.4byte		.L4440
.L4443:
	.sleb128	4
	.4byte		.L4417
	.uleb128	195
	.uleb128	9
	.byte		"vstar_copy8_dst"
	.byte		0
	.4byte		.L4431
	.4byte		.L4444
.L4445:
	.sleb128	4
	.4byte		.L4417
	.uleb128	195
	.uleb128	9
	.byte		"vstar_copy8_src"
	.byte		0
	.4byte		.L4436
	.4byte		.L4446
	.section	.debug_info,,n
	.sleb128	0
.L4442:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L4451
	.4byte		.L4448
	.4byte		.L4449
.L4452:
	.sleb128	4
	.4byte		.L4417
	.uleb128	209
	.uleb128	44
	.byte		"copylen"
	.byte		0
	.4byte		.L4453
	.4byte		.L4454
	.section	.debug_info,,n
	.sleb128	0
.L4451:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L4459
	.4byte		.L4456
	.4byte		.L4457
.L4460:
	.sleb128	4
	.4byte		.L4417
	.uleb128	228
	.uleb128	69
	.byte		"dstaligned"
	.byte		0
	.4byte		.L4461
	.4byte		.L4462
.L4463:
	.sleb128	4
	.4byte		.L4417
	.uleb128	229
	.uleb128	69
	.byte		"srcaligned"
	.byte		0
	.4byte		.L4464
	.4byte		.L4466
.L4467:
	.sleb128	4
	.4byte		.L4417
	.uleb128	231
	.uleb128	32
	.byte		"ctr"
	.byte		0
	.4byte		.L4437
	.4byte		.L4468
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L4472
	.4byte		.L4469
	.4byte		.L4470
.L4473:
	.sleb128	4
	.4byte		.L4417
	.uleb128	270
	.uleb128	44
	.byte		"lengthInWords"
	.byte		0
	.4byte		.L4453
	.4byte		.L4474
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L4478
	.4byte		.L4475
	.4byte		.L4476
.L4479:
	.sleb128	4
	.4byte		.L4417
	.uleb128	273
	.uleb128	50
	.byte		"copylen"
	.byte		0
	.4byte		.L4465
	.4byte		.L4480
	.section	.debug_info,,n
	.sleb128	0
.L4478:
	.section	.debug_info,,n
	.sleb128	0
.L4472:
	.section	.debug_info,,n
	.sleb128	0
.L4459:
	.section	.debug_info,,n
	.sleb128	0
.L4414:
	.section	.debug_info,,n
.L4488:
	.sleb128	2
	.4byte		.L4485-.L2
	.byte		"vstar_set"
	.byte		0
	.4byte		.L4417
	.uleb128	338
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4486
	.4byte		.L4487
	.sleb128	3
	.4byte		.L4417
	.uleb128	338
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4420
	.4byte		.L4489
	.sleb128	3
	.4byte		.L4417
	.uleb128	338
	.uleb128	29
	.byte		"setValue"
	.byte		0
	.4byte		.L4437
	.4byte		.L4490
	.sleb128	3
	.4byte		.L4417
	.uleb128	338
	.uleb128	29
	.byte		"length"
	.byte		0
	.4byte		.L4427
	.4byte		.L4491
.L4492:
	.sleb128	4
	.4byte		.L4417
	.uleb128	344
	.uleb128	12
	.byte		"destinationBufferPtr"
	.byte		0
	.4byte		.L4431
	.4byte		.L4493
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L4497
	.4byte		.L4494
	.4byte		.L4495
.L4498:
	.sleb128	4
	.4byte		.L4417
	.uleb128	353
	.uleb128	9
	.byte		"dst"
	.byte		0
	.4byte		.L4431
	.4byte		.L4499
	.section	.debug_info,,n
	.sleb128	0
.L4497:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L4504
	.4byte		.L4501
	.4byte		.L4502
.L4505:
	.sleb128	4
	.4byte		.L4417
	.uleb128	362
	.uleb128	32
	.byte		"ctr"
	.byte		0
	.4byte		.L4437
	.4byte		.L4506
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L4510
	.4byte		.L4507
	.4byte		.L4508
.L4511:
	.sleb128	4
	.4byte		.L4417
	.uleb128	395
	.uleb128	69
	.byte		"dstaligned"
	.byte		0
	.4byte		.L4461
	.4byte		.L4512
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L4516
	.4byte		.L4513
	.4byte		.L4514
.L4517:
	.sleb128	4
	.4byte		.L4417
	.uleb128	400
	.uleb128	50
	.byte		"valuealigned"
	.byte		0
	.4byte		.L4465
	.4byte		.L4518
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L4522
	.4byte		.L4519
	.4byte		.L4520
.L4523:
	.sleb128	4
	.4byte		.L4417
	.uleb128	417
	.uleb128	52
	.byte		"lengthInWords"
	.byte		0
	.4byte		.L4453
	.4byte		.L4524
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L4528
	.4byte		.L4525
	.4byte		.L4526
.L4529:
	.sleb128	4
	.4byte		.L4417
	.uleb128	420
	.uleb128	58
	.byte		"copylen"
	.byte		0
	.4byte		.L4465
	.4byte		.L4530
	.section	.debug_info,,n
	.sleb128	0
.L4528:
	.section	.debug_info,,n
	.sleb128	0
.L4522:
	.section	.debug_info,,n
	.sleb128	0
.L4516:
	.section	.debug_info,,n
	.sleb128	0
.L4510:
	.section	.debug_info,,n
	.sleb128	0
.L4504:
	.section	.debug_info,,n
	.sleb128	0
.L4485:
	.section	.debug_info,,n
.L4541:
	.sleb128	6
	.4byte		.L4536-.L2
	.byte		"vstar_cmp"
	.byte		0
	.4byte		.L4417
	.uleb128	484
	.uleb128	31
	.4byte		.L4539
	.byte		0x1
	.byte		0x1
	.4byte		.L4537
	.4byte		.L4538
	.sleb128	3
	.4byte		.L4417
	.uleb128	484
	.uleb128	31
	.byte		"ptr1"
	.byte		0
	.4byte		.L4423
	.4byte		.L4542
	.sleb128	3
	.4byte		.L4417
	.uleb128	484
	.uleb128	31
	.byte		"ptr2"
	.byte		0
	.4byte		.L4423
	.4byte		.L4543
	.sleb128	3
	.4byte		.L4417
	.uleb128	484
	.uleb128	31
	.byte		"length"
	.byte		0
	.4byte		.L4427
	.4byte		.L4544
.L4545:
	.sleb128	4
	.4byte		.L4417
	.uleb128	491
	.uleb128	53
	.byte		"dstptr"
	.byte		0
	.4byte		.L4436
	.4byte		.L4546
.L4547:
	.sleb128	4
	.4byte		.L4417
	.uleb128	492
	.uleb128	53
	.byte		"srcptr"
	.byte		0
	.4byte		.L4436
	.4byte		.L4548
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L4552
	.4byte		.L4549
	.4byte		.L4550
.L4553:
	.sleb128	4
	.4byte		.L4417
	.uleb128	503
	.uleb128	9
	.byte		"vstar_cmp8_dst"
	.byte		0
	.4byte		.L4436
	.4byte		.L4554
.L4555:
	.sleb128	4
	.4byte		.L4417
	.uleb128	503
	.uleb128	9
	.byte		"vstar_cmp8_src"
	.byte		0
	.4byte		.L4436
	.4byte		.L4556
	.section	.debug_info,,n
	.sleb128	0
.L4552:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L4561
	.4byte		.L4558
	.4byte		.L4559
.L4562:
	.sleb128	4
	.4byte		.L4417
	.uleb128	517
	.uleb128	35
	.byte		"cmplen"
	.byte		0
	.4byte		.L4427
	.4byte		.L4563
	.section	.debug_info,,n
	.sleb128	0
.L4561:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L4568
	.4byte		.L4565
	.4byte		.L4566
.L4569:
	.sleb128	4
	.4byte		.L4417
	.uleb128	536
	.uleb128	69
	.byte		"dstaligned"
	.byte		0
	.4byte		.L4461
	.4byte		.L4570
.L4571:
	.sleb128	4
	.4byte		.L4417
	.uleb128	537
	.uleb128	69
	.byte		"srcaligned"
	.byte		0
	.4byte		.L4464
	.4byte		.L4572
.L4573:
	.sleb128	4
	.4byte		.L4417
	.uleb128	539
	.uleb128	32
	.byte		"ctr"
	.byte		0
	.4byte		.L4437
	.4byte		.L4574
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L4578
	.4byte		.L4575
	.4byte		.L4576
.L4579:
	.sleb128	4
	.4byte		.L4417
	.uleb128	578
	.uleb128	44
	.byte		"lengthInWords"
	.byte		0
	.4byte		.L4453
	.4byte		.L4580
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L4584
	.4byte		.L4581
	.4byte		.L4582
.L4585:
	.sleb128	4
	.4byte		.L4417
	.uleb128	581
	.uleb128	50
	.byte		"comparelen"
	.byte		0
	.4byte		.L4465
	.4byte		.L4586
	.section	.debug_info,,n
	.sleb128	0
.L4584:
	.section	.debug_info,,n
	.sleb128	0
.L4578:
	.section	.debug_info,,n
	.sleb128	0
.L4568:
	.section	.debug_info,,n
	.sleb128	0
.L4536:
	.section	.debug_info,,n
.L4592:
	.sleb128	2
	.4byte		.L4589-.L2
	.byte		"vstar_hbuftobe16"
	.byte		0
	.4byte		.L4417
	.uleb128	646
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4590
	.4byte		.L4591
	.sleb128	3
	.4byte		.L4417
	.uleb128	646
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4593
	.sleb128	3
	.4byte		.L4417
	.uleb128	646
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L4594
.L4595:
	.sleb128	4
	.4byte		.L4417
	.uleb128	649
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L4596
	.4byte		.L4601
	.section	.debug_info,,n
	.sleb128	0
.L4589:
	.section	.debug_info,,n
.L4606:
	.sleb128	2
	.4byte		.L4603-.L2
	.byte		"vstar_hbuftole16"
	.byte		0
	.4byte		.L4417
	.uleb128	660
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4604
	.4byte		.L4605
	.sleb128	3
	.4byte		.L4417
	.uleb128	660
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4607
	.sleb128	3
	.4byte		.L4417
	.uleb128	660
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L4608
.L4609:
	.sleb128	4
	.4byte		.L4417
	.uleb128	663
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L4596
	.4byte		.L4610
	.section	.debug_info,,n
	.sleb128	0
.L4603:
	.section	.debug_info,,n
.L4615:
	.sleb128	2
	.4byte		.L4612-.L2
	.byte		"vstar_bebuftoh16"
	.byte		0
	.4byte		.L4417
	.uleb128	674
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4613
	.4byte		.L4614
	.sleb128	3
	.4byte		.L4417
	.uleb128	674
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4616
	.sleb128	3
	.4byte		.L4417
	.uleb128	674
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L4617
.L4618:
	.sleb128	4
	.4byte		.L4417
	.uleb128	677
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L4596
	.4byte		.L4619
	.section	.debug_info,,n
	.sleb128	0
.L4612:
	.section	.debug_info,,n
.L4624:
	.sleb128	2
	.4byte		.L4621-.L2
	.byte		"vstar_lebuftoh16"
	.byte		0
	.4byte		.L4417
	.uleb128	688
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4622
	.4byte		.L4623
	.sleb128	3
	.4byte		.L4417
	.uleb128	688
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4625
	.sleb128	3
	.4byte		.L4417
	.uleb128	688
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L4626
.L4627:
	.sleb128	4
	.4byte		.L4417
	.uleb128	691
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L4596
	.4byte		.L4628
	.section	.debug_info,,n
	.sleb128	0
.L4621:
	.section	.debug_info,,n
.L4633:
	.sleb128	2
	.4byte		.L4630-.L2
	.byte		"vstar_htobe16"
	.byte		0
	.4byte		.L4417
	.uleb128	702
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4631
	.4byte		.L4632
	.sleb128	3
	.4byte		.L4417
	.uleb128	702
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4634
	.sleb128	3
	.4byte		.L4417
	.uleb128	702
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4598
	.4byte		.L4635
.L4636:
	.sleb128	4
	.4byte		.L4417
	.uleb128	705
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4598
	.4byte		.L4637
	.section	.debug_info,,n
	.sleb128	0
.L4630:
	.section	.debug_info,,n
.L4642:
	.sleb128	2
	.4byte		.L4639-.L2
	.byte		"vstar_htole16"
	.byte		0
	.4byte		.L4417
	.uleb128	716
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4640
	.4byte		.L4641
	.sleb128	3
	.4byte		.L4417
	.uleb128	716
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4643
	.sleb128	3
	.4byte		.L4417
	.uleb128	716
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4598
	.4byte		.L4644
.L4645:
	.sleb128	4
	.4byte		.L4417
	.uleb128	719
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4598
	.4byte		.L4646
	.section	.debug_info,,n
	.sleb128	0
.L4639:
	.section	.debug_info,,n
.L4651:
	.sleb128	2
	.4byte		.L4648-.L2
	.byte		"vstar_betoh16"
	.byte		0
	.4byte		.L4417
	.uleb128	730
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4649
	.4byte		.L4650
	.sleb128	3
	.4byte		.L4417
	.uleb128	730
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4652
	.sleb128	3
	.4byte		.L4417
	.uleb128	730
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4598
	.4byte		.L4653
.L4654:
	.sleb128	4
	.4byte		.L4417
	.uleb128	733
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4598
	.4byte		.L4655
	.section	.debug_info,,n
	.sleb128	0
.L4648:
	.section	.debug_info,,n
.L4660:
	.sleb128	2
	.4byte		.L4657-.L2
	.byte		"vstar_letoh16"
	.byte		0
	.4byte		.L4417
	.uleb128	744
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4658
	.4byte		.L4659
	.sleb128	3
	.4byte		.L4417
	.uleb128	744
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4661
	.sleb128	3
	.4byte		.L4417
	.uleb128	744
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4598
	.4byte		.L4662
.L4663:
	.sleb128	4
	.4byte		.L4417
	.uleb128	747
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4598
	.4byte		.L4664
	.section	.debug_info,,n
	.sleb128	0
.L4657:
	.section	.debug_info,,n
.L4669:
	.sleb128	6
	.4byte		.L4666-.L2
	.byte		"vstar_htobe16_value"
	.byte		0
	.4byte		.L4417
	.uleb128	757
	.uleb128	31
	.4byte		.L4599
	.byte		0x1
	.byte		0x1
	.4byte		.L4667
	.4byte		.L4668
	.sleb128	3
	.4byte		.L4417
	.uleb128	757
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4598
	.4byte		.L4670
.L4671:
	.sleb128	4
	.4byte		.L4417
	.uleb128	759
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4598
	.4byte		.L4672
	.section	.debug_info,,n
	.sleb128	0
.L4666:
	.section	.debug_info,,n
.L4677:
	.sleb128	6
	.4byte		.L4674-.L2
	.byte		"vstar_htole16_value"
	.byte		0
	.4byte		.L4417
	.uleb128	769
	.uleb128	31
	.4byte		.L4599
	.byte		0x1
	.byte		0x1
	.4byte		.L4675
	.4byte		.L4676
	.sleb128	3
	.4byte		.L4417
	.uleb128	769
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4598
	.4byte		.L4678
.L4679:
	.sleb128	4
	.4byte		.L4417
	.uleb128	771
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4598
	.4byte		.L4680
	.section	.debug_info,,n
	.sleb128	0
.L4674:
	.section	.debug_info,,n
.L4685:
	.sleb128	6
	.4byte		.L4682-.L2
	.byte		"vstar_betoh16_value"
	.byte		0
	.4byte		.L4417
	.uleb128	781
	.uleb128	31
	.4byte		.L4599
	.byte		0x1
	.byte		0x1
	.4byte		.L4683
	.4byte		.L4684
	.sleb128	3
	.4byte		.L4417
	.uleb128	781
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4598
	.4byte		.L4686
.L4687:
	.sleb128	4
	.4byte		.L4417
	.uleb128	783
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4598
	.4byte		.L4688
	.section	.debug_info,,n
	.sleb128	0
.L4682:
	.section	.debug_info,,n
.L4693:
	.sleb128	6
	.4byte		.L4690-.L2
	.byte		"vstar_letoh16_value"
	.byte		0
	.4byte		.L4417
	.uleb128	793
	.uleb128	31
	.4byte		.L4599
	.byte		0x1
	.byte		0x1
	.4byte		.L4691
	.4byte		.L4692
	.sleb128	3
	.4byte		.L4417
	.uleb128	793
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4598
	.4byte		.L4694
.L4695:
	.sleb128	4
	.4byte		.L4417
	.uleb128	795
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4598
	.4byte		.L4696
	.section	.debug_info,,n
	.sleb128	0
.L4690:
	.section	.debug_info,,n
.L4701:
	.sleb128	2
	.4byte		.L4698-.L2
	.byte		"vstar_hbuftobe16_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	806
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4699
	.4byte		.L4700
	.sleb128	3
	.4byte		.L4417
	.uleb128	806
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4702
	.sleb128	3
	.4byte		.L4417
	.uleb128	806
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L4703
.L4704:
	.sleb128	4
	.4byte		.L4417
	.uleb128	809
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L4705
	.4byte		.L4710
	.section	.debug_info,,n
	.sleb128	0
.L4698:
	.section	.debug_info,,n
.L4715:
	.sleb128	2
	.4byte		.L4712-.L2
	.byte		"vstar_hbuftole16_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	820
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4713
	.4byte		.L4714
	.sleb128	3
	.4byte		.L4417
	.uleb128	820
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4716
	.sleb128	3
	.4byte		.L4417
	.uleb128	820
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L4717
.L4718:
	.sleb128	4
	.4byte		.L4417
	.uleb128	823
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L4705
	.4byte		.L4719
	.section	.debug_info,,n
	.sleb128	0
.L4712:
	.section	.debug_info,,n
.L4724:
	.sleb128	2
	.4byte		.L4721-.L2
	.byte		"vstar_bebuftoh16_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	835
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4722
	.4byte		.L4723
	.sleb128	3
	.4byte		.L4417
	.uleb128	835
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4725
	.sleb128	3
	.4byte		.L4417
	.uleb128	835
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L4726
.L4727:
	.sleb128	4
	.4byte		.L4417
	.uleb128	838
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L4705
	.4byte		.L4728
	.section	.debug_info,,n
	.sleb128	0
.L4721:
	.section	.debug_info,,n
.L4733:
	.sleb128	2
	.4byte		.L4730-.L2
	.byte		"vstar_lebuftoh16_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	849
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4731
	.4byte		.L4732
	.sleb128	3
	.4byte		.L4417
	.uleb128	849
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4734
	.sleb128	3
	.4byte		.L4417
	.uleb128	849
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L4735
.L4736:
	.sleb128	4
	.4byte		.L4417
	.uleb128	852
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L4705
	.4byte		.L4737
	.section	.debug_info,,n
	.sleb128	0
.L4730:
	.section	.debug_info,,n
.L4742:
	.sleb128	2
	.4byte		.L4739-.L2
	.byte		"vstar_htobe16_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	863
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4740
	.4byte		.L4741
	.sleb128	3
	.4byte		.L4417
	.uleb128	863
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4743
	.sleb128	3
	.4byte		.L4417
	.uleb128	863
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4707
	.4byte		.L4744
.L4745:
	.sleb128	4
	.4byte		.L4417
	.uleb128	866
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4707
	.4byte		.L4746
	.section	.debug_info,,n
	.sleb128	0
.L4739:
	.section	.debug_info,,n
.L4751:
	.sleb128	2
	.4byte		.L4748-.L2
	.byte		"vstar_htole16_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	877
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4749
	.4byte		.L4750
	.sleb128	3
	.4byte		.L4417
	.uleb128	877
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4752
	.sleb128	3
	.4byte		.L4417
	.uleb128	877
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4707
	.4byte		.L4753
.L4754:
	.sleb128	4
	.4byte		.L4417
	.uleb128	880
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4707
	.4byte		.L4755
	.section	.debug_info,,n
	.sleb128	0
.L4748:
	.section	.debug_info,,n
.L4760:
	.sleb128	2
	.4byte		.L4757-.L2
	.byte		"vstar_betoh16_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	891
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4758
	.4byte		.L4759
	.sleb128	3
	.4byte		.L4417
	.uleb128	891
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4761
	.sleb128	3
	.4byte		.L4417
	.uleb128	891
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4707
	.4byte		.L4762
.L4763:
	.sleb128	4
	.4byte		.L4417
	.uleb128	894
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4707
	.4byte		.L4764
	.section	.debug_info,,n
	.sleb128	0
.L4757:
	.section	.debug_info,,n
.L4769:
	.sleb128	2
	.4byte		.L4766-.L2
	.byte		"vstar_letoh16_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	905
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4767
	.4byte		.L4768
	.sleb128	3
	.4byte		.L4417
	.uleb128	905
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4770
	.sleb128	3
	.4byte		.L4417
	.uleb128	905
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4707
	.4byte		.L4771
.L4772:
	.sleb128	4
	.4byte		.L4417
	.uleb128	908
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4707
	.4byte		.L4773
	.section	.debug_info,,n
	.sleb128	0
.L4766:
	.section	.debug_info,,n
.L4778:
	.sleb128	6
	.4byte		.L4775-.L2
	.byte		"vstar_htobe16_value_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	918
	.uleb128	31
	.4byte		.L4708
	.byte		0x1
	.byte		0x1
	.4byte		.L4776
	.4byte		.L4777
	.sleb128	3
	.4byte		.L4417
	.uleb128	918
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4707
	.4byte		.L4779
.L4780:
	.sleb128	4
	.4byte		.L4417
	.uleb128	920
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4707
	.4byte		.L4781
	.section	.debug_info,,n
	.sleb128	0
.L4775:
	.section	.debug_info,,n
.L4786:
	.sleb128	6
	.4byte		.L4783-.L2
	.byte		"vstar_htole16_value_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	930
	.uleb128	31
	.4byte		.L4708
	.byte		0x1
	.byte		0x1
	.4byte		.L4784
	.4byte		.L4785
	.sleb128	3
	.4byte		.L4417
	.uleb128	930
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4707
	.4byte		.L4787
.L4788:
	.sleb128	4
	.4byte		.L4417
	.uleb128	932
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4707
	.4byte		.L4789
	.section	.debug_info,,n
	.sleb128	0
.L4783:
	.section	.debug_info,,n
.L4794:
	.sleb128	6
	.4byte		.L4791-.L2
	.byte		"vstar_betoh16_value_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	942
	.uleb128	31
	.4byte		.L4708
	.byte		0x1
	.byte		0x1
	.4byte		.L4792
	.4byte		.L4793
	.sleb128	3
	.4byte		.L4417
	.uleb128	942
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4707
	.4byte		.L4795
.L4796:
	.sleb128	4
	.4byte		.L4417
	.uleb128	944
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4707
	.4byte		.L4797
	.section	.debug_info,,n
	.sleb128	0
.L4791:
	.section	.debug_info,,n
.L4802:
	.sleb128	6
	.4byte		.L4799-.L2
	.byte		"vstar_letoh16_value_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	954
	.uleb128	31
	.4byte		.L4708
	.byte		0x1
	.byte		0x1
	.4byte		.L4800
	.4byte		.L4801
	.sleb128	3
	.4byte		.L4417
	.uleb128	954
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4707
	.4byte		.L4803
.L4804:
	.sleb128	4
	.4byte		.L4417
	.uleb128	956
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4707
	.4byte		.L4805
	.section	.debug_info,,n
	.sleb128	0
.L4799:
	.section	.debug_info,,n
.L4810:
	.sleb128	2
	.4byte		.L4807-.L2
	.byte		"vstar_hbuftobe32"
	.byte		0
	.4byte		.L4417
	.uleb128	967
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4808
	.4byte		.L4809
	.sleb128	3
	.4byte		.L4417
	.uleb128	967
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4811
	.sleb128	3
	.4byte		.L4417
	.uleb128	967
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L4812
.L4813:
	.sleb128	4
	.4byte		.L4417
	.uleb128	970
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L4814
	.4byte		.L4817
	.section	.debug_info,,n
	.sleb128	0
.L4807:
	.section	.debug_info,,n
.L4822:
	.sleb128	2
	.4byte		.L4819-.L2
	.byte		"vstar_hbuftole32"
	.byte		0
	.4byte		.L4417
	.uleb128	981
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4820
	.4byte		.L4821
	.sleb128	3
	.4byte		.L4417
	.uleb128	981
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4823
	.sleb128	3
	.4byte		.L4417
	.uleb128	981
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L4824
.L4825:
	.sleb128	4
	.4byte		.L4417
	.uleb128	984
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L4814
	.4byte		.L4826
	.section	.debug_info,,n
	.sleb128	0
.L4819:
	.section	.debug_info,,n
.L4831:
	.sleb128	2
	.4byte		.L4828-.L2
	.byte		"vstar_bebuftoh32"
	.byte		0
	.4byte		.L4417
	.uleb128	995
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4829
	.4byte		.L4830
	.sleb128	3
	.4byte		.L4417
	.uleb128	995
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4832
	.sleb128	3
	.4byte		.L4417
	.uleb128	995
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L4833
.L4834:
	.sleb128	4
	.4byte		.L4417
	.uleb128	998
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L4814
	.4byte		.L4835
	.section	.debug_info,,n
	.sleb128	0
.L4828:
	.section	.debug_info,,n
.L4840:
	.sleb128	2
	.4byte		.L4837-.L2
	.byte		"vstar_lebuftoh32"
	.byte		0
	.4byte		.L4417
	.uleb128	1009
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4838
	.4byte		.L4839
	.sleb128	3
	.4byte		.L4417
	.uleb128	1009
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4841
	.sleb128	3
	.4byte		.L4417
	.uleb128	1009
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L4842
.L4843:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1012
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L4814
	.4byte		.L4844
	.section	.debug_info,,n
	.sleb128	0
.L4837:
	.section	.debug_info,,n
.L4849:
	.sleb128	2
	.4byte		.L4846-.L2
	.byte		"vstar_htobe32"
	.byte		0
	.4byte		.L4417
	.uleb128	1023
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4847
	.4byte		.L4848
	.sleb128	3
	.4byte		.L4417
	.uleb128	1023
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4850
	.sleb128	3
	.4byte		.L4417
	.uleb128	1023
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4816
	.4byte		.L4851
.L4852:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1026
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4816
	.4byte		.L4853
	.section	.debug_info,,n
	.sleb128	0
.L4846:
	.section	.debug_info,,n
.L4858:
	.sleb128	2
	.4byte		.L4855-.L2
	.byte		"vstar_htole32"
	.byte		0
	.4byte		.L4417
	.uleb128	1037
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4856
	.4byte		.L4857
	.sleb128	3
	.4byte		.L4417
	.uleb128	1037
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4859
	.sleb128	3
	.4byte		.L4417
	.uleb128	1037
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4816
	.4byte		.L4860
.L4861:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1040
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4816
	.4byte		.L4862
	.section	.debug_info,,n
	.sleb128	0
.L4855:
	.section	.debug_info,,n
.L4867:
	.sleb128	2
	.4byte		.L4864-.L2
	.byte		"vstar_betoh32"
	.byte		0
	.4byte		.L4417
	.uleb128	1051
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4865
	.4byte		.L4866
	.sleb128	3
	.4byte		.L4417
	.uleb128	1051
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4868
	.sleb128	3
	.4byte		.L4417
	.uleb128	1051
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4816
	.4byte		.L4869
.L4870:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1054
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4816
	.4byte		.L4871
	.section	.debug_info,,n
	.sleb128	0
.L4864:
	.section	.debug_info,,n
.L4876:
	.sleb128	2
	.4byte		.L4873-.L2
	.byte		"vstar_letoh32"
	.byte		0
	.4byte		.L4417
	.uleb128	1065
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4874
	.4byte		.L4875
	.sleb128	3
	.4byte		.L4417
	.uleb128	1065
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4877
	.sleb128	3
	.4byte		.L4417
	.uleb128	1065
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4816
	.4byte		.L4878
.L4879:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1068
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4816
	.4byte		.L4880
	.section	.debug_info,,n
	.sleb128	0
.L4873:
	.section	.debug_info,,n
.L4885:
	.sleb128	6
	.4byte		.L4882-.L2
	.byte		"vstar_htobe32_value"
	.byte		0
	.4byte		.L4417
	.uleb128	1078
	.uleb128	31
	.4byte		.L4427
	.byte		0x1
	.byte		0x1
	.4byte		.L4883
	.4byte		.L4884
	.sleb128	3
	.4byte		.L4417
	.uleb128	1078
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4816
	.4byte		.L4886
.L4887:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1080
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4816
	.4byte		.L4888
	.section	.debug_info,,n
	.sleb128	0
.L4882:
	.section	.debug_info,,n
.L4893:
	.sleb128	6
	.4byte		.L4890-.L2
	.byte		"vstar_htole32_value"
	.byte		0
	.4byte		.L4417
	.uleb128	1090
	.uleb128	31
	.4byte		.L4427
	.byte		0x1
	.byte		0x1
	.4byte		.L4891
	.4byte		.L4892
	.sleb128	3
	.4byte		.L4417
	.uleb128	1090
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4816
	.4byte		.L4894
.L4895:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1092
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4816
	.4byte		.L4896
	.section	.debug_info,,n
	.sleb128	0
.L4890:
	.section	.debug_info,,n
.L4901:
	.sleb128	6
	.4byte		.L4898-.L2
	.byte		"vstar_betoh32_value"
	.byte		0
	.4byte		.L4417
	.uleb128	1102
	.uleb128	31
	.4byte		.L4427
	.byte		0x1
	.byte		0x1
	.4byte		.L4899
	.4byte		.L4900
	.sleb128	3
	.4byte		.L4417
	.uleb128	1102
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4816
	.4byte		.L4902
.L4903:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1104
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4816
	.4byte		.L4904
	.section	.debug_info,,n
	.sleb128	0
.L4898:
	.section	.debug_info,,n
.L4909:
	.sleb128	6
	.4byte		.L4906-.L2
	.byte		"vstar_letoh32_value"
	.byte		0
	.4byte		.L4417
	.uleb128	1114
	.uleb128	31
	.4byte		.L4427
	.byte		0x1
	.byte		0x1
	.4byte		.L4907
	.4byte		.L4908
	.sleb128	3
	.4byte		.L4417
	.uleb128	1114
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4816
	.4byte		.L4910
.L4911:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1116
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4816
	.4byte		.L4912
	.section	.debug_info,,n
	.sleb128	0
.L4906:
	.section	.debug_info,,n
.L4917:
	.sleb128	2
	.4byte		.L4914-.L2
	.byte		"vstar_hbuftobe32_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1127
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4915
	.4byte		.L4916
	.sleb128	3
	.4byte		.L4417
	.uleb128	1127
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4918
	.sleb128	3
	.4byte		.L4417
	.uleb128	1127
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L4919
.L4920:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1130
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L4921
	.4byte		.L4924
	.section	.debug_info,,n
	.sleb128	0
.L4914:
	.section	.debug_info,,n
.L4929:
	.sleb128	2
	.4byte		.L4926-.L2
	.byte		"vstar_hbuftole32_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1141
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4927
	.4byte		.L4928
	.sleb128	3
	.4byte		.L4417
	.uleb128	1141
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4930
	.sleb128	3
	.4byte		.L4417
	.uleb128	1141
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L4931
.L4932:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1144
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L4921
	.4byte		.L4933
	.section	.debug_info,,n
	.sleb128	0
.L4926:
	.section	.debug_info,,n
.L4938:
	.sleb128	2
	.4byte		.L4935-.L2
	.byte		"vstar_bebuftoh32_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1155
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4936
	.4byte		.L4937
	.sleb128	3
	.4byte		.L4417
	.uleb128	1155
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4939
	.sleb128	3
	.4byte		.L4417
	.uleb128	1155
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L4940
.L4941:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1158
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L4921
	.4byte		.L4942
	.section	.debug_info,,n
	.sleb128	0
.L4935:
	.section	.debug_info,,n
.L4947:
	.sleb128	2
	.4byte		.L4944-.L2
	.byte		"vstar_lebuftoh32_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1169
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4945
	.4byte		.L4946
	.sleb128	3
	.4byte		.L4417
	.uleb128	1169
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4948
	.sleb128	3
	.4byte		.L4417
	.uleb128	1169
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L4949
.L4950:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1172
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L4921
	.4byte		.L4951
	.section	.debug_info,,n
	.sleb128	0
.L4944:
	.section	.debug_info,,n
.L4956:
	.sleb128	2
	.4byte		.L4953-.L2
	.byte		"vstar_htobe32_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1183
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4954
	.4byte		.L4955
	.sleb128	3
	.4byte		.L4417
	.uleb128	1183
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4957
	.sleb128	3
	.4byte		.L4417
	.uleb128	1183
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4923
	.4byte		.L4958
.L4959:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1186
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4923
	.4byte		.L4960
	.section	.debug_info,,n
	.sleb128	0
.L4953:
	.section	.debug_info,,n
.L4965:
	.sleb128	2
	.4byte		.L4962-.L2
	.byte		"vstar_htole32_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1197
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4963
	.4byte		.L4964
	.sleb128	3
	.4byte		.L4417
	.uleb128	1197
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4966
	.sleb128	3
	.4byte		.L4417
	.uleb128	1197
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4923
	.4byte		.L4967
.L4968:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1200
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4923
	.4byte		.L4969
	.section	.debug_info,,n
	.sleb128	0
.L4962:
	.section	.debug_info,,n
.L4974:
	.sleb128	2
	.4byte		.L4971-.L2
	.byte		"vstar_betoh32_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1211
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4972
	.4byte		.L4973
	.sleb128	3
	.4byte		.L4417
	.uleb128	1211
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4975
	.sleb128	3
	.4byte		.L4417
	.uleb128	1211
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4923
	.4byte		.L4976
.L4977:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1214
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4923
	.4byte		.L4978
	.section	.debug_info,,n
	.sleb128	0
.L4971:
	.section	.debug_info,,n
.L4983:
	.sleb128	2
	.4byte		.L4980-.L2
	.byte		"vstar_letoh32_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1225
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L4981
	.4byte		.L4982
	.sleb128	3
	.4byte		.L4417
	.uleb128	1225
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L4984
	.sleb128	3
	.4byte		.L4417
	.uleb128	1225
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4923
	.4byte		.L4985
.L4986:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1228
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4923
	.4byte		.L4987
	.section	.debug_info,,n
	.sleb128	0
.L4980:
	.section	.debug_info,,n
.L4992:
	.sleb128	6
	.4byte		.L4989-.L2
	.byte		"vstar_htobe32_value_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1238
	.uleb128	31
	.4byte		.L4539
	.byte		0x1
	.byte		0x1
	.4byte		.L4990
	.4byte		.L4991
	.sleb128	3
	.4byte		.L4417
	.uleb128	1238
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4923
	.4byte		.L4993
.L4994:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1240
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4923
	.4byte		.L4995
	.section	.debug_info,,n
	.sleb128	0
.L4989:
	.section	.debug_info,,n
.L5000:
	.sleb128	6
	.4byte		.L4997-.L2
	.byte		"vstar_htole32_value_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1250
	.uleb128	31
	.4byte		.L4539
	.byte		0x1
	.byte		0x1
	.4byte		.L4998
	.4byte		.L4999
	.sleb128	3
	.4byte		.L4417
	.uleb128	1250
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4923
	.4byte		.L5001
.L5002:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1252
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4923
	.4byte		.L5003
	.section	.debug_info,,n
	.sleb128	0
.L4997:
	.section	.debug_info,,n
.L5008:
	.sleb128	6
	.4byte		.L5005-.L2
	.byte		"vstar_betoh32_value_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1262
	.uleb128	31
	.4byte		.L4539
	.byte		0x1
	.byte		0x1
	.4byte		.L5006
	.4byte		.L5007
	.sleb128	3
	.4byte		.L4417
	.uleb128	1262
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4923
	.4byte		.L5009
.L5010:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1264
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4923
	.4byte		.L5011
	.section	.debug_info,,n
	.sleb128	0
.L5005:
	.section	.debug_info,,n
.L5016:
	.sleb128	6
	.4byte		.L5013-.L2
	.byte		"vstar_letoh32_value_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1274
	.uleb128	31
	.4byte		.L4539
	.byte		0x1
	.byte		0x1
	.4byte		.L5014
	.4byte		.L5015
	.sleb128	3
	.4byte		.L4417
	.uleb128	1274
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L4923
	.4byte		.L5017
.L5018:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1276
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L4923
	.4byte		.L5019
	.section	.debug_info,,n
	.sleb128	0
.L5013:
	.section	.debug_info,,n
.L5024:
	.sleb128	2
	.4byte		.L5021-.L2
	.byte		"vstar_hbuftobe64"
	.byte		0
	.4byte		.L4417
	.uleb128	1291
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L5022
	.4byte		.L5023
	.sleb128	3
	.4byte		.L4417
	.uleb128	1291
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L5025
	.sleb128	3
	.4byte		.L4417
	.uleb128	1291
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L5026
.L5027:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1294
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L5028
	.4byte		.L5033
	.section	.debug_info,,n
	.sleb128	0
.L5021:
	.section	.debug_info,,n
.L5038:
	.sleb128	2
	.4byte		.L5035-.L2
	.byte		"vstar_hbuftole64"
	.byte		0
	.4byte		.L4417
	.uleb128	1305
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L5036
	.4byte		.L5037
	.sleb128	3
	.4byte		.L4417
	.uleb128	1305
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L5039
	.sleb128	3
	.4byte		.L4417
	.uleb128	1305
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L5040
.L5041:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1308
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L5028
	.4byte		.L5042
	.section	.debug_info,,n
	.sleb128	0
.L5035:
	.section	.debug_info,,n
.L5047:
	.sleb128	2
	.4byte		.L5044-.L2
	.byte		"vstar_bebuftoh64"
	.byte		0
	.4byte		.L4417
	.uleb128	1319
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L5045
	.4byte		.L5046
	.sleb128	3
	.4byte		.L4417
	.uleb128	1319
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L5048
	.sleb128	3
	.4byte		.L4417
	.uleb128	1319
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L5049
.L5050:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1322
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L5028
	.4byte		.L5051
	.section	.debug_info,,n
	.sleb128	0
.L5044:
	.section	.debug_info,,n
.L5056:
	.sleb128	2
	.4byte		.L5053-.L2
	.byte		"vstar_lebuftoh64"
	.byte		0
	.4byte		.L4417
	.uleb128	1333
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L5054
	.4byte		.L5055
	.sleb128	3
	.4byte		.L4417
	.uleb128	1333
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L5057
	.sleb128	3
	.4byte		.L4417
	.uleb128	1333
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L5058
.L5059:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1336
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L5028
	.4byte		.L5060
	.section	.debug_info,,n
	.sleb128	0
.L5053:
	.section	.debug_info,,n
.L5065:
	.sleb128	2
	.4byte		.L5062-.L2
	.byte		"vstar_htobe64"
	.byte		0
	.4byte		.L4417
	.uleb128	1347
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L5063
	.4byte		.L5064
	.sleb128	3
	.4byte		.L4417
	.uleb128	1347
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L5066
	.section	.debug_info,,n
.L5069:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5067
.L5070:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5068
	.section	.debug_info,,n
	.sleb128	8
	.4byte		.L4417
	.uleb128	1347
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L5030
	.sleb128	14
	.byte		0x99
	.4byte		.L5069-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5070-.L2
	.byte		0x93
	.uleb128	4
.L5074:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5072
.L5075:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5073
	.section	.debug_info,,n
.L5071:
	.sleb128	9
	.4byte		.L4417
	.uleb128	1350
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L5030
	.sleb128	14
	.byte		0x99
	.4byte		.L5074-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5075-.L2
	.byte		0x93
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L5062:
	.section	.debug_info,,n
.L5080:
	.sleb128	2
	.4byte		.L5077-.L2
	.byte		"vstar_htole64"
	.byte		0
	.4byte		.L4417
	.uleb128	1361
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L5078
	.4byte		.L5079
	.sleb128	3
	.4byte		.L4417
	.uleb128	1361
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L5081
.L5084:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5082
.L5085:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5083
	.sleb128	8
	.4byte		.L4417
	.uleb128	1361
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L5030
	.sleb128	14
	.byte		0x99
	.4byte		.L5084-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5085-.L2
	.byte		0x93
	.uleb128	4
.L5089:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5087
.L5090:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5088
.L5086:
	.sleb128	9
	.4byte		.L4417
	.uleb128	1364
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L5030
	.sleb128	14
	.byte		0x99
	.4byte		.L5089-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5090-.L2
	.byte		0x93
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L5077:
	.section	.debug_info,,n
.L5095:
	.sleb128	2
	.4byte		.L5092-.L2
	.byte		"vstar_betoh64"
	.byte		0
	.4byte		.L4417
	.uleb128	1375
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L5093
	.4byte		.L5094
	.sleb128	3
	.4byte		.L4417
	.uleb128	1375
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L5096
.L5099:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5097
.L5100:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5098
	.sleb128	8
	.4byte		.L4417
	.uleb128	1375
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L5030
	.sleb128	14
	.byte		0x99
	.4byte		.L5099-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5100-.L2
	.byte		0x93
	.uleb128	4
.L5104:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5102
.L5105:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5103
.L5101:
	.sleb128	9
	.4byte		.L4417
	.uleb128	1378
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L5030
	.sleb128	14
	.byte		0x99
	.4byte		.L5104-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5105-.L2
	.byte		0x93
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L5092:
	.section	.debug_info,,n
.L5110:
	.sleb128	2
	.4byte		.L5107-.L2
	.byte		"vstar_letoh64"
	.byte		0
	.4byte		.L4417
	.uleb128	1389
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L5108
	.4byte		.L5109
	.sleb128	3
	.4byte		.L4417
	.uleb128	1389
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L5111
.L5114:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5112
.L5115:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5113
	.sleb128	8
	.4byte		.L4417
	.uleb128	1389
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L5030
	.sleb128	14
	.byte		0x99
	.4byte		.L5114-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5115-.L2
	.byte		0x93
	.uleb128	4
.L5119:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5117
.L5120:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5118
.L5116:
	.sleb128	9
	.4byte		.L4417
	.uleb128	1392
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L5030
	.sleb128	14
	.byte		0x99
	.4byte		.L5119-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5120-.L2
	.byte		0x93
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L5107:
	.section	.debug_info,,n
.L5125:
	.sleb128	6
	.4byte		.L5122-.L2
	.byte		"vstar_htobe64_value"
	.byte		0
	.4byte		.L4417
	.uleb128	1402
	.uleb128	31
	.4byte		.L5031
	.byte		0x1
	.byte		0x1
	.4byte		.L5123
	.4byte		.L5124
.L5128:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5126
.L5129:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5127
	.sleb128	8
	.4byte		.L4417
	.uleb128	1402
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L5030
	.sleb128	14
	.byte		0x99
	.4byte		.L5128-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5129-.L2
	.byte		0x93
	.uleb128	4
.L5133:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5131
.L5134:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5132
.L5130:
	.sleb128	9
	.4byte		.L4417
	.uleb128	1404
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L5030
	.sleb128	14
	.byte		0x99
	.4byte		.L5133-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5134-.L2
	.byte		0x93
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L5122:
	.section	.debug_info,,n
.L5139:
	.sleb128	6
	.4byte		.L5136-.L2
	.byte		"vstar_htole64_value"
	.byte		0
	.4byte		.L4417
	.uleb128	1414
	.uleb128	31
	.4byte		.L5031
	.byte		0x1
	.byte		0x1
	.4byte		.L5137
	.4byte		.L5138
.L5142:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5140
.L5143:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5141
	.sleb128	8
	.4byte		.L4417
	.uleb128	1414
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L5030
	.sleb128	14
	.byte		0x99
	.4byte		.L5142-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5143-.L2
	.byte		0x93
	.uleb128	4
.L5147:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5145
.L5148:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5146
.L5144:
	.sleb128	9
	.4byte		.L4417
	.uleb128	1416
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L5030
	.sleb128	14
	.byte		0x99
	.4byte		.L5147-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5148-.L2
	.byte		0x93
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L5136:
	.section	.debug_info,,n
.L5153:
	.sleb128	6
	.4byte		.L5150-.L2
	.byte		"vstar_betoh64_value"
	.byte		0
	.4byte		.L4417
	.uleb128	1426
	.uleb128	31
	.4byte		.L5031
	.byte		0x1
	.byte		0x1
	.4byte		.L5151
	.4byte		.L5152
.L5156:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5154
.L5157:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5155
	.sleb128	8
	.4byte		.L4417
	.uleb128	1426
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L5030
	.sleb128	14
	.byte		0x99
	.4byte		.L5156-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5157-.L2
	.byte		0x93
	.uleb128	4
.L5161:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5159
.L5162:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5160
.L5158:
	.sleb128	9
	.4byte		.L4417
	.uleb128	1428
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L5030
	.sleb128	14
	.byte		0x99
	.4byte		.L5161-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5162-.L2
	.byte		0x93
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L5150:
	.section	.debug_info,,n
.L5167:
	.sleb128	6
	.4byte		.L5164-.L2
	.byte		"vstar_letoh64_value"
	.byte		0
	.4byte		.L4417
	.uleb128	1438
	.uleb128	31
	.4byte		.L5031
	.byte		0x1
	.byte		0x1
	.4byte		.L5165
	.4byte		.L5166
.L5170:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5168
.L5171:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5169
	.sleb128	8
	.4byte		.L4417
	.uleb128	1438
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L5030
	.sleb128	14
	.byte		0x99
	.4byte		.L5170-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5171-.L2
	.byte		0x93
	.uleb128	4
.L5175:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5173
.L5176:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5174
.L5172:
	.sleb128	9
	.4byte		.L4417
	.uleb128	1440
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L5030
	.sleb128	14
	.byte		0x99
	.4byte		.L5175-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5176-.L2
	.byte		0x93
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L5164:
	.section	.debug_info,,n
.L5181:
	.sleb128	2
	.4byte		.L5178-.L2
	.byte		"vstar_hbuftobe64_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1451
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L5179
	.4byte		.L5180
	.sleb128	3
	.4byte		.L4417
	.uleb128	1451
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L5182
	.sleb128	3
	.4byte		.L4417
	.uleb128	1451
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L5183
.L5184:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1454
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L5185
	.4byte		.L5190
	.section	.debug_info,,n
	.sleb128	0
.L5178:
	.section	.debug_info,,n
.L5195:
	.sleb128	2
	.4byte		.L5192-.L2
	.byte		"vstar_hbuftole64_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1465
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L5193
	.4byte		.L5194
	.sleb128	3
	.4byte		.L4417
	.uleb128	1465
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L5196
	.sleb128	3
	.4byte		.L4417
	.uleb128	1465
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L5197
.L5198:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1468
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L5185
	.4byte		.L5199
	.section	.debug_info,,n
	.sleb128	0
.L5192:
	.section	.debug_info,,n
.L5204:
	.sleb128	2
	.4byte		.L5201-.L2
	.byte		"vstar_bebuftoh64_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1479
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L5202
	.4byte		.L5203
	.sleb128	3
	.4byte		.L4417
	.uleb128	1479
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L5205
	.sleb128	3
	.4byte		.L4417
	.uleb128	1479
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L5206
.L5207:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1482
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L5185
	.4byte		.L5208
	.section	.debug_info,,n
	.sleb128	0
.L5201:
	.section	.debug_info,,n
.L5213:
	.sleb128	2
	.4byte		.L5210-.L2
	.byte		"vstar_lebuftoh64_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1493
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L5211
	.4byte		.L5212
	.sleb128	3
	.4byte		.L4417
	.uleb128	1493
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L5214
	.sleb128	3
	.4byte		.L4417
	.uleb128	1493
	.uleb128	29
	.byte		"sourceBuffer"
	.byte		0
	.4byte		.L4423
	.4byte		.L5215
.L5216:
	.sleb128	4
	.4byte		.L4417
	.uleb128	1496
	.uleb128	48
	.byte		"src"
	.byte		0
	.4byte		.L5185
	.4byte		.L5217
	.section	.debug_info,,n
	.sleb128	0
.L5210:
	.section	.debug_info,,n
.L5222:
	.sleb128	2
	.4byte		.L5219-.L2
	.byte		"vstar_htobe64_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1507
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L5220
	.4byte		.L5221
	.sleb128	3
	.4byte		.L4417
	.uleb128	1507
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L5223
.L5226:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5224
.L5227:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5225
	.sleb128	8
	.4byte		.L4417
	.uleb128	1507
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L5187
	.sleb128	14
	.byte		0x99
	.4byte		.L5226-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5227-.L2
	.byte		0x93
	.uleb128	4
.L5231:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5229
.L5232:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5230
.L5228:
	.sleb128	9
	.4byte		.L4417
	.uleb128	1510
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L5187
	.sleb128	14
	.byte		0x99
	.4byte		.L5231-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5232-.L2
	.byte		0x93
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L5219:
	.section	.debug_info,,n
.L5237:
	.sleb128	2
	.4byte		.L5234-.L2
	.byte		"vstar_htole64_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1521
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L5235
	.4byte		.L5236
	.sleb128	3
	.4byte		.L4417
	.uleb128	1521
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L5238
.L5241:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5239
.L5242:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5240
	.sleb128	8
	.4byte		.L4417
	.uleb128	1521
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L5187
	.sleb128	14
	.byte		0x99
	.4byte		.L5241-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5242-.L2
	.byte		0x93
	.uleb128	4
.L5246:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5244
.L5247:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5245
.L5243:
	.sleb128	9
	.4byte		.L4417
	.uleb128	1524
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L5187
	.sleb128	14
	.byte		0x99
	.4byte		.L5246-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5247-.L2
	.byte		0x93
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L5234:
	.section	.debug_info,,n
.L5252:
	.sleb128	2
	.4byte		.L5249-.L2
	.byte		"vstar_betoh64_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1535
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L5250
	.4byte		.L5251
	.sleb128	3
	.4byte		.L4417
	.uleb128	1535
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L5253
.L5256:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5254
.L5257:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5255
	.sleb128	8
	.4byte		.L4417
	.uleb128	1535
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L5187
	.sleb128	14
	.byte		0x99
	.4byte		.L5256-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5257-.L2
	.byte		0x93
	.uleb128	4
.L5261:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5259
.L5262:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5260
.L5258:
	.sleb128	9
	.4byte		.L4417
	.uleb128	1538
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L5187
	.sleb128	14
	.byte		0x99
	.4byte		.L5261-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5262-.L2
	.byte		0x93
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L5249:
	.section	.debug_info,,n
.L5267:
	.sleb128	2
	.4byte		.L5264-.L2
	.byte		"vstar_letoh64_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1549
	.uleb128	29
	.byte		0x1
	.byte		0x1
	.4byte		.L5265
	.4byte		.L5266
	.sleb128	3
	.4byte		.L4417
	.uleb128	1549
	.uleb128	29
	.byte		"destinationBuffer"
	.byte		0
	.4byte		.L4419
	.4byte		.L5268
.L5271:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5269
.L5272:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5270
	.sleb128	8
	.4byte		.L4417
	.uleb128	1549
	.uleb128	29
	.byte		"sourceValue"
	.byte		0
	.4byte		.L5187
	.sleb128	14
	.byte		0x99
	.4byte		.L5271-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5272-.L2
	.byte		0x93
	.uleb128	4
.L5276:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5274
.L5277:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5275
.L5273:
	.sleb128	9
	.4byte		.L4417
	.uleb128	1552
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L5187
	.sleb128	14
	.byte		0x99
	.4byte		.L5276-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5277-.L2
	.byte		0x93
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L5264:
	.section	.debug_info,,n
.L5282:
	.sleb128	6
	.4byte		.L5279-.L2
	.byte		"vstar_htobe64_value_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1562
	.uleb128	31
	.4byte		.L5188
	.byte		0x1
	.byte		0x1
	.4byte		.L5280
	.4byte		.L5281
.L5285:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5283
.L5286:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5284
	.sleb128	8
	.4byte		.L4417
	.uleb128	1562
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L5187
	.sleb128	14
	.byte		0x99
	.4byte		.L5285-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5286-.L2
	.byte		0x93
	.uleb128	4
.L5290:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5288
.L5291:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5289
.L5287:
	.sleb128	9
	.4byte		.L4417
	.uleb128	1564
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L5187
	.sleb128	14
	.byte		0x99
	.4byte		.L5290-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5291-.L2
	.byte		0x93
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L5279:
	.section	.debug_info,,n
.L5296:
	.sleb128	6
	.4byte		.L5293-.L2
	.byte		"vstar_htole64_value_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1574
	.uleb128	31
	.4byte		.L5188
	.byte		0x1
	.byte		0x1
	.4byte		.L5294
	.4byte		.L5295
.L5299:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5297
.L5300:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5298
	.sleb128	8
	.4byte		.L4417
	.uleb128	1574
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L5187
	.sleb128	14
	.byte		0x99
	.4byte		.L5299-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5300-.L2
	.byte		0x93
	.uleb128	4
.L5304:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5302
.L5305:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5303
.L5301:
	.sleb128	9
	.4byte		.L4417
	.uleb128	1576
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L5187
	.sleb128	14
	.byte		0x99
	.4byte		.L5304-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5305-.L2
	.byte		0x93
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L5293:
	.section	.debug_info,,n
.L5310:
	.sleb128	6
	.4byte		.L5307-.L2
	.byte		"vstar_betoh64_value_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1586
	.uleb128	31
	.4byte		.L5188
	.byte		0x1
	.byte		0x1
	.4byte		.L5308
	.4byte		.L5309
.L5313:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5311
.L5314:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5312
	.sleb128	8
	.4byte		.L4417
	.uleb128	1586
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L5187
	.sleb128	14
	.byte		0x99
	.4byte		.L5313-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5314-.L2
	.byte		0x93
	.uleb128	4
.L5318:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5316
.L5319:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5317
.L5315:
	.sleb128	9
	.4byte		.L4417
	.uleb128	1588
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L5187
	.sleb128	14
	.byte		0x99
	.4byte		.L5318-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5319-.L2
	.byte		0x93
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L5307:
	.section	.debug_info,,n
.L5324:
	.sleb128	6
	.4byte		.L5321-.L2
	.byte		"vstar_letoh64_value_sint"
	.byte		0
	.4byte		.L4417
	.uleb128	1598
	.uleb128	31
	.4byte		.L5188
	.byte		0x1
	.byte		0x1
	.4byte		.L5322
	.4byte		.L5323
.L5327:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5325
.L5328:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5326
	.sleb128	8
	.4byte		.L4417
	.uleb128	1598
	.uleb128	31
	.byte		"sourceValue"
	.byte		0
	.4byte		.L5187
	.sleb128	14
	.byte		0x99
	.4byte		.L5327-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5328-.L2
	.byte		0x93
	.uleb128	4
.L5332:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5330
.L5333:
	.sleb128	7
	.sleb128	5
	.byte		0x3
	.4byte		.L5331
.L5329:
	.sleb128	9
	.4byte		.L4417
	.uleb128	1600
	.uleb128	30
	.byte		"src"
	.byte		0
	.4byte		.L5187
	.sleb128	14
	.byte		0x99
	.4byte		.L5332-.L2
	.byte		0x93
	.uleb128	4
	.byte		0x99
	.4byte		.L5333-.L2
	.byte		0x93
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	0
.L5321:
	.section	.debug_info,,n
.L4421:
	.sleb128	10
	.byte		"void"
	.byte		0
	.byte		0x0
	.section	.debug_info,,n
.L4420:
	.sleb128	11
	.4byte		.L4421
	.section	.debug_info,,n
.L4419:
	.sleb128	12
	.4byte		.L4420
.L4425:
	.sleb128	12
	.4byte		.L4421
.L4424:
	.sleb128	11
	.4byte		.L4425
.L4423:
	.sleb128	12
	.4byte		.L4424
	.section	.debug_info,,n
.L4428:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L4427:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L4428
.L4433:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L4432:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L4433
.L4431:
	.sleb128	11
	.4byte		.L4432
.L4437:
	.sleb128	12
	.4byte		.L4432
.L4436:
	.sleb128	11
	.4byte		.L4437
.L4453:
	.sleb128	14
	.byte		"vstar_aligned_t"
	.byte		0
	.4byte		.L4427
.L4461:
	.sleb128	11
	.4byte		.L4453
.L4465:
	.sleb128	12
	.4byte		.L4453
.L4464:
	.sleb128	11
	.4byte		.L4465
.L4540:
	.sleb128	13
	.byte		"long"
	.byte		0
	.byte		0x5
	.byte		0x4
.L4539:
	.sleb128	14
	.byte		"sint32"
	.byte		0
	.4byte		.L4540
.L4600:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L4599:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L4600
.L4598:
	.sleb128	12
	.4byte		.L4599
.L4597:
	.sleb128	11
	.4byte		.L4598
.L4596:
	.sleb128	12
	.4byte		.L4597
.L4709:
	.sleb128	13
	.byte		"short"
	.byte		0
	.byte		0x5
	.byte		0x2
.L4708:
	.sleb128	14
	.byte		"sint16"
	.byte		0
	.4byte		.L4709
.L4707:
	.sleb128	12
	.4byte		.L4708
.L4706:
	.sleb128	11
	.4byte		.L4707
.L4705:
	.sleb128	12
	.4byte		.L4706
.L4816:
	.sleb128	12
	.4byte		.L4427
.L4815:
	.sleb128	11
	.4byte		.L4816
.L4814:
	.sleb128	12
	.4byte		.L4815
.L4923:
	.sleb128	12
	.4byte		.L4539
.L4922:
	.sleb128	11
	.4byte		.L4923
.L4921:
	.sleb128	12
	.4byte		.L4922
.L5032:
	.sleb128	13
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L5031:
	.sleb128	14
	.byte		"uint64"
	.byte		0
	.4byte		.L5032
.L5030:
	.sleb128	12
	.4byte		.L5031
.L5029:
	.sleb128	11
	.4byte		.L5030
.L5028:
	.sleb128	12
	.4byte		.L5029
.L5189:
	.sleb128	13
	.byte		"long long"
	.byte		0
	.byte		0x5
	.byte		0x8
.L5188:
	.sleb128	14
	.byte		"sint64"
	.byte		0
	.4byte		.L5189
.L5187:
	.sleb128	12
	.4byte		.L5188
.L5186:
	.sleb128	11
	.4byte		.L5187
.L5185:
	.sleb128	12
	.4byte		.L5186
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L4422:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L4426:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo7),4
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),0
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo10),0
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),0
	.d2locend
.L4429:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo9),5
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),6
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo15),5
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),6
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),0
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),6
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),6
	.d2locend
.L4434:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo25),6
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo5),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),6
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),6
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo23),3
	.d2locend
.L4438:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo9),0
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),4
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo5),4
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo23),4
	.d2locend
.L4444:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo3),4
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo27),3
	.d2locend
.L4446:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo9),0
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo3),3
	.d2locend
.L4454:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo38),0
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),0
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),6
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),0
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo46),6
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo5),0
	.d2locend
.L4462:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo48),3
	.d2locend
.L4466:
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),4
	.d2locend
.L4468:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo51),0
	.d2locreg	%offsetof(.Llo52), %offsetof(.Llo53),0
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo55),0
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),0
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo23),0
	.d2locend
.L4474:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo60),5
	.d2locend
.L4480:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo61),31
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo60),31
	.d2locend
.L4489:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),3
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locend
.L4490:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo67),4
	.d2locend
.L4491:
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo68),5
	.d2locreg	%offsetof(.Llo69), %offsetof(.Llo70),0
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo72),6
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo73),0
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),6
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),0
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),6
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo67),6
	.d2locend
.L4493:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo64),3
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo82),5
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),3
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo86),5
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo67),3
	.d2locend
.L4499:
	.d2locreg	%offsetof(.Llo81), %offsetof(.Llo88),3
	.d2locend
.L4506:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo84),7
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo73),7
	.d2locend
.L4512:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo87),3
	.d2locend
.L4518:
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo91),5
	.d2locend
.L4524:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo91),31
	.d2locend
.L4530:
	.d2locreg	%offsetof(.Llo75), %offsetof(.Llo92),30
	.d2locreg	%offsetof(.Llo93), %offsetof(.Llo91),30
	.d2locend
.L4542:
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),3
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),3
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),3
	.d2locend
.L4543:
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo100),4
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),0
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo103),0
	.d2locreg	%offsetof(.Llo104), %offsetof(.Llo105),0
	.d2locend
.L4544:
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo102),5
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo107),6
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo109),5
	.d2locreg	%offsetof(.Llo110), %offsetof(.Llo111),5
	.d2locreg	%offsetof(.Llo112), %offsetof(.Llo113),5
	.d2locreg	%offsetof(.Llo114), %offsetof(.Llo115),5
	.d2locreg	%offsetof(.Llo116), %offsetof(.Llo117),5
	.d2locreg	%offsetof(.Llo118), %offsetof(.Llo119),5
	.d2locreg	%offsetof(.Llo120), %offsetof(.Llo121),5
	.d2locreg	%offsetof(.Llo122), %offsetof(.Llo123),5
	.d2locreg	%offsetof(.Llo124), %offsetof(.Llo96),6
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo126),5
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo128),6
	.d2locreg	%offsetof(.Llo129), %offsetof(.Llo130),0
	.d2locreg	%offsetof(.Llo131), %offsetof(.Llo132),6
	.d2locreg	%offsetof(.Llo133), %offsetof(.Llo134),0
	.d2locreg	%offsetof(.Llo135), %offsetof(.Llo136),0
	.d2locreg	%offsetof(.Llo137), %offsetof(.Llo138),6
	.d2locreg	%offsetof(.Llo139), %offsetof(.Llo140),0
	.d2locreg	%offsetof(.Llo141), %offsetof(.Llo142),6
	.d2locreg	%offsetof(.Llo143), %offsetof(.Llo144),0
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),6
	.d2locreg	%offsetof(.Llo147), %offsetof(.Llo148),0
	.d2locend
.L4546:
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo95),3
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo150),6
	.d2locreg	%offsetof(.Llo151), %offsetof(.Llo152),3
	.d2locreg	%offsetof(.Llo153), %offsetof(.Llo154),3
	.d2locreg	%offsetof(.Llo155), %offsetof(.Llo156),3
	.d2locreg	%offsetof(.Llo157), %offsetof(.Llo158),3
	.d2locreg	%offsetof(.Llo159), %offsetof(.Llo160),3
	.d2locreg	%offsetof(.Llo161), %offsetof(.Llo162),3
	.d2locreg	%offsetof(.Llo163), %offsetof(.Llo164),3
	.d2locreg	%offsetof(.Llo165), %offsetof(.Llo166),3
	.d2locreg	%offsetof(.Llo167), %offsetof(.Llo168),3
	.d2locreg	%offsetof(.Llo169), %offsetof(.Llo170),3
	.d2locreg	%offsetof(.Llo171), %offsetof(.Llo172),3
	.d2locreg	%offsetof(.Llo173), %offsetof(.Llo174),3
	.d2locreg	%offsetof(.Llo175), %offsetof(.Llo176),3
	.d2locreg	%offsetof(.Llo177), %offsetof(.Llo178),3
	.d2locreg	%offsetof(.Llo179), %offsetof(.Llo180),3
	.d2locreg	%offsetof(.Llo181), %offsetof(.Llo182),3
	.d2locreg	%offsetof(.Llo183), %offsetof(.Llo184),3
	.d2locreg	%offsetof(.Llo185), %offsetof(.Llo186),3
	.d2locreg	%offsetof(.Llo187), %offsetof(.Llo188),3
	.d2locreg	%offsetof(.Llo189), %offsetof(.Llo190),3
	.d2locreg	%offsetof(.Llo191), %offsetof(.Llo192),3
	.d2locreg	%offsetof(.Llo193), %offsetof(.Llo194),3
	.d2locreg	%offsetof(.Llo195), %offsetof(.Llo196),3
	.d2locreg	%offsetof(.Llo197), %offsetof(.Llo198),3
	.d2locreg	%offsetof(.Llo199), %offsetof(.Llo200),3
	.d2locreg	%offsetof(.Llo201), %offsetof(.Llo202),3
	.d2locreg	%offsetof(.Llo203), %offsetof(.Llo204),3
	.d2locreg	%offsetof(.Llo205), %offsetof(.Llo206),3
	.d2locreg	%offsetof(.Llo207), %offsetof(.Llo208),3
	.d2locreg	%offsetof(.Llo209), %offsetof(.Llo210),3
	.d2locreg	%offsetof(.Llo211), %offsetof(.Llo212),3
	.d2locreg	%offsetof(.Llo213), %offsetof(.Llo214),3
	.d2locreg	%offsetof(.Llo215), %offsetof(.Llo216),3
	.d2locreg	%offsetof(.Llo217), %offsetof(.Llo218),3
	.d2locreg	%offsetof(.Llo219), %offsetof(.Llo220),3
	.d2locreg	%offsetof(.Llo221), %offsetof(.Llo222),3
	.d2locreg	%offsetof(.Llo223), %offsetof(.Llo224),3
	.d2locreg	%offsetof(.Llo225), %offsetof(.Llo226),3
	.d2locreg	%offsetof(.Llo227), %offsetof(.Llo228),3
	.d2locreg	%offsetof(.Llo229), %offsetof(.Llo230),3
	.d2locreg	%offsetof(.Llo231), %offsetof(.Llo232),3
	.d2locreg	%offsetof(.Llo233), %offsetof(.Llo234),3
	.d2locreg	%offsetof(.Llo235), %offsetof(.Llo236),3
	.d2locreg	%offsetof(.Llo237), %offsetof(.Llo238),3
	.d2locreg	%offsetof(.Llo239), %offsetof(.Llo240),3
	.d2locreg	%offsetof(.Llo241), %offsetof(.Llo242),3
	.d2locreg	%offsetof(.Llo243), %offsetof(.Llo244),3
	.d2locreg	%offsetof(.Llo245), %offsetof(.Llo246),3
	.d2locreg	%offsetof(.Llo247), %offsetof(.Llo248),3
	.d2locreg	%offsetof(.Llo249), %offsetof(.Llo250),3
	.d2locreg	%offsetof(.Llo251), %offsetof(.Llo252),3
	.d2locreg	%offsetof(.Llo253), %offsetof(.Llo254),3
	.d2locreg	%offsetof(.Llo255), %offsetof(.Llo256),3
	.d2locreg	%offsetof(.Llo257), %offsetof(.Llo258),3
	.d2locreg	%offsetof(.Llo259), %offsetof(.Llo260),3
	.d2locreg	%offsetof(.Llo261), %offsetof(.Llo262),3
	.d2locreg	%offsetof(.Llo263), %offsetof(.Llo264),3
	.d2locreg	%offsetof(.Llo265), %offsetof(.Llo266),3
	.d2locreg	%offsetof(.Llo267), %offsetof(.Llo268),3
	.d2locreg	%offsetof(.Llo269), %offsetof(.Llo270),3
	.d2locreg	%offsetof(.Llo271), %offsetof(.Llo272),3
	.d2locreg	%offsetof(.Llo273), %offsetof(.Llo274),3
	.d2locreg	%offsetof(.Llo275), %offsetof(.Llo276),3
	.d2locreg	%offsetof(.Llo277), %offsetof(.Llo278),3
	.d2locreg	%offsetof(.Llo279), %offsetof(.Llo280),3
	.d2locreg	%offsetof(.Llo281), %offsetof(.Llo282),3
	.d2locreg	%offsetof(.Llo283), %offsetof(.Llo284),3
	.d2locreg	%offsetof(.Llo285), %offsetof(.Llo286),3
	.d2locreg	%offsetof(.Llo287), %offsetof(.Llo288),3
	.d2locreg	%offsetof(.Llo289), %offsetof(.Llo290),3
	.d2locreg	%offsetof(.Llo291), %offsetof(.Llo292),3
	.d2locreg	%offsetof(.Llo293), %offsetof(.Llo294),3
	.d2locreg	%offsetof(.Llo295), %offsetof(.Llo296),3
	.d2locreg	%offsetof(.Llo297), %offsetof(.Llo298),3
	.d2locreg	%offsetof(.Llo299), %offsetof(.Llo300),3
	.d2locreg	%offsetof(.Llo301), %offsetof(.Llo302),3
	.d2locreg	%offsetof(.Llo303), %offsetof(.Llo304),3
	.d2locreg	%offsetof(.Llo305), %offsetof(.Llo306),3
	.d2locreg	%offsetof(.Llo307), %offsetof(.Llo308),3
	.d2locreg	%offsetof(.Llo309), %offsetof(.Llo310),3
	.d2locreg	%offsetof(.Llo311), %offsetof(.Llo312),3
	.d2locreg	%offsetof(.Llo313), %offsetof(.Llo314),3
	.d2locreg	%offsetof(.Llo315), %offsetof(.Llo316),3
	.d2locreg	%offsetof(.Llo317), %offsetof(.Llo318),3
	.d2locreg	%offsetof(.Llo319), %offsetof(.Llo320),3
	.d2locreg	%offsetof(.Llo321), %offsetof(.Llo322),3
	.d2locreg	%offsetof(.Llo323), %offsetof(.Llo324),3
	.d2locreg	%offsetof(.Llo325), %offsetof(.Llo326),3
	.d2locreg	%offsetof(.Llo327), %offsetof(.Llo328),3
	.d2locreg	%offsetof(.Llo329), %offsetof(.Llo330),3
	.d2locreg	%offsetof(.Llo331), %offsetof(.Llo332),3
	.d2locreg	%offsetof(.Llo333), %offsetof(.Llo334),3
	.d2locreg	%offsetof(.Llo335), %offsetof(.Llo336),3
	.d2locreg	%offsetof(.Llo337), %offsetof(.Llo338),3
	.d2locreg	%offsetof(.Llo339), %offsetof(.Llo340),3
	.d2locreg	%offsetof(.Llo341), %offsetof(.Llo342),3
	.d2locreg	%offsetof(.Llo343), %offsetof(.Llo344),3
	.d2locreg	%offsetof(.Llo345), %offsetof(.Llo346),3
	.d2locreg	%offsetof(.Llo347), %offsetof(.Llo348),3
	.d2locreg	%offsetof(.Llo349), %offsetof(.Llo350),3
	.d2locreg	%offsetof(.Llo351), %offsetof(.Llo352),3
	.d2locreg	%offsetof(.Llo353), %offsetof(.Llo354),3
	.d2locreg	%offsetof(.Llo355), %offsetof(.Llo356),3
	.d2locreg	%offsetof(.Llo357), %offsetof(.Llo358),3
	.d2locreg	%offsetof(.Llo359), %offsetof(.Llo360),3
	.d2locreg	%offsetof(.Llo361), %offsetof(.Llo362),3
	.d2locreg	%offsetof(.Llo363), %offsetof(.Llo364),3
	.d2locreg	%offsetof(.Llo365), %offsetof(.Llo366),3
	.d2locreg	%offsetof(.Llo367), %offsetof(.Llo368),3
	.d2locreg	%offsetof(.Llo369), %offsetof(.Llo370),3
	.d2locreg	%offsetof(.Llo371), %offsetof(.Llo372),3
	.d2locreg	%offsetof(.Llo373), %offsetof(.Llo374),3
	.d2locreg	%offsetof(.Llo375), %offsetof(.Llo376),3
	.d2locreg	%offsetof(.Llo377), %offsetof(.Llo378),3
	.d2locreg	%offsetof(.Llo379), %offsetof(.Llo380),3
	.d2locreg	%offsetof(.Llo381), %offsetof(.Llo382),3
	.d2locreg	%offsetof(.Llo383), %offsetof(.Llo384),3
	.d2locreg	%offsetof(.Llo385), %offsetof(.Llo386),3
	.d2locreg	%offsetof(.Llo387), %offsetof(.Llo388),3
	.d2locreg	%offsetof(.Llo389), %offsetof(.Llo390),3
	.d2locreg	%offsetof(.Llo391), %offsetof(.Llo392),3
	.d2locreg	%offsetof(.Llo393), %offsetof(.Llo394),3
	.d2locreg	%offsetof(.Llo395), %offsetof(.Llo396),3
	.d2locreg	%offsetof(.Llo397), %offsetof(.Llo398),3
	.d2locreg	%offsetof(.Llo399), %offsetof(.Llo400),3
	.d2locreg	%offsetof(.Llo401), %offsetof(.Llo402),3
	.d2locreg	%offsetof(.Llo403), %offsetof(.Llo404),3
	.d2locreg	%offsetof(.Llo405), %offsetof(.Llo406),3
	.d2locreg	%offsetof(.Llo407), %offsetof(.Llo408),3
	.d2locreg	%offsetof(.Llo409), %offsetof(.Llo410),3
	.d2locreg	%offsetof(.Llo411), %offsetof(.Llo412),3
	.d2locreg	%offsetof(.Llo413), %offsetof(.Llo414),3
	.d2locreg	%offsetof(.Llo415), %offsetof(.Llo416),3
	.d2locreg	%offsetof(.Llo417), %offsetof(.Llo418),3
	.d2locreg	%offsetof(.Llo419), %offsetof(.Llo420),3
	.d2locreg	%offsetof(.Llo421), %offsetof(.Llo422),3
	.d2locreg	%offsetof(.Llo423), %offsetof(.Llo424),3
	.d2locreg	%offsetof(.Llo425), %offsetof(.Llo426),3
	.d2locreg	%offsetof(.Llo427), %offsetof(.Llo428),3
	.d2locreg	%offsetof(.Llo429), %offsetof(.Llo430),3
	.d2locreg	%offsetof(.Llo431), %offsetof(.Llo432),3
	.d2locreg	%offsetof(.Llo433), %offsetof(.Llo434),3
	.d2locreg	%offsetof(.Llo435), %offsetof(.Llo436),3
	.d2locreg	%offsetof(.Llo437), %offsetof(.Llo438),3
	.d2locreg	%offsetof(.Llo439), %offsetof(.Llo440),3
	.d2locreg	%offsetof(.Llo441), %offsetof(.Llo442),3
	.d2locreg	%offsetof(.Llo443), %offsetof(.Llo444),3
	.d2locreg	%offsetof(.Llo445), %offsetof(.Llo446),3
	.d2locreg	%offsetof(.Llo447), %offsetof(.Llo448),3
	.d2locreg	%offsetof(.Llo449), %offsetof(.Llo450),3
	.d2locreg	%offsetof(.Llo451), %offsetof(.Llo452),3
	.d2locreg	%offsetof(.Llo453), %offsetof(.Llo454),3
	.d2locreg	%offsetof(.Llo455), %offsetof(.Llo456),3
	.d2locreg	%offsetof(.Llo457), %offsetof(.Llo458),3
	.d2locreg	%offsetof(.Llo459), %offsetof(.Llo460),3
	.d2locreg	%offsetof(.Llo461), %offsetof(.Llo462),3
	.d2locreg	%offsetof(.Llo463), %offsetof(.Llo464),3
	.d2locreg	%offsetof(.Llo465), %offsetof(.Llo466),3
	.d2locreg	%offsetof(.Llo467), %offsetof(.Llo468),3
	.d2locreg	%offsetof(.Llo469), %offsetof(.Llo470),3
	.d2locreg	%offsetof(.Llo471), %offsetof(.Llo472),3
	.d2locreg	%offsetof(.Llo473), %offsetof(.Llo474),3
	.d2locreg	%offsetof(.Llo475), %offsetof(.Llo476),3
	.d2locreg	%offsetof(.Llo477), %offsetof(.Llo478),3
	.d2locreg	%offsetof(.Llo479), %offsetof(.Llo480),3
	.d2locreg	%offsetof(.Llo481), %offsetof(.Llo482),3
	.d2locreg	%offsetof(.Llo483), %offsetof(.Llo484),3
	.d2locreg	%offsetof(.Llo485), %offsetof(.Llo486),3
	.d2locreg	%offsetof(.Llo487), %offsetof(.Llo488),3
	.d2locreg	%offsetof(.Llo489), %offsetof(.Llo490),3
	.d2locreg	%offsetof(.Llo491), %offsetof(.Llo492),3
	.d2locreg	%offsetof(.Llo493), %offsetof(.Llo494),3
	.d2locreg	%offsetof(.Llo495), %offsetof(.Llo496),3
	.d2locreg	%offsetof(.Llo497), %offsetof(.Llo498),3
	.d2locreg	%offsetof(.Llo499), %offsetof(.Llo500),3
	.d2locreg	%offsetof(.Llo501), %offsetof(.Llo502),3
	.d2locreg	%offsetof(.Llo503), %offsetof(.Llo504),3
	.d2locreg	%offsetof(.Llo505), %offsetof(.Llo506),3
	.d2locreg	%offsetof(.Llo507), %offsetof(.Llo508),3
	.d2locreg	%offsetof(.Llo509), %offsetof(.Llo510),3
	.d2locreg	%offsetof(.Llo511), %offsetof(.Llo512),3
	.d2locreg	%offsetof(.Llo513), %offsetof(.Llo514),3
	.d2locreg	%offsetof(.Llo515), %offsetof(.Llo516),3
	.d2locreg	%offsetof(.Llo517), %offsetof(.Llo518),3
	.d2locreg	%offsetof(.Llo519), %offsetof(.Llo520),3
	.d2locreg	%offsetof(.Llo521), %offsetof(.Llo522),3
	.d2locreg	%offsetof(.Llo523), %offsetof(.Llo524),3
	.d2locreg	%offsetof(.Llo525), %offsetof(.Llo526),3
	.d2locreg	%offsetof(.Llo527), %offsetof(.Llo528),3
	.d2locreg	%offsetof(.Llo529), %offsetof(.Llo530),3
	.d2locreg	%offsetof(.Llo531), %offsetof(.Llo532),3
	.d2locreg	%offsetof(.Llo533), %offsetof(.Llo534),3
	.d2locreg	%offsetof(.Llo535), %offsetof(.Llo536),3
	.d2locreg	%offsetof(.Llo537), %offsetof(.Llo538),3
	.d2locreg	%offsetof(.Llo539), %offsetof(.Llo540),3
	.d2locreg	%offsetof(.Llo541), %offsetof(.Llo542),3
	.d2locreg	%offsetof(.Llo543), %offsetof(.Llo544),3
	.d2locreg	%offsetof(.Llo545), %offsetof(.Llo546),3
	.d2locreg	%offsetof(.Llo547), %offsetof(.Llo548),3
	.d2locreg	%offsetof(.Llo549), %offsetof(.Llo550),3
	.d2locreg	%offsetof(.Llo551), %offsetof(.Llo552),3
	.d2locreg	%offsetof(.Llo553), %offsetof(.Llo554),3
	.d2locreg	%offsetof(.Llo555), %offsetof(.Llo556),3
	.d2locreg	%offsetof(.Llo557), %offsetof(.Llo558),3
	.d2locreg	%offsetof(.Llo559), %offsetof(.Llo560),3
	.d2locreg	%offsetof(.Llo561), %offsetof(.Llo562),3
	.d2locreg	%offsetof(.Llo563), %offsetof(.Llo564),3
	.d2locreg	%offsetof(.Llo565), %offsetof(.Llo566),3
	.d2locreg	%offsetof(.Llo567), %offsetof(.Llo568),3
	.d2locreg	%offsetof(.Llo569), %offsetof(.Llo570),3
	.d2locreg	%offsetof(.Llo571), %offsetof(.Llo572),3
	.d2locreg	%offsetof(.Llo573), %offsetof(.Llo574),3
	.d2locreg	%offsetof(.Llo575), %offsetof(.Llo576),3
	.d2locreg	%offsetof(.Llo577), %offsetof(.Llo578),3
	.d2locreg	%offsetof(.Llo579), %offsetof(.Llo580),3
	.d2locreg	%offsetof(.Llo581), %offsetof(.Llo582),3
	.d2locreg	%offsetof(.Llo583), %offsetof(.Llo584),3
	.d2locreg	%offsetof(.Llo585), %offsetof(.Llo586),3
	.d2locreg	%offsetof(.Llo587), %offsetof(.Llo588),3
	.d2locreg	%offsetof(.Llo589), %offsetof(.Llo590),3
	.d2locreg	%offsetof(.Llo591), %offsetof(.Llo592),3
	.d2locreg	%offsetof(.Llo593), %offsetof(.Llo594),3
	.d2locreg	%offsetof(.Llo595), %offsetof(.Llo596),3
	.d2locreg	%offsetof(.Llo597), %offsetof(.Llo598),3
	.d2locreg	%offsetof(.Llo599), %offsetof(.Llo600),3
	.d2locreg	%offsetof(.Llo601), %offsetof(.Llo602),3
	.d2locreg	%offsetof(.Llo603), %offsetof(.Llo604),3
	.d2locreg	%offsetof(.Llo605), %offsetof(.Llo606),3
	.d2locreg	%offsetof(.Llo607), %offsetof(.Llo608),3
	.d2locreg	%offsetof(.Llo609), %offsetof(.Llo610),3
	.d2locreg	%offsetof(.Llo611), %offsetof(.Llo612),3
	.d2locreg	%offsetof(.Llo613), %offsetof(.Llo614),3
	.d2locreg	%offsetof(.Llo615), %offsetof(.Llo616),3
	.d2locreg	%offsetof(.Llo617), %offsetof(.Llo618),3
	.d2locreg	%offsetof(.Llo619), %offsetof(.Llo620),3
	.d2locreg	%offsetof(.Llo621), %offsetof(.Llo622),3
	.d2locreg	%offsetof(.Llo623), %offsetof(.Llo624),3
	.d2locreg	%offsetof(.Llo625), %offsetof(.Llo626),3
	.d2locreg	%offsetof(.Llo627), %offsetof(.Llo628),3
	.d2locreg	%offsetof(.Llo629), %offsetof(.Llo630),3
	.d2locreg	%offsetof(.Llo631), %offsetof(.Llo632),3
	.d2locreg	%offsetof(.Llo633), %offsetof(.Llo634),3
	.d2locreg	%offsetof(.Llo635), %offsetof(.Llo636),3
	.d2locreg	%offsetof(.Llo637), %offsetof(.Llo638),3
	.d2locreg	%offsetof(.Llo639), %offsetof(.Llo640),3
	.d2locreg	%offsetof(.Llo641), %offsetof(.Llo642),3
	.d2locreg	%offsetof(.Llo643), %offsetof(.Llo644),3
	.d2locreg	%offsetof(.Llo645), %offsetof(.Llo646),3
	.d2locreg	%offsetof(.Llo647), %offsetof(.Llo648),3
	.d2locreg	%offsetof(.Llo649), %offsetof(.Llo650),3
	.d2locreg	%offsetof(.Llo651), %offsetof(.Llo652),3
	.d2locreg	%offsetof(.Llo653), %offsetof(.Llo654),3
	.d2locreg	%offsetof(.Llo655), %offsetof(.Llo656),3
	.d2locreg	%offsetof(.Llo657), %offsetof(.Llo658),3
	.d2locreg	%offsetof(.Llo659), %offsetof(.Llo660),3
	.d2locreg	%offsetof(.Llo661), %offsetof(.Llo662),3
	.d2locreg	%offsetof(.Llo663), %offsetof(.Llo98),3
	.d2locreg	%offsetof(.Llo664), %offsetof(.Llo665),6
	.d2locreg	%offsetof(.Llo666), %offsetof(.Llo667),3
	.d2locreg	%offsetof(.Llo668), %offsetof(.Llo669),6
	.d2locreg	%offsetof(.Llo670), %offsetof(.Llo671),3
	.d2locreg	%offsetof(.Llo672), %offsetof(.Llo673),3
	.d2locreg	%offsetof(.Llo674), %offsetof(.Llo675),3
	.d2locreg	%offsetof(.Llo676), %offsetof(.Llo677),3
	.d2locreg	%offsetof(.Llo136), %offsetof(.Llo678),3
	.d2locreg	%offsetof(.Llo140), %offsetof(.Llo679),3
	.d2locreg	%offsetof(.Llo144), %offsetof(.Llo680),3
	.d2locend
.L4548:
	.d2locreg	%offsetof(.Llo681), %offsetof(.Llo102),0
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),4
	.d2locreg	%offsetof(.Llo682), %offsetof(.Llo98),4
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo683),4
	.d2locend
.L4554:
	.d2locreg	%offsetof(.Llo149), %offsetof(.Llo95),3
	.d2locreg	%offsetof(.Llo684), %offsetof(.Llo96),4
	.d2locreg	%offsetof(.Llo125), %offsetof(.Llo97),3
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo664),3
	.d2locend
.L4556:
	.d2locreg	%offsetof(.Llo681), %offsetof(.Llo102),0
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo109),3
	.d2locreg	%offsetof(.Llo685), %offsetof(.Llo686),3
	.d2locreg	%offsetof(.Llo687), %offsetof(.Llo111),3
	.d2locreg	%offsetof(.Llo688), %offsetof(.Llo689),3
	.d2locreg	%offsetof(.Llo690), %offsetof(.Llo113),3
	.d2locreg	%offsetof(.Llo691), %offsetof(.Llo692),3
	.d2locreg	%offsetof(.Llo693), %offsetof(.Llo115),3
	.d2locreg	%offsetof(.Llo694), %offsetof(.Llo695),3
	.d2locreg	%offsetof(.Llo696), %offsetof(.Llo117),3
	.d2locreg	%offsetof(.Llo697), %offsetof(.Llo698),3
	.d2locreg	%offsetof(.Llo699), %offsetof(.Llo119),3
	.d2locreg	%offsetof(.Llo700), %offsetof(.Llo701),3
	.d2locreg	%offsetof(.Llo702), %offsetof(.Llo121),3
	.d2locreg	%offsetof(.Llo703), %offsetof(.Llo704),3
	.d2locreg	%offsetof(.Llo705), %offsetof(.Llo123),3
	.d2locreg	%offsetof(.Llo706), %offsetof(.Llo707),3
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo125),0
	.d2locend
.L4563:
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo708),0
	.d2locreg	%offsetof(.Llo709), %offsetof(.Llo710),0
	.d2locreg	%offsetof(.Llo711), %offsetof(.Llo712),6
	.d2locreg	%offsetof(.Llo713), %offsetof(.Llo714),0
	.d2locreg	%offsetof(.Llo715), %offsetof(.Llo716),0
	.d2locreg	%offsetof(.Llo717), %offsetof(.Llo718),0
	.d2locreg	%offsetof(.Llo719), %offsetof(.Llo720),0
	.d2locreg	%offsetof(.Llo721), %offsetof(.Llo722),0
	.d2locreg	%offsetof(.Llo723), %offsetof(.Llo724),0
	.d2locreg	%offsetof(.Llo725), %offsetof(.Llo726),0
	.d2locreg	%offsetof(.Llo727), %offsetof(.Llo728),0
	.d2locreg	%offsetof(.Llo729), %offsetof(.Llo730),0
	.d2locreg	%offsetof(.Llo731), %offsetof(.Llo732),0
	.d2locreg	%offsetof(.Llo733), %offsetof(.Llo734),0
	.d2locreg	%offsetof(.Llo735), %offsetof(.Llo736),0
	.d2locreg	%offsetof(.Llo737), %offsetof(.Llo738),0
	.d2locreg	%offsetof(.Llo739), %offsetof(.Llo740),0
	.d2locreg	%offsetof(.Llo741), %offsetof(.Llo742),0
	.d2locreg	%offsetof(.Llo743), %offsetof(.Llo744),0
	.d2locreg	%offsetof(.Llo745), %offsetof(.Llo746),0
	.d2locreg	%offsetof(.Llo747), %offsetof(.Llo748),0
	.d2locreg	%offsetof(.Llo749), %offsetof(.Llo750),0
	.d2locreg	%offsetof(.Llo751), %offsetof(.Llo752),0
	.d2locreg	%offsetof(.Llo753), %offsetof(.Llo754),0
	.d2locreg	%offsetof(.Llo755), %offsetof(.Llo756),0
	.d2locreg	%offsetof(.Llo757), %offsetof(.Llo758),0
	.d2locreg	%offsetof(.Llo759), %offsetof(.Llo760),0
	.d2locreg	%offsetof(.Llo761), %offsetof(.Llo762),0
	.d2locreg	%offsetof(.Llo763), %offsetof(.Llo764),0
	.d2locreg	%offsetof(.Llo765), %offsetof(.Llo766),0
	.d2locreg	%offsetof(.Llo767), %offsetof(.Llo768),0
	.d2locreg	%offsetof(.Llo769), %offsetof(.Llo770),0
	.d2locreg	%offsetof(.Llo771), %offsetof(.Llo772),0
	.d2locreg	%offsetof(.Llo773), %offsetof(.Llo774),0
	.d2locreg	%offsetof(.Llo775), %offsetof(.Llo776),0
	.d2locreg	%offsetof(.Llo777), %offsetof(.Llo778),0
	.d2locreg	%offsetof(.Llo779), %offsetof(.Llo780),0
	.d2locreg	%offsetof(.Llo781), %offsetof(.Llo782),0
	.d2locreg	%offsetof(.Llo783), %offsetof(.Llo784),0
	.d2locreg	%offsetof(.Llo785), %offsetof(.Llo786),0
	.d2locreg	%offsetof(.Llo787), %offsetof(.Llo788),0
	.d2locreg	%offsetof(.Llo789), %offsetof(.Llo790),0
	.d2locreg	%offsetof(.Llo791), %offsetof(.Llo792),0
	.d2locreg	%offsetof(.Llo793), %offsetof(.Llo794),0
	.d2locreg	%offsetof(.Llo795), %offsetof(.Llo796),0
	.d2locreg	%offsetof(.Llo797), %offsetof(.Llo798),0
	.d2locreg	%offsetof(.Llo799), %offsetof(.Llo800),0
	.d2locreg	%offsetof(.Llo801), %offsetof(.Llo802),0
	.d2locreg	%offsetof(.Llo803), %offsetof(.Llo804),0
	.d2locreg	%offsetof(.Llo805), %offsetof(.Llo806),0
	.d2locreg	%offsetof(.Llo807), %offsetof(.Llo808),0
	.d2locreg	%offsetof(.Llo809), %offsetof(.Llo810),0
	.d2locreg	%offsetof(.Llo811), %offsetof(.Llo812),0
	.d2locreg	%offsetof(.Llo813), %offsetof(.Llo814),0
	.d2locreg	%offsetof(.Llo815), %offsetof(.Llo816),0
	.d2locreg	%offsetof(.Llo817), %offsetof(.Llo818),0
	.d2locreg	%offsetof(.Llo819), %offsetof(.Llo820),0
	.d2locreg	%offsetof(.Llo821), %offsetof(.Llo822),0
	.d2locreg	%offsetof(.Llo823), %offsetof(.Llo824),0
	.d2locreg	%offsetof(.Llo825), %offsetof(.Llo826),0
	.d2locreg	%offsetof(.Llo827), %offsetof(.Llo828),0
	.d2locreg	%offsetof(.Llo829), %offsetof(.Llo830),0
	.d2locreg	%offsetof(.Llo831), %offsetof(.Llo832),0
	.d2locreg	%offsetof(.Llo833), %offsetof(.Llo834),0
	.d2locreg	%offsetof(.Llo835), %offsetof(.Llo836),0
	.d2locreg	%offsetof(.Llo837), %offsetof(.Llo838),0
	.d2locreg	%offsetof(.Llo839), %offsetof(.Llo840),0
	.d2locreg	%offsetof(.Llo841), %offsetof(.Llo842),0
	.d2locreg	%offsetof(.Llo843), %offsetof(.Llo844),0
	.d2locreg	%offsetof(.Llo845), %offsetof(.Llo846),0
	.d2locreg	%offsetof(.Llo847), %offsetof(.Llo848),0
	.d2locreg	%offsetof(.Llo849), %offsetof(.Llo850),0
	.d2locreg	%offsetof(.Llo851), %offsetof(.Llo852),0
	.d2locreg	%offsetof(.Llo853), %offsetof(.Llo854),0
	.d2locreg	%offsetof(.Llo855), %offsetof(.Llo856),0
	.d2locreg	%offsetof(.Llo857), %offsetof(.Llo858),0
	.d2locreg	%offsetof(.Llo859), %offsetof(.Llo860),0
	.d2locreg	%offsetof(.Llo861), %offsetof(.Llo862),0
	.d2locreg	%offsetof(.Llo863), %offsetof(.Llo864),0
	.d2locreg	%offsetof(.Llo865), %offsetof(.Llo866),0
	.d2locreg	%offsetof(.Llo867), %offsetof(.Llo868),0
	.d2locreg	%offsetof(.Llo869), %offsetof(.Llo870),0
	.d2locreg	%offsetof(.Llo871), %offsetof(.Llo872),0
	.d2locreg	%offsetof(.Llo873), %offsetof(.Llo874),0
	.d2locreg	%offsetof(.Llo875), %offsetof(.Llo876),0
	.d2locreg	%offsetof(.Llo877), %offsetof(.Llo878),0
	.d2locreg	%offsetof(.Llo879), %offsetof(.Llo880),0
	.d2locreg	%offsetof(.Llo881), %offsetof(.Llo882),0
	.d2locreg	%offsetof(.Llo883), %offsetof(.Llo884),0
	.d2locreg	%offsetof(.Llo885), %offsetof(.Llo886),0
	.d2locreg	%offsetof(.Llo887), %offsetof(.Llo888),0
	.d2locreg	%offsetof(.Llo889), %offsetof(.Llo890),0
	.d2locreg	%offsetof(.Llo891), %offsetof(.Llo892),0
	.d2locreg	%offsetof(.Llo893), %offsetof(.Llo894),0
	.d2locreg	%offsetof(.Llo895), %offsetof(.Llo896),0
	.d2locreg	%offsetof(.Llo897), %offsetof(.Llo898),0
	.d2locreg	%offsetof(.Llo899), %offsetof(.Llo900),0
	.d2locreg	%offsetof(.Llo901), %offsetof(.Llo902),0
	.d2locreg	%offsetof(.Llo903), %offsetof(.Llo904),0
	.d2locreg	%offsetof(.Llo905), %offsetof(.Llo906),0
	.d2locreg	%offsetof(.Llo907), %offsetof(.Llo908),0
	.d2locreg	%offsetof(.Llo909), %offsetof(.Llo910),0
	.d2locreg	%offsetof(.Llo911), %offsetof(.Llo912),0
	.d2locreg	%offsetof(.Llo913), %offsetof(.Llo914),0
	.d2locreg	%offsetof(.Llo915), %offsetof(.Llo916),0
	.d2locreg	%offsetof(.Llo917), %offsetof(.Llo918),0
	.d2locreg	%offsetof(.Llo919), %offsetof(.Llo920),0
	.d2locreg	%offsetof(.Llo921), %offsetof(.Llo922),0
	.d2locreg	%offsetof(.Llo923), %offsetof(.Llo924),0
	.d2locreg	%offsetof(.Llo925), %offsetof(.Llo926),0
	.d2locreg	%offsetof(.Llo927), %offsetof(.Llo928),0
	.d2locreg	%offsetof(.Llo929), %offsetof(.Llo930),0
	.d2locreg	%offsetof(.Llo931), %offsetof(.Llo932),0
	.d2locreg	%offsetof(.Llo933), %offsetof(.Llo934),0
	.d2locreg	%offsetof(.Llo935), %offsetof(.Llo936),0
	.d2locreg	%offsetof(.Llo937), %offsetof(.Llo938),0
	.d2locreg	%offsetof(.Llo939), %offsetof(.Llo940),0
	.d2locreg	%offsetof(.Llo941), %offsetof(.Llo942),0
	.d2locreg	%offsetof(.Llo943), %offsetof(.Llo944),0
	.d2locreg	%offsetof(.Llo945), %offsetof(.Llo946),0
	.d2locreg	%offsetof(.Llo947), %offsetof(.Llo948),0
	.d2locreg	%offsetof(.Llo949), %offsetof(.Llo950),0
	.d2locreg	%offsetof(.Llo951), %offsetof(.Llo952),0
	.d2locreg	%offsetof(.Llo953), %offsetof(.Llo954),0
	.d2locreg	%offsetof(.Llo955), %offsetof(.Llo956),0
	.d2locreg	%offsetof(.Llo957), %offsetof(.Llo958),0
	.d2locreg	%offsetof(.Llo959), %offsetof(.Llo960),0
	.d2locreg	%offsetof(.Llo961), %offsetof(.Llo962),0
	.d2locreg	%offsetof(.Llo963), %offsetof(.Llo964),0
	.d2locreg	%offsetof(.Llo965), %offsetof(.Llo966),0
	.d2locreg	%offsetof(.Llo967), %offsetof(.Llo968),0
	.d2locreg	%offsetof(.Llo969), %offsetof(.Llo970),0
	.d2locreg	%offsetof(.Llo971), %offsetof(.Llo972),0
	.d2locreg	%offsetof(.Llo973), %offsetof(.Llo974),0
	.d2locreg	%offsetof(.Llo975), %offsetof(.Llo976),0
	.d2locreg	%offsetof(.Llo977), %offsetof(.Llo978),0
	.d2locreg	%offsetof(.Llo979), %offsetof(.Llo980),0
	.d2locreg	%offsetof(.Llo981), %offsetof(.Llo982),0
	.d2locreg	%offsetof(.Llo983), %offsetof(.Llo984),0
	.d2locreg	%offsetof(.Llo985), %offsetof(.Llo986),0
	.d2locreg	%offsetof(.Llo987), %offsetof(.Llo988),0
	.d2locreg	%offsetof(.Llo989), %offsetof(.Llo990),0
	.d2locreg	%offsetof(.Llo991), %offsetof(.Llo992),0
	.d2locreg	%offsetof(.Llo993), %offsetof(.Llo994),0
	.d2locreg	%offsetof(.Llo995), %offsetof(.Llo996),0
	.d2locreg	%offsetof(.Llo997), %offsetof(.Llo998),0
	.d2locreg	%offsetof(.Llo999), %offsetof(.Llo1000),0
	.d2locreg	%offsetof(.Llo1001), %offsetof(.Llo1002),0
	.d2locreg	%offsetof(.Llo1003), %offsetof(.Llo1004),0
	.d2locreg	%offsetof(.Llo1005), %offsetof(.Llo1006),0
	.d2locreg	%offsetof(.Llo1007), %offsetof(.Llo1008),0
	.d2locreg	%offsetof(.Llo1009), %offsetof(.Llo1010),0
	.d2locreg	%offsetof(.Llo1011), %offsetof(.Llo1012),0
	.d2locreg	%offsetof(.Llo1013), %offsetof(.Llo1014),0
	.d2locreg	%offsetof(.Llo1015), %offsetof(.Llo1016),0
	.d2locreg	%offsetof(.Llo1017), %offsetof(.Llo1018),0
	.d2locreg	%offsetof(.Llo1019), %offsetof(.Llo1020),0
	.d2locreg	%offsetof(.Llo1021), %offsetof(.Llo1022),0
	.d2locreg	%offsetof(.Llo1023), %offsetof(.Llo1024),0
	.d2locreg	%offsetof(.Llo1025), %offsetof(.Llo1026),0
	.d2locreg	%offsetof(.Llo1027), %offsetof(.Llo1028),0
	.d2locreg	%offsetof(.Llo1029), %offsetof(.Llo1030),0
	.d2locreg	%offsetof(.Llo1031), %offsetof(.Llo1032),0
	.d2locreg	%offsetof(.Llo1033), %offsetof(.Llo1034),0
	.d2locreg	%offsetof(.Llo1035), %offsetof(.Llo1036),0
	.d2locreg	%offsetof(.Llo1037), %offsetof(.Llo1038),0
	.d2locreg	%offsetof(.Llo1039), %offsetof(.Llo1040),0
	.d2locreg	%offsetof(.Llo1041), %offsetof(.Llo1042),0
	.d2locreg	%offsetof(.Llo1043), %offsetof(.Llo1044),0
	.d2locreg	%offsetof(.Llo1045), %offsetof(.Llo1046),0
	.d2locreg	%offsetof(.Llo1047), %offsetof(.Llo1048),0
	.d2locreg	%offsetof(.Llo1049), %offsetof(.Llo1050),0
	.d2locreg	%offsetof(.Llo1051), %offsetof(.Llo1052),0
	.d2locreg	%offsetof(.Llo1053), %offsetof(.Llo1054),0
	.d2locreg	%offsetof(.Llo1055), %offsetof(.Llo1056),0
	.d2locreg	%offsetof(.Llo1057), %offsetof(.Llo1058),0
	.d2locreg	%offsetof(.Llo1059), %offsetof(.Llo1060),0
	.d2locreg	%offsetof(.Llo1061), %offsetof(.Llo1062),0
	.d2locreg	%offsetof(.Llo1063), %offsetof(.Llo1064),0
	.d2locreg	%offsetof(.Llo1065), %offsetof(.Llo1066),0
	.d2locreg	%offsetof(.Llo1067), %offsetof(.Llo1068),0
	.d2locreg	%offsetof(.Llo1069), %offsetof(.Llo1070),0
	.d2locreg	%offsetof(.Llo1071), %offsetof(.Llo1072),0
	.d2locreg	%offsetof(.Llo1073), %offsetof(.Llo1074),0
	.d2locreg	%offsetof(.Llo1075), %offsetof(.Llo1076),0
	.d2locreg	%offsetof(.Llo1077), %offsetof(.Llo1078),0
	.d2locreg	%offsetof(.Llo1079), %offsetof(.Llo1080),0
	.d2locreg	%offsetof(.Llo1081), %offsetof(.Llo1082),0
	.d2locreg	%offsetof(.Llo1083), %offsetof(.Llo1084),0
	.d2locreg	%offsetof(.Llo1085), %offsetof(.Llo1086),0
	.d2locreg	%offsetof(.Llo1087), %offsetof(.Llo1088),0
	.d2locreg	%offsetof(.Llo1089), %offsetof(.Llo1090),0
	.d2locreg	%offsetof(.Llo1091), %offsetof(.Llo1092),0
	.d2locreg	%offsetof(.Llo1093), %offsetof(.Llo1094),0
	.d2locreg	%offsetof(.Llo1095), %offsetof(.Llo1096),0
	.d2locreg	%offsetof(.Llo1097), %offsetof(.Llo1098),0
	.d2locreg	%offsetof(.Llo1099), %offsetof(.Llo1100),0
	.d2locreg	%offsetof(.Llo1101), %offsetof(.Llo1102),0
	.d2locreg	%offsetof(.Llo1103), %offsetof(.Llo1104),0
	.d2locreg	%offsetof(.Llo1105), %offsetof(.Llo1106),0
	.d2locreg	%offsetof(.Llo1107), %offsetof(.Llo1108),0
	.d2locreg	%offsetof(.Llo1109), %offsetof(.Llo1110),0
	.d2locreg	%offsetof(.Llo1111), %offsetof(.Llo1112),0
	.d2locreg	%offsetof(.Llo1113), %offsetof(.Llo1114),0
	.d2locreg	%offsetof(.Llo1115), %offsetof(.Llo1116),0
	.d2locreg	%offsetof(.Llo1117), %offsetof(.Llo1118),0
	.d2locreg	%offsetof(.Llo1119), %offsetof(.Llo1120),0
	.d2locreg	%offsetof(.Llo1121), %offsetof(.Llo1122),0
	.d2locreg	%offsetof(.Llo1123), %offsetof(.Llo1124),0
	.d2locreg	%offsetof(.Llo1125), %offsetof(.Llo1126),0
	.d2locreg	%offsetof(.Llo1127), %offsetof(.Llo1128),0
	.d2locreg	%offsetof(.Llo1129), %offsetof(.Llo1130),0
	.d2locreg	%offsetof(.Llo1131), %offsetof(.Llo1132),0
	.d2locreg	%offsetof(.Llo1133), %offsetof(.Llo1134),0
	.d2locreg	%offsetof(.Llo1135), %offsetof(.Llo1136),0
	.d2locreg	%offsetof(.Llo1137), %offsetof(.Llo1138),0
	.d2locreg	%offsetof(.Llo1139), %offsetof(.Llo1140),0
	.d2locreg	%offsetof(.Llo1141), %offsetof(.Llo1142),0
	.d2locreg	%offsetof(.Llo1143), %offsetof(.Llo1144),0
	.d2locreg	%offsetof(.Llo1145), %offsetof(.Llo1146),0
	.d2locreg	%offsetof(.Llo1147), %offsetof(.Llo1148),0
	.d2locreg	%offsetof(.Llo1149), %offsetof(.Llo1150),0
	.d2locreg	%offsetof(.Llo1151), %offsetof(.Llo1152),0
	.d2locreg	%offsetof(.Llo1153), %offsetof(.Llo1154),0
	.d2locreg	%offsetof(.Llo1155), %offsetof(.Llo1156),0
	.d2locreg	%offsetof(.Llo1157), %offsetof(.Llo1158),0
	.d2locreg	%offsetof(.Llo1159), %offsetof(.Llo1160),0
	.d2locreg	%offsetof(.Llo1161), %offsetof(.Llo1162),0
	.d2locreg	%offsetof(.Llo1163), %offsetof(.Llo1164),0
	.d2locreg	%offsetof(.Llo1165), %offsetof(.Llo1166),0
	.d2locreg	%offsetof(.Llo1167), %offsetof(.Llo1168),0
	.d2locreg	%offsetof(.Llo1169), %offsetof(.Llo1170),0
	.d2locreg	%offsetof(.Llo1171), %offsetof(.Llo1172),0
	.d2locreg	%offsetof(.Llo1173), %offsetof(.Llo1174),0
	.d2locreg	%offsetof(.Llo1175), %offsetof(.Llo1176),0
	.d2locreg	%offsetof(.Llo1177), %offsetof(.Llo1178),0
	.d2locreg	%offsetof(.Llo1179), %offsetof(.Llo1180),0
	.d2locreg	%offsetof(.Llo1181), %offsetof(.Llo1182),0
	.d2locreg	%offsetof(.Llo1183), %offsetof(.Llo1184),0
	.d2locreg	%offsetof(.Llo1185), %offsetof(.Llo1186),0
	.d2locreg	%offsetof(.Llo1187), %offsetof(.Llo1188),0
	.d2locreg	%offsetof(.Llo1189), %offsetof(.Llo1190),0
	.d2locreg	%offsetof(.Llo1191), %offsetof(.Llo1192),0
	.d2locreg	%offsetof(.Llo1193), %offsetof(.Llo1194),0
	.d2locreg	%offsetof(.Llo1195), %offsetof(.Llo1196),0
	.d2locreg	%offsetof(.Llo1197), %offsetof(.Llo1198),0
	.d2locreg	%offsetof(.Llo1199), %offsetof(.Llo1200),0
	.d2locreg	%offsetof(.Llo1201), %offsetof(.Llo1202),0
	.d2locreg	%offsetof(.Llo1203), %offsetof(.Llo1204),0
	.d2locreg	%offsetof(.Llo1205), %offsetof(.Llo1206),0
	.d2locreg	%offsetof(.Llo1207), %offsetof(.Llo1208),0
	.d2locreg	%offsetof(.Llo1209), %offsetof(.Llo1210),0
	.d2locreg	%offsetof(.Llo1211), %offsetof(.Llo1212),0
	.d2locreg	%offsetof(.Llo1213), %offsetof(.Llo1214),0
	.d2locreg	%offsetof(.Llo1215), %offsetof(.Llo1216),0
	.d2locreg	%offsetof(.Llo1217), %offsetof(.Llo1218),0
	.d2locreg	%offsetof(.Llo1219), %offsetof(.Llo1220),0
	.d2locreg	%offsetof(.Llo1221), %offsetof(.Llo1222),0
	.d2locreg	%offsetof(.Llo1223), %offsetof(.Llo1224),0
	.d2locreg	%offsetof(.Llo1225), %offsetof(.Llo663),0
	.d2locreg	%offsetof(.Llo1226), %offsetof(.Llo1227),6
	.d2locreg	%offsetof(.Llo1228), %offsetof(.Llo98),0
	.d2locend
.L4570:
	.d2locreg	%offsetof(.Llo99), %offsetof(.Llo1229),3
	.d2locreg	%offsetof(.Llo672), %offsetof(.Llo1230),3
	.d2locreg	%offsetof(.Llo674), %offsetof(.Llo1231),3
	.d2locreg	%offsetof(.Llo676), %offsetof(.Llo1232),3
	.d2locend
.L4572:
	.d2locreg	%offsetof(.Llo1233), %offsetof(.Llo1234),4
	.d2locreg	%offsetof(.Llo1235), %offsetof(.Llo134),5
	.d2locreg	%offsetof(.Llo1236), %offsetof(.Llo138),5
	.d2locreg	%offsetof(.Llo1237), %offsetof(.Llo142),5
	.d2locreg	%offsetof(.Llo145), %offsetof(.Llo146),5
	.d2locend
.L4574:
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo1238),0
	.d2locreg	%offsetof(.Llo1239), %offsetof(.Llo1240),0
	.d2locreg	%offsetof(.Llo1241), %offsetof(.Llo1242),0
	.d2locreg	%offsetof(.Llo1243), %offsetof(.Llo676),0
	.d2locreg	%offsetof(.Llo1244), %offsetof(.Llo1245),0
	.d2locreg	%offsetof(.Llo1246), %offsetof(.Llo1247),0
	.d2locend
.L4580:
	.d2locreg	%offsetof(.Llo127), %offsetof(.Llo1248),5
	.d2locend
.L4586:
	.d2locreg	%offsetof(.Llo128), %offsetof(.Llo1249),31
	.d2locreg	%offsetof(.Llo1250), %offsetof(.Llo1248),31
	.d2locend
.L4593:
	.d2locreg	%offsetof(.Llo1251), %offsetof(.Llo1252),3
	.d2locend
.L4594:
	.d2locreg	%offsetof(.Llo1251), %offsetof(.Llo1252),4
	.d2locend
.L4601:
	.d2locreg	%offsetof(.Llo1253), %offsetof(.Llo1254),4
	.d2locend
.L4607:
	.d2locreg	%offsetof(.Llo1255), %offsetof(.Llo1256),3
	.d2locend
.L4608:
	.d2locreg	%offsetof(.Llo1255), %offsetof(.Llo1256),4
	.d2locend
.L4610:
	.d2locreg	%offsetof(.Llo1257), %offsetof(.Llo1258),4
	.d2locend
.L4616:
	.d2locreg	%offsetof(.Llo1259), %offsetof(.Llo1260),3
	.d2locend
.L4617:
	.d2locreg	%offsetof(.Llo1259), %offsetof(.Llo1260),4
	.d2locend
.L4619:
	.d2locreg	%offsetof(.Llo1261), %offsetof(.Llo1262),4
	.d2locend
.L4625:
	.d2locreg	%offsetof(.Llo1263), %offsetof(.Llo1264),3
	.d2locend
.L4626:
	.d2locreg	%offsetof(.Llo1263), %offsetof(.Llo1264),4
	.d2locend
.L4628:
	.d2locreg	%offsetof(.Llo1265), %offsetof(.Llo1266),4
	.d2locend
.L4634:
	.d2locreg	%offsetof(.Llo1267), %offsetof(.Llo1268),3
	.d2locreg	%offsetof(.Llo1269), %offsetof(.Llo1270),5
	.d2locend
.L4635:
	.d2locreg	%offsetof(.Llo1267), %offsetof(.Llo1270),4
	.d2locend
.L4637:
	.d2locreg	%offsetof(.Llo1269), %offsetof(.Llo1271),3
	.d2locend
.L4643:
	.d2locreg	%offsetof(.Llo1272), %offsetof(.Llo1273),3
	.d2locend
.L4644:
	.d2locreg	%offsetof(.Llo1272), %offsetof(.Llo1274),4
	.d2locend
.L4646:
	.d2locreg	%offsetof(.Llo1274), %offsetof(.Llo1273),4
	.d2locend
.L4652:
	.d2locreg	%offsetof(.Llo1275), %offsetof(.Llo1276),3
	.d2locreg	%offsetof(.Llo1277), %offsetof(.Llo1278),5
	.d2locend
.L4653:
	.d2locreg	%offsetof(.Llo1275), %offsetof(.Llo1278),4
	.d2locend
.L4655:
	.d2locreg	%offsetof(.Llo1277), %offsetof(.Llo1279),3
	.d2locend
.L4661:
	.d2locreg	%offsetof(.Llo1280), %offsetof(.Llo1281),3
	.d2locend
.L4662:
	.d2locreg	%offsetof(.Llo1280), %offsetof(.Llo1282),4
	.d2locend
.L4664:
	.d2locreg	%offsetof(.Llo1282), %offsetof(.Llo1281),4
	.d2locend
.L4670:
	.d2locreg	%offsetof(.Llo1283), %offsetof(.Llo1284),3
	.d2locend
.L4672:
	.d2locreg	%offsetof(.Llo1285), %offsetof(.Llo1284),3
	.d2locend
.L4678:
	.d2locreg	%offsetof(.Llo1286), %offsetof(.Llo1287),3
	.d2locend
.L4680:
	.d2locreg	%offsetof(.Llo1287), %offsetof(.Llo1288),3
	.d2locend
.L4686:
	.d2locreg	%offsetof(.Llo1289), %offsetof(.Llo1290),3
	.d2locend
.L4688:
	.d2locreg	%offsetof(.Llo1291), %offsetof(.Llo1290),3
	.d2locend
.L4694:
	.d2locreg	%offsetof(.Llo1292), %offsetof(.Llo1293),3
	.d2locend
.L4696:
	.d2locreg	%offsetof(.Llo1293), %offsetof(.Llo1294),3
	.d2locend
.L4702:
	.d2locreg	%offsetof(.Llo1295), %offsetof(.Llo1296),3
	.d2locend
.L4703:
	.d2locreg	%offsetof(.Llo1295), %offsetof(.Llo1296),4
	.d2locend
.L4710:
	.d2locreg	%offsetof(.Llo1297), %offsetof(.Llo1298),4
	.d2locend
.L4716:
	.d2locreg	%offsetof(.Llo1299), %offsetof(.Llo1300),3
	.d2locend
.L4717:
	.d2locreg	%offsetof(.Llo1299), %offsetof(.Llo1301),4
	.d2locreg	%offsetof(.Llo1302), %offsetof(.Llo1303),5
	.d2locreg	%offsetof(.Llo1304), %offsetof(.Llo1300),4
	.d2locend
.L4719:
	.d2locreg	%offsetof(.Llo1301), %offsetof(.Llo1303),5
	.d2locend
.L4725:
	.d2locreg	%offsetof(.Llo1305), %offsetof(.Llo1306),3
	.d2locend
.L4726:
	.d2locreg	%offsetof(.Llo1305), %offsetof(.Llo1306),4
	.d2locend
.L4728:
	.d2locreg	%offsetof(.Llo1307), %offsetof(.Llo1308),4
	.d2locend
.L4734:
	.d2locreg	%offsetof(.Llo1309), %offsetof(.Llo1310),3
	.d2locend
.L4735:
	.d2locreg	%offsetof(.Llo1309), %offsetof(.Llo1311),4
	.d2locreg	%offsetof(.Llo1312), %offsetof(.Llo1313),5
	.d2locreg	%offsetof(.Llo1314), %offsetof(.Llo1310),4
	.d2locend
.L4737:
	.d2locreg	%offsetof(.Llo1311), %offsetof(.Llo1313),5
	.d2locend
.L4743:
	.d2locreg	%offsetof(.Llo1315), %offsetof(.Llo1316),3
	.d2locreg	%offsetof(.Llo1317), %offsetof(.Llo1318),5
	.d2locend
.L4744:
	.d2locreg	%offsetof(.Llo1315), %offsetof(.Llo1318),4
	.d2locend
.L4746:
	.d2locreg	%offsetof(.Llo1317), %offsetof(.Llo1319),3
	.d2locend
.L4752:
	.d2locreg	%offsetof(.Llo1320), %offsetof(.Llo1321),3
	.d2locend
.L4753:
	.d2locreg	%offsetof(.Llo1320), %offsetof(.Llo1322),4
	.d2locend
.L4755:
	.d2locreg	%offsetof(.Llo1322), %offsetof(.Llo1321),4
	.d2locend
.L4761:
	.d2locreg	%offsetof(.Llo1323), %offsetof(.Llo1324),3
	.d2locreg	%offsetof(.Llo1325), %offsetof(.Llo1326),5
	.d2locend
.L4762:
	.d2locreg	%offsetof(.Llo1323), %offsetof(.Llo1326),4
	.d2locend
.L4764:
	.d2locreg	%offsetof(.Llo1325), %offsetof(.Llo1327),3
	.d2locend
.L4770:
	.d2locreg	%offsetof(.Llo1328), %offsetof(.Llo1329),3
	.d2locend
.L4771:
	.d2locreg	%offsetof(.Llo1328), %offsetof(.Llo1330),4
	.d2locend
.L4773:
	.d2locreg	%offsetof(.Llo1330), %offsetof(.Llo1329),4
	.d2locend
.L4779:
	.d2locreg	%offsetof(.Llo1331), %offsetof(.Llo1332),3
	.d2locend
.L4781:
	.d2locreg	%offsetof(.Llo1332), %offsetof(.Llo1333),3
	.d2locend
.L4787:
	.d2locreg	%offsetof(.Llo1334), %offsetof(.Llo1335),3
	.d2locend
.L4789:
	.d2locreg	%offsetof(.Llo1335), %offsetof(.Llo1336),3
	.d2locend
.L4795:
	.d2locreg	%offsetof(.Llo1337), %offsetof(.Llo1338),3
	.d2locend
.L4797:
	.d2locreg	%offsetof(.Llo1338), %offsetof(.Llo1339),3
	.d2locend
.L4803:
	.d2locreg	%offsetof(.Llo1340), %offsetof(.Llo1341),3
	.d2locend
.L4805:
	.d2locreg	%offsetof(.Llo1341), %offsetof(.Llo1342),3
	.d2locend
.L4811:
	.d2locreg	%offsetof(.Llo1343), %offsetof(.Llo1344),3
	.d2locend
.L4812:
	.d2locreg	%offsetof(.Llo1343), %offsetof(.Llo1344),4
	.d2locend
.L4817:
	.d2locreg	%offsetof(.Llo1345), %offsetof(.Llo1346),4
	.d2locend
.L4823:
	.d2locreg	%offsetof(.Llo1347), %offsetof(.Llo1348),3
	.d2locend
.L4824:
	.d2locreg	%offsetof(.Llo1347), %offsetof(.Llo1348),4
	.d2locend
.L4826:
	.d2locreg	%offsetof(.Llo1349), %offsetof(.Llo1350),4
	.d2locend
.L4832:
	.d2locreg	%offsetof(.Llo1351), %offsetof(.Llo1352),3
	.d2locend
.L4833:
	.d2locreg	%offsetof(.Llo1351), %offsetof(.Llo1352),4
	.d2locend
.L4835:
	.d2locreg	%offsetof(.Llo1353), %offsetof(.Llo1354),4
	.d2locend
.L4841:
	.d2locreg	%offsetof(.Llo1355), %offsetof(.Llo1356),3
	.d2locend
.L4842:
	.d2locreg	%offsetof(.Llo1355), %offsetof(.Llo1356),4
	.d2locend
.L4844:
	.d2locreg	%offsetof(.Llo1357), %offsetof(.Llo1358),4
	.d2locend
.L4850:
	.d2locreg	%offsetof(.Llo1359), %offsetof(.Llo1360),3
	.d2locend
.L4851:
	.d2locreg	%offsetof(.Llo1359), %offsetof(.Llo1360),4
	.d2locend
.L4853:
	.d2locreg	%offsetof(.Llo1361), %offsetof(.Llo1360),4
	.d2locend
.L4859:
	.d2locreg	%offsetof(.Llo1362), %offsetof(.Llo1363),3
	.d2locend
.L4860:
	.d2locreg	%offsetof(.Llo1362), %offsetof(.Llo1364),4
	.d2locreg	%offsetof(.Llo1365), %offsetof(.Llo1366),4
	.d2locreg	%offsetof(.Llo1367), %offsetof(.Llo1368),0
	.d2locend
.L4862:
	.d2locreg	%offsetof(.Llo1364), %offsetof(.Llo1365),4
	.d2locend
.L4868:
	.d2locreg	%offsetof(.Llo1369), %offsetof(.Llo1370),3
	.d2locend
.L4869:
	.d2locreg	%offsetof(.Llo1369), %offsetof(.Llo1370),4
	.d2locend
.L4871:
	.d2locreg	%offsetof(.Llo1371), %offsetof(.Llo1370),4
	.d2locend
.L4877:
	.d2locreg	%offsetof(.Llo1372), %offsetof(.Llo1373),3
	.d2locend
.L4878:
	.d2locreg	%offsetof(.Llo1372), %offsetof(.Llo1374),4
	.d2locreg	%offsetof(.Llo1375), %offsetof(.Llo1376),4
	.d2locreg	%offsetof(.Llo1377), %offsetof(.Llo1378),0
	.d2locend
.L4880:
	.d2locreg	%offsetof(.Llo1374), %offsetof(.Llo1375),4
	.d2locend
.L4886:
	.d2locreg	%offsetof(.Llo1379), %offsetof(.Llo1380),3
	.d2locreg	%offsetof(.Llo1381), %offsetof(.Llo1382),3
	.d2locend
.L4888:
	.d2locreg	%offsetof(.Llo1380), %offsetof(.Llo1381),3
	.d2locend
.L4894:
	.d2locreg	%offsetof(.Llo1383), %offsetof(.Llo1384),3
	.d2locreg	%offsetof(.Llo1385), %offsetof(.Llo1386),3
	.d2locreg	%offsetof(.Llo1387), %offsetof(.Llo1388),0
	.d2locreg	%offsetof(.Llo1389), %offsetof(.Llo1390),3
	.d2locend
.L4896:
	.d2locreg	%offsetof(.Llo1384), %offsetof(.Llo1385),3
	.d2locend
.L4902:
	.d2locreg	%offsetof(.Llo1391), %offsetof(.Llo1392),3
	.d2locreg	%offsetof(.Llo1393), %offsetof(.Llo1394),3
	.d2locend
.L4904:
	.d2locreg	%offsetof(.Llo1392), %offsetof(.Llo1393),3
	.d2locend
.L4910:
	.d2locreg	%offsetof(.Llo1395), %offsetof(.Llo1396),3
	.d2locreg	%offsetof(.Llo1397), %offsetof(.Llo1398),3
	.d2locreg	%offsetof(.Llo1399), %offsetof(.Llo1400),0
	.d2locreg	%offsetof(.Llo1401), %offsetof(.Llo1402),3
	.d2locend
.L4912:
	.d2locreg	%offsetof(.Llo1396), %offsetof(.Llo1397),3
	.d2locend
.L4918:
	.d2locreg	%offsetof(.Llo1403), %offsetof(.Llo1404),3
	.d2locend
.L4919:
	.d2locreg	%offsetof(.Llo1403), %offsetof(.Llo1404),4
	.d2locend
.L4924:
	.d2locreg	%offsetof(.Llo1405), %offsetof(.Llo1406),4
	.d2locend
.L4930:
	.d2locreg	%offsetof(.Llo1407), %offsetof(.Llo1408),3
	.d2locend
.L4931:
	.d2locreg	%offsetof(.Llo1407), %offsetof(.Llo1408),4
	.d2locend
.L4933:
	.d2locreg	%offsetof(.Llo1409), %offsetof(.Llo1410),4
	.d2locend
.L4939:
	.d2locreg	%offsetof(.Llo1411), %offsetof(.Llo1412),3
	.d2locend
.L4940:
	.d2locreg	%offsetof(.Llo1411), %offsetof(.Llo1412),4
	.d2locend
.L4942:
	.d2locreg	%offsetof(.Llo1413), %offsetof(.Llo1414),4
	.d2locend
.L4948:
	.d2locreg	%offsetof(.Llo1415), %offsetof(.Llo1416),3
	.d2locend
.L4949:
	.d2locreg	%offsetof(.Llo1415), %offsetof(.Llo1416),4
	.d2locend
.L4951:
	.d2locreg	%offsetof(.Llo1417), %offsetof(.Llo1418),4
	.d2locend
.L4957:
	.d2locreg	%offsetof(.Llo1419), %offsetof(.Llo1420),3
	.d2locend
.L4958:
	.d2locreg	%offsetof(.Llo1419), %offsetof(.Llo1420),4
	.d2locend
.L4960:
	.d2locreg	%offsetof(.Llo1421), %offsetof(.Llo1420),4
	.d2locend
.L4966:
	.d2locreg	%offsetof(.Llo1422), %offsetof(.Llo1423),3
	.d2locend
.L4967:
	.d2locreg	%offsetof(.Llo1422), %offsetof(.Llo1424),4
	.d2locreg	%offsetof(.Llo1425), %offsetof(.Llo1426),4
	.d2locreg	%offsetof(.Llo1427), %offsetof(.Llo1428),0
	.d2locend
.L4969:
	.d2locreg	%offsetof(.Llo1424), %offsetof(.Llo1425),4
	.d2locend
.L4975:
	.d2locreg	%offsetof(.Llo1429), %offsetof(.Llo1430),3
	.d2locend
.L4976:
	.d2locreg	%offsetof(.Llo1429), %offsetof(.Llo1430),4
	.d2locend
.L4978:
	.d2locreg	%offsetof(.Llo1431), %offsetof(.Llo1430),4
	.d2locend
.L4984:
	.d2locreg	%offsetof(.Llo1432), %offsetof(.Llo1433),3
	.d2locend
.L4985:
	.d2locreg	%offsetof(.Llo1432), %offsetof(.Llo1434),4
	.d2locreg	%offsetof(.Llo1435), %offsetof(.Llo1436),4
	.d2locreg	%offsetof(.Llo1437), %offsetof(.Llo1438),0
	.d2locend
.L4987:
	.d2locreg	%offsetof(.Llo1434), %offsetof(.Llo1435),4
	.d2locend
.L4993:
	.d2locreg	%offsetof(.Llo1439), %offsetof(.Llo1440),3
	.d2locreg	%offsetof(.Llo1441), %offsetof(.Llo1442),3
	.d2locend
.L4995:
	.d2locreg	%offsetof(.Llo1440), %offsetof(.Llo1441),3
	.d2locend
.L5001:
	.d2locreg	%offsetof(.Llo1443), %offsetof(.Llo1444),3
	.d2locreg	%offsetof(.Llo1445), %offsetof(.Llo1446),3
	.d2locreg	%offsetof(.Llo1447), %offsetof(.Llo1448),0
	.d2locreg	%offsetof(.Llo1449), %offsetof(.Llo1450),3
	.d2locend
.L5003:
	.d2locreg	%offsetof(.Llo1444), %offsetof(.Llo1445),3
	.d2locend
.L5009:
	.d2locreg	%offsetof(.Llo1451), %offsetof(.Llo1452),3
	.d2locreg	%offsetof(.Llo1453), %offsetof(.Llo1454),3
	.d2locend
.L5011:
	.d2locreg	%offsetof(.Llo1452), %offsetof(.Llo1453),3
	.d2locend
.L5017:
	.d2locreg	%offsetof(.Llo1455), %offsetof(.Llo1456),3
	.d2locreg	%offsetof(.Llo1457), %offsetof(.Llo1458),3
	.d2locreg	%offsetof(.Llo1459), %offsetof(.Llo1460),0
	.d2locreg	%offsetof(.Llo1461), %offsetof(.Llo1462),3
	.d2locend
.L5019:
	.d2locreg	%offsetof(.Llo1456), %offsetof(.Llo1457),3
	.d2locend
.L5025:
	.d2locreg	%offsetof(.Llo1463), %offsetof(.Llo1464),3
	.d2locend
.L5026:
	.d2locreg	%offsetof(.Llo1463), %offsetof(.Llo1465),4
	.d2locreg	%offsetof(.Llo1466), %offsetof(.Llo1467),5
	.d2locreg	%offsetof(.Llo1468), %offsetof(.Llo1464),4
	.d2locend
.L5033:
	.d2locreg	%offsetof(.Llo1465), %offsetof(.Llo1467),5
	.d2locend
.L5039:
	.d2locreg	%offsetof(.Llo1469), %offsetof(.Llo1470),3
	.d2locend
.L5040:
	.d2locreg	%offsetof(.Llo1469), %offsetof(.Llo1471),4
	.d2locreg	%offsetof(.Llo1472), %offsetof(.Llo1473),5
	.d2locreg	%offsetof(.Llo1474), %offsetof(.Llo1470),4
	.d2locend
.L5042:
	.d2locreg	%offsetof(.Llo1471), %offsetof(.Llo1473),5
	.d2locend
.L5048:
	.d2locreg	%offsetof(.Llo1475), %offsetof(.Llo1476),3
	.d2locend
.L5049:
	.d2locreg	%offsetof(.Llo1475), %offsetof(.Llo1477),4
	.d2locreg	%offsetof(.Llo1478), %offsetof(.Llo1479),5
	.d2locreg	%offsetof(.Llo1480), %offsetof(.Llo1476),4
	.d2locend
.L5051:
	.d2locreg	%offsetof(.Llo1477), %offsetof(.Llo1479),5
	.d2locend
.L5057:
	.d2locreg	%offsetof(.Llo1481), %offsetof(.Llo1482),3
	.d2locend
.L5058:
	.d2locreg	%offsetof(.Llo1481), %offsetof(.Llo1483),4
	.d2locreg	%offsetof(.Llo1484), %offsetof(.Llo1485),5
	.d2locreg	%offsetof(.Llo1486), %offsetof(.Llo1482),4
	.d2locend
.L5060:
	.d2locreg	%offsetof(.Llo1483), %offsetof(.Llo1485),5
	.d2locend
.L5066:
	.d2locreg	%offsetof(.Llo1487), %offsetof(.Llo1488),3
	.d2locend
.L5067:
	.d2locreg	%offsetof(.Llo1487), %offsetof(.Llo1488),5
	.d2locend
.L5068:
	.d2locreg	%offsetof(.Llo1487), %offsetof(.Llo1488),6
	.d2locend
.L5072:
	.d2locreg	%offsetof(.Llo1489), %offsetof(.Llo1488),5
	.d2locend
.L5073:
	.d2locreg	%offsetof(.Llo1490), %offsetof(.Llo1488),6
	.d2locend
.L5081:
	.d2locreg	%offsetof(.Llo1491), %offsetof(.Llo1492),3
	.d2locend
.L5082:
	.d2locreg	%offsetof(.Llo1491), %offsetof(.Llo1492),5
	.d2locend
.L5083:
	.d2locreg	%offsetof(.Llo1491), %offsetof(.Llo1493),6
	.d2locend
.L5087:
	.d2locreg	%offsetof(.Llo1494), %offsetof(.Llo1492),5
	.d2locend
.L5088:
	.d2locreg	%offsetof(.Llo1491), %offsetof(.Llo1495),30
	.d2locreg	%offsetof(.Llo1496), %offsetof(.Llo1492),6
	.d2locend
.L5096:
	.d2locreg	%offsetof(.Llo1497), %offsetof(.Llo1498),3
	.d2locend
.L5097:
	.d2locreg	%offsetof(.Llo1497), %offsetof(.Llo1498),5
	.d2locend
.L5098:
	.d2locreg	%offsetof(.Llo1497), %offsetof(.Llo1498),6
	.d2locend
.L5102:
	.d2locreg	%offsetof(.Llo1499), %offsetof(.Llo1498),5
	.d2locend
.L5103:
	.d2locreg	%offsetof(.Llo1500), %offsetof(.Llo1498),6
	.d2locend
.L5111:
	.d2locreg	%offsetof(.Llo1501), %offsetof(.Llo1502),3
	.d2locend
.L5112:
	.d2locreg	%offsetof(.Llo1501), %offsetof(.Llo1502),5
	.d2locend
.L5113:
	.d2locreg	%offsetof(.Llo1501), %offsetof(.Llo1503),6
	.d2locend
.L5117:
	.d2locreg	%offsetof(.Llo1504), %offsetof(.Llo1502),5
	.d2locend
.L5118:
	.d2locreg	%offsetof(.Llo1501), %offsetof(.Llo1505),30
	.d2locreg	%offsetof(.Llo1506), %offsetof(.Llo1502),6
	.d2locend
.L5126:
	.d2locreg	%offsetof(.Llo1507), %offsetof(.Llo1508),3
	.d2locreg	%offsetof(.Llo1509), %offsetof(.Llo1510),3
	.d2locend
.L5127:
	.d2locreg	%offsetof(.Llo1507), %offsetof(.Llo1511),4
	.d2locreg	%offsetof(.Llo1512), %offsetof(.Llo1513),4
	.d2locend
.L5131:
	.d2locreg	%offsetof(.Llo1508), %offsetof(.Llo1509),3
	.d2locend
.L5132:
	.d2locreg	%offsetof(.Llo1511), %offsetof(.Llo1512),4
	.d2locend
.L5140:
	.d2locreg	%offsetof(.Llo1514), %offsetof(.Llo1515),3
	.d2locreg	%offsetof(.Llo1516), %offsetof(.Llo1517),5
	.d2locend
.L5141:
	.d2locreg	%offsetof(.Llo1514), %offsetof(.Llo1516),4
	.d2locend
.L5145:
	.d2locreg	%offsetof(.Llo1515), %offsetof(.Llo1517),5
	.d2locreg	%offsetof(.Llo1518), %offsetof(.Llo1519),4
	.d2locend
.L5146:
	.d2locreg	%offsetof(.Llo1516), %offsetof(.Llo1520),4
	.d2locreg	%offsetof(.Llo1521), %offsetof(.Llo1522),6
	.d2locend
.L5154:
	.d2locreg	%offsetof(.Llo1523), %offsetof(.Llo1524),3
	.d2locreg	%offsetof(.Llo1525), %offsetof(.Llo1526),3
	.d2locend
.L5155:
	.d2locreg	%offsetof(.Llo1523), %offsetof(.Llo1527),4
	.d2locreg	%offsetof(.Llo1528), %offsetof(.Llo1529),4
	.d2locend
.L5159:
	.d2locreg	%offsetof(.Llo1524), %offsetof(.Llo1525),3
	.d2locend
.L5160:
	.d2locreg	%offsetof(.Llo1527), %offsetof(.Llo1528),4
	.d2locend
.L5168:
	.d2locreg	%offsetof(.Llo1530), %offsetof(.Llo1531),3
	.d2locreg	%offsetof(.Llo1532), %offsetof(.Llo1533),5
	.d2locend
.L5169:
	.d2locreg	%offsetof(.Llo1530), %offsetof(.Llo1532),4
	.d2locend
.L5173:
	.d2locreg	%offsetof(.Llo1531), %offsetof(.Llo1533),5
	.d2locreg	%offsetof(.Llo1534), %offsetof(.Llo1535),4
	.d2locend
.L5174:
	.d2locreg	%offsetof(.Llo1532), %offsetof(.Llo1536),4
	.d2locreg	%offsetof(.Llo1537), %offsetof(.Llo1538),6
	.d2locend
.L5182:
	.d2locreg	%offsetof(.Llo1539), %offsetof(.Llo1540),3
	.d2locend
.L5183:
	.d2locreg	%offsetof(.Llo1539), %offsetof(.Llo1541),4
	.d2locreg	%offsetof(.Llo1542), %offsetof(.Llo1543),5
	.d2locreg	%offsetof(.Llo1544), %offsetof(.Llo1540),4
	.d2locend
.L5190:
	.d2locreg	%offsetof(.Llo1541), %offsetof(.Llo1543),5
	.d2locend
.L5196:
	.d2locreg	%offsetof(.Llo1545), %offsetof(.Llo1546),3
	.d2locend
.L5197:
	.d2locreg	%offsetof(.Llo1545), %offsetof(.Llo1547),4
	.d2locreg	%offsetof(.Llo1548), %offsetof(.Llo1549),5
	.d2locreg	%offsetof(.Llo1550), %offsetof(.Llo1546),4
	.d2locend
.L5199:
	.d2locreg	%offsetof(.Llo1547), %offsetof(.Llo1549),5
	.d2locend
.L5205:
	.d2locreg	%offsetof(.Llo1551), %offsetof(.Llo1552),3
	.d2locend
.L5206:
	.d2locreg	%offsetof(.Llo1551), %offsetof(.Llo1553),4
	.d2locreg	%offsetof(.Llo1554), %offsetof(.Llo1555),5
	.d2locreg	%offsetof(.Llo1556), %offsetof(.Llo1552),4
	.d2locend
.L5208:
	.d2locreg	%offsetof(.Llo1553), %offsetof(.Llo1555),5
	.d2locend
.L5214:
	.d2locreg	%offsetof(.Llo1557), %offsetof(.Llo1558),3
	.d2locend
.L5215:
	.d2locreg	%offsetof(.Llo1557), %offsetof(.Llo1559),4
	.d2locreg	%offsetof(.Llo1560), %offsetof(.Llo1561),5
	.d2locreg	%offsetof(.Llo1562), %offsetof(.Llo1558),4
	.d2locend
.L5217:
	.d2locreg	%offsetof(.Llo1559), %offsetof(.Llo1561),5
	.d2locend
.L5223:
	.d2locreg	%offsetof(.Llo1563), %offsetof(.Llo1564),3
	.d2locend
.L5224:
	.d2locreg	%offsetof(.Llo1563), %offsetof(.Llo1564),5
	.d2locend
.L5225:
	.d2locreg	%offsetof(.Llo1563), %offsetof(.Llo1564),6
	.d2locend
.L5229:
	.d2locreg	%offsetof(.Llo1565), %offsetof(.Llo1564),5
	.d2locend
.L5230:
	.d2locreg	%offsetof(.Llo1566), %offsetof(.Llo1564),6
	.d2locend
.L5238:
	.d2locreg	%offsetof(.Llo1567), %offsetof(.Llo1568),3
	.d2locend
.L5239:
	.d2locreg	%offsetof(.Llo1567), %offsetof(.Llo1568),5
	.d2locend
.L5240:
	.d2locreg	%offsetof(.Llo1567), %offsetof(.Llo1569),6
	.d2locend
.L5244:
	.d2locreg	%offsetof(.Llo1570), %offsetof(.Llo1568),5
	.d2locend
.L5245:
	.d2locreg	%offsetof(.Llo1567), %offsetof(.Llo1571),30
	.d2locreg	%offsetof(.Llo1572), %offsetof(.Llo1568),6
	.d2locend
.L5253:
	.d2locreg	%offsetof(.Llo1573), %offsetof(.Llo1574),3
	.d2locend
.L5254:
	.d2locreg	%offsetof(.Llo1573), %offsetof(.Llo1574),5
	.d2locend
.L5255:
	.d2locreg	%offsetof(.Llo1573), %offsetof(.Llo1574),6
	.d2locend
.L5259:
	.d2locreg	%offsetof(.Llo1575), %offsetof(.Llo1574),5
	.d2locend
.L5260:
	.d2locreg	%offsetof(.Llo1576), %offsetof(.Llo1574),6
	.d2locend
.L5268:
	.d2locreg	%offsetof(.Llo1577), %offsetof(.Llo1578),3
	.d2locend
.L5269:
	.d2locreg	%offsetof(.Llo1577), %offsetof(.Llo1578),5
	.d2locend
.L5270:
	.d2locreg	%offsetof(.Llo1577), %offsetof(.Llo1579),6
	.d2locend
.L5274:
	.d2locreg	%offsetof(.Llo1580), %offsetof(.Llo1578),5
	.d2locend
.L5275:
	.d2locreg	%offsetof(.Llo1577), %offsetof(.Llo1581),30
	.d2locreg	%offsetof(.Llo1582), %offsetof(.Llo1578),6
	.d2locend
.L5283:
	.d2locreg	%offsetof(.Llo1583), %offsetof(.Llo1584),3
	.d2locreg	%offsetof(.Llo1585), %offsetof(.Llo1586),3
	.d2locend
.L5284:
	.d2locreg	%offsetof(.Llo1583), %offsetof(.Llo1587),4
	.d2locreg	%offsetof(.Llo1588), %offsetof(.Llo1589),4
	.d2locend
.L5288:
	.d2locreg	%offsetof(.Llo1584), %offsetof(.Llo1585),3
	.d2locend
.L5289:
	.d2locreg	%offsetof(.Llo1587), %offsetof(.Llo1588),4
	.d2locend
.L5297:
	.d2locreg	%offsetof(.Llo1590), %offsetof(.Llo1591),3
	.d2locreg	%offsetof(.Llo1592), %offsetof(.Llo1593),5
	.d2locend
.L5298:
	.d2locreg	%offsetof(.Llo1590), %offsetof(.Llo1592),4
	.d2locend
.L5302:
	.d2locreg	%offsetof(.Llo1591), %offsetof(.Llo1593),5
	.d2locreg	%offsetof(.Llo1594), %offsetof(.Llo1595),4
	.d2locend
.L5303:
	.d2locreg	%offsetof(.Llo1592), %offsetof(.Llo1596),4
	.d2locreg	%offsetof(.Llo1597), %offsetof(.Llo1598),6
	.d2locend
.L5311:
	.d2locreg	%offsetof(.Llo1599), %offsetof(.Llo1600),3
	.d2locreg	%offsetof(.Llo1601), %offsetof(.Llo1602),3
	.d2locend
.L5312:
	.d2locreg	%offsetof(.Llo1599), %offsetof(.Llo1603),4
	.d2locreg	%offsetof(.Llo1604), %offsetof(.Llo1605),4
	.d2locend
.L5316:
	.d2locreg	%offsetof(.Llo1600), %offsetof(.Llo1601),3
	.d2locend
.L5317:
	.d2locreg	%offsetof(.Llo1603), %offsetof(.Llo1604),4
	.d2locend
.L5325:
	.d2locreg	%offsetof(.Llo1606), %offsetof(.Llo1607),3
	.d2locreg	%offsetof(.Llo1608), %offsetof(.Llo1609),5
	.d2locend
.L5326:
	.d2locreg	%offsetof(.Llo1606), %offsetof(.Llo1608),4
	.d2locend
.L5330:
	.d2locreg	%offsetof(.Llo1607), %offsetof(.Llo1609),5
	.d2locreg	%offsetof(.Llo1610), %offsetof(.Llo1611),4
	.d2locend
.L5331:
	.d2locreg	%offsetof(.Llo1608), %offsetof(.Llo1612),4
	.d2locreg	%offsetof(.Llo1613), %offsetof(.Llo1614),6
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "vstar_letoh64_value_sint"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "vstar_betoh64_value_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htole64_value_sint"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "vstar_htobe64_value_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_letoh64_sint"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "vstar_betoh64_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htole64_sint"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "vstar_htobe64_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_lebuftoh64_sint"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "vstar_bebuftoh64_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_hbuftole64_sint"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "vstar_hbuftobe64_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_letoh64_value"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "vstar_betoh64_value"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htole64_value"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "vstar_htobe64_value"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_letoh64"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "vstar_betoh64"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htole64"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "vstar_htobe64"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_lebuftoh64"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "vstar_bebuftoh64"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_hbuftole64"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "vstar_hbuftobe64"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_letoh32_value_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_betoh32_value_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htole32_value_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htobe32_value_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_letoh32_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_betoh32_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htole32_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htobe32_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_lebuftoh32_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_bebuftoh32_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_hbuftole32_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_hbuftobe32_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_letoh32_value"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_betoh32_value"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htole32_value"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htobe32_value"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_letoh32"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_betoh32"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htole32"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htobe32"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_lebuftoh32"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_bebuftoh32"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_hbuftole32"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_hbuftobe32"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_letoh16_value_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_betoh16_value_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htole16_value_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htobe16_value_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_letoh16_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_betoh16_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htole16_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htobe16_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_lebuftoh16_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_bebuftoh16_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_hbuftole16_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_hbuftobe16_sint"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_letoh16_value"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_betoh16_value"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htole16_value"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htobe16_value"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_letoh16"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_betoh16"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htole16"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_htobe16"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_lebuftoh16"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_bebuftoh16"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_hbuftole16"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_hbuftobe16"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "vstar_cmp"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "vstar_set"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "vstar_copy"
	.wrcm.nint32 "frameSize", 32
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Vstar_Bits.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Vstar_Bits.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Vstar_Bits.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Vstar_Bits.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Vstar_Bits.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Vstar_Bits.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Library\VSTAR_Bits\ssc\make\..\src\Vstar_Bits.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
