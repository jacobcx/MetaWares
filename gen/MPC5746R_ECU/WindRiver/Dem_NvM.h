/**\file
 *
 * \brief Generated Source File for Dem
 *
 * This file describes the interface towards NvM
 *
 * \b Application:        Dem \n
 * \b Target:             see Dem.h for details \n
 * \b Compiler:           see Dem.h for details \n
 * \b Autosar-Vendor-ID:  31 \n
 *
 * \b Module:             Dem_NvM.h \n
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
#ifndef DEM_NVM_H
#define DEM_NVM_H

/*============================================================================*\
 * PREPROCESSOR DIRECTIVES
\*============================================================================*/

/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/


/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/
#include "Dem_Types.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/

#define DEM_NVM_SW_MAJOR_VERSION (6U)
#define DEM_NVM_SW_MINOR_VERSION (1U)
#define DEM_NVM_SW_PATCH_VERSION (0U)

/* EXPORTED DEFINE MACROS (#, ##) -------------------------------------------- */


/*============================================================================*\
 * EXPORTED TYPEDEF DECLARATIONS
\*============================================================================*/

/* ENUMS --------------------------------------------------------------------- */


/* STRUCTS ------------------------------------------------------------------- */
typedef struct Dem_NvAdmin_Tag
{
   /** Occurrence information about events (first and last failed and confirmed) */
   Dem_EventOccurrenceInfoType event_occurrence_info;

   /**
    * Pointer to the bit-field where the event memory overflow indications are stored
    * TRUE -> event memory overflow
    * FALSE -> no event memory overflow
    * Bit 0: DEM_DTC_ORIGIN_PRM_MASK 
    * Bit 2: DEM_DTC_ORIGIN_SEC_MASK. 
    */
   uint8 event_memory_overflow_ind;

   /* Primary event memory */
   /** Index pointing to first event entry in chronologic order. */
   uint8 primary_first_ev_mem_entry;
   /** Index pointing to last event entry in chronologic order. */
   uint8 primary_last_ev_mem_entry;
   /** Index pointing to next event entry in chronologic order for each event memory entry. */
   uint8 primary_next_ev_mem_entry[10]; /* [DEM_MAX_NUMBER_EVENT_ENTRY_PRM] */
   /** Index pointing to previous event entry in chronologic order for each event memory entry. */
   uint8 primary_prev_ev_mem_entry[10]; /* [DEM_MAX_NUMBER_EVENT_ENTRY_PRM] */

} Dem_NvAdminType;

typedef struct Dem_NvSi_Tag
{
   /** Bit-array for storage of SI FdcThresholdReached-bit */
   uint8 fdcThresholdReached[1]; /* [DEM_NUMBER_OF_BYTES_EVENTS_BITARRAY] */
   /** Bit-array for storage of SI FdcThresholdReachedTOC-bit */
   uint8 fdcThresholdReachedTOC[1]; /* [DEM_NUMBER_OF_BYTES_EVENTS_BITARRAY] */

} Dem_NvSiType;

typedef struct Dem_NvEvMemEntry_Tag
{
   /** Event Id (DEM_EVENTID_INVALID if unused) */
   Dem_EventIdType event_id;

   /**
    * Index of the extended data storage connected to this event.
    * Only valid if ed_stored is TRUE.
    */
   uint16 ed_storage_index;

   /**
    * Index of the development A freeze frame storage connected to this event.
    * 0xffff indicates that there is no freeze frame stored.
    */
   uint16 dev_a_ff_index;

   /**
    * Index of the development B freeze frame storage connected to this event.
    * 0xffff indicates that there is no freeze frame stored.
    */
   uint16 dev_b_ff_index;

   /** Array of indices to freeze frames connected to this event. */
   uint16 ff_index[1]; /* [DEM_NUMBER_OF_FF_PER_EVENT] */

   /** Array of record numbers of freeze frames (if stored) */
   uint8 record_numbers[1]; /* [DEM_NUMBER_OF_FF_PER_EVENT] */

   /** Number of Freeze Frames stored for this event. */
   uint8 num_stored_ff;

   /**
    * Status variable that indicates if the event is
    * connected to an external extended data storage area.
    */
   boolean ed_stored;

   /** Copy of the status stored in Dem_NvUdsStatus */
   uint8 uds_status;

   /**
    * Bit 0: FdcThresholdReached. 
    * The bit is set to 1 when the debouncing counter reach the value DemEventMemoryEntryFdcThresholdStorageValue
    * and reset to 0 when the debouncing counter reach the value DemDebounceCounterPassedThreshold.. 
    * Bit 1: FdcThresholdReachedThisOperationCycle.
    * The bit is set to 1 when FdcThresholdReached is set to 1.
    * The bit is reset to 0 at start of the operation cycle (DemOperationCycleRef).
    */
   uint8 si;

   /**
    * Counter for number of event occurrences used for off board analysis.
    * DemOccurrenceCounterProcessing = DEM_PROCESS_OCCCTR_TF:
    * Increment counter with one when UDS DTC status bit 0 (TestFailed) changes from 0 to 1.
    * DemOccurrenceCounterProcessing = DEM_PROCESS_OCCCTR_CDTC:
    * Increment counter with one after fault confirmation and when UDS DTC status bit 0 (TestFailed) changes from 0 to 1.
    *
    * [SWS_Dem_00011]
    */
   uint8 occurrence_counter;

   /**
    * The counter Cycles since last failed is representing the number of operation cycles since
    * the DTC fault detection counter last reached its maximum value of +127 (since DTC
    * information was last cleared). All operation cycles, including those in which the test
    * has not been completed shall be included.
    *
    * [SWS_Dem_00774]
    */
   uint8 cycles_since_last_failed;

   /**
    * The counter Cycles since first failed is representing the number of operation cycles since
    * the DTC fault detection counter first reached its maximum value of +127 (since DTC
    * information was last cleared). All operation cycles, including those in which the test
    * has not been completed shall be included.
    *
    * [SWS_Dem_00778]
    */
   uint8 cycles_since_first_failed;

   /**
    * The counter Failed cycles is representing the number of operation cycles during which
    * the DTC fault detection counter reached its maximum value of +127 (since DTC information
    * was last cleared)
    *
    * [SWS_Dem_00782]
    */
   uint8 failed_cycles;

   /**
    * Counter used for aging.
    * Incrementation of the counter is handled at end of operation cycle.
    * Additional conditions depends on the setting of configuration parameter DemAgingRequieresTestedCycle.
    * DemAgingRequieresTestedCycle == 0 (count non-failed cycles after passed report):
    * Increase if UDS DTC status bit testFailed and bit testFailedThisOperationCycle are cleared.
    * DemAgingRequieresTestedCycle == 1 (count passed cycles without failed cycle in between):
    * Increase if UDS DTC status bit testFailedThisOperationCycle and bit testNotCompletedThisOperationCycle are cleared.
    *
    * [SWS_Dem_00019]
    */
   uint8 aging_counter;

   /** Bit-array of indicator specific WIR-bits */
   uint8 wir_bits[1][1]; /* [DEM_MAX_EVENTS_PER_DTC][DEM_WIR_ARRAY_LENGTH] */

   /**
    * Counter used to set confirmed-bit.
    * The number of consecutive operation cycles (including the current operation
    * cycle) during which the debouncing counter reached its maximum value
    * (since DTC information was last cleared).
    * When event combination on storage is enabled, the maximum number of events per DTC will decide the 
    * number of needed failure_counter:s per entry.
    *
    * [VSTAR_Dem_00358]
    */
   uint8 failure_counter[1]; /* [DEM_MAX_EVENTS_PER_DTC] */

   /**
    * Counter used for healing.
    * Increment counter with one at end of operation cycle if UDS DTC status bit 2 (TestFailedThisOperationCycle) and
    * bit 6 (TestNotCompletedThisOperationCycle) are not set.
    *
    * [SWS_Dem_00499]
    */
   uint8 healing_counter[1]; /* [DEM_MAX_EVENTS_PER_DTC] */

}Dem_NvEvMemEntryType;

typedef struct Dem_NvFreezeFrameData_Tag
{
   /** Data buffer for storage of freeze frame data */
   uint8 data[1]; /* [DEM_FF_BUFFER_LENGTH] */
   /** Index of the event memory entry owning this freeze frame */
   uint8 occupied_by_ev_mem_entry;

} Dem_NvFreezeFrameDataType;

/* UNIONS -------------------------------------------------------------------- */


/* OTHER TYPEDEFS ------------------------------------------------------------ */


/*============================================================================*\
 * EXPORTED OBJECT DECLARATIONS
\*============================================================================*/
#define DEM_START_SEC_VAR_SAVED_ZONE_COMMON_UNSPECIFIED
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern VAR(Dem_UdsStatusByteType, DEM_VAR) Dem_NvUdsStatus[4]; /* [DEM_NUMBER_OF_EVENTS] */ /* [SWS_Dem_00006] [SWS_Dem_01183] */
extern VAR(Dem_OperationCycleStateType, DEM_VAR) Dem_NvOpCycleState[1]; /* [DEM_NUMBER_OF_OPCYCLES] */
extern VAR(Dem_NvAdminType, DEM_VAR) Dem_NvAdmin;
extern VAR(Dem_NvSiType, DEM_VAR) Dem_NvSi;

/* Primary event memory entries */
extern VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry01;
extern VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry02;
extern VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry03;
extern VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry04;
extern VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry05;
extern VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry06;
extern VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry07;
extern VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry08;
extern VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry09;
extern VAR(Dem_NvEvMemEntryType, DEM_VAR) Dem_NvPrimaryEvMemEntry10;

/* Secondary event memory entries */

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

/*============================================================================*\
 * EXPORTED FUNCTIONS PROTOTYPES
\*============================================================================*/

/*============================================================================*\
 * EXPORTED FUNCTION-LIKE-MACROS and INLINE FUNCTIONS
\*============================================================================*/

#endif   /* #ifdef DEM_NVM_H */
/* END OF FILE -------------------------------------------------------------- */

