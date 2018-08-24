#$$eb
#$$sz 0		- Size opt info
#$$ss 0		- XO option
#$$sg 1		- Xoptimized-debug-off option and	- g option
#$$fp 0		- Floating point mode
#$$m2		- PowerPC mnemonics
#$$pVLE		- PowerPC VLE encoding
#$$oPPCE200Z4
#$$ko 1		- Reorder info
	.file		"NvM_Queue.c"
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
# static FUNC(NvM_QueueRequestStatusType,NVM_CODE) NvM_PutElementOnFifo
	.align		1
	.section	.text_vle
	.d2file		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_Queue.c"
        .d2line         276,50
#$$ld
.L436:

#$$bf	NvM_PutElementOnFifo,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4,r5,r6,r7,r8,r9,r31,cr0,lr
	.d2_cfa_start __cie
NvM_PutElementOnFifo:
.Llo1:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r3,r3		# arg_block_id=r3 arg_block_id=r3
	mr		r4,r4		# arg_service_id=r4 arg_service_id=r4
	mr		r8,r5		# arg_buffer=r8 arg_buffer=r5
	.d2prologue_end
# (
#     VAR(NvM_BlockIdType,AUTOMATIC) arg_block_id,
#     VAR(NvM_ServiceIdType,AUTOMATIC) arg_service_id,
#     P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) arg_buffer
# )
# {
#     VAR(NvM_QueueRequestStatusType,AUTOMATIC) tmp_result=REQUEST_ACCEPTED;
	.d2line		283
	diab.li		r5,0		# tmp_result=r5
#     VAR(NvM_QueStdSizeType,AUTOMATIC) tmp_front;
#     VAR(NvM_QueStdSizeType,AUTOMATIC) tmp_ctr;
# 
#     if(    (queue.front==(queue.rear+1))
	.d2line		287
.Llo3:
	lis		r6,(queue+60)@ha
	lhz		r0,(queue+60)@l(r6)
	lis		r6,(queue+62)@ha
	lhz		r6,(queue+62)@l(r6)
	se_addi		r6,1
	se_cmp		r0,r6
	bc		1,2,.L366	# eq
.Llo4:
	lis		r6,(queue+60)@ha
	lhz		r0,(queue+60)@l(r6)
	se_cmpi		r0,1
	bc		0,2,.L350	# ne
	lis		r6,(queue+62)@ha
	lhz		r0,(queue+62)@l(r6)
	se_cmpi		r0,5
	bc		1,0,.L350	# lt
.L366:
#             ||((queue.front==1)&&(FIFO_SIZE <= queue.rear))
#             )
#     {
#         /* FIFO is full*/
#         tmp_result=REQUEST_LIST_OVERFLOW; /* [DD-NVM00386-MGC01-V1] */
	.d2line		292
	diab.li		r5,1		# tmp_result=r5
	b		.L351
.L350:
#     }
#     else
#     {
#         /*search if block id is not already on FIFO*/
#         tmp_front=queue.front;
	.d2line		297
	lis		r6,(queue+60)@ha		# tmp_front=r6
.Llo6:
	lhz		r6,(queue+60)@l(r6)		# tmp_front=r6 tmp_front=r6
	mr		r6,r6		# tmp_front=r6 tmp_front=r6
#         if((tmp_front!=0))
	.d2line		298
	rlwinm		r0,r6,0,16,31		# tmp_front=r6
	se_cmpi		r0,0
	bc		1,2,.L352	# eq
#         { /*FIFO is not empty
#             *search all elements on FIFO */
#             tmp_ctr=0;
	.d2line		301
	diab.li		r7,0		# tmp_ctr=r7
.L353:
#             while(tmp_ctr<FIFO_SIZE)
	.d2line		302
.Llo19:
	rlwinm		r0,r7,0,16,31		# tmp_ctr=r7
	se_cmpi		r0,5
	bc		0,0,.L352	# ge
#             {
#                 if(queue.data[tmp_front-1U].block_id==arg_block_id)
	.d2line		304
	lis		r9,(queue-8)@ha
	e_add16i		r9,r9,(queue-8)@l
	rlwinm		r0,r6,0,16,31		# tmp_front=r6
	e_mulli		r0,r0,12
	lhzx		r0,r9,r0
	rlwinm		r31,r3,0,16,31		# arg_block_id=r3
	se_cmp		r0,r31
	bc		0,2,.L355	# ne
#                 {
#                     /*element already on Queue - stop searching*/
#                     tmp_result=REQUEST_BLOCK_ALREADY_QUEUED;
	.d2line		307
	diab.li		r5,2		# tmp_result=r5
#                     tmp_ctr = FIFO_SIZE;
	.d2line		308
	diab.li		r7,5		# tmp_ctr=r7
	b		.L353
.L355:
#                 }
#                 else if(tmp_front==queue.rear)
	.d2line		310
	rlwinm		r0,r6,0,16,31		# tmp_front=r6
	lis		r9,(queue+62)@ha
	lhz		r31,(queue+62)@l(r9)
	se_cmp		r0,r31
	bc		0,2,.L357	# ne
#                 {
#                     /* Entire FIFO checked - stop searching*/
#                     tmp_ctr = FIFO_SIZE;
	.d2line		313
	diab.li		r7,5		# tmp_ctr=r7
	b		.L353
.L357:
#                 }
#                 else
#                 {
#                     tmp_ctr++;
	.d2line		317
	diab.addi		r0,r7,1		# tmp_ctr=r7
	se_addi		r7,1		# tmp_ctr=r7 tmp_ctr=r7
#                     if(tmp_front >= FIFO_SIZE)
	.d2line		318
	rlwinm		r0,r6,0,16,31		# tmp_front=r6
	se_cmpi		r0,5
	bc		1,0,.L359	# lt
#                     {
#                         tmp_front= (NvM_QueStdSizeType)1;
	.d2line		320
	diab.li		r6,1		# tmp_front=r6
	b		.L353
.L359:
#                     }
#                     else
#                     {
#                         tmp_front++;
	.d2line		324
	diab.addi		r0,r6,1		# tmp_front=r6
	se_addi		r6,1		# tmp_front=r6 tmp_front=r6
	b		.L353
.L352:
#                     }
#                 }
#             }
#         }
# 
#         /* add element on FIFO */
#         if(REQUEST_ACCEPTED==tmp_result)
	.d2line		331
	se_cmpi		r5,0		# tmp_result=r5
	bc		0,2,.L351	# ne
#         {
#             /*
#              * Find the new value of Rear, the place where an new element
#              * must be stored
#              */
#             if(0 == queue.front)
	.d2line		337
.Llo7:
	lis		r6,(queue+60)@ha		# tmp_front=r6
.Llo8:
	lhz		r0,(queue+60)@l(r6)		# tmp_front=r6
	se_cmpi		r0,0
	bc		0,2,.L362	# ne
#             { /*Fifo empty*/
#                 queue.front=(NvM_QueStdSizeType)1;
	.d2line		339
.Llo9:
	diab.li		r0,1
	lis		r6,(queue+60)@ha		# tmp_front=r6
.Llo10:
	sth		r0,(queue+60)@l(r6)		# tmp_front=r6
#                 queue.rear=(NvM_QueStdSizeType)1;
	.d2line		340
	lis		r6,(queue+62)@ha		# tmp_front=r6
	sth		r0,(queue+62)@l(r6)		# tmp_front=r6
	b		.L363
.L362:
#             }
#             else if(FIFO_SIZE <= queue.rear)
	.d2line		342
.Llo11:
	lis		r6,(queue+62)@ha		# tmp_front=r6
.Llo12:
	lhz		r0,(queue+62)@l(r6)		# tmp_front=r6
	se_cmpi		r0,5
	bc		1,0,.L364	# lt
#             { /*the end of the circular queue*/
#                 queue.rear=(NvM_QueStdSizeType)1;
	.d2line		344
.Llo13:
	diab.li		r0,1
	lis		r6,(queue+62)@ha		# tmp_front=r6
.Llo14:
	sth		r0,(queue+62)@l(r6)		# tmp_front=r6
	b		.L363
.L364:
#             }
#             else
#             {
#                 queue.rear++;
	.d2line		348
.Llo15:
	lis		r7,(queue+62)@ha		# tmp_ctr=r7
.Llo20:
	lhz		r6,(queue+62)@l(r7)		# tmp_front=r6 tmp_ctr=r7
.Llo16:
	se_addi		r6,1		# tmp_front=r6 tmp_front=r6
	sth		r6,(queue+62)@l(r7)		# tmp_ctr=r7 tmp_front=r6
.L363:
#             }
# 
#             /* enter data on FIFO*/
#             queue.data[queue.rear-1].service_id=arg_service_id;
	.d2line		352
.Llo17:
	lis		r6,(queue+62)@ha		# tmp_front=r6
.Llo18:
	lhz		r0,(queue+62)@l(r6)		# tmp_front=r6
	lis		r7,(queue-12)@ha		# tmp_ctr=r7
.Llo21:
	e_add16i		r7,r7,(queue-12)@l		# tmp_ctr=r7 tmp_ctr=r7
	rlwinm		r31,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r31
	stwx		r4,r7,r0		# tmp_ctr=r7 arg_service_id=r4
#             queue.data[queue.rear-1].block_id=arg_block_id;
	.d2line		353
	lhz		r0,(queue+62)@l(r6)		# tmp_front=r6
	lis		r4,(queue-8)@ha		# arg_service_id=r4
	e_add16i		r4,r4,(queue-8)@l		# arg_service_id=r4 arg_service_id=r4
	rlwinm		r7,r0,4,0,27		# tmp_ctr=r7
	se_slwi		r0,2
	subf		r0,r0,r7		# tmp_ctr=r7
	sthx		r3,r4,r0		# arg_service_id=r4 arg_block_id=r3
#             queue.data[queue.rear-1].ram_block_ptr=arg_buffer;
	.d2line		354
	lhz		r0,(queue+62)@l(r6)		# tmp_front=r6
	lis		r3,(queue-4)@ha		# arg_block_id=r3
	e_add16i		r3,r3,(queue-4)@l		# arg_block_id=r3 arg_block_id=r3
	rlwinm		r4,r0,4,0,27		# arg_service_id=r4
	se_slwi		r0,2
	subf		r0,r0,r4		# arg_service_id=r4
	stwx		r8,r3,r0		# arg_block_id=r3 arg_buffer=r8
.L351:
#         }
#     }
#     return tmp_result;
	.d2line		357
.Llo2:
	mr		r3,r5		# tmp_result=r3 tmp_result=r5
# }
	.d2line		358
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
.Llo5:
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L437:
	.type		NvM_PutElementOnFifo,@function
	.size		NvM_PutElementOnFifo,.-NvM_PutElementOnFifo
# Number of nodes = 201

# Allocations for NvM_PutElementOnFifo
#	?a4		arg_block_id
#	?a5		arg_service_id
#	?a6		arg_buffer
#	?a7		$$12
#	?a8		$$11
#	?a9		$$10
#	?a10		tmp_result
#	?a11		tmp_front
#	?a12		tmp_ctr
# FUNC(void,NVM_CODE) NvM_QueInitQueue(void)
	.align		2
	.section	.text_vle
        .d2line         481,21
#$$ld
.L462:

#$$bf	NvM_QueInitQueue,interprocedural,nostackparams

# Regs written: r0,r1,r3,r4
	.globl		NvM_QueInitQueue
	.d2_cfa_start __cie
NvM_QueInitQueue:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if (NVM_JOB_PRIORITIZATION==STD_ON)
#     VAR(NvM_ListSizeType,AUTOMATIC) tmp_i;
# 
#     for(tmp_i=0; tmp_i<LIST_SIZE; tmp_i++)
#     {
#         list.list_element[tmp_i].next=NVM_LIST_MAX_SIZE;
#         list.list_element[tmp_i].prev=NVM_LIST_MAX_SIZE;
#         list.data[tmp_i].service_id=NVM_NO_SERVICE_PENDING_ID;
#     }
# 
#     list.list_element[LIST_HEAD].next=LIST_TAIL;
#     list.list_element[LIST_TAIL].prev=LIST_HEAD;
#     list.list_element[LIST_TAIL].next=NVM_LIST_MAX_SIZE;
#     list.list_element[LIST_HEAD].prev=NVM_LIST_MAX_SIZE;
#     list.list_element[LIST_HEAD].priority=LIST_LOWEST_PRIORITY;
#     list.list_element[LIST_TAIL].priority=LIST_HIGHEST_PRIORITY;
# #endif
# 
#     queue.front=FIFO_EMPTY_IDX;
	.d2line		501
	diab.li		r4,0
	lis		r3,(queue+60)@ha
	sth		r4,(queue+60)@l(r3)
#     queue.rear=FIFO_EMPTY_IDX;
	.d2line		502
	lis		r3,(queue+62)@ha
	sth		r4,(queue+62)@l(r3)
# }
	.d2line		503
	.d2epilogue_begin
	se_addi		r1,16		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L463:
	.type		NvM_QueInitQueue,@function
	.size		NvM_QueInitQueue,.-NvM_QueInitQueue
# Number of nodes = 14

# Allocations for NvM_QueInitQueue
# FUNC(Std_ReturnType, NVM_CODE) NvM_QueueInsert /* [DD-NVM00181-MGC01-V1] */
	.align		2
	.section	.text_vle
        .d2line         506,32
#$$ld
.L467:

#$$bf	NvM_QueueInsert,interprocedural,rasave,nostackparams
	.globl		NvM_QueueInsert
	.d2_cfa_start __cie
NvM_QueueInsert:
.Llo22:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
.Llo27:
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)		# tmp_req_queue_result=r0
	.d2_cfa_offset    108,-1
	mr		r30,r3		# arg_block_id=r30 arg_block_id=r3
	.d2prologue_end
# (
#     VAR(NvM_BlockIdType,AUTOMATIC) arg_block_id,
#     VAR(NvM_ServiceIdType,AUTOMATIC) arg_service_id,
#     P2VAR(uint8,AUTOMATIC,NVM_APPL_DATA) arg_buffer
# #if (NVM_JOB_PRIORITIZATION==STD_ON)
#     ,VAR(boolean,AUTOMATIC) Postponed_service
# #endif
# )
# {
#     VAR(NvM_QueueRequestStatusType,AUTOMATIC) tmp_req_queue_result;
#     VAR(Std_ReturnType,AUTOMATIC) tmp_result;
# 
# #if (NVM_JOB_PRIORITIZATION==STD_OFF)
#     tmp_req_queue_result=NvM_PutElementOnFifo(arg_block_id,
	.d2line		520
	mr		r3,r30		# arg_block_id=r3 arg_block_id=r30
.Llo23:
	mr		r0,r4		# arg_service_id=r0 arg_service_id=r4
.Llo28:
	mr		r0,r5		# arg_buffer=r0 arg_buffer=r5
	bl		NvM_PutElementOnFifo
	.d2line		550
.Llo26:
	mr.		r0,r3		# tmp_req_queue_result=?a7 tmp_req_queue_result=r3
#                                                             arg_service_id,
#                                                             arg_buffer);
# #else
# 
#     switch (arg_service_id) {
#         case NVM_WRITE_BLOCK_ID:
#       #if (NVM_421_FEATURES_ENABLE == STD_ON)
#         case NVM_WRITE_PRAM_BLOCK_ID:
#       #endif
#         {
#             if(IMMEDIATE_PRIORITY == Get_Conf_Block_JobPriority(arg_block_id))
#             {
#                 /* [DD-NVM00300-MGC01-V1] */
#                 tmp_req_queue_result=NvM_PutElementOnFifo(arg_block_id,arg_service_id,arg_buffer);
#             }
#             else
#             {
#                 tmp_req_queue_result=NvM_PutElementOnList(arg_block_id,arg_service_id,arg_buffer,Postponed_service);
#             }
#         }break;
# 
#         default:
#         {
#             tmp_req_queue_result=NvM_PutElementOnList(arg_block_id,arg_service_id,arg_buffer,Postponed_service);
#         }break;
# }
# 
# #endif
# 
#     if(REQUEST_ACCEPTED==tmp_req_queue_result)
.Llo29:
	bc		0,2,.L380	# ne
#     {
#         tmp_result=E_OK;
	.d2line		552
.Llo24:
	diab.li		r31,0		# tmp_result=r31
.Llo31:
	b		.L381
.L380:
#     }
#     else
#     {
#         tmp_result=E_NOT_OK; /* [DD-NVM00184-MGC01-V1] */
	.d2line		556
.Llo32:
	diab.li		r31,1		# tmp_result=r31
# 
#         if((REQUEST_LIST_OVERFLOW == tmp_req_queue_result))
	.d2line		558
.Llo33:
	se_cmpi		r0,1		# tmp_req_queue_result=r0
	bc		0,2,.L381	# ne
#         {
#             NvM_Call_Dem_ReportErrorStatus(arg_block_id, NVM_DEM_EVENT_E_QUEUE_OVERFLOW, DEM_EVENT_STATUS_FAILED);
	.d2line		560
.Llo30:
	rlwinm		r3,r30,0,16,31		# arg_block_id=r30
	diab.li		r4,6
	diab.li		r5,1
	bl		NvM_Call_Dem_ReportErrorStatus
.L381:
#         }
# #if (NVM_DEV_ERROR_DETECT == STD_ON)
#         else
#         {
#             Det_ReportError(NVM_MODULE_ID,
#                                  NVM_INSTANCE_ID,
#                                  (uint8)arg_service_id,
#                                  NVM_E_BLOCK_PENDING);
#         }
# #endif /*NVM_DEV_ERROR_DETECT == STD_ON*/
#     }
#     return tmp_result;
	.d2line		572
.Llo25:
	rlwinm		r3,r31,0,24,31		# tmp_result=r31
# }
	.d2line		573
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo34:
	lwz		r0,36(r1)		# tmp_req_queue_result=r0
	mtspr		lr,r0		# tmp_req_queue_result=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L468:
	.type		NvM_QueueInsert,@function
	.size		NvM_QueueInsert,.-NvM_QueueInsert
# Number of nodes = 35

# Allocations for NvM_QueueInsert
#	?a4		arg_block_id
#	?a5		arg_service_id
#	?a6		arg_buffer
#	?a7		tmp_req_queue_result
#	?a8		tmp_result
# FUNC(boolean, NVM_CODE) NvM_QueGetStandardQueueElement
	.align		2
	.section	.text_vle
        .d2line         577,25
#$$ld
.L480:

#$$bf	NvM_QueGetStandardQueueElement,interprocedural,rasave,nostackparams
	.globl		NvM_QueGetStandardQueueElement
	.d2_cfa_start __cie
NvM_QueGetStandardQueueElement:
.Llo35:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stw		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_offset_list	31,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block_ptr=r31 arg_block_ptr=r3
	.d2prologue_end
# (
#     P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block_ptr
# )
# #else
# /** NvM_QueGetImmediateQueueElement */
# FUNC(boolean, NVM_CODE) NvM_QueGetImmediateQueueElement
# (
#     P2VAR(NvM_BlockRequestType,AUTOMATIC,NVM_APPL_DATA) arg_block_ptr
# )
# #endif
# {
#     VAR(boolean, AUTOMATIC) Job_Found;
# 
#     /* Enter Critical section */
#     SchM_Enter_NvM_EaServiceProcessQueue();
	.d2line		592
	bl		SchM_Enter_NvM_EaServiceProcessQueue
# 
#     if(FIFO_EMPTY_IDX==queue.front)
	.d2line		594
.Llo36:
	lis		r3,(queue+60)@ha
	lhz		r0,(queue+60)@l(r3)
	se_cmpi		r0,0
	bc		0,2,.L386	# ne
#     {
#         Job_Found = FALSE;
	.d2line		596
	diab.li		r31,0		# Job_Found=r31
.Llo39:
	b		.L387
.L386:
#     }
#     else
#     {
#         /* Get element from FIFO [DD-NVM00155-MGC01-V1] */
#         arg_block_ptr->service_id=
	.d2line		601
.Llo37:
	lis		r3,(queue+60)@ha
	lhz		r0,(queue+60)@l(r3)
	lis		r4,(queue-12)@ha
	e_add16i		r4,r4,(queue-12)@l
	rlwinm		r5,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r5
	lwzx		r0,r4,r0
	stw		r0,0(r31)		# arg_block_ptr=r31
#             queue.data[queue.front-1].service_id;
#         arg_block_ptr->block_id=
	.d2line		603
	lhz		r0,(queue+60)@l(r3)
	lis		r4,(queue-8)@ha
	e_add16i		r4,r4,(queue-8)@l
	rlwinm		r5,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r5
	lhzx		r0,r4,r0
	sth		r0,4(r31)		# arg_block_ptr=r31
#             queue.data[queue.front-1].block_id;
#         arg_block_ptr->ram_block_ptr=
	.d2line		605
	lhz		r0,(queue+60)@l(r3)
	lis		r4,(queue-4)@ha
	e_add16i		r4,r4,(queue-4)@l
	rlwinm		r5,r0,4,0,27
	se_slwi		r0,2
	subf		r0,r0,r5
	lwzx		r0,r4,r0
	stw		r0,8(r31)		# arg_block_ptr=r31
#             queue.data[queue.front-1].ram_block_ptr;
# 
#         if(queue.front==queue.rear)
	.d2line		608
	lhz		r0,(queue+60)@l(r3)
	lis		r3,(queue+62)@ha
	lhz		r3,(queue+62)@l(r3)
	se_cmp		r0,r3
	bc		0,2,.L388	# ne
#         { /*queue with one element*/
#             queue.front=FIFO_EMPTY_IDX;
	.d2line		610
.Llo38:
	diab.li		r0,0
	lis		r3,(queue+60)@ha
	sth		r0,(queue+60)@l(r3)
#             queue.rear=FIFO_EMPTY_IDX;
	.d2line		611
	lis		r3,(queue+62)@ha
	sth		r0,(queue+62)@l(r3)
	b		.L389
.L388:
#         }
#         else if(FIFO_SIZE==queue.front)
	.d2line		613
	lis		r3,(queue+60)@ha
	lhz		r0,(queue+60)@l(r3)
	se_cmpi		r0,5
	bc		0,2,.L390	# ne
#         { /* the end of the circular queue*/
#             queue.front=FIFO_BEGIN_IDX;
	.d2line		615
	diab.li		r0,1
	lis		r3,(queue+60)@ha
	sth		r0,(queue+60)@l(r3)
	b		.L389
.L390:
#         }
#         else
#         {
#             queue.front++;
	.d2line		619
	lis		r4,(queue+60)@ha
	lhz		r3,(queue+60)@l(r4)
	se_addi		r3,1
	sth		r3,(queue+60)@l(r4)
.L389:
#         }
# 
#         Job_Found = TRUE;
	.d2line		622
	diab.li		r31,1		# Job_Found=r31
.L387:
#     }
# 
# 
#     SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		626
.Llo40:
	bl		SchM_Exit_NvM_EaServiceProcessQueue
# 
#     return Job_Found;
	.d2line		628
	rlwinm		r3,r31,0,24,31		# Job_Found=r31
# }
	.d2line		629
	.d2epilogue_begin
	lwz		r31,28(r1)		# offset r1+28  0x1c
	.d2_cfa_restore_list	3,10
.Llo41:
	lwz		r0,36(r1)
	mtspr		lr,r0
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L481:
	.type		NvM_QueGetStandardQueueElement,@function
	.size		NvM_QueGetStandardQueueElement,.-NvM_QueGetStandardQueueElement
# Number of nodes = 126

# Allocations for NvM_QueGetStandardQueueElement
#	?a4		arg_block_ptr
#	?a5		$$15
#	?a6		$$14
#	?a7		$$13
#	?a8		Job_Found
# FUNC(boolean,NVM_CODE) NvM_QueIsStandardQueueEmpty(void)
	.align		2
	.section	.text_vle
        .d2line         663,24
#$$ld
.L492:

#$$bf	NvM_QueIsStandardQueueEmpty,interprocedural,nostackparams

# Regs written: r0,r1,r3,cr0,lr
	.globl		NvM_QueIsStandardQueueEmpty
	.d2_cfa_start __cie
NvM_QueIsStandardQueueEmpty:
	stwu		r1,-16(r1)		
	.d2_cfa_def_cfa_offset	16
	mfspr		r0,lr
	stw		r0,20(r1)
	.d2_cfa_offset    108,-1
	.d2prologue_end
# {
# #if NVM_JOB_PRIORITIZATION==STD_OFF
#     return((FIFO_EMPTY_IDX==queue.front) ? TRUE : FALSE);
	.d2line		666
	lis		r3,(queue+60)@ha
	lhz		r0,(queue+60)@l(r3)
	se_cmpi		r0,0
	diab.li		r3,1
	isel		r3,r3,r0,2
.L398:
	diab.li		r0,0
	isel		r3,r3,r0,2
.L399:
	rlwinm		r3,r3,0,24,31
# #else
#     return ((LIST_TAIL==list.list_element[LIST_HEAD].next) ? TRUE : FALSE);
# #endif
# }
	.d2line		670
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
.L493:
	.type		NvM_QueIsStandardQueueEmpty,@function
	.size		NvM_QueIsStandardQueueEmpty,.-NvM_QueIsStandardQueueEmpty
# Number of nodes = 17

# Allocations for NvM_QueIsStandardQueueEmpty
#	?a4		$$9
# FUNC(boolean,NVM_CODE) NvM_QueueRemoveJob
	.align		2
	.section	.text_vle
        .d2line         724,24
#$$ld
.L497:

#$$bf	NvM_QueueRemoveJob,interprocedural,rasave,nostackparams
	.globl		NvM_QueueRemoveJob
	.d2_cfa_start __cie
NvM_QueueRemoveJob:
.Llo42:
	stwu		r1,-32(r1)		
	.d2_cfa_def_cfa_offset	32
	mfspr		r0,lr
	stmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_offset_list	30,31,1,1
	stw		r0,36(r1)
	.d2_cfa_offset    108,-1
	mr		r31,r3		# arg_block_id=r31 arg_block_id=r3
	.d2prologue_end
# (
#     VAR(NvM_BlockIdType,AUTOMATIC) arg_block_id
# )
# {
#     VAR(boolean,AUTOMATIC) Job_Found = FALSE;
	.d2line		729
	diab.li		r30,0		# Job_Found=r30
#     VAR(NvM_QueStdSizeType,AUTOMATIC) tmp_front;
# 
#     SchM_Enter_NvM_EaServiceProcessQueue();
	.d2line		732
	bl		SchM_Enter_NvM_EaServiceProcessQueue
#     tmp_front = queue.front;
	.d2line		733
.Llo43:
	lis		r3,(queue+60)@ha		# tmp_front=r3
.Llo47:
	lhz		r3,(queue+60)@l(r3)		# tmp_front=r3 tmp_front=r3
	mr		r3,r3		# tmp_front=r3 tmp_front=r3
#     if(tmp_front != 0)
	.d2line		734
	rlwinm		r4,r3,0,16,31		# tmp_front=r3
	se_cmpi		r4,0
	bc		1,2,.L403	# eq
	.section	.text_vle
.L505:
#     {     /*
#            * FIFO is not empty.
#            * Operation have to be done on all elements in the Queue.
#            */
#         VAR(boolean, AUTOMATIC) lastQueueElementIsChecked = FALSE;
	.d2line		739
.Llo44:
	diab.li		r0,0		# lastQueueElementIsChecked=r0
.L404:
# 
#         while(FALSE == lastQueueElementIsChecked)
	.d2line		741
.Llo48:
	rlwinm		r4,r0,0,24,31		# lastQueueElementIsChecked=r0
	se_cmpi		r4,0
	bc		0,2,.L403	# ne
#         {
#             if(FALSE == Job_Found)
	.d2line		743
	rlwinm		r4,r30,0,24,31		# Job_Found=r30
	se_cmpi		r4,0
	bc		0,2,.L406	# ne
#             {
#                 if(queue.data[tmp_front-1U].block_id==arg_block_id)
	.d2line		745
	lis		r4,(queue-8)@ha
	e_add16i		r4,r4,(queue-8)@l
	rlwinm		r5,r3,0,16,31		# tmp_front=r3
	e_mulli		r5,r5,12
	lhzx		r4,r4,r5
	rlwinm		r5,r31,0,16,31		# arg_block_id=r31
	se_cmp		r4,r5
	bc		0,2,.L407	# ne
#                 {
#                     /* Element is already in Queue - stop searching*/
#                     Job_Found = TRUE;
	.d2line		748
	diab.li		r30,1		# Job_Found=r30
	b		.L406
.L407:
#                 }
#                 else if(tmp_front == queue.rear)
	.d2line		750
	rlwinm		r5,r3,0,16,31		# tmp_front=r3
	lis		r4,(queue+62)@ha
	lhz		r4,(queue+62)@l(r4)
	se_cmp		r5,r4
	bc		0,2,.L409	# ne
#                 {
#                     /* Entire FIFO has checked - stop searching*/
#                     lastQueueElementIsChecked = TRUE;
	.d2line		753
	diab.li		r0,1		# lastQueueElementIsChecked=r0
	b		.L406
.L409:
#                 }
#                 else
#                 {
#                     if(tmp_front >= FIFO_SIZE)
	.d2line		757
	rlwinm		r4,r3,0,16,31		# tmp_front=r3
	se_cmpi		r4,5
	bc		1,0,.L411	# lt
#                     {
#                         tmp_front = FIFO_BEGIN_IDX;
	.d2line		759
	diab.li		r3,1		# tmp_front=r3
	b		.L406
.L411:
#                     }
#                     else
#                     {
#                         tmp_front++;
	.d2line		763
	diab.addi		r4,r3,1		# tmp_front=r3
	se_addi		r3,1		# tmp_front=r3 tmp_front=r3
.L406:
#                     }
#                 }
#             }
# 
#             if(TRUE == Job_Found)
	.d2line		768
	rlwinm		r4,r30,0,24,31		# Job_Found=r30
	se_cmpi		r4,1
	bc		0,2,.L404	# ne
#             {
#                 /* All the remaining elements will be copied one by one. */
#                 if(tmp_front == queue.rear)
	.d2line		771
	rlwinm		r5,r3,0,16,31		# tmp_front=r3
	lis		r4,(queue+62)@ha
	lhz		r4,(queue+62)@l(r4)
	se_cmp		r5,r4
	bc		0,2,.L414	# ne
#                 {
#                     /* The end of the circular queue is reached. */
#                     lastQueueElementIsChecked = TRUE;
	.d2line		774
	diab.li		r0,1		# lastQueueElementIsChecked=r0
	b		.L415
.L414:
#                 }
#                 else
#                 {
#                     if(tmp_front >= FIFO_SIZE)
	.d2line		778
	rlwinm		r4,r3,0,16,31		# tmp_front=r3
	se_cmpi		r4,5
	bc		1,0,.L416	# lt
#                     {
#                         queue.data[tmp_front - 1U] = queue.data[FIFO_BEGIN_IDX];
	.d2line		780
	lis		r6,(queue-12)@ha
	e_add16i		r6,r6,(queue-12)@l
	rlwinm		r3,r3,0,16,31		# tmp_front=r3 tmp_front=r3
	e_mulli		r3,r3,12		# tmp_front=r3 tmp_front=r3
	lis		r7,(queue+12)@ha
	e_add16i		r7,r7,(queue+12)@l
	lwz		r4,0(r7)
	lwz		r5,4(r7)
	stwux		r4,r6,r3
	stw		r5,4(r6)
	lwz		r4,8(r7)
	stw		r4,8(r6)
#                         tmp_front = FIFO_BEGIN_IDX;
	.d2line		781
	diab.li		r3,1		# tmp_front=r3
	b		.L415
.L416:
#                     }
#                     else
#                     {
#                         queue.data[tmp_front - 1U] = queue.data[tmp_front];
	.d2line		785
	rlwinm		r4,r3,0,16,31		# tmp_front=r3
	lis		r6,(queue-12)@ha
	e_add16i		r6,r6,(queue-12)@l
	e_mulli		r8,r4,12
	lis		r7,queue@ha
	e_add16i		r7,r7,queue@l
	rlwinm		r5,r4,4,0,27
	se_slwi		r4,2
	subf		r4,r4,r5
	lwzux		r4,r7,r4
	lwz		r5,4(r7)
	stwux		r4,r6,r8
	stw		r5,4(r6)
	lwz		r4,8(r7)
	stw		r4,8(r6)
#                         tmp_front++;
	.d2line		786
	diab.addi		r4,r3,1		# tmp_front=r3
	se_addi		r3,1		# tmp_front=r3 tmp_front=r3
.L415:
#                     }
#                 }
# 
#                 /* The queue.rear will be decremented. */
#                 if(TRUE == lastQueueElementIsChecked)
	.d2line		791
	rlwinm		r4,r0,0,24,31		# lastQueueElementIsChecked=r0
	se_cmpi		r4,1
	bc		0,2,.L404	# ne
#                 {
#                     if(queue.front == queue.rear)
	.d2line		793
	lis		r4,(queue+60)@ha
	lhz		r5,(queue+60)@l(r4)
	lis		r4,(queue+62)@ha
	lhz		r4,(queue+62)@l(r4)
	se_cmp		r5,r4
	bc		0,2,.L419	# ne
#                     {
#                         /* The queue had one element. */
#                         queue.front = FIFO_EMPTY_IDX;
	.d2line		796
	diab.li		r5,0
	lis		r4,(queue+60)@ha
	sth		r5,(queue+60)@l(r4)
#                         queue.rear = FIFO_EMPTY_IDX;
	.d2line		797
	lis		r4,(queue+62)@ha
	sth		r5,(queue+62)@l(r4)
	b		.L404
.L419:
#                     }
#                     else if(FIFO_BEGIN_IDX == queue.rear)
	.d2line		799
	lis		r4,(queue+62)@ha
	lhz		r4,(queue+62)@l(r4)
	se_cmpi		r4,1
	bc		0,2,.L421	# ne
#                     {
#                         queue.rear = FIFO_SIZE;
	.d2line		801
	diab.li		r5,5
	lis		r4,(queue+62)@ha
	sth		r5,(queue+62)@l(r4)
	b		.L404
.L421:
#                     }
#                     else
#                     {
#                         queue.rear--;
	.d2line		805
	lis		r4,(queue+62)@ha
	lhz		r5,(queue+62)@l(r4)
	diab.li		r6,65535
	se_add		r6,r5
	sth		r6,(queue+62)@l(r4)
	b		.L404
	.section	.text_vle
.L506:
.L403:
#                     }
#                 }
#             }
#         }
#     }
# 
#     SchM_Exit_NvM_EaServiceProcessQueue();
	.d2line		812
.Llo45:
	bl		SchM_Exit_NvM_EaServiceProcessQueue
#     return Job_Found;
	.d2line		813
	rlwinm		r3,r30,0,24,31		# tmp_front=r3 Job_Found=r30
# }
	.d2line		814
	.d2epilogue_begin
	lmw		r30,24(r1)		# offset r1+24  0x18
	.d2_cfa_restore_list	3,10
.Llo46:
	lwz		r0,36(r1)		# lastQueueElementIsChecked=r0
	mtspr		lr,r0		# lastQueueElementIsChecked=lr
	se_addi		r1,32		
	.d2_cfa_def_cfa_offset	0
	blr
#$$ef
	.d2_cfa_end 2
	.section	.text_vle
#$$ld
.L498:
	.type		NvM_QueueRemoveJob,@function
	.size		NvM_QueueRemoveJob,.-NvM_QueueRemoveJob
# Number of nodes = 189

# Allocations for NvM_QueueRemoveJob
#	?a4		arg_block_id
#	?a5		$$16
#	?a6		Job_Found
#	?a7		tmp_front
#	?a8		lastQueueElementIsChecked

# Allocations for module
	.section	.text_vle
#$$ld
.L5:
.L533:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM_Types.h"
.L520:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\inc\\NvM_I.h"
.L438:	.d2filenum "d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_Queue.c"
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	3
	.uleb128	8
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
	.uleb128	15
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
	.byte		"d:\\VSB_Demo\\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\\VSTAR\\BSWs\\MEM\\NvM\\ssc\\make\\..\\src\\NvM_Queue.c"
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
.L441:
	.sleb128	2
	.4byte		.L435-.L2
	.byte		"NvM_PutElementOnFifo"
	.byte		0
	.4byte		.L438
	.uleb128	276
	.uleb128	50
	.4byte		.L439
	.byte		0x1
	.4byte		.L436
	.4byte		.L437
	.section	.debug_info,,n
	.sleb128	3
	.4byte		.L438
	.uleb128	276
	.uleb128	50
	.byte		"arg_block_id"
	.byte		0
	.4byte		.L442
	.4byte		.L445
	.sleb128	3
	.4byte		.L438
	.uleb128	276
	.uleb128	50
	.byte		"arg_service_id"
	.byte		0
	.4byte		.L446
	.4byte		.L448
	.sleb128	3
	.4byte		.L438
	.uleb128	276
	.uleb128	50
	.byte		"arg_buffer"
	.byte		0
	.4byte		.L449
	.4byte		.L452
	.section	.debug_info,,n
.L453:
	.sleb128	4
	.4byte		.L438
	.uleb128	283
	.uleb128	47
	.byte		"tmp_result"
	.byte		0
	.4byte		.L439
	.4byte		.L454
.L455:
	.sleb128	4
	.4byte		.L438
	.uleb128	284
	.uleb128	39
	.byte		"tmp_front"
	.byte		0
	.4byte		.L456
	.4byte		.L457
.L458:
	.sleb128	4
	.4byte		.L438
	.uleb128	285
	.uleb128	39
	.byte		"tmp_ctr"
	.byte		0
	.4byte		.L456
	.4byte		.L459
	.section	.debug_info,,n
	.sleb128	0
.L435:
	.section	.debug_info,,n
.L464:
	.sleb128	5
	.4byte		.L461-.L2
	.byte		"NvM_QueInitQueue"
	.byte		0
	.4byte		.L438
	.uleb128	481
	.uleb128	21
	.byte		0x1
	.byte		0x1
	.4byte		.L462
	.4byte		.L463
	.section	.debug_info,,n
	.sleb128	0
.L461:
	.section	.debug_info,,n
.L470:
	.sleb128	6
	.4byte		.L466-.L2
	.byte		"NvM_QueueInsert"
	.byte		0
	.4byte		.L438
	.uleb128	506
	.uleb128	32
	.4byte		.L469
	.byte		0x1
	.byte		0x1
	.4byte		.L467
	.4byte		.L468
	.sleb128	3
	.4byte		.L438
	.uleb128	506
	.uleb128	32
	.byte		"arg_block_id"
	.byte		0
	.4byte		.L442
	.4byte		.L471
	.sleb128	3
	.4byte		.L438
	.uleb128	506
	.uleb128	32
	.byte		"arg_service_id"
	.byte		0
	.4byte		.L446
	.4byte		.L472
	.sleb128	3
	.4byte		.L438
	.uleb128	506
	.uleb128	32
	.byte		"arg_buffer"
	.byte		0
	.4byte		.L449
	.4byte		.L473
.L474:
	.sleb128	4
	.4byte		.L438
	.uleb128	516
	.uleb128	47
	.byte		"tmp_req_queue_result"
	.byte		0
	.4byte		.L439
	.4byte		.L475
.L476:
	.sleb128	4
	.4byte		.L438
	.uleb128	517
	.uleb128	35
	.byte		"tmp_result"
	.byte		0
	.4byte		.L469
	.4byte		.L477
	.section	.debug_info,,n
	.sleb128	0
.L466:
	.section	.debug_info,,n
.L483:
	.sleb128	6
	.4byte		.L479-.L2
	.byte		"NvM_QueGetStandardQueueElement"
	.byte		0
	.4byte		.L438
	.uleb128	577
	.uleb128	25
	.4byte		.L482
	.byte		0x1
	.byte		0x1
	.4byte		.L480
	.4byte		.L481
	.sleb128	3
	.4byte		.L438
	.uleb128	577
	.uleb128	25
	.byte		"arg_block_ptr"
	.byte		0
	.4byte		.L484
	.4byte		.L487
.L488:
	.sleb128	4
	.4byte		.L438
	.uleb128	589
	.uleb128	29
	.byte		"Job_Found"
	.byte		0
	.4byte		.L482
	.4byte		.L489
	.section	.debug_info,,n
	.sleb128	0
.L479:
	.section	.debug_info,,n
.L494:
	.sleb128	6
	.4byte		.L491-.L2
	.byte		"NvM_QueIsStandardQueueEmpty"
	.byte		0
	.4byte		.L438
	.uleb128	663
	.uleb128	24
	.4byte		.L482
	.byte		0x1
	.byte		0x1
	.4byte		.L492
	.4byte		.L493
	.section	.debug_info,,n
	.sleb128	0
.L491:
	.section	.debug_info,,n
.L499:
	.sleb128	6
	.4byte		.L496-.L2
	.byte		"NvM_QueueRemoveJob"
	.byte		0
	.4byte		.L438
	.uleb128	724
	.uleb128	24
	.4byte		.L482
	.byte		0x1
	.byte		0x1
	.4byte		.L497
	.4byte		.L498
	.sleb128	3
	.4byte		.L438
	.uleb128	724
	.uleb128	24
	.byte		"arg_block_id"
	.byte		0
	.4byte		.L442
	.4byte		.L500
.L501:
	.sleb128	4
	.4byte		.L438
	.uleb128	729
	.uleb128	28
	.byte		"Job_Found"
	.byte		0
	.4byte		.L482
	.4byte		.L502
.L503:
	.sleb128	4
	.4byte		.L438
	.uleb128	730
	.uleb128	39
	.byte		"tmp_front"
	.byte		0
	.4byte		.L456
	.4byte		.L504
	.section	.debug_info,,n
	.sleb128	7
	.4byte		.L508
	.4byte		.L505
	.4byte		.L506
.L509:
	.sleb128	4
	.4byte		.L438
	.uleb128	739
	.uleb128	33
	.byte		"lastQueueElementIsChecked"
	.byte		0
	.4byte		.L482
	.4byte		.L510
	.section	.debug_info,,n
	.sleb128	0
.L508:
	.section	.debug_info,,n
	.sleb128	0
.L496:
	.section	.debug_info,,n
.L511:
	.sleb128	8
	.4byte		.L438
	.uleb128	195
	.uleb128	39
	.byte		"queue"
	.byte		0
	.4byte		.L512
	.sleb128	5
	.byte		0x3
	.4byte		queue
	.0byte		.L511
	.lcomm		queue,64,2
	.section	.debug_info,,n
.L513:
	.sleb128	9
	.4byte		.L438
	.uleb128	122
	.uleb128	14
	.4byte		.L514-.L2
	.byte		"Fifo_Queue_Tag"
	.byte		0
	.uleb128	64
	.section	.debug_info,,n
.L346:
	.sleb128	10
	.byte		"data"
	.byte		0
	.4byte		.L515
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L347:
	.sleb128	10
	.byte		"front"
	.byte		0
	.4byte		.L456
	.sleb128	2
	.byte		0x23
	.uleb128	60
	.byte		0x1
.L348:
	.sleb128	10
	.byte		"rear"
	.byte		0
	.4byte		.L456
	.sleb128	2
	.byte		0x23
	.uleb128	62
	.byte		0x1
	.sleb128	0
.L514:
.L518:
	.sleb128	9
	.4byte		.L438
	.uleb128	122
	.uleb128	14
	.4byte		.L519-.L2
	.byte		"Slot_Data_Tag"
	.byte		0
	.uleb128	12
.L343:
	.sleb128	10
	.byte		"service_id"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L344:
	.sleb128	10
	.byte		"block_id"
	.byte		0
	.4byte		.L442
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L345:
	.sleb128	10
	.byte		"ram_block_ptr"
	.byte		0
	.4byte		.L449
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
	.sleb128	0
.L519:
.L486:
	.sleb128	9
	.4byte		.L520
	.uleb128	227
	.uleb128	14
	.4byte		.L521-.L2
	.byte		"NvM_BlockRequestType_Tag"
	.byte		0
	.uleb128	28
.L317:
	.sleb128	10
	.byte		"service_id"
	.byte		0
	.4byte		.L446
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L318:
	.sleb128	10
	.byte		"block_id"
	.byte		0
	.4byte		.L442
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L319:
	.sleb128	10
	.byte		"ram_block_ptr"
	.byte		0
	.4byte		.L449
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L320:
	.sleb128	10
	.byte		"info"
	.byte		0
	.4byte		.L522
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
	.sleb128	0
.L521:
.L523:
	.sleb128	9
	.4byte		.L520
	.uleb128	227
	.uleb128	14
	.4byte		.L524-.L2
	.byte		"NvM_NvMemifInfoType_Tag"
	.byte		0
	.uleb128	16
.L312:
	.sleb128	10
	.byte		"state"
	.byte		0
	.4byte		.L525
	.sleb128	2
	.byte		0x23
	.uleb128	0
	.byte		0x1
.L313:
	.sleb128	10
	.byte		"dataset"
	.byte		0
	.4byte		.L443
	.sleb128	2
	.byte		0x23
	.uleb128	4
	.byte		0x1
.L314:
	.sleb128	10
	.byte		"dem_err"
	.byte		0
	.4byte		.L527
	.sleb128	2
	.byte		0x23
	.uleb128	8
	.byte		0x1
.L315:
	.sleb128	10
	.byte		"status_err"
	.byte		0
	.4byte		.L529
	.sleb128	2
	.byte		0x23
	.uleb128	12
	.byte		0x1
.L316:
	.sleb128	10
	.byte		"datasetPointsToRom"
	.byte		0
	.4byte		.L482
	.sleb128	2
	.byte		0x23
	.uleb128	13
	.byte		0x1
	.sleb128	0
.L524:
	.section	.debug_info,,n
.L440:
	.sleb128	11
	.4byte		.L438
	.uleb128	122
	.uleb128	14
	.4byte		.L530-.L2
	.byte		"Queue_Request_Status_Tag"
	.byte		0
	.uleb128	4
	.section	.debug_info,,n
	.sleb128	12
	.byte		"REQUEST_ACCEPTED"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"REQUEST_LIST_OVERFLOW"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"REQUEST_BLOCK_ALREADY_QUEUED"
	.byte		0
	.sleb128	2
	.sleb128	0
.L530:
.L447:
	.sleb128	11
	.4byte		.L520
	.uleb128	176
	.uleb128	14
	.4byte		.L531-.L2
	.byte		"NvM_ServiceIdType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	12
	.byte		"NVM_INIT_ID"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"NVM_SET_DATA_INDEX_ID"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"NVM_GET_DATA_INDEX_ID"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"NVM_SET_BLOCK_PROTECTION_ID"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"NVM_GET_ERROR_STATUS_ID"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"NVM_SET_RAM_BLOCK_STATUS_ID"
	.byte		0
	.sleb128	5
	.sleb128	12
	.byte		"NVM_READ_BLOCK_ID"
	.byte		0
	.sleb128	6
	.sleb128	12
	.byte		"NVM_WRITE_BLOCK_ID"
	.byte		0
	.sleb128	7
	.sleb128	12
	.byte		"NVM_RESTORE_BLOCK_DEFAULTS_ID"
	.byte		0
	.sleb128	8
	.sleb128	12
	.byte		"NVM_ERASE_BLOCK_ID"
	.byte		0
	.sleb128	9
	.sleb128	12
	.byte		"NVM_CANCEL_WRITE_ALL_ID"
	.byte		0
	.sleb128	10
	.sleb128	12
	.byte		"NVM_INVALIDATE_NV_BLOCK_ID"
	.byte		0
	.sleb128	11
	.sleb128	12
	.byte		"NVM_READ_ALL_ID"
	.byte		0
	.sleb128	12
	.sleb128	12
	.byte		"NVM_WRITE_ALL_ID"
	.byte		0
	.sleb128	13
	.sleb128	12
	.byte		"NVM_MAIN_FUNCTION_ID"
	.byte		0
	.sleb128	14
	.sleb128	12
	.byte		"NVM_GET_VERSION_INFO_ID"
	.byte		0
	.sleb128	15
	.sleb128	12
	.byte		"NVM_CANCEL_JOB_ID"
	.byte		0
	.sleb128	16
	.sleb128	12
	.byte		"NVM_JOB_END_NOTIFICATION_ID"
	.byte		0
	.sleb128	17
	.sleb128	12
	.byte		"NVM_JOB_ERROR_NOTIFICATION_ID"
	.byte		0
	.sleb128	18
	.sleb128	12
	.byte		"NVM_SETBLOCK_LOCK_STATUS_ID"
	.byte		0
	.sleb128	19
	.sleb128	12
	.byte		"NVM_READ_PRAM_BLOCK_ID"
	.byte		0
	.sleb128	22
	.sleb128	12
	.byte		"NVM_WRITE_PRAM_BLOCK_ID"
	.byte		0
	.sleb128	23
	.sleb128	12
	.byte		"NVM_RESTORE_PRAM_BLOCK_DEFAULTS_ID"
	.byte		0
	.sleb128	24
	.sleb128	12
	.byte		"NVM_VALIDATE_ALL_ID"
	.byte		0
	.sleb128	25
	.sleb128	12
	.byte		"NVM_NO_SERVICE_PENDING_ID"
	.byte		0
	.sleb128	26
	.sleb128	0
.L531:
.L526:
	.sleb128	11
	.4byte		.L520
	.uleb128	122
	.uleb128	14
	.4byte		.L532-.L2
	.byte		"NvM_BlockMemifDriverStateType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	12
	.byte		"NVM_BLOCK_NV_READ_INIT"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"NVM_BLOCK_NV_READ_START"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"NVM_BLOCK_NV_READ_ROM_DATASET_VALIDATE"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"NVM_BLOCK_NV_READ_IN_PROGRESS"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"NVM_BLOCK_NV_READ_CHECK_CRC"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"NVM_BLOCK_NV_READ_RAMMIRROR"
	.byte		0
	.sleb128	5
	.sleb128	12
	.byte		"NVM_BLOCK_NV_READ_PROCESS_ERR"
	.byte		0
	.sleb128	6
	.sleb128	12
	.byte		"NVM_BLOCK_NV_READ_DONE"
	.byte		0
	.sleb128	7
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_PREINIT"
	.byte		0
	.sleb128	8
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_INIT"
	.byte		0
	.sleb128	9
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_IN_PROGRESS"
	.byte		0
	.sleb128	10
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_VALIDATE"
	.byte		0
	.sleb128	11
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_PROCESS_ERR"
	.byte		0
	.sleb128	12
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_START_WRITE"
	.byte		0
	.sleb128	13
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_VERIFICATION"
	.byte		0
	.sleb128	14
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_VERIFICATION_IN_PROGRESS"
	.byte		0
	.sleb128	15
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_DONE"
	.byte		0
	.sleb128	16
	.sleb128	12
	.byte		"NVM_BLOCK_NV_READ_PRAM_INIT"
	.byte		0
	.sleb128	17
	.sleb128	12
	.byte		"NVM_BLOCK_NV_READ_PRAM_START"
	.byte		0
	.sleb128	18
	.sleb128	12
	.byte		"NVM_BLOCK_NV_READ_PRAM_ROM_DATASET_VALIDATE"
	.byte		0
	.sleb128	19
	.sleb128	12
	.byte		"NVM_BLOCK_NV_READ_PRAM_IN_PROGRESS"
	.byte		0
	.sleb128	20
	.sleb128	12
	.byte		"NVM_BLOCK_NV_READ_PRAM_CHECK_CRC"
	.byte		0
	.sleb128	21
	.sleb128	12
	.byte		"NVM_BLOCK_NV_READ_PRAM_RAMMIRROR"
	.byte		0
	.sleb128	22
	.sleb128	12
	.byte		"NVM_BLOCK_NV_READ_PRAM_RECALC"
	.byte		0
	.sleb128	23
	.sleb128	12
	.byte		"NVM_BLOCK_NV_READ_PRAM_PROCESS_ERR"
	.byte		0
	.sleb128	24
	.sleb128	12
	.byte		"NVM_BLOCK_NV_READ_PRAM_DONE"
	.byte		0
	.sleb128	25
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_INIT"
	.byte		0
	.sleb128	26
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_PREINIT"
	.byte		0
	.sleb128	27
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_IN_PROGRESS"
	.byte		0
	.sleb128	28
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_VALIDATE"
	.byte		0
	.sleb128	29
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_PROCESS_ERR"
	.byte		0
	.sleb128	30
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_START_WRITE"
	.byte		0
	.sleb128	31
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_VERIFICATION"
	.byte		0
	.sleb128	32
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_VERIFICATION_IN_PROGRESS"
	.byte		0
	.sleb128	33
	.sleb128	12
	.byte		"NVM_BLOCK_NV_WRITE_PRAM_DONE"
	.byte		0
	.sleb128	34
	.sleb128	12
	.byte		"NVM_BLOCK_VALIDATE_INIT"
	.byte		0
	.sleb128	35
	.sleb128	12
	.byte		"NVM_BLOCK_VALIDATE_USING_RAMMIRROR"
	.byte		0
	.sleb128	36
	.sleb128	12
	.byte		"NVM_BLOCK_VALIDATE_CHECK_CRC_RAM"
	.byte		0
	.sleb128	37
	.sleb128	12
	.byte		"NVM_BLOCK_VALIDATE_CHECK_CRC_RAMMIRROR"
	.byte		0
	.sleb128	38
	.sleb128	12
	.byte		"NVM_BLOCK_VALIDATE_DONE"
	.byte		0
	.sleb128	39
	.sleb128	12
	.byte		"NVM_BLOCK_MEMIF_DRIVER_STATE_NB"
	.byte		0
	.sleb128	40
	.sleb128	0
.L532:
.L528:
	.sleb128	11
	.4byte		.L533
	.uleb128	153
	.uleb128	14
	.4byte		.L534-.L2
	.byte		"NvM_DemEventIdNumberType_Tag"
	.byte		0
	.uleb128	4
	.sleb128	12
	.byte		"NVM_DEM_EVENT_E_NO_ERROR"
	.byte		0
	.sleb128	0
	.sleb128	12
	.byte		"NVM_DEM_EVENT_E_HARDWARE"
	.byte		0
	.sleb128	1
	.sleb128	12
	.byte		"NVM_DEM_EVENT_E_REQ_FAILED"
	.byte		0
	.sleb128	2
	.sleb128	12
	.byte		"NVM_DEM_EVENT_E_INTEGRITY_FAILED"
	.byte		0
	.sleb128	3
	.sleb128	12
	.byte		"NVM_DEM_EVENT_E_LOSS_OF_REDUNDANCY"
	.byte		0
	.sleb128	4
	.sleb128	12
	.byte		"NVM_DEM_EVENT_E_VERIFY_FAILED"
	.byte		0
	.sleb128	5
	.sleb128	12
	.byte		"NVM_DEM_EVENT_E_QUEUE_OVERFLOW"
	.byte		0
	.sleb128	6
	.sleb128	12
	.byte		"NVM_DEM_EVENT_E_WRITE_PROTECTED"
	.byte		0
	.sleb128	7
	.sleb128	12
	.byte		"NVM_DEM_EVENT_E_WRONG_BLOCK_ID"
	.byte		0
	.sleb128	8
	.sleb128	0
.L534:
	.section	.debug_info,,n
.L439:
	.sleb128	13
	.byte		"NvM_QueueRequestStatusType"
	.byte		0
	.4byte		.L440
	.section	.debug_info,,n
.L444:
	.sleb128	14
	.byte		"unsigned short"
	.byte		0
	.byte		0x7
	.byte		0x2
.L443:
	.sleb128	13
	.byte		"uint16"
	.byte		0
	.4byte		.L444
.L442:
	.sleb128	13
	.byte		"NvM_BlockIdType"
	.byte		0
	.4byte		.L443
.L446:
	.sleb128	13
	.byte		"NvM_ServiceIdType"
	.byte		0
	.4byte		.L447
.L451:
	.sleb128	14
	.byte		"unsigned char"
	.byte		0
	.byte		0x8
	.byte		0x1
.L450:
	.sleb128	13
	.byte		"uint8"
	.byte		0
	.4byte		.L451
	.section	.debug_info,,n
.L449:
	.sleb128	15
	.4byte		.L450
.L456:
	.sleb128	13
	.byte		"NvM_QueStdSizeType"
	.byte		0
	.4byte		.L443
.L469:
	.sleb128	13
	.byte		"Std_ReturnType"
	.byte		0
	.4byte		.L450
.L482:
	.sleb128	13
	.byte		"boolean"
	.byte		0
	.4byte		.L451
.L485:
	.sleb128	13
	.byte		"NvM_BlockRequestType"
	.byte		0
	.4byte		.L486
.L484:
	.sleb128	15
	.4byte		.L485
.L512:
	.sleb128	13
	.byte		"NvM_FifoQueueType"
	.byte		0
	.4byte		.L513
.L517:
	.sleb128	13
	.byte		"NvM_SlotDataType"
	.byte		0
	.4byte		.L518
	.section	.debug_info,,n
.L515:
	.sleb128	16
	.4byte		.L516-.L2
	.4byte		.L517
	.section	.debug_info,,n
	.sleb128	17
	.uleb128	4
	.sleb128	0
.L516:
.L522:
	.sleb128	13
	.byte		"NvM_NvMemifInfoType"
	.byte		0
	.4byte		.L523
.L525:
	.sleb128	13
	.byte		"NvM_BlockMemifDriverStateType"
	.byte		0
	.4byte		.L526
.L527:
	.sleb128	13
	.byte		"NvM_DemEventIdNumberType"
	.byte		0
	.4byte		.L528
.L529:
	.sleb128	13
	.byte		"NvM_RequestResultType"
	.byte		0
	.4byte		.L450
.L7:
	.sleb128	0
.L3:

	.section	.debug_loc,,n
	.align	0
.L445:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),3
	.d2locend
.L448:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo2),4
	.d2locend
.L452:
	.d2locreg	%offsetof(.Llo1), %offsetof(.Llo3),5
	.d2locreg	%offsetof(.Llo4), %offsetof(.Llo2),8
	.d2locend
.L454:
	.d2locreg	%offsetof(.Llo3), %offsetof(.Llo5),5
	.d2locend
.L457:
	.d2locreg	%offsetof(.Llo6), %offsetof(.Llo7),6
	.d2locreg	%offsetof(.Llo8), %offsetof(.Llo9),6
	.d2locreg	%offsetof(.Llo10), %offsetof(.Llo11),6
	.d2locreg	%offsetof(.Llo12), %offsetof(.Llo13),6
	.d2locreg	%offsetof(.Llo14), %offsetof(.Llo15),6
	.d2locreg	%offsetof(.Llo16), %offsetof(.Llo17),6
	.d2locreg	%offsetof(.Llo18), %offsetof(.Llo2),6
	.d2locend
.L459:
	.d2locreg	%offsetof(.Llo19), %offsetof(.Llo7),7
	.d2locreg	%offsetof(.Llo20), %offsetof(.Llo17),7
	.d2locreg	%offsetof(.Llo21), %offsetof(.Llo2),7
	.d2locend
.L471:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo23),3
	.d2locreg	%offsetof(.Llo24), %offsetof(.Llo25),30
	.d2locend
.L472:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo26),4
	.d2locend
.L473:
	.d2locreg	%offsetof(.Llo22), %offsetof(.Llo26),5
	.d2locend
.L475:
	.d2locreg	%offsetof(.Llo27), %offsetof(.Llo28),0
	.d2locreg	%offsetof(.Llo29), %offsetof(.Llo30),0
	.d2locend
.L477:
	.d2locreg	%offsetof(.Llo31), %offsetof(.Llo32),31
	.d2locreg	%offsetof(.Llo33), %offsetof(.Llo34),31
	.d2locend
.L487:
	.d2locreg	%offsetof(.Llo35), %offsetof(.Llo36),3
	.d2locreg	%offsetof(.Llo37), %offsetof(.Llo38),31
	.d2locend
.L489:
	.d2locreg	%offsetof(.Llo39), %offsetof(.Llo37),31
	.d2locreg	%offsetof(.Llo40), %offsetof(.Llo41),31
	.d2locend
.L500:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo43),3
	.d2locreg	%offsetof(.Llo44), %offsetof(.Llo45),31
	.d2locend
.L502:
	.d2locreg	%offsetof(.Llo42), %offsetof(.Llo46),30
	.d2locend
.L504:
	.d2locreg	%offsetof(.Llo47), %offsetof(.Llo45),3
	.d2locend
.L510:
	.d2locreg	%offsetof(.Llo48), %offsetof(.Llo45),0
	.d2locend
	.wrcm.doc
	.wrcm.elem
	.wrcm.nelem "code"
	.wrcm.nelem "functions"
	.wrcm.nelem "NvM_QueueRemoveJob"
	.wrcm.nstrlist "calls", "SchM_Enter_NvM_EaServiceProcessQueue","SchM_Exit_NvM_EaServiceProcessQueue"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_QueIsStandardQueueEmpty"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_QueGetStandardQueueElement"
	.wrcm.nstrlist "calls", "SchM_Enter_NvM_EaServiceProcessQueue","SchM_Exit_NvM_EaServiceProcessQueue"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_QueueInsert"
	.wrcm.nstrlist "calls", "NvM_Call_Dem_ReportErrorStatus","NvM_PutElementOnFifo"
	.wrcm.nint32 "frameSize", 32
	.wrcm.end
	.wrcm.nelem "NvM_QueInitQueue"
	.wrcm.nint32 "frameSize", 16
	.wrcm.end
	.wrcm.nelem "NvM_PutElementOnFifo"
	.wrcm.nint32 "frameSize", 32
	.wrcm.nint32 "local", 1
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
	.wrcm.nstr "options", "-ei4618 -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\NvM_Queue.o -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\NvM_Queue.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\NvM_Queue.d -Xmake-opt-key=objs\MPC5746R_ECU\WindRiver\NvM_Queue.o -MC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\PPC\PPCVLE.cd -ZC:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32\lib\cderror.cat -Xsingle-fp -Xno-double -Xuser-specified-proc=PPCE200Z4204N3V -XPPCE200Z4 -Xname-code=.text_vle -Xname-const=.text_vle -Xname-uconst=.text_vle -Xname-string=.text_vle -Xstsw-slow -Xintrinsic-mask=0xc00041 -Xconventions-eabi -Xsoft-float -Xdouble-avoid -Xcoloring -Xapu-efpu-v2 -Xefpu-spfs -Xtarget-family=2 -Xlicense-proxy-use -Xlicense-proxy-path=C:\WINDRI~1\COMPIL~1\DIAB-5~1.4\WIN32 -Xdialect-c99 -Xforce-prototypes -Xforce-declarations -Xsmall-data=0 -Xsmall-const=0 -Xlocal-data-area=0 -Xnested-interrupts -ei4618 -g2 -Xdebug-inline-on -Xoptimized-debug-off -Xdebug-dwarf2 -Xpass-source -Xmake-dependency-canonicalize-path-off -Xmake-dependency=0x4 -Xc-mode -Xmake-dependency-target=objs\MPC5746R_ECU\WindRiver\NvM_Queue.o -Xmake-dependency-savefile=objs\MPC5746R_ECU\WindRiver\NvM_Queue.d"
	.wrcm.end
	.wrcm.end
	.wrcm.nelem "file"
	.wrcm.nstr "input", "d:\VSB_Demo\VSTAR_MPC5746R_Diab_PR_4.2.2_g_3.0_10\VSTAR\BSWs\MEM\NvM\ssc\make\..\src\NvM_Queue.c"
	.wrcm.end
	.wrcm.end
	.wrcm.end
