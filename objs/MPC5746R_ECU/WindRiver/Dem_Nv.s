#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"Dem_Nv.c"
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
# FUNC(void, DEM_CODE) Dem_NvResetAll(void)
	.align		2
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dem\\ssc\\make\\..\\src\\Dem_Nv.c"
        .d2line         502,22
#$$ld
.L273:

#$$bf	Dem_NvResetAll,interprocedural,rasave,nostackparams
	.globl		Dem_NvResetAll
	.d2_cfa_start __cie
Dem_NvResetAll:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    uint16 i;
# 
#    for (i = 0; i < DEM_NUMBER_OF_NV_BLOCKS; i++)
	.d2line		506
	diab.li		r31,0		# i=r31
.L225:
	rlwinm		r0,r31,0,16,31		# i=r31
	se_cmpi		r0,14
	bc		0,0,.L224	# ge
#    {
#       Dem_NvResetBlock[i]();
	.d2line		508
	lis		r3,Dem_NvResetBlock@ha
	e_add16i		r3,r3,Dem_NvResetBlock@l
	rlwinm		r0,r31,2,14,29		# i=r31
	lwzx		r0,r3,r0
	mtspr		ctr,r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x0 0x0 0x0 0x1
#$$rs 0 s
	bcctrl		20,0
#    }
	.d2line		509
	diab.addi		r0,r31,1		# i=r31
	se_addi		r31,1		# i=r31 i=r31
	b		.L225
.L224:
# }
	.d2line		510
	.d2epilogue_begin
.Llo2:
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
.L274:
	.type		Dem_NvResetAll,@function
	.size		Dem_NvResetAll,.-Dem_NvResetAll
# Number of nodes = 20

# Allocations for Dem_NvResetAll
#	?a4		i
# FUNC(void, DEM_CODE) Dem_NvResetAdmin(void)
	.align		2
	.section	.text_vle
        .d2line         512,22
#$$ld
.L283:

#$$bf	Dem_NvResetAdmin,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,cr0,lr
	.globl		Dem_NvResetAdmin
	.d2_cfa_start __cie
Dem_NvResetAdmin:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    uint8 i;
# 
#    Dem_NvAdmin.event_memory_overflow_ind = 0;
	.d2line		516
	diab.li		r0,0
	lis		r3,(Dem_NvAdmin+8)@ha
	stb		r0,(Dem_NvAdmin+8)@l(r3)
#    Dem_NvAdmin.event_occurrence_info.first_confirmed_event = DEM_EVENTID_INVALID;
	.d2line		517
	lis		r3,(Dem_NvAdmin+6)@ha
	sth		r0,(Dem_NvAdmin+6)@l(r3)
#    Dem_NvAdmin.event_occurrence_info.first_failed_event = DEM_EVENTID_INVALID;
	.d2line		518
	lis		r3,(Dem_NvAdmin+4)@ha
	sth		r0,(Dem_NvAdmin+4)@l(r3)
#    Dem_NvAdmin.event_occurrence_info.most_recent_confirmed_event = DEM_EVENTID_INVALID;
	.d2line		519
	lis		r3,(Dem_NvAdmin+2)@ha
	sth		r0,(Dem_NvAdmin+2)@l(r3)
#    Dem_NvAdmin.event_occurrence_info.most_recent_failed_event = DEM_EVENTID_INVALID;
	.d2line		520
	lis		r3,Dem_NvAdmin@ha
	e_add16i		r3,r3,Dem_NvAdmin@l
	sth		r0,0(r3)
# 
#    /* Reset first- and latest-pointers to chronologic list */
#    for (i = 0; i < DEM_NUMBER_OF_ORIGINS; i++)
	.d2line		523
	diab.li		r3,0
.L231:
.Llo3:
	rlwinm		r0,r3,0,24,31		# i=r3
	se_cmpi		r0,2
	bc		0,0,.L230	# ge
#    {
#       if (Dem_LCfg.pp_ev_mem[i] != NULL_PTR)
	.d2line		525
	lis		r4,(Dem_LCfg+20)@ha
	e_add16i		r4,r4,(Dem_LCfg+20)@l
	rlwinm		r0,r3,2,22,29		# i=r3
	lwzx		r0,r4,r0
	se_cmpi		r0,0
	bc		1,2,.L234	# eq
	.section	.text_vle
.L290:
#       {
#          uint8 evMemEntry;
# 
#          if (NULL_PTR != Dem_LCfg.pp_ev_mem[i]->p_first)
	.d2line		529
	lis		r4,(Dem_LCfg+20)@ha
	e_add16i		r4,r4,(Dem_LCfg+20)@l
	rlwinm		r0,r3,2,22,29		# i=r3
	lwzx		r4,r4,r0
	lwz		r0,4(r4)
	se_cmpi		r0,0
	bc		1,2,.L235	# eq
#          {
#             *Dem_LCfg.pp_ev_mem[i]->p_first = DEM_EV_MEM_ENTRY_INVALID;
	.d2line		531
	diab.li		r5,255
	lis		r4,(Dem_LCfg+20)@ha
	e_add16i		r4,r4,(Dem_LCfg+20)@l
	rlwinm		r0,r3,2,22,29		# i=r3
	lwzx		r4,r4,r0
	lwz		r4,4(r4)
	stb		r5,0(r4)
.L235:
#          }
#          if (NULL_PTR != Dem_LCfg.pp_ev_mem[i]->p_last)
	.d2line		533
	lis		r4,(Dem_LCfg+20)@ha
	e_add16i		r4,r4,(Dem_LCfg+20)@l
	rlwinm		r0,r3,2,22,29		# i=r3
	lwzx		r4,r4,r0
	lwz		r0,8(r4)
	se_cmpi		r0,0
	bc		1,2,.L236	# eq
#          {
#             *Dem_LCfg.pp_ev_mem[i]->p_last = DEM_EV_MEM_ENTRY_INVALID;
	.d2line		535
	diab.li		r5,255
	lis		r4,(Dem_LCfg+20)@ha
	e_add16i		r4,r4,(Dem_LCfg+20)@l
	rlwinm		r0,r3,2,22,29		# i=r3
	lwzx		r4,r4,r0
	lwz		r4,8(r4)
	stb		r5,0(r4)
.L236:
#          }
#          for (evMemEntry = 0; evMemEntry < Dem_MaxNumEvMemEntries[i]; evMemEntry++)
	.d2line		537
	diab.li		r4,0		# evMemEntry=r4
.L237:
.Llo5:
	rlwinm		r6,r4,0,24,31		# evMemEntry=r4
	lis		r5,Dem_MaxNumEvMemEntries@ha
	e_add16i		r5,r5,Dem_MaxNumEvMemEntries@l
	rlwinm		r0,r3,0,24,31		# i=r3
	lbzx		r0,r5,r0
	se_cmp		r6,r0
	bc		0,0,.L234	# ge
#          {
#             Dem_LCfg.pp_ev_mem[i]->p_next[evMemEntry] = DEM_EV_MEM_ENTRY_INVALID;
	.d2line		539
	diab.li		r7,255
	lis		r5,(Dem_LCfg+20)@ha
	e_add16i		r5,r5,(Dem_LCfg+20)@l
	rlwinm		r0,r3,2,22,29		# i=r3
	lwzux		r6,r5,r0
	lwz		r5,12(r6)
	rlwinm		r6,r4,0,24,31		# evMemEntry=r4
	stbux		r7,r5,r6
#             Dem_LCfg.pp_ev_mem[i]->p_prev[evMemEntry] = DEM_EV_MEM_ENTRY_INVALID;
	.d2line		540
	lis		r5,(Dem_LCfg+20)@ha
	e_add16i		r5,r5,(Dem_LCfg+20)@l
	lwzx		r5,r5,r0
	lwz		r5,16(r5)
	stbx		r7,r5,r6
#          }
	.d2line		541
	diab.addi		r6,r4,1		# evMemEntry=r4
	se_addi		r4,1		# evMemEntry=r4 evMemEntry=r4
	b		.L237
	.section	.text_vle
.L291:
.L234:
#       }
#    }
	.d2line		543
	diab.addi		r0,r3,1		# i=r3
	se_addi		r3,1		# i=r3 i=r3
	b		.L231
.L230:
# }
	.d2line		544
	.d2epilogue_begin
.Llo4:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L284:
	.type		Dem_NvResetAdmin,@function
	.size		Dem_NvResetAdmin,.-Dem_NvResetAdmin
# Number of nodes = 171

# Allocations for Dem_NvResetAdmin
#	?a4		i
#	?a5		evMemEntry
# FUNC(void, DEM_CODE) Dem_NvResetUdsStatus(void)
	.align		2
	.section	.text_vle
        .d2line         561,22
#$$ld
.L298:

#$$bf	Dem_NvResetUdsStatus,interprocedural,rasave,nostackparams
	.globl		Dem_NvResetUdsStatus
	.d2_cfa_start __cie
Dem_NvResetUdsStatus:
.Llo6:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    uint16 i;
# 
#    for (i = 0; i < Dem_LCfg.num_events; i++)
	.d2line		565
	diab.li		r31,0		# i=r31
.L247:
	rlwinm		r0,r31,0,16,31		# i=r31
	lis		r3,(Dem_LCfg+136)@ha
	lhz		r3,(Dem_LCfg+136)@l(r3)
	se_cmp		r0,r3
	bc		0,0,.L246	# ge
#    {
#       Dem_NvUdsStatus[i] = DEM_UDS_STATUS_CLEARED;
	.d2line		567
	diab.li		r4,80
	lis		r3,Dem_NvUdsStatus@ha
	e_add16i		r3,r3,Dem_NvUdsStatus@l
	rlwinm		r0,r31,0,16,31		# i=r31
	stbx		r4,r3,r0
#       Dem_SetDebouncingCounter(i + 1U, DEM_DB_COUNTER_CLEAR);
	.d2line		568
	diab.addi		r3,r31,1		# i=r31
	rlwinm		r3,r3,0,16,31
	diab.li		r4,2
	bl		Dem_SetDebouncingCounter
#    }
	.d2line		569
	diab.addi		r0,r31,1		# i=r31
	se_addi		r31,1		# i=r31 i=r31
	b		.L247
.L246:
# }
	.d2line		570
	.d2epilogue_begin
.Llo7:
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
.L299:
	.type		Dem_NvResetUdsStatus,@function
	.size		Dem_NvResetUdsStatus,.-Dem_NvResetUdsStatus
# Number of nodes = 32

# Allocations for Dem_NvResetUdsStatus
#	?a4		i
# FUNC(void, DEM_CODE) Dem_NvResetOpCycleState(void)
	.align		2
	.section	.text_vle
        .d2line         572,22
#$$ld
.L305:

#$$bf	Dem_NvResetOpCycleState,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,cr0,lr
	.globl		Dem_NvResetOpCycleState
	.d2_cfa_start __cie
Dem_NvResetOpCycleState:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    uint8 i;
# 
#    for (i = 0; i < Dem_LCfg.num_op_cycles; i++)
	.d2line		576
	diab.li		r3,0		# i=r3
.L253:
.Llo8:
	rlwinm		r0,r3,0,24,31		# i=r3
	lis		r4,(Dem_LCfg+139)@ha
	lbz		r4,(Dem_LCfg+139)@l(r4)
	se_cmp		r0,r4
	bc		0,0,.L252	# ge
#    {
#       Dem_NvOpCycleState[i] = Dem_LCfg.p_op_cycle_init_value[i];
	.d2line		578
	lis		r4,(Dem_LCfg+160)@ha
	lwz		r4,(Dem_LCfg+160)@l(r4)
	rlwinm		r0,r3,0,24,31		# i=r3
	lbzux		r5,r4,r0
	lis		r4,Dem_NvOpCycleState@ha
	e_add16i		r4,r4,Dem_NvOpCycleState@l
	stbx		r5,r4,r0
#    }
	.d2line		579
	diab.addi		r0,r3,1		# i=r3
	se_addi		r3,1		# i=r3 i=r3
	b		.L253
.L252:
# }
	.d2line		580
	.d2epilogue_begin
.Llo9:
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L306:
	.type		Dem_NvResetOpCycleState,@function
	.size		Dem_NvResetOpCycleState,.-Dem_NvResetOpCycleState
# Number of nodes = 31

# Allocations for Dem_NvResetOpCycleState
#	?a4		i
# FUNC(void, DEM_CODE) Dem_NvResetEvMemEntry(uint8 origin, uint8 entryIndex)
	.align		2
	.section	.text_vle
        .d2line         603,22
#$$ld
.L312:

#$$bf	Dem_NvResetEvMemEntry,interprocedural,rasave,nostackparams
	.globl		Dem_NvResetEvMemEntry
	.d2_cfa_start __cie
Dem_NvResetEvMemEntry:
.Llo10:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# entryIndex=r0
	.d2_cfa_offset    108,-1
	mr		r3,r3		# origin=r3 origin=r3
	mr		r0,r4		# entryIndex=r0 entryIndex=r4
	.d2prologue_end
# {
#    CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry = Dem_LCfg.pp_ev_mem[origin]->p_ev_mem_entries[entryIndex];
	.d2line		605
	lis		r4,(Dem_LCfg+20)@ha
.Llo12:
	e_add16i		r4,r4,(Dem_LCfg+20)@l
	rlwinm		r3,r3,2,22,29		# origin=r3 origin=r3
	lwzx		r3,r4,r3		# origin=r3
	lwz		r3,0(r3)		# origin=r3 origin=r3
.Llo13:
	rlwinm		r0,r0,2,22,29		# entryIndex=r0 entryIndex=r0
.Llo14:
	lwzx		r31,r3,r0		# pEvMemEntry=r31 origin=r3
	mr		r31,r31		# pEvMemEntry=r31 pEvMemEntry=r31
#    uint8 i;
# 
#    Dem_MemSet(pEvMemEntry, 0U, sizeof(Dem_NvEvMemEntryType));
	.d2line		608
	mr		r3,r31		# pEvMemEntry=r3 pEvMemEntry=r31
.Llo11:
	diab.li		r4,0
	diab.li		r5,24
	bl		Dem_MemSet
#    pEvMemEntry->dev_a_ff_index = DEM_FF_BUFFER_INVALID;
	.d2line		609
	diab.li		r0,65535		# entryIndex=r0
.Llo15:
	sth		r0,4(r31)		# pEvMemEntry=r31 entryIndex=r0
#    pEvMemEntry->dev_b_ff_index = DEM_FF_BUFFER_INVALID;
	.d2line		610
	sth		r0,6(r31)		# pEvMemEntry=r31 entryIndex=r0
#    pEvMemEntry->ed_storage_index = DEM_ED_BUFFER_INVALID;
	.d2line		611
	sth		r0,2(r31)		# pEvMemEntry=r31 entryIndex=r0
#    for (i = 0; i < DEM_NUMBER_OF_FF_PER_EVENT; i++)
	.d2line		612
	diab.li		r3,0		# i=r3
.L259:
.Llo16:
	rlwinm		r4,r3,0,24,31		# i=r3
	se_cmpi		r4,0
	bc		1,1,.L258	# gt
#    {
#       pEvMemEntry->ff_index[i] = DEM_FF_BUFFER_INVALID;
	.d2line		614
	diab.li		r0,65535		# entryIndex=r0
.Llo17:
	rlwinm		r4,r3,1,23,30		# i=r3
	se_add		r4,r31		# pEvMemEntry=r31
	sth		r0,8(r4)		# entryIndex=r0
#    }
	.d2line		615
	diab.addi		r4,r3,1		# i=r3
	se_addi		r3,1		# i=r3 i=r3
	b		.L259
.L258:
# #if (DEM_OBD_SUPPORT == STD_ON)
#    pEvMemEntry->obd_ff_index = DEM_FF_BUFFER_INVALID;
# #endif /* DEM_OBD_SUPPORT == STD_ON */
# }
	.d2line		619
	.d2epilogue_begin
.Llo18:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# entryIndex=r0
	mtspr		lr,r0		# entryIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L313:
	.type		Dem_NvResetEvMemEntry,@function
	.size		Dem_NvResetEvMemEntry,.-Dem_NvResetEvMemEntry
# Number of nodes = 66

# Allocations for Dem_NvResetEvMemEntry
#	?a4		origin
#	?a5		entryIndex
#	?a6		pEvMemEntry
#	?a7		i
# FUNC(void, DEM_CODE) Dem_NvResetExtendedData(uint8 origin, uint16 entryIndex)
	.align		2
	.section	.text_vle
        .d2line         621,22
#$$ld
.L328:

#$$bf	Dem_NvResetExtendedData,interprocedural,rasave,nostackparams
	.globl		Dem_NvResetExtendedData
	.d2_cfa_start __cie
Dem_NvResetExtendedData:
.Llo19:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# origin=r3 origin=r3
	mr		r0,r4		# entryIndex=r0 entryIndex=r4
	.d2prologue_end
# {
#    if (Dem_LCfg.pp_ed_storage[origin] != NULL_PTR)
	.d2line		623
	lis		r4,(Dem_LCfg+76)@ha
.Llo25:
	e_add16i		r4,r4,(Dem_LCfg+76)@l
	rlwinm		r5,r3,2,22,29		# origin=r3
	lwzx		r4,r4,r5
	se_cmpi		r4,0
	bc		1,2,.L264	# eq
#    {
#       *Dem_LCfg.pp_ed_storage[origin]->p_get_entry_occupied(entryIndex) = DEM_EV_MEM_ENTRY_INVALID;
	.d2line		625
.Llo20:
	diab.li		r31,255
	lis		r4,(Dem_LCfg+76)@ha
	e_add16i		r4,r4,(Dem_LCfg+76)@l
.Llo21:
	rlwinm		r3,r3,2,22,29		# origin=r3 origin=r3
	lwzx		r3,r4,r3		# origin=r3
	lwz		r3,4(r3)		# origin=r3 origin=r3
.Llo22:
	mtspr		ctr,r3		# origin=ctr
	rlwinm		r3,r0,0,16,31		# origin=r3 entryIndex=r0
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo23:
	stb		r31,0(r3)		# origin=r3
.L264:
#    }
# }
	.d2line		627
	.d2epilogue_begin
.Llo24:
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# entryIndex=r0
	mtspr		lr,r0		# entryIndex=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L329:
	.type		Dem_NvResetExtendedData,@function
	.size		Dem_NvResetExtendedData,.-Dem_NvResetExtendedData
# Number of nodes = 33

# Allocations for Dem_NvResetExtendedData
#	?a4		origin
#	?a5		entryIndex
# FUNC(void, DEM_CODE) Dem_NvResetFreezeFrameData(uint8 origin, uint16 entryIndex)
	.align		2
	.section	.text_vle
        .d2line         629,22
#$$ld
.L335:

#$$bf	Dem_NvResetFreezeFrameData,interprocedural,rasave,nostackparams
	.globl		Dem_NvResetFreezeFrameData
	.d2_cfa_start __cie
Dem_NvResetFreezeFrameData:
.Llo26:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)		# origin=r0
	.d2_cfa_offset    108,-1
	mr		r0,r3		# origin=r0 origin=r3
	mr		r3,r4		# entryIndex=r3 entryIndex=r4
	.d2prologue_end
# {
#    *Dem_LCfg.pp_ff_storage[origin]->p_get_entry_occupied(entryIndex) = DEM_EV_MEM_ENTRY_INVALID;
	.d2line		631
.Llo27:
	diab.li		r31,255
	lis		r4,(Dem_LCfg+48)@ha
.Llo30:
	e_add16i		r4,r4,(Dem_LCfg+48)@l
.Llo28:
	rlwinm		r0,r0,2,22,29		# origin=r0 origin=r0
.Llo29:
	lwzx		r4,r4,r0
	lwz		r0,4(r4)		# origin=r0
	mtspr		ctr,r0		# origin=ctr
.Llo31:
	rlwinm		r3,r3,0,16,31		# entryIndex=r3 entryIndex=r3
.Llo32:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo33:
	stb		r31,0(r3)		# entryIndex=r3
# }
	.d2line		632
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)		# origin=r0
	mtspr		lr,r0		# origin=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo34:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L336:
	.type		Dem_NvResetFreezeFrameData,@function
	.size		Dem_NvResetFreezeFrameData,.-Dem_NvResetFreezeFrameData
# Number of nodes = 21

# Allocations for Dem_NvResetFreezeFrameData
#	?a4		origin
#	?a5		entryIndex
# FUNC(void, DEM_CODE) Dem_NvResetDevAFreezeFrameData(uint16 entryIndex)
	.align		2
	.section	.text_vle
        .d2line         634,22
#$$ld
.L342:

#$$bf	Dem_NvResetDevAFreezeFrameData,interprocedural,rasave,nostackparams
	.globl		Dem_NvResetDevAFreezeFrameData
	.d2_cfa_start __cie
Dem_NvResetDevAFreezeFrameData:
.Llo35:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    *Dem_LCfg.p_dev_a_ff_storage->p_get_entry_occupied(entryIndex) = DEM_EV_MEM_ENTRY_INVALID;
	.d2line		636
	diab.li		r31,255
	lis		r4,(Dem_LCfg+60)@ha
	lwz		r4,(Dem_LCfg+60)@l(r4)
	lwz		r0,4(r4)
	mtspr		ctr,r0
	rlwinm		r3,r3,0,16,31		# entryIndex=r3 entryIndex=r3
.Llo36:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo37:
	stb		r31,0(r3)		# entryIndex=r3
# }
	.d2line		637
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo38:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L343:
	.type		Dem_NvResetDevAFreezeFrameData,@function
	.size		Dem_NvResetDevAFreezeFrameData,.-Dem_NvResetDevAFreezeFrameData
# Number of nodes = 16

# Allocations for Dem_NvResetDevAFreezeFrameData
#	?a4		entryIndex
# FUNC(void, DEM_CODE) Dem_NvResetDevBFreezeFrameData(uint16 entryIndex)
	.align		2
	.section	.text_vle
        .d2line         639,22
#$$ld
.L348:

#$$bf	Dem_NvResetDevBFreezeFrameData,interprocedural,rasave,nostackparams
	.globl		Dem_NvResetDevBFreezeFrameData
	.d2_cfa_start __cie
Dem_NvResetDevBFreezeFrameData:
.Llo39:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
#    *Dem_LCfg.p_dev_b_ff_storage->p_get_entry_occupied(entryIndex) = DEM_EV_MEM_ENTRY_INVALID;
	.d2line		641
	diab.li		r31,255
	lis		r4,(Dem_LCfg+68)@ha
	lwz		r4,(Dem_LCfg+68)@l(r4)
	lwz		r0,4(r4)
	mtspr		ctr,r0
	rlwinm		r3,r3,0,16,31		# entryIndex=r3 entryIndex=r3
.Llo40:
#$$fn 0x1ff9 0x0 0x0 0x1
#$$tl 0x8 0x0 0x0 0x1
#$$rs 4 s
	bcctrl		20,0
.Llo41:
	stb		r31,0(r3)		# entryIndex=r3
# }
	.d2line		642
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo42:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L349:
	.type		Dem_NvResetDevBFreezeFrameData,@function
	.size		Dem_NvResetDevBFreezeFrameData,.-Dem_NvResetDevBFreezeFrameData
# Number of nodes = 16

# Allocations for Dem_NvResetDevBFreezeFrameData
#	?a4		entryIndex
# FUNC(void, DEM_CODE) Dem_NvInit(void)
	.align		2
	.section	.text_vle
        .d2line         651,22
#$$ld
.L354:

#$$bf	Dem_NvInit,interprocedural,rasave,nostackparams
	.globl		Dem_NvInit
	.d2_cfa_start __cie
Dem_NvInit:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if (DEM_NVM_SUPPORT == STD_ON)
#    boolean obdAdminError = FALSE;
#    boolean obdPermanentError = FALSE;
#    uint16 i;
# 
#    /* Check that all blocks have been restored correctly and reset the invalid blocks. */
#    for (i = 0; i < DEM_NUMBER_OF_NV_BLOCKS; i++)
#    {
#       if (!NvCheckConsistencyBlock(i))
#       {
# #if (DEM_OBD_SUPPORT == STD_ON)
#          if (DEM_NV_BLOCK_OBD_ADMIN == i)
#          {
#             obdAdminError = TRUE;
#          }
# #endif /* STD_ON == DEM_OBD_SUPPORT */
# #if (DEM_OBD_PERMANENT_SUPPORT == STD_ON)
#          if (DEM_NV_BLOCK_OBD_PERMANENT == i)
#          {
#             obdPermanentError = TRUE;
#          }
# #endif /* DEM_OBD_PERMANENT_SUPPORT == STD_ON */
#       }
#    }
# 
# #if (STD_ON == DEM_OBD_SUPPORT)
#    if (obdAdminError)
#    {
#       /* [VSTAR_Dem_00256]
#        * OBDAdmin block was reset: clear all other blocks except OBDPermanent,
#        * which shall be syncronized after the reset.
#        */
#       uint8 origin;
#       uint8 evMemEntry;
#       uint16 dataEntry;
# 
#       Dem_NvResetUdsStatus();
#       Dem_NvResetSi();
#       Dem_NvResetOpCycleState();
#       Dem_NvResetMaxFdcSinceLastClear();
#       Dem_NvResetAdmin();
#       for (origin = 0; origin < DEM_NUMBER_OF_ORIGINS; origin++)
#       {
#          for (evMemEntry = 0; evMemEntry < Dem_MaxNumEvMemEntries[origin]; evMemEntry++)
#          {
#             Dem_NvResetEvMemEntry(origin, evMemEntry);
#          }
#          for (dataEntry = 0; dataEntry < Dem_LCfg.num_ed_entries; dataEntry++)
#          {
#             Dem_NvResetExtendedData(origin, dataEntry);
#          }
#          for (dataEntry = 0; dataEntry < Dem_LCfg.p_num_ff_entries[origin]; dataEntry++)
#          {
#             Dem_NvResetFreezeFrameData(origin, dataEntry);
#          }
#       }
#       for (dataEntry = 0; dataEntry < Dem_LCfg.num_dev_a_entries; dataEntry++)
#       {
#          Dem_NvResetDevAFreezeFrameData(dataEntry);
#       }
#       for (dataEntry = 0; dataEntry < Dem_LCfg.num_dev_b_entries; dataEntry++)
#       {
#          Dem_NvResetDevBFreezeFrameData(dataEntry);
#       }
#       for (dataEntry = 0; dataEntry < Dem_LCfg.num_obd_ff_entries; dataEntry++)
#       {
#          Dem_NvResetOBDFreezeFrameData(dataEntry);
#       }
# #if (STD_ON == DEM_OBD_PERMANENT_SUPPORT)
#       NvSyncOBDPermanent();
# #endif /*(STD_ON == DEM_OBD_PERMANENT_SUPPORT)*/
#    }
# #endif /*(STD_ON == DEM_OBD_SUPPORT)*/
# #if (DEM_OBD_PERMANENT_SUPPORT == STD_ON)
#    if (obdPermanentError)
#    {
#       /* [VSTAR_Dem_00257] */
#       Dem_NvResetAll();
#    }
# #endif /* DEM_OBD_PERMANENT_SUPPORT == STD_ON */
# 
#    if ((FALSE == obdAdminError) && (FALSE == obdPermanentError))
#    {
#       /* [VSTAR_Dem_00258]
#        * Check that the blocks are in sync.
#        * The reason is to detect inconsistencies due to either a power loss between the writing of blocks
#        * or that one block was reset and not another.
#        */
#       Dem_NvSyncUdsStatusAndSi();
#       NvSyncAdmin();
#       NvSyncEvMemEntry();
#       NvSyncExtendedData();
#       NvSyncFreezeFrameData();
#       NvSyncDevAFreezeFrameData();
#       NvSyncDevBFreezeFrameData();
# #if (STD_ON == DEM_OBD_SUPPORT)
#       NvSyncOBDFreezeFrameData();
# #endif /* DEM_OBD_SUPPORT == STD_ON */
# #if (STD_ON == DEM_OBD_PERMANENT_SUPPORT)
#       NvSyncOBDPermanent();
# #endif /* DEM_OBD_PERMANENT_SUPPORT == STD_ON */
#    }
# #endif /* DEM_NVM_SUPPORT == STD_ON */
# 
# #if (DEM_NVM_SUPPORT == STD_OFF)
#    /* [VSTAR_Dem_00286] */
#    Dem_NvResetAll();
	.d2line		759
	bl		Dem_NvResetAll
# #endif /* DEM_NVM_SUPPORT == STD_OFF */
# }
	.d2line		761
	.d2epilogue_begin
	lwz		r0,20(r1)
	mtspr		lr,r0
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L355:
	.type		Dem_NvInit,@function
	.size		Dem_NvInit,.-Dem_NvInit
# Number of nodes = 2

# Allocations for Dem_NvInit

# Allocations for module
	.section	.text_vle
	.0byte		.L369
	.section	.text_vle
#$$ld
.L5:
.L554:	.d2filenum "C:\\WINDRI~1\\COMPIL~1\\DIAB-5~1.4\\include\\diab/lpragma.h"
.L535:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dem\\ssc\\make\\..\\inc\\Dem_Nv.h"
.L375:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\Dem_Lcfg.h"
.L370:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dem\\ssc\\make\\..\\inc\\Dem_Int.h"
.L358:	.d2filenum "gen\\MPC5746R_ECU\\WindRiver\\Dem_NvM.h"
.L275:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dem\\ssc\\make\\..\\src\\Dem_Nv.c"
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
	.uleb128	8
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
	.uleb128	9
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
	.uleb128	10
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
	.uleb128	11
	.uleb128	40
	.byte		0x0
	.uleb128	3
	.uleb128	8
	.uleb128	28
	.uleb128	13
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	12
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
	.uleb128	13
	.uleb128	22
	.byte		0x0
	.uleb128	3
	.uleb128	8
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
	.uleb128	15
	.uleb128	38
	.byte		0x0
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	16
	.uleb128	1
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	17
	.uleb128	33
	.byte		0x0
	.uleb128	47
	.uleb128	15
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	18
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	19
	.uleb128	21
	.byte		0x1
	.uleb128	1
	.uleb128	19
	.uleb128	73
	.uleb128	16
	.uleb128	39
	.uleb128	12
	.uleb128	0
	.uleb128	0
	.section	.debug_abbrev,,n
	.uleb128	20
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\DIAG\\Dem\\ssc\\make\\..\\src\\Dem_Nv.c"
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
.L276:
	.sleb128	2
	.4byte		.L272-.L2
	.byte		"Dem_NvResetAll"
	.byte		0
	.4byte		.L275
	.uleb128	502
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L273
	.4byte		.L274
	.section	.debug_info,,n
.L277:
	.sleb128	3
	.4byte		.L275
	.uleb128	504
	.uleb128	11
	.byte		"i"
	.byte		0
	.4byte		.L278
	.4byte		.L280
	.section	.debug_info,,n
	.sleb128	0
.L272:
	.section	.debug_info,,n
.L285:
	.sleb128	2
	.4byte		.L282-.L2
	.byte		"Dem_NvResetAdmin"
	.byte		0
	.4byte		.L275
	.uleb128	512
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L283
	.4byte		.L284
.L286:
	.sleb128	3
	.4byte		.L275
	.uleb128	514
	.uleb128	10
	.byte		"i"
	.byte		0
	.4byte		.L287
	.4byte		.L289
	.section	.debug_info,,n
	.sleb128	4
	.4byte		.L293
	.4byte		.L290
	.4byte		.L291
.L294:
	.sleb128	3
	.4byte		.L275
	.uleb128	527
	.uleb128	16
	.byte		"evMemEntry"
	.byte		0
	.4byte		.L287
	.4byte		.L295
	.section	.debug_info,,n
	.sleb128	0
.L293:
	.section	.debug_info,,n
	.sleb128	0
.L282:
	.section	.debug_info,,n
.L300:
	.sleb128	2
	.4byte		.L297-.L2
	.byte		"Dem_NvResetUdsStatus"
	.byte		0
	.4byte		.L275
	.uleb128	561
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L298
	.4byte		.L299
.L301:
	.sleb128	3
	.4byte		.L275
	.uleb128	563
	.uleb128	11
	.byte		"i"
	.byte		0
	.4byte		.L278
	.4byte		.L302
	.section	.debug_info,,n
	.sleb128	0
.L297:
	.section	.debug_info,,n
.L307:
	.sleb128	2
	.4byte		.L304-.L2
	.byte		"Dem_NvResetOpCycleState"
	.byte		0
	.4byte		.L275
	.uleb128	572
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L305
	.4byte		.L306
.L308:
	.sleb128	3
	.4byte		.L275
	.uleb128	574
	.uleb128	10
	.byte		"i"
	.byte		0
	.4byte		.L287
	.4byte		.L309
	.section	.debug_info,,n
	.sleb128	0
.L304:
	.section	.debug_info,,n
.L314:
	.sleb128	2
	.4byte		.L311-.L2
	.byte		"Dem_NvResetEvMemEntry"
	.byte		0
	.4byte		.L275
	.uleb128	603
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L312
	.4byte		.L313
	.section	.debug_info,,n
	.sleb128	5
	.4byte		.L275
	.uleb128	603
	.uleb128	22
	.byte		"origin"
	.byte		0
	.4byte		.L287
	.4byte		.L315
	.sleb128	5
	.4byte		.L275
	.uleb128	603
	.uleb128	22
	.byte		"entryIndex"
	.byte		0
	.4byte		.L287
	.4byte		.L316
.L317:
	.sleb128	3
	.4byte		.L275
	.uleb128	605
	.uleb128	46
	.byte		"pEvMemEntry"
	.byte		0
	.4byte		.L318
	.4byte		.L323
.L324:
	.sleb128	3
	.4byte		.L275
	.uleb128	606
	.uleb128	10
	.byte		"i"
	.byte		0
	.4byte		.L287
	.4byte		.L325
	.section	.debug_info,,n
	.sleb128	0
.L311:
	.section	.debug_info,,n
.L330:
	.sleb128	2
	.4byte		.L327-.L2
	.byte		"Dem_NvResetExtendedData"
	.byte		0
	.4byte		.L275
	.uleb128	621
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L328
	.4byte		.L329
	.sleb128	5
	.4byte		.L275
	.uleb128	621
	.uleb128	22
	.byte		"origin"
	.byte		0
	.4byte		.L287
	.4byte		.L331
	.sleb128	5
	.4byte		.L275
	.uleb128	621
	.uleb128	22
	.byte		"entryIndex"
	.byte		0
	.4byte		.L278
	.4byte		.L332
	.section	.debug_info,,n
	.sleb128	0
.L327:
	.section	.debug_info,,n
.L337:
	.sleb128	2
	.4byte		.L334-.L2
	.byte		"Dem_NvResetFreezeFrameData"
	.byte		0
	.4byte		.L275
	.uleb128	629
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L335
	.4byte		.L336
	.sleb128	5
	.4byte		.L275
	.uleb128	629
	.uleb128	22
	.byte		"origin"
	.byte		0
	.4byte		.L287
	.4byte		.L338
	.sleb128	5
	.4byte		.L275
	.uleb128	629
	.uleb128	22
	.byte		"entryIndex"
	.byte		0
	.4byte		.L278
	.4byte		.L339
	.section	.debug_info,,n
	.sleb128	0
.L334:
	.section	.debug_info,,n
.L344:
	.sleb128	2
	.4byte		.L341-.L2
	.byte		"Dem_NvResetDevAFreezeFrameData"
	.byte		0
	.4byte		.L275
	.uleb128	634
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L342
	.4byte		.L343
	.sleb128	5
	.4byte		.L275
	.uleb128	634
	.uleb128	22
	.byte		"entryIndex"
	.byte		0
	.4byte		.L278
	.4byte		.L345
	.section	.debug_info,,n
	.sleb128	0
.L341:
	.section	.debug_info,,n
.L350:
	.sleb128	2
	.4byte		.L347-.L2
	.byte		"Dem_NvResetDevBFreezeFrameData"
	.byte		0
	.4byte		.L275
	.uleb128	639
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L348
	.4byte		.L349
	.sleb128	5
	.4byte		.L275
	.uleb128	639
	.uleb128	22
	.byte		"entryIndex"
	.byte		0
	.4byte		.L278
	.4byte		.L351
	.section	.debug_info,,n
	.sleb128	0
.L347:
	.section	.debug_info,,n
.L356:
	.sleb128	2
	.4byte		.L353-.L2
	.byte		"Dem_NvInit"
	.byte		0
	.4byte		.L275
	.uleb128	651
	.uleb128	22
	.byte		0x1
	.byte		0x1
	.4byte		.L354
	.4byte		.L355
	.section	.debug_info,,n
	.sleb128	0
.L353:
	.section	.debug_info,,n
.L357:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L358
	.uleb128	252
	.uleb128	44
	.byte		"Dem_NvUdsStatus"
	.byte		0
	.4byte		.L359
	.0byte		.L357
.L362:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L358
	.uleb128	253
	.uleb128	50
	.byte		"Dem_NvOpCycleState"
	.byte		0
	.4byte		.L363
.L366:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L358
	.uleb128	254
	.uleb128	38
	.byte		"Dem_NvAdmin"
	.byte		0
	.4byte		.L367
.L369:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L370
	.uleb128	1346
	.uleb128	32
	.byte		"Dem_MaxNumEvMemEntries"
	.byte		0
	.4byte		.L371
	.section	.debug_info,,n
.L374:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L375
	.uleb128	80
	.uleb128	50
	.byte		"Dem_NvResetBlock"
	.byte		0
	.4byte		.L376
.L383:
	.sleb128	6
	.byte		0x1
	.byte		0x1
	.4byte		.L375
	.uleb128	81
	.uleb128	39
	.byte		"Dem_LCfg"
	.byte		0
	.4byte		.L384
	.section	.debug_info,,n
.L387:
	.sleb128	7
	.byte		0x1
	.4byte		.L275
	.uleb128	351
	.uleb128	23
	.byte		"Dem_NvStorageOngoing"
	.byte		0
	.4byte		.L388
	.sleb128	5
	.byte		0x3
	.4byte		Dem_NvStorageOngoing
	.comm		Dem_NvStorageOngoing,1,0
.L389:
	.sleb128	7
	.byte		0x1
	.4byte		.L275
	.uleb128	352
	.uleb128	23
	.byte		"Dem_NvAllStorageOngoing"
	.byte		0
	.4byte		.L388
	.sleb128	5
	.byte		0x3
	.4byte		Dem_NvAllStorageOngoing
	.comm		Dem_NvAllStorageOngoing,1,0
	.section	.debug_info,,n
.L386:
	.sleb128	8
	.4byte		.L370
	.uleb128	770
	.uleb128	14
	.4byte		.L390-.L2
	.byte		"Dem_LCfg_Tag"
	.byte		0
	.uleb128	180
	.section	.debug_info,,n
.L171:
	.sleb128	9
	.byte		"p_event_state_buffer"
	.byte		0
	.4byte		.L391
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L172:
	.sleb128	9
	.byte		"p_event_state_update"
	.byte		0
	.4byte		.L391
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L173:
	.sleb128	9
	.byte		"p_op_cycle_change_buffer"
	.byte		0
	.4byte		.L392
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L174:
	.sleb128	9
	.byte		"op_cycle_change_buffer_size"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L175:
	.sleb128	9
	.byte		"p_events"
	.byte		0
	.4byte		.L395
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L176:
	.sleb128	9
	.byte		"pp_ev_mem"
	.byte		0
	.4byte		.L399
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L177:
	.sleb128	9
	.byte		"p_data_element"
	.byte		0
	.4byte		.L405
	.sleb128	2
	.byte		0x23
	.uleb128	28
	.byte		0x1
.L178:
	.sleb128	9
	.byte		"p_ff_rec_num_classes"
	.byte		0
	.4byte		.L409
	.sleb128	2
	.byte		0x23
	.uleb128	32
	.byte		0x1
.L179:
	.sleb128	9
	.byte		"p_ff_did_define"
	.byte		0
	.4byte		.L413
	.sleb128	2
	.byte		0x23
	.uleb128	36
	.byte		0x1
.L180:
	.sleb128	9
	.byte		"num_ff_dids"
	.byte		0
	.4byte		.L278
	.sleb128	2
	.byte		0x23
	.uleb128	40
	.byte		0x1
.L181:
	.sleb128	9
	.byte		"p_ff_prestorage"
	.byte		0
	.4byte		.L417
	.sleb128	2
	.byte		0x23
	.uleb128	44
	.byte		0x1
.L182:
	.sleb128	9
	.byte		"pp_ff_storage"
	.byte		0
	.4byte		.L421
	.sleb128	2
	.byte		0x23
	.uleb128	48
	.byte		0x1
.L183:
	.sleb128	9
	.byte		"p_num_ff_entries"
	.byte		0
	.4byte		.L427
	.sleb128	2
	.byte		0x23
	.uleb128	56
	.byte		0x1
.L184:
	.sleb128	9
	.byte		"p_dev_a_ff_storage"
	.byte		0
	.4byte		.L423
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L185:
	.sleb128	9
	.byte		"num_dev_a_entries"
	.byte		0
	.4byte		.L278
	.sleb128	2
	.byte		0x23
	.uleb128	64
	.byte		0x1
.L186:
	.sleb128	9
	.byte		"p_dev_b_ff_storage"
	.byte		0
	.4byte		.L423
	.sleb128	2
	.byte		0x23
	.uleb128	68
	.byte		0x1
.L187:
	.sleb128	9
	.byte		"num_dev_b_entries"
	.byte		0
	.4byte		.L278
	.sleb128	2
	.byte		0x23
	.uleb128	72
	.byte		0x1
.L188:
	.sleb128	9
	.byte		"pp_ed_storage"
	.byte		0
	.4byte		.L429
	.sleb128	2
	.byte		0x23
	.uleb128	76
	.byte		0x1
.L189:
	.sleb128	9
	.byte		"num_ed_entries"
	.byte		0
	.4byte		.L278
	.sleb128	2
	.byte		0x23
	.uleb128	84
	.byte		0x1
.L190:
	.sleb128	9
	.byte		"p_ext_ed_record_define"
	.byte		0
	.4byte		.L431
	.sleb128	2
	.byte		0x23
	.uleb128	88
	.byte		0x1
.L191:
	.sleb128	9
	.byte		"num_ext_ed_records"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	92
	.byte		0x1
.L192:
	.sleb128	9
	.byte		"p_int_ed_record_define"
	.byte		0
	.4byte		.L435
	.sleb128	2
	.byte		0x23
	.uleb128	96
	.byte		0x1
.L193:
	.sleb128	9
	.byte		"num_int_ed_records"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	100
	.byte		0x1
.L194:
	.sleb128	9
	.byte		"p_ed_classes"
	.byte		0
	.4byte		.L439
	.sleb128	2
	.byte		0x23
	.uleb128	104
	.byte		0x1
.L195:
	.sleb128	9
	.byte		"p_indicator_status"
	.byte		0
	.4byte		.L443
	.sleb128	2
	.byte		0x23
	.uleb128	108
	.byte		0x1
.L196:
	.sleb128	9
	.byte		"p_dtc_storage"
	.byte		0
	.4byte		.L445
	.sleb128	2
	.byte		0x23
	.uleb128	112
	.byte		0x1
.L197:
	.sleb128	9
	.byte		"p_dtc_suppressed"
	.byte		0
	.4byte		.L391
	.sleb128	2
	.byte		0x23
	.uleb128	116
	.byte		0x1
.L198:
	.sleb128	9
	.byte		"p_ff_length"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	120
	.byte		0x1
.L199:
	.sleb128	9
	.byte		"p_counter_db_counter"
	.byte		0
	.4byte		.L447
	.sleb128	2
	.byte		0x23
	.uleb128	124
	.byte		0x1
.L200:
	.sleb128	9
	.byte		"num_counter_db_events"
	.byte		0
	.4byte		.L278
	.sleb128	3
	.byte		0x23
	.uleb128	128
	.byte		0x1
.L201:
	.sleb128	9
	.byte		"p_monitor_db_data"
	.byte		0
	.4byte		.L450
	.sleb128	3
	.byte		0x23
	.uleb128	132
	.byte		0x1
.L202:
	.sleb128	9
	.byte		"num_events"
	.byte		0
	.4byte		.L454
	.sleb128	3
	.byte		0x23
	.uleb128	136
	.byte		0x1
.L203:
	.sleb128	9
	.byte		"num_indicators"
	.byte		0
	.4byte		.L287
	.sleb128	3
	.byte		0x23
	.uleb128	138
	.byte		0x1
.L204:
	.sleb128	9
	.byte		"num_op_cycles"
	.byte		0
	.4byte		.L287
	.sleb128	3
	.byte		0x23
	.uleb128	139
	.byte		0x1
.L205:
	.sleb128	9
	.byte		"num_dtc_groups"
	.byte		0
	.4byte		.L287
	.sleb128	3
	.byte		0x23
	.uleb128	140
	.byte		0x1
.L206:
	.sleb128	9
	.byte		"num_ff_classes"
	.byte		0
	.4byte		.L278
	.sleb128	3
	.byte		0x23
	.uleb128	142
	.byte		0x1
.L207:
	.sleb128	9
	.byte		"max_handled_passed_events_per_scheduling"
	.byte		0
	.4byte		.L278
	.sleb128	3
	.byte		0x23
	.uleb128	144
	.byte		0x1
.L208:
	.sleb128	9
	.byte		"max_handled_failed_events_per_scheduling"
	.byte		0
	.4byte		.L278
	.sleb128	3
	.byte		0x23
	.uleb128	146
	.byte		0x1
.L209:
	.sleb128	9
	.byte		"max_cleared_per_scheduling"
	.byte		0
	.4byte		.L278
	.sleb128	3
	.byte		0x23
	.uleb128	148
	.byte		0x1
.L210:
	.sleb128	9
	.byte		"p_gen_cbk_event_status_changed"
	.byte		0
	.4byte		.L455
	.sleb128	3
	.byte		0x23
	.uleb128	152
	.byte		0x1
.L211:
	.sleb128	9
	.byte		"p_gen_cbk_event_data_changed"
	.byte		0
	.4byte		.L459
	.sleb128	3
	.byte		0x23
	.uleb128	156
	.byte		0x1
.L212:
	.sleb128	9
	.byte		"p_op_cycle_init_value"
	.byte		0
	.4byte		.L462
	.sleb128	3
	.byte		0x23
	.uleb128	160
	.byte		0x1
.L213:
	.sleb128	9
	.byte		"pp_dtc_status_changed"
	.byte		0
	.4byte		.L464
	.sleb128	3
	.byte		0x23
	.uleb128	164
	.byte		0x1
.L214:
	.sleb128	9
	.byte		"p_internal_dtc_groups"
	.byte		0
	.4byte		.L472
	.sleb128	3
	.byte		0x23
	.uleb128	168
	.byte		0x1
.L215:
	.sleb128	9
	.byte		"num_dtc_status_changed"
	.byte		0
	.4byte		.L287
	.sleb128	3
	.byte		0x23
	.uleb128	172
	.byte		0x1
.L216:
	.sleb128	9
	.byte		"service_04_clear_all"
	.byte		0
	.4byte		.L388
	.sleb128	3
	.byte		0x23
	.uleb128	173
	.byte		0x1
.L217:
	.sleb128	9
	.byte		"clear_internal_events"
	.byte		0
	.4byte		.L388
	.sleb128	3
	.byte		0x23
	.uleb128	174
	.byte		0x1
.L218:
	.sleb128	9
	.byte		"max_allowed_standard_ff_length"
	.byte		0
	.4byte		.L278
	.sleb128	3
	.byte		0x23
	.uleb128	176
	.byte		0x1
	.sleb128	0
.L390:
.L394:
	.sleb128	8
	.4byte		.L370
	.uleb128	770
	.uleb128	14
	.4byte		.L476-.L2
	.byte		"Dem_SetOpCycleParamType_Tag"
	.byte		0
	.uleb128	2
.L169:
	.sleb128	9
	.byte		"operation_cycle_id"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L170:
	.sleb128	9
	.byte		"cycle_state"
	.byte		0
	.4byte		.L365
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
	.sleb128	0
.L476:
.L420:
	.sleb128	8
	.4byte		.L370
	.uleb128	770
	.uleb128	14
	.4byte		.L477-.L2
	.byte		"Dem_FFPrestorageType_Tag"
	.byte		0
	.uleb128	12
.L166:
	.sleb128	9
	.byte		"p_get_prestored_ff_entry"
	.byte		0
	.4byte		.L478
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L167:
	.sleb128	9
	.byte		"p_entry_occupied"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L168:
	.sleb128	9
	.byte		"num_prestore_entries"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L477:
.L426:
	.sleb128	8
	.4byte		.L370
	.uleb128	770
	.uleb128	14
	.4byte		.L483-.L2
	.byte		"Dem_DataStorageType_Tag"
	.byte		0
	.uleb128	12
.L163:
	.sleb128	9
	.byte		"p_get_buffer_entry"
	.byte		0
	.4byte		.L484
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L164:
	.sleb128	9
	.byte		"p_get_entry_occupied"
	.byte		0
	.4byte		.L488
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L165:
	.sleb128	9
	.byte		"buffer_length"
	.byte		0
	.4byte		.L278
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L483:
.L438:
	.sleb128	8
	.4byte		.L370
	.uleb128	770
	.uleb128	14
	.4byte		.L491-.L2
	.byte		"Dem_IntExtendedDataType_Tag"
	.byte		0
	.uleb128	8
.L161:
	.sleb128	9
	.byte		"record_number"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L162:
	.sleb128	9
	.byte		"p_read_int_data"
	.byte		0
	.4byte		.L492
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L491:
.L434:
	.sleb128	8
	.4byte		.L370
	.uleb128	770
	.uleb128	14
	.4byte		.L499-.L2
	.byte		"Dem_ExtExtendedDataType_Tag"
	.byte		0
	.uleb128	8
.L157:
	.sleb128	9
	.byte		"record_number"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L158:
	.sleb128	9
	.byte		"update"
	.byte		0
	.4byte		.L388
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L159:
	.sleb128	9
	.byte		"size"
	.byte		0
	.4byte		.L278
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L160:
	.sleb128	9
	.byte		"p_read_data"
	.byte		0
	.4byte		.L500
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L499:
.L412:
	.sleb128	8
	.4byte		.L370
	.uleb128	770
	.uleb128	14
	.4byte		.L504-.L2
	.byte		"Dem_FreezeFrameRecNumClassType_Tag"
	.byte		0
	.uleb128	8
.L155:
	.sleb128	9
	.byte		"p_ff_record"
	.byte		0
	.4byte		.L505
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L156:
	.sleb128	9
	.byte		"num_ff"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L504:
.L508:
	.sleb128	8
	.4byte		.L370
	.uleb128	770
	.uleb128	14
	.4byte		.L509-.L2
	.byte		"Dem_FreezeFrameRecordClassType_Tag"
	.byte		0
	.uleb128	8
.L152:
	.sleb128	9
	.byte		"record_number"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L153:
	.sleb128	9
	.byte		"ff_update"
	.byte		0
	.4byte		.L388
	.sleb128	2
	.byte		0x23
	.uleb128	1
	.byte		0x1
.L154:
	.sleb128	9
	.byte		"ff_record_trigger"
	.byte		0
	.4byte		.L510
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L509:
.L416:
	.sleb128	8
	.4byte		.L370
	.uleb128	658
	.uleb128	14
	.4byte		.L512-.L2
	.byte		"Dem_FFDidDefineType_Tag"
	.byte		0
	.uleb128	4
.L150:
	.sleb128	9
	.byte		"did"
	.byte		0
	.4byte		.L278
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L151:
	.sleb128	9
	.byte		"data_element_idx"
	.byte		0
	.4byte		.L278
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
	.sleb128	0
.L512:
.L408:
	.sleb128	8
	.4byte		.L370
	.uleb128	658
	.uleb128	14
	.4byte		.L513-.L2
	.byte		"DataArrayType_Tag"
	.byte		0
	.uleb128	8
.L148:
	.sleb128	9
	.byte		"size"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L149:
	.sleb128	9
	.byte		"pReadData"
	.byte		0
	.4byte		.L500
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
	.sleb128	0
.L513:
.L404:
	.sleb128	8
	.4byte		.L370
	.uleb128	658
	.uleb128	14
	.4byte		.L514-.L2
	.byte		"Dem_EvMem_Tag"
	.byte		0
	.uleb128	20
.L143:
	.sleb128	9
	.byte		"p_ev_mem_entries"
	.byte		0
	.4byte		.L515
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L144:
	.sleb128	9
	.byte		"p_first"
	.byte		0
	.4byte		.L487
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L145:
	.sleb128	9
	.byte		"p_last"
	.byte		0
	.4byte		.L487
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L146:
	.sleb128	9
	.byte		"p_next"
	.byte		0
	.4byte		.L487
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L147:
	.sleb128	9
	.byte		"p_prev"
	.byte		0
	.4byte		.L487
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
	.sleb128	0
.L514:
.L398:
	.sleb128	8
	.4byte		.L370
	.uleb128	658
	.uleb128	14
	.4byte		.L516-.L2
	.byte		"Dem_LCfgEvent_Tag"
	.byte		0
	.uleb128	20
.L136:
	.sleb128	9
	.byte		"p_init_m_for_e"
	.byte		0
	.4byte		.L517
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L137:
	.sleb128	9
	.byte		"ppEventStatusChanged"
	.byte		0
	.4byte		.L522
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L138:
	.sleb128	9
	.byte		"pClearEventAllowed"
	.byte		0
	.4byte		.L528
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L139:
	.sleb128	9
	.byte		"p_event_data_changed"
	.byte		0
	.4byte		.L531
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L140:
	.sleb128	9
	.byte		"debounce_counter_idx"
	.byte		0
	.4byte		.L278
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L141:
	.sleb128	9
	.byte		"num_evStatusCh"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L142:
	.sleb128	9
	.byte		"debounce_alg"
	.byte		0
	.4byte		.L534
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
	.sleb128	0
.L516:
.L322:
	.sleb128	8
	.4byte		.L535
	.uleb128	76
	.uleb128	14
	.4byte		.L536-.L2
	.byte		"Dem_NvEvMemEntry_Tag"
	.byte		0
	.uleb128	24
.L116:
	.sleb128	9
	.byte		"event_id"
	.byte		0
	.4byte		.L454
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L117:
	.sleb128	9
	.byte		"ed_storage_index"
	.byte		0
	.4byte		.L278
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L118:
	.sleb128	9
	.byte		"dev_a_ff_index"
	.byte		0
	.4byte		.L278
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L119:
	.sleb128	9
	.byte		"dev_b_ff_index"
	.byte		0
	.4byte		.L278
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
.L120:
	.sleb128	9
	.byte		"ff_index"
	.byte		0
	.4byte		.L537
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L121:
	.sleb128	9
	.byte		"record_numbers"
	.byte		0
	.4byte		.L539
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L122:
	.sleb128	9
	.byte		"num_stored_ff"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L123:
	.sleb128	9
	.byte		"ed_stored"
	.byte		0
	.4byte		.L388
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L124:
	.sleb128	9
	.byte		"uds_status"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
.L125:
	.sleb128	9
	.byte		"si"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	14
	.byte		0x1
.L126:
	.sleb128	9
	.byte		"occurrence_counter"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	15
	.byte		0x1
.L127:
	.sleb128	9
	.byte		"cycles_since_last_failed"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	16
	.byte		0x1
.L128:
	.sleb128	9
	.byte		"cycles_since_first_failed"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	17
	.byte		0x1
.L129:
	.sleb128	9
	.byte		"failed_cycles"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	18
	.byte		0x1
.L130:
	.sleb128	9
	.byte		"aging_counter"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	19
	.byte		0x1
.L131:
	.sleb128	9
	.byte		"wir_bits"
	.byte		0
	.4byte		.L541
	.sleb128	2
	.byte		0x23
	.uleb128	20
	.byte		0x1
.L132:
	.sleb128	9
	.byte		"failure_counter"
	.byte		0
	.4byte		.L543
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
.L133:
	.sleb128	9
	.byte		"healing_counter"
	.byte		0
	.4byte		.L545
	.sleb128	2
	.byte		0x23
	.uleb128	22
	.byte		0x1
	.sleb128	0
.L536:
.L368:
	.sleb128	8
	.4byte		.L535
	.uleb128	76
	.uleb128	14
	.4byte		.L547-.L2
	.byte		"Dem_NvAdmin_Tag"
	.byte		0
	.uleb128	32
.L108:
	.sleb128	9
	.byte		"event_occurrence_info"
	.byte		0
	.4byte		.L548
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L109:
	.sleb128	9
	.byte		"event_memory_overflow_ind"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L110:
	.sleb128	9
	.byte		"primary_first_ev_mem_entry"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	9
	.byte		0x1
.L111:
	.sleb128	9
	.byte		"primary_last_ev_mem_entry"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	10
	.byte		0x1
.L112:
	.sleb128	9
	.byte		"primary_next_ev_mem_entry"
	.byte		0
	.4byte		.L550
	.sleb128	2
	.byte		0x23
	.uleb128	11
	.byte		0x1
.L113:
	.sleb128	9
	.byte		"primary_prev_ev_mem_entry"
	.byte		0
	.4byte		.L552
	.sleb128	2
	.byte		0x23
	.uleb128	21
	.byte		0x1
	.sleb128	0
.L547:
.L549:
	.sleb128	8
	.4byte		.L554
	.uleb128	69
	.uleb128	1
	.4byte		.L555-.L2
	.byte		"Dem_EventOccurrenceInfoType_Tag"
	.byte		0
	.uleb128	8
.L60:
	.sleb128	9
	.byte		"most_recent_failed_event"
	.byte		0
	.4byte		.L454
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L61:
	.sleb128	9
	.byte		"most_recent_confirmed_event"
	.byte		0
	.4byte		.L454
	.sleb128	2
	.byte		0x23
	.uleb128	2
	.byte		0x1
.L62:
	.sleb128	9
	.byte		"first_failed_event"
	.byte		0
	.4byte		.L454
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L63:
	.sleb128	9
	.byte		"first_confirmed_event"
	.byte		0
	.4byte		.L454
	.sleb128	2
	.byte		0x23
	.uleb128	6
	.byte		0x1
	.sleb128	0
.L555:
.L442:
	.sleb128	8
	.4byte		.L554
	.uleb128	69
	.uleb128	1
	.4byte		.L556-.L2
	.byte		"Dem_ExtendedData_Tag"
	.byte		0
	.uleb128	16
.L56:
	.sleb128	9
	.byte		"p_ext_ed_record_index"
	.byte		0
	.4byte		.L557
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L57:
	.sleb128	9
	.byte		"num_ext_ed_records"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L58:
	.sleb128	9
	.byte		"p_int_ed_record_index"
	.byte		0
	.4byte		.L557
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L59:
	.sleb128	9
	.byte		"num_int_ed_records"
	.byte		0
	.4byte		.L287
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L556:
.L453:
	.sleb128	8
	.4byte		.L554
	.uleb128	69
	.uleb128	1
	.4byte		.L558-.L2
	.byte		"Dem_MonitorDebouncing_Tag"
	.byte		0
	.uleb128	4
.L44:
	.sleb128	9
	.byte		"pGetFDCnt"
	.byte		0
	.4byte		.L559
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
	.sleb128	0
.L558:
.L475:
	.sleb128	8
	.4byte		.L554
	.uleb128	69
	.uleb128	1
	.4byte		.L566-.L2
	.byte		"Dem_InternalGroupOfDtc_Tag"
	.byte		0
	.uleb128	12
.L32:
	.sleb128	9
	.byte		"dtc_group"
	.byte		0
	.4byte		.L470
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L33:
	.sleb128	9
	.byte		"start_dtc_value"
	.byte		0
	.4byte		.L470
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L34:
	.sleb128	9
	.byte		"end_dtc_value"
	.byte		0
	.4byte		.L470
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L566:
	.section	.debug_info,,n
.L511:
	.sleb128	10
	.4byte		.L370
	.uleb128	770
	.uleb128	14
	.4byte		.L567-.L2
	.byte		"Dem_RecordTriggerType_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	11
	.byte		"DEM_TRIGGER_ON_CONFIRMED"
	.byte		0
	.sleb128	0
	.sleb128	11
	.byte		"DEM_TRIGGER_ON_FDC_THRESHOLD"
	.byte		0
	.sleb128	1
	.sleb128	11
	.byte		"DEM_TRIGGER_ON_PENDING"
	.byte		0
	.sleb128	2
	.sleb128	11
	.byte		"DEM_TRIGGER_ON_TEST_FAILED"
	.byte		0
	.sleb128	3
	.sleb128	0
.L567:
	.section	.debug_info,,n
.L279:
	.sleb128	12
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
	.section	.debug_info,,n
.L278:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L279
.L288:
	.sleb128	12
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L287:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L288
.L321:
	.sleb128	13
	.byte		"Dem_NvEvMemEntryType"
	.byte		0
	.4byte		.L322
	.section	.debug_info,,n
.L320:
	.sleb128	14
	.4byte		.L321
.L319:
	.sleb128	13
	.byte		"Dem_NvEvMemEntryPtrType"
	.byte		0
	.4byte		.L320
	.section	.debug_info,,n
.L318:
	.sleb128	15
	.4byte		.L319
.L361:
	.sleb128	13
	.byte		"Dem_UdsStatusByteType"
	.byte		0
	.4byte		.L287
	.section	.debug_info,,n
.L359:
	.sleb128	16
	.4byte		.L360-.L2
	.4byte		.L361
	.section	.debug_info,,n
	.sleb128	17
	.uleb128	3
	.sleb128	0
.L360:
.L365:
	.sleb128	13
	.byte		"Dem_OperationCycleStateType"
	.byte		0
	.4byte		.L287
.L363:
	.sleb128	16
	.4byte		.L364-.L2
	.4byte		.L365
	.sleb128	17
	.uleb128	0
	.sleb128	0
.L364:
.L367:
	.sleb128	13
	.byte		"Dem_NvAdminType"
	.byte		0
	.4byte		.L368
.L373:
	.sleb128	15
	.4byte		.L287
.L371:
	.sleb128	16
	.4byte		.L372-.L2
	.4byte		.L373
	.sleb128	17
	.uleb128	1
	.sleb128	0
.L372:
	.section	.debug_info,,n
.L381:
	.sleb128	18
	.4byte		.L382-.L2
	.byte		0x1
	.sleb128	0
.L382:
.L380:
	.sleb128	14
	.4byte		.L381
.L379:
	.sleb128	13
	.byte		"Dem_ResetNvBlockPtrType"
	.byte		0
	.4byte		.L380
.L378:
	.sleb128	15
	.4byte		.L379
.L376:
	.sleb128	16
	.4byte		.L377-.L2
	.4byte		.L378
	.sleb128	17
	.uleb128	13
	.sleb128	0
.L377:
.L385:
	.sleb128	13
	.byte		"Dem_LCfgType"
	.byte		0
	.4byte		.L386
.L384:
	.sleb128	15
	.4byte		.L385
.L388:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L288
.L391:
	.sleb128	14
	.4byte		.L287
.L393:
	.sleb128	13
	.byte		"Dem_SetOpCycleParamType"
	.byte		0
	.4byte		.L394
.L392:
	.sleb128	14
	.4byte		.L393
.L397:
	.sleb128	13
	.byte		"Dem_LCfgEventType"
	.byte		0
	.4byte		.L398
.L396:
	.sleb128	15
	.4byte		.L397
.L395:
	.sleb128	14
	.4byte		.L396
.L403:
	.sleb128	13
	.byte		"Dem_EvMemType"
	.byte		0
	.4byte		.L404
.L402:
	.sleb128	15
	.4byte		.L403
.L401:
	.sleb128	14
	.4byte		.L402
.L399:
	.sleb128	16
	.4byte		.L400-.L2
	.4byte		.L401
	.sleb128	17
	.uleb128	1
	.sleb128	0
.L400:
.L407:
	.sleb128	13
	.byte		"Dem_DataElementType"
	.byte		0
	.4byte		.L408
.L406:
	.sleb128	15
	.4byte		.L407
.L405:
	.sleb128	14
	.4byte		.L406
.L411:
	.sleb128	13
	.byte		"Dem_FreezeFrameRecNumClassType"
	.byte		0
	.4byte		.L412
.L410:
	.sleb128	15
	.4byte		.L411
.L409:
	.sleb128	14
	.4byte		.L410
.L415:
	.sleb128	13
	.byte		"Dem_FFDidDefineType"
	.byte		0
	.4byte		.L416
.L414:
	.sleb128	15
	.4byte		.L415
.L413:
	.sleb128	14
	.4byte		.L414
.L419:
	.sleb128	13
	.byte		"Dem_FFPrestorageType"
	.byte		0
	.4byte		.L420
.L418:
	.sleb128	15
	.4byte		.L419
.L417:
	.sleb128	14
	.4byte		.L418
.L425:
	.sleb128	13
	.byte		"Dem_DataStorageType"
	.byte		0
	.4byte		.L426
.L424:
	.sleb128	15
	.4byte		.L425
.L423:
	.sleb128	14
	.4byte		.L424
.L421:
	.sleb128	16
	.4byte		.L422-.L2
	.4byte		.L423
	.sleb128	17
	.uleb128	1
	.sleb128	0
.L422:
.L427:
	.sleb128	16
	.4byte		.L428-.L2
	.4byte		.L278
	.sleb128	17
	.uleb128	1
	.sleb128	0
.L428:
.L429:
	.sleb128	16
	.4byte		.L430-.L2
	.4byte		.L423
	.sleb128	17
	.uleb128	1
	.sleb128	0
.L430:
.L433:
	.sleb128	13
	.byte		"Dem_ExtExtendedDataType"
	.byte		0
	.4byte		.L434
.L432:
	.sleb128	15
	.4byte		.L433
.L431:
	.sleb128	14
	.4byte		.L432
.L437:
	.sleb128	13
	.byte		"Dem_IntExtendedDataType"
	.byte		0
	.4byte		.L438
.L436:
	.sleb128	15
	.4byte		.L437
.L435:
	.sleb128	14
	.4byte		.L436
.L441:
	.sleb128	13
	.byte		"Dem_ExtendedDataType"
	.byte		0
	.4byte		.L442
.L440:
	.sleb128	15
	.4byte		.L441
.L439:
	.sleb128	14
	.4byte		.L440
.L444:
	.sleb128	13
	.byte		"Dem_IndicatorStatusType"
	.byte		0
	.4byte		.L287
.L443:
	.sleb128	14
	.4byte		.L444
.L445:
	.sleb128	14
	.4byte		.L388
.L446:
	.sleb128	14
	.4byte		.L278
.L449:
	.sleb128	12
	.byte		"short"
	.byte		0
	.byte		0x5
	.byte		0x2
.L448:
	.sleb128	13
	.byte		"sint16"
	.byte		0
	.4byte		.L449
.L447:
	.sleb128	14
	.4byte		.L448
.L452:
	.sleb128	13
	.byte		"Dem_MonitorDebouncingType"
	.byte		0
	.4byte		.L453
.L451:
	.sleb128	15
	.4byte		.L452
.L450:
	.sleb128	14
	.4byte		.L451
.L454:
	.sleb128	13
	.byte		"Dem_EventIdType"
	.byte		0
	.4byte		.L278
.L458:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L287
	.section	.debug_info,,n
.L456:
	.sleb128	19
	.4byte		.L457-.L2
	.4byte		.L458
	.byte		0x1
	.section	.debug_info,,n
	.sleb128	20
	.4byte		.L454
	.sleb128	20
	.4byte		.L361
	.sleb128	20
	.4byte		.L361
	.sleb128	0
.L457:
.L455:
	.sleb128	14
	.4byte		.L456
.L460:
	.sleb128	19
	.4byte		.L461-.L2
	.4byte		.L458
	.byte		0x1
	.sleb128	20
	.4byte		.L454
	.sleb128	0
.L461:
.L459:
	.sleb128	14
	.4byte		.L460
.L463:
	.sleb128	15
	.4byte		.L365
.L462:
	.sleb128	14
	.4byte		.L463
.L468:
	.sleb128	19
	.4byte		.L469-.L2
	.4byte		.L458
	.byte		0x1
.L471:
	.sleb128	12
	.byte		"unsigned long"
	.byte		0
	.byte		0x7
	.byte		0x4
.L470:
	.sleb128	13
	.byte		"uint32"
	.byte		0
	.4byte		.L471
	.sleb128	20
	.4byte		.L470
	.sleb128	20
	.4byte		.L361
	.sleb128	20
	.4byte		.L361
	.sleb128	0
.L469:
.L467:
	.sleb128	14
	.4byte		.L468
.L466:
	.sleb128	13
	.byte		"DtcStChPtrType"
	.byte		0
	.4byte		.L467
.L465:
	.sleb128	15
	.4byte		.L466
.L464:
	.sleb128	14
	.4byte		.L465
.L474:
	.sleb128	13
	.byte		"Dem_InternalGroupOfDtcType"
	.byte		0
	.4byte		.L475
.L473:
	.sleb128	15
	.4byte		.L474
.L472:
	.sleb128	14
	.4byte		.L473
.L481:
	.sleb128	13
	.byte		"Uint8PtrType"
	.byte		0
	.4byte		.L391
.L479:
	.sleb128	19
	.4byte		.L480-.L2
	.4byte		.L481
	.byte		0x1
	.sleb128	20
	.4byte		.L287
	.sleb128	0
.L480:
.L478:
	.sleb128	14
	.4byte		.L479
.L482:
	.sleb128	14
	.4byte		.L454
.L487:
	.sleb128	13
	.byte		"Uint8NvPtrType"
	.byte		0
	.4byte		.L391
.L485:
	.sleb128	19
	.4byte		.L486-.L2
	.4byte		.L487
	.byte		0x1
	.sleb128	20
	.4byte		.L278
	.sleb128	0
.L486:
.L484:
	.sleb128	14
	.4byte		.L485
.L489:
	.sleb128	19
	.4byte		.L490-.L2
	.4byte		.L487
	.byte		0x1
	.sleb128	20
	.4byte		.L278
	.sleb128	0
.L490:
.L488:
	.sleb128	14
	.4byte		.L489
.L496:
	.sleb128	13
	.byte		"Dem_ReturnGetExtendedDataRecordByDTCType"
	.byte		0
	.4byte		.L287
.L494:
	.sleb128	19
	.4byte		.L495-.L2
	.4byte		.L496
	.byte		0x1
.L498:
	.sleb128	15
	.4byte		.L321
.L497:
	.sleb128	14
	.4byte		.L498
	.sleb128	20
	.4byte		.L497
	.sleb128	20
	.4byte		.L287
	.sleb128	20
	.4byte		.L454
	.sleb128	20
	.4byte		.L278
	.sleb128	20
	.4byte		.L391
	.sleb128	20
	.4byte		.L446
	.sleb128	0
.L495:
.L493:
	.sleb128	14
	.4byte		.L494
.L492:
	.sleb128	13
	.byte		"ReadIntDataWrapper"
	.byte		0
	.4byte		.L493
.L502:
	.sleb128	19
	.4byte		.L503-.L2
	.4byte		.L458
	.byte		0x1
	.sleb128	20
	.4byte		.L391
	.sleb128	0
.L503:
.L501:
	.sleb128	14
	.4byte		.L502
.L500:
	.sleb128	13
	.byte		"ReadDataPtrType"
	.byte		0
	.4byte		.L501
.L507:
	.sleb128	13
	.byte		"Dem_FreezeFrameRecordClassType"
	.byte		0
	.4byte		.L508
.L506:
	.sleb128	15
	.4byte		.L507
.L505:
	.sleb128	14
	.4byte		.L506
.L510:
	.sleb128	13
	.byte		"Dem_RecordTriggerType"
	.byte		0
	.4byte		.L511
.L515:
	.sleb128	14
	.4byte		.L318
.L519:
	.sleb128	19
	.4byte		.L520-.L2
	.4byte		.L458
	.byte		0x1
.L521:
	.sleb128	13
	.byte		"Dem_InitMonitorReasonType"
	.byte		0
	.4byte		.L287
	.sleb128	20
	.4byte		.L521
	.sleb128	0
.L520:
.L518:
	.sleb128	14
	.4byte		.L519
.L517:
	.sleb128	13
	.byte		"InitMForEPtrType"
	.byte		0
	.4byte		.L518
.L526:
	.sleb128	19
	.4byte		.L527-.L2
	.4byte		.L458
	.byte		0x1
	.sleb128	20
	.4byte		.L361
	.sleb128	20
	.4byte		.L361
	.sleb128	0
.L527:
.L525:
	.sleb128	14
	.4byte		.L526
.L524:
	.sleb128	13
	.byte		"EvStChPtrType"
	.byte		0
	.4byte		.L525
.L523:
	.sleb128	15
	.4byte		.L524
.L522:
	.sleb128	14
	.4byte		.L523
.L529:
	.sleb128	19
	.4byte		.L530-.L2
	.4byte		.L458
	.byte		0x1
	.sleb128	20
	.4byte		.L445
	.sleb128	0
.L530:
.L528:
	.sleb128	14
	.4byte		.L529
.L532:
	.sleb128	19
	.4byte		.L533-.L2
	.4byte		.L458
	.byte		0x1
	.sleb128	0
.L533:
.L531:
	.sleb128	14
	.4byte		.L532
.L534:
	.sleb128	13
	.byte		"Dem_DebouncingType"
	.byte		0
	.4byte		.L287
.L537:
	.sleb128	16
	.4byte		.L538-.L2
	.4byte		.L278
	.sleb128	17
	.uleb128	0
	.sleb128	0
.L538:
.L539:
	.sleb128	16
	.4byte		.L540-.L2
	.4byte		.L287
	.sleb128	17
	.uleb128	0
	.sleb128	0
.L540:
.L541:
	.sleb128	16
	.4byte		.L542-.L2
	.4byte		.L287
	.sleb128	17
	.uleb128	0
	.sleb128	17
	.uleb128	0
	.sleb128	0
.L542:
.L543:
	.sleb128	16
	.4byte		.L544-.L2
	.4byte		.L287
	.sleb128	17
	.uleb128	0
	.sleb128	0
.L544:
.L545:
	.sleb128	16
	.4byte		.L546-.L2
	.4byte		.L287
	.sleb128	17
	.uleb128	0
	.sleb128	0
.L546:
.L548:
	.sleb128	13
	.byte		"Dem_EventOccurrenceInfoType"
	.byte		0
	.4byte		.L549
.L550:
	.sleb128	16
	.4byte		.L551-.L2
	.4byte		.L287
	.sleb128	17
	.uleb128	9
	.sleb128	0
.L551:
.L552:
	.sleb128	16
	.4byte		.L553-.L2
	.4byte		.L287
	.sleb128	17
	.uleb128	9
	.sleb128	0
.L553:
.L557:
	.sleb128	14
	.4byte		.L373
.L561:
	.sleb128	19
	.4byte		.L562-.L2
	.4byte		.L458
	.byte		0x1
.L565:
	.sleb128	12
	.byte		"signed char"
	.byte		0
	.byte		0x6
	.byte		0x1
.L564:
	.sleb128	13
	.byte		"sint8"
	.byte		0
	.4byte		.L565
.L563:
	.sleb128	14
	.4byte		.L564
	.sleb128	20
	.4byte		.L563
	.sleb128	0
.L562:
.L560:
	.sleb128	14
	.4byte		.L561
.L559:
	.sleb128	13
	.byte		"GetFaultDetectionCounterPtrType"
	.byte		0
	.4byte		.L560
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L280:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),31
	.d2locend
.L289:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo4),3
	.d2locend
.L295:
	.d2locreg	%offsetof(.Llo5), %offsetof(.Llo4),4
	.d2locend
.L302:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),31
	.d2locend
.L309:
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),3
	.d2locend
.L315:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),3
	.d2locend
.L316:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo12),4
	.d2locreg	%offsetof(.Llo13), %offsetof(.Llo14),0
	.d2locreg	%offsetof(.Llo15), %offsetof(.Llo16),0
	.d2locreg	%offsetof(.Llo17), %offsetof(.Llo18),0
	.d2locend
.L323:
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo18),31
	.d2locend
.L325:
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo18),3
	.d2locend
.L331:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo20),3
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo22),3
	.d2locreg	%offsetof(.Llo23), %offsetof(.Llo24),3
	.d2locend
.L332:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo25),4
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo23),0
	.d2locend
.L338:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo27),3
	.d2locreg	%offsetof(.Llo28), %offsetof(.Llo29),0
	.d2locend
.L339:
	.d2locreg	%offsetof(.Llo26), %offsetof(.Llo30),4
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),3
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),3
	.d2locend
.L345:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),3
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),3
	.d2locend
.L351:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo40),3
	.d2locreg	%offsetof(.Llo41), %offsetof(.Llo42),3
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "Dem_NvInit"
	.wrcm.nstrlist "calls", "Dem_NvResetAll"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dem_NvResetDevBFreezeFrameData"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.end
	.wrcm.nelem "Dem_NvResetDevAFreezeFrameData"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.end
	.wrcm.nelem "Dem_NvResetFreezeFrameData"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.end
	.wrcm.nelem "Dem_NvResetExtendedData"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "indirectCalls", 1
	.wrcm.end
	.wrcm.nelem "Dem_NvResetEvMemEntry"
	.wrcm.nstrlist "calls", "Dem_MemSet"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Dem_NvResetOpCycleState"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dem_NvResetUdsStatus"
	.wrcm.nstrlist "calls", "Dem_SetDebouncingCounter"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "Dem_NvResetAdmin"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "Dem_NvResetAll"
	.wrcm.nint32 "frameSize", 32
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dem_Nv.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dem_Nv.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dem_Nv.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\Dem_Nv.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\Dem_Nv.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\Dem_Nv.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\DIAG\Dem\ssc\make\..\src\Dem_Nv.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
