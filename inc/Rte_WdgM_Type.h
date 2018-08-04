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
 * \b Module:             Rte_WdgM_Type.h \n
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
#ifndef RTE_WDGM_TYPE_H
#define RTE_WDGM_TYPE_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*============================================================================*
 * PREPROCESSOR DIRECTIVES                                                    *
 *============================================================================*/

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

#include "Rte_Type.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define RTE_WDGM_TYPE_SW_MAJOR_VERSION (4U)
#define RTE_WDGM_TYPE_SW_MINOR_VERSION (13U)
#define RTE_WDGM_TYPE_SW_PATCH_VERSION (0U)

/*============================================================================*
 * EXPORTED TYPEDEF DECLARATIONS                                              *
 *============================================================================*/

/* Mode Declaration Groups ---------------------------------------------------*/
#ifndef RTE_MODETYPE_WdgMMode
#define RTE_MODETYPE_WdgMMode
typedef uint8 Rte_ModeType_WdgMMode;
#endif
#ifndef RTE_MODE_WdgMMode_SUPERVISION_DEACTIVATED
#define RTE_MODE_WdgMMode_SUPERVISION_DEACTIVATED 0U
#endif
#ifndef RTE_MODE_WdgMMode_SUPERVISION_EXPIRED
#define RTE_MODE_WdgMMode_SUPERVISION_EXPIRED 1U
#endif
#ifndef RTE_MODE_WdgMMode_SUPERVISION_FAILED
#define RTE_MODE_WdgMMode_SUPERVISION_FAILED 2U
#endif
#ifndef RTE_MODE_WdgMMode_SUPERVISION_OK
#define RTE_MODE_WdgMMode_SUPERVISION_OK 3U
#endif
#ifndef RTE_MODE_WdgMMode_SUPERVISION_STOPPED
#define RTE_MODE_WdgMMode_SUPERVISION_STOPPED 4U
#endif
#ifndef RTE_TRANSITION_WdgMMode
#define RTE_TRANSITION_WdgMMode 5U
#endif


/* Enumeration Data Types ----------------------------------------------------*/

/* Limits of Range Data Types  -----------------------------------------------*/
#ifndef RTE_CORE

#endif /* RTE_CORE */

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* RTE_WDGM_TYPE_H */
