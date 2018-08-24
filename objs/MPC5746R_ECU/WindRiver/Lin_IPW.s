#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Lin_IPW.c"
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
# FUNC (Std_ReturnType, LIN_CODE) Lin_Ipw_CheckWakeup(CONST(uint8, AUTOMATIC) u8Channel)
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L460:
	.section	.invalid_TEXT,,c
#$$ld
.L456:
	.0byte		.L454
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin_IPW.c"
        .d2line         217,33
#$$ld
.L463:

#$$bf	Lin_Ipw_CheckWakeup,interprocedural,rasave,nostackparams
	.globl		Lin_Ipw_CheckWakeup
	.d2_cfa_start __cie
Lin_Ipw_CheckWakeup:
.Llo1:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     return Lin_Linflex_CheckWakeup(u8Channel);
	.d2line		219
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
.Llo2:
	bl		Lin_Linflex_CheckWakeup
.Llo3:
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
# }
	.d2line		220
	.d2epilogue_begin
.Llo4:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L464:
	.type		Lin_Ipw_CheckWakeup,@function
	.size		Lin_Ipw_CheckWakeup,.-Lin_Ipw_CheckWakeup
# Number of nodes = 6

# Allocations for Lin_Ipw_CheckWakeup
#	?a4		u8Channel
# FUNC (void, LIN_CODE) Lin_Ipw_InitChannel(CONST(uint8, AUTOMATIC) u8Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         232,23
#$$ld
.L474:

#$$bf	Lin_Ipw_InitChannel,interprocedural,rasave,nostackparams
	.globl		Lin_Ipw_InitChannel
	.d2_cfa_start __cie
Lin_Ipw_InitChannel:
.Llo5:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     Lin_Linflex_InitChannel(u8Channel);
	.d2line		234
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
.Llo6:
	bl		Lin_Linflex_InitChannel
# }
	.d2line		235
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L475:
	.type		Lin_Ipw_InitChannel,@function
	.size		Lin_Ipw_InitChannel,.-Lin_Ipw_InitChannel
# Number of nodes = 5

# Allocations for Lin_Ipw_InitChannel
#	?a4		u8Channel
# FUNC(Std_ReturnType, LIN_CODE) Lin_Ipw_SendHeader(CONST(uint8, AUTOMATIC) u8Channel, \
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         255,32
#$$ld
.L480:

#$$bf	Lin_Ipw_SendHeader,interprocedural,rasave,nostackparams
	.globl		Lin_Ipw_SendHeader
	.d2_cfa_start __cie
Lin_Ipw_SendHeader:
.Llo7:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                          P2CONST(Lin_PduType, AUTOMATIC, LIN_APPL_CONST) pcPduInfoPtr)
# {
#     return Lin_Linflex_SendHeader(u8Channel, pcPduInfoPtr);
	.d2line		258
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
.Llo8:
	mr		r0,r4		# pcPduInfoPtr=r0 pcPduInfoPtr=r4
	bl		Lin_Linflex_SendHeader
.Llo9:
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
# }
	.d2line		259
	.d2epilogue_begin
.Llo10:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L481:
	.type		Lin_Ipw_SendHeader,@function
	.size		Lin_Ipw_SendHeader,.-Lin_Ipw_SendHeader
# Number of nodes = 8

# Allocations for Lin_Ipw_SendHeader
#	?a4		u8Channel
#	?a5		pcPduInfoPtr
# FUNC(void, LIN_CODE) Lin_Ipw_SendResponse(CONST(uint8, AUTOMATIC) u8Channel, \
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         275,22
#$$ld
.L491:

#$$bf	Lin_Ipw_SendResponse,interprocedural,rasave,nostackparams
	.globl		Lin_Ipw_SendResponse
	.d2_cfa_start __cie
Lin_Ipw_SendResponse:
.Llo11:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
#                     P2CONST(Lin_PduType, AUTOMATIC, LIN_APPL_CONST) pcPduInfoPtr)
# {
#     Lin_Linflex_SendResponse(u8Channel, pcPduInfoPtr);
	.d2line		278
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
.Llo12:
	mr		r0,r4		# pcPduInfoPtr=r0 pcPduInfoPtr=r4
	bl		Lin_Linflex_SendResponse
# }
	.d2line		279
	.d2epilogue_begin
.Llo13:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L492:
	.type		Lin_Ipw_SendResponse,@function
	.size		Lin_Ipw_SendResponse,.-Lin_Ipw_SendResponse
# Number of nodes = 7

# Allocations for Lin_Ipw_SendResponse
#	?a4		u8Channel
#	?a5		pcPduInfoPtr
# FUNC (Std_ReturnType, LIN_CODE) Lin_Ipw_GoToSleep(CONST(uint8, AUTOMATIC) u8Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         295,33
#$$ld
.L498:

#$$bf	Lin_Ipw_GoToSleep,interprocedural,rasave,nostackparams
	.globl		Lin_Ipw_GoToSleep
	.d2_cfa_start __cie
Lin_Ipw_GoToSleep:
.Llo14:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     return Lin_Linflex_GoToSleep(u8Channel);
	.d2line		297
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
.Llo15:
	bl		Lin_Linflex_GoToSleep
.Llo16:
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
# }
	.d2line		298
	.d2epilogue_begin
.Llo17:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L499:
	.type		Lin_Ipw_GoToSleep,@function
	.size		Lin_Ipw_GoToSleep,.-Lin_Ipw_GoToSleep
# Number of nodes = 6

# Allocations for Lin_Ipw_GoToSleep
#	?a4		u8Channel
# FUNC (Std_ReturnType, LIN_CODE) Lin_Ipw_GoToSleepInternal(CONST(uint8, AUTOMATIC) u8Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         314,33
#$$ld
.L504:

#$$bf	Lin_Ipw_GoToSleepInternal,interprocedural,rasave,nostackparams
	.globl		Lin_Ipw_GoToSleepInternal
	.d2_cfa_start __cie
Lin_Ipw_GoToSleepInternal:
.Llo18:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     return Lin_Linflex_GoToSleepInternal(u8Channel);
	.d2line		316
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
.Llo19:
	bl		Lin_Linflex_GoToSleepInternal
.Llo20:
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
# }
	.d2line		317
	.d2epilogue_begin
.Llo21:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L505:
	.type		Lin_Ipw_GoToSleepInternal,@function
	.size		Lin_Ipw_GoToSleepInternal,.-Lin_Ipw_GoToSleepInternal
# Number of nodes = 6

# Allocations for Lin_Ipw_GoToSleepInternal
#	?a4		u8Channel
# FUNC (Lin_StatusType, LIN_CODE) Lin_Ipw_HardwareGetStatus(CONST(uint8, AUTOMATIC) u8Channel, P2VAR(uint8, AUTOMATIC, LIN_APPL_DATA) pu8LinSduPtr)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         349,33
#$$ld
.L510:

#$$bf	Lin_Ipw_HardwareGetStatus,interprocedural,rasave,nostackparams
	.globl		Lin_Ipw_HardwareGetStatus
	.d2_cfa_start __cie
Lin_Ipw_HardwareGetStatus:
.Llo22:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     return Lin_Linflex_HardwareGetStatus(u8Channel, pu8LinSduPtr);
	.d2line		351
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
.Llo23:
	mr		r0,r4		# pu8LinSduPtr=r0 pu8LinSduPtr=r4
	bl		Lin_Linflex_HardwareGetStatus
.Llo24:
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
# }
	.d2line		352
	.d2epilogue_begin
.Llo25:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L511:
	.type		Lin_Ipw_HardwareGetStatus,@function
	.size		Lin_Ipw_HardwareGetStatus,.-Lin_Ipw_HardwareGetStatus
# Number of nodes = 8

# Allocations for Lin_Ipw_HardwareGetStatus
#	?a4		u8Channel
#	?a5		pu8LinSduPtr
# FUNC (void, LIN_CODE) Lin_Ipw_WakeUp(CONST(uint8, AUTOMATIC) u8Channel)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         364,23
#$$ld
.L519:

#$$bf	Lin_Ipw_WakeUp,interprocedural,rasave,nostackparams
	.globl		Lin_Ipw_WakeUp
	.d2_cfa_start __cie
Lin_Ipw_WakeUp:
.Llo26:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     Lin_Linflex_WakeUp(u8Channel);
	.d2line		366
	rlwinm		r3,r3,0,24,31		# u8Channel=r3 u8Channel=r3
.Llo27:
	bl		Lin_Linflex_WakeUp
# }
	.d2line		367
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L520:
	.type		Lin_Ipw_WakeUp,@function
	.size		Lin_Ipw_WakeUp,.-Lin_Ipw_WakeUp
# Number of nodes = 5

# Allocations for Lin_Ipw_WakeUp
#	?a4		u8Channel

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L523:	.d2filenum "..\\..\\BuildSystem\\..\\TTs\\AUTOSAR\\ar422\\Lin_GeneralTypes.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L457:
.L465:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin_IPW.c"
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
	.uleb128	5
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
	.uleb128	6
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
	.uleb128	7
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
	.uleb128	8
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	10
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin_IPW.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L4
	.4byte		.L5
	.4byte		.L8
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L454:
	.4byte		.L455-.L453
.L453:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L459-.L454
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Lin\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Lin_IPW.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L456
	.4byte		.L457
	.4byte		.L460
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L469:
	.sleb128	2
	.4byte		.L462-.L454
	.byte		"Lin_Ipw_CheckWakeup"
	.byte		0
	.4byte		.L465
	.uleb128	217
	.uleb128	33
	.4byte		.L466
	.byte		0x1
	.byte		0x1
	.4byte		.L463
	.4byte		.L464
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	3
	.4byte		.L465
	.uleb128	217
	.uleb128	33
	.byte		"u8Channel"
	.byte		0
	.4byte		.L470
	.4byte		.L471
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L462:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L476:
	.sleb128	4
	.4byte		.L473-.L454
	.byte		"Lin_Ipw_InitChannel"
	.byte		0
	.4byte		.L465
	.uleb128	232
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L474
	.4byte		.L475
	.sleb128	3
	.4byte		.L465
	.uleb128	232
	.uleb128	23
	.byte		"u8Channel"
	.byte		0
	.4byte		.L470
	.4byte		.L477
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L473:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L482:
	.sleb128	2
	.4byte		.L479-.L454
	.byte		"Lin_Ipw_SendHeader"
	.byte		0
	.4byte		.L465
	.uleb128	255
	.uleb128	32
	.4byte		.L466
	.byte		0x1
	.byte		0x1
	.4byte		.L480
	.4byte		.L481
	.sleb128	3
	.4byte		.L465
	.uleb128	255
	.uleb128	32
	.byte		"u8Channel"
	.byte		0
	.4byte		.L470
	.4byte		.L483
	.sleb128	3
	.4byte		.L465
	.uleb128	255
	.uleb128	32
	.byte		"pcPduInfoPtr"
	.byte		0
	.4byte		.L484
	.4byte		.L488
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L479:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L493:
	.sleb128	4
	.4byte		.L490-.L454
	.byte		"Lin_Ipw_SendResponse"
	.byte		0
	.4byte		.L465
	.uleb128	275
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L491
	.4byte		.L492
	.sleb128	3
	.4byte		.L465
	.uleb128	275
	.uleb128	22
	.byte		"u8Channel"
	.byte		0
	.4byte		.L470
	.4byte		.L494
	.sleb128	3
	.4byte		.L465
	.uleb128	275
	.uleb128	22
	.byte		"pcPduInfoPtr"
	.byte		0
	.4byte		.L484
	.4byte		.L495
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L490:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L500:
	.sleb128	2
	.4byte		.L497-.L454
	.byte		"Lin_Ipw_GoToSleep"
	.byte		0
	.4byte		.L465
	.uleb128	295
	.uleb128	33
	.4byte		.L466
	.byte		0x1
	.byte		0x1
	.4byte		.L498
	.4byte		.L499
	.sleb128	3
	.4byte		.L465
	.uleb128	295
	.uleb128	33
	.byte		"u8Channel"
	.byte		0
	.4byte		.L470
	.4byte		.L501
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L497:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L506:
	.sleb128	2
	.4byte		.L503-.L454
	.byte		"Lin_Ipw_GoToSleepInternal"
	.byte		0
	.4byte		.L465
	.uleb128	314
	.uleb128	33
	.4byte		.L466
	.byte		0x1
	.byte		0x1
	.4byte		.L504
	.4byte		.L505
	.sleb128	3
	.4byte		.L465
	.uleb128	314
	.uleb128	33
	.byte		"u8Channel"
	.byte		0
	.4byte		.L470
	.4byte		.L507
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L503:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L513:
	.sleb128	2
	.4byte		.L509-.L454
	.byte		"Lin_Ipw_HardwareGetStatus"
	.byte		0
	.4byte		.L465
	.uleb128	349
	.uleb128	33
	.4byte		.L512
	.byte		0x1
	.byte		0x1
	.4byte		.L510
	.4byte		.L511
	.sleb128	3
	.4byte		.L465
	.uleb128	349
	.uleb128	33
	.byte		"u8Channel"
	.byte		0
	.4byte		.L470
	.4byte		.L514
	.sleb128	3
	.4byte		.L465
	.uleb128	349
	.uleb128	33
	.byte		"pu8LinSduPtr"
	.byte		0
	.4byte		.L515
	.4byte		.L516
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L509:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L521:
	.sleb128	4
	.4byte		.L518-.L454
	.byte		"Lin_Ipw_WakeUp"
	.byte		0
	.4byte		.L465
	.uleb128	364
	.uleb128	23
	.byte		0x1
	.byte		0x1
	.4byte		.L519
	.4byte		.L520
	.sleb128	3
	.4byte		.L465
	.uleb128	364
	.uleb128	23
	.byte		"u8Channel"
	.byte		0
	.4byte		.L470
	.4byte		.L522
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L518:
	.section	.debug_info,,n
.L487:
	.sleb128	5
	.4byte		.L523
	.uleb128	59
	.uleb128	13
	.4byte		.L524-.L2
	.uleb128	8
	.section	.debug_info,,n
.L432:
	.sleb128	6
	.byte		"Pid"
	.byte		0
	.4byte		.L525
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L433:
	.sleb128	6
	.byte		"Cs"
	.byte		0
	.4byte		.L526
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L434:
	.sleb128	6
	.byte		"Drc"
	.byte		0
	.4byte		.L527
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L435:
	.sleb128	6
	.byte		"Dl"
	.byte		0
	.4byte		.L528
	.sleb128	2
	.byte		0x23
	.uleb128	3
	.byte		0x1
.L436:
	.sleb128	6
	.byte		"SduPtr"
	.byte		0
	.4byte		.L515
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L524:
	.section	.debug_info,,n
.L468:
	.sleb128	7
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
	.section	.debug_info,,n
.L467:
	.sleb128	8
	.byte		"uint8"
	.byte		0
	.4byte		.L468
.L466:
	.sleb128	8
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L467
	.section	.debug_info,,n
.L470:
	.sleb128	9
	.4byte		.L467
.L486:
	.sleb128	8
	.byte		"Lin_PduType"
	.byte		0
	.4byte		.L487
.L485:
	.sleb128	9
	.4byte		.L486
	.section	.debug_info,,n
.L484:
	.sleb128	10
	.4byte		.L485
.L512:
	.sleb128	8
	.byte		"Lin_StatusType"
	.byte		0
	.4byte		.L467
.L515:
	.sleb128	10
	.4byte		.L467
.L525:
	.sleb128	8
	.byte		"Lin_FramePidType"
	.byte		0
	.4byte		.L467
.L526:
	.sleb128	8
	.byte		"Lin_FrameCsModelType"
	.byte		0
	.4byte		.L467
.L527:
	.sleb128	8
	.byte		"Lin_FrameResponseType"
	.byte		0
	.4byte		.L467
.L528:
	.sleb128	8
	.byte		"Lin_FrameDlType"
	.byte		0
	.4byte		.L467
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L459:
	.sleb128	0
.L455:

	.section	.debug_loc,,n
	.align	0
.L471:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L477:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),3
	.d2locend
.L483:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),3
	.d2locend
.L488:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo9),4
	.d2locend
.L494:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locend
.L495:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo13),4
	.d2locend
.L501:
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),3
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),3
	.d2locend
.L507:
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo19),3
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo21),3
	.d2locend
.L514:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),3
	.d2locend
.L516:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo24),4
	.d2locend
.L522:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Lin_Ipw_WakeUp"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Lin_Linflex_WakeUp"
	.wrcm.end
	.wrcm.nelem "Lin_Ipw_HardwareGetStatus"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Lin_Linflex_HardwareGetStatus"
	.wrcm.end
	.wrcm.nelem "Lin_Ipw_GoToSleepInternal"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Lin_Linflex_GoToSleepInternal"
	.wrcm.end
	.wrcm.nelem "Lin_Ipw_GoToSleep"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Lin_Linflex_GoToSleep"
	.wrcm.end
	.wrcm.nelem "Lin_Ipw_SendResponse"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Lin_Linflex_SendResponse"
	.wrcm.end
	.wrcm.nelem "Lin_Ipw_SendHeader"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Lin_Linflex_SendHeader"
	.wrcm.end
	.wrcm.nelem "Lin_Ipw_InitChannel"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Lin_Linflex_InitChannel"
	.wrcm.end
	.wrcm.nelem "Lin_Ipw_CheckWakeup"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nstrlist "calls", "Lin_Linflex_CheckWakeup"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Lin_IPW.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Lin_IPW.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Lin_IPW.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Lin_IPW.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Lin_IPW.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Lin_IPW.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Lin\ssc\make\..\..\generator\integration_package\src\Lin_IPW.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
