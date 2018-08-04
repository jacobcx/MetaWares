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
 * \b Module:             Rte_Dcm.h \n
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
#ifndef RTE_DCM_H
#define RTE_DCM_H

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

#include "Rte_Dcm_Type.h"
#include "Rte_DataHandleType.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define RTE_DCM_SW_MAJOR_VERSION (6U)
#define RTE_DCM_SW_MINOR_VERSION (0U)
#define RTE_DCM_SW_PATCH_VERSION (1U)

#ifndef RTE_CORE
/* Application errors --------------------------------------------------------*/
#define RTE_E_DCMServices_E_NOT_OK ((Std_ReturnType) 1U)
#define RTE_E_DCMServices_E_OK ((Std_ReturnType) 0U)
#define RTE_E_SecurityAccess_SecurityLevel1_DCM_E_COMPARE_KEY_FAILED ((Std_ReturnType) 11U)
#define RTE_E_SecurityAccess_SecurityLevel1_DCM_E_PENDING ((Std_ReturnType) 10U)
#define RTE_E_SecurityAccess_SecurityLevel1_E_NOT_OK ((Std_ReturnType) 1U)
#define RTE_E_SecurityAccess_SecurityLevel1_E_OK ((Std_ReturnType) 0U)

/* Init values ---------------------------------------------------------------*/

/* API Mapping ---------------------------------------------------------------*/
#define Rte_Call_SecurityAccess_SecurityLevel1_GetSeed Rte_Call_Dcm_SecurityAccess_SecurityLevel1_GetSeed
#define Rte_Call_SecurityAccess_SecurityLevel1_CompareKey Rte_Call_Dcm_SecurityAccess_SecurityLevel1_CompareKey
//#define Rte_Call_DataServices_DcmDspData_0100_ReadData Rte_Call_Dcm_DataServices_DcmDspData_0100_ReadData
//#define Rte_Call_DataServices_DcmDspData_0100_ConditionCheckRead Rte_Call_Dcm_DataServices_DcmDspData_0100_ConditionCheckRead
//#define Rte_Call_DataServices_DcmDspData_0100_WriteData Rte_Call_Dcm_DataServices_DcmDspData_0100_WriteData

/* Port handle API Mapping ---------------------------------------------------*/
#endif

/*============================================================================*
 * EXPORTED TYPEDEF DECLARATIONS                                              *
 *============================================================================*/

/* PDS/CDS local data types --------------------------------------------------*/

/* Port Data Structures (PDS) ------------------------------------------------*/

/* Component Data Structure (CDS) --------------------------------------------*/
struct Rte_CDS_Dcm /* KW PORTING.STORAGE.STRUCT */
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
typedef P2CONST(struct Rte_CDS_Dcm, TYPEDEF, RTE_CONST) Rte_Instance;
#endif

/*============================================================================*
 * EXPORTED OBJECT DECLARATIONS                                               *
 *============================================================================*/

#define RTE_START_SEC_CONST_UNSPECIFIED
#include "Rte_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern CONSTP2CONST(struct Rte_CDS_Dcm, RTE_CONST, RTE_APPL_CONST) Rte_Inst_Dcm;

#define RTE_STOP_SEC_CONST_UNSPECIFIED
#include "Rte_MemMap.h" /* KW MISRA.INCL.INSIDE */

/*============================================================================*
 * EXPORTED FUNCTIONS PROTOTYPES                                              *
 *============================================================================*/
/* Declaration of runnable entities ------------------------------------------*/

#define Dcm_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(Std_ReturnType, Dcm_CODE) Dcm_GetActiveProtocol(P2VAR(Dcm_ProtocolType, AUTOMATIC, RTE_APPL_DATA) ActiveProtocol);
extern FUNC(Std_ReturnType, Dcm_CODE) Dcm_GetSecurityLevel(P2VAR(Dcm_SecLevelType, AUTOMATIC, RTE_APPL_DATA) SecLevel);
extern FUNC(Std_ReturnType, Dcm_CODE) Dcm_GetSesCtrlType(P2VAR(Dcm_SesCtrlType, AUTOMATIC, RTE_APPL_DATA) SesCtrlType);
extern FUNC(Std_ReturnType, Dcm_CODE) Dcm_ResetToDefaultSession(void);

#define Dcm_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */


#define RTE_START_SEC_CODE
#include "Rte_MemMap.h" /* KW MISRA.INCL.INSIDE */

/* Declaration of API functions ----------------------------------------------*/
extern FUNC(Std_ReturnType, RTE_CODE) Rte_Call_SecurityAccess_DcmDspSecurityRow_GetSeed(Dcm_OpStatusType OpStatus, P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Seed, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, RTE_APPL_DATA) ErrorCode);
extern FUNC(Std_ReturnType, RTE_CODE) Rte_Call_SecurityAccess_DcmDspSecurityRow_CompareKey(P2CONST(uint8, AUTOMATIC, RTE_APPL_DATA) Key, Dcm_OpStatusType OpStatus, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, RTE_APPL_DATA) ErrorCode);
//extern FUNC(Std_ReturnType, RTE_CODE) Rte_Call_Dcm_DataServices_DcmDspData_0100_ReadData(P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data);
//extern FUNC(Std_ReturnType, RTE_CODE) Rte_Call_Dcm_DataServices_DcmDspData_0100_ConditionCheckRead(P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, RTE_APPL_DATA) ErrorCode);
//extern FUNC(Std_ReturnType, RTE_CODE) Rte_Call_Dcm_DataServices_DcmDspData_0100_WriteData(P2CONST(uint8, AUTOMATIC, RTE_APPL_DATA) Data, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, RTE_APPL_DATA) ErrorCode);



#define RTE_STOP_SEC_CODE
#include "Rte_MemMap.h" /* KW MISRA.INCL.INSIDE */

/* PRQA S 777 -- */

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* RTE_DCM_H */
