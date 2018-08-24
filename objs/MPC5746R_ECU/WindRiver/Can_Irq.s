#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Can_Irq.c"
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
#     CAN_ERRISR(B)
	.section	.invalid_TEXT,,c
	.align		2
	.section	.debug_line.invalid_TEXT,,n
	.sectionlink	.debug_line
.L651:
	.section	.invalid_TEXT,,c
#$$ld
.L647:
	.0byte		.L645
	.d2_line_start	.debug_line.invalid_TEXT
	.section	.invalid_TEXT,,c
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Can_Irq.c"
        .d2line         781,5
#$$ld
.L654:

#$$bf	OS_ISR_Can_IsrFCB_ERR,interprocedural,rasave,nostackparams
	.globl		OS_ISR_Can_IsrFCB_ERR
	.d2_cfa_start __cie
OS_ISR_Can_IsrFCB_ERR:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo1:
	stw		r0,20(r1)		# can_status=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
	.d2line		781
	diab.li		r0,0		# can_status=r0
.Llo2:
	lis		r3,(Can_ControllerStatuses+224)@ha
	lwz		r0,(Can_ControllerStatuses+224)@l(r3)		# can_status=r0
.Llo3:
	se_cmpi		r0,1		# can_status=r0
	bc		1,2,.L629	# eq
.Llo4:
	diab.li		r0,2		# can_status=r0
.Llo5:
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	lis		r3,CanStatic_pCurrentConfig@ha
	lwz		r3,CanStatic_pCurrentConfig@l(r3)
	lwz		r3,4(r3)
	lbz		r3,0(r3)
	rlwinm		r3,r3,2,22,29
	lwzx		r3,r4,r3
	stw		r0,32(r3)		# can_status=r0
	b		.L628
.L629:
.Llo6:
	lis		r4,(Can_u32BaseAddress+4)@ha
	lwz		r3,(Can_u32BaseAddress+4)@l(r4)		# can_status=r3
.Llo7:
	lwz		r0,4(r3)		# can_status=r0 can_status=r3
	rlwinm		r0,r0,0,17,17		# can_status=r0 can_status=r0
	mr		r0,r0		# can_status=r0 can_status=r0
	se_srwi		r0,13		# can_status=r0 can_status=r0
	mr		r0,r0		# can_status=r0 can_status=r0
	lwz		r3,32(r3)		# can_status=r3 can_status=r3
.Llo8:
	and		r0,r0,r3		# can_status=r0 can_status=r0 can_status=r3
.Llo9:
	rlwinm		r0,r0,0,30,30		# can_status=r0 can_status=r0
	mr.		r0,r0		# can_status=?a4 can_status=?a8
.Llo10:
	bc		1,2,.L631	# eq
	lis		r3,CanStatic_pCurrentConfig@ha		# can_status=r3
.Llo11:
	lwz		r3,CanStatic_pCurrentConfig@l(r3)		# can_status=r3 can_status=r3
	lwz		r3,4(r3)		# can_status=r3 can_status=r3
	lwz		r0,8(r3)		# can_status=r0 can_status=r3
	se_cmpi		r0,0		# can_status=r0
	bc		1,2,.L631	# eq
.Llo12:
	lis		r3,CanStatic_pCurrentConfig@ha		# can_status=r3
.Llo13:
	lwz		r3,CanStatic_pCurrentConfig@l(r3)		# can_status=r3 can_status=r3
	lwz		r3,4(r3)		# can_status=r3 can_status=r3
	lwz		r0,8(r3)		# can_status=r0 can_status=r3
	mtspr		ctr,r0		# can_status=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L631:
.Llo14:
	diab.li		r0,2		# can_status=r0
.Llo15:
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	lis		r3,CanStatic_pCurrentConfig@ha		# can_status=r3
	lwz		r3,CanStatic_pCurrentConfig@l(r3)		# can_status=r3 can_status=r3
	lwz		r3,4(r3)		# can_status=r3 can_status=r3
	lbz		r3,0(r3)		# can_status=r3 can_status=r3
	rlwinm		r3,r3,2,22,29		# can_status=r3 can_status=r3
	lwzx		r3,r4,r3		# can_status=r3
	stw		r0,32(r3)		# can_status=r3 can_status=r0
.L628:
	.d2line		781
	.d2epilogue_begin
.Llo16:
	lwz		r0,20(r1)		# can_status=r0
	mtspr		lr,r0		# can_status=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L655:
	.type		OS_ISR_Can_IsrFCB_ERR,@function
	.size		OS_ISR_Can_IsrFCB_ERR,.-OS_ISR_Can_IsrFCB_ERR
# Number of nodes = 95

# Allocations for OS_ISR_Can_IsrFCB_ERR
#	?a4		can_status
#     CAN_ERRISR(D)
	.align		2
	.section	.invalid_TEXT,,c
        .d2line         1254,5
#$$ld
.L664:

#$$bf	OS_ISR_Can_IsrFCD_ERR,interprocedural,rasave,nostackparams
	.globl		OS_ISR_Can_IsrFCD_ERR
	.d2_cfa_start __cie
OS_ISR_Can_IsrFCD_ERR:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
.Llo17:
	stw		r0,20(r1)		# can_status=r0
	.d2_cfa_offset    108,-1
	.d2prologue_end
	.d2line		1254
	diab.li		r0,0		# can_status=r0
.Llo18:
	lis		r3,(Can_ControllerStatuses+456)@ha
	lwz		r0,(Can_ControllerStatuses+456)@l(r3)		# can_status=r0
.Llo19:
	se_cmpi		r0,1		# can_status=r0
	bc		1,2,.L637	# eq
.Llo20:
	diab.li		r0,2		# can_status=r0
.Llo21:
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	lis		r3,CanStatic_pCurrentConfig@ha
	lwz		r3,CanStatic_pCurrentConfig@l(r3)
	lwz		r3,4(r3)
	lbz		r3,20(r3)
	rlwinm		r3,r3,2,22,29
	lwzx		r3,r4,r3
	stw		r0,32(r3)		# can_status=r0
	b		.L636
.L637:
.Llo22:
	lis		r4,(Can_u32BaseAddress+12)@ha
	lwz		r3,(Can_u32BaseAddress+12)@l(r4)		# can_status=r3
.Llo23:
	lwz		r0,4(r3)		# can_status=r0 can_status=r3
	rlwinm		r0,r0,0,17,17		# can_status=r0 can_status=r0
	mr		r0,r0		# can_status=r0 can_status=r0
	se_srwi		r0,13		# can_status=r0 can_status=r0
	mr		r0,r0		# can_status=r0 can_status=r0
	lwz		r3,32(r3)		# can_status=r3 can_status=r3
.Llo24:
	and		r0,r0,r3		# can_status=r0 can_status=r0 can_status=r3
.Llo25:
	rlwinm		r0,r0,0,30,30		# can_status=r0 can_status=r0
	mr.		r0,r0		# can_status=?a4 can_status=?a8
.Llo26:
	bc		1,2,.L639	# eq
	lis		r3,CanStatic_pCurrentConfig@ha		# can_status=r3
.Llo27:
	lwz		r3,CanStatic_pCurrentConfig@l(r3)		# can_status=r3 can_status=r3
	lwz		r3,4(r3)		# can_status=r3 can_status=r3
	lwz		r0,28(r3)		# can_status=r0 can_status=r3
	se_cmpi		r0,0		# can_status=r0
	bc		1,2,.L639	# eq
.Llo28:
	lis		r3,CanStatic_pCurrentConfig@ha		# can_status=r3
.Llo29:
	lwz		r3,CanStatic_pCurrentConfig@l(r3)		# can_status=r3 can_status=r3
	lwz		r3,4(r3)		# can_status=r3 can_status=r3
	lwz		r0,28(r3)		# can_status=r0 can_status=r3
	mtspr		ctr,r0		# can_status=ctr
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
.L639:
.Llo30:
	diab.li		r0,2		# can_status=r0
.Llo31:
	lis		r4,Can_u32BaseAddress@ha
	e_add16i		r4,r4,Can_u32BaseAddress@l
	lis		r3,CanStatic_pCurrentConfig@ha		# can_status=r3
	lwz		r3,CanStatic_pCurrentConfig@l(r3)		# can_status=r3 can_status=r3
	lwz		r3,4(r3)		# can_status=r3 can_status=r3
	lbz		r3,20(r3)		# can_status=r3 can_status=r3
	rlwinm		r3,r3,2,22,29		# can_status=r3 can_status=r3
	lwzx		r3,r4,r3		# can_status=r3
	stw		r0,32(r3)		# can_status=r3 can_status=r0
.L636:
	.d2line		1254
	.d2epilogue_begin
.Llo32:
	lwz		r0,20(r1)		# can_status=r0
	mtspr		lr,r0		# can_status=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.invalid_TEXT,,c
#$$ld
.L665:
	.type		OS_ISR_Can_IsrFCD_ERR,@function
	.size		OS_ISR_Can_IsrFCD_ERR,.-OS_ISR_Can_IsrFCD_ERR
# Number of nodes = 99

# Allocations for OS_ISR_Can_IsrFCD_ERR
#	?a4		can_status

# Allocations for module
	.section	.mcal_bss,,b
	.0byte		.L669
	.section	.text_vle
	.0byte		.L675
	.section	.mcal_bss,,b
	.0byte		.L680
	.section	.text_vle
#$$ld
.L5:
.L681:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Can_Flexcan.h"
.L676:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Reg_eSys_Flexcan.h"
.L670:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\include\\Can.h"
	.d2_line_end
	.section	.invalid_TEXT,,c
#$$ld
.L648:
.L656:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Can_Irq.c"
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
	.uleb128	8
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	9
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
	.uleb128	10
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	11
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
	.uleb128	15
	.byte		0x0
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
	.uleb128	53
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Can_Irq.c"
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
.L645:
	.4byte		.L646-.L644
.L644:
	.2byte		0x2
	.4byte		.L9
	.byte		0x4
	.sleb128	1
	.4byte		.L650-.L645
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MCAL\\MPC5746R\\Can\\ssc\\make\\..\\..\\generator\\integration_package\\src\\Can_Irq.c"
	.byte		0
	.byte		"Diab Data, Inc:dcc Rel 5.9.6.4:PPCE200Z4204N3V"
	.byte		0
	.byte		"D:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\Application\\MetaWares"
	.byte		0
	.uleb128	12
	.4byte		.L647
	.4byte		.L648
	.4byte		.L651
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L657:
	.sleb128	2
	.4byte		.L653-.L645
	.byte		"OS_ISR_Can_IsrFCB_ERR"
	.byte		0
	.4byte		.L656
	.uleb128	781
	.uleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L654
	.4byte		.L655
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L658:
	.sleb128	3
	.4byte		.L656
	.uleb128	781
	.uleb128	5
	.byte		"can_status"
	.byte		0
	.4byte		.L659
	.4byte		.L661
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L653:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L666:
	.sleb128	2
	.4byte		.L663-.L645
	.byte		"OS_ISR_Can_IsrFCD_ERR"
	.byte		0
	.4byte		.L656
	.uleb128	1254
	.uleb128	5
	.byte		0x1
	.byte		0x1
	.4byte		.L664
	.4byte		.L665
.L667:
	.sleb128	3
	.4byte		.L656
	.uleb128	1254
	.uleb128	5
	.byte		"can_status"
	.byte		0
	.4byte		.L659
	.4byte		.L668
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
	.sleb128	0
.L663:
	.section	.debug_info,,n
.L669:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L670
	.uleb128	818
	.uleb128	63
	.byte		"CanStatic_pCurrentConfig"
	.byte		0
	.4byte		.L671
	.section	.debug_info,,n
.L675:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L676
	.uleb128	1143
	.uleb128	33
	.byte		"Can_u32BaseAddress"
	.byte		0
	.4byte		.L677
	.section	.debug_info,,n
.L680:
	.sleb128	4
	.byte		0x1
	.byte		0x1
	.4byte		.L681
	.uleb128	284
	.uleb128	47
	.byte		"Can_ControllerStatuses"
	.byte		0
	.4byte		.L682
	.section	.debug_info,,n
	.section	.debug_info,,n
.L685:
	.sleb128	5
	.4byte		.L681
	.uleb128	174
	.uleb128	5
	.4byte		.L686-.L2
	.uleb128	232
	.section	.debug_info,,n
.L617:
	.sleb128	6
	.byte		"u32TxGuard"
	.byte		0
	.4byte		.L687
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L618:
	.sleb128	6
	.byte		"u32MBInterruptMask"
	.byte		0
	.4byte		.L689
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L619:
	.sleb128	6
	.byte		"u32TxPduId"
	.byte		0
	.4byte		.L691
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L620:
	.sleb128	6
	.byte		"s8IntDisableLevel"
	.byte		0
	.4byte		.L696
	.sleb128	3
	.byte		0x23
	.uleb128	216
	.byte		0x1
.L621:
	.sleb128	6
	.byte		"u32CancelMBIndex"
	.byte		0
	.4byte		.L699
	.sleb128	3
	.byte		0x23
	.uleb128	217
	.byte		0x1
.L622:
	.sleb128	6
	.byte		"u8FirstTxMBIndex"
	.byte		0
	.4byte		.L703
	.sleb128	3
	.byte		0x23
	.uleb128	218
	.byte		0x1
.L623:
	.sleb128	6
	.byte		"eInterruptMode"
	.byte		0
	.4byte		.L704
	.sleb128	3
	.byte		0x23
	.uleb128	220
	.byte		0x1
.L624:
	.sleb128	6
	.byte		"ControllerState"
	.byte		0
	.4byte		.L706
	.sleb128	3
	.byte		0x23
	.uleb128	224
	.byte		0x1
.L625:
	.sleb128	6
	.byte		"u8CurrentBaudRateIndex"
	.byte		0
	.4byte		.L701
	.sleb128	3
	.byte		0x23
	.uleb128	228
	.byte		0x1
	.sleb128	0
.L686:
.L674:
	.sleb128	5
	.4byte		.L670
	.uleb128	288
	.uleb128	5
	.4byte		.L708-.L2
	.uleb128	8
.L339:
	.sleb128	6
	.byte		"u8ControllersConfigured"
	.byte		0
	.4byte		.L701
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L340:
	.sleb128	6
	.byte		"StaticControlerDescriptors"
	.byte		0
	.4byte		.L709
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L708:
.L712:
	.sleb128	5
	.4byte		.L670
	.uleb128	288
	.uleb128	5
	.4byte		.L713-.L2
	.uleb128	20
.L334:
	.sleb128	6
	.byte		"u8ControllerOffset"
	.byte		0
	.4byte		.L714
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L335:
	.sleb128	6
	.byte		"pStaticControllerBaudrateConfigsPtr"
	.byte		0
	.4byte		.L715
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L336:
	.sleb128	6
	.byte		"Can_ErrorNotification"
	.byte		0
	.4byte		.L720
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L337:
	.sleb128	6
	.byte		"u8NumberOfMB"
	.byte		0
	.4byte		.L714
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L338:
	.sleb128	6
	.byte		"u32Options"
	.byte		0
	.4byte		.L679
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L713:
.L719:
	.sleb128	5
	.4byte		.L670
	.uleb128	288
	.uleb128	5
	.4byte		.L725-.L2
	.uleb128	4
.L315:
	.sleb128	6
	.byte		"u32ControlRegister"
	.byte		0
	.4byte		.L679
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L725:
	.section	.debug_info,,n
.L705:
	.sleb128	7
	.4byte		.L681
	.uleb128	174
	.uleb128	5
	.4byte		.L726-.L2
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	8
	.byte		"CAN_INTERRUPT_DISABLED"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"CAN_INTERRUPT_ENABLED"
	.byte		0
	.sleb128	1
	.sleb128	0
.L726:
.L707:
	.sleb128	7
	.4byte		.L670
	.uleb128	264
	.uleb128	5
	.4byte		.L727-.L2
	.uleb128	4
	.sleb128	8
	.byte		"CAN_STOPPED"
	.byte		0
	.sleb128	0
	.sleb128	8
	.byte		"CAN_STARTED"
	.byte		0
	.sleb128	1
	.sleb128	8
	.byte		"CAN_SLEEPED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L727:
	.section	.debug_info,,n
.L660:
	.sleb128	9
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
	.section	.debug_info,,n
.L659:
	.sleb128	10
	.byte		"uint32"
	.byte		0
	.4byte		.L660
.L673:
	.sleb128	10
	.byte		"CanStatic_ConfigType"
	.byte		0
	.4byte		.L674
	.section	.debug_info,,n
.L672:
	.sleb128	11
	.4byte		.L673
	.section	.debug_info,,n
.L671:
	.sleb128	12
	.4byte		.L672
.L679:
	.sleb128	11
	.4byte		.L659
	.section	.debug_info,,n
.L677:
	.sleb128	13
	.4byte		.L678-.L2
	.4byte		.L679
	.section	.debug_info,,n
	.sleb128	14
	.uleb128	3
	.sleb128	0
.L678:
.L684:
	.sleb128	10
	.byte		"Can_ControllerStatusType"
	.byte		0
	.4byte		.L685
.L682:
	.sleb128	13
	.4byte		.L683-.L2
	.4byte		.L684
	.sleb128	14
	.uleb128	1
	.sleb128	0
.L683:
.L687:
	.sleb128	13
	.4byte		.L688-.L2
	.4byte		.L659
	.sleb128	14
	.uleb128	2
	.sleb128	0
.L688:
.L689:
	.sleb128	13
	.4byte		.L690-.L2
	.4byte		.L659
	.sleb128	14
	.uleb128	2
	.sleb128	0
.L690:
.L695:
	.sleb128	9
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L694:
	.sleb128	10
	.byte		"uint16"
	.byte		0
	.4byte		.L695
.L693:
	.sleb128	10
	.byte		"PduIdType"
	.byte		0
	.4byte		.L694
.L691:
	.sleb128	13
	.4byte		.L692-.L2
	.4byte		.L693
	.sleb128	14
	.uleb128	95
	.sleb128	0
.L692:
.L698:
	.sleb128	9
	.byte		"signed char"
	.byte		0
	.byte		0x6
	.byte		0x1
.L697:
	.sleb128	10
	.byte		"sint8"
	.byte		0
	.4byte		.L698
	.section	.debug_info,,n
.L696:
	.sleb128	15
	.4byte		.L697
.L702:
	.sleb128	9
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L701:
	.sleb128	10
	.byte		"uint8"
	.byte		0
	.4byte		.L702
.L700:
	.sleb128	10
	.byte		"Can_HwHandleType"
	.byte		0
	.4byte		.L701
.L699:
	.sleb128	15
	.4byte		.L700
.L703:
	.sleb128	15
	.4byte		.L701
.L704:
	.sleb128	10
	.byte		"Can_InterruptStateType"
	.byte		0
	.4byte		.L705
.L706:
	.sleb128	10
	.byte		"Can_ControllerStateType"
	.byte		0
	.4byte		.L707
.L711:
	.sleb128	10
	.byte		"CanStatic_ControlerDescriptorType"
	.byte		0
	.4byte		.L712
.L710:
	.sleb128	11
	.4byte		.L711
.L709:
	.sleb128	12
	.4byte		.L710
.L714:
	.sleb128	11
	.4byte		.L701
.L718:
	.sleb128	10
	.byte		"CanStatic_ControllerBaudrateConfigType"
	.byte		0
	.4byte		.L719
.L717:
	.sleb128	11
	.4byte		.L718
.L716:
	.sleb128	12
	.4byte		.L717
.L715:
	.sleb128	11
	.4byte		.L716
	.section	.debug_info,,n
.L723:
	.sleb128	16
	.4byte		.L724-.L2
	.byte		0x1
	.sleb128	0
.L724:
.L722:
	.sleb128	12
	.4byte		.L723
.L721:
	.sleb128	10
	.byte		"Can_PCallBackType"
	.byte		0
	.4byte		.L722
.L720:
	.sleb128	11
	.4byte		.L721
.L7:
	.sleb128	0
.L3:
	.section	.debug_info.invalid_TEXT,,n
	.sectionlink	.debug_info
.L650:
	.sleb128	0
.L646:

	.section	.debug_loc,,n
	.align	0
.L661:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),0
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo8),3
	.d2locreg	%offsetof(.Llo9), %offsetof(.Llo10),0
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),3
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locend
.L668:
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),0
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),0
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),0
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),3
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),3
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "OS_ISR_Can_IsrFCD_ERR"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.end
	.wrcm.nelem "OS_ISR_Can_IsrFCB_ERR"
	.wrcm.nint32 "frameSize", 16
	.wrcm.nint32 "indirectCalls", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Can_Irq.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Can_Irq.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Can_Irq.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Can_Irq.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Can_Irq.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Can_Irq.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MCAL\MPC5746R\Can\ssc\make\..\..\generator\integration_package\src\Can_Irq.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
