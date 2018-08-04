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
 * \b Module:             SchM_Dcm.h \n
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
#ifndef SCHM_DCM_H
#define SCHM_DCM_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*============================================================================*
 * PREPROCESSOR DIRECTIVES                                                    *
 *============================================================================*/

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

#include "SchM_Dcm_Type.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define SCHM_DCM_SW_MAJOR_VERSION (6U)
#define SCHM_DCM_SW_MINOR_VERSION (0U)
#define SCHM_DCM_SW_PATCH_VERSION (1U)

/*============================================================================*
 * EXPORTED TYPEDEF DECLARATIONS                                              *
 *============================================================================*/

#define RTE_START_SEC_CODE
#include "Rte_MemMap.h" /* KW MISRA.INCL.INSIDE */

/* ExclusiveArea prototypes  -------------------------------------------------*/
extern FUNC(void, RTE_CODE) SchM_Enter_Dcm_EaRxBuffers(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Dcm_EaRxBuffers(void);

extern FUNC(void, RTE_CODE) SchM_Enter_Dcm_EaTimers(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Dcm_EaTimers(void);

/* Mode management prototypes  -----------------------------------------------*/
extern FUNC(Std_ReturnType, RTE_CODE) SchM_Switch_Dcm_DcmEcuReset(uint8 mode);
extern FUNC(Std_ReturnType, RTE_CODE) SchM_Switch_Dcm_DcmModeRapidPowerShutDown(uint8 mode);
extern FUNC(Std_ReturnType, RTE_CODE) SchM_Switch_Dcm_DcmControlDTCSetting(uint8 mode);
extern FUNC(Std_ReturnType, RTE_CODE) SchM_Switch_Dcm_DcmCommunicationControl(uint8 mode);
extern FUNC(Std_ReturnType, RTE_CODE) SchM_Switch_Dcm_DcmDiagnosticSessionControl(uint8 mode);
extern FUNC(uint8, RTE_CODE) SchM_Mode_Dcm_DcmEcuReset(void);
extern FUNC(uint8, RTE_CODE) SchM_Mode_Dcm_DcmModeRapidPowerShutDown(void);
extern FUNC(uint8, RTE_CODE) SchM_Mode_Dcm_DcmControlDTCSetting(void);
extern FUNC(uint8, RTE_CODE) SchM_Mode_Dcm_DcmCommunicationControl(void);
extern FUNC(uint8, RTE_CODE) SchM_Mode_Dcm_DcmDiagnosticSessionControl(void);
/* Internal and External Trigger prototypes  ---------------------------------*/
extern FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_ClearDiagnosticInformation(void);
extern FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_CommunicationControl(void);
extern FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_ControlDTCSetting(void);
extern FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_DiagnosticSessionControl(void);
extern FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_ReadDTCInformation(void);
extern FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_ReadDataByIdentifier(void);
extern FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_ReadMemoryByAddress(void);
extern FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_RoutineControl(void);
extern FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_SecurityAccess(void);
extern FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_TesterPresent(void);
extern FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_WriteDataByIdentifier(void);
extern FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_Dcm_WriteMemoryByAddress(void);
extern FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_DsdStateMachine(void);
extern FUNC(void, RTE_CODE) SchM_ActMainFunction_Dcm_IntTrP_DslStateMachine(void);
/* Client-Server prototypes  -------------------------------------------------*/

#define RTE_STOP_SEC_CODE
#include "Rte_MemMap.h" /* KW MISRA.INCL.INSIDE */

/* Entrypoint prototypes  ----------------------------------------------------*/
#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, DCM_CODE) Dcm_SE_Dcm_ClearDiagnosticInformation(void);

#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, DCM_CODE) Dcm_SE_Dcm_CommunicationControl(void);

#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, DCM_CODE) Dcm_SE_Dcm_ControlDTCSetting(void);

#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, DCM_CODE) Dcm_SE_Dcm_DiagnosticSessionControl(void);

#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, DCM_CODE) Dcm_MainFunction(void);

#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, DCM_CODE) Dcm_SE_Dcm_ReadDTCInformation(void);

#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, DCM_CODE) Dcm_SE_Dcm_ReadDataByIdentifier(void);

#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, DCM_CODE) Dcm_SE_Dcm_ReadMemoryByAddress(void);

#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, DCM_CODE) Dcm_SE_Dcm_RoutineControl(void);

#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, DCM_CODE) Dcm_SE_Dcm_SecurityAccess(void);

#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, DCM_CODE) Dcm_SE_Dcm_TesterPresent(void);

#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, DCM_CODE) Dcm_SE_Dcm_WriteDataByIdentifier(void);

#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, DCM_CODE) Dcm_SE_Dcm_WriteMemoryByAddress(void);

#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, DCM_CODE) Dcm_SE_DsdStateMachine(void);

#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, DCM_CODE) Dcm_SE_DslStateMachine(void);

#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */


#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* SCHM_DCM_H */
