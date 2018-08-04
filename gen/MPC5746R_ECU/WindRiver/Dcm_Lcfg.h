/**\file
 *
 * \brief Generated Source File for Dcm
 *
 * This file describes the public interface of the link time configuration.
 *
 * \b Application:        Dcm \n
 * \b Target:             see Dcm.h for details \n
 * \b Compiler:           see Dcm.h for details \n
 * \b Autosar-Vendor-ID:  31 \n
 *
 * \b Module:             Dcm_Lcfg.h \n
 * \b Generator:          VSTAR Dcm V8.0.1-Build664 \n
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
#ifndef DCM_LCFG_H
#define DCM_LCFG_H

/*****************************************************************************/
/* Included standard header files                                            */
/*****************************************************************************/

#include "ComStack_Types.h"
#include "Rte_Dcm_Type.h"
#include "Dcm_Types.h"

/*****************************************************************************/
/* Included other header files                                               */
/*****************************************************************************/

/*****************************************************************************/
/* Public macros                                                             */
/*****************************************************************************/

#define DCM_LCFG_SW_MAJOR_VERSION (8U)
#define DCM_LCFG_SW_MINOR_VERSION (0U)
#define DCM_LCFG_SW_PATCH_VERSION (1U)

/*****************************************************************************/
/* Public types                                                              */
/*****************************************************************************/

/**
* \brief States that a ROE event can be in
*/
/* [SWS_Dcm_00871] */
typedef enum Dcm_Roe_EventStateType_Tag
{
   DCM_ROE_CLEARED, /**< Roe event state Cleared */
   DCM_ROE_STOPPED, /**< Roe event state Stopped */
   DCM_ROE_STARTED, /**< Roe event state Started */
   DCM_ROE_PAUSED  /**< Roe event state Paused that is used to start events that were stopped at session change */
} Dcm_Roe_EventStateType;

/**
* \brief Data structure for the ROE status stored non-volatile
*/
typedef struct Dcm_Cfg_RoeNvmStatusType_Tag
{
   Dem_UdsStatusByteType dtc_status_mask; /**< The DTC status mask used for OnDTCStatusChange event. */

} Dcm_Cfg_RoeNvmStatusType;

/**
* \brief Data structure for the ROE event status stored non-volatile
*/
typedef struct Dcm_Cfg_RoeNvmEventStatusType_Tag
{
   Dcm_Roe_EventStateType stored_state; /**< The state of event with EventWindowTime active over power cycles. */
   uint8 event_window_time; /**< The EventWindowTime set up for the event. */
   PduIdType rx_pdu_id; /**< Rx channel to send ROE request on. */
} Dcm_Cfg_RoeNvmEventStatusType;

/*****************************************************************************/
/* Public constant & variable prototypes                                     */
/*****************************************************************************/

/*****************************************************************************/
/* Public API function prototypes                                            */
/*****************************************************************************/

/* Function prototypes for DcmDspData callouts */
#define DCM_START_SEC_READ_DID_0X2345_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(Std_ReturnType, DCM_READ_DID_0X2345_CODE) Read_DID_0x2345(P2VAR(uint8, AUTOMATIC, DCM_APPL_DATA) Data);

#define DCM_STOP_SEC_READ_DID_0X2345_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_WRITE_DID_0X2345_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(Std_ReturnType, DCM_WRITE_DID_0X2345_CODE) Write_DID_0x2345(P2CONST(uint8, AUTOMATIC, DCM_APPL_DATA) Data, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) ErrorCode);

#define DCM_STOP_SEC_WRITE_DID_0X2345_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */


#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

/* Wrappers to handle the IOCBI callots. */
FUNC(Std_ReturnType, DCM_APPL_CODE) Dcm_FreezeCurrentStateWrapper(uint16 index, Dcm_OpStatusType OpStatus, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) ErrorCode);
FUNC(Std_ReturnType, DCM_APPL_CODE) Dcm_ReturnControlToECUWrapper(uint16 index, Dcm_OpStatusType OpStatus, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) ErrorCode);
FUNC(Std_ReturnType, DCM_APPL_CODE) Dcm_ResetToDefaultWrapper(uint16 index, Dcm_OpStatusType OpStatus, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) ErrorCode);
FUNC(Std_ReturnType, DCM_APPL_CODE) Dcm_ShortTermAdjustmentWrapper(uint16 index, P2CONST(uint8, AUTOMATIC, DCM_APPL_DATA) ControlStateInfo, uint16 DataLength, Dcm_OpStatusType OpStatus, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) ErrorCode);

/** \brief Generated init function for ROE. Empty if ROE is not enabled. */
extern FUNC(void, DCM_CODE) Dcm_DspRoe_GenInit(void);

/** \brief Generated main function for ROE. Empty if ROE is not enabled. */
extern FUNC(void, DCM_CODE) Dcm_DspRoe_GenMainFunction(void);

/** \brief Generated confirmation function for ROE. Empty if ROE is not enabled. */
extern FUNC(void, DCM_CODE) Dcm_DspRoe_GenConfirmation(boolean ProcessingFinished);

/** \brief Generated function for information about session change for ROE. Empty if ROE is not enabled. */
extern FUNC(void, DCM_CODE) Dcm_DspRoe_GenSessionChange(Dcm_SesCtrlType OldSession, Dcm_SesCtrlType NewSession);

/** \brief Add SchM function internally if Roe is not configured to not get linker error */
extern FUNC(void, DCM_CODE) SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent(void);

/** \brief Add SchM function internally if Roe is not configured to not get linker error */
extern FUNC(void, DCM_CODE) SchM_Enter_Dcm_EaRoeQueue(void);

/** \brief Add SchM function internally if Roe is not configured to not get linker error */
extern FUNC(void, DCM_CODE) SchM_Exit_Dcm_EaRoeQueue(void);

/** \brief Function prototype to initialize NvM data for ROE */
extern FUNC(boolean, DCM_CODE) Dcm_NvMRoeInit(void);

/** \brief Function prototype to set NvM data for ROE as dirty */
extern FUNC(void, DCM_CODE) Dcm_NvMRoeBlockChanged(void);

/* Function prototype to set the RAM block status of the NVRAM block. */
FUNC(void, DCM_CODE) Dcm_NvMSetRamBlockStatus(void);

/**
 * \brief Initialize the service data.
 */
extern FUNC(void, DCM_CODE) Dcm_InitServiceData(void);

/**
 * \brief Sets the data that shall be used in the service functions.
 * \param OpStatus OpStatus to be sent to the service functions.
 * \param pMsgContext pMsgContext to be sent to the service functions.
 */
extern FUNC(void, DCM_CODE) Dcm_SetServiceData(Dcm_OpStatusType OpStatus, P2VAR(Dcm_MsgContextType, AUTOMATIC, DCM_APPL_DATA) pMsgContext);

/**
 * \brief Returns the status of the service functions.
 * \return TRUE if a service function is executing.
 */
extern FUNC(boolean, DCM_CODE) Dcm_ServiceFctActive(void);


#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#endif /* DCM_LCFG_H */

