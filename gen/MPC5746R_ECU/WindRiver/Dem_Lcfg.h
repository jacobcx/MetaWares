/**\file
 *
 * \brief Generated Source File for Dem
 *
 * This file describes the link-time time configuration parameters
 *
 * \b Application:        Dem \n
 * \b Target:             see Dem.h for details \n
 * \b Compiler:           see Dem.h for details \n
 * \b Autosar-Vendor-ID:  31 \n
 *
 * \b Module:             Dem_Lcfg.h \n
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
#ifndef DEM_LCFG_H
#define DEM_LCFG_H

/*============================================================================*\
 * PREPROCESSOR DIRECTIVES
\*============================================================================*/

/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/


/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/
#include "Dem_Int.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/

#define DEM_LCFG_SW_MAJOR_VERSION (6U)
#define DEM_LCFG_SW_MINOR_VERSION (1U)
#define DEM_LCFG_SW_PATCH_VERSION (0U)

/* EXPORTED DEFINE MACROS (#, ##) -------------------------------------------- */


/*============================================================================*\
 * EXPORTED TYPEDEF DECLARATIONS
\*============================================================================*/

/* ENUMS --------------------------------------------------------------------- */


/* STRUCTS ------------------------------------------------------------------- */


/* UNIONS -------------------------------------------------------------------- */


/* OTHER TYPEDEFS ------------------------------------------------------------ */


/*============================================================================*\
 * EXPORTED OBJECT DECLARATIONS
\*============================================================================*/
#define DEM_START_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern CONST(Dem_ResetNvBlockPtrType, DEM_CONST) Dem_NvResetBlock[DEM_NUMBER_OF_NV_BLOCKS];
extern CONST(Dem_LCfgType, DEM_CONST) Dem_LCfg;

#define DEM_STOP_SEC_CONST_UNSPECIFIED
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DEM_START_SEC_VAR_NO_INIT_BOOLEAN
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern VAR(boolean, DEM_VAR) Dem_SiModified;

#define DEM_STOP_SEC_VAR_NO_INIT_BOOLEAN
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

/*============================================================================*\
 * EXPORTED FUNCTIONS PROTOTYPES
\*============================================================================*/

#define DEM_START_SEC_CODE
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

/**
 * \brief Set the FdcThresholdReached bit in the SI status byte.
 *
 * \param[in] evId   The event for which the bits shall be set.
 */
extern FUNC(void, DEM_CODE) Dem_SetSiFdcThresholdReached(Dem_EventIdType evId);

/**
 * \brief Set the FdcThresholdReachedTOC bit in the SI status byte.
 *
 * \param[in] evId   The event for which the bits shall be set.
 */
extern FUNC(void, DEM_CODE) Dem_SetSiFdcThresholdReachedTOC(Dem_EventIdType evId);

/**
 * \brief Clear the FdcThresholdReached bit in the SI status byte.
 *
 * \param[in] evId   The event for which the bits shall be cleared.
 */
extern FUNC(void, DEM_CODE) Dem_ClrSiFdcThresholdReached(Dem_EventIdType evId);

/**
 * \brief Clear the FdcThresholdReachedTOC bit in the SI status byte.
 *
 * \param[in] evId   The event for which the bits shall be cleared.
 */
extern FUNC(void, DEM_CODE) Dem_ClrSiFdcThresholdReachedTOC(Dem_EventIdType evId);

/**
 * \brief Event values: Get SI bit FdcThresholdReached.
 *
 * \param[in] evId Event Id.
 * \return FALSE SI bit FdcThresholdReached is not set.
 * \return TRUE SI bit FdcThresholdReached is set.
 */
extern FUNC(boolean, DEM_CODE) Dem_GetSiFdcThresholdReached(Dem_EventIdType evId);

/**
 * \brief Event values: Get SI bit FdcThresholdReachedThisOperationCycle.
 *
 * \param[in] evId Event Id.
 * \return FALSE SI bit FdcThresholdReachedTOC is not set.
 * \return TRUE SI bit FdcThresholdReachedTOC is set.
 */
extern FUNC(boolean, DEM_CODE) Dem_GetSiFdcThresholdReachedTOC(Dem_EventIdType evId);

/**
 * \brief This function resets all data in the Si block.
 */
extern FUNC(void, DEM_CODE) Dem_NvResetSi(void);

/**
 * \brief Set the counter MaxFdcSinceLastClear value for an event.
 *
 * \param[in] eventId Event Id to set value for.
 * \param[in] value   Value to set.
 */
extern FUNC(void, DEM_CODE) Dem_SetMaxFdcSinceLastClear(Dem_EventIdType eventId, sint8 value);

/**
 * \brief Update the MaxFdcSinceLastClear counter if needed.
 *
 * \param[in] eventId Event for which the counter shall be updated.
 */
extern FUNC(void, DEM_CODE) Dem_UpdateMaxFdcSinceLastClear(Dem_EventIdType eventId);

/**
 * \brief This function resets all data in the MaxFdcSinceLastClear block.
 */
extern FUNC(void, DEM_CODE) Dem_NvResetMaxFdcSinceLastClear(void);

/**
 * \brief Check if any event connected to an internal DTC has unhandled event state updates.
 *
 * \param[in] intDtc internal DTC id
 * \retval TRUE At least one of the events connected to the given DTC has an unhandled event state
 * \retval FALSE None one of the events connected to the given DTC has an unhandled event state
 */
extern FUNC(boolean, DEM_CODE) Dem_EvMemEntryHasPendingUpdates(uint16 intDtc);

/**
 * \brief Retrieve the UDS status byte for an internal DTC.
 *
 * In case of event combination, the combined status byte will be returned.
 * \param[in] intDtc internal DTC id for which the UDS status byte is requested.
 * \return The UDS status byte
 */
extern FUNC(Dem_UdsStatusByteType, DEM_CODE) Dem_GetUdsStatusByIntDtc(uint16 intDtc);

/**
 * \brief For event combination on storage: clear given UDS bits for all events belonging to the same internal DTC as the given input event.
 *
 * \param[in] eventId Event id for which all related UDS status bytes shall be modified.
 * \param[in] statusMask Status mask to use during status modification.
 */
extern FUNC(void, DEM_CODE) Dem_ClearUdsBitsForCombinedEvent(Dem_EventIdType eventId, uint8 statusMask);

/**
 * \brief Get the failure counter value for the given event memory entry and the given event.
 *
 * \param[in] pEvMemEntry The entry for which the failure counter shall be retreived.
 * \param[in] eventId The eventId for which the failure counter shall be retreived (only needed for event combination).
 */
extern FUNC(uint8, DEM_CODE) Dem_GetFailureCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId);

/**
 * \brief Set the failure counter value for the given event memory entry and the given event.
 *
 * \param[in] pEvMemEntry The entry for which the failure counter shall be set.
 * \param[in] eventId     The eventId for which the failure counter shall be set (only needed for event combination).
 * \param[in] value       The value to assign to the failure counter.
 */
extern FUNC(void, DEM_CODE) Dem_SetFailureCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId, uint8 value);

/**
 * \brief Set the healing counter value for the given event memory entry and the given event.
 *
 * \param[in] pEvMemEntry The entry for which the healing counter shall be set.
 * \param[in] eventId     The eventId for which the healing counter shall be set (only needed for event combination).
 * \param[in] value       The value to assign to the healing counter.
 */
extern FUNC(void, DEM_CODE) Dem_SetHealingCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId, uint8 value);

/**
 * \brief Set the indicator status to on for the given event memory entry and the given event.
 *
 * \param[in] pEvMemEntry The entry for which the indicator status shall be retreived.
 * \param[in] eventId The eventId for which the indicator status shall be retreived (only needed for event combination).
 * \param[in] indicator The indicator for which the status shall be retreived.
 */
extern FUNC(void, DEM_CODE) Dem_SetIndicatorOn(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, Dem_EventIdType eventId, Dem_IndicatorIdType indicator);

/**
 * \brief Clear the failure counter(s) for the given event memory entry.
 *
 * \param[in] pEvMemEntry The entry for which the failure counter(s) shall be cleared.
 */
extern FUNC(void, DEM_CODE) Dem_ClearAllFailureCounters(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry);

/**
 * \brief Clear the healing counter(s) for the given event memory entry.
 *
 * \param[in] pEvMemEntry The entry for which the healing counter(s) shall be cleared.
 */
extern FUNC(void, DEM_CODE) Dem_ClearAllHealingCounters(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry);

/**
 * \brief Handle (increase/clear) all failure counters for the given event memory entry at the end of an operation cycle.
 *
 * \param[in] pEvMemEntry The entry for which the failure counters shall be handled.
 * \param[in] opCycleId The operation cycle currently handled.
 */
extern FUNC(void, DEM_CODE) Dem_HandleFailureCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, uint8 opCycleId);

/**
 * \brief Handle (increase) all healing counters for the given event memory entry at the end of an operation cycle.
 *
 * \param[in] pEvMemEntry The entry for which the healing counters shall be handled.
 * \param[in] opCycleId The operation cycle currently handled.
 */
extern FUNC(void, DEM_CODE) Dem_HandleHealingCounter(CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry, uint8 opCycleId);

/**
 * \brief Calculate the indicator statuses for all indicators by checking all the events connected to an indicator.
 */
extern FUNC(void, DEM_CODE) Dem_CalculateIndicatorStatus(void);

/**
 * \brief Retrieve the SI status byte for an internal DTC.
 *
 * In case of event combination, the combined status byte will be returned.
 * \param[in] intDtc internal DTC id for which the SI status byte is requested.
 * \return The SI status byte
 */
extern FUNC(uint8, DEM_CODE) Dem_GetSiStatusByIntDtc(uint16 intDtc);

/**
 * \brief Perform aging for the UDS status byte.
 *
 * \param[in] eventId The eventId for which the UDS status shall be aged.
 */
extern FUNC(void, DEM_CODE) Dem_AgingDisplacementUdsStatus(Dem_EventIdType eventId);

/**
 * \brief Is the DTC available.
 *
 * \param[in] intDtc Internal DTC id for which the availability status is requested.
 * \retval TRUE At least one of the events for the given DTC is available.
 * \retval FALSE None of the events for the given DTC is available.
 */
extern FUNC(boolean, DEM_CODE) Dem_IsDtcAvailable(uint16 intDtc);

/**
 * \brief Get FaultDetectionCounter for a DTC.
 *
 * In case of event combination, the max fdc of all the sub-events will be returned.
 * \param[in] intDtc Internal DTC id for which the fdc is requested.
 * \param[out] pFdc The FaultDetectionCounter value. If any other value than E_OK is returned this parameter will be set to 0.
 * \return The result of the request (E_OK if at least one of the sub-events fdc was successfully read).
 */
extern FUNC(Std_ReturnType, DEM_CODE) Dem_GetFaultDetectionCounterByIntDtc(uint16 intDtc, P2VAR(sint8, AUTOMATIC, DEM_APPL_DATA) pFdc);

/**
 * \brief Clear event specific data for an internal DTC.
 *
 * \param[in] intDtc The internal DTC for which the event data shall be cleared.
 * \param[in] pEvMemEntry The entry for which the data shall be cleared.
 */
extern FUNC(boolean, DEM_CODE) Dem_ClearIntDtcEventData(uint16 intDtc, CONST(Dem_NvEvMemEntryPtrType, AUTOMATIC) pEvMemEntry);

#define DEM_STOP_SEC_CODE
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

/*============================================================================*\
 * EXPORTED FUNCTION-LIKE-MACROS and INLINE FUNCTIONS
\*============================================================================*/

#endif   /* #ifdef DEM_LCFG_H */
/* END OF FILE -------------------------------------------------------------- */

