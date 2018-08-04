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
 * \b Module:             SchM_WdgM.h \n
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
#ifndef SCHM_WDGM_H
#define SCHM_WDGM_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*============================================================================*
 * PREPROCESSOR DIRECTIVES                                                    *
 *============================================================================*/

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

#include "SchM_WdgM_Type.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define SCHM_WDGM_SW_MAJOR_VERSION (4U)
#define SCHM_WDGM_SW_MINOR_VERSION (13U)
#define SCHM_WDGM_SW_PATCH_VERSION (0U)

/*============================================================================*
 * EXPORTED TYPEDEF DECLARATIONS                                              *
 *============================================================================*/

#define RTE_START_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

/* ExclusiveArea prototypes  -------------------------------------------------*/
extern FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaActStatusProtect(void);
extern FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaActStatusProtect(void);

extern FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaActivityFlagProtect(void);
extern FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaActivityFlagProtect(void);

extern FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaAliveCountProtect(void);
extern FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaAliveCountProtect(void);

extern FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaAliveSupResultProtect(void);
extern FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaAliveSupResultProtect(void);

extern FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaDeadlineSupResultProtect(void);
extern FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaDeadlineSupResultProtect(void);

extern FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaDeadlineTimerProtect(void);
extern FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaDeadlineTimerProtect(void);

extern FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaEntStatusProtect(void);
extern FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaEntStatusProtect(void);

extern FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaGlobalStatusProtect(void);
extern FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaGlobalStatusProtect(void);

extern FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaLogicalSupResultProtect(void);
extern FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaLogicalSupResultProtect(void);

extern FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaSupervisionCycleProtect(void);
extern FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaSupervisionCycleProtect(void);

extern FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaTriggerCountProtect(void);
extern FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaTriggerCountProtect(void);

extern FUNC(void, RTE_CODE) SchM_Enter_WdgM_EaTriggerCycleVarProtect(void);
extern FUNC(void, RTE_CODE) SchM_Exit_WdgM_EaTriggerCycleVarProtect(void);

/* Mode management prototypes  -----------------------------------------------*/
/* Internal and External Trigger prototypes  ---------------------------------*/

#define RTE_STOP_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

/* Entrypoint prototypes  ----------------------------------------------------*/
#define WDGM_START_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, WDGM_CODE) WdgM_MainFunction(void);

#define WDGM_STOP_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */


#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* SCHM_WDGM_H */
