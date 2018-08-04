/**\file
 *
 * \brief Generated Source File for Dem
 *
 * This file describes the post-build configuration parameters
 *
 * \b Application:        Dem \n
 * \b Target:             see Dem.h for details \n
 * \b Compiler:           see Dem.h for details \n
 * \b Autosar-Vendor-ID:  31 \n
 *
 * \b Module:             Dem_PBcfg.c \n
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
#include "Rte_Dem.h"
#include "Dem_Int.h"
#include "Dem_PBcfg.h"
#include "Dem_Cfg.h"
#include "Dem_IntEvtId.h"
#include "Dem_IntErrId.h"

/* LOCAL DEFINES FOR CONSTANTS -----------------------------------------------*/

#define EXPECTED_SW_MAJOR_VERSION (6U)
#define EXPECTED_SW_MINOR_VERSION (1U)
#define EXPECTED_SW_PATCH_VERSION (0U)

#if ( (DEM_PBCFG_SW_MAJOR_VERSION != EXPECTED_SW_MAJOR_VERSION) || \
      (DEM_PBCFG_SW_MINOR_VERSION != EXPECTED_SW_MINOR_VERSION) || \
      (DEM_PBCFG_SW_PATCH_VERSION != EXPECTED_SW_PATCH_VERSION) )
   #error "The software version of the Dem_PBcfg.h file does not match the expected version."
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

#define DEM_NUMBER_OF_DB_COUNTER_CLASSES    ((uint8)1U)
#define DEM_NUMBER_OF_DB_TIME_CLASSES       ((uint8)0U)
#define DEM_NUMBER_OF_DTC_ATTR              ((uint8)1U)
#define DEM_NUMBER_OF_EVENT_ATTR            ((uint8)1U)
#define DEM_NUMBER_OF_INDICATORS            ((uint8)0U)
#define DEM_NUMBER_OF_INDICATOR_ATTR        ((uint8)0U)
#define DEM_NUMBER_OF_BYTES_EVENTS_BITARRAY ((uint8)1U)
#define DEM_NUMBER_OF_DTC_EVENTS            ((uint16)2U)
#define DEM_NUMBER_OF_FF_CLASSES            ((uint16)0U)
#define DEM_NUMBER_OF_ENABLE_COND_GROUPS    ((uint8)0U)
#define DEM_NUMBER_OF_STORAGE_COND_GROUPS   ((uint8)0U)

/* DemDTC */
#define DEM_DemDTC_22938 ((uint16)0U)
#define DEM_DemDTC_22940 ((uint16)1U)

/* DemFreezeFrameRecNumClass and corresponding internally created for calculated numbers */

/* DemExtendedDataClass */

/* DemFreezeFrameClass */

/* DemDidClass */

/* DemEnableCondition */

/* DemEnableConditionGroup */

/* DemStorageCondition */

/* DemStorageConditionGroup */

/* LOCAL DEFINE MACROS (#, ##) -----------------------------------------------*/

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define DEM_NUMBER_OF_DTCS                ((uint16)2U)
#define DEM_NUMBER_OF_EVENTS              ((Dem_EventIdType)4U)

/*============================================================================*\
 * LOCAL TYPEDEF DECLARATIONS
\*============================================================================*/

/* ENUMS ---------------------------------------------------------------------*/


/* STRUCTS -------------------------------------------------------------------*/


/* UNIONS --------------------------------------------------------------------*/


/* OTHER TYPEDEFS ------------------------------------------------------------*/


/*============================================================================*\
 * OBJECT DEFINITIONS
\*============================================================================*/

/* EXPORTED OBJECTS ----------------------------------------------------------*/
#define DEM_START_SEC_POSTBUILD_CONST_32
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

static CONST(uint32, DEM_CONST) PBtoPCHashValue = 0x31ECAA46UL; /* Post build to pre-compile hash value */
static CONST(uint32, DEM_CONST) PBtoLTHashValue = 0xAD830215UL; /* Post build to link time hash value */

#define DEM_STOP_SEC_POSTBUILD_CONST_32
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_CALIB_GENERAL_BOOLEAN
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */


#define DEM_STOP_SEC_CALIB_GENERAL_BOOLEAN
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_CALIB_GENERAL_8
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */


#define DEM_STOP_SEC_CALIB_GENERAL_8
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_CALIB_GENERAL_16
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

static CONST(uint16, DEM_CONST) CommonFreezeFrameData = DEM_FF_CLASS_INVALID;
static CONST(uint16, DEM_CONST) CommonFreezeFrameDataDevA = DEM_FF_CLASS_INVALID;

#define DEM_STOP_SEC_CALIB_GENERAL_16
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_CALIB_BOOLEAN
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

static CONST(boolean, DEM_CONST) DTCAttributes_AgingAllowed[DEM_NUMBER_OF_DTC_ATTR] =
{
   TRUE
};

static CONST(boolean, DEM_CONST) DTCAttributes_ImmediateNvStorage[DEM_NUMBER_OF_DTC_ATTR] =
{
   FALSE
};

static CONST(boolean, DEM_CONST) DTCAttributes_InstantAging[DEM_NUMBER_OF_DTC_ATTR] =
{
   FALSE
};

#define DEM_STOP_SEC_CALIB_BOOLEAN
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_CALIB_8
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

static CONST(uint8, DEM_CONST) DTCAttributes_AgingCycle[DEM_NUMBER_OF_DTC_ATTR] =
{
   DemConf_DemOperationCycle_DemOperationCycle
};

static CONST(uint8, DEM_CONST) DTCAttributes_AgingThreshold[DEM_NUMBER_OF_DTC_ATTR] =
{
   100
};

static CONST(uint8, DEM_CONST) DTCAttributes_MemoryDest[DEM_NUMBER_OF_DTC_ATTR] =
{
   0x01
};

static CONST(uint8, DEM_CONST) DTCAttributes_Priority[DEM_NUMBER_OF_DTC_ATTR] =
{
   1
};

static CONST(uint8, DEM_CONST) DTCAttributes_Significance[DEM_NUMBER_OF_DTC_ATTR] =
{
   0
};

static CONST(uint8, DEM_CONST) DTCAttributes_FFRecNum[DEM_NUMBER_OF_DTC_ATTR] =
{
   DEM_FF_REC_NUM_CLASS_INVALID
};

static CONST(uint8, DEM_CONST) DTCAttributes_DevFFARecNum[DEM_NUMBER_OF_DTC_ATTR] =
{
   DEM_DEV_FF_REC_NUM_INVALID
};

static CONST(uint8, DEM_CONST) DTCAttributes_DevFFBRecNum[DEM_NUMBER_OF_DTC_ATTR] =
{
   DEM_DEV_FF_REC_NUM_INVALID
};

static CONST(uint8, DEM_CONST) DTCAttributes_ED[DEM_NUMBER_OF_DTC_ATTR] =
{
   DEM_ED_CLASS_INVALID
};


static CONST(uint8, DEM_CONST) Dtcs_DTCAttributes[DEM_NUMBER_OF_DTCS] =
{
   0, /* DemDTC_22938 */
   0 /* DemDTC_22940 */
};

static CONST(uint8, DEM_CONST) Dtcs_FunctionalUnit[DEM_NUMBER_OF_DTCS] =
{
   0x00, /* DemDTC_22938 */
   0x00 /* DemDTC_22940 */
};

static CONST(Dem_DTCSeverityType, DEM_CONST) Dtcs_Severity[DEM_NUMBER_OF_DTCS] =
{
   DEM_SEVERITY_NO_SEVERITY, /* DemDTC_22938 */
   DEM_SEVERITY_NO_SEVERITY /* DemDTC_22940 */
};


static CONST(uint8, DEM_CONST) EventAttributes_ConfirmedThreshold[DEM_NUMBER_OF_EVENT_ATTR] =
{
   0
};

static CONST(uint8, DEM_CONST) EventAttributes_EnableCondGroup[DEM_NUMBER_OF_EVENT_ATTR] =
{
   DEM_ENABLE_COND_GROUP_INVALID
};

static CONST(uint8, DEM_CONST) EventAttributes_StorageCondGroup[DEM_NUMBER_OF_EVENT_ATTR] =
{
   DEM_STORAGE_COND_GROUP_INVALID
};

static CONST(uint8, DEM_CONST) EventAttributes_OperationCycle[DEM_NUMBER_OF_EVENT_ATTR] =
{
   DemConf_DemOperationCycle_DemOperationCycle
};

static CONST(uint8, DEM_CONST) Events_EventAvailable[DEM_NUMBER_OF_BYTES_EVENTS_BITARRAY] =
{0x0F};

static CONST(uint8, DEM_CONST) Events_DebounceData[DEM_NUMBER_OF_EVENTS] =
{
   0, /* Event: DemEventParameter_EEP, DebounceAlg: DEM_DB_COUNTER */
   0, /* Event: DemEventParameter_CanSM, DebounceAlg: DEM_DB_COUNTER */
   0, /* Event: DemEventParameter_22938, DebounceAlg: DEM_DB_COUNTER */
   0 /* Event: DemEventParameter_22940, DebounceAlg: DEM_DB_COUNTER */
};

static CONST(uint8, DEM_CONST) Events_EventAttributes[DEM_NUMBER_OF_EVENTS] =
{
   0, /* DemEventParameter_EEP */
   0, /* DemEventParameter_CanSM */
   0, /* DemEventParameter_22938 */
   0 /* DemEventParameter_22940 */
};

static CONST(uint8, DEM_CONST) Events_IndicatorAttributes[DEM_NUMBER_OF_EVENTS] =
{
   DEM_INDICATOR_ATTR_INVALID, /* DemEventParameter_EEP */
   DEM_INDICATOR_ATTR_INVALID, /* DemEventParameter_CanSM */
   DEM_INDICATOR_ATTR_INVALID, /* DemEventParameter_22938 */
   DEM_INDICATOR_ATTR_INVALID /* DemEventParameter_22940 */
};


#define DEM_STOP_SEC_CALIB_8
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_CALIB_16
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

static CONST(uint16, DEM_CONST) Dtcs_ObdDtc[DEM_NUMBER_OF_DTCS] =
{
   0x0000, /* DemDTC_22938 */
   0x0000 /* DemDTC_22940 */
};

static CONST(uint16, DEM_CONST) Dtcs_FreezeFrame[DEM_NUMBER_OF_DTCS] =
{
   DEM_FF_CLASS_INVALID, /* DemDTC_22938 */
   DEM_FF_CLASS_INVALID /* DemDTC_22940 */
};

static CONST(uint16, DEM_CONST) Dtcs_DevFreezeFrameA[DEM_NUMBER_OF_DTCS] =
{
   DEM_FF_CLASS_INVALID, /* DemDTC_22938 */
   DEM_FF_CLASS_INVALID /* DemDTC_22940 */
};

static CONST(uint16, DEM_CONST) Dtcs_DevFreezeFrameB[DEM_NUMBER_OF_DTCS] =
{
   DEM_FF_CLASS_INVALID, /* DemDTC_22938 */
   DEM_FF_CLASS_INVALID /* DemDTC_22940 */
};

#define DEM_STOP_SEC_CALIB_16
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_CALIB_32
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

static CONST(uint32, DEM_CONST) Dtcs_UdsDtc[DEM_NUMBER_OF_DTCS] =
{
   0x00599A, /* DemDTC_22938 */
   0x00599C /* DemDTC_22940 */
};

#define DEM_STOP_SEC_CALIB_32
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_CALIB_UNSPECIFIED
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

static CONST(Dem_CounterDebouncingType, DEM_CONST) DbCounter[DEM_NUMBER_OF_DB_COUNTER_CLASSES] =
{  /*incr_step*/ /*decr_step*/ /*failed_threshold*/ /*passed_threshold*/ /*fdc_threshold*/ /*jump_up_value*/ /*jump_down_value*/ /*jump_up*/ /*jump_down*/
   {1, -1, 127, -128, 127, 0, 0, 0, 0}
};

#define DEM_STOP_SEC_CALIB_UNSPECIFIED
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_POSTBUILD_CONST_8
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */



#define DEM_STOP_SEC_POSTBUILD_CONST_8
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_POSTBUILD_CONST_16
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

static CONST(uint16, DEM_CONST) IntDtcIndex[DEM_NUMBER_OF_EVENTS] =
{
   DEM_INT_DTC_INVALID, /* DemEventParameter_EEP */
   DEM_INT_DTC_INVALID, /* DemEventParameter_CanSM */
   DEM_DemDTC_22938, /* DemEventParameter_22938 */
   DEM_DemDTC_22940 /* DemEventParameter_22940 */
};

static CONST(Dem_EventIdType, DEM_CONST) IntDtcEvents[DEM_NUMBER_OF_DTC_EVENTS] =
{
   DemConf_DemEventParameter_DemEventParameter_22938, /* DemDTC_22938 */
   DemConf_DemEventParameter_DemEventParameter_22940 /* DemDTC_22940 */
};



#define DEM_STOP_SEC_POSTBUILD_CONST_16
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_POSTBUILD_CONST_UNSPECIFIED
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */






CONST(Dem_ConfigType, DEM_CONST) DemConfigSet =
{
   /* p_dtc_attr_aging_allowed */
   DTCAttributes_AgingAllowed,
   /* p_dtc_attr_immediate_nv_storage */
   DTCAttributes_ImmediateNvStorage,
   /* p_dtc_attr_instant_aging */
   DTCAttributes_InstantAging,
   /* p_dtc_attr_aging_cycle */
   DTCAttributes_AgingCycle,
   /* p_dtc_attr_aging_threshold */
   DTCAttributes_AgingThreshold,
   /* p_dtc_attr_memory_dest */
   DTCAttributes_MemoryDest,
   /* p_dtc_attr_priority */
   DTCAttributes_Priority,
   /* p_dtc_attr_significance */
   DTCAttributes_Significance,
   /* p_dtc_attr_ed */
   DTCAttributes_ED,
   /* p_dtc_attr_ff_rec_num_class */
   DTCAttributes_FFRecNum,
   /* p_dtc_attr_dev_ff_a_rec_num */
   DTCAttributes_DevFFARecNum,
   /* p_dtc_attr_dev_ff_b_rec_num */
   DTCAttributes_DevFFBRecNum,
   /* p_event_attr_confirmed_threshold */
   EventAttributes_ConfirmedThreshold,
   /* p_event_attr_op_cycle */
   EventAttributes_OperationCycle,
   /* p_event_attr_enable_cond_group */
   EventAttributes_EnableCondGroup,
   /* p_event_attr_storage_cond_group */
   EventAttributes_StorageCondGroup,
   /* p_dtc_functional_unit */
   Dtcs_FunctionalUnit,
   /* p_dtc_severity */
   Dtcs_Severity,
   /* p_dtc_obd_dtc */
   Dtcs_ObdDtc,
   /* p_dtc_uds_dtc */
   Dtcs_UdsDtc,
   /* p_dtc_ff_class */
   Dtcs_FreezeFrame,
   /* p_dtc_dev_a_ff_class */
   Dtcs_DevFreezeFrameA,
   /* p_dtc_dev_b_ff_class */
   Dtcs_DevFreezeFrameB,
   /* p_dtc_attributes */
   Dtcs_DTCAttributes,
   /* p_event_available */
   Events_EventAvailable,
   /* p_event_debounce_data */
   Events_DebounceData,
   /* p_event_attributes */
   Events_EventAttributes,
   /* p_event_indicator_attributes */
   Events_IndicatorAttributes,
   /* p_common_ff_data */
   &CommonFreezeFrameData,
   /* p_common_ff_data_dev_a */
   &CommonFreezeFrameDataDevA,
   /* p_db_counter */
   DbCounter,
   /* p_db_time */
   NULL_PTR,
   /* p_int_dtc_index */
   IntDtcIndex,
   /* p_int_dtc_events */
   IntDtcEvents,
   /* p_indicator_attributes */
   NULL_PTR,
   /* p_ff_classes */
   NULL_PTR,
   /* p_enable_condition_groups */
   NULL_PTR,
   /* p_storage_condition_groups */
   NULL_PTR,
   /* num_dtcs */
   DEM_NUMBER_OF_DTCS,
   /* num_events */
   DEM_NUMBER_OF_EVENTS,
   /* PBtoPCHashValue_P */
   &PBtoPCHashValue,
   /* PBtoLTHashValue_P */
   &PBtoLTHashValue
};


#define DEM_STOP_SEC_POSTBUILD_CONST_UNSPECIFIED
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

/* LOCAL OBJECTS -------------------------------------------------------------*/

/*============================================================================*\
 * LOCAL FUNCTION PROTOTYPES
\*============================================================================*/

/*============================================================================*
 * LOCAL FUNCTION-LIKE-MACROS and INLINE FUNCTIONS
\*============================================================================*/

/*============================================================================*\
 * LOCAL FUNCTIONS
\*============================================================================*/

/*============================================================================*\
 * EXPORTED FUNCTIONS
\*============================================================================*/

/* END OF FILE ---------------------------------------------------------------*/
