#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Ioc.c"
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
# FUNC (void, OS_CODE) OS_IOC_Init ( VAR (void, AUTOMATIC) ) /* KW METRICS.E.Number_of_statements */
	.section	.Os_TEXT,,c
	.align		2
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11396:
	.section	.Os_TEXT,,c
#$$ld
.L11392:
	.0byte		.L11390
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"gen\\MPC5746R_ECU\\WindRiver\\Ioc.c"
        .d2line         179,22
#$$ld
.L11399:

#$$bf	OS_IOC_Init,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.globl		OS_IOC_Init
	.d2_cfa_start __cie
OS_IOC_Init:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     /* Initialize all Ioc resources */
# 
#     OS_IOC_HEAD   ( IOC_MasterToMaster ) = (Os_IOC_ChannelSizeType) 0U; /* KW STRONG.TYPE.ASSIGN.ZERO */
	.d2line		183
	diab.li		r0,0
	lis		r4,IOC_MasterToMaster_Stat@ha
	lwz		r3,IOC_MasterToMaster_Stat@l(r4)
	sth		r0,0(r3)
#     OS_IOC_MCOUNT ( IOC_MasterToMaster ) = (Os_IOC_ChannelSizeType) 0U; /* KW STRONG.TYPE.ASSIGN.ZERO */
	.d2line		184
	lwz		r3,IOC_MasterToMaster_Stat@l(r4)
	sth		r0,2(r3)
#     OS_IOC_STATUS ( IOC_MasterToMaster ) = IOC_E_OK;
	.d2line		185
	lwz		r3,IOC_MasterToMaster_Stat@l(r4)
	stb		r0,4(r3)
# 
#     OS_IOC_HEAD   ( IocNto1 ) = (Os_IOC_ChannelSizeType) 0U; /* KW STRONG.TYPE.ASSIGN.ZERO */
	.d2line		187
	lis		r4,IocNto1_Stat@ha
	lwz		r3,IocNto1_Stat@l(r4)
	sth		r0,0(r3)
#     OS_IOC_MCOUNT ( IocNto1 ) = (Os_IOC_ChannelSizeType) 0U; /* KW STRONG.TYPE.ASSIGN.ZERO */
	.d2line		188
	lwz		r3,IocNto1_Stat@l(r4)
	sth		r0,2(r3)
#     OS_IOC_STATUS ( IocNto1 ) = IOC_E_OK;
	.d2line		189
	lwz		r3,IocNto1_Stat@l(r4)
	stb		r0,4(r3)
# 
#     OS_IOC_HEAD   ( OsIocCommunication ) = (Os_IOC_ChannelSizeType) 0U; /* KW STRONG.TYPE.ASSIGN.ZERO */
	.d2line		191
	lis		r4,OsIocCommunication_Stat@ha
	lwz		r3,OsIocCommunication_Stat@l(r4)
	sth		r0,0(r3)
#     OS_IOC_MCOUNT ( OsIocCommunication ) = (Os_IOC_ChannelSizeType) 0U; /* KW STRONG.TYPE.ASSIGN.ZERO */
	.d2line		192
	lwz		r3,OsIocCommunication_Stat@l(r4)
	sth		r0,2(r3)
#     OS_IOC_STATUS ( OsIocCommunication ) = IOC_E_OK;
	.d2line		193
	lwz		r3,OsIocCommunication_Stat@l(r4)
	stb		r0,4(r3)
	.section	.Os_TEXT,,c
.L11403:
# 
#     /* Setup OsIocInitValue if any */
# 
#     /* IocNto1 */
#     {
#         VAR   (Os_IOC_ChannelSizeType, AUTOMATIC)  newIndex;
#         P2VAR (IocNto1ChannelType, AUTOMATIC, OS_APPL_DATA) newDataPtr;
# 
#         newIndex = (Os_IOC_ChannelSizeType)OS_IOC_NEXTHEAD(IocNto1); /* KW MISRA.CAST.INT */
	.d2line		202
	lis		r3,IocNto1_Stat@ha		# newDataPtr=r3
.Llo7:
	lwz		r4,IocNto1_Stat@l(r3)		# newDataPtr=r3
	lhz		r5,0(r4)		# newIndex=r5
.Llo1:
	se_addi		r5,1		# newIndex=r5 newIndex=r5
	rlwinm		r5,r5,0,16,31		# newIndex=r5 newIndex=r5
	lis		r4,(IocNto1_Stat+4)@ha
	lhz		r4,(IocNto1_Stat+4)@l(r4)
	divwu		r0,r5,r4		# newIndex=r0 newIndex=r5
	mullw		r0,r0,r4		# newIndex=r0 newIndex=r0
	subf		r0,r0,r5		# newIndex=r0 newIndex=r0 newIndex=r5
	mr		r5,r0		# newIndex=r5 newIndex=r0
#         OS_IOC_HEAD   ( IocNto1 ) = newIndex;
	.d2line		203
.Llo2:
	lwz		r4,IocNto1_Stat@l(r3)		# newDataPtr=r3
.Llo3:
	sth		r0,0(r4)		# newIndex=r0
#         OS_IOC_MCOUNT ( IocNto1 ) ++;
	.d2line		204
	lwz		r4,IocNto1_Stat@l(r3)		# newDataPtr=r3
	lhz		r3,2(r4)		# newDataPtr=r3
	se_addi		r3,1		# newDataPtr=r3 newDataPtr=r3
	sth		r3,2(r4)		# newDataPtr=r3
# 
#         newDataPtr = &( (IocNto1ChannelType * ) OS_IOC_DATAPTR ( IocNto1 ) )[ newIndex ]; /* KW MISRA.EXPR.PARENS MISRA.PTR.ARITH MISRA.CAST.CONST */
	.d2line		206
	lis		r3,(IocNto1_Stat+8)@ha		# newDataPtr=r3
	lwz		r3,(IocNto1_Stat+8)@l(r3)		# newDataPtr=r3 newDataPtr=r3
	rlwinm		r5,r5,3,13,28		# newIndex=r5 newIndex=r5
	se_add		r3,r5		# newDataPtr=r3 newDataPtr=r3 newIndex=r5
	mr		r3,r3		# newDataPtr=r3 newDataPtr=r3
#         newDataPtr->IocNto1_0 = (uint32)~0; /* KW PORTING.CAST.PTR STRONG.TYPE.ASSIGN.CONSTMISRA.LITERAL.UNSIGNED.SUFFIX */
	.d2line		207
	diab.li		r0,-1		# newIndex=r0
	stw		r0,0(r3)		# newDataPtr=r3 newIndex=r0
#         newDataPtr->IocNto1_1 = (uint8)~0; /* KW PORTING.CAST.PTR STRONG.TYPE.ASSIGN.CONSTMISRA.LITERAL.UNSIGNED.SUFFIX */
	.d2line		208
	diab.li		r0,255		# newIndex=r0
	stb		r0,4(r3)		# newDataPtr=r3 newIndex=r0
	.section	.Os_TEXT,,c
.L11404:
	.section	.Os_TEXT,,c
.L11417:
#     }
# 
#     /* OsIocCommunication */
#     {
#         VAR   (Os_IOC_ChannelSizeType, AUTOMATIC)  newIndex;
#         P2VAR (OsIocCommunicationChannelType, AUTOMATIC, OS_APPL_DATA) newDataPtr;
# 
#         newIndex = (Os_IOC_ChannelSizeType)OS_IOC_NEXTHEAD(OsIocCommunication); /* KW MISRA.CAST.INT */
	.d2line		216
.Llo4:
	lis		r4,OsIocCommunication_Stat@ha
	lwz		r3,OsIocCommunication_Stat@l(r4)		# newDataPtr=r3
.Llo8:
	lhz		r5,0(r3)		# newIndex=r5 newDataPtr=r3
.Llo5:
	se_addi		r5,1		# newIndex=r5 newIndex=r5
	rlwinm		r5,r5,0,16,31		# newIndex=r5 newIndex=r5
	lis		r3,(OsIocCommunication_Stat+4)@ha		# newDataPtr=r3
	lhz		r3,(OsIocCommunication_Stat+4)@l(r3)		# newDataPtr=r3 newDataPtr=r3
	divwu		r0,r5,r3		# newIndex=r0 newIndex=r5 newDataPtr=r3
	mullw		r0,r0,r3		# newIndex=r0 newIndex=r0 newDataPtr=r3
	subf		r0,r0,r5		# newIndex=r0 newIndex=r0 newIndex=r5
.Llo10:
	mr		r5,r0		# newIndex=r5 newIndex=r0
#         OS_IOC_HEAD   ( OsIocCommunication ) = newIndex;
	.d2line		217
.Llo6:
	lwz		r3,OsIocCommunication_Stat@l(r4)		# newDataPtr=r3
	sth		r0,0(r3)		# newDataPtr=r3 newIndex=r0
#         OS_IOC_MCOUNT ( OsIocCommunication ) ++;
	.d2line		218
	lwz		r4,OsIocCommunication_Stat@l(r4)
	lhz		r3,2(r4)		# newDataPtr=r3
	se_addi		r3,1		# newDataPtr=r3 newDataPtr=r3
	sth		r3,2(r4)		# newDataPtr=r3
# 
#         newDataPtr = &( (OsIocCommunicationChannelType * ) OS_IOC_DATAPTR ( OsIocCommunication ) )[ newIndex ]; /* KW MISRA.EXPR.PARENS MISRA.PTR.ARITH MISRA.CAST.CONST */
	.d2line		220
	lis		r3,(OsIocCommunication_Stat+8)@ha		# newDataPtr=r3
	lwz		r3,(OsIocCommunication_Stat+8)@l(r3)		# newDataPtr=r3 newDataPtr=r3
	rlwinm		r5,r5,2,14,29		# newIndex=r5 newIndex=r5
	se_add		r3,r5		# newDataPtr=r3 newDataPtr=r3 newIndex=r5
.Llo9:
	mr		r3,r3		# newDataPtr=r3 newDataPtr=r3
#         newDataPtr->OsIocCommunication_0 = (uint32)~0; /* KW PORTING.CAST.PTR STRONG.TYPE.ASSIGN.CONSTMISRA.LITERAL.UNSIGNED.SUFFIX */
	.d2line		221
	diab.li		r0,-1		# newIndex=r0
	stw		r0,0(r3)		# newDataPtr=r3 newIndex=r0
	.section	.Os_TEXT,,c
.L11418:
#     }
# }
	.d2line		223
	.d2epilogue_begin
.Llo11:
	lwz		r0,20(r1)		# newIndex=r0
	mtspr		lr,r0		# newIndex=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11400:
	.type		OS_IOC_Init,@function
	.size		OS_IOC_Init,.-OS_IOC_Init
# Number of nodes = 158

# Allocations for OS_IOC_Init
#	?a4		$$2365
#	?a5		$$2364
#	?a6		newIndex
#	?a7		newDataPtr
#	?a8		newIndex
#	?a9		newDataPtr
# FUNC (Std_ReturnType, OS_CODE) IocWrite_IOC_MasterToMaster (
	.align		2
	.section	.Os_TEXT,,c
        .d2line         235,32
#$$ld
.L11430:

#$$bf	IocWrite_IOC_MasterToMaster,interprocedural,rasave,nostackparams
	.globl		IocWrite_IOC_MasterToMaster
	.d2_cfa_start __cie
IocWrite_IOC_MasterToMaster:
.Llo12:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# IN0=r31 IN0=r3
	.d2prologue_end
#         P2VAR (sint32, AUTOMATIC, OS_APPL_DATA) IN0 ) /* KW MISRA.PPARAM.NEEDS.CONST */
# {
#     VAR (Std_ReturnType, AUTOMATIC)  retVal;
# 
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_SusAllInt();
	.d2line		240
	bl		OS_COREID_SYS_CALL
.Llo13:
	rlwinm		r0,r3,3,13,28
	lis		r3,(Os_PublicData+4)@ha
	e_add16i		r3,r3,(Os_PublicData+4)@l
	lwzx		r3,r3,r0
	lwz		r3,0(r3)
	lwz		r0,8(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     ( (IOC_MasterToMasterChannelType * ) OS_IOC_DATAPTR ( IOC_MasterToMaster ) )->IOC_MasterToMaster_0 = IN0; /* KW MISRA.EXPR.PARENS MISRA.CAST.CONST */
	.d2line		242
.Llo14:
	lis		r3,(IOC_MasterToMaster_Stat+8)@ha
	lwz		r3,(IOC_MasterToMaster_Stat+8)@l(r3)
	stw		r31,0(r3)		# IN0=r31
#     OS_IOC_MCOUNT ( IOC_MasterToMaster ) = (Os_IOC_ChannelSizeType)1U; /* KW STRONG.TYPE.ASSIGN.CONST */
	.d2line		243
	diab.li		r0,1
	lis		r3,IOC_MasterToMaster_Stat@ha
	lwz		r3,IOC_MasterToMaster_Stat@l(r3)
	sth		r0,2(r3)
#     retVal = IOC_E_OK;
	.d2line		244
	diab.li		r31,0		# retVal=r31
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_ResAllInt();
	.d2line		245
.Llo15:
	bl		OS_COREID_SYS_CALL
	rlwinm		r0,r3,3,13,28
	lis		r3,(Os_PublicData+4)@ha
	e_add16i		r3,r3,(Os_PublicData+4)@l
	lwzx		r3,r3,r0
	lwz		r3,0(r3)
	lwz		r0,12(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     return retVal;
	.d2line		247
	rlwinm		r3,r31,0,24,31		# retVal=r31
# }
	.d2line		248
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo16:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11431:
	.type		IocWrite_IOC_MasterToMaster,@function
	.size		IocWrite_IOC_MasterToMaster,.-IocWrite_IOC_MasterToMaster
# Number of nodes = 63

# Allocations for IocWrite_IOC_MasterToMaster
#	?a4		IN0
#	?a5		$$2367
#	?a6		$$2366
#	?a7		retVal
# FUNC (Std_ReturnType, OS_CODE) IocRead_IOC_MasterToMaster (
	.align		2
	.section	.Os_TEXT,,c
        .d2line         257,32
#$$ld
.L11444:

#$$bf	IocRead_IOC_MasterToMaster,interprocedural,rasave,nostackparams
	.globl		IocRead_IOC_MasterToMaster
	.d2_cfa_start __cie
IocRead_IOC_MasterToMaster:
.Llo17:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# OUT0=r31 OUT0=r3
	.d2prologue_end
#         P2VAR (sint32, AUTOMATIC, OS_APPL_DATA) OUT0 ) /* KW MISRA.PPARAM.NEEDS.CONST */
# {
#     VAR (Std_ReturnType, AUTOMATIC)  retVal;
# 
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_SusAllInt();
	.d2line		262
	bl		OS_COREID_SYS_CALL
.Llo18:
	rlwinm		r0,r3,3,13,28
	lis		r3,(Os_PublicData+4)@ha
	e_add16i		r3,r3,(Os_PublicData+4)@l
	lwzx		r3,r3,r0
	lwz		r3,0(r3)
	lwz		r0,8(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     if ( (Os_IOC_ChannelSizeType)0 == OS_IOC_MCOUNT ( IOC_MasterToMaster ) )
	.d2line		264
.Llo19:
	lis		r3,IOC_MasterToMaster_Stat@ha
	lwz		r3,IOC_MasterToMaster_Stat@l(r3)
	lhz		r0,2(r3)
	se_cmpi		r0,0
	bc		0,2,.L11358	# ne
#     {
#         retVal = IOC_E_NO_DATA; 
	.d2line		266
.Llo20:
	diab.li		r31,131		# retVal=r31
.Llo21:
	b		.L11359
.L11358:
#     }
#     else
#     {
#         * OUT0 = ( (IOC_MasterToMasterChannelType * ) OS_IOC_DATAPTR ( IOC_MasterToMaster ) )->IOC_MasterToMaster_0; /* MISRA.EXPR.PARENS KW MISRA.CAST.CONST */
	.d2line		270
.Llo23:
	lis		r3,(IOC_MasterToMaster_Stat+8)@ha
	lwz		r3,(IOC_MasterToMaster_Stat+8)@l(r3)
	lwz		r0,0(r3)
	stw		r0,0(r31)		# OUT0=r31
#         OS_IOC_MCOUNT ( IOC_MasterToMaster ) = (Os_IOC_ChannelSizeType)0; /* KW STRONG.TYPE.ASSIGN.CONST STRONG.TYPE.ASSIGN.ZERO */
	.d2line		271
	diab.li		r31,0		# OUT0=r31
.Llo24:
	lis		r3,IOC_MasterToMaster_Stat@ha
	lwz		r3,IOC_MasterToMaster_Stat@l(r3)
	sth		r31,2(r3)		# OUT0=r31
# 
#         retVal = IOC_E_OK;
.L11359:
#     }
# 
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_ResAllInt();
	.d2line		276
	bl		OS_COREID_SYS_CALL
	rlwinm		r0,r3,3,13,28
	lis		r3,(Os_PublicData+4)@ha
	e_add16i		r3,r3,(Os_PublicData+4)@l
	lwzx		r3,r3,r0
	lwz		r3,0(r3)
	lwz		r0,12(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     return retVal;
	.d2line		278
	rlwinm		r3,r31,0,24,31		# retVal=r31
# }
	.d2line		279
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo22:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11445:
	.type		IocRead_IOC_MasterToMaster,@function
	.size		IocRead_IOC_MasterToMaster,.-IocRead_IOC_MasterToMaster
# Number of nodes = 77

# Allocations for IocRead_IOC_MasterToMaster
#	?a4		OUT0
#	?a5		$$2369
#	?a6		$$2368
#	?a7		retVal
# FUNC (Std_ReturnType, OS_CODE) IocSendGroup_IocNto1_0 (
	.align		2
	.section	.Os_TEXT,,c
        .d2line         293,32
#$$ld
.L11452:

#$$bf	IocSendGroup_IocNto1_0,interprocedural,rasave,nostackparams
	.globl		IocSendGroup_IocNto1_0
	.d2_cfa_start __cie
IocSendGroup_IocNto1_0:
.Llo25:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# IN0=r31 IN0=r3
	mr		r30,r4		# IN1=r30 IN1=r4
	.d2prologue_end
#         P2VAR (uint32, AUTOMATIC, OS_APPL_DATA) IN0,
#         P2VAR (uint8, AUTOMATIC, OS_APPL_DATA) IN1 ) /* KW MISRA.PPARAM.NEEDS.CONST */
# {
#     VAR (Std_ReturnType, AUTOMATIC)  retVal;
# 
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_SusAllInt();
	.d2line		299
	bl		OS_COREID_SYS_CALL
.Llo26:
	rlwinm		r0,r3,3,13,28
	lis		r3,(Os_PublicData+4)@ha
	e_add16i		r3,r3,(Os_PublicData+4)@l
	lwzx		r3,r3,r0
	lwz		r3,0(r3)
	lwz		r0,8(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     if ( OS_IOC_MCOUNT ( IocNto1 ) == OS_IOC_LENGTH ( IocNto1 ) )     {
	.d2line		301
.Llo27:
	lis		r3,IocNto1_Stat@ha
	lwz		r3,IocNto1_Stat@l(r3)
	lhz		r0,2(r3)
	lis		r3,(IocNto1_Stat+4)@ha
	lhz		r3,(IocNto1_Stat+4)@l(r3)
	se_cmp		r0,r3
	bc		0,2,.L11363	# ne
#         /* There is no more room in the queue. */
#         retVal = IOC_E_LIMIT;         OS_IOC_STATUS ( IocNto1 ) = IOC_E_LOST_DATA;
	.d2line		303
.Llo28:
	diab.li		r31,130		# retVal=r31
.Llo31:
	diab.li		r0,64
	lis		r3,IocNto1_Stat@ha
	lwz		r3,IocNto1_Stat@l(r3)
	stb		r0,4(r3)
	b		.L11364
.L11363:
	.section	.Os_TEXT,,c
.L11463:
#     }
#     else
#     {
#         /* Insert new item into the queue. */
#         VAR   (Os_IOC_ChannelSizeType, AUTOMATIC)  newIndex;
#         P2VAR (IocNto1ChannelType, AUTOMATIC, OS_APPL_DATA)  newDataPtr;
# 
#         newIndex = (Os_IOC_ChannelSizeType)OS_IOC_NEXTHEAD( IocNto1 ); /* KW MISRA.CAST.INT */
	.d2line		311
.Llo29:
	lis		r3,IocNto1_Stat@ha		# newDataPtr=r3
.Llo36:
	lwz		r4,IocNto1_Stat@l(r3)		# newDataPtr=r3
	lhz		r5,0(r4)		# newIndex=r5
.Llo33:
	se_addi		r5,1		# newIndex=r5 newIndex=r5
	rlwinm		r5,r5,0,16,31		# newIndex=r5 newIndex=r5
	lis		r4,(IocNto1_Stat+4)@ha
	lhz		r4,(IocNto1_Stat+4)@l(r4)
	divwu		r0,r5,r4		# newIndex=r0 newIndex=r5
	mullw		r0,r0,r4		# newIndex=r0 newIndex=r0
	subf		r0,r0,r5		# newIndex=r0 newIndex=r0 newIndex=r5
	mr		r5,r0		# newIndex=r5 newIndex=r0
#         OS_IOC_HEAD   ( IocNto1 ) = newIndex;
	.d2line		312
.Llo34:
	lwz		r4,IocNto1_Stat@l(r3)		# newDataPtr=r3
.Llo35:
	sth		r0,0(r4)		# newIndex=r0
#         OS_IOC_MCOUNT ( IocNto1 ) ++;
	.d2line		313
	lwz		r4,IocNto1_Stat@l(r3)		# newDataPtr=r3
	lhz		r3,2(r4)		# newDataPtr=r3
	se_addi		r3,1		# newDataPtr=r3 newDataPtr=r3
	sth		r3,2(r4)		# newDataPtr=r3
#         newDataPtr = &( (IocNto1ChannelType* ) OS_IOC_DATAPTR ( IocNto1 ) )[ newIndex ]; /* KW MISRA.EXPR.PARENS MISRA.PTR.ARITH MISRA.CAST.CONST */
	.d2line		314
	lis		r3,(IocNto1_Stat+8)@ha		# newDataPtr=r3
	lwz		r3,(IocNto1_Stat+8)@l(r3)		# newDataPtr=r3 newDataPtr=r3
	rlwinm		r5,r5,3,13,28		# newIndex=r5 newIndex=r5
	se_add		r3,r5		# newDataPtr=r3 newDataPtr=r3 newIndex=r5
	mr		r3,r3		# newDataPtr=r3 newDataPtr=r3
#         newDataPtr->IocNto1_0 = IN0;
	.d2line		315
	stw		r31,0(r3)		# newDataPtr=r3 IN0=r31
#         newDataPtr->IocNto1_1 = IN1;
	.d2line		316
	stb		r30,4(r3)		# newDataPtr=r3 IN1=r30
#         retVal = IOC_E_OK;
	.d2line		317
	diab.li		r31,0		# retVal=r31
	.section	.Os_TEXT,,c
.L11464:
.L11364:
#     }
# 
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_ResAllInt();
	.d2line		320
.Llo30:
	bl		OS_COREID_SYS_CALL
.Llo37:
	rlwinm		r0,r3,3,13,28		# newIndex=r0 newDataPtr=r3
	lis		r3,(Os_PublicData+4)@ha		# newDataPtr=r3
	e_add16i		r3,r3,(Os_PublicData+4)@l		# newDataPtr=r3 newDataPtr=r3
	lwzx		r3,r3,r0		# newDataPtr=r3 newDataPtr=r3
	lwz		r3,0(r3)		# newDataPtr=r3 newDataPtr=r3
	lwz		r0,12(r3)		# newIndex=r0 newDataPtr=r3
	mtspr		ctr,r0		# newIndex=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     return retVal;
	.d2line		322
.Llo38:
	rlwinm		r3,r31,0,24,31		# newDataPtr=r3 retVal=r31
# }
	.d2line		323
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo32:
	lwz		r0,36(r1)		# newIndex=r0
	mtspr		lr,r0		# newIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11453:
	.type		IocSendGroup_IocNto1_0,@function
	.size		IocSendGroup_IocNto1_0,.-IocSendGroup_IocNto1_0
# Number of nodes = 123

# Allocations for IocSendGroup_IocNto1_0
#	?a4		IN0
#	?a5		IN1
#	?a6		$$2372
#	?a7		$$2371
#	?a8		$$2370
#	?a9		retVal
#	?a10		newIndex
#	?a11		newDataPtr
# FUNC (Std_ReturnType, OS_CODE) IocSendGroup_IocNto1_1 (
	.align		2
	.section	.Os_TEXT,,c
        .d2line         332,32
#$$ld
.L11473:

#$$bf	IocSendGroup_IocNto1_1,interprocedural,rasave,nostackparams
	.globl		IocSendGroup_IocNto1_1
	.d2_cfa_start __cie
IocSendGroup_IocNto1_1:
.Llo39:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# IN0=r31 IN0=r3
	mr		r30,r4		# IN1=r30 IN1=r4
	.d2prologue_end
#         P2VAR (uint32, AUTOMATIC, OS_APPL_DATA) IN0,
#         P2VAR (uint8, AUTOMATIC, OS_APPL_DATA) IN1 ) /* KW MISRA.PPARAM.NEEDS.CONST */
# {
#     VAR (Std_ReturnType, AUTOMATIC)  retVal;
# 
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_SusAllInt();
	.d2line		338
	bl		OS_COREID_SYS_CALL
.Llo40:
	rlwinm		r0,r3,3,13,28
	lis		r3,(Os_PublicData+4)@ha
	e_add16i		r3,r3,(Os_PublicData+4)@l
	lwzx		r3,r3,r0
	lwz		r3,0(r3)
	lwz		r0,8(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     if ( OS_IOC_MCOUNT ( IocNto1 ) == OS_IOC_LENGTH ( IocNto1 ) )     {
	.d2line		340
.Llo41:
	lis		r3,IocNto1_Stat@ha
	lwz		r3,IocNto1_Stat@l(r3)
	lhz		r0,2(r3)
	lis		r3,(IocNto1_Stat+4)@ha
	lhz		r3,(IocNto1_Stat+4)@l(r3)
	se_cmp		r0,r3
	bc		0,2,.L11368	# ne
#         /* There is no more room in the queue. */
#         retVal = IOC_E_LIMIT;         OS_IOC_STATUS ( IocNto1 ) = IOC_E_LOST_DATA;
	.d2line		342
.Llo42:
	diab.li		r31,130		# retVal=r31
.Llo45:
	diab.li		r0,64
	lis		r3,IocNto1_Stat@ha
	lwz		r3,IocNto1_Stat@l(r3)
	stb		r0,4(r3)
	b		.L11369
.L11368:
	.section	.Os_TEXT,,c
.L11480:
#     }
#     else
#     {
#         /* Insert new item into the queue. */
#         VAR   (Os_IOC_ChannelSizeType, AUTOMATIC)  newIndex;
#         P2VAR (IocNto1ChannelType, AUTOMATIC, OS_APPL_DATA)  newDataPtr;
# 
#         newIndex = (Os_IOC_ChannelSizeType)OS_IOC_NEXTHEAD( IocNto1 ); /* KW MISRA.CAST.INT */
	.d2line		350
.Llo43:
	lis		r3,IocNto1_Stat@ha		# newDataPtr=r3
.Llo50:
	lwz		r4,IocNto1_Stat@l(r3)		# newDataPtr=r3
	lhz		r5,0(r4)		# newIndex=r5
.Llo47:
	se_addi		r5,1		# newIndex=r5 newIndex=r5
	rlwinm		r5,r5,0,16,31		# newIndex=r5 newIndex=r5
	lis		r4,(IocNto1_Stat+4)@ha
	lhz		r4,(IocNto1_Stat+4)@l(r4)
	divwu		r0,r5,r4		# newIndex=r0 newIndex=r5
	mullw		r0,r0,r4		# newIndex=r0 newIndex=r0
	subf		r0,r0,r5		# newIndex=r0 newIndex=r0 newIndex=r5
	mr		r5,r0		# newIndex=r5 newIndex=r0
#         OS_IOC_HEAD   ( IocNto1 ) = newIndex;
	.d2line		351
.Llo48:
	lwz		r4,IocNto1_Stat@l(r3)		# newDataPtr=r3
.Llo49:
	sth		r0,0(r4)		# newIndex=r0
#         OS_IOC_MCOUNT ( IocNto1 ) ++;
	.d2line		352
	lwz		r4,IocNto1_Stat@l(r3)		# newDataPtr=r3
	lhz		r3,2(r4)		# newDataPtr=r3
	se_addi		r3,1		# newDataPtr=r3 newDataPtr=r3
	sth		r3,2(r4)		# newDataPtr=r3
#         newDataPtr = &( (IocNto1ChannelType* ) OS_IOC_DATAPTR ( IocNto1 ) )[ newIndex ]; /* KW MISRA.EXPR.PARENS MISRA.PTR.ARITH MISRA.CAST.CONST */
	.d2line		353
	lis		r3,(IocNto1_Stat+8)@ha		# newDataPtr=r3
	lwz		r3,(IocNto1_Stat+8)@l(r3)		# newDataPtr=r3 newDataPtr=r3
	rlwinm		r5,r5,3,13,28		# newIndex=r5 newIndex=r5
	se_add		r3,r5		# newDataPtr=r3 newDataPtr=r3 newIndex=r5
	mr		r3,r3		# newDataPtr=r3 newDataPtr=r3
#         newDataPtr->IocNto1_0 = IN0;
	.d2line		354
	stw		r31,0(r3)		# newDataPtr=r3 IN0=r31
#         newDataPtr->IocNto1_1 = IN1;
	.d2line		355
	stb		r30,4(r3)		# newDataPtr=r3 IN1=r30
#         retVal = IOC_E_OK;
	.d2line		356
	diab.li		r31,0		# retVal=r31
	.section	.Os_TEXT,,c
.L11481:
.L11369:
#     }
# 
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_ResAllInt();
	.d2line		359
.Llo44:
	bl		OS_COREID_SYS_CALL
.Llo51:
	rlwinm		r0,r3,3,13,28		# newIndex=r0 newDataPtr=r3
	lis		r3,(Os_PublicData+4)@ha		# newDataPtr=r3
	e_add16i		r3,r3,(Os_PublicData+4)@l		# newDataPtr=r3 newDataPtr=r3
	lwzx		r3,r3,r0		# newDataPtr=r3 newDataPtr=r3
	lwz		r3,0(r3)		# newDataPtr=r3 newDataPtr=r3
	lwz		r0,12(r3)		# newIndex=r0 newDataPtr=r3
	mtspr		ctr,r0		# newIndex=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     return retVal;
	.d2line		361
.Llo52:
	rlwinm		r3,r31,0,24,31		# newDataPtr=r3 retVal=r31
# }
	.d2line		362
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo46:
	lwz		r0,36(r1)		# newIndex=r0
	mtspr		lr,r0		# newIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11474:
	.type		IocSendGroup_IocNto1_1,@function
	.size		IocSendGroup_IocNto1_1,.-IocSendGroup_IocNto1_1
# Number of nodes = 123

# Allocations for IocSendGroup_IocNto1_1
#	?a4		IN0
#	?a5		IN1
#	?a6		$$2375
#	?a7		$$2374
#	?a8		$$2373
#	?a9		retVal
#	?a10		newIndex
#	?a11		newDataPtr
# FUNC (Std_ReturnType, OS_CODE) IocReceiveGroup_IocNto1 (
	.align		2
	.section	.Os_TEXT,,c
        .d2line         371,32
#$$ld
.L11490:

#$$bf	IocReceiveGroup_IocNto1,interprocedural,rasave,nostackparams
	.globl		IocReceiveGroup_IocNto1
	.d2_cfa_start __cie
IocReceiveGroup_IocNto1:
.Llo53:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# OUT0=r31 OUT0=r3
	mr		r30,r4		# OUT1=r30 OUT1=r4
	.d2prologue_end
#         P2VAR (uint32, AUTOMATIC, OS_APPL_DATA) OUT0,
#         P2VAR (uint8, AUTOMATIC, OS_APPL_DATA) OUT1 ) /* KW MISRA.PPARAM.NEEDS.CONST */
# {
#     VAR (Std_ReturnType, AUTOMATIC)  retVal;
# 
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_SusAllInt();
	.d2line		377
	bl		OS_COREID_SYS_CALL
.Llo54:
	rlwinm		r0,r3,3,13,28
	lis		r3,(Os_PublicData+4)@ha
	e_add16i		r3,r3,(Os_PublicData+4)@l
	lwzx		r3,r3,r0
	lwz		r3,0(r3)
	lwz		r0,8(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     if ( (Os_IOC_ChannelSizeType)0 == OS_IOC_MCOUNT ( IocNto1 ) )
	.d2line		379
.Llo55:
	lis		r3,IocNto1_Stat@ha
	lwz		r3,IocNto1_Stat@l(r3)
	lhz		r0,2(r3)
	se_cmpi		r0,0
	bc		0,2,.L11373	# ne
#     {
#         /* There is no data in the queue right now. */
#         retVal = IOC_E_NO_DATA; 
	.d2line		382
.Llo56:
	diab.li		r31,131		# retVal=r31
.Llo60:
	b		.L11374
.L11373:
	.section	.Os_TEXT,,c
.L11497:
#     }
#     else
#     {
#         /* Return the first item in the queue. */
#         VAR   (Os_IOC_ChannelSizeType, AUTOMATIC)  newIndex;
#         P2VAR (IocNto1ChannelType, AUTOMATIC, OS_APPL_DATA)  newDataPtr;
# 
#         newIndex = (Os_IOC_ChannelSizeType)OS_IOC_TAIL( IocNto1 ); /* KW MISRA.CAST.INT */
	.d2line		390
.Llo57:
	lis		r3,IocNto1_Stat@ha
	lwz		r4,IocNto1_Stat@l(r3)		# newDataPtr=r4
.Llo65:
	lhz		r0,0(r4)		# newDataPtr=r4
	lis		r4,(IocNto1_Stat+4)@ha		# newDataPtr=r4
	lhz		r5,(IocNto1_Stat+4)@l(r4)		# newDataPtr=r4
	se_add		r0,r5
	lwz		r4,IocNto1_Stat@l(r3)		# newDataPtr=r4
	lhz		r4,2(r4)		# newDataPtr=r4 newDataPtr=r4
	subf		r4,r4,r0		# newDataPtr=r4 newDataPtr=r4
	se_addi		r4,1		# newDataPtr=r4 newDataPtr=r4
	rlwinm		r4,r4,0,16,31		# newDataPtr=r4 newDataPtr=r4
	divwu		r0,r4,r5		# newDataPtr=r4
	mullw		r0,r0,r5
	subf		r0,r0,r4		# newDataPtr=r4
.Llo62:
	mr		r6,r0		# newIndex=r6 newIndex=r0
#         OS_IOC_MCOUNT ( IocNto1 ) --;
	.d2line		391
	lwz		r4,IocNto1_Stat@l(r3)		# newDataPtr=r4
	lhz		r0,2(r4)		# newDataPtr=r4
.Llo63:
	diab.li		r5,65535
	se_add		r0,r5
	sth		r0,2(r4)		# newDataPtr=r4
#         newDataPtr = &( (IocNto1ChannelType * ) OS_IOC_DATAPTR ( IocNto1 ) )[ newIndex ]; /* KW MISRA.EXPR.PARENS MISRA.PTR.ARITH MISRA.CAST.CONST */
	.d2line		392
	lis		r4,(IocNto1_Stat+8)@ha		# newDataPtr=r4
	lwz		r4,(IocNto1_Stat+8)@l(r4)		# newDataPtr=r4 newDataPtr=r4
.Llo64:
	rlwinm		r6,r6,3,13,28		# newIndex=r6 newIndex=r6
	se_add		r4,r6		# newDataPtr=r4 newDataPtr=r4 newIndex=r6
	mr		r4,r4		# newDataPtr=r4 newDataPtr=r4
#         * OUT0 = newDataPtr->IocNto1_0;
	.d2line		393
	lwz		r0,0(r4)		# newDataPtr=r4
	stw		r0,0(r31)		# OUT0=r31
#         * OUT1 = newDataPtr->IocNto1_1;
	.d2line		394
	lbz		r0,4(r4)		# newDataPtr=r4
	stb		r0,0(r30)		# OUT1=r30
# 
#         retVal = OS_IOC_STATUS ( IocNto1 );
	.d2line		396
	lwz		r4,IocNto1_Stat@l(r3)		# newDataPtr=r4
	lbz		r31,4(r4)		# OUT0=r31 newDataPtr=r4
.Llo58:
	mr		r31,r31		# retVal=r31 retVal=r31
#         OS_IOC_STATUS ( IocNto1 ) = IOC_E_OK;
	.d2line		397
	diab.li		r0,0
	lwz		r3,IocNto1_Stat@l(r3)
	stb		r0,4(r3)
	.section	.Os_TEXT,,c
.L11498:
.L11374:
#     }
# 
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_ResAllInt();
	.d2line		400
.Llo59:
	bl		OS_COREID_SYS_CALL
	rlwinm		r0,r3,3,13,28
	lis		r3,(Os_PublicData+4)@ha
	e_add16i		r3,r3,(Os_PublicData+4)@l
	lwzx		r3,r3,r0
	lwz		r3,0(r3)
	lwz		r0,12(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     return retVal;
	.d2line		402
	rlwinm		r3,r31,0,24,31		# retVal=r31
# }
	.d2line		403
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo61:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11491:
	.type		IocReceiveGroup_IocNto1,@function
	.size		IocReceiveGroup_IocNto1,.-IocReceiveGroup_IocNto1
# Number of nodes = 131

# Allocations for IocReceiveGroup_IocNto1
#	?a4		OUT0
#	?a5		OUT1
#	?a6		$$2378
#	?a7		$$2377
#	?a8		$$2376
#	?a9		retVal
#	?a10		newIndex
#	?a11		newDataPtr
# FUNC (Std_ReturnType, OS_CODE) IocEmptyQueue_IocNto1 ( void )
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.debug_line.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_line
.L11512:
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11508:
	.0byte		.L11506
	.d2_line_start	.debug_line.Os_PUBLIC_TEXT
	.section	.Os_PUBLIC_TEXT,,c
	.d2file		"gen\\MPC5746R_ECU\\WindRiver\\Ioc.c"
        .d2line         413,32
#$$ld
.L11515:

#$$bf	IocEmptyQueue_IocNto1,interprocedural,rasave,nostackparams
	.globl		IocEmptyQueue_IocNto1
	.d2_cfa_start __cie
IocEmptyQueue_IocNto1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_SusAllInt();
	.d2line		415
	bl		OS_COREID_SYS_CALL
	rlwinm		r0,r3,3,13,28
	lis		r3,(Os_PublicData+4)@ha
	e_add16i		r3,r3,(Os_PublicData+4)@l
	lwzx		r3,r3,r0
	lwz		r3,0(r3)
	lwz		r0,8(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     OS_IOC_HEAD   ( IocNto1 ) = (Os_IOC_ChannelSizeType)0; /* KW STRONG.TYPE.ASSIGN.ZERO */
	.d2line		417
	diab.li		r0,0
	lis		r4,IocNto1_Stat@ha
	lwz		r3,IocNto1_Stat@l(r4)
	sth		r0,0(r3)
#     OS_IOC_MCOUNT ( IocNto1 ) = (Os_IOC_ChannelSizeType)0; /* KW STRONG.TYPE.ASSIGN.ZERO */
	.d2line		418
	lwz		r3,IocNto1_Stat@l(r4)
	sth		r0,2(r3)
#     OS_IOC_STATUS ( IocNto1 ) = IOC_E_OK;
	.d2line		419
	lwz		r3,IocNto1_Stat@l(r4)
	stb		r0,4(r3)
# 
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_ResAllInt();
	.d2line		421
	bl		OS_COREID_SYS_CALL
	rlwinm		r0,r3,3,13,28
	lis		r3,(Os_PublicData+4)@ha
	e_add16i		r3,r3,(Os_PublicData+4)@l
	lwzx		r3,r3,r0
	lwz		r3,0(r3)
	lwz		r0,12(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     return IOC_E_OK;
	.d2line		423
	diab.li		r3,0
# }
	.d2line		424
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11516:
	.type		IocEmptyQueue_IocNto1,@function
	.size		IocEmptyQueue_IocNto1,.-IocEmptyQueue_IocNto1
# Number of nodes = 66

# Allocations for IocEmptyQueue_IocNto1
#	?a4		$$2380
#	?a5		$$2379
# FUNC (Std_ReturnType, OS_CODE) IocSend_OsIocCommunication (
	.section	.Os_TEXT,,c
	.align		2
	.section	.Os_TEXT,,c
        .d2line         437,32
#$$ld
.L11521:

#$$bf	IocSend_OsIocCommunication,interprocedural,rasave,nostackparams
	.globl		IocSend_OsIocCommunication
	.d2_cfa_start __cie
IocSend_OsIocCommunication:
.Llo66:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# IN0=r31 IN0=r3
	.d2prologue_end
#         P2VAR (uint32, AUTOMATIC, OS_APPL_DATA) IN0 ) /* KW MISRA.PPARAM.NEEDS.CONST */
# {
#     VAR (Std_ReturnType, AUTOMATIC)  retVal;
# 
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_SusAllInt();
	.d2line		442
	bl		OS_COREID_SYS_CALL
.Llo67:
	rlwinm		r0,r3,3,13,28
	lis		r3,(Os_PublicData+4)@ha
	e_add16i		r3,r3,(Os_PublicData+4)@l
	lwzx		r3,r3,r0
	lwz		r3,0(r3)
	lwz		r0,8(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     if ( OS_IOC_MCOUNT ( OsIocCommunication ) == OS_IOC_LENGTH ( OsIocCommunication ) )     {
	.d2line		444
.Llo68:
	lis		r3,OsIocCommunication_Stat@ha
	lwz		r3,OsIocCommunication_Stat@l(r3)
	lhz		r0,2(r3)
	lis		r3,(OsIocCommunication_Stat+4)@ha
	lhz		r3,(OsIocCommunication_Stat+4)@l(r3)
	se_cmp		r0,r3
	bc		0,2,.L11379	# ne
#         /* There is no more room in the queue. */
#         retVal = IOC_E_LIMIT;         OS_IOC_STATUS ( OsIocCommunication ) = IOC_E_LOST_DATA;
	.d2line		446
.Llo69:
	diab.li		r31,130		# retVal=r31
.Llo72:
	diab.li		r0,64
	lis		r3,OsIocCommunication_Stat@ha
	lwz		r3,OsIocCommunication_Stat@l(r3)
	stb		r0,4(r3)
	b		.L11380
.L11379:
	.section	.Os_TEXT,,c
.L11527:
#     }
#     else
#     {
#         /* Insert new item into the queue. */
#         VAR   (Os_IOC_ChannelSizeType, AUTOMATIC)  newIndex;
#         P2VAR (OsIocCommunicationChannelType, AUTOMATIC, OS_APPL_DATA)  newDataPtr;
# 
#         newIndex = (Os_IOC_ChannelSizeType)OS_IOC_NEXTHEAD( OsIocCommunication ); /* KW MISRA.CAST.INT */
	.d2line		454
.Llo70:
	lis		r3,OsIocCommunication_Stat@ha		# newDataPtr=r3
.Llo77:
	lwz		r4,OsIocCommunication_Stat@l(r3)		# newDataPtr=r3
	lhz		r5,0(r4)		# newIndex=r5
.Llo74:
	se_addi		r5,1		# newIndex=r5 newIndex=r5
	rlwinm		r5,r5,0,16,31		# newIndex=r5 newIndex=r5
	lis		r4,(OsIocCommunication_Stat+4)@ha
	lhz		r4,(OsIocCommunication_Stat+4)@l(r4)
	divwu		r0,r5,r4		# newIndex=r0 newIndex=r5
	mullw		r0,r0,r4		# newIndex=r0 newIndex=r0
	subf		r0,r0,r5		# newIndex=r0 newIndex=r0 newIndex=r5
	mr		r5,r0		# newIndex=r5 newIndex=r0
#         OS_IOC_HEAD   ( OsIocCommunication ) = newIndex;
	.d2line		455
.Llo75:
	lwz		r4,OsIocCommunication_Stat@l(r3)		# newDataPtr=r3
.Llo76:
	sth		r0,0(r4)		# newIndex=r0
#         OS_IOC_MCOUNT ( OsIocCommunication ) ++;
	.d2line		456
	lwz		r4,OsIocCommunication_Stat@l(r3)		# newDataPtr=r3
	lhz		r3,2(r4)		# newDataPtr=r3
	se_addi		r3,1		# newDataPtr=r3 newDataPtr=r3
	sth		r3,2(r4)		# newDataPtr=r3
#         newDataPtr = &( (OsIocCommunicationChannelType* ) OS_IOC_DATAPTR ( OsIocCommunication ) )[ newIndex ]; /* KW MISRA.EXPR.PARENS MISRA.PTR.ARITH MISRA.CAST.CONST */
	.d2line		457
	lis		r3,(OsIocCommunication_Stat+8)@ha		# newDataPtr=r3
	lwz		r3,(OsIocCommunication_Stat+8)@l(r3)		# newDataPtr=r3 newDataPtr=r3
	rlwinm		r5,r5,2,14,29		# newIndex=r5 newIndex=r5
	se_add		r3,r5		# newDataPtr=r3 newDataPtr=r3 newIndex=r5
	mr		r3,r3		# newDataPtr=r3 newDataPtr=r3
#         newDataPtr->OsIocCommunication_0 = IN0;
	.d2line		458
	stw		r31,0(r3)		# newDataPtr=r3 IN0=r31
#         retVal = IOC_E_OK;
	.d2line		459
	diab.li		r31,0		# retVal=r31
	.section	.Os_TEXT,,c
.L11528:
.L11380:
#     }
# 
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_ResAllInt();
	.d2line		462
.Llo71:
	bl		OS_COREID_SYS_CALL
.Llo78:
	rlwinm		r0,r3,3,13,28		# newIndex=r0 newDataPtr=r3
	lis		r3,(Os_PublicData+4)@ha		# newDataPtr=r3
	e_add16i		r3,r3,(Os_PublicData+4)@l		# newDataPtr=r3 newDataPtr=r3
	lwzx		r3,r3,r0		# newDataPtr=r3 newDataPtr=r3
	lwz		r3,0(r3)		# newDataPtr=r3 newDataPtr=r3
	lwz		r0,12(r3)		# newIndex=r0 newDataPtr=r3
	mtspr		ctr,r0		# newIndex=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     return retVal;
	.d2line		464
.Llo79:
	rlwinm		r3,r31,0,24,31		# newDataPtr=r3 retVal=r31
# }
	.d2line		465
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo73:
	lwz		r0,36(r1)		# newIndex=r0
	mtspr		lr,r0		# newIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11522:
	.type		IocSend_OsIocCommunication,@function
	.size		IocSend_OsIocCommunication,.-IocSend_OsIocCommunication
# Number of nodes = 116

# Allocations for IocSend_OsIocCommunication
#	?a4		IN0
#	?a5		$$2383
#	?a6		$$2382
#	?a7		$$2381
#	?a8		retVal
#	?a9		newIndex
#	?a10		newDataPtr
# FUNC (Std_ReturnType, OS_CODE) IocReceive_OsIocCommunication (
	.align		2
	.section	.Os_TEXT,,c
        .d2line         474,32
#$$ld
.L11537:

#$$bf	IocReceive_OsIocCommunication,interprocedural,rasave,nostackparams
	.globl		IocReceive_OsIocCommunication
	.d2_cfa_start __cie
IocReceive_OsIocCommunication:
.Llo80:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# OUT0=r31 OUT0=r3
	.d2prologue_end
#         P2VAR (uint32, AUTOMATIC, OS_APPL_DATA) OUT0 ) /* KW MISRA.PPARAM.NEEDS.CONST */
# {
#     VAR (Std_ReturnType, AUTOMATIC)  retVal;
# 
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_SusAllInt();
	.d2line		479
	bl		OS_COREID_SYS_CALL
.Llo81:
	rlwinm		r0,r3,3,13,28
	lis		r3,(Os_PublicData+4)@ha
	e_add16i		r3,r3,(Os_PublicData+4)@l
	lwzx		r3,r3,r0
	lwz		r3,0(r3)
	lwz		r0,8(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     if ( (Os_IOC_ChannelSizeType)0 == OS_IOC_MCOUNT ( OsIocCommunication ) )
	.d2line		481
.Llo82:
	lis		r3,OsIocCommunication_Stat@ha
	lwz		r3,OsIocCommunication_Stat@l(r3)
	lhz		r0,2(r3)
	se_cmpi		r0,0
	bc		0,2,.L11384	# ne
#     {
#         /* There is no data in the queue right now. */
#         retVal = IOC_E_NO_DATA; 
	.d2line		484
.Llo83:
	diab.li		r31,131		# retVal=r31
.Llo86:
	b		.L11385
.L11384:
	.section	.Os_TEXT,,c
.L11543:
#     }
#     else
#     {
#         /* Return the first item in the queue. */
#         VAR   (Os_IOC_ChannelSizeType, AUTOMATIC)  newIndex;
#         P2VAR (OsIocCommunicationChannelType, AUTOMATIC, OS_APPL_DATA)  newDataPtr;
# 
#         newIndex = (Os_IOC_ChannelSizeType)OS_IOC_TAIL( OsIocCommunication ); /* KW MISRA.CAST.INT */
	.d2line		492
.Llo84:
	lis		r3,OsIocCommunication_Stat@ha
	lwz		r4,OsIocCommunication_Stat@l(r3)		# newDataPtr=r4
.Llo92:
	lhz		r0,0(r4)		# newDataPtr=r4
	lis		r4,(OsIocCommunication_Stat+4)@ha		# newDataPtr=r4
	lhz		r5,(OsIocCommunication_Stat+4)@l(r4)		# newDataPtr=r4
	se_add		r0,r5
	lwz		r4,OsIocCommunication_Stat@l(r3)		# newDataPtr=r4
	lhz		r4,2(r4)		# newDataPtr=r4 newDataPtr=r4
	subf		r4,r4,r0		# newDataPtr=r4 newDataPtr=r4
	se_addi		r4,1		# newDataPtr=r4 newDataPtr=r4
	rlwinm		r4,r4,0,16,31		# newDataPtr=r4 newDataPtr=r4
	divwu		r0,r4,r5		# newDataPtr=r4
	mullw		r0,r0,r5
	subf		r0,r0,r4		# newDataPtr=r4
.Llo88:
	mr		r6,r0		# newIndex=r6 newIndex=r0
#         OS_IOC_MCOUNT ( OsIocCommunication ) --;
	.d2line		493
	lwz		r4,OsIocCommunication_Stat@l(r3)		# newDataPtr=r4
	lhz		r0,2(r4)		# newDataPtr=r4
.Llo89:
	diab.li		r5,65535
	se_add		r0,r5
	sth		r0,2(r4)		# newDataPtr=r4
#         newDataPtr = &( (OsIocCommunicationChannelType * ) OS_IOC_DATAPTR ( OsIocCommunication ) )[ newIndex ]; /* KW MISRA.EXPR.PARENS MISRA.PTR.ARITH MISRA.CAST.CONST */
	.d2line		494
	lis		r4,(OsIocCommunication_Stat+8)@ha		# newDataPtr=r4
	lwz		r4,(OsIocCommunication_Stat+8)@l(r4)		# newDataPtr=r4 newDataPtr=r4
.Llo90:
	rlwinm		r6,r6,2,14,29		# newIndex=r6 newIndex=r6
	se_add		r4,r6		# newDataPtr=r4 newDataPtr=r4 newIndex=r6
	mr		r4,r4		# newDataPtr=r4 newDataPtr=r4
#         * OUT0 = newDataPtr->OsIocCommunication_0;
	.d2line		495
	lwz		r0,0(r4)		# newDataPtr=r4
	stw		r0,0(r31)		# OUT0=r31
# 
#         retVal = OS_IOC_STATUS ( OsIocCommunication );
	.d2line		497
	lwz		r4,OsIocCommunication_Stat@l(r3)		# newDataPtr=r4
	lbz		r31,4(r4)		# OUT0=r31 newDataPtr=r4
.Llo85:
	mr		r31,r31		# retVal=r31 retVal=r31
#         OS_IOC_STATUS ( OsIocCommunication ) = IOC_E_OK;
	.d2line		498
	diab.li		r0,0
	lwz		r3,OsIocCommunication_Stat@l(r3)
	stb		r0,4(r3)
	.section	.Os_TEXT,,c
.L11544:
.L11385:
#     }
# 
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_ResAllInt();
	.d2line		501
.Llo91:
	bl		OS_COREID_SYS_CALL
	rlwinm		r0,r3,3,13,28
	lis		r3,(Os_PublicData+4)@ha
	e_add16i		r3,r3,(Os_PublicData+4)@l
	lwzx		r3,r3,r0
	lwz		r3,0(r3)
	lwz		r0,12(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     return retVal;
	.d2line		503
	rlwinm		r3,r31,0,24,31		# retVal=r31
# }
	.d2line		504
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo87:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11538:
	.type		IocReceive_OsIocCommunication,@function
	.size		IocReceive_OsIocCommunication,.-IocReceive_OsIocCommunication
# Number of nodes = 124

# Allocations for IocReceive_OsIocCommunication
#	?a4		OUT0
#	?a5		$$2386
#	?a6		$$2385
#	?a7		$$2384
#	?a8		retVal
#	?a9		newIndex
#	?a10		newDataPtr
# FUNC (Std_ReturnType, OS_CODE) IocEmptyQueue_OsIocCommunication ( void )
	.section	.Os_PUBLIC_TEXT,,c
	.align		2
	.section	.Os_PUBLIC_TEXT,,c
        .d2line         514,32
#$$ld
.L11553:

#$$bf	IocEmptyQueue_OsIocCommunication,interprocedural,rasave,nostackparams
	.globl		IocEmptyQueue_OsIocCommunication
	.d2_cfa_start __cie
IocEmptyQueue_OsIocCommunication:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_SusAllInt();
	.d2line		516
	bl		OS_COREID_SYS_CALL
	rlwinm		r0,r3,3,13,28
	lis		r3,(Os_PublicData+4)@ha
	e_add16i		r3,r3,(Os_PublicData+4)@l
	lwzx		r3,r3,r0
	lwz		r3,0(r3)
	lwz		r0,8(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     OS_IOC_HEAD   ( OsIocCommunication ) = (Os_IOC_ChannelSizeType)0; /* KW STRONG.TYPE.ASSIGN.ZERO */
	.d2line		518
	diab.li		r0,0
	lis		r4,OsIocCommunication_Stat@ha
	lwz		r3,OsIocCommunication_Stat@l(r4)
	sth		r0,0(r3)
#     OS_IOC_MCOUNT ( OsIocCommunication ) = (Os_IOC_ChannelSizeType)0; /* KW STRONG.TYPE.ASSIGN.ZERO */
	.d2line		519
	lwz		r3,OsIocCommunication_Stat@l(r4)
	sth		r0,2(r3)
#     OS_IOC_STATUS ( OsIocCommunication ) = IOC_E_OK;
	.d2line		520
	lwz		r3,OsIocCommunication_Stat@l(r4)
	stb		r0,4(r3)
# 
#     Os_PublicData[OS_GETCOREIDASUSER()].Os_PublicDataVarInitRef->Os_ISRServices->Os_ResAllInt();
	.d2line		522
	bl		OS_COREID_SYS_CALL
	rlwinm		r0,r3,3,13,28
	lis		r3,(Os_PublicData+4)@ha
	e_add16i		r3,r3,(Os_PublicData+4)@l
	lwzx		r3,r3,r0
	lwz		r3,0(r3)
	lwz		r0,12(r3)
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
# 
#     return IOC_E_OK;
	.d2line		524
	diab.li		r3,0
# }
	.d2line		525
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11554:
	.type		IocEmptyQueue_OsIocCommunication,@function
	.size		IocEmptyQueue_OsIocCommunication,.-IocEmptyQueue_OsIocCommunication
# Number of nodes = 66

# Allocations for IocEmptyQueue_OsIocCommunication
#	?a4		$$2388
#	?a5		$$2387

# Allocations for module
	.section	.text_vle
	.0byte		.L11556
	.section	.Os_BSS,,b
	.0byte		.L11563
	.section	.Os_BSS,,b
	.type		IOC_MasterToMasterChannel,@object
	.size		IOC_MasterToMasterChannel,4
	.align		2
IOC_MasterToMasterChannel:
	.space		4
	.section	.Os_BSS,,b
	.type		IocNto1Channel,@object
	.size		IocNto1Channel,16
	.align		2
IocNto1Channel:
	.space		16
	.section	.Os_BSS,,b
	.type		OsIocCommunicationChannel,@object
	.size		OsIocCommunicationChannel,4
	.align		2
OsIocCommunicationChannel:
	.space		4
	.section	.Os_BSS,,b
	.0byte		.L11575
	.section	.Os_BSS,,b
	.type		IOC_MasterToMaster_Dyn,@object
	.size		IOC_MasterToMaster_Dyn,6
	.align		1
IOC_MasterToMaster_Dyn:
	.space		6
	.section	.Os_BSS,,b
	.type		IocNto1_Dyn,@object
	.size		IocNto1_Dyn,6
	.align		1
IocNto1_Dyn:
	.space		6
	.section	.Os_BSS,,b
	.type		OsIocCommunication_Dyn,@object
	.size		OsIocCommunication_Dyn,6
	.align		1
OsIocCommunication_Dyn:
	.space		6
	.section	.Os_CONST,,r
	.0byte		.L11580
	.section	.Os_CONST,,r
	.type		IOC_MasterToMaster_Stat,@object
	.size		IOC_MasterToMaster_Stat,24
	.align		2
IOC_MasterToMaster_Stat:
	.long		IOC_MasterToMaster_Dyn
	.short		1
	.space		2
	.long		IOC_MasterToMasterChannel
	.short		4
	.byte		1
	.space		1
	.long		0
	.long		0
	.section	.Os_CONST,,r
	.type		IocNto1_Stat,@object
	.size		IocNto1_Stat,24
	.align		2
IocNto1_Stat:
	.long		IocNto1_Dyn
	.short		2
	.space		2
	.long		IocNto1Channel
	.short		8
	.byte		2
	.space		1
	.long		0
	.long		0
	.section	.Os_CONST,,r
	.type		OsIocCommunication_Stat,@object
	.size		OsIocCommunication_Stat,24
	.align		2
OsIocCommunication_Stat:
	.long		OsIocCommunication_Dyn
	.short		1
	.space		2
	.long		OsIocCommunicationChannel
	.short		4
	.byte		1
	.space		1
	.long		0
	.long		0
	.section	.text_vle
#$$ld
.L5:
.L11715:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L11713:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L11711:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L11709:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L11704:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11645:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ErrorApiTypes.h"
.L11614:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11590:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11586:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_Isr.h"
.L11564:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\Ioc.c"
.L11557:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_PublicDataTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11393:
.L11401:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\Ioc.c"
	.d2_line_end
	.section	.Os_PUBLIC_TEXT,,c
#$$ld
.L11509:
.L11517:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\Ioc.c"
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
	.uleb128	6
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
	.uleb128	7
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
	.uleb128	12
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
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
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
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
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\Ioc.c"
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
.L11390:
	.4byte		.L11391-.L11389
.L11389:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11395-.L11390
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\Ioc.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11392
	.4byte		.L11393
	.4byte		.L11396
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11402:
	.sleb128	2
	.4byte		.L11398-.L11390
	.byte		"OS_IOC_Init"
	.byte		0
	.4byte		.L11401
	.uleb128	179
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L11399
	.4byte		.L11400
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11406
	.4byte		.L11403
	.4byte		.L11404
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11407:
	.sleb128	4
	.4byte		.L11401
	.uleb128	199
	.uleb128	52
	.byte		"newIndex"
	.byte		0
	.4byte		.L11408
	.4byte		.L11411
.L11412:
	.sleb128	4
	.4byte		.L11401
	.uleb128	200
	.uleb128	61
	.byte		"newDataPtr"
	.byte		0
	.4byte		.L11413
	.4byte		.L11416
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11406:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11420
	.4byte		.L11417
	.4byte		.L11418
.L11421:
	.sleb128	4
	.4byte		.L11401
	.uleb128	213
	.uleb128	52
	.byte		"newIndex"
	.byte		0
	.4byte		.L11408
	.4byte		.L11422
.L11423:
	.sleb128	4
	.4byte		.L11401
	.uleb128	214
	.uleb128	72
	.byte		"newDataPtr"
	.byte		0
	.4byte		.L11424
	.4byte		.L11427
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11420:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11398:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11435:
	.sleb128	5
	.4byte		.L11429-.L11390
	.byte		"IocWrite_IOC_MasterToMaster"
	.byte		0
	.4byte		.L11401
	.uleb128	235
	.uleb128	32
	.4byte		.L11432
	.byte		0x1
	.byte		0x1
	.4byte		.L11430
	.4byte		.L11431
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11401
	.uleb128	235
	.uleb128	32
	.byte		"IN0"
	.byte		0
	.4byte		.L11436
	.4byte		.L11439
.L11440:
	.sleb128	4
	.4byte		.L11401
	.uleb128	238
	.uleb128	38
	.byte		"retVal"
	.byte		0
	.4byte		.L11432
	.4byte		.L11441
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11429:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11446:
	.sleb128	5
	.4byte		.L11443-.L11390
	.byte		"IocRead_IOC_MasterToMaster"
	.byte		0
	.4byte		.L11401
	.uleb128	257
	.uleb128	32
	.4byte		.L11432
	.byte		0x1
	.byte		0x1
	.4byte		.L11444
	.4byte		.L11445
	.sleb128	6
	.4byte		.L11401
	.uleb128	257
	.uleb128	32
	.byte		"OUT0"
	.byte		0
	.4byte		.L11436
	.4byte		.L11447
.L11448:
	.sleb128	4
	.4byte		.L11401
	.uleb128	260
	.uleb128	38
	.byte		"retVal"
	.byte		0
	.4byte		.L11432
	.4byte		.L11449
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11443:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11454:
	.sleb128	5
	.4byte		.L11451-.L11390
	.byte		"IocSendGroup_IocNto1_0"
	.byte		0
	.4byte		.L11401
	.uleb128	293
	.uleb128	32
	.4byte		.L11432
	.byte		0x1
	.byte		0x1
	.4byte		.L11452
	.4byte		.L11453
	.sleb128	6
	.4byte		.L11401
	.uleb128	293
	.uleb128	32
	.byte		"IN0"
	.byte		0
	.4byte		.L11455
	.4byte		.L11458
	.sleb128	6
	.4byte		.L11401
	.uleb128	293
	.uleb128	32
	.byte		"IN1"
	.byte		0
	.4byte		.L11459
	.4byte		.L11460
.L11461:
	.sleb128	4
	.4byte		.L11401
	.uleb128	297
	.uleb128	38
	.byte		"retVal"
	.byte		0
	.4byte		.L11432
	.4byte		.L11462
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11466
	.4byte		.L11463
	.4byte		.L11464
.L11467:
	.sleb128	4
	.4byte		.L11401
	.uleb128	308
	.uleb128	52
	.byte		"newIndex"
	.byte		0
	.4byte		.L11408
	.4byte		.L11468
.L11469:
	.sleb128	4
	.4byte		.L11401
	.uleb128	309
	.uleb128	62
	.byte		"newDataPtr"
	.byte		0
	.4byte		.L11413
	.4byte		.L11470
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11466:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11451:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11475:
	.sleb128	5
	.4byte		.L11472-.L11390
	.byte		"IocSendGroup_IocNto1_1"
	.byte		0
	.4byte		.L11401
	.uleb128	332
	.uleb128	32
	.4byte		.L11432
	.byte		0x1
	.byte		0x1
	.4byte		.L11473
	.4byte		.L11474
	.sleb128	6
	.4byte		.L11401
	.uleb128	332
	.uleb128	32
	.byte		"IN0"
	.byte		0
	.4byte		.L11455
	.4byte		.L11476
	.sleb128	6
	.4byte		.L11401
	.uleb128	332
	.uleb128	32
	.byte		"IN1"
	.byte		0
	.4byte		.L11459
	.4byte		.L11477
.L11478:
	.sleb128	4
	.4byte		.L11401
	.uleb128	336
	.uleb128	38
	.byte		"retVal"
	.byte		0
	.4byte		.L11432
	.4byte		.L11479
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11483
	.4byte		.L11480
	.4byte		.L11481
.L11484:
	.sleb128	4
	.4byte		.L11401
	.uleb128	347
	.uleb128	52
	.byte		"newIndex"
	.byte		0
	.4byte		.L11408
	.4byte		.L11485
.L11486:
	.sleb128	4
	.4byte		.L11401
	.uleb128	348
	.uleb128	62
	.byte		"newDataPtr"
	.byte		0
	.4byte		.L11413
	.4byte		.L11487
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11483:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11472:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11492:
	.sleb128	5
	.4byte		.L11489-.L11390
	.byte		"IocReceiveGroup_IocNto1"
	.byte		0
	.4byte		.L11401
	.uleb128	371
	.uleb128	32
	.4byte		.L11432
	.byte		0x1
	.byte		0x1
	.4byte		.L11490
	.4byte		.L11491
	.sleb128	6
	.4byte		.L11401
	.uleb128	371
	.uleb128	32
	.byte		"OUT0"
	.byte		0
	.4byte		.L11455
	.4byte		.L11493
	.sleb128	6
	.4byte		.L11401
	.uleb128	371
	.uleb128	32
	.byte		"OUT1"
	.byte		0
	.4byte		.L11459
	.4byte		.L11494
.L11495:
	.sleb128	4
	.4byte		.L11401
	.uleb128	375
	.uleb128	38
	.byte		"retVal"
	.byte		0
	.4byte		.L11432
	.4byte		.L11496
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11500
	.4byte		.L11497
	.4byte		.L11498
.L11501:
	.sleb128	4
	.4byte		.L11401
	.uleb128	387
	.uleb128	52
	.byte		"newIndex"
	.byte		0
	.4byte		.L11408
	.4byte		.L11502
.L11503:
	.sleb128	4
	.4byte		.L11401
	.uleb128	388
	.uleb128	62
	.byte		"newDataPtr"
	.byte		0
	.4byte		.L11413
	.4byte		.L11504
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11500:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11489:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11506:
	.4byte		.L11507-.L11505
.L11505:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11511-.L11506
	.byte		"gen\\MPC5746R_ECU\\WindRiver\\Ioc.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11508
	.4byte		.L11509
	.4byte		.L11512
.L11518:
	.sleb128	5
	.4byte		.L11514-.L11506
	.byte		"IocEmptyQueue_IocNto1"
	.byte		0
	.4byte		.L11517
	.uleb128	413
	.uleb128	32
	.4byte		.L11432
	.byte		0x1
	.byte		0x1
	.4byte		.L11515
	.4byte		.L11516
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11514:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11523:
	.sleb128	5
	.4byte		.L11520-.L11390
	.byte		"IocSend_OsIocCommunication"
	.byte		0
	.4byte		.L11401
	.uleb128	437
	.uleb128	32
	.4byte		.L11432
	.byte		0x1
	.byte		0x1
	.4byte		.L11521
	.4byte		.L11522
	.sleb128	6
	.4byte		.L11401
	.uleb128	437
	.uleb128	32
	.byte		"IN0"
	.byte		0
	.4byte		.L11455
	.4byte		.L11524
.L11525:
	.sleb128	4
	.4byte		.L11401
	.uleb128	440
	.uleb128	38
	.byte		"retVal"
	.byte		0
	.4byte		.L11432
	.4byte		.L11526
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11530
	.4byte		.L11527
	.4byte		.L11528
.L11531:
	.sleb128	4
	.4byte		.L11401
	.uleb128	451
	.uleb128	52
	.byte		"newIndex"
	.byte		0
	.4byte		.L11408
	.4byte		.L11532
.L11533:
	.sleb128	4
	.4byte		.L11401
	.uleb128	452
	.uleb128	73
	.byte		"newDataPtr"
	.byte		0
	.4byte		.L11424
	.4byte		.L11534
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11530:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11520:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11539:
	.sleb128	5
	.4byte		.L11536-.L11390
	.byte		"IocReceive_OsIocCommunication"
	.byte		0
	.4byte		.L11401
	.uleb128	474
	.uleb128	32
	.4byte		.L11432
	.byte		0x1
	.byte		0x1
	.4byte		.L11537
	.4byte		.L11538
	.sleb128	6
	.4byte		.L11401
	.uleb128	474
	.uleb128	32
	.byte		"OUT0"
	.byte		0
	.4byte		.L11455
	.4byte		.L11540
.L11541:
	.sleb128	4
	.4byte		.L11401
	.uleb128	477
	.uleb128	38
	.byte		"retVal"
	.byte		0
	.4byte		.L11432
	.4byte		.L11542
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11546
	.4byte		.L11543
	.4byte		.L11544
.L11547:
	.sleb128	4
	.4byte		.L11401
	.uleb128	489
	.uleb128	52
	.byte		"newIndex"
	.byte		0
	.4byte		.L11408
	.4byte		.L11548
.L11549:
	.sleb128	4
	.4byte		.L11401
	.uleb128	490
	.uleb128	73
	.byte		"newDataPtr"
	.byte		0
	.4byte		.L11424
	.4byte		.L11550
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11546:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11536:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11555:
	.sleb128	5
	.4byte		.L11552-.L11506
	.byte		"IocEmptyQueue_OsIocCommunication"
	.byte		0
	.4byte		.L11517
	.uleb128	514
	.uleb128	32
	.4byte		.L11432
	.byte		0x1
	.byte		0x1
	.4byte		.L11553
	.4byte		.L11554
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11552:
	.section	.debug_info,,n
.L11556:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L11557
	.uleb128	120
	.uleb128	45
	.byte		"Os_PublicData"
	.byte		0
	.4byte		.L11558
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11563:
	.sleb128	8
	.4byte		.L11564
	.uleb128	98
	.uleb128	52
	.byte		"IOC_MasterToMasterChannel"
	.byte		0
	.4byte		.L11565
	.sleb128	5
	.byte		0x3
	.4byte		IOC_MasterToMasterChannel
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11569:
	.sleb128	8
	.4byte		.L11564
	.uleb128	99
	.uleb128	41
	.byte		"IocNto1Channel"
	.byte		0
	.4byte		.L11570
	.sleb128	5
	.byte		0x3
	.4byte		IocNto1Channel
	.section	.debug_info,,n
.L11572:
	.sleb128	8
	.4byte		.L11564
	.uleb128	100
	.uleb128	52
	.byte		"OsIocCommunicationChannel"
	.byte		0
	.4byte		.L11573
	.sleb128	5
	.byte		0x3
	.4byte		OsIocCommunicationChannel
	.section	.debug_info,,n
.L11575:
	.sleb128	8
	.4byte		.L11564
	.uleb128	112
	.uleb128	44
	.byte		"IOC_MasterToMaster_Dyn"
	.byte		0
	.4byte		.L11576
	.sleb128	5
	.byte		0x3
	.4byte		IOC_MasterToMaster_Dyn
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11578:
	.sleb128	8
	.4byte		.L11564
	.uleb128	113
	.uleb128	44
	.byte		"IocNto1_Dyn"
	.byte		0
	.4byte		.L11576
	.sleb128	5
	.byte		0x3
	.4byte		IocNto1_Dyn
	.section	.debug_info,,n
.L11579:
	.sleb128	8
	.4byte		.L11564
	.uleb128	114
	.uleb128	44
	.byte		"OsIocCommunication_Dyn"
	.byte		0
	.4byte		.L11576
	.sleb128	5
	.byte		0x3
	.4byte		OsIocCommunication_Dyn
	.section	.debug_info,,n
.L11580:
	.sleb128	8
	.4byte		.L11564
	.uleb128	138
	.uleb128	49
	.byte		"IOC_MasterToMaster_Stat"
	.byte		0
	.4byte		.L11581
	.sleb128	5
	.byte		0x3
	.4byte		IOC_MasterToMaster_Stat
	.section	.debug_info,,n
	.section	.debug_info,,n
.L11584:
	.sleb128	8
	.4byte		.L11564
	.uleb128	149
	.uleb128	49
	.byte		"IocNto1_Stat"
	.byte		0
	.4byte		.L11581
	.sleb128	5
	.byte		0x3
	.4byte		IocNto1_Stat
	.section	.debug_info,,n
.L11585:
	.sleb128	8
	.4byte		.L11564
	.uleb128	160
	.uleb128	49
	.byte		"OsIocCommunication_Stat"
	.byte		0
	.4byte		.L11581
	.sleb128	5
	.byte		0x3
	.4byte		OsIocCommunication_Stat
	.section	.debug_info,,n
.L11426:
	.sleb128	9
	.4byte		.L11586
	.uleb128	155
	.uleb128	1
	.4byte		.L11587-.L2
	.uleb128	4
	.section	.debug_info,,n
.L11350:
	.sleb128	10
	.byte		"OsIocCommunication_0"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11587:
.L11415:
	.sleb128	9
	.4byte		.L11586
	.uleb128	155
	.uleb128	1
	.4byte		.L11588-.L2
	.uleb128	8
.L11348:
	.sleb128	10
	.byte		"IocNto1_0"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L11349:
	.sleb128	10
	.byte		"IocNto1_1"
	.byte		0
	.4byte		.L11433
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11588:
.L11568:
	.sleb128	9
	.4byte		.L11586
	.uleb128	155
	.uleb128	1
	.4byte		.L11589-.L2
	.uleb128	4
.L11347:
	.sleb128	10
	.byte		"IOC_MasterToMaster_0"
	.byte		0
	.4byte		.L11437
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11589:
.L11583:
	.sleb128	9
	.4byte		.L11590
	.uleb128	33
	.uleb128	14
	.4byte		.L11591-.L2
	.uleb128	24
.L585:
	.sleb128	10
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11592
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L586:
	.sleb128	10
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11408
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L587:
	.sleb128	10
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11594
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L588:
	.sleb128	10
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11597
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L589:
	.sleb128	10
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11598
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L590:
	.sleb128	10
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11600
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L591:
	.sleb128	10
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11605
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11591:
.L11604:
	.sleb128	9
	.4byte		.L11590
	.uleb128	33
	.uleb128	14
	.4byte		.L11608-.L2
	.uleb128	4
.L581:
	.sleb128	10
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11609
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L582:
	.sleb128	10
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11611
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11608:
.L11577:
	.sleb128	9
	.4byte		.L11590
	.uleb128	33
	.uleb128	14
	.4byte		.L11613-.L2
	.uleb128	6
.L578:
	.sleb128	10
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11408
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L579:
	.sleb128	10
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11408
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L580:
	.sleb128	10
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11432
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11613:
.L11562:
	.sleb128	9
	.4byte		.L11614
	.uleb128	32
	.uleb128	1
	.4byte		.L11615-.L2
	.uleb128	8
.L426:
	.sleb128	10
	.byte		"Os_PublicDataNoInitRef"
	.byte		0
	.4byte		.L11616
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L427:
	.sleb128	10
	.byte		"Os_PublicDataVarInitRef"
	.byte		0
	.4byte		.L11621
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11615:
.L11624:
	.sleb128	9
	.4byte		.L11614
	.uleb128	32
	.uleb128	1
	.4byte		.L11625-.L2
	.uleb128	4
.L425:
	.sleb128	10
	.byte		"Os_ISRServices"
	.byte		0
	.4byte		.L11626
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11625:
.L11620:
	.sleb128	9
	.4byte		.L11614
	.uleb128	32
	.uleb128	1
	.4byte		.L11630-.L2
	.uleb128	144
.L423:
	.sleb128	10
	.byte		"Os_Error"
	.byte		0
	.4byte		.L11631
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L424:
	.sleb128	10
	.byte		"Os_ExceptionStatus"
	.byte		0
	.4byte		.L11633
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
	.sleb128	0
.L11630:
.L11629:
	.sleb128	9
	.4byte		.L11614
	.uleb128	32
	.uleb128	1
	.4byte		.L11635-.L2
	.uleb128	24
.L417:
	.sleb128	10
	.byte		"Os_DisAllInt"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L418:
	.sleb128	10
	.byte		"Os_EnAllInt"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L419:
	.sleb128	10
	.byte		"Os_SusAllInt"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L420:
	.sleb128	10
	.byte		"Os_ResAllInt"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L421:
	.sleb128	10
	.byte		"Os_SusOsInt"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L422:
	.sleb128	10
	.byte		"Os_ResOsInt"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11635:
.L11634:
	.sleb128	9
	.4byte		.L11614
	.uleb128	32
	.uleb128	1
	.4byte		.L11641-.L2
	.uleb128	20
.L412:
	.sleb128	10
	.byte		"Os_ExceptionType"
	.byte		0
	.4byte		.L11642
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L413:
	.sleb128	10
	.byte		"Os_ExceptionCause"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L414:
	.sleb128	10
	.byte		"Os_ExceptionAuxiliaryCause"
	.byte		0
	.4byte		.L11456
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L415:
	.sleb128	10
	.byte		"Os_ExceptionExecutionAddress"
	.byte		0
	.4byte		.L11644
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L416:
	.sleb128	10
	.byte		"Os_ExceptionAccessAddress"
	.byte		0
	.4byte		.L11644
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11641:
.L11632:
	.sleb128	9
	.4byte		.L11645
	.uleb128	174
	.uleb128	1
	.4byte		.L11646-.L2
	.uleb128	120
.L409:
	.sleb128	10
	.byte		"Os_ShutdownError"
	.byte		0
	.4byte		.L11647
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L410:
	.sleb128	10
	.byte		"Os_ParameterError"
	.byte		0
	.4byte		.L11649
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L411:
	.sleb128	10
	.byte		"Os_ServiceError"
	.byte		0
	.4byte		.L11651
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
	.sleb128	0
.L11646:
.L11652:
	.sleb128	9
	.4byte		.L11645
	.uleb128	174
	.uleb128	1
	.4byte		.L11653-.L2
	.uleb128	8
.L406:
	.sleb128	10
	.byte		"Os_ServiceTrace"
	.byte		0
	.4byte		.L11654
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L407:
	.sleb128	10
	.byte		"Os_LastError"
	.byte		0
	.4byte		.L11432
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L408:
	.sleb128	10
	.byte		"Os_FaultyServiceId"
	.byte		0
	.4byte		.L11655
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11653:
.L11650:
	.sleb128	9
	.4byte		.L11645
	.uleb128	174
	.uleb128	1
	.4byte		.L11657-.L2
	.uleb128	104
.L381:
	.sleb128	10
	.byte		"Os_Err_TaskID"
	.byte		0
	.4byte		.L11658
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L382:
	.sleb128	10
	.byte		"Os_Err_ResID"
	.byte		0
	.4byte		.L11661
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L383:
	.sleb128	10
	.byte		"Os_Err_MaskType_Mask"
	.byte		0
	.4byte		.L11662
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L384:
	.sleb128	10
	.byte		"Os_Err_AlarmID"
	.byte		0
	.4byte		.L11665
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L385:
	.sleb128	10
	.byte		"Os_Err_TicksStart"
	.byte		0
	.4byte		.L11666
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L386:
	.sleb128	10
	.byte		"Os_Err_TicksCycle"
	.byte		0
	.4byte		.L11666
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L387:
	.sleb128	10
	.byte		"Os_Err_FuncIndex"
	.byte		0
	.4byte		.L11667
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L388:
	.sleb128	10
	.byte		"Os_Err_FuncParamRefType"
	.byte		0
	.4byte		.L11668
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L389:
	.sleb128	10
	.byte		"Os_Err_ApplID"
	.byte		0
	.4byte		.L11669
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L390:
	.sleb128	10
	.byte		"Os_Err_ApplStateRefType"
	.byte		0
	.4byte		.L11670
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L391:
	.sleb128	10
	.byte		"Os_Err_ObjType"
	.byte		0
	.4byte		.L11673
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L392:
	.sleb128	10
	.byte		"Os_Err_SchedID"
	.byte		0
	.4byte		.L11675
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L393:
	.sleb128	10
	.byte		"Os_Err_SchedID_Next"
	.byte		0
	.4byte		.L11675
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L394:
	.sleb128	10
	.byte		"Os_Err_CntID"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L395:
	.sleb128	10
	.byte		"Os_Err_RestartType"
	.byte		0
	.4byte		.L11677
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L396:
	.sleb128	10
	.byte		"Os_Err_MaskRefType"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L397:
	.sleb128	10
	.byte		"Os_Err_TaskStateRef"
	.byte		0
	.4byte		.L11680
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L398:
	.sleb128	10
	.byte		"Os_Err_TickRef_Ticks"
	.byte		0
	.4byte		.L11684
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L399:
	.sleb128	10
	.byte		"Os_Err_AlarmBaseRefType_Info"
	.byte		0
	.4byte		.L11686
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L400:
	.sleb128	10
	.byte		"Os_Err_TaskIDRef"
	.byte		0
	.4byte		.L11690
	.sleb128	2
	.byte		0x23
	.uleb128	80
	.byte		0x1
.L401:
	.sleb128	10
	.byte		"Os_Err_TblStatusRefType"
	.byte		0
	.4byte		.L11692
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L402:
	.sleb128	10
	.byte		"Os_Err_TickRef_ElapsedTicks"
	.byte		0
	.4byte		.L11684
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L403:
	.sleb128	10
	.byte		"Os_Err_ObjObj"
	.byte		0
	.4byte		.L11660
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L404:
	.sleb128	10
	.byte		"Os_Err_SpinlockID"
	.byte		0
	.4byte		.L11696
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L405:
	.sleb128	10
	.byte		"Os_Err_TryToGetSpinlockRef"
	.byte		0
	.4byte		.L11697
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
	.sleb128	0
.L11657:
.L11648:
	.sleb128	9
	.4byte		.L11645
	.uleb128	174
	.uleb128	1
	.4byte		.L11701-.L2
	.uleb128	8
.L379:
	.sleb128	10
	.byte		"Os_ShutdownErrorCode"
	.byte		0
	.4byte		.L11432
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L380:
	.sleb128	10
	.byte		"Os_ShutdownInternalErrorCode"
	.byte		0
	.4byte		.L11702
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11701:
.L11689:
	.sleb128	9
	.4byte		.L11704
	.uleb128	50
	.uleb128	1
	.4byte		.L11705-.L2
	.uleb128	12
.L376:
	.sleb128	10
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11666
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	10
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11666
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	10
	.byte		"mincycle"
	.byte		0
	.4byte		.L11666
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11705:
	.section	.debug_info,,n
.L11643:
	.sleb128	11
	.4byte		.L11614
	.uleb128	32
	.uleb128	1
	.4byte		.L11706-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"OS_EXCEPTION_NONE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"OS_EXCEPTION_CRITICAL_INPUT"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"OS_EXCEPTION_MACHINE_CHECK"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"OS_EXCEPTION_DATA_STORAGE"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"OS_EXCEPTION_INSTRUCTION_STORAGE"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"OS_EXCEPTION_EXTERNAL_INPUT"
	.byte		0
	.sleb128	5
	.sleb128	12
	.byte		"OS_EXCEPTION_ALIGNMENT"
	.byte		0
	.sleb128	6
	.sleb128	12
	.byte		"OS_EXCEPTION_PROGRAM"
	.byte		0
	.sleb128	7
	.sleb128	12
	.byte		"OS_EXCEPTION_FLOATINGPOINT_UNAVAILABLE"
	.byte		0
	.sleb128	8
	.sleb128	12
	.byte		"OS_EXCEPTION_AUX_PROC_UNAVAILABLE"
	.byte		0
	.sleb128	9
	.sleb128	12
	.byte		"OS_EXCEPTION_DECREMENTER"
	.byte		0
	.sleb128	10
	.sleb128	12
	.byte		"OS_EXCEPTION_FIXED_INTERVAL_TIMER"
	.byte		0
	.sleb128	11
	.sleb128	12
	.byte		"OS_EXCEPTION_WATCHDOG"
	.byte		0
	.sleb128	12
	.sleb128	12
	.byte		"OS_EXCEPTION_DATA_TLB_ERROR"
	.byte		0
	.sleb128	13
	.sleb128	12
	.byte		"OS_EXCEPTION_INSTRUCTION_TLB_ERROR"
	.byte		0
	.sleb128	14
	.sleb128	12
	.byte		"OS_EXCEPTION_DEBUG"
	.byte		0
	.sleb128	15
	.sleb128	12
	.byte		"OS_EXCEPTION_SPE_UNAVAILABLE"
	.byte		0
	.sleb128	16
	.sleb128	12
	.byte		"OS_EXCEPTION_SPE_DATA"
	.byte		0
	.sleb128	17
	.sleb128	12
	.byte		"OS_EXCEPTION_SPE_ROUND"
	.byte		0
	.sleb128	18
	.sleb128	12
	.byte		"OS_EXCEPTION_COUNT"
	.byte		0
	.sleb128	19
	.sleb128	0
.L11706:
.L11703:
	.sleb128	11
	.4byte		.L11645
	.uleb128	174
	.uleb128	1
	.4byte		.L11707-.L2
	.uleb128	4
	.sleb128	12
	.byte		"E_OS_SYS_OK"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"E_OS_SYS_UNKNOWN_API"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_STARTSTATE"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_MASTERAPPMODE"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_SLAVEAPPMODE"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"E_OS_SYS_COUNTERACTION_OVERFLOW"
	.byte		0
	.sleb128	5
	.sleb128	12
	.byte		"E_OS_SYS_COUNTEREP_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_COUNTEROWNER"
	.byte		0
	.sleb128	7
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_APIMAGIC"
	.byte		0
	.sleb128	8
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND1"
	.byte		0
	.sleb128	9
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND2"
	.byte		0
	.sleb128	10
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND3"
	.byte		0
	.sleb128	11
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND4"
	.byte		0
	.sleb128	12
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_DISPATCHKIND5"
	.byte		0
	.sleb128	13
	.sleb128	12
	.byte		"E_OS_SYS_DISPATCHER_OVERFLOW"
	.byte		0
	.sleb128	14
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_ALARMACTION"
	.byte		0
	.sleb128	15
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_SCHTBLSTARTKIND"
	.byte		0
	.sleb128	16
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_ISRPROCKIND"
	.byte		0
	.sleb128	17
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TPSTATE1"
	.byte		0
	.sleb128	18
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TPSTATE2"
	.byte		0
	.sleb128	19
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TPSTATE3"
	.byte		0
	.sleb128	20
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TPSTATE4"
	.byte		0
	.sleb128	21
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TPSTATE5"
	.byte		0
	.sleb128	22
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION0"
	.byte		0
	.sleb128	23
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION1"
	.byte		0
	.sleb128	24
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION2"
	.byte		0
	.sleb128	25
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION3"
	.byte		0
	.sleb128	26
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION4"
	.byte		0
	.sleb128	27
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_TASKSTATETRANZITION5"
	.byte		0
	.sleb128	28
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_QUEUEHEAD"
	.byte		0
	.sleb128	29
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_QUEUEINDEX"
	.byte		0
	.sleb128	30
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_PROCSTATE"
	.byte		0
	.sleb128	31
	.sleb128	12
	.byte		"E_OS_SYS_LINKTIMEGUARD_ERROR"
	.byte		0
	.sleb128	32
	.sleb128	12
	.byte		"E_OS_SYS_WRONG_CORESTATE"
	.byte		0
	.sleb128	33
	.sleb128	12
	.byte		"E_OS_SYS_COUNTERID"
	.byte		0
	.sleb128	34
	.sleb128	12
	.byte		"E_OS_SYS_COUNTER_CANCELEDNOTFOUND"
	.byte		0
	.sleb128	35
	.sleb128	12
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN"
	.byte		0
	.sleb128	36
	.sleb128	12
	.byte		"E_OS_SYS_COUNTER_ACTIONCHAINISBROKEN2"
	.byte		0
	.sleb128	37
	.sleb128	12
	.byte		"E_OS_SYS_COUNTER_EPCHAINISBROKEN"
	.byte		0
	.sleb128	38
	.sleb128	12
	.byte		"E_OS_SYS_ALARMID"
	.byte		0
	.sleb128	39
	.sleb128	12
	.byte		"E_OS_SYS_RESUMEPROC_MAXACTIVATION"
	.byte		0
	.sleb128	40
	.sleb128	12
	.byte		"E_OS_SYS_QUEUEELEMENT_OVERFLOW"
	.byte		0
	.sleb128	41
	.sleb128	12
	.byte		"E_OS_SYS_SCHEDULER_ERROR"
	.byte		0
	.sleb128	42
	.sleb128	12
	.byte		"E_OS_SYS_EVENTSTAT"
	.byte		0
	.sleb128	43
	.sleb128	12
	.byte		"E_OS_SYS_TASKID"
	.byte		0
	.sleb128	44
	.sleb128	12
	.byte		"E_OS_SYS_TASKMISSINGEND_PROCKIND"
	.byte		0
	.sleb128	45
	.sleb128	12
	.byte		"E_OS_SYS_TASKMISSINGEND_COREID"
	.byte		0
	.sleb128	46
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_TIMINGPROTECTIONSTATE"
	.byte		0
	.sleb128	47
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_EXCEPTION"
	.byte		0
	.sleb128	48
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_PLATFORM_TIMER"
	.byte		0
	.sleb128	49
	.sleb128	12
	.byte		"E_OS_SYS_KERNELSTACK_OVERFLOW"
	.byte		0
	.sleb128	50
	.sleb128	12
	.byte		"E_OS_SYS_INVALID_SECTION_SIZE"
	.byte		0
	.sleb128	51
	.sleb128	12
	.byte		"E_OS_SYS_MEMPROT_INVALID_APP"
	.byte		0
	.sleb128	52
	.sleb128	12
	.byte		"E_OS_SYS_CALLEVEL"
	.byte		0
	.sleb128	53
	.sleb128	12
	.byte		"E_OS_SYS_TIMER_RUNNING"
	.byte		0
	.sleb128	54
	.sleb128	12
	.byte		"E_OS_SYS_TIMER_STOPPED"
	.byte		0
	.sleb128	55
	.sleb128	12
	.byte		"E_OS_SYS_TIMER_TOO_MUCH_JITTER"
	.byte		0
	.sleb128	56
	.sleb128	12
	.byte		"E_OS_SYS_SSG_NESTING"
	.byte		0
	.sleb128	57
	.sleb128	12
	.byte		"E_OS_SYS_SSG_OVERFLOW"
	.byte		0
	.sleb128	58
	.sleb128	12
	.byte		"E_OS_SYS_CORELOCK_LOCKED"
	.byte		0
	.sleb128	59
	.sleb128	12
	.byte		"E_OS_SYS_CORELOCK_UNLOCKED"
	.byte		0
	.sleb128	60
	.sleb128	12
	.byte		"E_OS_SYS_TFPROCAPPINCONSISTENCY"
	.byte		0
	.sleb128	61
	.sleb128	12
	.byte		"E_OS_SYS_PROCENABLEDALREADY"
	.byte		0
	.sleb128	62
	.sleb128	0
.L11707:
.L11656:
	.sleb128	11
	.4byte		.L11645
	.uleb128	86
	.uleb128	1
	.4byte		.L11708-.L2
	.uleb128	4
	.sleb128	12
	.byte		"OSServiceId_GetApplicationID"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"OSServiceId_GetISRID"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"OSServiceId_CallTrustedFunction"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"OSServiceId_CheckISRMemoryAccess"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"OSServiceId_CheckTaskMemoryAccess"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"OSServiceId_CheckObjectAccess"
	.byte		0
	.sleb128	5
	.sleb128	12
	.byte		"OSServiceId_CheckObjectOwnership"
	.byte		0
	.sleb128	6
	.sleb128	12
	.byte		"OSServiceId_StartScheduleTableRel"
	.byte		0
	.sleb128	7
	.sleb128	12
	.byte		"OSServiceId_StartScheduleTableAbs"
	.byte		0
	.sleb128	8
	.sleb128	12
	.byte		"OSServiceId_StopScheduleTable"
	.byte		0
	.sleb128	9
	.sleb128	12
	.byte		"OSServiceId_NextScheduleTable"
	.byte		0
	.sleb128	10
	.sleb128	12
	.byte		"OSServiceId_StartScheduleTableSynchron"
	.byte		0
	.sleb128	11
	.sleb128	12
	.byte		"OSServiceId_SyncScheduleTable"
	.byte		0
	.sleb128	12
	.sleb128	12
	.byte		"OSServiceId_SetScheduleTableAsync"
	.byte		0
	.sleb128	13
	.sleb128	12
	.byte		"OSServiceId_GetScheduleTableStatus"
	.byte		0
	.sleb128	14
	.sleb128	12
	.byte		"OSServiceId_IncrementCounter"
	.byte		0
	.sleb128	15
	.sleb128	12
	.byte		"OSServiceId_GetCounterValue"
	.byte		0
	.sleb128	16
	.sleb128	12
	.byte		"OSServiceId_GetElapsedValue"
	.byte		0
	.sleb128	17
	.sleb128	12
	.byte		"OSServiceId_TerminateApplication"
	.byte		0
	.sleb128	18
	.sleb128	12
	.byte		"OSServiceId_AllowAcess"
	.byte		0
	.sleb128	19
	.sleb128	12
	.byte		"OSServiceId_GetApplicationState"
	.byte		0
	.sleb128	20
	.sleb128	12
	.byte		"OSServiceId_GetNumberOfActivatedCores"
	.byte		0
	.sleb128	21
	.sleb128	12
	.byte		"OSServiceId_GetCoreID"
	.byte		0
	.sleb128	22
	.sleb128	12
	.byte		"OSServiceId_StartCore"
	.byte		0
	.sleb128	23
	.sleb128	12
	.byte		"OSServiceId_StartNonAutosarCore"
	.byte		0
	.sleb128	24
	.sleb128	12
	.byte		"OSServiceId_GetSpinlock"
	.byte		0
	.sleb128	25
	.sleb128	12
	.byte		"OSServiceId_ReleaseSpinlock"
	.byte		0
	.sleb128	26
	.sleb128	12
	.byte		"OSServiceId_TryToGetSpinlock"
	.byte		0
	.sleb128	27
	.sleb128	12
	.byte		"OSServiceId_ShutdownAllCores"
	.byte		0
	.sleb128	28
	.sleb128	12
	.byte		"OSServiceId_ControlIdle"
	.byte		0
	.sleb128	29
	.sleb128	12
	.byte		"OSServiceId_IOC_Send"
	.byte		0
	.sleb128	30
	.sleb128	12
	.byte		"OSServiceId_IOC_Write"
	.byte		0
	.sleb128	31
	.sleb128	12
	.byte		"OSServiceId_IOC_SendGroup"
	.byte		0
	.sleb128	32
	.sleb128	12
	.byte		"OSServiceId_IOC_WriteFGroup"
	.byte		0
	.sleb128	33
	.sleb128	12
	.byte		"OSServiceId_IOC_Receive"
	.byte		0
	.sleb128	34
	.sleb128	12
	.byte		"OSServiceId_IOC_Read"
	.byte		0
	.sleb128	35
	.sleb128	12
	.byte		"OSServiceId_IOC_ReceiveGroup"
	.byte		0
	.sleb128	36
	.sleb128	12
	.byte		"OSServiceId_IOC_ReadGroup"
	.byte		0
	.sleb128	37
	.sleb128	12
	.byte		"OSServiceId_IOC_EmptyQueue"
	.byte		0
	.sleb128	38
	.sleb128	12
	.byte		"OSServiceId_IOC_ReceiverPullCB"
	.byte		0
	.sleb128	39
	.sleb128	12
	.byte		"OSServiceId_ActivateTask"
	.byte		0
	.sleb128	128
	.sleb128	12
	.byte		"OSServiceId_TerminateTask"
	.byte		0
	.sleb128	129
	.sleb128	12
	.byte		"OSServiceId_ChainTask"
	.byte		0
	.sleb128	130
	.sleb128	12
	.byte		"OSServiceId_Schedule"
	.byte		0
	.sleb128	131
	.sleb128	12
	.byte		"OSServiceId_GetTaskID"
	.byte		0
	.sleb128	132
	.sleb128	12
	.byte		"OSServiceId_GetTaskState"
	.byte		0
	.sleb128	133
	.sleb128	12
	.byte		"OSServiceId_EnableAllInterrupts"
	.byte		0
	.sleb128	134
	.sleb128	12
	.byte		"OSServiceId_DisableAllInterrupts"
	.byte		0
	.sleb128	135
	.sleb128	12
	.byte		"OSServiceId_ResumeAllInterrupts"
	.byte		0
	.sleb128	136
	.sleb128	12
	.byte		"OSServiceId_SuspendAllInterrupts"
	.byte		0
	.sleb128	137
	.sleb128	12
	.byte		"OSServiceId_ResumeOSInterrupts"
	.byte		0
	.sleb128	138
	.sleb128	12
	.byte		"OSServiceId_SuspendOSInterrupts"
	.byte		0
	.sleb128	139
	.sleb128	12
	.byte		"OSServiceId_GetResource"
	.byte		0
	.sleb128	140
	.sleb128	12
	.byte		"OSServiceId_ReleaseResource"
	.byte		0
	.sleb128	141
	.sleb128	12
	.byte		"OSServiceId_SetEvent"
	.byte		0
	.sleb128	142
	.sleb128	12
	.byte		"OSServiceId_ClearEvent"
	.byte		0
	.sleb128	143
	.sleb128	12
	.byte		"OSServiceId_GetEvent"
	.byte		0
	.sleb128	144
	.sleb128	12
	.byte		"OSServiceId_WaitEvent"
	.byte		0
	.sleb128	145
	.sleb128	12
	.byte		"OSServiceId_GetAlarmBase"
	.byte		0
	.sleb128	146
	.sleb128	12
	.byte		"OSServiceId_GetAlarm"
	.byte		0
	.sleb128	147
	.sleb128	12
	.byte		"OSServiceId_SetRelAlarm"
	.byte		0
	.sleb128	148
	.sleb128	12
	.byte		"OSServiceId_SetAbsAlarm"
	.byte		0
	.sleb128	149
	.sleb128	12
	.byte		"OSServiceId_CancelAlarm"
	.byte		0
	.sleb128	150
	.sleb128	12
	.byte		"OSServiceId_GetActiveApplicationMode"
	.byte		0
	.sleb128	151
	.sleb128	12
	.byte		"OSServiceId_StartOS"
	.byte		0
	.sleb128	152
	.sleb128	12
	.byte		"OSServiceId_ShutdownOS"
	.byte		0
	.sleb128	153
	.sleb128	12
	.byte		"OSServiceId_INVALIDSERVICE"
	.byte		0
	.sleb128	255
	.sleb128	0
.L11708:
.L11700:
	.sleb128	11
	.4byte		.L11709
	.uleb128	43
	.uleb128	1
	.4byte		.L11710-.L2
	.uleb128	4
	.sleb128	12
	.byte		"TRYTOGETSPINLOCK_SUCCESS"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"TRYTOGETSPINLOCK_NOSUCCESS"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11710:
.L11683:
	.sleb128	11
	.4byte		.L11711
	.uleb128	37
	.uleb128	1
	.4byte		.L11712-.L2
	.uleb128	4
	.sleb128	12
	.byte		"RUNNING"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"WAITING"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"READY"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"SUSPENDED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L11712:
.L11695:
	.sleb128	11
	.4byte		.L11713
	.uleb128	40
	.uleb128	1
	.4byte		.L11714-.L2
	.uleb128	4
	.sleb128	12
	.byte		"SCHEDULETABLE_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"SCHEDULETABLE_NEXT"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"SCHEDULETABLE_WAITING"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"SCHEDULETABLE_RUNNING"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS"
	.byte		0
	.sleb128	4
	.sleb128	0
.L11714:
.L11674:
	.sleb128	11
	.4byte		.L11715
	.uleb128	47
	.uleb128	1
	.4byte		.L11716-.L2
	.uleb128	4
	.sleb128	12
	.byte		"OBJECT_TASK"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"OBJECT_ISR"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"OBJECT_ALARM"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"OBJECT_RESOURCE"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"OBJECT_COUNTER"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"OBJECT_SCHEDULETABLE"
	.byte		0
	.sleb128	5
	.sleb128	0
.L11716:
	.section	.debug_info,,n
.L11410:
	.sleb128	13
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L11409:
	.sleb128	14
	.byte		"uint16"
	.byte		0
	.4byte		.L11410
.L11408:
	.sleb128	14
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11409
.L11414:
	.sleb128	14
	.byte		"IocNto1ChannelType"
	.byte		0
	.4byte		.L11415
	.section	.debug_info,,n
.L11413:
	.sleb128	15
	.4byte		.L11414
.L11425:
	.sleb128	14
	.byte		"OsIocCommunicationChannelType"
	.byte		0
	.4byte		.L11426
.L11424:
	.sleb128	15
	.4byte		.L11425
.L11434:
	.sleb128	13
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L11433:
	.sleb128	14
	.byte		"uint8"
	.byte		0
	.4byte		.L11434
.L11432:
	.sleb128	14
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11433
.L11438:
	.sleb128	13
	.byte		"long"
	.byte		0
	.byte		0x5
	.byte		0x4
.L11437:
	.sleb128	14
	.byte		"sint32"
	.byte		0
	.4byte		.L11438
.L11436:
	.sleb128	15
	.4byte		.L11437
.L11457:
	.sleb128	13
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11456:
	.sleb128	14
	.byte		"uint32"
	.byte		0
	.4byte		.L11457
.L11455:
	.sleb128	15
	.4byte		.L11456
.L11459:
	.sleb128	15
	.4byte		.L11433
.L11561:
	.sleb128	14
	.byte		"Os_PublicDataType"
	.byte		0
	.4byte		.L11562
	.section	.debug_info,,n
.L11560:
	.sleb128	16
	.4byte		.L11561
	.section	.debug_info,,n
.L11558:
	.sleb128	17
	.4byte		.L11559-.L2
	.4byte		.L11560
	.section	.debug_info,,n
	.sleb128	18
	.uleb128	1
	.sleb128	0
.L11559:
.L11567:
	.sleb128	14
	.byte		"IOC_MasterToMasterChannelType"
	.byte		0
	.4byte		.L11568
.L11565:
	.sleb128	17
	.4byte		.L11566-.L2
	.4byte		.L11567
	.sleb128	18
	.uleb128	0
	.sleb128	0
.L11566:
.L11570:
	.sleb128	17
	.4byte		.L11571-.L2
	.4byte		.L11414
	.sleb128	18
	.uleb128	1
	.sleb128	0
.L11571:
.L11573:
	.sleb128	17
	.4byte		.L11574-.L2
	.4byte		.L11425
	.sleb128	18
	.uleb128	0
	.sleb128	0
.L11574:
.L11576:
	.sleb128	14
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11577
.L11582:
	.sleb128	14
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11583
.L11581:
	.sleb128	16
	.4byte		.L11582
.L11593:
	.sleb128	15
	.4byte		.L11576
.L11592:
	.sleb128	16
	.4byte		.L11593
	.section	.debug_info,,n
.L11596:
	.sleb128	19
	.byte		"void"
	.byte		0
	.byte		0x0
.L11595:
	.sleb128	15
	.4byte		.L11596
.L11594:
	.sleb128	16
	.4byte		.L11595
.L11597:
	.sleb128	16
	.4byte		.L11409
.L11599:
	.sleb128	14
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11433
.L11598:
	.sleb128	16
	.4byte		.L11599
.L11603:
	.sleb128	14
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11604
.L11602:
	.sleb128	16
	.4byte		.L11603
.L11601:
	.sleb128	15
	.4byte		.L11602
.L11600:
	.sleb128	16
	.4byte		.L11601
.L11607:
	.sleb128	14
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11433
.L11606:
	.sleb128	15
	.4byte		.L11607
.L11605:
	.sleb128	16
	.4byte		.L11606
.L11610:
	.sleb128	14
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11409
.L11609:
	.sleb128	16
	.4byte		.L11610
.L11612:
	.sleb128	14
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11409
.L11611:
	.sleb128	16
	.4byte		.L11612
.L11619:
	.sleb128	14
	.byte		"Os_PublicData_NoInitType"
	.byte		0
	.4byte		.L11620
.L11618:
	.sleb128	16
	.4byte		.L11619
.L11617:
	.sleb128	15
	.4byte		.L11618
.L11616:
	.sleb128	16
	.4byte		.L11617
.L11623:
	.sleb128	14
	.byte		"Os_PublicData_VarInitType"
	.byte		0
	.4byte		.L11624
.L11622:
	.sleb128	15
	.4byte		.L11623
.L11621:
	.sleb128	16
	.4byte		.L11622
.L11628:
	.sleb128	14
	.byte		"Os_IsrApiTable"
	.byte		0
	.4byte		.L11629
.L11627:
	.sleb128	16
	.4byte		.L11628
.L11626:
	.sleb128	15
	.4byte		.L11627
.L11631:
	.sleb128	14
	.byte		"Os_ErrorType"
	.byte		0
	.4byte		.L11632
.L11633:
	.sleb128	14
	.byte		"Os_ExceptionStatusType"
	.byte		0
	.4byte		.L11634
	.section	.debug_info,,n
.L11639:
	.sleb128	20
	.4byte		.L11640-.L2
	.byte		0x1
	.sleb128	0
.L11640:
.L11638:
	.sleb128	15
	.4byte		.L11639
.L11637:
	.sleb128	14
	.byte		"Os_IsrHandlerFuncType"
	.byte		0
	.4byte		.L11638
.L11636:
	.sleb128	16
	.4byte		.L11637
.L11642:
	.sleb128	14
	.byte		"Os_ExceptionTypeType"
	.byte		0
	.4byte		.L11643
.L11644:
	.sleb128	14
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11456
.L11647:
	.sleb128	14
	.byte		"Os_ShudownErrorType"
	.byte		0
	.4byte		.L11648
.L11649:
	.sleb128	14
	.byte		"Os_ParameterErrorType"
	.byte		0
	.4byte		.L11650
.L11651:
	.sleb128	14
	.byte		"Os_ServiceErrorType"
	.byte		0
	.4byte		.L11652
.L11654:
	.sleb128	14
	.byte		"ServiceTraceType"
	.byte		0
	.4byte		.L11433
.L11655:
	.sleb128	14
	.byte		"OSServiceIdType"
	.byte		0
	.4byte		.L11656
.L11660:
	.sleb128	14
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11456
.L11659:
	.sleb128	14
	.byte		"ProcType"
	.byte		0
	.4byte		.L11660
.L11658:
	.sleb128	14
	.byte		"TaskType"
	.byte		0
	.4byte		.L11659
.L11661:
	.sleb128	14
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11456
.L11664:
	.sleb128	13
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11663:
	.sleb128	14
	.byte		"uint64"
	.byte		0
	.4byte		.L11664
.L11662:
	.sleb128	14
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11663
.L11665:
	.sleb128	14
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11660
.L11666:
	.sleb128	14
	.byte		"TickType"
	.byte		0
	.4byte		.L11456
.L11667:
	.sleb128	14
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11456
.L11668:
	.sleb128	14
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11595
.L11669:
	.sleb128	14
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11433
.L11672:
	.sleb128	14
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11433
.L11671:
	.sleb128	15
	.4byte		.L11672
.L11670:
	.sleb128	14
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11671
.L11673:
	.sleb128	14
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11674
.L11675:
	.sleb128	14
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11456
.L11676:
	.sleb128	14
	.byte		"CounterType"
	.byte		0
	.4byte		.L11456
.L11677:
	.sleb128	14
	.byte		"RestartType"
	.byte		0
	.4byte		.L11433
.L11679:
	.sleb128	15
	.4byte		.L11662
.L11678:
	.sleb128	14
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11679
.L11682:
	.sleb128	14
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11683
.L11681:
	.sleb128	15
	.4byte		.L11682
.L11680:
	.sleb128	14
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11681
.L11685:
	.sleb128	15
	.4byte		.L11666
.L11684:
	.sleb128	14
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11685
.L11688:
	.sleb128	14
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11689
.L11687:
	.sleb128	15
	.4byte		.L11688
.L11686:
	.sleb128	14
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11687
.L11691:
	.sleb128	15
	.4byte		.L11658
.L11690:
	.sleb128	14
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11691
.L11694:
	.sleb128	14
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11695
.L11693:
	.sleb128	15
	.4byte		.L11694
.L11692:
	.sleb128	14
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11693
.L11696:
	.sleb128	14
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11409
.L11699:
	.sleb128	14
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11700
.L11698:
	.sleb128	15
	.4byte		.L11699
.L11697:
	.sleb128	14
	.byte		"TryToGetSpinlockRefType"
	.byte		0
	.4byte		.L11698
.L11702:
	.sleb128	14
	.byte		"Os_SystemInternalErrorType"
	.byte		0
	.4byte		.L11703
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11395:
	.sleb128	0
.L11391:
	.section	.debug_info.Os_PUBLIC_TEXT,,n
	.sectionlink	.debug_info
.L11511:
	.sleb128	0
.L11507:

	.section	.debug_loc,,n
	.align	0
.L11411:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),5
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),5
	.d2locend
.L11416:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo4),3
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locend
.L11422:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),0
	.d2locend
.L11427:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo11),3
	.d2locend
.L11439:
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),3
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),31
	.d2locend
.L11441:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),31
	.d2locend
.L11447:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),3
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),31
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),31
	.d2locend
.L11449:
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo23),31
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo22),31
	.d2locend
.L11458:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),31
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),31
	.d2locend
.L11460:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),4
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo30),30
	.d2locend
.L11462:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo29),31
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo32),31
	.d2locend
.L11468:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),5
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo30),0
	.d2locend
.L11470:
	.d2locreg	%offsetof(.Llo36), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locend
.L11476:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),3
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),31
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),31
	.d2locend
.L11477:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),4
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo44),30
	.d2locend
.L11479:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo43),31
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo46),31
	.d2locend
.L11485:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),5
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo44),0
	.d2locend
.L11487:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo44),3
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),3
	.d2locend
.L11493:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),3
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),31
	.d2locreg	%offsetof(.Llo57), %offsetof(.Llo58),31
	.d2locend
.L11494:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),4
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo59),30
	.d2locend
.L11496:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo57),31
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo61),31
	.d2locend
.L11502:
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),0
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo59),6
	.d2locend
.L11504:
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo59),4
	.d2locend
.L11524:
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),3
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),31
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),31
	.d2locend
.L11526:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo70),31
	.d2locreg	%offsetof(.Llo71), %offsetof(.Llo73),31
	.d2locend
.L11532:
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),5
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo71),0
	.d2locend
.L11534:
	.d2locreg	%offsetof(.Llo77), %offsetof(.Llo71),3
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),3
	.d2locend
.L11540:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),3
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),31
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),31
	.d2locend
.L11542:
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo84),31
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo87),31
	.d2locend
.L11548:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),0
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),6
	.d2locend
.L11550:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo91),4
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "IocEmptyQueue_OsIocCommunication"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "OS_COREID_SYS_CALL"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "IocReceive_OsIocCommunication"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "OS_COREID_SYS_CALL"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "IocSend_OsIocCommunication"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "OS_COREID_SYS_CALL"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "IocEmptyQueue_IocNto1"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "OS_COREID_SYS_CALL"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "IocReceiveGroup_IocNto1"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "OS_COREID_SYS_CALL"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "IocSendGroup_IocNto1_1"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "OS_COREID_SYS_CALL"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "IocSendGroup_IocNto1_0"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "OS_COREID_SYS_CALL"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "IocRead_IOC_MasterToMaster"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "OS_COREID_SYS_CALL"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "IocWrite_IOC_MasterToMaster"
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.nstrlist "calls", "OS_COREID_SYS_CALL"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "OS_IOC_Init"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Ioc.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Ioc.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Ioc.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Ioc.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Ioc.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Ioc.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "gen\MPC5746R_ECU\WindRiver\Ioc.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
