/**\file
 *
 * \brief Generated Source File for Rte
 *
 * 
 *
 * \b Application:        Rte \n
 * \b Target:             see Rte.h for details \n
 * \b Compiler:           see Rte.h for details \n
 * \b Autosar-Vendor-ID:  31 \n
 *
 * \b Module:             Rte_Dem.h \n
 * \b Generator:          VSTAR Rte V6.0.1-Build714 \n
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
#ifndef RTE_DEM_H
#define RTE_DEM_H

#ifndef RTE_CORE
#ifdef RTE_APPLICATION_HEADER_FILE
#error Multiple application header files included.
#endif /* RTE_APPLICATION_HEADER_FILE */
#define RTE_APPLICATION_HEADER_FILE
#endif /* RTE_CORE */

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*============================================================================*
 * PREPROCESSOR DIRECTIVES                                                    *
 *============================================================================*/
/* PRQA S 777 ++
   Variable names are (partly) defined by user in SWC configuration.
*/

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

#include "Rte_Dem_Type.h"
#include "Rte_DataHandleType.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define RTE_DEM_SW_MAJOR_VERSION (6U)
#define RTE_DEM_SW_MINOR_VERSION (0U)
#define RTE_DEM_SW_PATCH_VERSION (1U)

#ifndef RTE_CORE
/* Application errors --------------------------------------------------------*/
#define RTE_E_AgingCycle_E_NOT_OK ((Std_ReturnType) 1U)
#define RTE_E_CddIf_DEM_CLEAR_BUSY ((Std_ReturnType) 5U)
#define RTE_E_CddIf_DEM_CLEAR_FAILED ((Std_ReturnType) 3U)
#define RTE_E_CddIf_DEM_CLEAR_MEMORY_ERROR ((Std_ReturnType) 6U)
#define RTE_E_CddIf_DEM_CLEAR_PENDING ((Std_ReturnType) 4U)
#define RTE_E_CddIf_DEM_CLEAR_WRONG_DTC ((Std_ReturnType) 1U)
#define RTE_E_CddIf_DEM_CLEAR_WRONG_DTCORIGIN ((Std_ReturnType) 2U)
#define RTE_E_DTCSuppression_E_NOT_OK ((Std_ReturnType) 1U)
#define RTE_E_DcmIf_DEM_CLEAR_BUSY ((Std_ReturnType) 5U)
#define RTE_E_DcmIf_DEM_CLEAR_FAILED ((Std_ReturnType) 3U)
#define RTE_E_DcmIf_DEM_CLEAR_MEMORY_ERROR ((Std_ReturnType) 6U)
#define RTE_E_DcmIf_DEM_CLEAR_PENDING ((Std_ReturnType) 4U)
#define RTE_E_DcmIf_DEM_CLEAR_WRONG_DTC ((Std_ReturnType) 1U)
#define RTE_E_DcmIf_DEM_CLEAR_WRONG_DTCORIGIN ((Std_ReturnType) 2U)
#define RTE_E_DcmIf_DEM_CONTROL_DTC_SETTING_N_OK ((Std_ReturnType) 1U)
#define RTE_E_DcmIf_DEM_CONTROL_DTC_WRONG_DTCGROUP ((Std_ReturnType) 2U)
#define RTE_E_DiagnosticInfo_DEM_E_NODATAAVAILABLE ((Std_ReturnType) 48U)
#define RTE_E_DiagnosticInfo_DEM_E_NO_DTC_AVAILABLE ((Std_ReturnType) 2U)
#define RTE_E_DiagnosticInfo_DEM_E_NO_FDC_AVAILABLE ((Std_ReturnType) 3U)
#define RTE_E_DiagnosticInfo_DEM_E_WRONG_DIDNUMBER ((Std_ReturnType) 50U)
#define RTE_E_DiagnosticInfo_DEM_E_WRONG_RECORDNUMBER ((Std_ReturnType) 49U)
#define RTE_E_DiagnosticInfo_E_NOT_OK ((Std_ReturnType) 1U)
#define RTE_E_DiagnosticMonitor_E_NOT_OK ((Std_ReturnType) 1U)
#define RTE_E_EvMemOverflowIndication_E_NOT_OK ((Std_ReturnType) 1U)
#define RTE_E_OperationCycle_E_NOT_OK ((Std_ReturnType) 1U)

/* Init values ---------------------------------------------------------------*/

/* API Mapping ---------------------------------------------------------------*/

/* Port handle API Mapping ---------------------------------------------------*/
#endif

/*============================================================================*
 * EXPORTED TYPEDEF DECLARATIONS                                              *
 *============================================================================*/

/* PDS/CDS local data types --------------------------------------------------*/

/* Port Data Structures (PDS) ------------------------------------------------*/

/* Component Data Structure (CDS) --------------------------------------------*/
struct Rte_CDS_Dem /* KW PORTING.STORAGE.STRUCT */
{
   /* Data Handles section. -----------------------*/
   /* Per-instance Memory Handles section. --------*/
   /* Inter-runnable Variable Handles section. ----*/
   /* Calibration Parameter Handles section. ------*/
   /* Exclusive-area API section. -----------------*/
   /* Port API section. ---------------------------*/
   /* Inter Runnable Variable API section. --------*/
   /* Inter Runnable Triggering API section. ------*/
   /* RAM Block Data Updated Handles section. -----*/
   /* Vendor specific section. --------------------*/
   uint8 _dummy;
};

#ifndef RTE_CORE
/* Port handle types ---------------------------------------------------------*/

/* Pim types -----------------------------------------------------------------*/

/* Instance handle type ------------------------------------------------------*/
typedef P2CONST(struct Rte_CDS_Dem, TYPEDEF, RTE_CONST) Rte_Instance;
#endif

/*============================================================================*
 * EXPORTED OBJECT DECLARATIONS                                               *
 *============================================================================*/

#define RTE_START_SEC_CONST_UNSPECIFIED
#include "Rte_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern CONSTP2CONST(struct Rte_CDS_Dem, RTE_CONST, RTE_APPL_CONST) Rte_Inst_Dem;

#define RTE_STOP_SEC_CONST_UNSPECIFIED
#include "Rte_MemMap.h" /* KW MISRA.INCL.INSIDE */

/*============================================================================*
 * EXPORTED FUNCTIONS PROTOTYPES                                              *
 *============================================================================*/
/* Declaration of runnable entities ------------------------------------------*/

#define Dem_START_SEC_CODE
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(Std_ReturnType, Dem_CODE) Dem_ClearDTC(uint32 DTC, Dem_DTCFormatType DTCFormat, Dem_DTCOriginType DTCOrigin);
extern FUNC(Std_ReturnType, Dem_CODE) Dem_DcmClearDTC(uint32 DTC, Dem_DTCFormatType DTCFormat, Dem_DTCOriginType DTCOrigin);
extern FUNC(Std_ReturnType, Dem_CODE) Dem_DcmEnableDTCSetting(uint32 DTCGroup, Dem_DTCKindType DTCKind);
extern FUNC(Std_ReturnType, Dem_CODE) Dem_GetDTCOfEvent(Dem_EventIdType EventId, Dem_DTCFormatType DTCFormat, P2VAR(uint32, AUTOMATIC, RTE_APPL_DATA) DTCOfEvent);
extern FUNC(Std_ReturnType, Dem_CODE) Dem_GetEventExtendedDataRecord(Dem_EventIdType EventId, uint8 RecordNumber, P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) DestBuffer);
extern FUNC(Std_ReturnType, Dem_CODE) Dem_GetEventFailed(Dem_EventIdType EventId, P2VAR(boolean, AUTOMATIC, RTE_APPL_DATA) EventFailed);
extern FUNC(Std_ReturnType, Dem_CODE) Dem_GetEventFreezeFrameData(Dem_EventIdType EventId, uint8 RecordNumber, boolean ReportTotalRecord, uint16 DataId, P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) DestBuffer);
extern FUNC(Std_ReturnType, Dem_CODE) Dem_GetEventMemoryOverflow(Dem_DTCOriginType DTCOrigin, P2VAR(boolean, AUTOMATIC, RTE_APPL_DATA) OverflowIndication);
extern FUNC(Std_ReturnType, Dem_CODE) Dem_GetEventStatus(Dem_EventIdType EventId, P2VAR(Dem_UdsStatusByteType, AUTOMATIC, RTE_APPL_DATA) EventStatusByte);
extern FUNC(Std_ReturnType, Dem_CODE) Dem_GetEventTested(Dem_EventIdType EventId, P2VAR(boolean, AUTOMATIC, RTE_APPL_DATA) EventTested);
extern FUNC(Std_ReturnType, Dem_CODE) Dem_GetFaultDetectionCounter(Dem_EventIdType EventId, P2VAR(sint8, AUTOMATIC, RTE_APPL_DATA) FaultDetectionCounter);
extern FUNC(Std_ReturnType, Dem_CODE) Dem_ResetEventStatus(Dem_EventIdType EventId);
extern FUNC(Std_ReturnType, Dem_CODE) Dem_SetAgingCycleState(uint8 OperationCycleId);
extern FUNC(Std_ReturnType, Dem_CODE) Dem_SetDTCSuppression(uint32 DTC, Dem_DTCFormatType DTCFormat, boolean SuppressionStatus);
extern FUNC(Std_ReturnType, Dem_CODE) Dem_SetEventStatus(Dem_EventIdType EventId, Dem_EventStatusType EventStatus);
extern FUNC(Std_ReturnType, Dem_CODE) Dem_SetOperationCycleState(uint8 OperationCycleId, Dem_OperationCycleStateType CycleState);

#define Dem_STOP_SEC_CODE
#include "Dem_MemMap.h" /* KW MISRA.INCL.INSIDE */


#define RTE_START_SEC_CODE
#include "Rte_MemMap.h" /* KW MISRA.INCL.INSIDE */

/* Declaration of API functions ----------------------------------------------*/

#define RTE_STOP_SEC_CODE
#include "Rte_MemMap.h" /* KW MISRA.INCL.INSIDE */

/* PRQA S 777 -- */

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* RTE_DEM_H */
