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
 * \b Module:             Rte_ComM_Type.h \n
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
#ifndef RTE_COMM_TYPE_H
#define RTE_COMM_TYPE_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*============================================================================*
 * PREPROCESSOR DIRECTIVES                                                    *
 *============================================================================*/

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

#include "Rte_Type.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define RTE_COMM_TYPE_SW_MAJOR_VERSION (4U)
#define RTE_COMM_TYPE_SW_MINOR_VERSION (18U)
#define RTE_COMM_TYPE_SW_PATCH_VERSION (3U)

/*============================================================================*
 * EXPORTED TYPEDEF DECLARATIONS                                              *
 *============================================================================*/

/* Mode Declaration Groups ---------------------------------------------------*/
#ifndef RTE_MODETYPE_ComMMode
#define RTE_MODETYPE_ComMMode
typedef uint8 Rte_ModeType_ComMMode;
#endif
#ifndef RTE_MODE_ComMMode_FULL_COMMUNICATION
#define RTE_MODE_ComMMode_FULL_COMMUNICATION 0U
#endif
#ifndef RTE_MODE_ComMMode_NO_COMMUNICATION
#define RTE_MODE_ComMMode_NO_COMMUNICATION 1U
#endif
#ifndef RTE_MODE_ComMMode_SILENT_COMMUNICATION
#define RTE_MODE_ComMMode_SILENT_COMMUNICATION 2U
#endif
#ifndef RTE_TRANSITION_ComMMode
#define RTE_TRANSITION_ComMMode 3U
#endif


/* Enumeration Data Types ----------------------------------------------------*/
#ifndef COMM_NO_COMMUNICATION
#define COMM_NO_COMMUNICATION ((ComM_ModeType) 0U)
#endif /* COMM_NO_COMMUNICATION */

#ifndef COMM_SILENT_COMMUNICATION
#define COMM_SILENT_COMMUNICATION ((ComM_ModeType) 1U)
#endif /* COMM_SILENT_COMMUNICATION */

#ifndef COMM_FULL_COMMUNICATION
#define COMM_FULL_COMMUNICATION ((ComM_ModeType) 2U)
#endif /* COMM_FULL_COMMUNICATION */


/* Limits of Range Data Types  -----------------------------------------------*/
#ifndef RTE_CORE

#endif /* RTE_CORE */

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* RTE_COMM_TYPE_H */
