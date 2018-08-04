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
 * \b Module:             SchM_ComM.h \n
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
#ifndef SCHM_COMM_H
#define SCHM_COMM_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*============================================================================*
 * PREPROCESSOR DIRECTIVES                                                    *
 *============================================================================*/

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

#include "SchM_ComM_Type.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define SCHM_COMM_SW_MAJOR_VERSION (4U)
#define SCHM_COMM_SW_MINOR_VERSION (18U)
#define SCHM_COMM_SW_PATCH_VERSION (3U)

/*============================================================================*
 * EXPORTED TYPEDEF DECLARATIONS                                              *
 *============================================================================*/

#define RTE_START_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

/* ExclusiveArea prototypes  -------------------------------------------------*/
extern FUNC(void, RTE_CODE) SchM_Enter_ComM_ComM_Channel0_StateMachine(void);
extern FUNC(void, RTE_CODE) SchM_Exit_ComM_ComM_Channel0_StateMachine(void);

extern FUNC(void, RTE_CODE) SchM_Enter_ComM_ComM_Channel1_StateMachine(void);
extern FUNC(void, RTE_CODE) SchM_Exit_ComM_ComM_Channel1_StateMachine(void);

extern FUNC(void, RTE_CODE) SchM_Enter_ComM_ComM_Channel2_StateMachine(void);
extern FUNC(void, RTE_CODE) SchM_Exit_ComM_ComM_Channel2_StateMachine(void);

extern FUNC(void, RTE_CODE) SchM_Enter_ComM_ComM_Channel3_StateMachine(void);
extern FUNC(void, RTE_CODE) SchM_Exit_ComM_ComM_Channel3_StateMachine(void);

extern FUNC(void, RTE_CODE) SchM_Enter_ComM_ComM_InhibitionCounter(void);
extern FUNC(void, RTE_CODE) SchM_Exit_ComM_ComM_InhibitionCounter(void);

extern FUNC(void, RTE_CODE) SchM_Enter_ComM_ComM_ModeIndication(void);
extern FUNC(void, RTE_CODE) SchM_Exit_ComM_ComM_ModeIndication(void);

/* Mode management prototypes  -----------------------------------------------*/
/* Internal and External Trigger prototypes  ---------------------------------*/

#define RTE_STOP_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

/* Entrypoint prototypes  ----------------------------------------------------*/
#define COMM_START_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, COMM_CODE) ComM_MainFunction_0(void);

#define COMM_STOP_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

#define COMM_START_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, COMM_CODE) ComM_MainFunction_1(void);

#define COMM_STOP_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

#define COMM_START_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, COMM_CODE) ComM_MainFunction_2(void);

#define COMM_STOP_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

#define COMM_START_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */

extern FUNC(void, COMM_CODE) ComM_MainFunction_3(void);

#define COMM_STOP_SEC_CODE
#include "MemMap.h" /* KW MISRA.INCL.INSIDE */


#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* SCHM_COMM_H */
