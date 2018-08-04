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
 * \b Module:             Rte_Os.h \n
 * \b Generator:          VSTAR Rte V6.1.1-Build743 \n
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
#ifndef RTE_OS_H
#define RTE_OS_H

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

#include "Rte_Os_Type.h"
#include "Rte_DataHandleType.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define RTE_OS_SW_MAJOR_VERSION (6U)
#define RTE_OS_SW_MINOR_VERSION (1U)
#define RTE_OS_SW_PATCH_VERSION (1U)

#ifndef RTE_CORE
/* Application errors --------------------------------------------------------*/
#define RTE_E_OsService_E_OS_ACCESS ((Std_ReturnType) 1U)
#define RTE_E_OsService_E_OS_ID ((Std_ReturnType) 3U)
#define RTE_E_OsService_E_OS_STATE ((Std_ReturnType) 7U)
#define RTE_E_OsService_E_OS_VALUE ((Std_ReturnType) 8U)

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
struct Rte_CDS_Os /* KW PORTING.STORAGE.STRUCT */
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
typedef P2CONST(struct Rte_CDS_Os, TYPEDEF, RTE_CONST) Rte_Instance;
#endif

/*============================================================================*
 * EXPORTED OBJECT DECLARATIONS                                               *
 *============================================================================*/

#define RTE_START_SEC_CONST_UNSPECIFIED
#include "Rte_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern CONSTP2CONST(struct Rte_CDS_Os, RTE_CONST, RTE_APPL_CONST) Rte_Inst_Os;

#define RTE_STOP_SEC_CONST_UNSPECIFIED
#include "Rte_MemMap.h" /* KW MISRA.INCL.INSIDE */

/*============================================================================*
 * EXPORTED FUNCTIONS PROTOTYPES                                              *
 *============================================================================*/
/* Declaration of runnable entities ------------------------------------------*/

#define RTE_START_SEC_CODE
#include "Rte_MemMap.h" /* KW MISRA.INCL.INSIDE */

/* Declaration of API functions ----------------------------------------------*/

#define RTE_STOP_SEC_CODE
#include "Rte_MemMap.h" /* KW MISRA.INCL.INSIDE */

/* PRQA S 777 -- */

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* RTE_OS_H */
