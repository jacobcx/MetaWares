/**\file
 *
 * \brief Generated Source File for Dem
 *
 * This file describes the link-time configuration parameters
 *
 * \b Application:        Dem \n
 * \b Target:             see Dem.h for details \n
 * \b Compiler:           see Dem.h for details \n
 * \b Autosar-Vendor-ID:  31 \n
 *
 * \b Module:             Dem_Lcfg.c \n
 * \b Generator:          VSTAR Dem V6.1.0-Build575 \n
 *
 *      NOTE! This file is generated. Do not edit!
 *
 * \b Changeable-by-user: No \n
 * \b Delivery-File:      No \n
 * \n
 * \b Module-Owner:       Mentor Graphics \n
 * \b Web:                https://supportnet.mentor.com/ \n
 * \n
 */

/******************************************************************************
 *
 *              Copyright 2017 Mentor Graphics Corporation
 *                        All rights reserved
 *
 *  THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION WHICH IS
 *  THE PROPERTY OF MENTOR GRAPHICS CORPORATION OR ITS LICENSORS AND IS
 *  SUBJECT TO LICENSE TERMS.
 *
 *
 ******************************************************************************/
/*============================================================================*\
 * PREPROCESSOR DIRECTIVES
\*============================================================================*/

/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/
#include "Dem.h"
#include "Dem_Nv.h"
#include "Dem_Lcfg.h"
#include "Rte_Dem.h"
#include "Det.h"
#include "Vstar_Bits.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/

#define EXPECTED_SW_MAJOR_VERSION (6U)
#define EXPECTED_SW_MINOR_VERSION (1U)
#define EXPECTED_SW_PATCH_VERSION (0U)

#if ( (DEM_LCFG_SW_MAJOR_VERSION != EXPECTED_SW_MAJOR_VERSION) || \
      (DEM_LCFG_SW_MINOR_VERSION != EXPECTED_SW_MINOR_VERSION) || \
      (DEM_LCFG_SW_PATCH_VERSION != EXPECTED_SW_PATCH_VERSION) )
   #error "The software version of the Dem_Lcfg.h file does not match the expected version."
#endif

#if ( (DEM_CFG_SW_MAJOR_VERSION != EXPECTED_SW_MAJOR_VERSION) || \
      (DEM_CFG_SW_MINOR_VERSION != EXPECTED_SW_MINOR_VERSION) || \
      (DEM_CFG_SW_PATCH_VERSION != EXPECTED_SW_PATCH_VERSION) )
   #error "The software version of the Dem_Cfg.h file does not match the expected version."
#endif

#if ( (DEM_INTEVTID_SW_MAJOR_VERSION != EXPECTED_SW_MAJOR_VERSION) || \
      (DEM_INTEVTID_SW_MINOR_VERSION != EXPECTED_SW_MINOR_VERSION) || \
      (DEM_INTEVTID_SW_PATCH_VERSION != EXPECTED_SW_PATCH_VERSION) )
   #error "The software version of the Dem_IntEvtId.h file does not match the expected version."
#endif

#if (STD_ON == DEM_VERSION_CHECK_FOREIGN_MODULE)
   #if ( (RTE_AR_RELEASE_MAJOR_VERSION != DEM_AR_RELEASE_MAJOR_VERSION) || \
         (RTE_AR_RELEASE_MINOR_VERSION != DEM_AR_RELEASE_MINOR_VERSION) )
      #error "The AUTOSAR release version of the Rte module does not match the expected version."
   #endif
#endif

#if (STD_ON == DEM_VERSION_CHECK_FOREIGN_MODULE)
   #if ( (DET_AR_RELEASE_MAJOR_VERSION != DEM_AR_RELEASE_MAJOR_VERSION) || \
         (DET_AR_RELEASE_MINOR_VERSION != DEM_AR_RELEASE_MINOR_VERSION) )
      #error "The AUTOSAR release version of the Det module does not match the expected version."
   #endif
#endif

/* LOCAL DEFINE MACROS (#, ##) ----------------------------------------------- */
#define DEM_NUM_COUNTER_DB_EVENTS   ((uint16)4U)
#define DEM_NUM_TIME_DB_EVENTS      ((uint16)0U)
#define DEM_NUMBER_OF_EVENTS        ((Dem_EventIdType)4U)
#define DEM_NUMBER_OF_INDICATORS    ((uint8)0U)
#define DEM_NUMBER_OF_FF_REC_NUM_CLASSES ((uint8)0U)
#define DEM_NUMBER_OF_FREEZE_FRAME_CLASSES ((uint16)0U)
#define DEM_NUMBER_OF_OPCYCLES      ((uint8)1U)
#define DEM_NUMBER_OF_DTCGROUPS     ((uint8)1U)
#define DEM_MAX_HANDLED_PASSED_EVENTS_PER_SCHEDULING ((uint16)65535U)
#define DEM_MAX_HANDLED_FAILED_EVENTS_PER_SCHEDULING ((uint16)65535U)
#define DEM_MAX_CLEARED_PER_SCHEDULING ((uint16)65535U)
#define DEM_NUMBER_OF_PERMANENT_ENTRIES ((uint8)3U)
#define DEM_FF_BUFFER_LENGTH        ((uint16)1U)
#define DEM_NUM_ED_ENTRIES          ((uint16)0U)
#define DEM_ED_BUFFER_LENGTH        ((uint16)0U)
#define DEM_OP_CYCLE_CHANGE_BUFFER_SIZE ((uint8)4U)
#define DEM_MAX_EVENTS_PER_DTC      ((uint8)1U)

/*============================================================================*\
 * LOCAL TYPEDEF DECLARATIONS
\*============================================================================*/

/* ENUMS --------------------------------------------------------------------- */


/* STRUCTS ------------------------------------------------------------------- */


/* UNIONS -------------------------------------------------------------------- */


/* OTHER TYPEDEFS ------------------------------------------------------------ */
typedef P2VAR(Dem_NvFreezeFrameDataType, TYPEDEF, DEM_NV_DATA) Dem_NvFreezeFrameDataPtrType;

/*============================================================================*\
 * LOCAL FUNCTION PROTOTYPES
\*============================================================================*/
#define DEM_START_SEC_CODE
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */



static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry01(void);
static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry02(void);
static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry03(void);
static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry04(void);
static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry05(void);
static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry06(void);
static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry07(void);
static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry08(void);
static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry09(void);
static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry10(void);

static FUNC(boolean, DEM_CODE) ClearIntDtcEventData(uint16 index, CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, uint8 eventIndexInCombDtc);
static FUNC(void, DEM_CODE) AgingDisplacementUdsStatus(Dem_EventIdType eventId);
static FUNC(void, DEM_CODE) HandleFailureCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId, uint8 eventIndexInCombDtc, uint8 opCycleId);
static FUNC(void, DEM_CODE) HandleHealingCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId, uint8 eventIndexInCombDtc, uint8 opCycleId);

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

/*============================================================================*\
 * LOCAL FUNCTION-LIKE-MACROS and INLINE FUNCTIONS
\*============================================================================*/

/**
 * \brief Get event-id from list of events sorted by internal DTC
 *
 * \param[in] index Index in list to return event-id for.
 */
#define GetEventFromIntDtcEventList(index) (Dem_pPbCfg->p_int_dtc_events[(index)]) /* KW MISRA.DEFINE.FUNC */

/*============================================================================*\
 * OBJECT DEFINITIONS
\*============================================================================*/

/* EXPORTED OBJECTS ---------------------------------------------------------- */

#define DEM_START_SEC_VAR_NO_INIT_BOOLEAN
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

VAR(boolean, DEM_VAR) Dem_SiModified;

#define DEM_STOP_SEC_VAR_NO_INIT_BOOLEAN
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_VAR_SAVED_ZONE_COMMON_8
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

VAR(Dem_UdsStatusByteType, DEM_VAR) Dem_NvUdsStatus[4]; /* [DEM_NUMBER_OF_EVENTS] */ /* [SWS_Dem_00006] [SWS_Dem_01183] */
VAR(Dem_OperationCycleStateType, DEM_VAR) Dem_NvOpCycleState[1]; /* [DEM_NUMBER_OF_OPCYCLES] */
VAR(Dem_NvSiType, DEM_VAR) Dem_NvSi;

#define DEM_STOP_SEC_VAR_SAVED_ZONE_COMMON_8
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_VAR_SAVED_ZONE_COMMON_UNSPECIFIED
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

VAR(Dem_NvAdminType, DEM_VAR) Dem_NvAdmin;

/* Primary */
VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry01;
VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry02;
VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry03;
VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry04;
VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry05;
VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry06;
VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry07;
VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry08;
VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry09;
VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry10;

/* Secondary */

#define DEM_STOP_SEC_VAR_SAVED_ZONE_COMMON_UNSPECIFIED
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_VAR_SAVED_ZONE_DATA_UNSPECIFIED
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

/* Primary extended data */

/* Secondary extended data */

/* Primary freeze frame data */

/* Secondary freeze frame data */

/* Development A freeze frame data */

/* Development B freeze frame data */

#define DEM_STOP_SEC_VAR_SAVED_ZONE_DATA_UNSPECIFIED
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_CONST_16
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_STOP_SEC_CONST_16
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

CONST(Dem_ResetNvBlockPtrType, DEM_CONST) Dem_NvResetBlock[14] =
{
   &Dem_NvResetAdmin,
   &Dem_NvResetUdsStatus,
   &Dem_NvResetOpCycleState,
   &Dem_NvResetSi,
   &Dem_NvResetPrimaryEvMemEntry01,
   &Dem_NvResetPrimaryEvMemEntry02,
   &Dem_NvResetPrimaryEvMemEntry03,
   &Dem_NvResetPrimaryEvMemEntry04,
   &Dem_NvResetPrimaryEvMemEntry05,
   &Dem_NvResetPrimaryEvMemEntry06,
   &Dem_NvResetPrimaryEvMemEntry07,
   &Dem_NvResetPrimaryEvMemEntry08,
   &Dem_NvResetPrimaryEvMemEntry09,
   &Dem_NvResetPrimaryEvMemEntry10
};

static CONST(Dem_NvEvMemEntryPtrType, DEM_CONST) PrimaryEvMemEntries[DEM_MAX_NUMBER_EVENT_ENTRY_PRM] =
{
   &Dem_NvPrimaryEvMemEntry01,
   &Dem_NvPrimaryEvMemEntry02,
   &Dem_NvPrimaryEvMemEntry03,
   &Dem_NvPrimaryEvMemEntry04,
   &Dem_NvPrimaryEvMemEntry05,
   &Dem_NvPrimaryEvMemEntry06,
   &Dem_NvPrimaryEvMemEntry07,
   &Dem_NvPrimaryEvMemEntry08,
   &Dem_NvPrimaryEvMemEntry09,
   &Dem_NvPrimaryEvMemEntry10
};

static CONST(Dem_EvMemType, DEM_CONST) PrimaryEvMem =
{
   /* p_ev_mem_entries */
   PrimaryEvMemEntries,
   /* p_first */
   &Dem_NvAdmin.primary_first_ev_mem_entry,
   /* p_last */
   &Dem_NvAdmin.primary_last_ev_mem_entry,
   /* p_next */
   &Dem_NvAdmin.primary_next_ev_mem_entry[0],
   /* p_prev */
   &Dem_NvAdmin.primary_prev_ev_mem_entry[0],
};


#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_VAR_NO_INIT_BOOLEAN
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

static VAR(boolean, DEM_VAR) DtcStorage[DEM_NUMBER_OF_DTCGROUPS];

#define DEM_STOP_SEC_VAR_NO_INIT_BOOLEAN
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_VAR_NO_INIT_8
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

static VAR(uint8, DEM_VAR) EventStateBuffer[1];
static VAR(uint8, DEM_VAR) EventStateUpdate[1];

#define DEM_STOP_SEC_VAR_NO_INIT_8
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_VAR_NO_INIT_16
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

static VAR(sint16, DEM_VAR) CounterDbCounter[DEM_NUM_COUNTER_DB_EVENTS];

#define DEM_STOP_SEC_VAR_NO_INIT_16
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_VAR_NO_INIT_UNSPECIFIED
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

static VAR(Dem_SetOpCycleParamType, DEM_VAR) OpCycleChangeBuffer[DEM_OP_CYCLE_CHANGE_BUFFER_SIZE];

#define DEM_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

static CONST(Dem_LCfgEventType, DEM_CONST) LCfgEvents[DEM_NUMBER_OF_EVENTS] =
{   /*p_init_m_for_e*/ /*pCbkEvStChg*/ /*pClearEventAllowed*/ /*p_event_data_changed*/ /*debounce_counter_idx*/ /*num_evStatusCh*/ /*debounce_alg*/
   {NULL_PTR, NULL_PTR, NULL_PTR, NULL_PTR, 0, 0, DEM_DB_COUNTER}, /* DemEventParameter_EEP */
   {NULL_PTR, NULL_PTR, NULL_PTR, NULL_PTR, 1, 0, DEM_DB_COUNTER}, /* DemEventParameter_CanSM */
   {NULL_PTR, NULL_PTR, NULL_PTR, NULL_PTR, 2, 0, DEM_DB_COUNTER}, /* DemEventParameter_22938 */
   {NULL_PTR, NULL_PTR, NULL_PTR, NULL_PTR, 3, 0, DEM_DB_COUNTER} /* DemEventParameter_22940 */
};

static CONST(Dem_OperationCycleStateType, DEM_CONST) OpCycleDefaultInitValue[DEM_NUMBER_OF_OPCYCLES] =
{
   DEM_CYCLE_STATE_START /* DemOperationCycle */
};

static CONST(Dem_InternalGroupOfDtcType, DEM_CONST) InternalDtcGroups[DEM_NUMBER_OF_DTCGROUPS] =
{  /*dtc_group*/ /*start_dtc_value*/ /*end_dtc_value*/
   {DEM_DTC_GROUP_ALL_DTCS, 0x000000, 0xFFFFFF}
};

CONST(Dem_LCfgType, DEM_CONST) Dem_LCfg =
{
   /* p_event_state_buffer */
   EventStateBuffer,
   /* p_event_state_update */
   EventStateUpdate,
   /* p_op_cycle_change_buffer */
   OpCycleChangeBuffer,
   /* op_cycle_change_buffer_size */
   DEM_OP_CYCLE_CHANGE_BUFFER_SIZE,
   /* p_events */
   LCfgEvents,
   /* pp_ev_mem */
   {&PrimaryEvMem, NULL_PTR},
   /* p_data_element */
   NULL_PTR,
   /* p_ff_rec_num_classes */
   NULL_PTR,
   /* p_ff_did_define */
   NULL_PTR,
   /* num_ff_dids */
   0,
   /* p_ff_prestorage */
   NULL_PTR,
   /* pp_ff_storage */
   {NULL_PTR, NULL_PTR},
   /* p_num_ff_entries */
   {0, 0},
   /* p_dev_a_ff_storage */
   NULL_PTR,
   /* num_dev_a_entries */
   0,
   /* p_dev_b_ff_storage */
   NULL_PTR,
   /* num_dev_b_entries */
   0,
   /* pp_ed_storage */
   {NULL_PTR, NULL_PTR},
   /* num_ed_entries */
   DEM_NUM_ED_ENTRIES,
   /* p_ext_ed_record_define */
   NULL_PTR,
   /* num_ext_ed_records */
   0,
   /* p_int_ed_record_define */
   NULL_PTR,
   /* num_int_ed_records */
   0,
   /* p_ed_classes */
   NULL_PTR,
   /* p_indicator_status */
   NULL_PTR,
   /* p_dtc_storage */
   DtcStorage,
   /* p_dtc_suppressed */
   NULL_PTR,
   /* p_ff_length */
   NULL_PTR,
   /* p_counter_db_counter */
   CounterDbCounter,
   /* num_counter_db_events */
   DEM_NUM_COUNTER_DB_EVENTS,
   /* p_monitor_db_data */
   NULL_PTR,
   /* num_events */
   DEM_NUMBER_OF_EVENTS,
   /* num_indicators */
   DEM_NUMBER_OF_INDICATORS,
   /* num_op_cycles */
   DEM_NUMBER_OF_OPCYCLES,
   /* num_dtc_groups */
   DEM_NUMBER_OF_DTCGROUPS,
   /* num_ff_classes */
   DEM_NUMBER_OF_FREEZE_FRAME_CLASSES,
   /* max_handled_passed_events_per_scheduling */
   DEM_MAX_HANDLED_PASSED_EVENTS_PER_SCHEDULING,
   /* max_handled_failed_events_per_scheduling */
   DEM_MAX_HANDLED_FAILED_EVENTS_PER_SCHEDULING,
   /* max_cleared_per_scheduling */
   DEM_MAX_CLEARED_PER_SCHEDULING,
   /* p_gen_cbk_event_status_changed */
   NULL_PTR,
   /* p_gen_cbk_event_data_changed */
   NULL_PTR,
   /* p_op_cycle_init_value */
   OpCycleDefaultInitValue,
   /* pp_dtc_status_changed */
   NULL_PTR,
   /* p_internal_dtc_groups */
   InternalDtcGroups,
   /* num_dtc_status_changed */
   0,
   /* service_04_clear_all */
   FALSE, 
   /* clear_internal_events */
   FALSE, 
   /* max_allowed_standard_ff_length */
   DEM_FF_BUFFER_LENGTH
};

#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

/* LOCAL OBJECTS ------------------------------------------------------------- */

/*============================================================================*\
 * LOCAL FUNCTION-LIKE-MACROS and INLINE FUNCTIONS
\*============================================================================*/

/*============================================================================*\
 * LOCAL FUNCTIONS
\*============================================================================*/
#define DEM_START_SEC_CODE
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry01(void)
{
   Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)0U);
}

static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry02(void)
{
   Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)1U);
}

static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry03(void)
{
   Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)2U);
}

static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry04(void)
{
   Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)3U);
}

static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry05(void)
{
   Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)4U);
}

static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry06(void)
{
   Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)5U);
}

static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry07(void)
{
   Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)6U);
}

static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry08(void)
{
   Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)7U);
}

static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry09(void)
{
   Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)8U);
}

static FUNC(void, DEM_CODE) Dem_NvResetPrimaryEvMemEntry10(void)
{
   Dem_NvResetEvMemEntry(DEM_DTC_ORIGIN_PRIMARY_MEMORY_INTERNAL_INDEX, (uint8)9U);
}

static FUNC(boolean, DEM_CODE) ClearIntDtcEventData(uint16 index, CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, uint8 eventIndexInCombDtc)
{
   boolean retVal = TRUE;
   Dem_EventIdType eventId = GetEventFromIntDtcEventList(index); /* KW MISRA.PTR.ARITH */
   if (TRUE == Dem_ClearEventAllowed(eventId))
   {
      Dem_ClearEventData(eventId);
      Dem_ClearPrestoredFF(eventId);
      if (pEvMemEntry != NULL_PTR)
      {
         pEvMemEntry->failure_counter[eventIndexInCombDtc] = 0U;
         pEvMemEntry->healing_counter[eventIndexInCombDtc] = 0U;
      }
   }
   else
   {
      retVal = FALSE;
   }
   return retVal;
}

static FUNC(void, DEM_CODE) AgingDisplacementUdsStatus(Dem_EventIdType eventId)
{
   CONST(Dem_UdsStatusByteType, AUTOMATIC) eventUdsStatusOld = Dem_GetUdsStatus(eventId);
   CONST(uint16, AUTOMATIC) intDtc = Dem_GetEventIntDtc(eventId); /* KW MISRA.PTR.ARITH */
   CONST(Dem_UdsStatusByteType, AUTOMATIC) dtcUdsStatusOld = Dem_GetUdsStatusForValidDtc(intDtc);

   /* [SWS_Dem_00409] Clear confirmed bit */
   Dem_ClrUdsBits(eventId, DEM_UDS_SB_CDTC_CLR);

   Dem_TriggerOnEventStatus(eventId, eventUdsStatusOld);
   Dem_TriggerOnDTCStatus(intDtc, dtcUdsStatusOld, FALSE);
}

static FUNC(void, DEM_CODE) HandleFailureCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId, uint8 eventIndexInCombDtc, uint8 opCycleId)
{
   if (Dem_GetOpCycle(eventId) == opCycleId) /* KW MISRA.PTR.ARITH */
   {
      CONST(Dem_UdsStatusByteType, AUTOMATIC) udsStatus = Dem_GetUdsStatus(eventId);
      CONST(uint8, AUTOMATIC) confirmedThreshold = Dem_GetEventConfirmedThreshold(eventId); /* KW MISRA.PTR.ARITH */

      /*
       * GetEventConfirmedThreshold will return at maximum 255 (uint8).
       * It's therefore safe to typecast (pEvMemEntry->failure_counter[] + 1U) since
       * the expression will never be bigger than 254.
       */
      if (Dem_IsSet(udsStatus, DEM_UDS_SB_TFTOC) &&
         ((uint8)(pEvMemEntry->failure_counter[eventIndexInCombDtc] + 1U) < confirmedThreshold))
      {
         /*
          * [VSTAR_Dem_00159]
          * The failure counter shall be incremented at the end of the referenced operation cycle
          * in case the TestFailedThisOperationCycle is set to 1 and the failure counter is lower
          * than DemEventFailureCycleCounterThreshold-1.
          */
         pEvMemEntry->failure_counter[eventIndexInCombDtc]++;
      }

      if (Dem_IsClr(udsStatus, DEM_UDS_SB_TNCTOC | DEM_UDS_SB_TFTOC))
      {
         /*
          * [VSTAR_Dem_00160]
          * The failure counter shall be cleared at the end of the referenced operation cycle
          * in case the TestNotCompletedThisOperationCycle is set to 0 and TestFailedThisOperationCycle is set to 0.
          */
         pEvMemEntry->failure_counter[eventIndexInCombDtc] = 0;
      }
   }
}

static FUNC(void, DEM_CODE) HandleHealingCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId, uint8 eventIndexInCombDtc, uint8 opCycleId)
{
   if (Dem_GetOpCycle(eventId) == opCycleId) /* KW MISRA.PTR.ARITH */
   {
      CONST(Dem_UdsStatusByteType, AUTOMATIC) udsStatus = Dem_GetUdsStatus(eventId);

      if ((FALSE == Dem_GetSiFdcThresholdReachedTOC(eventId)) &&
         Dem_IsClr(udsStatus, DEM_UDS_SB_TNCTOC | DEM_UDS_SB_TFTOC) &&
         (pEvMemEntry->healing_counter[eventIndexInCombDtc] < DEM_UINT8_MAX))
      {
         /* [SWS_Dem_00506] [SWS_Dem_01056] */
         pEvMemEntry->healing_counter[eventIndexInCombDtc]++;
         Dem_UpdateIndicators();
      }
   }
}

/*============================================================================*\
 * EXPORTED FUNCTIONS
\*============================================================================*/


FUNC(void, DEM_CODE) Dem_SetSiFdcThresholdReached(Dem_EventIdType evId)
{
   /* ---------- Enter critical section ---------- */
   SchM_Enter_Dem_EaSi();
   Dem_BitArraySetBit(Dem_NvSi.fdcThresholdReached, evId - 1U);
   SchM_Exit_Dem_EaSi();
   /* ---------- Exit critical section ----------- */

   /* Set global flag to indicate that the SI status has changed */
   Dem_SiModified = TRUE;
}

FUNC(void, DEM_CODE) Dem_SetSiFdcThresholdReachedTOC(Dem_EventIdType evId)
{
   /* ---------- Enter critical section ---------- */
   SchM_Enter_Dem_EaSi();
   Dem_BitArraySetBit(Dem_NvSi.fdcThresholdReachedTOC, evId - 1U);
   SchM_Exit_Dem_EaSi();
   /* ---------- Exit critical section ----------- */

   /* Set global flag to indicate that the SI status has changed */
   Dem_SiModified = TRUE;
}

FUNC(void, DEM_CODE) Dem_ClrSiFdcThresholdReached(Dem_EventIdType evId)
{
   /* ---------- Enter critical section ---------- */
   SchM_Enter_Dem_EaSi();
   Dem_BitArrayClearBit(Dem_NvSi.fdcThresholdReached, evId - 1U);
   SchM_Exit_Dem_EaSi();
   /* ---------- Exit critical section ----------- */

   /* Set global flag to indicate that the SI status has changed */
   Dem_SiModified = TRUE;
}

FUNC(void, DEM_CODE) Dem_ClrSiFdcThresholdReachedTOC(Dem_EventIdType evId)
{
   /* ---------- Enter critical section ---------- */
   SchM_Enter_Dem_EaSi();
   Dem_BitArrayClearBit(Dem_NvSi.fdcThresholdReachedTOC, evId - 1U);
   SchM_Exit_Dem_EaSi();
   /* ---------- Exit critical section ----------- */

   /* Set global flag to indicate that the SI status has changed */
   Dem_SiModified = TRUE;
}

FUNC(boolean, DEM_CODE) Dem_GetSiFdcThresholdReachedTOC(Dem_EventIdType evId)
{
   return (Dem_BitArrayIsBitSet(Dem_NvSi.fdcThresholdReachedTOC, evId - 1U)) ? TRUE : FALSE;
}

FUNC(boolean, DEM_CODE) Dem_GetSiFdcThresholdReached(Dem_EventIdType evId)
{
   return (Dem_BitArrayIsBitSet(Dem_NvSi.fdcThresholdReached, evId - 1U)) ? TRUE : FALSE;
}

FUNC(void, DEM_CODE) Dem_NvResetSi(void)
{
   Dem_MemSet(&Dem_NvSi, 0U, sizeof(Dem_NvSi));
}

FUNC(void, DEM_CODE) Dem_SetMaxFdcSinceLastClear(Dem_EventIdType eventId, sint8 value)
{
   /* No DEM_MAX_FDC_SINCE_LAST_CLEAR DemInternalDataElements are configured. */
}

FUNC(void, DEM_CODE) Dem_UpdateMaxFdcSinceLastClear(Dem_EventIdType eventId)
{
   /* No DEM_MAX_FDC_SINCE_LAST_CLEAR DemInternalDataElements are configured. */
}

FUNC(void, DEM_CODE) Dem_NvResetMaxFdcSinceLastClear(void)
{
   /* No DEM_MAX_FDC_SINCE_LAST_CLEAR DemInternalDataElements are configured. */
}

FUNC(boolean, DEM_CODE) Dem_EvMemEntryHasPendingUpdates(uint16 intDtc)
{
   return (Dem_BitArrayIsBitSet(EventStateUpdate, GetEventFromIntDtcEventList(intDtc) - 1U)) ? TRUE : FALSE; /* KW MISRA.PTR.ARITH */
}


FUNC(Dem_UdsStatusByteType, DEM_CODE) Dem_GetUdsStatusByIntDtc(uint16 intDtc)
{
   return Dem_GetUdsStatus(GetEventFromIntDtcEventList(intDtc)); /* KW MISRA.PTR.ARITH */
}

FUNC(void, DEM_CODE) Dem_ClearUdsBitsForCombinedEvent(Dem_EventIdType eventId, uint8 statusMask)
{
   Dem_ClrUdsBits(eventId, statusMask); /* KW MISRA.PTR.ARITH */
}

FUNC(uint8, DEM_CODE) Dem_GetFailureCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId)
{
   return pEvMemEntry->failure_counter[0];
}

FUNC(void, DEM_CODE) Dem_SetFailureCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId, uint8 value)
{
   pEvMemEntry->failure_counter[0] = value;
}

FUNC(void, DEM_CODE) Dem_SetHealingCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId, uint8 value)
{
   pEvMemEntry->healing_counter[0] = value;
}

FUNC(void, DEM_CODE) Dem_SetIndicatorOn(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId, Dem_IndicatorIdType indicator)
{
   Dem_BitArraySetBit(&pEvMemEntry->wir_bits[0][0], indicator); /* KW MISRA.PTR.ARITH */
}

FUNC(void, DEM_CODE) Dem_ClearAllFailureCounters(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry)
{
   pEvMemEntry->failure_counter[0] = 0U;
}

FUNC(void, DEM_CODE) Dem_ClearAllHealingCounters(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry)
{
   pEvMemEntry->healing_counter[0] = 0U;
   Dem_MemSet(&pEvMemEntry->wir_bits[0][0], 0, sizeof(pEvMemEntry->wir_bits));
}

FUNC(void, DEM_CODE) Dem_HandleFailureCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, uint8 opCycleId)
{
   HandleFailureCounter(pEvMemEntry, pEvMemEntry->event_id, 0, opCycleId);
}

FUNC(void, DEM_CODE) Dem_HandleHealingCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, uint8 opCycleId)
{
   HandleHealingCounter(pEvMemEntry, pEvMemEntry->event_id, 0, opCycleId);
}

FUNC(void, DEM_CODE) Dem_CalculateIndicatorStatus(void) /* KW METRICS.E.Nesting_of_control */
{
}

FUNC(uint8, DEM_CODE) Dem_GetSiStatusByIntDtc(uint16 intDtc)
{
   return Dem_BuildSiByte(GetEventFromIntDtcEventList(intDtc)); /* KW MISRA.EXPR.PARENS */ /* KW MISRA.PTR.ARITH */
}

FUNC(boolean, DEM_CODE) Dem_ClearIntDtcEventData(uint16 intDtc, CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry)
{
   return ClearIntDtcEventData(intDtc, pEvMemEntry, 0);
}

FUNC(void, DEM_CODE) Dem_AgingDisplacementUdsStatus(Dem_EventIdType eventId)
{
   AgingDisplacementUdsStatus(eventId);
}


FUNC(boolean, DEM_CODE) Dem_IsDtcAvailable(uint16 intDtc)
{
   CONST(Dem_EventIdType, AUTOMATIC) eventId = GetEventFromIntDtcEventList(intDtc); /* KW MISRA.PTR.ARITH */
   return Dem_IsEventAvailable(eventId) ? TRUE : FALSE; /* KW MISRA.PTR.ARITH */
}

FUNC(Std_ReturnType, DEM_CODE) Dem_GetFaultDetectionCounterByIntDtc(uint16 intDtc, P2VAR(sint8, AUTOMATIC, DEM_APPL_DATA) pFdc)
{
   CONST(Dem_EventIdType, AUTOMATIC) eventId = GetEventFromIntDtcEventList(intDtc); /* KW MISRA.PTR.ARITH */
   return Dem_Internal_GetFaultDetectionCounter(eventId, pFdc); /* KW MISRA.PTR.ARITH */
}

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

/*============================================================================*\
 * Public CRC32 hash values for link time and post build checks
\*============================================================================*/
#define DEM_START_SEC_CONST_32
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

CONST(uint32, DEM_CONST) Dem_LTtoPCHashValue = 0x31ECAA46UL; /* Link time to pre-compile hash value */
CONST(uint32, DEM_CONST) Dem_LTHashValue     = 0xAD830215UL; /* Link time hash value */

#define DEM_STOP_SEC_CONST_32
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

/* END OF FILE -------------------------------------------------------------- */

