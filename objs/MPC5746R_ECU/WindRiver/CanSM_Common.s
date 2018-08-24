#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"CanSM_Common.c"
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
# FUNC(P2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST), CANSM_CODE) CanSM_FindNetwork(
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_Common.c"
        .d2line         63,73
#$$ld
.L746:

#$$bf	CanSM_FindNetwork,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,cr0,lr
	.globl		CanSM_FindNetwork
	.d2_cfa_start __cie
CanSM_FindNetwork:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# networkHandle=r0 networkHandle=r3
	.d2prologue_end
#         CONST(NetworkHandleType,AUTOMATIC) networkHandle)
# {
#     P2CONST(CanSM_NetworkType, AUTOMATIC,CANSM_APPL_CONST )networks;
#     VAR(uint8, AUTOMATIC)networks_Size;
#     VAR(uint8, AUTOMATIC)CanSM_NetworkTypeiter;
#     P2CONST(CanSM_NetworkType, AUTOMATIC, CANSM_APPL_CONST) retval;
# 
#     retval = NULL_PTR;
	.d2line		71
	diab.li		r4,0		# retval=r4
#     networks = CanSM_Cfg_p->NetworkType_R14;
	.d2line		72
.Llo11:
	lis		r3,CanSM_Cfg_p@ha
.Llo2:
	lwz		r5,CanSM_Cfg_p@l(r3)
	lwz		r6,16(r5)
.Llo7:
	mr		r6,r6		# networks=r6 networks=r6
#     networks_Size = CanSM_Cfg_p->NetworkType_R14_Size;
	.d2line		73
	lwz		r3,CanSM_Cfg_p@l(r3)
	lbz		r7,0(r3)
.Llo8:
	mr		r7,r7		# networks_Size=r7 networks_Size=r7
#     for(CanSM_NetworkTypeiter = 0; CanSM_NetworkTypeiter < networks_Size; CanSM_NetworkTypeiter++)
	.d2line		74
	diab.li		r3,0
.L576:
.Llo3:
	rlwinm		r5,r3,0,24,31		# CanSM_NetworkTypeiter=r3
	rlwinm		r31,r7,0,24,31		# networks_Size=r7
	se_cmp		r5,r31
	bc		0,0,.L580	# ge
#     {
#         if(networkHandle == networks[CanSM_NetworkTypeiter].CanSMNetworkHandle)
	.d2line		76
	rlwinm		r5,r3,0,24,31		# CanSM_NetworkTypeiter=r3
	rlwinm		r31,r0,0,24,31		# networkHandle=r0
	rlwinm		r30,r5,5,0,26
	se_slwi		r5,3
	subf		r5,r5,r30
	se_add		r5,r6		# networks=r6
	lbz		r5,5(r5)
	se_cmp		r31,r5
	bc		0,2,.L579	# ne
#         {
#             retval = &networks[CanSM_NetworkTypeiter];
	.d2line		78
.Llo4:
	rlwinm		r3,r3,0,24,31		# CanSM_NetworkTypeiter=r3 CanSM_NetworkTypeiter=r3
	rlwinm		r0,r3,5,0,26		# networkHandle=r0 CanSM_NetworkTypeiter=r3
.Llo5:
	se_slwi		r3,3		# CanSM_NetworkTypeiter=r3 CanSM_NetworkTypeiter=r3
	subf		r3,r3,r0		# CanSM_NetworkTypeiter=r3 CanSM_NetworkTypeiter=r3 networkHandle=r0
	se_add		r3,r6		# CanSM_NetworkTypeiter=r3 CanSM_NetworkTypeiter=r3 networks=r6
.Llo9:
	mr		r4,r3		# retval=r4 retval=r3
	b		.L580
.L579:
#             break;
#         }
#     }
	.d2line		81
.Llo10:
	diab.addi		r5,r3,1		# CanSM_NetworkTypeiter=r3
	se_addi		r3,1		# CanSM_NetworkTypeiter=r3 CanSM_NetworkTypeiter=r3
	b		.L576
.L580:
#     return retval;
	.d2line		82
.Llo6:
	mr		r3,r4		# retval=r3 retval=r4
# }
	.d2line		83
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# networkHandle=r0
	mtspr		lr,r0		# networkHandle=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo12:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L747:
	.type		CanSM_FindNetwork,@function
	.size		CanSM_FindNetwork,.-CanSM_FindNetwork
# Number of nodes = 48

# Allocations for CanSM_FindNetwork
#	?a4		networkHandle
#	?a5		$$162
#	?a6		$$161
#	?a7		networks
#	?a8		networks_Size
#	?a9		CanSM_NetworkTypeiter
#	?a10		retval
# FUNC(P2CONST(CanSM_NetworkType,AUTOMATIC,CANSM_APPL_CONST), CANSM_CODE) CanSM_FindNetworkByTransceiver(
	.align		2
	.section	.text_vle
        .d2line         95,73
#$$ld
.L769:

#$$bf	CanSM_FindNetworkByTransceiver,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r30,r31,cr0,lr
	.globl		CanSM_FindNetworkByTransceiver
	.d2_cfa_start __cie
CanSM_FindNetworkByTransceiver:
.Llo13:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r0,r3		# TransceiverId=r0 TransceiverId=r3
	.d2prologue_end
#         CONST(uint8,AUTOMATIC) TransceiverId)
# {
#     P2CONST(CanSM_NetworkType, AUTOMATIC,CANSM_APPL_CONST)networks;
#     VAR(uint8, AUTOMATIC)networks_Size;
#     VAR(uint8, AUTOMATIC)CanSM_NetworkTypeiter;
#     P2CONST(CanSM_NetworkType, AUTOMATIC, CANSM_APPL_CONST) retval;
# 
#     retval = NULL_PTR;
	.d2line		103
	diab.li		r4,0		# retval=r4
#     networks = CanSM_Cfg_p->NetworkType_R14;
	.d2line		104
.Llo23:
	lis		r3,CanSM_Cfg_p@ha
.Llo14:
	lwz		r5,CanSM_Cfg_p@l(r3)
	lwz		r6,16(r5)
.Llo19:
	mr		r6,r6		# networks=r6 networks=r6
#     networks_Size = CanSM_Cfg_p->NetworkType_R14_Size;
	.d2line		105
	lwz		r3,CanSM_Cfg_p@l(r3)
	lbz		r7,0(r3)
.Llo20:
	mr		r7,r7		# networks_Size=r7 networks_Size=r7
#     for(CanSM_NetworkTypeiter = 0; CanSM_NetworkTypeiter < networks_Size; CanSM_NetworkTypeiter++)
	.d2line		106
	diab.li		r3,0
.L585:
.Llo15:
	rlwinm		r5,r3,0,24,31		# CanSM_NetworkTypeiter=r3
	rlwinm		r31,r7,0,24,31		# networks_Size=r7
	se_cmp		r5,r31
	bc		0,0,.L589	# ge
#     {
#         if(TransceiverId == networks[CanSM_NetworkTypeiter].CanSMTransceiverId_u8)
	.d2line		108
	rlwinm		r5,r3,0,24,31		# CanSM_NetworkTypeiter=r3
	rlwinm		r31,r0,0,24,31		# TransceiverId=r0
	rlwinm		r30,r5,5,0,26
	se_slwi		r5,3
	subf		r5,r5,r30
	se_add		r5,r6		# networks=r6
	lbz		r5,6(r5)
	se_cmp		r31,r5
	bc		0,2,.L588	# ne
#         {
#             retval = &networks[CanSM_NetworkTypeiter];
	.d2line		110
.Llo16:
	rlwinm		r3,r3,0,24,31		# CanSM_NetworkTypeiter=r3 CanSM_NetworkTypeiter=r3
	rlwinm		r0,r3,5,0,26		# TransceiverId=r0 CanSM_NetworkTypeiter=r3
.Llo17:
	se_slwi		r3,3		# CanSM_NetworkTypeiter=r3 CanSM_NetworkTypeiter=r3
	subf		r3,r3,r0		# CanSM_NetworkTypeiter=r3 CanSM_NetworkTypeiter=r3 TransceiverId=r0
	se_add		r3,r6		# CanSM_NetworkTypeiter=r3 CanSM_NetworkTypeiter=r3 networks=r6
.Llo21:
	mr		r4,r3		# retval=r4 retval=r3
	b		.L589
.L588:
#             break;
#         }
#     }
	.d2line		113
.Llo22:
	diab.addi		r5,r3,1		# CanSM_NetworkTypeiter=r3
	se_addi		r3,1		# CanSM_NetworkTypeiter=r3 CanSM_NetworkTypeiter=r3
	b		.L585
.L589:
#     return retval;
	.d2line		114
.Llo18:
	mr		r3,r4		# retval=r3 retval=r4
# }
	.d2line		115
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# TransceiverId=r0
	mtspr		lr,r0		# TransceiverId=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo24:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L770:
	.type		CanSM_FindNetworkByTransceiver,@function
	.size		CanSM_FindNetworkByTransceiver,.-CanSM_FindNetworkByTransceiver
# Number of nodes = 48

# Allocations for CanSM_FindNetworkByTransceiver
#	?a4		TransceiverId
#	?a5		$$164
#	?a6		$$163
#	?a7		networks
#	?a8		networks_Size
#	?a9		CanSM_NetworkTypeiter
#	?a10		retval
# FUNC(P2CONST(CanSM_NetworkType, AUTOMATIC, CANSM_APPL_CONST), CANSM_CODE) CanSM_FindNetworkByController(
	.align		2
	.section	.text_vle
        .d2line         129,75
#$$ld
.L784:

#$$bf	CanSM_FindNetworkByController,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r25,r26,r27,r28,r29,r30,r31,cr0,lr
	.globl		CanSM_FindNetworkByController
	.d2_cfa_start __cie
CanSM_FindNetworkByController:
.Llo25:
	stwu		r1,-48(r1)		
	.d2_cfa_def_cfa_offset	48
	mfspr		r0,lr
	stmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_offset_list	25,31,1,1
	stw		r0,52(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# ControllerId=r3 ControllerId=r3
	mr		r4,r4		# controller=r4 controller=r4
	.d2prologue_end
#         CONST(uint8, AUTOMATIC) ControllerId,
#         CONSTP2VAR(P2CONST(CanSM_ControllerType, AUTOMATIC, CANSM_APPL_CONST), AUTOMATIC, CANSM_APPL_DATA) controller)
# {
#     P2CONST(CanSM_NetworkType, AUTOMATIC,CANSM_APPL_CONST)networks;
#     VAR(uint8, AUTOMATIC)networks_Size;
#     VAR(uint8, AUTOMATIC)CanSM_NetworkTypeiter;
#     VAR(uint8, AUTOMATIC)CanSM_ControllerTypeiter;
#     VAR(uint8, AUTOMATIC)controllers_Size;
#     P2CONST(CanSM_NetworkType, AUTOMATIC,CANSM_APPL_CONST) retval;
# 
#     retval = NULL_PTR;
	.d2line		140
	diab.li		r7,0		# retval=r7
#     networks = CanSM_Cfg_p->NetworkType_R14;
	.d2line		141
.Llo35:
	lis		r5,CanSM_Cfg_p@ha
	lwz		r6,CanSM_Cfg_p@l(r5)
	lwz		r0,16(r6)
.Llo27:
	mr		r0,r0		# networks=r0 networks=r0
#     networks_Size = CanSM_Cfg_p->NetworkType_R14_Size;
	.d2line		142
	lwz		r5,CanSM_Cfg_p@l(r5)
	lbz		r29,0(r5)
.Llo28:
	mr		r29,r29		# networks_Size=r29 networks_Size=r29
#     for(CanSM_NetworkTypeiter = 0; CanSM_NetworkTypeiter < networks_Size; CanSM_NetworkTypeiter++)
	.d2line		143
	diab.li		r5,0
.L594:
.Llo29:
	rlwinm		r6,r5,0,24,31		# CanSM_ControllerTypeiter=r6 CanSM_NetworkTypeiter=r5
.Llo30:
	rlwinm		r31,r29,0,24,31		# net=r31 networks_Size=r29
.Llo40:
	se_cmp		r6,r31		# CanSM_ControllerTypeiter=r6 net=r31
	bc		0,0,.L596	# ge
	.section	.text_vle
.L807:
#     {
#         P2CONST(CanSM_NetworkType, AUTOMATIC,CANSM_APPL_CONST) net = &networks[CanSM_NetworkTypeiter];
	.d2line		145
.Llo31:
	rlwinm		r6,r5,0,24,31		# CanSM_ControllerTypeiter=r6 CanSM_NetworkTypeiter=r5
.Llo32:
	rlwinm		r31,r6,5,0,26		# net=r31 CanSM_ControllerTypeiter=r6
.Llo41:
	se_slwi		r6,3		# CanSM_ControllerTypeiter=r6 CanSM_ControllerTypeiter=r6
	subf		r6,r6,r31		# CanSM_ControllerTypeiter=r6 CanSM_ControllerTypeiter=r6 net=r31
	add		r31,r6,r0		# net=r31 CanSM_ControllerTypeiter=r6 networks=r0
	mr		r31,r31		# net=r31 net=r31
#         P2CONST(CanSM_ControllerType, AUTOMATIC, CANSM_APPL_CONST)controllers = net->ControllerType_R16;
	.d2line		146
	lwz		r25,20(r31)		# controllers=r25 net=r31
.Llo42:
	mr		r25,r25		# controllers=r25 controllers=r25
#         controllers_Size = net->ControllerType_R16_Size;
	.d2line		147
	lbz		r28,9(r31)		# controllers_Size=r28 net=r31
.Llo34:
	mr		r28,r28		# controllers_Size=r28 controllers_Size=r28
#         for(CanSM_ControllerTypeiter = 0; CanSM_ControllerTypeiter < controllers_Size; CanSM_ControllerTypeiter++)
	.d2line		148
	diab.li		r6,0		# CanSM_ControllerTypeiter=r6
.L597:
.Llo36:
	rlwinm		r30,r6,0,24,31		# Controller=r30 CanSM_ControllerTypeiter=r6
.Llo37:
	rlwinm		r27,r28,0,24,31		# controllers_Size=r28
	se_cmp		r30,r27		# Controller=r30
	bc		0,0,.L601	# ge
	.section	.text_vle
.L815:
#         {
#             CONSTP2CONST(CanSM_ControllerType, AUTOMATIC, CANSM_APPL_CONST) Controller = &controllers[CanSM_ControllerTypeiter];
	.d2line		150
.Llo43:
	rlwinm		r30,r6,3,21,28		# Controller=r30 CanSM_ControllerTypeiter=r6
.Llo44:
	se_add		r30,r25		# Controller=r30 Controller=r30 controllers=r25
	mr		r30,r30		# Controller=r30 Controller=r30
#             if(ControllerId == Controller->ControllerId_pu8)
	.d2line		151
	rlwinm		r26,r3,0,24,31		# ControllerId=r3
	lbz		r27,4(r30)		# Controller=r30
	se_cmp		r26,r27
	bc		0,2,.L600	# ne
#             {
#                 *controller = Controller;
	.d2line		153
	stw		r30,0(r4)		# controller=r4 Controller=r30
#                 retval = net;
	.d2line		154
	mr		r7,r31		# retval=r7 retval=r31
	b		.L601
.L600:
	.section	.text_vle
.L816:
#                 break;
#             }
#         }
	.d2line		157
.Llo45:
	diab.addi		r30,r6,1		# Controller=r30 CanSM_ControllerTypeiter=r6
	se_addi		r6,1		# CanSM_ControllerTypeiter=r6 CanSM_ControllerTypeiter=r6
	b		.L597
.L601:
	.section	.text_vle
.L808:
#     }
	.d2line		158
.Llo33:
	diab.addi		r6,r5,1		# CanSM_ControllerTypeiter=r6 CanSM_NetworkTypeiter=r5
.Llo38:
	se_addi		r5,1		# CanSM_NetworkTypeiter=r5 CanSM_NetworkTypeiter=r5
	b		.L594
.L596:
#     return retval;
	.d2line		159
.Llo26:
	mr		r3,r7		# retval=r3 retval=r7
# }
	.d2line		160
	.d2epilogue_begin
	lmw		r25,20(r1)		# offset r1+20  0x14
	.d2_cfa_restore_list	2,10
	lwz		r0,52(r1)		# networks=r0
	mtspr		lr,r0		# networks=lr
	diab.addi		r1,r1,48		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo39:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L785:
	.type		CanSM_FindNetworkByController,@function
	.size		CanSM_FindNetworkByController,.-CanSM_FindNetworkByController
# Number of nodes = 81

# Allocations for CanSM_FindNetworkByController
#	?a4		ControllerId
#	?a5		controller
#	?a6		$$165
#	?a7		networks
#	?a8		networks_Size
#	?a9		CanSM_NetworkTypeiter
#	?a10		CanSM_ControllerTypeiter
#	?a11		controllers_Size
#	?a12		retval
#	?a13		net
#	?a14		controllers
#	?a15		Controller
# FUNC(void, CANSM_CODE) CanSM_SwitchOffLock(void)
	.align		2
	.section	.text_vle
        .d2line         172,24
#$$ld
.L824:

#$$bf	CanSM_SwitchOffLock,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		CanSM_SwitchOffLock
	.d2_cfa_start __cie
CanSM_SwitchOffLock:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     P2CONST(CanSM_NetworkType ,AUTOMATIC,CANSM_APPL_CONST )networks;
#     VAR(uint8, AUTOMATIC)networks_Size;
#     VAR( uint8,AUTOMATIC)CanSM_NetworkTypeiter;
# 
#     CanSM_NoLock = TRUE;
	.d2line		178
	diab.li		r0,1
	lis		r3,CanSM_NoLock@ha
	e_add16i		r3,r3,CanSM_NoLock@l
	stb		r0,0(r3)
# 
#     networks = CanSM_Cfg_p->NetworkType_R14;
	.d2line		180
	lis		r3,CanSM_Cfg_p@ha
	lwz		r4,CanSM_Cfg_p@l(r3)
	lwz		r0,16(r4)
.Llo46:
	mr		r0,r0		# networks=r0 networks=r0
#     networks_Size = CanSM_Cfg_p->NetworkType_R14_Size;
	.d2line		181
.Llo47:
	lwz		r3,CanSM_Cfg_p@l(r3)
	lbz		r6,0(r3)
.Llo48:
	mr		r6,r6		# networks_Size=r6 networks_Size=r6
# 
#     for(CanSM_NetworkTypeiter = 0; CanSM_NetworkTypeiter < networks_Size; CanSM_NetworkTypeiter++)
	.d2line		183
	diab.li		r3,0		# CanSM_NetworkTypeiter=r3
.L608:
.Llo50:
	rlwinm		r4,r3,0,24,31		# CanSM_NetworkTypeiter=r3
	rlwinm		r5,r6,0,24,31		# networks_Size=r6
	se_cmp		r4,r5
	bc		0,0,.L607	# ge
#     {
#         networks[CanSM_NetworkTypeiter].RAM->Lock = FALSE;
	.d2line		185
	rlwinm		r4,r3,0,24,31		# CanSM_NetworkTypeiter=r3
	diab.li		r7,0
	rlwinm		r5,r4,5,0,26
	se_slwi		r4,3
	subf		r4,r4,r5
	lwzux		r5,r4,r0
	stb		r7,27(r5)
#     }
	.d2line		186
	diab.addi		r4,r3,1		# CanSM_NetworkTypeiter=r3
	se_addi		r3,1		# CanSM_NetworkTypeiter=r3 CanSM_NetworkTypeiter=r3
	b		.L608
.L607:
# }
	.d2line		187
	.d2epilogue_begin
.Llo49:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L825:
	.type		CanSM_SwitchOffLock,@function
	.size		CanSM_SwitchOffLock,.-CanSM_SwitchOffLock
# Number of nodes = 36

# Allocations for CanSM_SwitchOffLock
#	?a4		$$166
#	?a5		networks
#	?a6		networks_Size
#	?a7		CanSM_NetworkTypeiter
# FUNC(void, CANSM_CODE) CanSM_SwitchOnLock(void)
	.align		2
	.section	.text_vle
        .d2line         199,24
#$$ld
.L835:

#$$bf	CanSM_SwitchOnLock,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		CanSM_SwitchOnLock
	.d2_cfa_start __cie
CanSM_SwitchOnLock:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#     P2CONST(CanSM_NetworkType ,AUTOMATIC,CANSM_APPL_CONST )networks;
#     VAR(uint8, AUTOMATIC)networks_Size;
#     VAR( uint8,AUTOMATIC)CanSM_NetworkTypeiter;
# 
#     CanSM_NoLock = FALSE;
	.d2line		205
	diab.li		r4,0
	lis		r3,CanSM_NoLock@ha
	e_add16i		r3,r3,CanSM_NoLock@l
	stb		r4,0(r3)
# 
#     networks = CanSM_Cfg_p->NetworkType_R14;
	.d2line		207
	lis		r3,CanSM_Cfg_p@ha
	lwz		r5,CanSM_Cfg_p@l(r3)
	lwz		r0,16(r5)
.Llo51:
	mr		r0,r0		# networks=r0 networks=r0
#     networks_Size = CanSM_Cfg_p->NetworkType_R14_Size;
	.d2line		208
.Llo52:
	lwz		r3,CanSM_Cfg_p@l(r3)
	lbz		r6,0(r3)
.Llo53:
	mr		r6,r6		# networks_Size=r6 networks_Size=r6
# 
#     for(CanSM_NetworkTypeiter = 0; CanSM_NetworkTypeiter < networks_Size; CanSM_NetworkTypeiter++)
	.d2line		210
	diab.li		r3,0
.L614:
.Llo55:
	rlwinm		r4,r3,0,24,31		# CanSM_NetworkTypeiter=r3
	rlwinm		r5,r6,0,24,31		# networks_Size=r6
	se_cmp		r4,r5
	bc		0,0,.L613	# ge
#     {
#         networks[CanSM_NetworkTypeiter].RAM->Lock = TRUE;
	.d2line		212
	rlwinm		r4,r3,0,24,31		# CanSM_NetworkTypeiter=r3
	diab.li		r7,1
	rlwinm		r5,r4,5,0,26
	se_slwi		r4,3
	subf		r4,r4,r5
	lwzux		r5,r4,r0
	stb		r7,27(r5)
#     }
	.d2line		213
	diab.addi		r4,r3,1		# CanSM_NetworkTypeiter=r3
	se_addi		r3,1		# CanSM_NetworkTypeiter=r3 CanSM_NetworkTypeiter=r3
	b		.L614
.L613:
# }
	.d2line		214
	.d2epilogue_begin
.Llo54:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L836:
	.type		CanSM_SwitchOnLock,@function
	.size		CanSM_SwitchOnLock,.-CanSM_SwitchOnLock
# Number of nodes = 36

# Allocations for CanSM_SwitchOnLock
#	?a4		$$167
#	?a5		networks
#	?a6		networks_Size
#	?a7		CanSM_NetworkTypeiter
# FUNC(boolean, CANSM_CODE) CanSM_Lock(CONSTP2CONST(CanSM_NetworkType, AUTOMATIC, CANSM_APPL_CONST) network)
	.align		2
	.section	.text_vle
        .d2line         226,27
#$$ld
.L846:

#$$bf	CanSM_Lock,interprocedural,rasave,nostackparams
	.globl		CanSM_Lock
	.d2_cfa_start __cie
CanSM_Lock:
.Llo56:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# network=r31 network=r3
	.d2prologue_end
# {
#     VAR(boolean, AUTOMATIC) retval = FALSE;
	.d2line		228
.Llo57:
	diab.li		r30,0		# retval=r30
# 
#     SchM_Enter_CanSM(network->CanSMNetworkIndex);
	.d2line		230
.Llo58:
	lbz		r3,4(r31)		# network=r31
	bl		SchM_Enter_CanSM
#     if(network->RAM->Lock == TRUE)
	.d2line		231
	lwz		r3,0(r31)		# network=r31
	lbz		r0,27(r3)
	se_cmpi		r0,1
	bc		0,2,.L620	# ne
#     {
#         network->RAM->Lock = FALSE;
	.d2line		233
	diab.li		r0,0
	lwz		r3,0(r31)		# network=r31
	stb		r0,27(r3)
#         retval = TRUE;
	.d2line		234
	diab.li		r30,1		# retval=r30
.L620:
#     }
#     SchM_Exit_CanSM(network->CanSMNetworkIndex);
	.d2line		236
	lbz		r3,4(r31)		# network=r31
	bl		SchM_Exit_CanSM
#     return retval;
	.d2line		237
	rlwinm		r3,r30,0,24,31		# retval=r30
# }
	.d2line		238
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo59:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L847:
	.type		CanSM_Lock,@function
	.size		CanSM_Lock,.-CanSM_Lock
# Number of nodes = 39

# Allocations for CanSM_Lock
#	?a4		network
#	?a5		retval
# FUNC(void, CANSM_CODE) CanSM_UnLock(CONSTP2CONST(CanSM_NetworkType, AUTOMATIC, CANSM_APPL_CONST) network)
	.align		2
	.section	.text_vle
        .d2line         249,24
#$$ld
.L856:

#$$bf	CanSM_UnLock,interprocedural,rasave,nostackparams
	.globl		CanSM_UnLock
	.d2_cfa_start __cie
CanSM_UnLock:
.Llo60:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# network=r31 network=r3
	.d2prologue_end
# {
#     SchM_Enter_CanSM(network->CanSMNetworkIndex);
	.d2line		251
.Llo61:
	lbz		r3,4(r31)		# network=r31
.Llo62:
	bl		SchM_Enter_CanSM
#     network->RAM->Lock = TRUE;
	.d2line		252
	diab.li		r0,1
	lwz		r3,0(r31)		# network=r31
	stb		r0,27(r3)
#     SchM_Exit_CanSM(network->CanSMNetworkIndex);
	.d2line		253
	lbz		r3,4(r31)		# network=r31
	bl		SchM_Exit_CanSM
# }
	.d2line		254
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo63:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L857:
	.type		CanSM_UnLock,@function
	.size		CanSM_UnLock,.-CanSM_UnLock
# Number of nodes = 23

# Allocations for CanSM_UnLock
#	?a4		network
# FUNC(uint8, CANSM_CODE)CanSM_GetApiTransition(CONSTP2CONST(CanSM_NetworkType, AUTOMATIC, CANSM_APPL_CONST) network)
	.align		2
	.section	.text_vle
        .d2line         266,24
#$$ld
.L862:

#$$bf	CanSM_GetApiTransition,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,cr0,lr
	.globl		CanSM_GetApiTransition
	.d2_cfa_start __cie
CanSM_GetApiTransition:
.Llo64:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# network=r3 network=r3
	.d2prologue_end
# {
#     VAR(uint8, AUTOMATIC) Transition;
#     CONST(uint16,AUTOMATIC) state = network->RAM->State;
	.d2line		269
	lwz		r5,0(r3)		# network=r3
	lhz		r0,2(r5)
.Llo89:
	mr		r0,r0		# state=r0 state=r0
# 
#     Transition = CANSM_NO_TRANSITION;
	.d2line		271
	diab.li		r4,0		# Transition=r4
#     /* First check pending indications */
#     if(network->RAM->CanSM_TxTimeoutIndication == TRUE)
	.d2line		273
.Llo82:
	lbz		r5,38(r5)
	se_cmpi		r5,1
	bc		0,2,.L624	# ne
#     {
#         network->RAM->CanSM_TxTimeoutIndication = FALSE;
	.d2line		275
	diab.li		r6,0
	lwz		r5,0(r3)		# network=r3
	stb		r6,38(r5)
#         if(state == CANSM_ST_FC_BO_NOBO)
	.d2line		276
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,8
	bc		0,2,.L626	# ne
#         {
#             Transition = CANSM_FC_BO_NOBO_TO_NC_TO_FC;
	.d2line		278
	diab.li		r4,15		# Transition=r4
	b		.L626
.L624:
#         }
#     }
#     else if(network->RAM->CanSM_TransceiverWakeFlagIndication == TRUE)
	.d2line		281
	lwz		r5,0(r3)		# network=r3
	lbz		r5,30(r5)
	se_cmpi		r5,1
	bc		0,2,.L627	# ne
#     {
#         network->RAM->CanSM_TransceiverWakeFlagIndication = FALSE;
	.d2line		283
	diab.li		r6,0
	lwz		r5,0(r3)		# network=r3
	stb		r6,30(r5)
#         /*
#          * Bug fix BZ#16184 (CANSM_BSM_DeinitPnSupported/S_CHECK_WFLAG_IN_CC_SLEEP state is skipped) is removed.
#          * This fix is reverted because of BZ#17696 (S_CHECK_WFLAG_IN_CC_SLEEP state shall be skipped).
#          */
#         if(network->RAM->State == CANSM_ST_PNC_PN_WF_CC_NO_SLEEP)
	.d2line		288
	lwz		r5,0(r3)		# network=r3
	lhz		r5,2(r5)
	se_cmpi		r5,19
	bc		0,2,.L626	# ne
#         {
#             Transition = CANSM_PNC_PN_WF_CC_NO_SLEEP_TO_CANSM_ST_PNC_PN_CLR_WF;
	.d2line		290
	diab.li		r4,31		# Transition=r4
	b		.L626
.L627:
#         }
#     }
#     else if(network->RAM->CanSM_TrcvWuFlagIndication == TRUE)
	.d2line		293
	lwz		r5,0(r3)		# network=r3
	lbz		r5,31(r5)
	se_cmpi		r5,1
	bc		0,2,.L630	# ne
#     {
#         network->RAM->CanSM_TrcvWuFlagIndication = FALSE;
	.d2line		295
	diab.li		r6,0
	lwz		r5,0(r3)		# network=r3
	stb		r6,31(r5)
#         if(state == CANSM_ST_PNC_PN_CLR_WF)
	.d2line		296
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,17
	bc		0,2,.L626	# ne
#         {
#             Transition = CANSM_PNC_PN_CLR_WF_TO_PNC_CC_STOP;
	.d2line		298
	diab.li		r4,29		# Transition=r4
	b		.L626
.L630:
#         }
#     }
#     else if(network->RAM->CanSM_CtrlBusOffIndication == TRUE)
	.d2line		301
	lwz		r5,0(r3)		# network=r3
	lbz		r5,32(r5)
	se_cmpi		r5,1
	bc		0,2,.L633	# ne
#     {
#         network->RAM->CanSM_CtrlBusOffIndication = FALSE;
	.d2line		303
	diab.li		r6,0
	lwz		r5,0(r3)		# network=r3
	stb		r6,32(r5)
#         if((network->RAM->State == CANSM_ST_FC_BO_NOBO))
	.d2line		304
	lwz		r5,0(r3)		# network=r3
	lhz		r5,2(r5)
	se_cmpi		r5,8
	bc		0,2,.L634	# ne
#         {
#             Transition = CANSM_FC_BO_NOBO_TO_FC_CC_RSTRT;
	.d2line		306
	diab.li		r4,9		# Transition=r4
	b		.L626
.L634:
#         }
#         else if((state == CANSM_ST_FC_BO_CHECK))
	.d2line		308
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,9
	bc		0,2,.L636	# ne
#         {
#             Transition = CANSM_FC_BO_CHECK_TO_FC_CC_RSTRT;
	.d2line		310
	diab.li		r4,8		# Transition=r4
	b		.L626
.L636:
#         }
#         /* If the controller was already restarted or it is ongoing then we have to restart the
#            transition otherwise the controller may remain stopped.
#            (When BusOff happens the controller is stopped by the driver without CanSM intervention.) */
#         /* <Requirements> ADD_CANSM900100 ADD_CANSM900101 ADD_CANSM900102 <EndRequirements> */
#         else if((state == CANSM_ST_FC_CC_RSTRT) || (state == CANSM_ST_FC_TX_OFF))
	.d2line		316
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,10
	bc		1,2,.L707	# eq
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,12
	bc		0,2,.L626	# ne
.L707:
#         {
#             Transition = CANSM_FC_BO_CHECK_TO_FC_CC_RSTRT;
	.d2line		318
	diab.li		r4,8		# Transition=r4
	b		.L626
.L633:
#         }
#         else
#         {
#             /* Concluding else - nothing to do. */
#         }
#     }
#     else if(network->RAM->CanSM_CtrlSleepIndication == TRUE)
	.d2line		325
	lwz		r5,0(r3)		# network=r3
	lbz		r5,33(r5)
	se_cmpi		r5,1
	bc		0,2,.L641	# ne
#     {
#         network->RAM->CanSM_CtrlSleepIndication = FALSE;
	.d2line		327
	diab.li		r6,0
	lwz		r5,0(r3)		# network=r3
	stb		r6,33(r5)
# 
#         if((network->CanSMPartialNetworkSupport == TRUE))
	.d2line		329
	lbz		r5,7(r3)		# network=r3
	se_cmpi		r5,1
	bc		0,2,.L642	# ne
#         {
#             if((state == CANSM_ST_PNC_CC_SLEEP) || (state == CANSM_ST_PNC_CC_SLEEP_WAIT))
	.d2line		331
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,14
	bc		1,2,.L708	# eq
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,26
	bc		0,2,.L626	# ne
.L708:
#             {
#                 Transition = CANSM_PNC_CC_SLEEP_TO_PN_WF_CC_SLEEP;
	.d2line		333
	diab.li		r4,27		# Transition=r4
	b		.L626
.L642:
#             }
#         }
#         else
#         {
#             if(state == CANSM_ST_PNC_CC_SLEEP)
	.d2line		338
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,14
	bc		0,2,.L626	# ne
#             {
#                 Transition = CANSM_PNC_CC_SLEEP_TO_PNC_TRCV_NOR;
	.d2line		340
	diab.li		r4,17		# Transition=r4
	b		.L626
.L641:
#             }
#         }
#     }
#     else if(network->RAM->CanSM_CtrlStoppedIndication == TRUE)
	.d2line		344
	lwz		r5,0(r3)		# network=r3
	lbz		r5,34(r5)
	se_cmpi		r5,1
	bc		0,2,.L626	# ne
#     {
#         network->RAM->CanSM_CtrlStoppedIndication = FALSE;
	.d2line		346
	diab.li		r6,0
	lwz		r5,0(r3)		# network=r3
	stb		r6,34(r5)
# 
#         if((network->CanSMPartialNetworkSupport == TRUE))
	.d2line		348
	lbz		r5,7(r3)		# network=r3
	se_cmpi		r5,1
	bc		0,2,.L648	# ne
#         {
#             if(state == CANSM_ST_PNC_CC_STOP)
	.d2line		350
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,13
	bc		0,2,.L650	# ne
#             {
#                 Transition = CANSM_PNC_CC_STOP_TO_PNC_TRCV_NOR;
	.d2line		352
	diab.li		r4,26		# Transition=r4
	b		.L650
.L648:
#             }
#         }
#         else
#         {
#             if(state == CANSM_ST_PNC_CC_STOP)
	.d2line		357
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,13
#             {
#                 Transition = CANSM_PNC_CC_STOP_TO_PNC_CC_SLEEP;
	.d2line		359
	diab.li		r5,16
	isel		r4,r5,r4,2		# Transition=r4 Transition=r4
.L650:
#             }
#         }
#         if(state == CANSM_ST_PFC_CC_STOP)
	.d2line		362
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,20
	bc		0,2,.L652	# ne
#         {
#             Transition = CANSM_PFC_CC_STOP_TO_PFC_CC_START;
	.d2line		364
	diab.li		r4,4		# Transition=r4
	b		.L626
.L652:
#         }
#         else if(state == CANSM_ST_CB_CC_STOP)
	.d2line		366
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,23
	bc		0,2,.L654	# ne
#         {
#             Transition = CANSM_CB_CC_STOP_TO_CB_CC_START;
	.d2line		368
	diab.li		r4,22		# Transition=r4
	b		.L626
.L654:
#         }
#         else if(state == CANSM_ST_TXTIMEOUT_CC_STOP)
	.d2line		370
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,27
#         {
#             Transition = CANSM_TXTIMEOUT_CC_STOP_TO_CANSM_TXTIMEOUT_CC_START;
	.d2line		372
	diab.li		r5,32
	isel		r4,r5,r4,2		# Transition=r4 Transition=r4
.L626:
#         }
#         else
#         {
#             /* Concluding else - nothing to do. */
#         }
#     }
#     else
#     {
#         /* Concluding else - nothing to do. */
#     }
# 
#     if(network->RAM->CanSM_CtrlStartedIndication == TRUE)
	.d2line		384
	lwz		r5,0(r3)		# network=r3
	lbz		r5,35(r5)
	se_cmpi		r5,1
	bc		0,2,.L659	# ne
	.section	.text_vle
.L873:
#     {
#         CONST(ComM_ModeType, AUTOMATIC) requestMode = network->RAM->RequestMode;
	.d2line		386
	lwz		r3,0(r3)		# network=r3 network=r3
	lbz		r6,15(r3)		# network=r3
.Llo108:
	mr		r6,r6		# requestMode=r6 requestMode=r6
#         network->RAM->CanSM_CtrlStartedIndication = FALSE;
	.d2line		387
	diab.li		r5,0
	stb		r5,35(r3)		# network=r3
# 
#         if(state == CANSM_ST_PFC_CC_START)
	.d2line		389
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,21
	bc		0,2,.L660	# ne
#         {
#             Transition = CANSM_PFC_CC_START_TO_FC_BO_CHECK;
	.d2line		391
.Llo65:
	diab.li		r4,5		# Transition=r4
	b		.L676
.L660:
#         }
#         else if(state == CANSM_ST_FC_CC_RSTRT)
	.d2line		393
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,10
	bc		0,2,.L662	# ne
#         {
#             Transition = CANSM_FC_CC_RSTRT_TO_FC_BO_TXOFF;
	.d2line		395
	diab.li		r4,13		# Transition=r4
	b		.L676
.L662:
#         }
#         else if(state == CANSM_ST_CB_CC_START)
	.d2line		397
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,24
	bc		0,2,.L664	# ne
#         {
#             if((requestMode == COMM_FULL_COMMUNICATION))
	.d2line		399
.Llo90:
	rlwinm		r0,r6,0,24,31		# state=r0 requestMode=r6
.Llo91:
	se_cmpi		r0,2		# state=r0
	bc		0,2,.L665	# ne
#             {
#                 Transition = CANSM_CB_CC_START_TO_FC_BO_CHECK;
	.d2line		401
.Llo92:
	diab.li		r4,24		# Transition=r4
	b		.L676
.L665:
#             }
#             else if((requestMode == COMM_SILENT_COMMUNICATION))
	.d2line		403
	rlwinm		r6,r6,0,24,31		# requestMode=r6 requestMode=r6
	se_cmpi		r6,1		# requestMode=r6
#             {
#                 Transition = CANSM_CB_CC_START_TO_SICO;
	.d2line		405
	diab.li		r3,25		# network=r3
.Llo66:
	isel		r3,r3,r4,2		# Transition=r3 network=r3 Transition=r4
.L667:
#             }
#             else
#             {
#                 Transition = CANSM_CB_CC_START_TO_PNC;
	.d2line		409
.Llo67:
	diab.li		r0,23		# state=r0
.Llo83:
	isel		r4,r3,r0,2		# Transition=r4 Transition=r3 state=r0
	b		.L676
.L664:
#             }
#         }
#         else if(state == CANSM_ST_TXTIMEOUT_CC_START)
	.d2line		412
.Llo84:
	rlwinm		r0,r0,0,16,31		# state=r0 state=r0
.Llo85:
	se_cmpi		r0,28		# state=r0
	bc		0,2,.L676	# ne
#         {
#             if((requestMode == COMM_NO_COMMUNICATION ) )
	.d2line		414
.Llo93:
	rlwinm		r0,r6,0,24,31		# state=r0 requestMode=r6
.Llo94:
	se_cmpi		r0,0		# state=r0
	bc		0,2,.L671	# ne
#             {
#                 Transition = CANSM_TXTIMEOUT_CC_START_TO_PNC;
	.d2line		416
.Llo95:
	diab.li		r4,33		# Transition=r4
	b		.L676
.L671:
#             }
#             else if((requestMode == COMM_FULL_COMMUNICATION))
	.d2line		418
	rlwinm		r6,r6,0,24,31		# requestMode=r6 requestMode=r6
	se_cmpi		r6,2		# requestMode=r6
#             {
#                 Transition = CANSM_TXTIMEOUT_CC_START_TO_FC_BO_CHECK;
	.d2line		420
	diab.li		r3,34		# network=r3
.Llo68:
	isel		r3,r3,r4,2		# Transition=r3 network=r3 Transition=r4
.L673:
#             }
#             else
#             {
#                 Transition = CANSM_TXTIMEOUT_CC_START_TO_SICO;
	.d2line		424
.Llo69:
	diab.li		r0,35		# state=r0
.Llo86:
	isel		r4,r3,r0,2		# Transition=r4 Transition=r3 state=r0
	b		.L676
	.section	.text_vle
.L874:
.L659:
#             }
#         }
#         else
#         {
#             /* Concluding else - nothing to do. */
#         }
#     }
#     else if(network->RAM->CanSM_TransceiverModeNormalIndication == TRUE)
	.d2line		432
.Llo70:
	lwz		r5,0(r3)		# network=r3
.Llo87:
	lbz		r5,36(r5)
	se_cmpi		r5,1
	bc		0,2,.L677	# ne
#     {
#         network->RAM->CanSM_TransceiverModeNormalIndication = FALSE;
	.d2line		434
.Llo71:
	diab.li		r5,0
.Llo72:
	lwz		r3,0(r3)		# network=r3 network=r3
	stb		r5,36(r3)		# network=r3
# 
#         if(state == CANSM_ST_PNC_TRCV_NOR)
	.d2line		436
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,15
	bc		0,2,.L678	# ne
#         {
#             Transition = CANSM_PNC_TRCV_NOR_TO_PNC_TRCV_STB;
	.d2line		438
.Llo73:
	diab.li		r4,18		# Transition=r4
	b		.L676
.L678:
#         }
#         else if(state == CANSM_ST_PFC_TRCV_NOR)
	.d2line		440
	rlwinm		r0,r0,0,16,31		# state=r0 state=r0
	se_cmpi		r0,22		# state=r0
	bc		0,2,.L676	# ne
#         {
#             Transition = CANSM_PFC_TRCV_NOR_TO_PFC_CC_STOP;
	.d2line		442
.Llo96:
	diab.li		r4,3		# Transition=r4
	b		.L676
.L677:
#         }
#         else
#         {
#             /* Concluding else - nothing to do. */
#         }
#     }
#     else if(network->RAM->CanSM_TransceiverModeStandbyIndication == TRUE)
	.d2line		449
.Llo74:
	lwz		r5,0(r3)		# network=r3
	lbz		r5,37(r5)
	se_cmpi		r5,1
	bc		0,2,.L683	# ne
#     {
#         network->RAM->CanSM_TransceiverModeStandbyIndication = FALSE;
	.d2line		451
	diab.li		r6,0
	lwz		r5,0(r3)		# network=r3
	stb		r6,37(r5)
#         if(network->CanSMPartialNetworkSupport == TRUE)
	.d2line		452
	lbz		r3,7(r3)		# network=r3 network=r3
	se_cmpi		r3,1		# network=r3
	bc		0,2,.L684	# ne
#         {
#             if(state == CANSM_ST_PNC_TRCV_STB)
	.d2line		454
.Llo75:
	rlwinm		r0,r0,0,16,31		# state=r0 state=r0
	se_cmpi		r0,16		# state=r0
	bc		0,2,.L676	# ne
#             {
#                 Transition = CANSM_PNC_TRCV_STB_TO_PNC_CC_SLEEP;
	.d2line		456
.Llo97:
	diab.li		r4,28		# Transition=r4
	b		.L676
.L684:
#             }
#         }
#         else
#         {
#             if(state == CANSM_ST_PNC_TRCV_STB)
	.d2line		461
.Llo98:
	rlwinm		r0,r0,0,16,31		# state=r0 state=r0
	se_cmpi		r0,16		# state=r0
	bc		0,2,.L676	# ne
#             {
#                 Transition = CANSM_PNC_TRCV_STB_TO_NOCO;
	.d2line		463
.Llo99:
	diab.li		r4,19		# Transition=r4
	b		.L676
.L683:
#             }
#         }
#     }
# 
#     /* Check pending requests */
#     else if(network->RAM->CanSM_ChangeBaudrateRequest == TRUE)
	.d2line		469
.Llo76:
	lwz		r5,0(r3)		# network=r3
	lbz		r5,28(r5)
	se_cmpi		r5,1
	bc		0,2,.L689	# ne
#     {
#         network->RAM->CanSM_ChangeBaudrateRequest = FALSE;
	.d2line		471
.Llo100:
	diab.li		r0,0		# state=r0
.Llo101:
	lwz		r5,0(r3)		# network=r3
	stb		r0,28(r5)		# state=r0
#         if((network->RAM->CanSMNetworkMode == COMM_FULL_COMMUNICATION) && (network->RAM->State == CANSM_ST_FC_BO_NOBO))
	.d2line		472
	lwz		r5,0(r3)		# network=r3
	lbz		r0,11(r5)		# state=r0
	se_cmpi		r0,2		# state=r0
	bc		0,2,.L676	# ne
.Llo102:
	lwz		r3,0(r3)		# network=r3 network=r3
	lhz		r0,2(r3)		# state=r0 network=r3
.Llo103:
	se_cmpi		r0,8		# state=r0
	bc		0,2,.L676	# ne
#         {
#             Transition = CANSM_FC_BO_NOBO_TO_CB_CC_STOP;
	.d2line		474
.Llo77:
	diab.li		r4,10		# Transition=r4
	b		.L676
.L689:
#         }
#     }
# 
#     else if(network->RAM->CanSM_ComModeRequest == TRUE)
	.d2line		478
.Llo78:
	lwz		r5,0(r3)		# network=r3
	lbz		r5,29(r5)
	se_cmpi		r5,1
	bc		0,2,.L676	# ne
	.section	.text_vle
.L881:
#     {
#         CONST(ComM_ModeType, AUTOMATIC) requestMode = network->RAM->RequestMode;
	.d2line		480
	lwz		r5,0(r3)		# network=r3
	lbz		r6,15(r5)
.Llo109:
	mr		r6,r6		# requestMode=r6 requestMode=r6
#         if((state == CANSM_ST_NOCOM) && (requestMode  == COMM_FULL_COMMUNICATION))
	.d2line		481
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,2
	bc		0,2,.L693	# ne
	rlwinm		r5,r6,0,24,31		# requestMode=r6
	se_cmpi		r5,2
	bc		0,2,.L693	# ne
#         {
#             Transition = CANSM_NOCO_TO_PFC_TRCV_NOR;
	.d2line		483
	diab.li		r4,2		# Transition=r4
	b		.L694
.L693:
#         }
#         else if((state == CANSM_ST_SILENTCOM) && (requestMode == COMM_FULL_COMMUNICATION))
	.d2line		485
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,6
	bc		0,2,.L695	# ne
	rlwinm		r5,r6,0,24,31		# requestMode=r6
	se_cmpi		r5,2
	bc		0,2,.L695	# ne
#         {
#             Transition = CANSM_SICO_TO_FC_BO_CHECK;
	.d2line		487
	diab.li		r4,20		# Transition=r4
	b		.L694
.L695:
#         }
#         else if((state == CANSM_ST_SILENTCOM) && (requestMode == COMM_NO_COMMUNICATION))
	.d2line		489
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,6
	bc		0,2,.L697	# ne
	rlwinm		r5,r6,0,24,31		# requestMode=r6
	se_cmpi		r5,0
	bc		0,2,.L697	# ne
#         {
#             Transition = CANSM_SICO_TO_PNC;
	.d2line		491
	diab.li		r4,21		# Transition=r4
	b		.L694
.L697:
#         }
#         else if((state == CANSM_ST_FC_BO_NOBO) && (requestMode == COMM_SILENT_COMMUNICATION))
	.d2line		493
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,8
	bc		0,2,.L699	# ne
	rlwinm		r5,r6,0,24,31		# requestMode=r6
	se_cmpi		r5,1
	bc		0,2,.L699	# ne
#         {
#             Transition = CANSM_FC_BO_NOBO_TO_SICO;
	.d2line		495
	diab.li		r4,11		# Transition=r4
	b		.L694
.L699:
#         }
#         else if((state == CANSM_ST_FC_BO_NOBO) && (requestMode == COMM_NO_COMMUNICATION))
	.d2line		497
	rlwinm		r5,r0,0,16,31		# state=r0
	se_cmpi		r5,8
	bc		0,2,.L701	# ne
	rlwinm		r5,r6,0,24,31		# requestMode=r6
	se_cmpi		r5,0
	bc		0,2,.L701	# ne
#         {
#             Transition = CANSM_FC_BO_NOBO_TO_SICO;
	.d2line		499
	diab.li		r4,11		# Transition=r4
	b		.L694
.L701:
#         }
#         else if((state == CANSM_ST_NOCOM) && (requestMode == COMM_NO_COMMUNICATION) && (network->RAM->BorFailTRepeatMax != FALSE))
	.d2line		501
	rlwinm		r0,r0,0,16,31		# state=r0 state=r0
	se_cmpi		r0,2		# state=r0
	bc		0,2,.L694	# ne
.Llo104:
	rlwinm		r6,r6,0,24,31		# requestMode=r6 requestMode=r6
	se_cmpi		r6,0		# requestMode=r6
	bc		0,2,.L694	# ne
.Llo110:
	lwz		r5,0(r3)		# network=r3
	lbz		r0,40(r5)		# state=r0
.Llo105:
	se_cmpi		r0,0		# state=r0
#         {
#             /* <Requirements> ADD_CANSM900400 <EndRequirements> */
#             Transition = CANSM_NOCO_BOR_FAIL_T_REPEAT_MAX_TO_NOCO;
	.d2line		504
	diab.li		r0,44		# state=r0
	isel		r4,r4,r0,2		# Transition=r4 Transition=r4 state=r0
.L694:
#         }
#         else
#         {
#             /* Concluding else - nothing to do. */
#         }
#         if(Transition != CANSM_NO_TRANSITION)
	.d2line		510
.Llo106:
	rlwinm		r0,r4,0,24,31		# state=r0 Transition=r4
.Llo107:
	se_cmpi		r0,0		# state=r0
	bc		1,2,.L676	# eq
#         {
#             network->RAM->CanSM_ComModeRequest = FALSE;
	.d2line		512
.Llo79:
	diab.li		r0,0		# state=r0
.Llo80:
	lwz		r3,0(r3)		# network=r3 network=r3
	stb		r0,29(r3)		# network=r3 state=r0
	.section	.text_vle
.L882:
.L676:
#         }
#     }
#     else
#     {
#         /* Concluding else - nothing to do. */
#     }
# 
#     return Transition;
	.d2line		520
.Llo81:
	rlwinm		r3,r4,0,24,31		# network=r3 Transition=r4
# }
	.d2line		521
	.d2epilogue_begin
	lwz		r0,20(r1)		# state=r0
	mtspr		lr,r0		# state=lr
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo88:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L863:
	.type		CanSM_GetApiTransition,@function
	.size		CanSM_GetApiTransition,.-CanSM_GetApiTransition
# Number of nodes = 530

# Allocations for CanSM_GetApiTransition
#	?a4		network
#	?a5		Transition
#	?a6		state
#	?a7		requestMode
#	?a8		requestMode

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L888:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\inc\\CanSM_Types.h"
.L748:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_Common.c"
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
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.uleb128	15
	.byte		0x0
	.uleb128	73
	.uleb128	16
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\COM\\CanSM\\ssc\\make\\..\\src\\CanSM_Common.c"
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
.L753:
	.sleb128	2
	.4byte		.L745-.L2
	.byte		"CanSM_FindNetwork"
	.byte		0
	.4byte		.L748
	.uleb128	63
	.uleb128	73
	.4byte		.L749
	.byte		0x1
	.byte		0x1
	.4byte		.L746
	.4byte		.L747
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L748
	.uleb128	63
	.uleb128	73
	.byte		"networkHandle"
	.byte		0
	.4byte		.L754
	.4byte		.L758
	.section	.debug_info,,n
.L759:
	.sleb128	4
	.4byte		.L748
	.uleb128	66
	.uleb128	60
	.byte		"networks"
	.byte		0
	.4byte		.L749
	.4byte		.L760
.L761:
	.sleb128	4
	.4byte		.L748
	.uleb128	67
	.uleb128	26
	.byte		"networks_Size"
	.byte		0
	.4byte		.L756
	.4byte		.L762
.L763:
	.sleb128	4
	.4byte		.L748
	.uleb128	68
	.uleb128	26
	.byte		"CanSM_NetworkTypeiter"
	.byte		0
	.4byte		.L756
	.4byte		.L764
.L765:
	.sleb128	4
	.4byte		.L748
	.uleb128	69
	.uleb128	61
	.byte		"retval"
	.byte		0
	.4byte		.L749
	.4byte		.L766
	.section	.debug_info,,n
	.sleb128	0
.L745:
	.section	.debug_info,,n
.L771:
	.sleb128	2
	.4byte		.L768-.L2
	.byte		"CanSM_FindNetworkByTransceiver"
	.byte		0
	.4byte		.L748
	.uleb128	95
	.uleb128	73
	.4byte		.L749
	.byte		0x1
	.byte		0x1
	.4byte		.L769
	.4byte		.L770
	.sleb128	3
	.4byte		.L748
	.uleb128	95
	.uleb128	73
	.byte		"TransceiverId"
	.byte		0
	.4byte		.L772
	.4byte		.L773
.L774:
	.sleb128	4
	.4byte		.L748
	.uleb128	98
	.uleb128	59
	.byte		"networks"
	.byte		0
	.4byte		.L749
	.4byte		.L775
.L776:
	.sleb128	4
	.4byte		.L748
	.uleb128	99
	.uleb128	26
	.byte		"networks_Size"
	.byte		0
	.4byte		.L756
	.4byte		.L777
.L778:
	.sleb128	4
	.4byte		.L748
	.uleb128	100
	.uleb128	26
	.byte		"CanSM_NetworkTypeiter"
	.byte		0
	.4byte		.L756
	.4byte		.L779
.L780:
	.sleb128	4
	.4byte		.L748
	.uleb128	101
	.uleb128	61
	.byte		"retval"
	.byte		0
	.4byte		.L749
	.4byte		.L781
	.section	.debug_info,,n
	.sleb128	0
.L768:
	.section	.debug_info,,n
.L786:
	.sleb128	2
	.4byte		.L783-.L2
	.byte		"CanSM_FindNetworkByController"
	.byte		0
	.4byte		.L748
	.uleb128	129
	.uleb128	75
	.4byte		.L749
	.byte		0x1
	.byte		0x1
	.4byte		.L784
	.4byte		.L785
	.sleb128	3
	.4byte		.L748
	.uleb128	129
	.uleb128	75
	.byte		"ControllerId"
	.byte		0
	.4byte		.L772
	.4byte		.L787
	.sleb128	3
	.4byte		.L748
	.uleb128	129
	.uleb128	75
	.byte		"controller"
	.byte		0
	.4byte		.L788
	.4byte		.L794
.L795:
	.sleb128	4
	.4byte		.L748
	.uleb128	133
	.uleb128	59
	.byte		"networks"
	.byte		0
	.4byte		.L749
	.4byte		.L796
.L797:
	.sleb128	4
	.4byte		.L748
	.uleb128	134
	.uleb128	26
	.byte		"networks_Size"
	.byte		0
	.4byte		.L756
	.4byte		.L798
.L799:
	.sleb128	4
	.4byte		.L748
	.uleb128	135
	.uleb128	26
	.byte		"CanSM_NetworkTypeiter"
	.byte		0
	.4byte		.L756
	.4byte		.L800
.L801:
	.sleb128	4
	.4byte		.L748
	.uleb128	136
	.uleb128	26
	.byte		"CanSM_ControllerTypeiter"
	.byte		0
	.4byte		.L756
	.4byte		.L802
.L803:
	.sleb128	4
	.4byte		.L748
	.uleb128	137
	.uleb128	26
	.byte		"controllers_Size"
	.byte		0
	.4byte		.L756
	.4byte		.L804
.L805:
	.sleb128	4
	.4byte		.L748
	.uleb128	138
	.uleb128	60
	.byte		"retval"
	.byte		0
	.4byte		.L749
	.4byte		.L806
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L810
	.4byte		.L807
	.4byte		.L808
.L811:
	.sleb128	4
	.4byte		.L748
	.uleb128	145
	.uleb128	64
	.byte		"net"
	.byte		0
	.4byte		.L749
	.4byte		.L812
.L813:
	.sleb128	4
	.4byte		.L748
	.uleb128	146
	.uleb128	67
	.byte		"controllers"
	.byte		0
	.4byte		.L790
	.4byte		.L814
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L818
	.4byte		.L815
	.4byte		.L816
.L819:
	.sleb128	4
	.4byte		.L748
	.uleb128	150
	.uleb128	77
	.byte		"Controller"
	.byte		0
	.4byte		.L820
	.4byte		.L821
	.section	.debug_info,,n
	.sleb128	0
.L818:
	.section	.debug_info,,n
	.sleb128	0
.L810:
	.section	.debug_info,,n
	.sleb128	0
.L783:
	.section	.debug_info,,n
.L826:
	.sleb128	6
	.4byte		.L823-.L2
	.byte		"CanSM_SwitchOffLock"
	.byte		0
	.4byte		.L748
	.uleb128	172
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L824
	.4byte		.L825
.L827:
	.sleb128	4
	.4byte		.L748
	.uleb128	174
	.uleb128	60
	.byte		"networks"
	.byte		0
	.4byte		.L749
	.4byte		.L828
.L829:
	.sleb128	4
	.4byte		.L748
	.uleb128	175
	.uleb128	26
	.byte		"networks_Size"
	.byte		0
	.4byte		.L756
	.4byte		.L830
.L831:
	.sleb128	4
	.4byte		.L748
	.uleb128	176
	.uleb128	26
	.byte		"CanSM_NetworkTypeiter"
	.byte		0
	.4byte		.L756
	.4byte		.L832
	.section	.debug_info,,n
	.sleb128	0
.L823:
	.section	.debug_info,,n
.L837:
	.sleb128	6
	.4byte		.L834-.L2
	.byte		"CanSM_SwitchOnLock"
	.byte		0
	.4byte		.L748
	.uleb128	199
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L835
	.4byte		.L836
.L838:
	.sleb128	4
	.4byte		.L748
	.uleb128	201
	.uleb128	60
	.byte		"networks"
	.byte		0
	.4byte		.L749
	.4byte		.L839
.L840:
	.sleb128	4
	.4byte		.L748
	.uleb128	202
	.uleb128	26
	.byte		"networks_Size"
	.byte		0
	.4byte		.L756
	.4byte		.L841
.L842:
	.sleb128	4
	.4byte		.L748
	.uleb128	203
	.uleb128	26
	.byte		"CanSM_NetworkTypeiter"
	.byte		0
	.4byte		.L756
	.4byte		.L843
	.section	.debug_info,,n
	.sleb128	0
.L834:
	.section	.debug_info,,n
.L849:
	.sleb128	2
	.4byte		.L845-.L2
	.byte		"CanSM_Lock"
	.byte		0
	.4byte		.L748
	.uleb128	226
	.uleb128	27
	.4byte		.L848
	.byte		0x1
	.byte		0x1
	.4byte		.L846
	.4byte		.L847
	.sleb128	3
	.4byte		.L748
	.uleb128	226
	.uleb128	27
	.byte		"network"
	.byte		0
	.4byte		.L850
	.4byte		.L851
.L852:
	.sleb128	4
	.4byte		.L748
	.uleb128	228
	.uleb128	29
	.byte		"retval"
	.byte		0
	.4byte		.L848
	.4byte		.L853
	.section	.debug_info,,n
	.sleb128	0
.L845:
	.section	.debug_info,,n
.L858:
	.sleb128	6
	.4byte		.L855-.L2
	.byte		"CanSM_UnLock"
	.byte		0
	.4byte		.L748
	.uleb128	249
	.uleb128	24
	.byte		0x1
	.byte		0x1
	.4byte		.L856
	.4byte		.L857
	.sleb128	3
	.4byte		.L748
	.uleb128	249
	.uleb128	24
	.byte		"network"
	.byte		0
	.4byte		.L850
	.4byte		.L859
	.section	.debug_info,,n
	.sleb128	0
.L855:
	.section	.debug_info,,n
.L864:
	.sleb128	2
	.4byte		.L861-.L2
	.byte		"CanSM_GetApiTransition"
	.byte		0
	.4byte		.L748
	.uleb128	266
	.uleb128	24
	.4byte		.L756
	.byte		0x1
	.byte		0x1
	.4byte		.L862
	.4byte		.L863
	.sleb128	3
	.4byte		.L748
	.uleb128	266
	.uleb128	24
	.byte		"network"
	.byte		0
	.4byte		.L850
	.4byte		.L865
.L866:
	.sleb128	4
	.4byte		.L748
	.uleb128	268
	.uleb128	27
	.byte		"Transition"
	.byte		0
	.4byte		.L756
	.4byte		.L867
.L868:
	.sleb128	4
	.4byte		.L748
	.uleb128	269
	.uleb128	29
	.byte		"state"
	.byte		0
	.4byte		.L869
	.4byte		.L872
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L876
	.4byte		.L873
	.4byte		.L874
.L877:
	.sleb128	4
	.4byte		.L748
	.uleb128	386
	.uleb128	41
	.byte		"requestMode"
	.byte		0
	.4byte		.L878
	.4byte		.L880
	.section	.debug_info,,n
	.sleb128	0
.L876:
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L884
	.4byte		.L881
	.4byte		.L882
.L885:
	.sleb128	4
	.4byte		.L748
	.uleb128	480
	.uleb128	41
	.byte		"requestMode"
	.byte		0
	.4byte		.L878
	.4byte		.L886
	.section	.debug_info,,n
	.sleb128	0
.L884:
	.section	.debug_info,,n
	.sleb128	0
.L861:
	.section	.debug_info,,n
.L887:
	.sleb128	7
	.byte		0x1
	.byte		0x1
	.4byte		.L888
	.uleb128	490
	.uleb128	61
	.byte		"CanSM_Cfg_p"
	.byte		0
	.4byte		.L889
	.0byte		.L887
	.section	.debug_info,,n
.L893:
	.sleb128	8
	.byte		0x1
	.4byte		.L748
	.uleb128	36
	.uleb128	25
	.byte		"CanSM_NoLock"
	.byte		0
	.4byte		.L848
	.sleb128	5
	.byte		0x3
	.4byte		CanSM_NoLock
	.comm		CanSM_NoLock,1,0
.L894:
	.sleb128	8
	.byte		0x1
	.4byte		.L748
	.uleb128	45
	.uleb128	25
	.byte		"CanSM_EcuPassive"
	.byte		0
	.4byte		.L848
	.sleb128	5
	.byte		0x3
	.4byte		CanSM_EcuPassive
	.comm		CanSM_EcuPassive,1,0
	.section	.debug_info,,n
.L892:
	.sleb128	9
	.4byte		.L888
	.uleb128	341
	.uleb128	14
	.4byte		.L895-.L2
	.uleb128	20
	.section	.debug_info,,n
.L565:
	.sleb128	10
	.byte		"NetworkType_R14_Size"
	.byte		0
	.4byte		.L772
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L566:
	.sleb128	10
	.byte		"RepetitionTime_u16"
	.byte		0
	.4byte		.L869
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L567:
	.sleb128	10
	.byte		"RepetitionMax_u8"
	.byte		0
	.4byte		.L772
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L568:
	.sleb128	10
	.byte		"PBtoPCHashValue_P"
	.byte		0
	.4byte		.L896
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L569:
	.sleb128	10
	.byte		"PBtoLTHashValue_P"
	.byte		0
	.4byte		.L896
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L570:
	.sleb128	10
	.byte		"NetworkType_R14"
	.byte		0
	.4byte		.L749
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L895:
.L752:
	.sleb128	9
	.4byte		.L888
	.uleb128	341
	.uleb128	14
	.4byte		.L900-.L2
	.uleb128	24
.L552:
	.sleb128	10
	.byte		"RAM"
	.byte		0
	.4byte		.L901
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L553:
	.sleb128	10
	.byte		"CanSMNetworkIndex"
	.byte		0
	.4byte		.L772
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L554:
	.sleb128	10
	.byte		"CanSMNetworkHandle"
	.byte		0
	.4byte		.L754
	.sleb128	2
	.byte		0x23
	.uleb128	5
	.byte		0x1
.L555:
	.sleb128	10
	.byte		"CanSMTransceiverId_u8"
	.byte		0
	.4byte		.L772
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L556:
	.sleb128	10
	.byte		"CanSMPartialNetworkSupport"
	.byte		0
	.4byte		.L904
	.sleb128	2
	.byte		0x23
	.uleb128	7
	.byte		0x1
.L557:
	.sleb128	10
	.byte		"CanSMBorTxConfirmationPolling"
	.byte		0
	.4byte		.L904
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L558:
	.sleb128	10
	.byte		"ControllerType_R16_Size"
	.byte		0
	.4byte		.L772
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L559:
	.sleb128	10
	.byte		"CanSMBorCounterL1ToL2_u8"
	.byte		0
	.4byte		.L772
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L560:
	.sleb128	10
	.byte		"CanSMBorTimeL1_u16"
	.byte		0
	.4byte		.L869
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L561:
	.sleb128	10
	.byte		"CanSMBorTimeL2_u16"
	.byte		0
	.4byte		.L869
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L562:
	.sleb128	10
	.byte		"CanSMBorTimeTxEnsured_u16"
	.byte		0
	.4byte		.L869
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L563:
	.sleb128	10
	.byte		"CanSMBorErrEvent"
	.byte		0
	.4byte		.L905
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L564:
	.sleb128	10
	.byte		"ControllerType_R16"
	.byte		0
	.4byte		.L790
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
	.sleb128	0
.L900:
.L903:
	.sleb128	9
	.4byte		.L888
	.uleb128	341
	.uleb128	14
	.4byte		.L907-.L2
	.uleb128	42
.L518:
	.sleb128	10
	.byte		"current_state"
	.byte		0
	.4byte		.L908
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L519:
	.sleb128	10
	.byte		"State"
	.byte		0
	.4byte		.L870
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L520:
	.sleb128	10
	.byte		"CanSMBorTimer_u16"
	.byte		0
	.4byte		.L870
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L521:
	.sleb128	10
	.byte		"CanSMBorTimerTxEnsured_u16"
	.byte		0
	.4byte		.L870
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L522:
	.sleb128	10
	.byte		"ChannelTimer_u16"
	.byte		0
	.4byte		.L870
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L523:
	.sleb128	10
	.byte		"RetryTimerEnabled"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L524:
	.sleb128	10
	.byte		"CanSMNetworkMode"
	.byte		0
	.4byte		.L879
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L525:
	.sleb128	10
	.byte		"CanSMBorCounter_u8"
	.byte		0
	.4byte		.L756
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L526:
	.sleb128	10
	.byte		"RequestModeTransition"
	.byte		0
	.4byte		.L756
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L527:
	.sleb128	10
	.byte		"RetryCounter_u8"
	.byte		0
	.4byte		.L756
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L528:
	.sleb128	10
	.byte		"RequestMode"
	.byte		0
	.4byte		.L879
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L529:
	.sleb128	10
	.byte		"CanSM_InitFlag"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L530:
	.sleb128	10
	.byte		"CanSMCheckedBaudrateStatus"
	.byte		0
	.4byte		.L756
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L531:
	.sleb128	10
	.byte		"CanSMCheckedBaudrate"
	.byte		0
	.4byte		.L870
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L532:
	.sleb128	10
	.byte		"CanSMChangedBaudrate"
	.byte		0
	.4byte		.L870
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L533:
	.sleb128	10
	.byte		"CurrentStateNoCom_b"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
.L534:
	.sleb128	10
	.byte		"TxTimeoutstate_b"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	23
	.byte		0x1
.L535:
	.sleb128	10
	.byte		"T_REPEAT_MAX_HAPPENED"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	24
	.byte		0x1
.L536:
	.sleb128	10
	.byte		"BufferedRequestMode"
	.byte		0
	.4byte		.L879
	.sleb128	2
	.byte		0x23
	.uleb128	25
	.byte		0x1
.L537:
	.sleb128	10
	.byte		"CalledFromMainfunction"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	26
	.byte		0x1
.L538:
	.sleb128	10
	.byte		"Lock"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	27
	.byte		0x1
.L539:
	.sleb128	10
	.byte		"CanSM_ChangeBaudrateRequest"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L540:
	.sleb128	10
	.byte		"CanSM_ComModeRequest"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	29
	.byte		0x1
.L541:
	.sleb128	10
	.byte		"CanSM_TransceiverWakeFlagIndication"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	30
	.byte		0x1
.L542:
	.sleb128	10
	.byte		"CanSM_TrcvWuFlagIndication"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	31
	.byte		0x1
.L543:
	.sleb128	10
	.byte		"CanSM_CtrlBusOffIndication"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L544:
	.sleb128	10
	.byte		"CanSM_CtrlSleepIndication"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	33
	.byte		0x1
.L545:
	.sleb128	10
	.byte		"CanSM_CtrlStoppedIndication"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	34
	.byte		0x1
.L546:
	.sleb128	10
	.byte		"CanSM_CtrlStartedIndication"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	35
	.byte		0x1
.L547:
	.sleb128	10
	.byte		"CanSM_TransceiverModeNormalIndication"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L548:
	.sleb128	10
	.byte		"CanSM_TransceiverModeStandbyIndication"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	37
	.byte		0x1
.L549:
	.sleb128	10
	.byte		"CanSM_TxTimeoutIndication"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	38
	.byte		0x1
.L550:
	.sleb128	10
	.byte		"BusOffDuringRecovery"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	39
	.byte		0x1
.L551:
	.sleb128	10
	.byte		"BorFailTRepeatMax"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
	.sleb128	0
.L907:
.L793:
	.sleb128	9
	.4byte		.L888
	.uleb128	341
	.uleb128	14
	.4byte		.L909-.L2
	.uleb128	8
.L514:
	.sleb128	10
	.byte		"RAM"
	.byte		0
	.4byte		.L910
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L515:
	.sleb128	10
	.byte		"ControllerId_pu8"
	.byte		0
	.4byte		.L772
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L909:
.L912:
	.sleb128	9
	.4byte		.L888
	.uleb128	341
	.uleb128	14
	.4byte		.L913-.L2
	.uleb128	3
.L511:
	.sleb128	10
	.byte		"ControllerSleepIndication"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L512:
	.sleb128	10
	.byte		"ControllerStoppedIndication"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L513:
	.sleb128	10
	.byte		"ControllerStartedIndication"
	.byte		0
	.4byte		.L848
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L913:
	.section	.debug_info,,n
.L751:
	.sleb128	11
	.byte		"CanSM_NetworkType"
	.byte		0
	.4byte		.L752
	.section	.debug_info,,n
.L750:
	.sleb128	12
	.4byte		.L751
	.section	.debug_info,,n
.L749:
	.sleb128	13
	.4byte		.L750
	.section	.debug_info,,n
.L757:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L756:
	.sleb128	11
	.byte		"uint8"
	.byte		0
	.4byte		.L757
.L755:
	.sleb128	11
	.byte		"NetworkHandleType"
	.byte		0
	.4byte		.L756
.L754:
	.sleb128	12
	.4byte		.L755
.L772:
	.sleb128	12
	.4byte		.L756
.L792:
	.sleb128	11
	.byte		"CanSM_ControllerType"
	.byte		0
	.4byte		.L793
.L791:
	.sleb128	12
	.4byte		.L792
.L790:
	.sleb128	13
	.4byte		.L791
.L789:
	.sleb128	13
	.4byte		.L790
.L788:
	.sleb128	12
	.4byte		.L789
.L820:
	.sleb128	12
	.4byte		.L790
.L848:
	.sleb128	11
	.byte		"boolean"
	.byte		0
	.4byte		.L757
.L850:
	.sleb128	12
	.4byte		.L749
.L871:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L870:
	.sleb128	11
	.byte		"uint16"
	.byte		0
	.4byte		.L871
.L869:
	.sleb128	12
	.4byte		.L870
.L879:
	.sleb128	11
	.byte		"ComM_ModeType"
	.byte		0
	.4byte		.L756
.L878:
	.sleb128	12
	.4byte		.L879
.L891:
	.sleb128	11
	.byte		"CanSM_ConfigType"
	.byte		0
	.4byte		.L892
.L890:
	.sleb128	12
	.4byte		.L891
.L889:
	.sleb128	13
	.4byte		.L890
.L899:
	.sleb128	14
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L898:
	.sleb128	11
	.byte		"uint32"
	.byte		0
	.4byte		.L899
.L897:
	.sleb128	12
	.4byte		.L898
.L896:
	.sleb128	13
	.4byte		.L897
.L902:
	.sleb128	11
	.byte		"CanSM_NetworkType_RAM"
	.byte		0
	.4byte		.L903
.L901:
	.sleb128	13
	.4byte		.L902
.L904:
	.sleb128	12
	.4byte		.L848
.L906:
	.sleb128	11
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L870
.L905:
	.sleb128	12
	.4byte		.L906
.L908:
	.sleb128	11
	.byte		"CANSM_Escher_StateNumber_t"
	.byte		0
	.4byte		.L756
.L911:
	.sleb128	11
	.byte		"CanSM_ControllerType_RAM"
	.byte		0
	.4byte		.L912
.L910:
	.sleb128	13
	.4byte		.L911
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L758:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),0
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo6),0
	.d2locend
.L760:
	.d2locreg	%offsetof(.Llo7), %offsetof(.Llo6),6
	.d2locend
.L762:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo6),7
	.d2locend
.L764:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo9),3
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo6),3
	.d2locend
.L766:
	.d2locreg	%offsetof(.Llo11), %offsetof(.Llo12),4
	.d2locend
.L773:
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),3
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locend
.L775:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo18),6
	.d2locend
.L777:
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo18),7
	.d2locend
.L779:
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo21),3
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo18),3
	.d2locend
.L781:
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),4
	.d2locend
.L787:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),3
	.d2locend
.L794:
	.d2locreg	%offsetof(.Llo25), %offsetof(.Llo26),4
	.d2locend
.L796:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo26),0
	.d2locend
.L798:
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo26),29
	.d2locend
.L800:
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo26),5
	.d2locend
.L802:
	.d2locreg	%offsetof(.Llo30), %offsetof(.Llo31),6
	.d2locreg	%offsetof(.Llo32), %offsetof(.Llo33),6
	.d2locend
.L804:
	.d2locreg	%offsetof(.Llo34), %offsetof(.Llo33),28
	.d2locend
.L806:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),7
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo33),31
	.d2locreg	%offsetof(.Llo38), %offsetof(.Llo39),7
	.d2locend
.L812:
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo31),31
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo33),31
	.d2locend
.L814:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo33),25
	.d2locend
.L821:
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo43),30
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),30
	.d2locend
.L828:
	.d2locreg	%offsetof(.Llo46), %offsetof(.Llo47),0
	.d2locend
.L830:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo49),6
	.d2locend
.L832:
	.d2locreg	%offsetof(.Llo50), %offsetof(.Llo49),3
	.d2locend
.L839:
	.d2locreg	%offsetof(.Llo51), %offsetof(.Llo52),0
	.d2locend
.L841:
	.d2locreg	%offsetof(.Llo53), %offsetof(.Llo54),6
	.d2locend
.L843:
	.d2locreg	%offsetof(.Llo55), %offsetof(.Llo54),3
	.d2locend
.L851:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo57),3
	.d2locreg	%offsetof(.Llo58), %offsetof(.Llo59),31
	.d2locend
.L853:
	.d2locreg	%offsetof(.Llo56), %offsetof(.Llo59),30
	.d2locend
.L859:
	.d2locreg	%offsetof(.Llo60), %offsetof(.Llo61),3
	.d2locreg	%offsetof(.Llo62), %offsetof(.Llo63),31
	.d2locend
.L865:
	.d2locreg	%offsetof(.Llo64), %offsetof(.Llo65),3
	.d2locreg	%offsetof(.Llo66), %offsetof(.Llo67),3
	.d2locreg	%offsetof(.Llo68), %offsetof(.Llo69),3
	.d2locreg	%offsetof(.Llo70), %offsetof(.Llo71),3
	.d2locreg	%offsetof(.Llo72), %offsetof(.Llo73),3
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo75),3
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo77),3
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo79),3
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),3
	.d2locend
.L867:
	.d2locreg	%offsetof(.Llo82), %offsetof(.Llo67),4
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo84),3
	.d2locreg	%offsetof(.Llo85), %offsetof(.Llo69),4
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo70),3
	.d2locreg	%offsetof(.Llo87), %offsetof(.Llo88),4
	.d2locend
.L872:
	.d2locreg	%offsetof(.Llo89), %offsetof(.Llo90),0
	.d2locreg	%offsetof(.Llo91), %offsetof(.Llo92),0
	.d2locreg	%offsetof(.Llo83), %offsetof(.Llo93),0
	.d2locreg	%offsetof(.Llo94), %offsetof(.Llo95),0
	.d2locreg	%offsetof(.Llo86), %offsetof(.Llo96),0
	.d2locreg	%offsetof(.Llo74), %offsetof(.Llo97),0
	.d2locreg	%offsetof(.Llo98), %offsetof(.Llo99),0
	.d2locreg	%offsetof(.Llo76), %offsetof(.Llo100),0
	.d2locreg	%offsetof(.Llo101), %offsetof(.Llo102),0
	.d2locreg	%offsetof(.Llo103), %offsetof(.Llo77),0
	.d2locreg	%offsetof(.Llo78), %offsetof(.Llo104),0
	.d2locreg	%offsetof(.Llo105), %offsetof(.Llo106),0
	.d2locreg	%offsetof(.Llo107), %offsetof(.Llo79),0
	.d2locreg	%offsetof(.Llo80), %offsetof(.Llo81),0
	.d2locend
.L880:
	.d2locreg	%offsetof(.Llo108), %offsetof(.Llo67),6
	.d2locreg	%offsetof(.Llo84), %offsetof(.Llo69),6
	.d2locend
.L886:
	.d2locreg	%offsetof(.Llo109), %offsetof(.Llo110),6
	.d2locreg	%offsetof(.Llo106), %offsetof(.Llo79),6
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "CanSM_GetApiTransition"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_UnLock"
	.wrcm.nstrlist "calls", "SchM_Enter_CanSM","SchM_Exit_CanSM"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_Lock"
	.wrcm.nstrlist "calls", "SchM_Enter_CanSM","SchM_Exit_CanSM"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_SwitchOnLock"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_SwitchOffLock"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "CanSM_FindNetworkByController"
	.wrcm.nint32 "frameSize", 48
	.wrcm.end
	.wrcm.nelem "CanSM_FindNetworkByTransceiver"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "CanSM_FindNetwork"
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_Common.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_Common.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_Common.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\CanSM_Common.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\CanSM_Common.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\CanSM_Common.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\COM\CanSM\ssc\make\..\src\CanSM_Common.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
