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
 * \b Module:             SchM_LinIf.h \n
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
#ifndef SCHM_LINIF_H
#define SCHM_LINIF_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*============================================================================*
 * PREPROCESSOR DIRECTIVES                                                    *
 *============================================================================*/

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

#include "SchM_LinIf_Type.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define SCHM_LINIF_SW_MAJOR_VERSION (6U)
#define SCHM_LINIF_SW_MINOR_VERSION (0U)
#define SCHM_LINIF_SW_PATCH_VERSION (1U)

/*============================================================================*
 * EXPORTED TYPEDEF DECLARATIONS                                              *
 *============================================================================*/

#define RTE_START_SEC_CODE
#include "Rte_MemMap.h" /* KW MISRA.INCL.INSIDE */

/* ExclusiveArea prototypes  -------------------------------------------------*/
extern FUNC(void, RTE_CODE) SchM_Enter_LinIf_ExclusiveArea0(void);
extern FUNC(void, RTE_CODE) SchM_Exit_LinIf_ExclusiveArea0(void);

/* Mode management prototypes  -----------------------------------------------*/
/* Internal and External Trigger prototypes  ---------------------------------*/
/* Client-Server prototypes  -------------------------------------------------*/

#define RTE_STOP_SEC_CODE
#include "Rte_MemMap.h" /* KW MISRA.INCL.INSIDE */

/* Entrypoint prototypes  ----------------------------------------------------*/
#define LINIF_START_SEC_CODE
#include "LinIf_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, LINIF_CODE) LinIf_MainFunction(void);

#define LINIF_STOP_SEC_CODE
#include "LinIf_MemMap.h" /* KW MISRA.INCL.INSIDE */


#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* SCHM_LINIF_H */
