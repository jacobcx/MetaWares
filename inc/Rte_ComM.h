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
 * \b Module:             Rte_ComM.h \n
 * \b Generator:          AUTOSAR Rte V4.18.3-Delivery \n
 *
 *      NOTE! This file is generated. Do not edit!
 *
 * \b Changeable-by-user: No \n
 * \b Delivery-File:      No \n
 * \n
 * \b Module-Owner:       MetaWares \n
 * \b Web:                https://supportnet.MetaWares.com/ \n
 * \n
 */

/******************************************************************************
 *
 *              Copyright 2018 MetaWares Corporation
 *                        All rights reserved
 *
 *  THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION WHICH IS
 *  THE PROPERTY OF MetaWares CORPORATION OR ITS LICENSORS AND IS
 *  SUBJECT TO LICENSE TERMS.
 *
 *
 ******************************************************************************/
#ifndef RTE_COMM_H
#define RTE_COMM_H

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

#include "Rte_ComM_Type.h"
#include "Rte_DataHandleType.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define RTE_COMM_SW_MAJOR_VERSION (4U)
#define RTE_COMM_SW_MINOR_VERSION (18U)
#define RTE_COMM_SW_PATCH_VERSION (3U)

#ifndef RTE_CORE
/* Application errors --------------------------------------------------------*/
#define RTE_E_ComM_ChannelLimitation_E_NOT_OK ((Std_ReturnType) 1U)
#define RTE_E_ComM_ChannelWakeup_E_NOT_OK ((Std_ReturnType) 1U)
#define RTE_E_ComM_ECUModeLimitation_E_NOT_OK ((Std_ReturnType) 1U)
#define RTE_E_ComM_UserRequest_E_MODE_LIMITATION ((Std_ReturnType) 2U)
#define RTE_E_ComM_UserRequest_E_NOT_OK ((Std_ReturnType) 1U)

/* Init values ---------------------------------------------------------------*/

/* API Mapping ---------------------------------------------------------------*/

#define Rte_Switch_P_CurrentMode_CanCluster_User_currentMode Rte_Switch_ComM_P_CurrentMode_CanCluster_User_currentMode

/* Port handle API Mapping ---------------------------------------------------*/
#define Rte_Ports_ComM_CurrentMode_P() (&(Rte_Inst_ComM->P_CurrentMode_CanCluster_ADAS_User))
#define Rte_NPorts_ComM_CurrentMode_P() (4)
#define Rte_Port_P_CurrentMode_CanCluster_User() (&(Rte_Inst_ComM->P_CurrentMode_CanCluster_User))

#endif

/*============================================================================*
 * EXPORTED TYPEDEF DECLARATIONS                                              *
 *============================================================================*/

/* PDS/CDS local data types --------------------------------------------------*/

/* Port Data Structures (PDS) ------------------------------------------------*/
struct Rte_PDS_ComM_ComM_CurrentMode_P
{
   P2FUNC(Std_ReturnType, RTE_CODE, Switch_currentMode)(uint8 mode);
};


/* Component Data Structure (CDS) --------------------------------------------*/
struct Rte_CDS_ComM /* KW PORTING.STORAGE.STRUCT */
{
   /* Data Handles section. -----------------------*/
   /* Per-instance Memory Handles section. --------*/
   /* Inter-runnable Variable Handles section. ----*/
   /* Calibration Parameter Handles section. ------*/
   /* Exclusive-area API section. -----------------*/
   /* Port API section. ---------------------------*/
   struct Rte_PDS_ComM_ComM_CurrentMode_P P_CurrentMode_CanCluster_User;
   /* Inter Runnable Variable API section. --------*/
   /* Inter Runnable Triggering API section. ------*/
   /* Vendor specific section. --------------------*/
};

#ifndef RTE_CORE
/* Port handle types ---------------------------------------------------------*/
typedef P2CONST(struct Rte_PDS_ComM_ComM_CurrentMode_P , TYPEDEF, RTE_APPL_CONST) Rte_PortHandle_ComM_CurrentMode_P;

/* Pim types -----------------------------------------------------------------*/

/* Instance handle type ------------------------------------------------------*/
typedef P2CONST(struct Rte_CDS_ComM, TYPEDEF, RTE_CONST) Rte_Instance;
#endif

/*============================================================================*
 * EXPORTED OBJECT DECLARATIONS                                               *
 *============================================================================*/

#define RTE_START_SEC_CONST_UNSPECIFIED
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

extern CONSTP2CONST(struct Rte_CDS_ComM, RTE_CONST, RTE_APPL_CONST) Rte_Inst_ComM;

#define RTE_STOP_SEC_CONST_UNSPECIFIED
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

/*============================================================================*
 * EXPORTED FUNCTIONS PROTOTYPES                                              *
 *============================================================================*/
/* Declaration of runnable entities ------------------------------------------*/

#define ComM_START_SEC_CODE
#include "ComM_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(Std_ReturnType, ComM_CODE) ComM_GetCurrentComMode(ComM_UserHandleType arg0, P2VAR(ComM_ModeType, AUTOMATIC, RTE_APPL_DATA) ComMode);
extern FUNC(Std_ReturnType, ComM_CODE) ComM_GetInhibitionStatus(NetworkHandleType arg0, P2VAR(ComM_InhibitionStatusType, AUTOMATIC, RTE_APPL_DATA) Status);
extern FUNC(Std_ReturnType, ComM_CODE) ComM_GetMaxComMode(ComM_UserHandleType arg0, P2VAR(ComM_ModeType, AUTOMATIC, RTE_APPL_DATA) ComMode);
extern FUNC(Std_ReturnType, ComM_CODE) ComM_GetRequestedComMode(ComM_UserHandleType arg0, P2VAR(ComM_ModeType, AUTOMATIC, RTE_APPL_DATA) ComMode);
extern FUNC(Std_ReturnType, ComM_CODE) ComM_LimitChannelToNoComMode(NetworkHandleType arg0, boolean Status);
extern FUNC(Std_ReturnType, ComM_CODE) ComM_PreventWakeUp(NetworkHandleType arg0, boolean Status);
extern FUNC(Std_ReturnType, ComM_CODE) ComM_RequestComMode(ComM_UserHandleType arg0, ComM_ModeType ComMode);

#define ComM_STOP_SEC_CODE
#include "ComM_MemMap.h" /* KW MISRA.INCL.INSIDE */


#define RTE_START_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

/* Declaration of API functions ----------------------------------------------*/
extern FUNC(Std_ReturnType, RTE_CODE) Rte_Switch_ComM_P_CurrentMode_CanCluster_User_currentMode(uint8 mode);
extern FUNC(Std_ReturnType, RTE_CODE) Rte_Switch_ComM_P_CurrentMode_ComMUser_Lin_currentMode(uint8 mode);

#define RTE_STOP_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

/* PRQA S 777 -- */

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* RTE_COMM_H */
