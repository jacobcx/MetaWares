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
 * \b Module:             SchM_CanSM.h \n
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
#ifndef SCHM_CANSM_H
#define SCHM_CANSM_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*============================================================================*
 * PREPROCESSOR DIRECTIVES                                                    *
 *============================================================================*/

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

#include "SchM_CanSM_Type.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define SCHM_CANSM_SW_MAJOR_VERSION (4U)
#define SCHM_CANSM_SW_MINOR_VERSION (18U)
#define SCHM_CANSM_SW_PATCH_VERSION (3U)

/*============================================================================*
 * EXPORTED TYPEDEF DECLARATIONS                                              *
 *============================================================================*/

#define RTE_START_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

/* ExclusiveArea prototypes  -------------------------------------------------*/
extern FUNC(void, RTE_CODE) SchM_Enter_CanSM_Area_0(void);
extern FUNC(void, RTE_CODE) SchM_Exit_CanSM_Area_0(void);

extern FUNC(void, RTE_CODE) SchM_Enter_CanSM_Area_1(void);
extern FUNC(void, RTE_CODE) SchM_Exit_CanSM_Area_1(void);

extern FUNC(void, RTE_CODE) SchM_Enter_CanSM_Area_2(void);
extern FUNC(void, RTE_CODE) SchM_Exit_CanSM_Area_2(void);

/* Mode management prototypes  -----------------------------------------------*/
/* Internal and External Trigger prototypes  ---------------------------------*/

#define RTE_STOP_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

/* Entrypoint prototypes  ----------------------------------------------------*/
#define CANSM_START_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, CANSM_CODE) CanSM_MainFunction(void);

#define CANSM_STOP_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */


#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* SCHM_CANSM_H */
