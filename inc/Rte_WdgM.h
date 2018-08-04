/** \file
 *
 * \brief Generated file for Rte
 *
 * 
 *
 * \b Application:        Rte \n
 * \b Target:             see Rte.h for details \n
 * \b Compiler:           see Rte.h for details \n
 * \b Autosar-Vendor-ID:  41 \n
 *
 * \b Module:             Rte_WdgM.h \n
 * \b Generator:          Picea Rte V4.13.0-Delivery-Build358 \n
 *
 *      NOTE! This file is generated. Do not edit!
 *
 * \b Changeable-by-user: No \n
 * \b Delivery-File:      No \n
 *
 * \b Module-Owner:       Mecel Picea Team \n
 * \b Location:           Mecel \n
 * \b Phone:              +46 31 720 44 00 \n
 * \b E-Mail:             picea(at)mecel.se \n
 * \b Web:                http://bugzilla.mecel.se/ \n
 *
 * \b Traceability-Info   PICEA* \n
 * \b Classification:     Not classified \n
 * \b Deviations:         See PICEA_RTE_USG_003 \n
 *
 */

/*============================================================================*
 *
 * Copyright 2012 Mecel AB and Delphi Technologies, Inc., All Rights Reserved
 *
 *============================================================================*/
#ifndef RTE_WDGM_H
#define RTE_WDGM_H

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

#include "Rte_WdgM_Type.h"
#include "Rte_DataHandleType.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define RTE_WDGM_SW_MAJOR_VERSION (4U)
#define RTE_WDGM_SW_MINOR_VERSION (13U)
#define RTE_WDGM_SW_PATCH_VERSION (0U)

#ifndef RTE_CORE
/* Application errors --------------------------------------------------------*/

/* Init values ---------------------------------------------------------------*/

/* API Mapping ---------------------------------------------------------------*/
#define Rte_Switch_globalmode_currentMode Rte_Switch_WdgM_globalmode_currentMode

/* Port handle API Mapping ---------------------------------------------------*/
#endif

/*============================================================================*
 * EXPORTED TYPEDEF DECLARATIONS                                              *
 *============================================================================*/

/* PDS/CDS local data types --------------------------------------------------*/

/* Port Data Structures (PDS) ------------------------------------------------*/

/* Component Data Structure (CDS) --------------------------------------------*/
struct Rte_CDS_WdgM /* KW PORTING.STORAGE.STRUCT */
{
   /* Data Handles section. -----------------------*/
   /* Per-instance Memory Handles section. --------*/
   /* Inter-runnable Variable Handles section. ----*/
   /* Calibration Parameter Handles section. ------*/
   /* Exclusive-area API section. -----------------*/
   /* Port API section. ---------------------------*/
   /* Inter Runnable Variable API section. --------*/
   /* Inter Runnable Triggering API section. ------*/
   /* Vendor specific section. --------------------*/
   uint8 _dummy;
};

#ifndef RTE_CORE
/* Port handle types ---------------------------------------------------------*/

/* Pim types -----------------------------------------------------------------*/

/* Instance handle type ------------------------------------------------------*/
typedef P2CONST(struct Rte_CDS_WdgM, TYPEDEF, RTE_CONST) Rte_Instance;
#endif

/*============================================================================*
 * EXPORTED OBJECT DECLARATIONS                                               *
 *============================================================================*/

#define RTE_START_SEC_CONST_UNSPECIFIED
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

extern CONSTP2CONST(struct Rte_CDS_WdgM, RTE_CONST, RTE_APPL_CONST) Rte_Inst_WdgM;

#define RTE_STOP_SEC_CONST_UNSPECIFIED
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

/*============================================================================*
 * EXPORTED FUNCTIONS PROTOTYPES                                              *
 *============================================================================*/
/* Declaration of runnable entities ------------------------------------------*/

#define RTE_START_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

/* Declaration of API functions ----------------------------------------------*/
extern FUNC(Std_ReturnType, RTE_CODE) Rte_Switch_globalMode_currentMode(uint8 mode);

#define RTE_STOP_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

/* PRQA S 777 -- */

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* RTE_WDGM_H */
