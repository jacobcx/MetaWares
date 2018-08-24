#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Os_IocStatic.c"
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
# LOCAL_INLINE FUNC (Std_ReturnType, OS_CODE) Os_IocWrite (
	.section	.Os_TEXT,,c
	.align		1
	.section	.debug_line.Os_TEXT,,n
	.sectionlink	.debug_line
.L11410:
	.section	.Os_TEXT,,c
#$$ld
.L11406:
	.0byte		.L11404
	.d2_line_start	.debug_line.Os_TEXT
	.section	.Os_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\ioc\\Os_IocStatic.c"
        .d2line         220,45
#$$ld
.L11413:

#$$bf	Os_IocWrite,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_IocWrite:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# iocChannel=r31 iocChannel=r3
	mr		r30,r4		# dataSource=r30 dataSource=r4
	.d2prologue_end
#         P2CONST (Os_IOC_ChannelStatType, AUTOMATIC, OS_CONST)  iocChannel,
#         P2VAR   (Os_IOC_DataType,        AUTOMATIC, OS_VAR)    dataSource )
# {
#     VAR          (Os_IOC_DataCountType, AUTOMATIC) dataIdx;
#     CONSTP2CONST (uint8, AUTOMATIC, OS_VAR)        newDataPtr = OS_IOCINT_DATAPTR(iocChannel);
	.d2line		225
	lwz		r28,8(r31)		# iocChannel=r31
.Llo8:
	mr		r28,r28		# newDataPtr=r28 newDataPtr=r28
# 
#     for ( dataIdx = (Os_IOC_DataCountType)0U; dataIdx < iocChannel->Os_IOC_DataCount; dataIdx++ )
	.d2line		227
	diab.li		r29,0		# dataIdx=r29
.L11367:
.Llo2:
	rlwinm		r6,r29,0,24,31		# dataIdx=r29
.Llo3:
	lbz		r0,14(r31)		# iocChannel=r31
	se_cmp		r6,r0
	bc		0,0,.L11369	# ge
#     {
#         vstar_copy ( ( uint8* )newDataPtr + iocChannel->Os_IOC_DataDescriptor[dataIdx].Os_IOC_DataOffset,
	.d2line		229
	lwz		r0,16(r31)		# iocChannel=r31
	rlwinm		r6,r29,2,22,29		# dataIdx=r29
	add		r4,r0,r6
	lhz		r3,2(r4)
	se_add		r3,r28		# newDataPtr=r28
	mr		r4,r0
	lhzux		r5,r4,r6
	add		r4,r6,r30		# dataSource=r30
	lwzx		r4,r6,r30		# dataSource=r30
	bl		vstar_copy
#                      (*dataSource)[dataIdx],
#                      (uint32)iocChannel->Os_IOC_DataDescriptor[dataIdx].Os_IOC_DataLength );
#     }
	.d2line		232
	diab.addi		r6,r29,1		# dataIdx=r29
	se_addi		r29,1		# dataIdx=r29 dataIdx=r29
	b		.L11367
.L11369:
# 
#     OS_IOCINT_MCOUNT ( iocChannel ) = (Os_IOC_ChannelSizeType)1U;
	.d2line		234
.Llo5:
	diab.li		r3,1
.Llo6:
	lwz		r4,0(r31)		# iocChannel=r31
.Llo7:
	sth		r3,2(r4)
# 
#   #ifdef OS_MODULE_IOC_PULLCALLBACK
#     /* [OS740-01] [OS748-01] */
#     Os_CallPullCallbacks(iocChannel);
#   #endif /* OS_MODULE_IOC_PULLCALLBACK */
# 
#     return IOC_E_OK;
	.d2line		241
	diab.li		r3,0
# }
	.d2line		242
	.d2epilogue_begin
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
.Llo4:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11414:
	.type		Os_IocWrite,@function
	.size		Os_IocWrite,.-Os_IocWrite
# Number of nodes = 67

# Allocations for Os_IocWrite
#	?a4		iocChannel
#	?a5		dataSource
#	?a6		dataIdx
#	?a7		newDataPtr
# OS_APILIGHT(IocWrite)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         111,1
#$$ld
.L11442:

#$$bf	Os_API_IocWrite,interprocedural,rasave,nostackparams
	.globl		Os_API_IocWrite
	.d2_cfa_start __cie
Os_API_IocWrite:
.Llo9:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	.d2prologue_end
# {
#     Os_APICall->Os_API_ReturnValue = (StatusType) Os_IocWrite (
	.d2line		113
.Llo10:
	lwz		r3,16(r31)		# Os_APICall=r31
.Llo11:
	lwz		r4,20(r31)		# Os_APICall=r31
	bl		Os_IocWrite
	stb		r3,4(r31)		# Os_APICall=r31
#                                                         Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel,
#                                                         Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Data );
# }
	.d2line		116
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo12:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11443:
	.type		Os_API_IocWrite,@function
	.size		Os_API_IocWrite,.-Os_API_IocWrite
# Number of nodes = 17

# Allocations for Os_API_IocWrite
#	?a4		Os_APICall
# LOCAL_INLINE FUNC (Std_ReturnType, OS_CODE) Os_IocRead (
	.align		1
	.section	.Os_TEXT,,c
        .d2line         245,45
#$$ld
.L11450:

#$$bf	Os_IocRead,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_IocRead:
.Llo13:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# iocChannel=r31 iocChannel=r3
	mr		r30,r4		# dataDest=r30 dataDest=r4
	.d2prologue_end
#         P2CONST (Os_IOC_ChannelStatType, AUTOMATIC, OS_CONST)  iocChannel,
#         P2VAR   (Os_IOC_DataType,        AUTOMATIC, OS_VAR)    dataDest )
# {
#     VAR (Std_ReturnType, AUTOMATIC)  retVal;
# 
#     if ( 0U == OS_IOCINT_MCOUNT ( iocChannel ) )
	.d2line		251
	lwz		r3,0(r31)		# iocChannel=r31
.Llo14:
	lhz		r0,2(r3)
	e_cmphl16i	r0,0
	bc		0,2,.L11373	# ne
#     {
#         retVal = IOC_E_NO_DATA;
	.d2line		253
.Llo15:
	diab.li		r3,131		# retVal=r3
.Llo17:
	b		.L11374
.L11373:
	.section	.Os_TEXT,,c
.L11457:
#     }
#     else
#     {
#         VAR          (Os_IOC_DataCountType, AUTOMATIC) dataIdx;
#         CONSTP2CONST (uint8, AUTOMATIC, OS_VAR)        newDataPtr = OS_IOCINT_DATAPTR(iocChannel);
	.d2line		258
.Llo20:
	lwz		r28,8(r31)		# iocChannel=r31
.Llo23:
	mr		r28,r28		# newDataPtr=r28 newDataPtr=r28
# 
#         for ( dataIdx = (Os_IOC_DataCountType)0U; dataIdx < iocChannel->Os_IOC_DataCount; dataIdx++ )
	.d2line		260
	diab.li		r29,0		# dataIdx=r29
.L11375:
.Llo22:
	rlwinm		r6,r29,0,24,31		# dataIdx=r29
	lbz		r0,14(r31)		# iocChannel=r31
	se_cmp		r6,r0
	bc		0,0,.L11377	# ge
#         {
#             vstar_copy ( (*dataDest)[dataIdx],
	.d2line		262
	lwz		r0,16(r31)		# iocChannel=r31
	rlwinm		r6,r29,2,22,29		# dataIdx=r29
	add		r3,r0,r6
	lhz		r4,2(r3)
	se_add		r4,r28		# newDataPtr=r28
	mr		r3,r0
	lhzux		r5,r3,r6
	add		r3,r6,r30		# dataDest=r30
	lwzx		r3,r6,r30		# dataDest=r30
	bl		vstar_copy
#                           newDataPtr + iocChannel->Os_IOC_DataDescriptor[dataIdx].Os_IOC_DataOffset,
#                           (uint32)iocChannel->Os_IOC_DataDescriptor[dataIdx].Os_IOC_DataLength );
#         }
	.d2line		265
	diab.addi		r6,r29,1		# dataIdx=r29
	se_addi		r29,1		# dataIdx=r29 dataIdx=r29
	b		.L11375
.L11377:
# 
#         OS_IOCINT_MCOUNT ( iocChannel ) = 0U;
	.d2line		267
	diab.li		r3,0
.Llo21:
	lwz		r4,0(r31)		# iocChannel=r31
	sth		r3,2(r4)
# 
#         retVal = IOC_E_OK;
	.section	.Os_TEXT,,c
.L11458:
.L11374:
#     }
# 
#     return retVal;
	.d2line		272
.Llo16:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		273
	.d2epilogue_begin
.Llo18:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo19:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11451:
	.type		Os_IocRead,@function
	.size		Os_IocRead,.-Os_IocRead
# Number of nodes = 82

# Allocations for Os_IocRead
#	?a4		iocChannel
#	?a5		dataDest
#	?a6		retVal
#	?a7		dataIdx
#	?a8		newDataPtr
# OS_APILIGHT(IocRead)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         119,1
#$$ld
.L11467:

#$$bf	Os_API_IocRead,interprocedural,rasave,nostackparams
	.globl		Os_API_IocRead
	.d2_cfa_start __cie
Os_API_IocRead:
.Llo24:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	.d2prologue_end
# {
#     Os_APICall->Os_API_ReturnValue = (StatusType) Os_IocRead (
	.d2line		121
.Llo25:
	lwz		r3,16(r31)		# Os_APICall=r31
.Llo26:
	lwz		r4,20(r31)		# Os_APICall=r31
	bl		Os_IocRead
	stb		r3,4(r31)		# Os_APICall=r31
#                                                         Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel,
#                                                         Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Data );
# }
	.d2line		124
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo27:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11468:
	.type		Os_API_IocRead,@function
	.size		Os_API_IocRead,.-Os_API_IocRead
# Number of nodes = 17

# Allocations for Os_API_IocRead
#	?a4		Os_APICall
# LOCAL_INLINE FUNC (Std_ReturnType, OS_CODE) Os_IocSend (
	.align		1
	.section	.Os_TEXT,,c
        .d2line         276,45
#$$ld
.L11473:

#$$bf	Os_IocSend,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_IocSend:
.Llo28:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# iocChannel=r31 iocChannel=r3
.Llo29:
	mr		r30,r4		# dataSource=r30 dataSource=r4
	.d2prologue_end
#         P2CONST (Os_IOC_ChannelStatType, AUTOMATIC, OS_CONST)  iocChannel,
#         P2VAR   (Os_IOC_DataType,        AUTOMATIC, OS_VAR)    dataSource )
# {
#     VAR (Std_ReturnType, AUTOMATIC)  retVal;
# 
#     if ( OS_IOCINT_MCOUNT ( iocChannel ) == OS_IOCINT_LENGTH ( iocChannel ) )
	.d2line		282
.Llo30:
	lwz		r3,0(r31)		# iocChannel=r31
	lhz		r0,2(r3)
	lhz		r3,4(r31)		# iocChannel=r31
	se_cmp		r0,r3
	bc		0,2,.L11383	# ne
#     {
#         retVal = IOC_E_LIMIT;
	.d2line		284
.Llo32:
	diab.li		r3,130		# retVal=r3
#         OS_IOCINT_STATUS ( iocChannel ) = IOC_E_LOST_DATA;
	.d2line		285
.Llo33:
	diab.li		r0,64
	lwz		r4,0(r31)		# iocChannel=r31
	stb		r0,4(r4)
	b		.L11384
.L11383:
	.section	.Os_TEXT,,c
.L11480:
#     }
# 
#     else
#     {
#         CONST(Os_IOC_ChannelSizeType, AUTOMATIC) newIndex = OS_IOCINT_NEXTHEAD ( iocChannel );
	.d2line		290
.Llo34:
	lwz		r5,0(r31)		# iocChannel=r31
	lhz		r3,0(r5)		# newIndex=r3
.Llo37:
	se_addi		r3,1		# newIndex=r3 newIndex=r3
	lhz		r4,4(r31)		# iocChannel=r31
	divw		r0,r3,r4		# newIndex=r0 newIndex=r3
	mullw		r0,r0,r4		# newIndex=r0 newIndex=r0
	subf		r3,r0,r3		# newIndex=r3 newIndex=r0 newIndex=r3
.Llo38:
	mr		r0,r3		# newIndex=r0 newIndex=r3
#         OS_IOCINT_HEAD   ( iocChannel ) = newIndex;
	.d2line		291
.Llo39:
	sth		r3,0(r5)		# newIndex=r3
#         OS_IOCINT_MCOUNT ( iocChannel )++;
	.d2line		292
	lwz		r4,0(r31)		# iocChannel=r31
	lhz		r3,2(r4)		# newIndex=r3
	se_addi		r3,1		# newIndex=r3 newIndex=r3
	sth		r3,2(r4)		# newIndex=r3
	.section	.Os_TEXT,,c
.L11490:
# 
#         {
#             VAR(Os_IOC_DataCountType,   AUTOMATIC)   dataIdx;
#             /* Performing pointer arithmetic to calc newDataPtr */
#             CONSTP2CONST (uint8, AUTOMATIC, OS_VAR)  newDataPtr = OS_IOCINT_DATAPTR(iocChannel) +
	.d2line		297
	lwz		r28,8(r31)		# iocChannel=r31
	rlwinm		r3,r0,0,16,31		# newIndex=r3 newIndex=r0
	lhz		r0,12(r31)		# newIndex=r0 iocChannel=r31
	mullw		r3,r3,r0		# newIndex=r3 newIndex=r3 newIndex=r0
	se_add		r28,r3		# newIndex=r3
.Llo46:
	mr		r0,r28		# newDataPtr=r0 newDataPtr=r28
#                                                                   (newIndex * OS_IOCINT_DSIZE (iocChannel));
# 
#             for ( dataIdx = (Os_IOC_DataCountType)0U; dataIdx < iocChannel->Os_IOC_DataCount; dataIdx++ )
	.d2line		300
.Llo40:
	diab.li		r29,0		# dataIdx=r29
.L11385:
.Llo45:
	rlwinm		r6,r29,0,24,31		# dataIdx=r29
	lbz		r0,14(r31)		# newIndex=r0 iocChannel=r31
.Llo41:
	se_cmp		r6,r0		# newIndex=r0
	bc		0,0,.L11387	# ge
#             {
#                 vstar_copy ( (uint8*)newDataPtr + iocChannel->Os_IOC_DataDescriptor[dataIdx].Os_IOC_DataOffset,
	.d2line		302
.Llo42:
	lwz		r0,16(r31)		# newIndex=r0 iocChannel=r31
.Llo43:
	rlwinm		r6,r29,2,22,29		# dataIdx=r29
	add		r4,r0,r6		# newIndex=r4 newIndex=r0
	lhz		r3,2(r4)		# newIndex=r3 newIndex=r4
	se_add		r3,r28		# newIndex=r3 newIndex=r3 newDataPtr=r28
	mr		r4,r0		# newIndex=r4
	lhzux		r5,r4,r6		# newIndex=r4
	add		r4,r6,r30		# newIndex=r4 dataSource=r30
	lwzx		r4,r6,r30		# newIndex=r4 dataSource=r30
	bl		vstar_copy
#                              (*dataSource)[dataIdx],
#                              (uint32)iocChannel->Os_IOC_DataDescriptor[dataIdx].Os_IOC_DataLength );
#             }
	.d2line		305
.Llo44:
	diab.addi		r6,r29,1		# dataIdx=r29
	se_addi		r29,1		# dataIdx=r29 dataIdx=r29
	b		.L11385
.L11387:
	.section	.Os_TEXT,,c
.L11491:
#         }
# 
#         /* [OS740-02] [OS748-02] */
#       #ifdef OS_MODULE_IOC_PULLCALLBACK
#         Os_CallPullCallbacks(iocChannel);
#       #endif /* OS_MODULE_IOC_PULLCALLBACK */
# 
#         retVal = IOC_E_OK;
	.d2line		313
.Llo31:
	diab.li		r3,0		# retVal=r3
	.section	.Os_TEXT,,c
.L11481:
.L11384:
#     }
# 
#     return retVal;
	.d2line		316
.Llo35:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		317
	.d2epilogue_begin
.Llo36:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
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
	.type		Os_IocSend,@function
	.size		Os_IocSend,.-Os_IocSend
# Number of nodes = 121

# Allocations for Os_IocSend
#	?a4		iocChannel
#	?a5		dataSource
#	?a6		$$2352
#	?a7		retVal
#	?a8		newIndex
#	?a9		dataIdx
#	?a10		newDataPtr
# OS_APILIGHT(IocSend)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         127,1
#$$ld
.L11500:

#$$bf	Os_API_IocSend,interprocedural,rasave,nostackparams
	.globl		Os_API_IocSend
	.d2_cfa_start __cie
Os_API_IocSend:
.Llo47:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	.d2prologue_end
# {
#     Os_APICall->Os_API_ReturnValue = (StatusType) Os_IocSend (
	.d2line		129
.Llo48:
	lwz		r3,16(r31)		# Os_APICall=r31
.Llo49:
	lwz		r4,20(r31)		# Os_APICall=r31
	bl		Os_IocSend
	stb		r3,4(r31)		# Os_APICall=r31
#                                                         Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel,
#                                                         Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Data );
# }
	.d2line		132
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo50:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11501:
	.type		Os_API_IocSend,@function
	.size		Os_API_IocSend,.-Os_API_IocSend
# Number of nodes = 17

# Allocations for Os_API_IocSend
#	?a4		Os_APICall
# LOCAL_INLINE FUNC (Std_ReturnType, OS_CODE) Os_IocReceive (
	.align		1
	.section	.Os_TEXT,,c
        .d2line         320,45
#$$ld
.L11506:

#$$bf	Os_IocReceive,interprocedural,rasave,nostackparams
	.d2_cfa_start __cie
Os_IocReceive:
.Llo51:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_offset_list	28,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# iocChannel=r31 iocChannel=r3
	mr		r30,r4		# dataDest=r30 dataDest=r4
	.d2prologue_end
#         P2CONST (Os_IOC_ChannelStatType, AUTOMATIC, OS_CONST)  iocChannel,
#         P2VAR   (Os_IOC_DataType,        AUTOMATIC, OS_VAR)    dataDest )
# {
#     VAR (Std_ReturnType, AUTOMATIC)  retVal;
# 
#     if ( 0U == OS_IOCINT_MCOUNT ( iocChannel ) )
	.d2line		326
	lwz		r3,0(r31)		# iocChannel=r31
.Llo52:
	lhz		r0,2(r3)
	e_cmphl16i	r0,0
	bc		0,2,.L11393	# ne
#     {
#         /* [OS744-01] [OS744-02-MGC]*/
#         retVal = IOC_E_NO_DATA;
	.d2line		329
.Llo53:
	diab.li		r3,131		# retVal=r3
.Llo55:
	b		.L11394
.L11393:
	.section	.Os_TEXT,,c
.L11513:
#     }
# 
#     else
#     {
#         CONST(Os_IOC_ChannelSizeType, AUTOMATIC) newIndex = OS_IOCINT_TAIL ( iocChannel );
	.d2line		334
.Llo58:
	lwz		r4,0(r31)		# iocChannel=r31
	lhz		r0,0(r4)
	lhz		r5,4(r31)		# iocChannel=r31
	se_add		r0,r5
	lhz		r6,2(r4)
	subf		r3,r6,r0
	se_addi		r3,1
	divw		r0,r3,r5
	mullw		r0,r0,r5
	subf		r0,r0,r3
.Llo61:
	mr		r3,r0		# newIndex=r3 newIndex=r0
#         OS_IOCINT_MCOUNT ( iocChannel )--; /* [OS743-03] [OS751-03] */
	.d2line		335
	diab.li		r0,65535
.Llo62:
	se_add		r0,r6
	sth		r0,2(r4)
	.section	.Os_TEXT,,c
.L11519:
# 
#         /* Performing pointer arithmetic to calc newDataPtr */
#         {
#             VAR(Os_IOC_DataCountType,   AUTOMATIC)  dataIdx;
#             CONSTP2CONST (uint8, AUTOMATIC, OS_VAR) newDataPtr = OS_IOCINT_DATAPTR(iocChannel) +
	.d2line		340
	lwz		r28,8(r31)		# iocChannel=r31
.Llo63:
	rlwinm		r3,r3,0,16,31		# newIndex=r3 newIndex=r3
	lhz		r0,12(r31)		# iocChannel=r31
	mullw		r3,r3,r0		# newIndex=r3 newIndex=r3
	se_add		r28,r3		# newIndex=r3
.Llo67:
	mr		r0,r28		# newDataPtr=r0 newDataPtr=r28
#                                                                  (newIndex * OS_IOCINT_DSIZE (iocChannel));
# 
#             for ( dataIdx = (Os_IOC_DataCountType)0U; dataIdx < iocChannel->Os_IOC_DataCount; dataIdx++ )
	.d2line		343
	diab.li		r29,0		# dataIdx=r29
.L11395:
.Llo64:
	rlwinm		r6,r29,0,24,31		# dataIdx=r29
	lbz		r0,14(r31)		# iocChannel=r31
	se_cmp		r6,r0
	bc		0,0,.L11397	# ge
#             {
#                 /* [OS743-04] [OS751-04] */
#                 vstar_copy ( (*dataDest)[dataIdx],
	.d2line		346
	lwz		r0,16(r31)		# iocChannel=r31
	rlwinm		r6,r29,2,22,29		# dataIdx=r29
	add		r3,r0,r6		# newIndex=r3
.Llo65:
	lhz		r4,2(r3)		# newIndex=r3
	se_add		r4,r28		# newDataPtr=r28
	mr		r3,r0
	lhzux		r5,r3,r6		# newIndex=r3
	add		r0,r6,r30		# dataDest=r30
	lwzx		r3,r6,r30		# newIndex=r3 dataDest=r30
.Llo66:
	bl		vstar_copy
#                              newDataPtr + iocChannel->Os_IOC_DataDescriptor[dataIdx].Os_IOC_DataOffset,
#                              (uint32)iocChannel->Os_IOC_DataDescriptor[dataIdx].Os_IOC_DataLength );
#             }
	.d2line		349
	diab.addi		r6,r29,1		# dataIdx=r29
	se_addi		r29,1		# dataIdx=r29 dataIdx=r29
	b		.L11395
.L11397:
	.section	.Os_TEXT,,c
.L11520:
#         }
# 
#         /* [OS745-01] [OS745-02]*/
#         retVal = OS_IOCINT_STATUS ( iocChannel );
	.d2line		353
.Llo56:
	lwz		r4,0(r31)		# iocChannel=r31
	lbz		r3,4(r4)		# newIndex=r3
.Llo59:
	mr		r3,r3		# retVal=r3 retVal=r3
# 
#         OS_IOCINT_STATUS ( iocChannel ) = IOC_E_OK;
	.d2line		355
	diab.li		r0,0
	stb		r0,4(r4)
	.section	.Os_TEXT,,c
.L11514:
.L11394:
#     }
#     return retVal;
	.d2line		357
.Llo54:
	rlwinm		r3,r3,0,24,31		# retVal=r3 retVal=r3
# }
	.d2line		358
	.d2epilogue_begin
.Llo60:
	lmw		r28,16(r1)		# offset r1+16  0x10
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo57:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11507:
	.type		Os_IocReceive,@function
	.size		Os_IocReceive,.-Os_IocReceive
# Number of nodes = 129

# Allocations for Os_IocReceive
#	?a4		iocChannel
#	?a5		dataDest
#	?a6		$$2353
#	?a7		retVal
#	?a8		newIndex
#	?a9		dataIdx
#	?a10		newDataPtr
# OS_APILIGHT(IocReceive)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         135,1
#$$ld
.L11529:

#$$bf	Os_API_IocReceive,interprocedural,rasave,nostackparams
	.globl		Os_API_IocReceive
	.d2_cfa_start __cie
Os_API_IocReceive:
.Llo68:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	.d2prologue_end
# {
#     Os_APICall->Os_API_ReturnValue = (StatusType) Os_IocReceive (
	.d2line		137
.Llo69:
	lwz		r3,16(r31)		# Os_APICall=r31
.Llo70:
	lwz		r4,20(r31)		# Os_APICall=r31
	bl		Os_IocReceive
	stb		r3,4(r31)		# Os_APICall=r31
#                                                         Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel,
#                                                         Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Data );
# }
	.d2line		140
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo71:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11530:
	.type		Os_API_IocReceive,@function
	.size		Os_API_IocReceive,.-Os_API_IocReceive
# Number of nodes = 17

# Allocations for Os_API_IocReceive
#	?a4		Os_APICall
# LOCAL_INLINE FUNC (Std_ReturnType, OS_CODE) Os_IocEmptyQueue (
	.align		1
	.section	.Os_TEXT,,c
        .d2line         361,45
#$$ld
.L11535:

#$$bf	Os_IocEmptyQueue,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,lr
	.d2_cfa_start __cie
Os_IocEmptyQueue:
.Llo72:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r5,r3		# iocChannel=r5 iocChannel=r3
	.d2prologue_end
#         CONSTP2CONST(Os_IOC_ChannelStatType, AUTOMATIC, OS_CONST) iocChannel
#     )
# {
#     /* [OS756-01] */
#     OS_IOCINT_HEAD   ( iocChannel ) = 0U;
	.d2line		366
.Llo73:
	diab.li		r3,0
.Llo74:
	lwz		r4,0(r5)		# iocChannel=r5
	sth		r3,0(r4)
#     OS_IOCINT_MCOUNT ( iocChannel ) = 0U;
	.d2line		367
	lwz		r4,0(r5)		# iocChannel=r5
	sth		r3,2(r4)
#     OS_IOCINT_STATUS ( iocChannel ) = IOC_E_OK;
	.d2line		368
	lwz		r4,0(r5)		# iocChannel=r5
	stb		r3,4(r4)
# 
#     return IOC_E_OK;
# }
	.d2line		371
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo75:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11536:
	.type		Os_IocEmptyQueue,@function
	.size		Os_IocEmptyQueue,.-Os_IocEmptyQueue
# Number of nodes = 21

# Allocations for Os_IocEmptyQueue
#	?a4		iocChannel
# OS_APILIGHT(IocEmptyQueue)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         143,1
#$$ld
.L11542:

#$$bf	Os_API_IocEmptyQueue,interprocedural,rasave,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,lr
	.globl		Os_API_IocEmptyQueue
	.d2_cfa_start __cie
Os_API_IocEmptyQueue:
.Llo76:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r6,r3		# Os_APICall=r6 Os_APICall=r3
	.d2prologue_end
# {
#     Os_APICall->Os_API_ReturnValue =
	.d2line		145
.Llo77:
	lwz		r3,16(r6)		# Os_APICall=r6
.Llo78:
	bl		Os_IocEmptyQueue
	stb		r3,4(r6)		# Os_APICall=r6
#                             (StatusType) Os_IocEmptyQueue ( Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel );
# }
	.d2line		147
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo79:
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11543:
	.type		Os_API_IocEmptyQueue,@function
	.size		Os_API_IocEmptyQueue,.-Os_API_IocEmptyQueue
# Number of nodes = 12

# Allocations for Os_API_IocEmptyQueue
#	?a4		Os_APICall
# OS_APILIGHT(IocWrite_MultiCore)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         151,1
#$$ld
.L11548:

#$$bf	Os_API_IocWrite_MultiCore,interprocedural,rasave,nostackparams
	.globl		Os_API_IocWrite_MultiCore
	.d2_cfa_start __cie
Os_API_IocWrite_MultiCore:
.Llo80:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	.d2prologue_end
# {
#     OS_PLATFORM_LOCK_IOC_RESOURCE(OS_GETCOREID(),
	.d2line		153
.Llo81:
	lwz		r3,16(r31)		# Os_APICall=r31
.Llo82:
	lwz		r3,20(r3)
	bl		Os_Platform_LockResource_Byte
#                                   Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel->Os_IOC_LockResourceAddress);
# 
#     Os_APICall->Os_API_ReturnValue = (StatusType) Os_IocWrite (
	.d2line		156
	lwz		r3,16(r31)		# Os_APICall=r31
	lwz		r4,20(r31)		# Os_APICall=r31
	bl		Os_IocWrite
	stb		r3,4(r31)		# Os_APICall=r31
#                                                         Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel,
#                                                         Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Data );
# 
#     OS_PLATFORM_UNLOCK_IOC_RESOURCE(OS_GETCOREID(),
	.d2line		160
	lwz		r3,16(r31)		# Os_APICall=r31
	lwz		r3,20(r3)
	bl		Os_Platform_UnlockResource_Byte
#                                     Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel->Os_IOC_LockResourceAddress);
# }
	.d2line		162
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo83:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11549:
	.type		Os_API_IocWrite_MultiCore,@function
	.size		Os_API_IocWrite_MultiCore,.-Os_API_IocWrite_MultiCore
# Number of nodes = 37

# Allocations for Os_API_IocWrite_MultiCore
#	?a4		Os_APICall
# OS_APILIGHT(IocRead_MultiCore)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         164,1
#$$ld
.L11554:

#$$bf	Os_API_IocRead_MultiCore,interprocedural,rasave,nostackparams
	.globl		Os_API_IocRead_MultiCore
	.d2_cfa_start __cie
Os_API_IocRead_MultiCore:
.Llo84:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	.d2prologue_end
# {
#     OS_PLATFORM_LOCK_IOC_RESOURCE(OS_GETCOREID(),
	.d2line		166
.Llo85:
	lwz		r3,16(r31)		# Os_APICall=r31
.Llo86:
	lwz		r3,20(r3)
	bl		Os_Platform_LockResource_Byte
#                                   Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel->Os_IOC_LockResourceAddress);
# 
#     Os_APICall->Os_API_ReturnValue = (StatusType) Os_IocRead (
	.d2line		169
	lwz		r3,16(r31)		# Os_APICall=r31
	lwz		r4,20(r31)		# Os_APICall=r31
	bl		Os_IocRead
	stb		r3,4(r31)		# Os_APICall=r31
#                                                         Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel,
#                                                         Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Data );
# 
#     OS_PLATFORM_UNLOCK_IOC_RESOURCE(OS_GETCOREID(),
	.d2line		173
	lwz		r3,16(r31)		# Os_APICall=r31
	lwz		r3,20(r3)
	bl		Os_Platform_UnlockResource_Byte
#                                     Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel->Os_IOC_LockResourceAddress);
# }
	.d2line		175
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
.L11555:
	.type		Os_API_IocRead_MultiCore,@function
	.size		Os_API_IocRead_MultiCore,.-Os_API_IocRead_MultiCore
# Number of nodes = 37

# Allocations for Os_API_IocRead_MultiCore
#	?a4		Os_APICall
# OS_APILIGHT(IocSend_MultiCore)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         177,1
#$$ld
.L11560:

#$$bf	Os_API_IocSend_MultiCore,interprocedural,rasave,nostackparams
	.globl		Os_API_IocSend_MultiCore
	.d2_cfa_start __cie
Os_API_IocSend_MultiCore:
.Llo88:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	.d2prologue_end
# {
#     OS_PLATFORM_LOCK_IOC_RESOURCE(OS_GETCOREID(),
	.d2line		179
.Llo89:
	lwz		r3,16(r31)		# Os_APICall=r31
.Llo90:
	lwz		r3,20(r3)
	bl		Os_Platform_LockResource_Byte
#                                   Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel->Os_IOC_LockResourceAddress);
# 
#     Os_APICall->Os_API_ReturnValue = (StatusType) Os_IocSend (
	.d2line		182
	lwz		r3,16(r31)		# Os_APICall=r31
	lwz		r4,20(r31)		# Os_APICall=r31
	bl		Os_IocSend
	stb		r3,4(r31)		# Os_APICall=r31
#                                                         Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel,
#                                                         Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Data );
# 
#     OS_PLATFORM_UNLOCK_IOC_RESOURCE(OS_GETCOREID(),
	.d2line		186
	lwz		r3,16(r31)		# Os_APICall=r31
	lwz		r3,20(r3)
	bl		Os_Platform_UnlockResource_Byte
#                                     Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel->Os_IOC_LockResourceAddress);
# }
	.d2line		188
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
	.section	.Os_TEXT,,c
#$$ld
.L11561:
	.type		Os_API_IocSend_MultiCore,@function
	.size		Os_API_IocSend_MultiCore,.-Os_API_IocSend_MultiCore
# Number of nodes = 37

# Allocations for Os_API_IocSend_MultiCore
#	?a4		Os_APICall
# OS_APILIGHT(IocReceive_MultiCore)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         190,1
#$$ld
.L11566:

#$$bf	Os_API_IocReceive_MultiCore,interprocedural,rasave,nostackparams
	.globl		Os_API_IocReceive_MultiCore
	.d2_cfa_start __cie
Os_API_IocReceive_MultiCore:
.Llo92:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	.d2prologue_end
# {
#     OS_PLATFORM_LOCK_IOC_RESOURCE(OS_GETCOREID(),
	.d2line		192
.Llo93:
	lwz		r3,16(r31)		# Os_APICall=r31
.Llo94:
	lwz		r3,20(r3)
	bl		Os_Platform_LockResource_Byte
#                                   Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel->Os_IOC_LockResourceAddress);
# 
#     Os_APICall->Os_API_ReturnValue = (StatusType) Os_IocReceive (
	.d2line		195
	lwz		r3,16(r31)		# Os_APICall=r31
	lwz		r4,20(r31)		# Os_APICall=r31
	bl		Os_IocReceive
	stb		r3,4(r31)		# Os_APICall=r31
#                                                         Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel,
#                                                         Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Data );
# 
#     OS_PLATFORM_UNLOCK_IOC_RESOURCE(OS_GETCOREID(),
	.d2line		199
	lwz		r3,16(r31)		# Os_APICall=r31
	lwz		r3,20(r3)
	bl		Os_Platform_UnlockResource_Byte
#                                     Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel->Os_IOC_LockResourceAddress);
# }
	.d2line		201
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo95:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11567:
	.type		Os_API_IocReceive_MultiCore,@function
	.size		Os_API_IocReceive_MultiCore,.-Os_API_IocReceive_MultiCore
# Number of nodes = 37

# Allocations for Os_API_IocReceive_MultiCore
#	?a4		Os_APICall
# OS_APILIGHT(IocEmptyQueue_MultiCore)
	.align		2
	.section	.Os_TEXT,,c
        .d2line         203,1
#$$ld
.L11572:

#$$bf	Os_API_IocEmptyQueue_MultiCore,interprocedural,rasave,nostackparams
	.globl		Os_API_IocEmptyQueue_MultiCore
	.d2_cfa_start __cie
Os_API_IocEmptyQueue_MultiCore:
.Llo96:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# Os_APICall=r31 Os_APICall=r3
	.d2prologue_end
# {
#     OS_PLATFORM_LOCK_IOC_RESOURCE(OS_GETCOREID(),
	.d2line		205
.Llo97:
	lwz		r3,16(r31)		# Os_APICall=r31
.Llo98:
	lwz		r3,20(r3)
	bl		Os_Platform_LockResource_Byte
#                                   Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel->Os_IOC_LockResourceAddress);
# 
#     Os_APICall->Os_API_ReturnValue =
	.d2line		208
	lwz		r3,16(r31)		# Os_APICall=r31
	bl		Os_IocEmptyQueue
	stb		r3,4(r31)		# Os_APICall=r31
#                             (StatusType) Os_IocEmptyQueue ( Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel );
# 
#     OS_PLATFORM_UNLOCK_IOC_RESOURCE(OS_GETCOREID(),
	.d2line		211
	lwz		r3,16(r31)		# Os_APICall=r31
	lwz		r3,20(r3)
	bl		Os_Platform_UnlockResource_Byte
#                                     Os_APICall->Os_API_Data.Os_API_IOCTransfer.Ioc_Channel->Os_IOC_LockResourceAddress);
# }
	.d2line		213
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo99:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.Os_TEXT,,c
#$$ld
.L11573:
	.type		Os_API_IocEmptyQueue_MultiCore,@function
	.size		Os_API_IocEmptyQueue_MultiCore,.-Os_API_IocEmptyQueue_MultiCore
# Number of nodes = 32

# Allocations for Os_API_IocEmptyQueue_MultiCore
#	?a4		Os_APICall

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L11951:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_Types.h"
.L11948:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ApplicationApiTypes.h"
.L11946:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ScheduleTableApiTypes.h"
.L11944:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_TaskApiTypes.h"
.L11942:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_SpinlockApiTypes.h"
.L11932:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\PowerPC\\WindRiver\\AUTOSAR\\ar422\\MemMap.h"
.L11930:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_InternalTypes.h"
.L11924:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\Os_ExceptionApiTypes.h"
.L11879:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApplicationCfgTypes.h"
.L11816:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TaskCfgTypes.h"
.L11793:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_TrustedFunctionCfgTypes.h"
.L11576:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\inc\\internal\\Os_ApiDispatchCfgTypes.h"
	.d2_line_end
	.section	.Os_TEXT,,c
#$$ld
.L11407:
.L11415:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\ioc\\Os_IocStatic.c"
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
	.uleb128	23
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
	.uleb128	36
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	11
	.uleb128	11
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\ioc\\Os_IocStatic.c"
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
.L11404:
	.4byte		.L11405-.L11403
.L11403:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L11409-.L11404
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\Os\\Os\\core\\ssc\\make\\..\\src\\ioc\\Os_IocStatic.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L11406
	.4byte		.L11407
	.4byte		.L11410
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11419:
	.sleb128	2
	.4byte		.L11412-.L11404
	.byte		"Os_IocWrite"
	.byte		0
	.4byte		.L11415
	.uleb128	220
	.uleb128	45
	.4byte		.L11416
	.byte		0x1
	.4byte		.L11413
	.4byte		.L11414
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L11415
	.uleb128	220
	.uleb128	45
	.byte		"iocChannel"
	.byte		0
	.4byte		.L11420
	.4byte		.L11424
	.sleb128	3
	.4byte		.L11415
	.uleb128	220
	.uleb128	45
	.byte		"dataSource"
	.byte		0
	.4byte		.L11425
	.4byte		.L11431
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11432:
	.sleb128	4
	.4byte		.L11415
	.uleb128	224
	.uleb128	52
	.byte		"dataIdx"
	.byte		0
	.4byte		.L11433
	.4byte		.L11434
.L11435:
	.sleb128	4
	.4byte		.L11415
	.uleb128	225
	.uleb128	52
	.byte		"newDataPtr"
	.byte		0
	.4byte		.L11436
	.4byte		.L11439
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11412:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11444:
	.sleb128	5
	.4byte		.L11441-.L11404
	.byte		"Os_API_IocWrite"
	.byte		0
	.4byte		.L11415
	.uleb128	111
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11442
	.4byte		.L11443
	.sleb128	3
	.4byte		.L11415
	.uleb128	111
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11445
	.4byte		.L11447
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11441:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11452:
	.sleb128	2
	.4byte		.L11449-.L11404
	.byte		"Os_IocRead"
	.byte		0
	.4byte		.L11415
	.uleb128	245
	.uleb128	45
	.4byte		.L11416
	.byte		0x1
	.4byte		.L11450
	.4byte		.L11451
	.sleb128	3
	.4byte		.L11415
	.uleb128	245
	.uleb128	45
	.byte		"iocChannel"
	.byte		0
	.4byte		.L11420
	.4byte		.L11453
	.sleb128	3
	.4byte		.L11415
	.uleb128	245
	.uleb128	45
	.byte		"dataDest"
	.byte		0
	.4byte		.L11425
	.4byte		.L11454
.L11455:
	.sleb128	4
	.4byte		.L11415
	.uleb128	249
	.uleb128	38
	.byte		"retVal"
	.byte		0
	.4byte		.L11416
	.4byte		.L11456
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11460
	.4byte		.L11457
	.4byte		.L11458
.L11461:
	.sleb128	4
	.4byte		.L11415
	.uleb128	257
	.uleb128	56
	.byte		"dataIdx"
	.byte		0
	.4byte		.L11433
	.4byte		.L11462
.L11463:
	.sleb128	4
	.4byte		.L11415
	.uleb128	258
	.uleb128	56
	.byte		"newDataPtr"
	.byte		0
	.4byte		.L11436
	.4byte		.L11464
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11460:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11449:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11469:
	.sleb128	5
	.4byte		.L11466-.L11404
	.byte		"Os_API_IocRead"
	.byte		0
	.4byte		.L11415
	.uleb128	119
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11467
	.4byte		.L11468
	.sleb128	3
	.4byte		.L11415
	.uleb128	119
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11445
	.4byte		.L11470
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11466:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11475:
	.sleb128	2
	.4byte		.L11472-.L11404
	.byte		"Os_IocSend"
	.byte		0
	.4byte		.L11415
	.uleb128	276
	.uleb128	45
	.4byte		.L11416
	.byte		0x1
	.4byte		.L11473
	.4byte		.L11474
	.sleb128	3
	.4byte		.L11415
	.uleb128	276
	.uleb128	45
	.byte		"iocChannel"
	.byte		0
	.4byte		.L11420
	.4byte		.L11476
	.sleb128	3
	.4byte		.L11415
	.uleb128	276
	.uleb128	45
	.byte		"dataSource"
	.byte		0
	.4byte		.L11425
	.4byte		.L11477
.L11478:
	.sleb128	4
	.4byte		.L11415
	.uleb128	280
	.uleb128	38
	.byte		"retVal"
	.byte		0
	.4byte		.L11416
	.4byte		.L11479
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11483
	.4byte		.L11480
	.4byte		.L11481
.L11484:
	.sleb128	4
	.4byte		.L11415
	.uleb128	290
	.uleb128	50
	.byte		"newIndex"
	.byte		0
	.4byte		.L11485
	.4byte		.L11489
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11493
	.4byte		.L11490
	.4byte		.L11491
.L11494:
	.sleb128	4
	.4byte		.L11415
	.uleb128	295
	.uleb128	54
	.byte		"dataIdx"
	.byte		0
	.4byte		.L11433
	.4byte		.L11495
.L11496:
	.sleb128	4
	.4byte		.L11415
	.uleb128	297
	.uleb128	54
	.byte		"newDataPtr"
	.byte		0
	.4byte		.L11436
	.4byte		.L11497
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11493:
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
.L11502:
	.sleb128	5
	.4byte		.L11499-.L11404
	.byte		"Os_API_IocSend"
	.byte		0
	.4byte		.L11415
	.uleb128	127
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11500
	.4byte		.L11501
	.sleb128	3
	.4byte		.L11415
	.uleb128	127
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11445
	.4byte		.L11503
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11499:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11508:
	.sleb128	2
	.4byte		.L11505-.L11404
	.byte		"Os_IocReceive"
	.byte		0
	.4byte		.L11415
	.uleb128	320
	.uleb128	45
	.4byte		.L11416
	.byte		0x1
	.4byte		.L11506
	.4byte		.L11507
	.sleb128	3
	.4byte		.L11415
	.uleb128	320
	.uleb128	45
	.byte		"iocChannel"
	.byte		0
	.4byte		.L11420
	.4byte		.L11509
	.sleb128	3
	.4byte		.L11415
	.uleb128	320
	.uleb128	45
	.byte		"dataDest"
	.byte		0
	.4byte		.L11425
	.4byte		.L11510
.L11511:
	.sleb128	4
	.4byte		.L11415
	.uleb128	324
	.uleb128	38
	.byte		"retVal"
	.byte		0
	.4byte		.L11416
	.4byte		.L11512
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11516
	.4byte		.L11513
	.4byte		.L11514
.L11517:
	.sleb128	4
	.4byte		.L11415
	.uleb128	334
	.uleb128	50
	.byte		"newIndex"
	.byte		0
	.4byte		.L11485
	.4byte		.L11518
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	6
	.4byte		.L11522
	.4byte		.L11519
	.4byte		.L11520
.L11523:
	.sleb128	4
	.4byte		.L11415
	.uleb128	339
	.uleb128	53
	.byte		"dataIdx"
	.byte		0
	.4byte		.L11433
	.4byte		.L11524
.L11525:
	.sleb128	4
	.4byte		.L11415
	.uleb128	340
	.uleb128	53
	.byte		"newDataPtr"
	.byte		0
	.4byte		.L11436
	.4byte		.L11526
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11522:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11516:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11505:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11531:
	.sleb128	5
	.4byte		.L11528-.L11404
	.byte		"Os_API_IocReceive"
	.byte		0
	.4byte		.L11415
	.uleb128	135
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11529
	.4byte		.L11530
	.sleb128	3
	.4byte		.L11415
	.uleb128	135
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11445
	.4byte		.L11532
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11528:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11537:
	.sleb128	2
	.4byte		.L11534-.L11404
	.byte		"Os_IocEmptyQueue"
	.byte		0
	.4byte		.L11415
	.uleb128	361
	.uleb128	45
	.4byte		.L11416
	.byte		0x1
	.4byte		.L11535
	.4byte		.L11536
	.sleb128	3
	.4byte		.L11415
	.uleb128	361
	.uleb128	45
	.byte		"iocChannel"
	.byte		0
	.4byte		.L11538
	.4byte		.L11539
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11534:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11544:
	.sleb128	5
	.4byte		.L11541-.L11404
	.byte		"Os_API_IocEmptyQueue"
	.byte		0
	.4byte		.L11415
	.uleb128	143
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11542
	.4byte		.L11543
	.sleb128	3
	.4byte		.L11415
	.uleb128	143
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11445
	.4byte		.L11545
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11541:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11550:
	.sleb128	5
	.4byte		.L11547-.L11404
	.byte		"Os_API_IocWrite_MultiCore"
	.byte		0
	.4byte		.L11415
	.uleb128	151
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11548
	.4byte		.L11549
	.sleb128	3
	.4byte		.L11415
	.uleb128	151
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11445
	.4byte		.L11551
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11547:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11556:
	.sleb128	5
	.4byte		.L11553-.L11404
	.byte		"Os_API_IocRead_MultiCore"
	.byte		0
	.4byte		.L11415
	.uleb128	164
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11554
	.4byte		.L11555
	.sleb128	3
	.4byte		.L11415
	.uleb128	164
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11445
	.4byte		.L11557
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11553:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11562:
	.sleb128	5
	.4byte		.L11559-.L11404
	.byte		"Os_API_IocSend_MultiCore"
	.byte		0
	.4byte		.L11415
	.uleb128	177
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11560
	.4byte		.L11561
	.sleb128	3
	.4byte		.L11415
	.uleb128	177
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11445
	.4byte		.L11563
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11559:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11568:
	.sleb128	5
	.4byte		.L11565-.L11404
	.byte		"Os_API_IocReceive_MultiCore"
	.byte		0
	.4byte		.L11415
	.uleb128	190
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11566
	.4byte		.L11567
	.sleb128	3
	.4byte		.L11415
	.uleb128	190
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11445
	.4byte		.L11569
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11565:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11574:
	.sleb128	5
	.4byte		.L11571-.L11404
	.byte		"Os_API_IocEmptyQueue_MultiCore"
	.byte		0
	.4byte		.L11415
	.uleb128	203
	.uleb128	1
	.byte		0x1
	.byte		0x1
	.4byte		.L11572
	.4byte		.L11573
	.sleb128	3
	.4byte		.L11415
	.uleb128	203
	.uleb128	1
	.byte		"Os_APICall"
	.byte		0
	.4byte		.L11445
	.4byte		.L11575
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L11571:
	.section	.debug_info,,n
.L11446:
	.sleb128	7
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11577-.L2
	.byte		"Os_APICallType_struct"
	.byte		0
	.uleb128	40
	.section	.debug_info,,n
.L725:
	.sleb128	8
	.byte		"Os_API_Magic"
	.byte		0
	.4byte		.L11578
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L726:
	.sleb128	8
	.byte		"Os_API_ReturnValue"
	.byte		0
	.4byte		.L11416
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L727:
	.sleb128	8
	.byte		"Os_API_Lock"
	.byte		0
	.4byte		.L11580
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L728:
	.sleb128	8
	.byte		"Os_API_Func"
	.byte		0
	.4byte		.L11582
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L729:
	.sleb128	8
	.byte		"Os_API_Data"
	.byte		0
	.4byte		.L11590
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11577:
	.section	.debug_info,,n
.L11590:
	.sleb128	9
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11591-.L2
	.uleb128	24
.L677:
	.sleb128	8
	.byte		"Os_ApiStartOs"
	.byte		0
	.4byte		.L11592
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L678:
	.sleb128	8
	.byte		"Os_ApiShutdownOs"
	.byte		0
	.4byte		.L11594
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L679:
	.sleb128	8
	.byte		"Os_ApiShutdownOsInternal"
	.byte		0
	.4byte		.L11596
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L680:
	.sleb128	8
	.byte		"Os_ApiShutdownAllCores"
	.byte		0
	.4byte		.L11598
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L681:
	.sleb128	8
	.byte		"Os_ApiGetNumberOfActivatedCores"
	.byte		0
	.4byte		.L11600
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L682:
	.sleb128	8
	.byte		"Os_ApiStartCore"
	.byte		0
	.4byte		.L11602
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L683:
	.sleb128	8
	.byte		"Os_ApiStartNonAutosarCore"
	.byte		0
	.4byte		.L11604
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L684:
	.sleb128	8
	.byte		"Os_ApiGetCoreID"
	.byte		0
	.4byte		.L11606
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L685:
	.sleb128	8
	.byte		"Os_ApiActivateTask"
	.byte		0
	.4byte		.L11608
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L686:
	.sleb128	8
	.byte		"Os_ApiChainTask"
	.byte		0
	.4byte		.L11610
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L687:
	.sleb128	8
	.byte		"Os_ApiGetTaskID"
	.byte		0
	.4byte		.L11612
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L688:
	.sleb128	8
	.byte		"Os_ApiGetTaskState"
	.byte		0
	.4byte		.L11614
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L689:
	.sleb128	8
	.byte		"Os_ApiSetEvent"
	.byte		0
	.4byte		.L11616
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L690:
	.sleb128	8
	.byte		"Os_ApiClearEvent"
	.byte		0
	.4byte		.L11618
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L691:
	.sleb128	8
	.byte		"Os_ApiGetEvent"
	.byte		0
	.4byte		.L11620
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L692:
	.sleb128	8
	.byte		"Os_ApiWaitEvent"
	.byte		0
	.4byte		.L11622
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L693:
	.sleb128	8
	.byte		"Os_ApiGetResource"
	.byte		0
	.4byte		.L11624
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L694:
	.sleb128	8
	.byte		"Os_ApiReleaseResource"
	.byte		0
	.4byte		.L11626
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L695:
	.sleb128	8
	.byte		"Os_ApiGetAlarmBase"
	.byte		0
	.4byte		.L11628
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L696:
	.sleb128	8
	.byte		"Os_ApiGetAlarm"
	.byte		0
	.4byte		.L11630
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L697:
	.sleb128	8
	.byte		"Os_ApiSetRelAlarm"
	.byte		0
	.4byte		.L11632
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L698:
	.sleb128	8
	.byte		"Os_ApiSetAbsAlarm"
	.byte		0
	.4byte		.L11634
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L699:
	.sleb128	8
	.byte		"Os_ApiCancelAlarm"
	.byte		0
	.4byte		.L11636
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L700:
	.sleb128	8
	.byte		"Os_ApiGetApplicationState"
	.byte		0
	.4byte		.L11638
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L701:
	.sleb128	8
	.byte		"Os_ApiTerminateApplication"
	.byte		0
	.4byte		.L11640
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L702:
	.sleb128	8
	.byte		"Os_ApiGetApplicationID"
	.byte		0
	.4byte		.L11642
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L703:
	.sleb128	8
	.byte		"Os_ApiGetISRID"
	.byte		0
	.4byte		.L11644
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L704:
	.sleb128	8
	.byte		"Os_ApiGetActiveApplicationMode"
	.byte		0
	.4byte		.L11646
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L705:
	.sleb128	8
	.byte		"Os_ApiIncrementCounter"
	.byte		0
	.4byte		.L11648
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L706:
	.sleb128	8
	.byte		"Os_ApiGetCounterValue"
	.byte		0
	.4byte		.L11650
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L707:
	.sleb128	8
	.byte		"Os_ApiGetElapsedValue"
	.byte		0
	.4byte		.L11652
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L708:
	.sleb128	8
	.byte		"Os_ApiStartScheduleTableAbs"
	.byte		0
	.4byte		.L11654
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L709:
	.sleb128	8
	.byte		"Os_ApiStartScheduleTableRel"
	.byte		0
	.4byte		.L11656
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L710:
	.sleb128	8
	.byte		"Os_ApiStopScheduleTable"
	.byte		0
	.4byte		.L11658
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L711:
	.sleb128	8
	.byte		"Os_ApiGetScheduleTableStatus"
	.byte		0
	.4byte		.L11660
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L712:
	.sleb128	8
	.byte		"Os_ApiNextScheduleTable"
	.byte		0
	.4byte		.L11662
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L713:
	.sleb128	8
	.byte		"Os_ApiStartScheduleTableSynchron"
	.byte		0
	.4byte		.L11664
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L714:
	.sleb128	8
	.byte		"Os_ApiSyncScheduleTable"
	.byte		0
	.4byte		.L11666
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L715:
	.sleb128	8
	.byte		"Os_ApiSetScheduleTableAsync"
	.byte		0
	.4byte		.L11668
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L716:
	.sleb128	8
	.byte		"Os_ApiCheckObjectAccess"
	.byte		0
	.4byte		.L11670
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L717:
	.sleb128	8
	.byte		"Os_ApiCheckObjectOwnership"
	.byte		0
	.4byte		.L11672
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L718:
	.sleb128	8
	.byte		"Os_ApiCallTrustedFunction"
	.byte		0
	.4byte		.L11674
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L719:
	.sleb128	8
	.byte		"Os_ApiStackUsage"
	.byte		0
	.4byte		.L11676
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L720:
	.sleb128	8
	.byte		"Os_API_GetSpinlock"
	.byte		0
	.4byte		.L11678
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L721:
	.sleb128	8
	.byte		"Os_API_ReleaseSpinlock"
	.byte		0
	.4byte		.L11680
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L722:
	.sleb128	8
	.byte		"Os_API_TryToGetSpinlock"
	.byte		0
	.4byte		.L11682
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L723:
	.sleb128	8
	.byte		"Os_API_IOCTransfer"
	.byte		0
	.4byte		.L11684
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L724:
	.sleb128	8
	.byte		"Os_ApiControlIdle"
	.byte		0
	.4byte		.L11686
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11591:
	.section	.debug_info,,n
.L11687:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11688-.L2
	.uleb128	8
.L675:
	.sleb128	8
	.byte		"CoreID"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L676:
	.sleb128	8
	.byte		"IdleMode"
	.byte		0
	.4byte		.L11690
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11688:
.L11685:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11692-.L2
	.uleb128	8
.L673:
	.sleb128	8
	.byte		"Ioc_Channel"
	.byte		0
	.4byte		.L11420
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L674:
	.sleb128	8
	.byte		"Ioc_Data"
	.byte		0
	.4byte		.L11425
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11692:
.L11683:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11693-.L2
	.uleb128	8
.L671:
	.sleb128	8
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11694
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L672:
	.sleb128	8
	.byte		"Success"
	.byte		0
	.4byte		.L11695
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11693:
.L11681:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11698-.L2
	.uleb128	2
.L670:
	.sleb128	8
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11694
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11698:
.L11679:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11699-.L2
	.uleb128	2
.L669:
	.sleb128	8
	.byte		"SpinlockId"
	.byte		0
	.4byte		.L11694
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11699:
.L11677:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11700-.L2
	.uleb128	20
.L664:
	.sleb128	8
	.byte		"ProcId"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L665:
	.sleb128	8
	.byte		"MaxUsage"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L666:
	.sleb128	8
	.byte		"MaxUsageRef"
	.byte		0
	.4byte		.L11704
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L667:
	.sleb128	8
	.byte		"CurrentUsage"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L668:
	.sleb128	8
	.byte		"CurrentUsageRef"
	.byte		0
	.4byte		.L11704
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11700:
.L11675:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11705-.L2
	.uleb128	12
.L661:
	.sleb128	8
	.byte		"FunctionIndex"
	.byte		0
	.4byte		.L11706
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L662:
	.sleb128	8
	.byte		"ParamRef"
	.byte		0
	.4byte		.L11707
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L663:
	.sleb128	8
	.byte		"ReturnValue"
	.byte		0
	.4byte		.L11708
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11705:
.L11673:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11710-.L2
	.uleb128	12
.L658:
	.sleb128	8
	.byte		"AppID"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L659:
	.sleb128	8
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11712
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L660:
	.sleb128	8
	.byte		"Object"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11710:
.L11671:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11714-.L2
	.uleb128	12
.L655:
	.sleb128	8
	.byte		"AppID"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L656:
	.sleb128	8
	.byte		"ObjectType"
	.byte		0
	.4byte		.L11712
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L657:
	.sleb128	8
	.byte		"Object"
	.byte		0
	.4byte		.L11703
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11714:
.L11637:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11715-.L2
	.uleb128	4
.L654:
	.sleb128	8
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11715:
.L11635:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11717-.L2
	.uleb128	12
.L651:
	.sleb128	8
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L652:
	.sleb128	8
	.byte		"Start"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L653:
	.sleb128	8
	.byte		"Cycle"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11717:
.L11633:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11719-.L2
	.uleb128	12
.L648:
	.sleb128	8
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L649:
	.sleb128	8
	.byte		"Increment"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L650:
	.sleb128	8
	.byte		"Cycle"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11719:
.L11631:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11720-.L2
	.uleb128	8
.L646:
	.sleb128	8
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L647:
	.sleb128	8
	.byte		"TickRef"
	.byte		0
	.4byte		.L11721
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11720:
.L11629:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11723-.L2
	.uleb128	8
.L644:
	.sleb128	8
	.byte		"AlarmID"
	.byte		0
	.4byte		.L11716
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L645:
	.sleb128	8
	.byte		"AlarmBaseTypeRef"
	.byte		0
	.4byte		.L11724
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11723:
.L11669:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11728-.L2
	.uleb128	4
.L643:
	.sleb128	8
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11728:
.L11667:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11730-.L2
	.uleb128	8
.L641:
	.sleb128	8
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L642:
	.sleb128	8
	.byte		"SyncValue"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11730:
.L11665:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11731-.L2
	.uleb128	4
.L640:
	.sleb128	8
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11731:
.L11663:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11732-.L2
	.uleb128	8
.L638:
	.sleb128	8
	.byte		"SchTblIdFrom"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L639:
	.sleb128	8
	.byte		"SchTblIdTo"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11732:
.L11661:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11733-.L2
	.uleb128	8
.L636:
	.sleb128	8
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L637:
	.sleb128	8
	.byte		"SchTblStatus"
	.byte		0
	.4byte		.L11734
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11733:
.L11659:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11738-.L2
	.uleb128	4
.L635:
	.sleb128	8
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11738:
.L11657:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11739-.L2
	.uleb128	8
.L633:
	.sleb128	8
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L634:
	.sleb128	8
	.byte		"Offset"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11739:
.L11655:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11740-.L2
	.uleb128	8
.L631:
	.sleb128	8
	.byte		"SchTblId"
	.byte		0
	.4byte		.L11729
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L632:
	.sleb128	8
	.byte		"Start"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11740:
.L11653:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11741-.L2
	.uleb128	12
.L628:
	.sleb128	8
	.byte		"CounterId"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L629:
	.sleb128	8
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11721
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L630:
	.sleb128	8
	.byte		"ElapsedValuePtr"
	.byte		0
	.4byte		.L11721
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11741:
.L11651:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11743-.L2
	.uleb128	12
.L625:
	.sleb128	8
	.byte		"CounterId"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L626:
	.sleb128	8
	.byte		"ValuePtr"
	.byte		0
	.4byte		.L11721
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L627:
	.sleb128	8
	.byte		"LightServiceFunction"
	.byte		0
	.4byte		.L11744
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11743:
.L11649:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11748-.L2
	.uleb128	4
.L624:
	.sleb128	8
	.byte		"CounterId"
	.byte		0
	.4byte		.L11742
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11748:
.L11645:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11749-.L2
	.uleb128	4
.L623:
	.sleb128	8
	.byte		"ISRId"
	.byte		0
	.4byte		.L11750
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11749:
.L11641:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11751-.L2
	.uleb128	2
.L621:
	.sleb128	8
	.byte		"Application"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L622:
	.sleb128	8
	.byte		"RestartOption"
	.byte		0
	.4byte		.L11752
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L11751:
.L11643:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11753-.L2
	.uleb128	1
.L620:
	.sleb128	8
	.byte		"Application"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11753:
.L11639:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11754-.L2
	.uleb128	8
.L618:
	.sleb128	8
	.byte		"Application"
	.byte		0
	.4byte		.L11711
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L619:
	.sleb128	8
	.byte		"AppStateRef"
	.byte		0
	.4byte		.L11755
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11754:
.L11623:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11758-.L2
	.uleb128	8
.L617:
	.sleb128	8
	.byte		"EventMask"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11758:
.L11621:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11762-.L2
	.uleb128	24
.L614:
	.sleb128	8
	.byte		"TaskId"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L615:
	.sleb128	8
	.byte		"EventMask"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L616:
	.sleb128	8
	.byte		"EventMaskRef"
	.byte		0
	.4byte		.L11763
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L11762:
.L11619:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11765-.L2
	.uleb128	8
.L613:
	.sleb128	8
	.byte		"EventMask"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11765:
.L11617:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11766-.L2
	.uleb128	16
.L611:
	.sleb128	8
	.byte		"TaskId"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L612:
	.sleb128	8
	.byte		"EventMask"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11766:
.L11615:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11767-.L2
	.uleb128	8
.L609:
	.sleb128	8
	.byte		"TaskId"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L610:
	.sleb128	8
	.byte		"TaskStateRef"
	.byte		0
	.4byte		.L11768
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11767:
.L11613:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11772-.L2
	.uleb128	4
.L608:
	.sleb128	8
	.byte		"TaskIdRef"
	.byte		0
	.4byte		.L11773
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11772:
.L11611:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11775-.L2
	.uleb128	4
.L607:
	.sleb128	8
	.byte		"TaskId"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11775:
.L11609:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11776-.L2
	.uleb128	4
.L606:
	.sleb128	8
	.byte		"TaskId"
	.byte		0
	.4byte		.L11701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11776:
.L11627:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11777-.L2
	.uleb128	4
.L605:
	.sleb128	8
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11778
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11777:
.L11625:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11779-.L2
	.uleb128	4
.L604:
	.sleb128	8
	.byte		"ResourceId"
	.byte		0
	.4byte		.L11778
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11779:
.L11647:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11780-.L2
	.uleb128	4
.L603:
	.sleb128	8
	.byte		"AppMode"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11780:
.L11607:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11782-.L2
	.uleb128	2
.L602:
	.sleb128	8
	.byte		"CoreID"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11782:
.L11601:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11783-.L2
	.uleb128	2
.L601:
	.sleb128	8
	.byte		"NumberOfActivatedCores"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11783:
.L11599:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11784-.L2
	.uleb128	1
.L600:
	.sleb128	8
	.byte		"Error"
	.byte		0
	.4byte		.L11416
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11784:
.L11597:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11785-.L2
	.uleb128	8
.L598:
	.sleb128	8
	.byte		"ShutdownType"
	.byte		0
	.4byte		.L11786
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L599:
	.sleb128	8
	.byte		"Error"
	.byte		0
	.4byte		.L11416
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11785:
.L11595:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11788-.L2
	.uleb128	1
.L597:
	.sleb128	8
	.byte		"Error"
	.byte		0
	.4byte		.L11416
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11788:
.L11605:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11789-.L2
	.uleb128	8
.L595:
	.sleb128	8
	.byte		"CoreID"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L596:
	.sleb128	8
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11790
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11789:
.L11603:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11791-.L2
	.uleb128	8
.L593:
	.sleb128	8
	.byte		"CoreID"
	.byte		0
	.4byte		.L11689
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L594:
	.sleb128	8
	.byte		"StatusRef"
	.byte		0
	.4byte		.L11790
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11791:
.L11593:
	.sleb128	10
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11792-.L2
	.uleb128	4
.L592:
	.sleb128	8
	.byte		"AppMode"
	.byte		0
	.4byte		.L11781
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11792:
.L11423:
	.sleb128	10
	.4byte		.L11793
	.uleb128	33
	.uleb128	14
	.4byte		.L11794-.L2
	.uleb128	24
.L585:
	.sleb128	8
	.byte		"Os_IOC_ChannelDyn"
	.byte		0
	.4byte		.L11795
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L586:
	.sleb128	8
	.byte		"Os_IOC_ChannelLength"
	.byte		0
	.4byte		.L11486
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L587:
	.sleb128	8
	.byte		"Os_IOC_ChannelBuffer"
	.byte		0
	.4byte		.L11799
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L588:
	.sleb128	8
	.byte		"Os_IOC_ChannelElementSize"
	.byte		0
	.4byte		.L11800
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L589:
	.sleb128	8
	.byte		"Os_IOC_DataCount"
	.byte		0
	.4byte		.L11801
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L590:
	.sleb128	8
	.byte		"Os_IOC_DataDescriptor"
	.byte		0
	.4byte		.L11802
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L591:
	.sleb128	8
	.byte		"Os_IOC_LockResourceAddress"
	.byte		0
	.4byte		.L11807
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L11794:
.L11806:
	.sleb128	10
	.4byte		.L11793
	.uleb128	33
	.uleb128	14
	.4byte		.L11810-.L2
	.uleb128	4
.L581:
	.sleb128	8
	.byte		"Os_IOC_DataLength"
	.byte		0
	.4byte		.L11811
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L582:
	.sleb128	8
	.byte		"Os_IOC_DataOffset"
	.byte		0
	.4byte		.L11813
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L11810:
.L11798:
	.sleb128	10
	.4byte		.L11793
	.uleb128	33
	.uleb128	14
	.4byte		.L11815-.L2
	.uleb128	6
.L578:
	.sleb128	8
	.byte		"Os_IOC_ChannelHead"
	.byte		0
	.4byte		.L11486
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L579:
	.sleb128	8
	.byte		"Os_IOC_ChannelMessageCount"
	.byte		0
	.4byte		.L11486
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L580:
	.sleb128	8
	.byte		"Os_IOC_Status"
	.byte		0
	.4byte		.L11416
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11815:
.L11589:
	.sleb128	7
	.4byte		.L11816
	.uleb128	80
	.uleb128	13
	.4byte		.L11817-.L2
	.byte		"Os_ProcStatType_s"
	.byte		0
	.uleb128	80
.L511:
	.sleb128	8
	.byte		"Os_ProcId"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	8
	.byte		"Os_ProcCoreID"
	.byte		0
	.4byte		.L11819
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L513:
	.sleb128	8
	.byte		"Os_ProcDyn"
	.byte		0
	.4byte		.L11820
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L514:
	.sleb128	8
	.byte		"Os_ProcStack"
	.byte		0
	.4byte		.L11824
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L515:
	.sleb128	8
	.byte		"Os_ProcKind"
	.byte		0
	.4byte		.L11829
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L516:
	.sleb128	8
	.byte		"Os_ProcEventRights"
	.byte		0
	.4byte		.L11832
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L517:
	.sleb128	8
	.byte		"Os_ProcPriority"
	.byte		0
	.4byte		.L11833
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L518:
	.sleb128	8
	.byte		"Os_ProcRunPriority"
	.byte		0
	.4byte		.L11833
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L519:
	.sleb128	8
	.byte		"Os_ProcMaxActivations"
	.byte		0
	.4byte		.L11835
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L520:
	.sleb128	8
	.byte		"Os_ProcContext"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L521:
	.sleb128	8
	.byte		"Os_ProcOwnerApp"
	.byte		0
	.4byte		.L11840
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L522:
	.sleb128	8
	.byte		"Os_ProcAppAccess"
	.byte		0
	.4byte		.L11845
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L523:
	.sleb128	8
	.byte		"Os_ProcEntryPoint"
	.byte		0
	.4byte		.L11849
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L524:
	.sleb128	8
	.byte		"Os_ProcAutoStart"
	.byte		0
	.4byte		.L11845
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L525:
	.sleb128	8
	.byte		"Os_ProcResourceCount"
	.byte		0
	.4byte		.L11854
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L526:
	.sleb128	8
	.byte		"Os_ProcResourceStack"
	.byte		0
	.4byte		.L11855
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L527:
	.sleb128	8
	.byte		"Os_ProcQueueElements"
	.byte		0
	.4byte		.L11861
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L528:
	.sleb128	8
	.byte		"Os_ProcIsrPlatformConfig"
	.byte		0
	.4byte		.L11864
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
	.sleb128	0
.L11817:
.L11863:
	.sleb128	7
	.4byte		.L11576
	.uleb128	612
	.uleb128	1
	.4byte		.L11869-.L2
	.byte		"Os_SchedulerQueueElementType_s"
	.byte		0
	.uleb128	12
.L750:
	.sleb128	8
	.byte		"Os_QueueProc"
	.byte		0
	.4byte		.L11587
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L751:
	.sleb128	8
	.byte		"Os_QueueFrontElement"
	.byte		0
	.4byte		.L11862
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L752:
	.sleb128	8
	.byte		"Os_QueueBackElement"
	.byte		0
	.4byte		.L11862
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11869:
.L11828:
	.sleb128	7
	.4byte		.L11816
	.uleb128	80
	.uleb128	13
	.4byte		.L11870-.L2
	.byte		"Os_ProcStackStruct"
	.byte		0
	.uleb128	8
.L509:
	.sleb128	8
	.byte		"Os_ProcStackSize"
	.byte		0
	.4byte		.L11871
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L510:
	.sleb128	8
	.byte		"Os_ProcStackBase"
	.byte		0
	.4byte		.L11837
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11870:
.L11823:
	.sleb128	10
	.4byte		.L11816
	.uleb128	80
	.uleb128	13
	.4byte		.L11873-.L2
	.uleb128	56
.L496:
	.sleb128	8
	.byte		"Os_ProcState"
	.byte		0
	.4byte		.L11770
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L497:
	.sleb128	8
	.byte		"Os_ProcContextState"
	.byte		0
	.4byte		.L11874
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L498:
	.sleb128	8
	.byte		"Os_ProcEvents"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L499:
	.sleb128	8
	.byte		"Os_ProcEventWaitingFor"
	.byte		0
	.4byte		.L11759
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L500:
	.sleb128	8
	.byte		"Os_ProcActivations"
	.byte		0
	.4byte		.L11836
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L501:
	.sleb128	8
	.byte		"Os_ProcResourcesAllocated"
	.byte		0
	.4byte		.L11778
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L502:
	.sleb128	8
	.byte		"Os_ProcEnabled"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L503:
	.sleb128	8
	.byte		"Os_ProcCurrentApp"
	.byte		0
	.4byte		.L11841
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L504:
	.sleb128	8
	.byte		"Os_ProcSpinlock"
	.byte		0
	.4byte		.L11876
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L505:
	.sleb128	8
	.byte		"Os_ProcFreeQueueElements"
	.byte		0
	.4byte		.L11862
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L506:
	.sleb128	8
	.byte		"Os_ProcCurrentPriority"
	.byte		0
	.4byte		.L11834
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L507:
	.sleb128	8
	.byte		"Os_ProcTFCallCount"
	.byte		0
	.4byte		.L11417
	.sleb128	2
	.byte		0x23
	.uleb128	52
	.byte		0x1
.L508:
	.sleb128	8
	.byte		"Os_FatalErrorOccured"
	.byte		0
	.4byte		.L11416
	.sleb128	2
	.byte		0x23
	.uleb128	53
	.byte		0x1
	.sleb128	0
.L11873:
.L11878:
	.sleb128	7
	.4byte		.L11879
	.uleb128	52
	.uleb128	1
	.4byte		.L11880-.L2
	.byte		"Os_SpinlockStatType_s"
	.byte		0
	.uleb128	16
.L448:
	.sleb128	8
	.byte		"Os_SpinlockId"
	.byte		0
	.4byte		.L11881
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L449:
	.sleb128	8
	.byte		"Os_SpinlockChainId"
	.byte		0
	.4byte		.L11881
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L450:
	.sleb128	8
	.byte		"Os_SpinlockDyn"
	.byte		0
	.4byte		.L11882
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L451:
	.sleb128	8
	.byte		"Os_SpinlockAccess"
	.byte		0
	.4byte		.L11845
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L452:
	.sleb128	8
	.byte		"Os_SpinlockLockResourceAddress"
	.byte		0
	.4byte		.L11807
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L11880:
.L11885:
	.sleb128	10
	.4byte		.L11879
	.uleb128	52
	.uleb128	1
	.4byte		.L11886-.L2
	.uleb128	12
.L445:
	.sleb128	8
	.byte		"Os_SpinlockLockerProc"
	.byte		0
	.4byte		.L11587
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L446:
	.sleb128	8
	.byte		"Os_SpinlockSuperseded"
	.byte		0
	.4byte		.L11876
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L447:
	.sleb128	8
	.byte		"Os_ResourceDependency"
	.byte		0
	.4byte		.L11857
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11886:
.L11844:
	.sleb128	7
	.4byte		.L11879
	.uleb128	52
	.uleb128	1
	.4byte		.L11887-.L2
	.byte		"Os_ApplicationStatType_s"
	.byte		0
	.uleb128	48
.L433:
	.sleb128	8
	.byte		"Os_AppDyn"
	.byte		0
	.4byte		.L11888
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L434:
	.sleb128	8
	.byte		"Os_AppId"
	.byte		0
	.4byte		.L11892
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L435:
	.sleb128	8
	.byte		"Os_AppRestartTask"
	.byte		0
	.4byte		.L11818
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L436:
	.sleb128	8
	.byte		"Os_AppKind"
	.byte		0
	.4byte		.L11893
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L437:
	.sleb128	8
	.byte		"Os_AppShutdownHook"
	.byte		0
	.4byte		.L11896
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L438:
	.sleb128	8
	.byte		"Os_AppStartupHook"
	.byte		0
	.4byte		.L11901
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L439:
	.sleb128	8
	.byte		"Os_AppErrorHook"
	.byte		0
	.4byte		.L11906
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L440:
	.sleb128	8
	.byte		"Os_AppProcIDs"
	.byte		0
	.4byte		.L11911
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L441:
	.sleb128	8
	.byte		"Os_AppCounterIDs"
	.byte		0
	.4byte		.L11914
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L442:
	.sleb128	8
	.byte		"Os_AppAlarmIDs"
	.byte		0
	.4byte		.L11917
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L443:
	.sleb128	8
	.byte		"Os_AppSchTblIDs"
	.byte		0
	.4byte		.L11920
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L444:
	.sleb128	8
	.byte		"Os_CoreAssigment"
	.byte		0
	.4byte		.L11819
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
	.sleb128	0
.L11887:
.L11891:
	.sleb128	10
	.4byte		.L11879
	.uleb128	52
	.uleb128	1
	.4byte		.L11923-.L2
	.uleb128	1
.L432:
	.sleb128	8
	.byte		"Os_AppState"
	.byte		0
	.4byte		.L11757
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11923:
.L11860:
	.sleb128	10
	.4byte		.L11924
	.uleb128	32
	.uleb128	1
	.4byte		.L11925-.L2
	.uleb128	12
.L429:
	.sleb128	8
	.byte		"Os_ResourcePriority"
	.byte		0
	.4byte		.L11833
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L430:
	.sleb128	8
	.byte		"Os_ResourceAccessRights"
	.byte		0
	.4byte		.L11846
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L431:
	.sleb128	8
	.byte		"Os_ResourceDyn"
	.byte		0
	.4byte		.L11926
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11925:
.L11928:
	.sleb128	10
	.4byte		.L11924
	.uleb128	32
	.uleb128	1
	.4byte		.L11929-.L2
	.uleb128	4
.L428:
	.sleb128	8
	.byte		"Os_LockerProc"
	.byte		0
	.4byte		.L11587
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L11929:
.L11727:
	.sleb128	10
	.4byte		.L11930
	.uleb128	50
	.uleb128	1
	.4byte		.L11931-.L2
	.uleb128	12
.L376:
	.sleb128	8
	.byte		"maxallowedvalue"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L377:
	.sleb128	8
	.byte		"ticksperbase"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L378:
	.sleb128	8
	.byte		"mincycle"
	.byte		0
	.4byte		.L11718
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L11931:
.L11868:
	.sleb128	10
	.4byte		.L11932
	.uleb128	87
	.uleb128	7
	.4byte		.L11933-.L2
	.uleb128	8
.L364:
	.sleb128	8
	.byte		"Os_IsrPltId"
	.byte		0
	.4byte		.L11934
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L365:
	.sleb128	8
	.byte		"Os_IsrPltLevel"
	.byte		0
	.4byte		.L11935
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L11933:
	.section	.debug_info,,n
.L11581:
	.sleb128	11
	.4byte		.L11576
	.uleb128	60
	.uleb128	1
	.4byte		.L11937-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"OS_DISPATCH_SINGLE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"OS_DISPATCH_MULTI"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"OS_DISPATCH_ALL"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11937:
	.section	.debug_info,,n
.L11709:
	.sleb128	13
	.4byte		.L11793
	.uleb128	33
	.uleb128	14
	.4byte		.L11938-.L2
	.byte		"TrustedFunctionReturnValueType_e"
	.byte		0
	.uleb128	4
	.sleb128	12
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_NONE"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"TRUSTEDFUNCTION_RETURN_VALUE_SCHEDULE"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11938:
.L11875:
	.sleb128	11
	.4byte		.L11816
	.uleb128	80
	.uleb128	13
	.4byte		.L11939-.L2
	.uleb128	4
	.sleb128	12
	.byte		"Os_ProcContextInvalid"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"Os_ProcContextActive"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"Os_ProcContextPrepared"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11939:
.L11831:
	.sleb128	11
	.4byte		.L11816
	.uleb128	61
	.uleb128	1
	.4byte		.L11940-.L2
	.uleb128	4
	.sleb128	12
	.byte		"Os_Proc_Task"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"Os_Proc_ISR_CAT2"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11940:
.L11895:
	.sleb128	11
	.4byte		.L11879
	.uleb128	52
	.uleb128	1
	.4byte		.L11941-.L2
	.uleb128	4
	.sleb128	12
	.byte		"OS_TRUSTED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"OS_NONTRUSTED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11941:
.L11697:
	.sleb128	11
	.4byte		.L11942
	.uleb128	43
	.uleb128	1
	.4byte		.L11943-.L2
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
.L11943:
.L11771:
	.sleb128	11
	.4byte		.L11944
	.uleb128	37
	.uleb128	1
	.4byte		.L11945-.L2
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
.L11945:
.L11737:
	.sleb128	11
	.4byte		.L11946
	.uleb128	40
	.uleb128	1
	.4byte		.L11947-.L2
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
.L11947:
.L11713:
	.sleb128	11
	.4byte		.L11948
	.uleb128	47
	.uleb128	1
	.4byte		.L11949-.L2
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
.L11949:
.L11787:
	.sleb128	11
	.4byte		.L11930
	.uleb128	42
	.uleb128	13
	.4byte		.L11950-.L2
	.uleb128	4
	.sleb128	12
	.byte		"OS_SHUTDOWN_INDIVIDUAL"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"OS_SHUTDOWN_SYNCHRONIZED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L11950:
.L11691:
	.sleb128	11
	.4byte		.L11951
	.uleb128	83
	.uleb128	14
	.4byte		.L11952-.L2
	.uleb128	4
	.sleb128	12
	.byte		"IDLE_NO_HALT"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"IDLE_WAIT"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"IDLE_NUMBEROFOPTIONS"
	.byte		0
	.sleb128	2
	.sleb128	0
.L11952:
	.section	.debug_info,,n
.L11418:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L11417:
	.sleb128	15
	.byte		"uint8"
	.byte		0
	.4byte		.L11418
.L11416:
	.sleb128	15
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L11417
.L11422:
	.sleb128	15
	.byte		"Os_IOC_ChannelStatType"
	.byte		0
	.4byte		.L11423
	.section	.debug_info,,n
.L11421:
	.sleb128	16
	.4byte		.L11422
	.section	.debug_info,,n
.L11420:
	.sleb128	17
	.4byte		.L11421
	.section	.debug_info,,n
.L11430:
	.sleb128	18
	.byte		"void"
	.byte		0
	.byte		0x0
.L11429:
	.sleb128	17
	.4byte		.L11430
	.section	.debug_info,,n
.L11427:
	.sleb128	19
	.4byte		.L11428
	.4byte		.L11429
	.section	.debug_info,,n
	.sleb128	20
	.uleb128	1
	.sleb128	0
.L11428:
.L11426:
	.sleb128	15
	.byte		"Os_IOC_DataType"
	.byte		0
	.4byte		.L11427
.L11425:
	.sleb128	17
	.4byte		.L11426
.L11433:
	.sleb128	15
	.byte		"Os_IOC_DataCountType"
	.byte		0
	.4byte		.L11417
.L11438:
	.sleb128	16
	.4byte		.L11417
.L11437:
	.sleb128	17
	.4byte		.L11438
.L11436:
	.sleb128	16
	.4byte		.L11437
.L11445:
	.sleb128	17
	.4byte		.L11446
.L11488:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L11487:
	.sleb128	15
	.byte		"uint16"
	.byte		0
	.4byte		.L11488
.L11486:
	.sleb128	15
	.byte		"Os_IOC_ChannelSizeType"
	.byte		0
	.4byte		.L11487
.L11485:
	.sleb128	16
	.4byte		.L11486
.L11538:
	.sleb128	16
	.4byte		.L11420
.L11579:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L11578:
	.sleb128	15
	.byte		"uint32"
	.byte		0
	.4byte		.L11579
.L11580:
	.sleb128	15
	.byte		"Os_API_LockType"
	.byte		0
	.4byte		.L11581
	.section	.debug_info,,n
.L11584:
	.sleb128	21
	.4byte		.L11585-.L2
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	22
	.4byte		.L11445
.L11588:
	.sleb128	16
	.4byte		.L11589
.L11587:
	.sleb128	17
	.4byte		.L11588
.L11586:
	.sleb128	16
	.4byte		.L11587
	.sleb128	22
	.4byte		.L11586
	.sleb128	0
.L11585:
.L11583:
	.sleb128	17
	.4byte		.L11584
.L11582:
	.sleb128	15
	.byte		"Os_API_Func_Type"
	.byte		0
	.4byte		.L11583
.L11592:
	.sleb128	15
	.byte		"Os_API_StartOsType"
	.byte		0
	.4byte		.L11593
.L11594:
	.sleb128	15
	.byte		"Os_API_ShutdownOsType"
	.byte		0
	.4byte		.L11595
.L11596:
	.sleb128	15
	.byte		"Os_API_ShutdownOsInternalType"
	.byte		0
	.4byte		.L11597
.L11598:
	.sleb128	15
	.byte		"Os_API_ShutdownAllCoresType"
	.byte		0
	.4byte		.L11599
.L11600:
	.sleb128	15
	.byte		"Os_API_GetNumberOfActivatedCoresType"
	.byte		0
	.4byte		.L11601
.L11602:
	.sleb128	15
	.byte		"Os_API_ApiStartCoreType"
	.byte		0
	.4byte		.L11603
.L11604:
	.sleb128	15
	.byte		"Os_API_StartNonAutosarCoreType"
	.byte		0
	.4byte		.L11605
.L11606:
	.sleb128	15
	.byte		"Os_API_GetCoreIDType"
	.byte		0
	.4byte		.L11607
.L11608:
	.sleb128	15
	.byte		"Os_API_ActivateTaskType"
	.byte		0
	.4byte		.L11609
.L11610:
	.sleb128	15
	.byte		"Os_API_ChainTaskType"
	.byte		0
	.4byte		.L11611
.L11612:
	.sleb128	15
	.byte		"Os_API_GetTaskIDType"
	.byte		0
	.4byte		.L11613
.L11614:
	.sleb128	15
	.byte		"Os_API_GetTaskStateType"
	.byte		0
	.4byte		.L11615
.L11616:
	.sleb128	15
	.byte		"Os_API_SetEventType"
	.byte		0
	.4byte		.L11617
.L11618:
	.sleb128	15
	.byte		"Os_API_ClearEventType"
	.byte		0
	.4byte		.L11619
.L11620:
	.sleb128	15
	.byte		"Os_API_GetEventType"
	.byte		0
	.4byte		.L11621
.L11622:
	.sleb128	15
	.byte		"Os_API_WaitEventType"
	.byte		0
	.4byte		.L11623
.L11624:
	.sleb128	15
	.byte		"Os_API_GetResourceType"
	.byte		0
	.4byte		.L11625
.L11626:
	.sleb128	15
	.byte		"Os_API_ReleaseResourceType"
	.byte		0
	.4byte		.L11627
.L11628:
	.sleb128	15
	.byte		"Os_API_GetAlarmBaseType"
	.byte		0
	.4byte		.L11629
.L11630:
	.sleb128	15
	.byte		"Os_API_GetAlarmType"
	.byte		0
	.4byte		.L11631
.L11632:
	.sleb128	15
	.byte		"Os_API_SetRelAlarmType"
	.byte		0
	.4byte		.L11633
.L11634:
	.sleb128	15
	.byte		"Os_API_SetAbsAlarmType"
	.byte		0
	.4byte		.L11635
.L11636:
	.sleb128	15
	.byte		"Os_API_CancelAlarmType"
	.byte		0
	.4byte		.L11637
.L11638:
	.sleb128	15
	.byte		"Os_API_GetApplicationStateType"
	.byte		0
	.4byte		.L11639
.L11640:
	.sleb128	15
	.byte		"Os_API_TerminateApplicationType"
	.byte		0
	.4byte		.L11641
.L11642:
	.sleb128	15
	.byte		"Os_API_GetApplicationIDType"
	.byte		0
	.4byte		.L11643
.L11644:
	.sleb128	15
	.byte		"Os_API_GetISRIDType"
	.byte		0
	.4byte		.L11645
.L11646:
	.sleb128	15
	.byte		"Os_API_GetActiveApplicationModeType"
	.byte		0
	.4byte		.L11647
.L11648:
	.sleb128	15
	.byte		"Os_API_IncrementCounterType"
	.byte		0
	.4byte		.L11649
.L11650:
	.sleb128	15
	.byte		"Os_API_GetCounterValueType"
	.byte		0
	.4byte		.L11651
.L11652:
	.sleb128	15
	.byte		"Os_API_GetElapsedValueType"
	.byte		0
	.4byte		.L11653
.L11654:
	.sleb128	15
	.byte		"Os_API_StartScheduleTableAbsType"
	.byte		0
	.4byte		.L11655
.L11656:
	.sleb128	15
	.byte		"Os_API_StartScheduleTableRelType"
	.byte		0
	.4byte		.L11657
.L11658:
	.sleb128	15
	.byte		"Os_API_StopScheduleTableType"
	.byte		0
	.4byte		.L11659
.L11660:
	.sleb128	15
	.byte		"Os_API_GetScheduleTableStatusType"
	.byte		0
	.4byte		.L11661
.L11662:
	.sleb128	15
	.byte		"Os_API_NextScheduleTableType"
	.byte		0
	.4byte		.L11663
.L11664:
	.sleb128	15
	.byte		"Os_API_StartScheduleTableSynchronType"
	.byte		0
	.4byte		.L11665
.L11666:
	.sleb128	15
	.byte		"Os_API_SyncScheduleTableType"
	.byte		0
	.4byte		.L11667
.L11668:
	.sleb128	15
	.byte		"Os_API_SetScheduleTableAsyncType"
	.byte		0
	.4byte		.L11669
.L11670:
	.sleb128	15
	.byte		"Os_API_CheckObjectAccessType"
	.byte		0
	.4byte		.L11671
.L11672:
	.sleb128	15
	.byte		"Os_API_CheckObjectOwnershipType"
	.byte		0
	.4byte		.L11673
.L11674:
	.sleb128	15
	.byte		"Os_API_CallTrustedFunctionType"
	.byte		0
	.4byte		.L11675
.L11676:
	.sleb128	15
	.byte		"Os_API_StackUsageType"
	.byte		0
	.4byte		.L11677
.L11678:
	.sleb128	15
	.byte		"Os_API_GetSpinlockType"
	.byte		0
	.4byte		.L11679
.L11680:
	.sleb128	15
	.byte		"Os_API_ReleaseSpinlockType"
	.byte		0
	.4byte		.L11681
.L11682:
	.sleb128	15
	.byte		"Os_API_TryToGetSpinlockType"
	.byte		0
	.4byte		.L11683
.L11684:
	.sleb128	15
	.byte		"Os_API_IocTransferType"
	.byte		0
	.4byte		.L11685
.L11686:
	.sleb128	15
	.byte		"Os_API_ControlIdleType"
	.byte		0
	.4byte		.L11687
.L11689:
	.sleb128	15
	.byte		"CoreIdType"
	.byte		0
	.4byte		.L11487
.L11690:
	.sleb128	15
	.byte		"IdleModeType"
	.byte		0
	.4byte		.L11691
.L11694:
	.sleb128	15
	.byte		"SpinlockIdType"
	.byte		0
	.4byte		.L11487
.L11696:
	.sleb128	15
	.byte		"TryToGetSpinlockType"
	.byte		0
	.4byte		.L11697
.L11695:
	.sleb128	17
	.4byte		.L11696
.L11703:
	.sleb128	15
	.byte		"Os_ObjectType"
	.byte		0
	.4byte		.L11578
.L11702:
	.sleb128	15
	.byte		"ProcType"
	.byte		0
	.4byte		.L11703
.L11701:
	.sleb128	15
	.byte		"TaskType"
	.byte		0
	.4byte		.L11702
.L11704:
	.sleb128	17
	.4byte		.L11417
.L11706:
	.sleb128	15
	.byte		"TrustedFunctionIndexType"
	.byte		0
	.4byte		.L11578
.L11707:
	.sleb128	15
	.byte		"TrustedFunctionParameterRefType"
	.byte		0
	.4byte		.L11429
.L11708:
	.sleb128	15
	.byte		"Os_TrustedFunctionReturnValueType"
	.byte		0
	.4byte		.L11709
.L11711:
	.sleb128	15
	.byte		"ApplicationType"
	.byte		0
	.4byte		.L11417
.L11712:
	.sleb128	15
	.byte		"ObjectTypeType"
	.byte		0
	.4byte		.L11713
.L11716:
	.sleb128	15
	.byte		"AlarmType"
	.byte		0
	.4byte		.L11703
.L11718:
	.sleb128	15
	.byte		"TickType"
	.byte		0
	.4byte		.L11578
.L11722:
	.sleb128	17
	.4byte		.L11718
.L11721:
	.sleb128	15
	.byte		"TickRefType"
	.byte		0
	.4byte		.L11722
.L11726:
	.sleb128	15
	.byte		"AlarmBaseType"
	.byte		0
	.4byte		.L11727
.L11725:
	.sleb128	17
	.4byte		.L11726
.L11724:
	.sleb128	15
	.byte		"AlarmBaseRefType"
	.byte		0
	.4byte		.L11725
.L11729:
	.sleb128	15
	.byte		"ScheduleTableType"
	.byte		0
	.4byte		.L11578
.L11736:
	.sleb128	15
	.byte		"ScheduleTableStatusType"
	.byte		0
	.4byte		.L11737
.L11735:
	.sleb128	17
	.4byte		.L11736
.L11734:
	.sleb128	15
	.byte		"ScheduleTableStatusRefType"
	.byte		0
	.4byte		.L11735
.L11742:
	.sleb128	15
	.byte		"CounterType"
	.byte		0
	.4byte		.L11578
.L11746:
	.sleb128	21
	.4byte		.L11747-.L2
	.byte		0x1
	.sleb128	22
	.4byte		.L11445
	.sleb128	0
.L11747:
.L11745:
	.sleb128	17
	.4byte		.L11746
.L11744:
	.sleb128	15
	.byte		"LightServiceFunctionType"
	.byte		0
	.4byte		.L11745
.L11750:
	.sleb128	15
	.byte		"ISRType"
	.byte		0
	.4byte		.L11702
.L11752:
	.sleb128	15
	.byte		"RestartType"
	.byte		0
	.4byte		.L11417
.L11757:
	.sleb128	15
	.byte		"ApplicationStateType"
	.byte		0
	.4byte		.L11417
.L11756:
	.sleb128	17
	.4byte		.L11757
.L11755:
	.sleb128	15
	.byte		"ApplicationStateRefType"
	.byte		0
	.4byte		.L11756
.L11761:
	.sleb128	14
	.byte		"unsigned long long"
	.byte		0
	.byte		0x7
	.byte		0x8
.L11760:
	.sleb128	15
	.byte		"uint64"
	.byte		0
	.4byte		.L11761
.L11759:
	.sleb128	15
	.byte		"EventMaskType"
	.byte		0
	.4byte		.L11760
.L11764:
	.sleb128	17
	.4byte		.L11759
.L11763:
	.sleb128	15
	.byte		"EventMaskRefType"
	.byte		0
	.4byte		.L11764
.L11770:
	.sleb128	15
	.byte		"TaskStateType"
	.byte		0
	.4byte		.L11771
.L11769:
	.sleb128	17
	.4byte		.L11770
.L11768:
	.sleb128	15
	.byte		"TaskStateRefType"
	.byte		0
	.4byte		.L11769
.L11774:
	.sleb128	17
	.4byte		.L11701
.L11773:
	.sleb128	15
	.byte		"TaskRefType"
	.byte		0
	.4byte		.L11774
.L11778:
	.sleb128	15
	.byte		"ResourceType"
	.byte		0
	.4byte		.L11578
.L11781:
	.sleb128	15
	.byte		"AppModeType"
	.byte		0
	.4byte		.L11578
.L11786:
	.sleb128	15
	.byte		"Os_CoreShutdownType"
	.byte		0
	.4byte		.L11787
.L11790:
	.sleb128	17
	.4byte		.L11416
.L11797:
	.sleb128	15
	.byte		"Os_IOC_ChannelDynType"
	.byte		0
	.4byte		.L11798
.L11796:
	.sleb128	17
	.4byte		.L11797
.L11795:
	.sleb128	16
	.4byte		.L11796
.L11799:
	.sleb128	16
	.4byte		.L11429
.L11800:
	.sleb128	16
	.4byte		.L11487
.L11801:
	.sleb128	16
	.4byte		.L11433
.L11805:
	.sleb128	15
	.byte		"Os_IOC_DataDescriptorType"
	.byte		0
	.4byte		.L11806
.L11804:
	.sleb128	16
	.4byte		.L11805
.L11803:
	.sleb128	17
	.4byte		.L11804
.L11802:
	.sleb128	16
	.4byte		.L11803
.L11809:
	.sleb128	15
	.byte		"Os_LockResourceType"
	.byte		0
	.4byte		.L11417
.L11808:
	.sleb128	17
	.4byte		.L11809
.L11807:
	.sleb128	16
	.4byte		.L11808
.L11812:
	.sleb128	15
	.byte		"Os_IOC_DataLengthType"
	.byte		0
	.4byte		.L11487
.L11811:
	.sleb128	16
	.4byte		.L11812
.L11814:
	.sleb128	15
	.byte		"Os_IOC_DataOffsetType"
	.byte		0
	.4byte		.L11487
.L11813:
	.sleb128	16
	.4byte		.L11814
.L11818:
	.sleb128	16
	.4byte		.L11701
.L11819:
	.sleb128	16
	.4byte		.L11689
.L11822:
	.sleb128	15
	.byte		"Os_ProcDynType"
	.byte		0
	.4byte		.L11823
.L11821:
	.sleb128	17
	.4byte		.L11822
.L11820:
	.sleb128	16
	.4byte		.L11821
.L11827:
	.sleb128	15
	.byte		"Os_ProcStackType"
	.byte		0
	.4byte		.L11828
.L11826:
	.sleb128	16
	.4byte		.L11827
.L11825:
	.sleb128	17
	.4byte		.L11826
.L11824:
	.sleb128	16
	.4byte		.L11825
.L11830:
	.sleb128	15
	.byte		"Os_ProcKindType"
	.byte		0
	.4byte		.L11831
.L11829:
	.sleb128	16
	.4byte		.L11830
.L11832:
	.sleb128	16
	.4byte		.L11759
.L11834:
	.sleb128	15
	.byte		"Os_PriorityType"
	.byte		0
	.4byte		.L11578
.L11833:
	.sleb128	16
	.4byte		.L11834
.L11836:
	.sleb128	15
	.byte		"Os_ActivationCountType"
	.byte		0
	.4byte		.L11578
.L11835:
	.sleb128	16
	.4byte		.L11836
.L11839:
	.sleb128	15
	.byte		"Os_StackType"
	.byte		0
	.4byte		.L11578
.L11838:
	.sleb128	17
	.4byte		.L11839
.L11837:
	.sleb128	16
	.4byte		.L11838
.L11843:
	.sleb128	15
	.byte		"Os_ApplicationStatType"
	.byte		0
	.4byte		.L11844
.L11842:
	.sleb128	16
	.4byte		.L11843
.L11841:
	.sleb128	17
	.4byte		.L11842
.L11840:
	.sleb128	16
	.4byte		.L11841
.L11848:
	.sleb128	15
	.byte		"Os_AccessStorageType"
	.byte		0
	.4byte		.L11578
.L11847:
	.sleb128	16
	.4byte		.L11848
.L11846:
	.sleb128	17
	.4byte		.L11847
.L11845:
	.sleb128	16
	.4byte		.L11846
.L11852:
	.sleb128	21
	.4byte		.L11853-.L2
	.byte		0x1
	.sleb128	0
.L11853:
.L11851:
	.sleb128	17
	.4byte		.L11852
.L11850:
	.sleb128	15
	.byte		"Os_ProcEntryPointType"
	.byte		0
	.4byte		.L11851
.L11849:
	.sleb128	16
	.4byte		.L11850
.L11854:
	.sleb128	16
	.4byte		.L11778
.L11859:
	.sleb128	15
	.byte		"Os_ResourceStatType"
	.byte		0
	.4byte		.L11860
.L11858:
	.sleb128	16
	.4byte		.L11859
.L11857:
	.sleb128	17
	.4byte		.L11858
.L11856:
	.sleb128	15
	.byte		"Os_ResourceStack"
	.byte		0
	.4byte		.L11857
.L11855:
	.sleb128	17
	.4byte		.L11856
.L11862:
	.sleb128	17
	.4byte		.L11863
.L11861:
	.sleb128	16
	.4byte		.L11862
.L11867:
	.sleb128	15
	.byte		"Os_IsrPlatformConfigType"
	.byte		0
	.4byte		.L11868
.L11866:
	.sleb128	16
	.4byte		.L11867
.L11865:
	.sleb128	17
	.4byte		.L11866
.L11864:
	.sleb128	16
	.4byte		.L11865
.L11872:
	.sleb128	15
	.byte		"Os_StackSizeType"
	.byte		0
	.4byte		.L11578
.L11871:
	.sleb128	16
	.4byte		.L11872
.L11874:
	.sleb128	15
	.byte		"Os_ProcContexStateType"
	.byte		0
	.4byte		.L11875
.L11877:
	.sleb128	16
	.4byte		.L11878
.L11876:
	.sleb128	17
	.4byte		.L11877
.L11881:
	.sleb128	16
	.4byte		.L11694
.L11884:
	.sleb128	15
	.byte		"Os_SpinlockDynType"
	.byte		0
	.4byte		.L11885
.L11883:
	.sleb128	17
	.4byte		.L11884
.L11882:
	.sleb128	16
	.4byte		.L11883
.L11890:
	.sleb128	15
	.byte		"Os_ApplicationDynType"
	.byte		0
	.4byte		.L11891
.L11889:
	.sleb128	17
	.4byte		.L11890
.L11888:
	.sleb128	16
	.4byte		.L11889
.L11892:
	.sleb128	16
	.4byte		.L11711
.L11894:
	.sleb128	15
	.byte		"Os_ApplicationKindType"
	.byte		0
	.4byte		.L11895
.L11893:
	.sleb128	16
	.4byte		.L11894
.L11899:
	.sleb128	21
	.4byte		.L11900-.L2
	.byte		0x1
	.sleb128	22
	.4byte		.L11416
	.sleb128	0
.L11900:
.L11898:
	.sleb128	17
	.4byte		.L11899
.L11897:
	.sleb128	15
	.byte		"Os_ShutdownHookFuncType"
	.byte		0
	.4byte		.L11898
.L11896:
	.sleb128	16
	.4byte		.L11897
.L11904:
	.sleb128	21
	.4byte		.L11905-.L2
	.byte		0x1
	.sleb128	0
.L11905:
.L11903:
	.sleb128	17
	.4byte		.L11904
.L11902:
	.sleb128	15
	.byte		"Os_StartUpHookFuncType"
	.byte		0
	.4byte		.L11903
.L11901:
	.sleb128	16
	.4byte		.L11902
.L11909:
	.sleb128	21
	.4byte		.L11910-.L2
	.byte		0x1
	.sleb128	22
	.4byte		.L11416
	.sleb128	0
.L11910:
.L11908:
	.sleb128	17
	.4byte		.L11909
.L11907:
	.sleb128	15
	.byte		"Os_ErrorHookFuncType"
	.byte		0
	.4byte		.L11908
.L11906:
	.sleb128	16
	.4byte		.L11907
.L11913:
	.sleb128	16
	.4byte		.L11702
.L11912:
	.sleb128	17
	.4byte		.L11913
.L11911:
	.sleb128	16
	.4byte		.L11912
.L11916:
	.sleb128	16
	.4byte		.L11742
.L11915:
	.sleb128	17
	.4byte		.L11916
.L11914:
	.sleb128	16
	.4byte		.L11915
.L11919:
	.sleb128	16
	.4byte		.L11716
.L11918:
	.sleb128	17
	.4byte		.L11919
.L11917:
	.sleb128	16
	.4byte		.L11918
.L11922:
	.sleb128	16
	.4byte		.L11729
.L11921:
	.sleb128	17
	.4byte		.L11922
.L11920:
	.sleb128	16
	.4byte		.L11921
.L11927:
	.sleb128	15
	.byte		"Os_ResourceDynType"
	.byte		0
	.4byte		.L11928
.L11926:
	.sleb128	17
	.4byte		.L11927
.L11934:
	.sleb128	16
	.4byte		.L11578
.L11936:
	.sleb128	15
	.byte		"Os_IsrPlatformLevelType"
	.byte		0
	.4byte		.L11487
.L11935:
	.sleb128	16
	.4byte		.L11936
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.Os_TEXT,,n
	.sectionlink	.debug_info
.L11409:
	.sleb128	0
.L11405:

	.section	.debug_loc,,n
	.align	0
.L11424:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),31
	.d2locend
.L11431:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),4
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo5),30
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),4
	.d2locend
.L11434:
	.d2locreg	%offsetof(.Llo2), %offsetof(.Llo5),29
	.d2locend
.L11439:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo5),28
	.d2locend
.L11447:
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),31
	.d2locend
.L11453:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),31
	.d2locend
.L11454:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo15),4
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo16),30
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),4
	.d2locend
.L11456:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo20),3
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo18),3
	.d2locend
.L11462:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo16),29
	.d2locend
.L11464:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo16),28
	.d2locend
.L11470:
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),31
	.d2locend
.L11476:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),3
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),31
	.d2locend
.L11477:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo32),4
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo31),30
	.d2locend
.L11479:
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),3
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),3
	.d2locend
.L11489:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),0
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),0
	.d2locreg	%offsetof(.Llo43), %offsetof(.Llo44),0
	.d2locend
.L11495:
	.d2locreg	%offsetof(.Llo45), %offsetof(.Llo31),29
	.d2locend
.L11497:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo31),28
	.d2locend
.L11503:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo48),3
	.d2locreg	%offsetof(.Llo49), %offsetof(.Llo50),31
	.d2locend
.L11509:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),3
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),31
	.d2locend
.L11510:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo53),4
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo56),30
	.d2locreg	%offsetof(.Llo54), %offsetof(.Llo57),4
	.d2locend
.L11512:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo58),3
	.d2locreg	%offsetof(.Llo59), %offsetof(.Llo60),3
	.d2locend
.L11518:
	.d2locreg	%offsetof(.Llo61), %offsetof(.Llo62),0
	.d2locreg	%offsetof(.Llo63), %offsetof(.Llo64),3
	.d2locreg	%offsetof(.Llo65), %offsetof(.Llo66),3
	.d2locend
.L11524:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo56),29
	.d2locend
.L11526:
	.d2locreg	%offsetof(.Llo67), %offsetof(.Llo56),28
	.d2locend
.L11532:
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),3
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),31
	.d2locend
.L11539:
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),3
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),5
	.d2locend
.L11545:
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),3
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),6
	.d2locend
.L11551:
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),3
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo83),31
	.d2locend
.L11557:
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo85),3
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo87),31
	.d2locend
.L11563:
	.d2locreg	%offsetof(.Llo88), %offsetof(.Llo89),3
	.d2locreg	%offsetof(.Llo90), %offsetof(.Llo91),31
	.d2locend
.L11569:
	.d2locreg	%offsetof(.Llo92), %offsetof(.Llo93),3
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),31
	.d2locend
.L11575:
	.d2locreg	%offsetof(.Llo96), %offsetof(.Llo97),3
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),31
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Os_API_IocEmptyQueue_MultiCore"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_IocEmptyQueue","Os_Platform_LockResource_Byte","Os_Platform_UnlockResource_Byte"
	.wrcm.end
	.wrcm.nelem "Os_API_IocReceive_MultiCore"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_IocReceive","Os_Platform_LockResource_Byte","Os_Platform_UnlockResource_Byte"
	.wrcm.end
	.wrcm.nelem "Os_API_IocSend_MultiCore"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_IocSend","Os_Platform_LockResource_Byte","Os_Platform_UnlockResource_Byte"
	.wrcm.end
	.wrcm.nelem "Os_API_IocRead_MultiCore"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_IocRead","Os_Platform_LockResource_Byte","Os_Platform_UnlockResource_Byte"
	.wrcm.end
	.wrcm.nelem "Os_API_IocWrite_MultiCore"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_IocWrite","Os_Platform_LockResource_Byte","Os_Platform_UnlockResource_Byte"
	.wrcm.end
	.wrcm.nelem "Os_API_IocEmptyQueue"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Os_IocEmptyQueue"
	.wrcm.end
	.wrcm.nelem "Os_IocEmptyQueue"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "local", 1
	.wrcm.end
	.wrcm.nelem "Os_API_IocReceive"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_IocReceive"
	.wrcm.end
	.wrcm.nelem "Os_IocReceive"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "vstar_copy"
	.wrcm.end
	.wrcm.nelem "Os_API_IocSend"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_IocSend"
	.wrcm.end
	.wrcm.nelem "Os_IocSend"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "vstar_copy"
	.wrcm.end
	.wrcm.nelem "Os_API_IocRead"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_IocRead"
	.wrcm.end
	.wrcm.nelem "Os_IocRead"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
	.wrcm.nstrlist "calls", "vstar_copy"
	.wrcm.end
	.wrcm.nelem "Os_API_IocWrite"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nstrlist "calls", "Os_IocWrite"
	.wrcm.end
	.wrcm.nelem "Os_IocWrite"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_IocStatic.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_IocStatic.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_IocStatic.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Os_IocStatic.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Os_IocStatic.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Os_IocStatic.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\Os\Os\core\ssc\make\..\src\ioc\Os_IocStatic.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
