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
 * \b Module:             Rte_Os_Type.h \n
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
#ifndef RTE_OS_TYPE_H
#define RTE_OS_TYPE_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*============================================================================*
 * PREPROCESSOR DIRECTIVES                                                    *
 *============================================================================*/

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

#include "Rte_Type.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define RTE_OS_TYPE_SW_MAJOR_VERSION (6U)
#define RTE_OS_TYPE_SW_MINOR_VERSION (1U)
#define RTE_OS_TYPE_SW_PATCH_VERSION (1U)

/*============================================================================*
 * EXPORTED TYPEDEF DECLARATIONS                                              *
 *============================================================================*/

/* Mode Declaration Groups ---------------------------------------------------*/

/* Enumeration And Bit Field Data Types --------------------------------------*/
#ifndef DONOTCARE
#define DONOTCARE ~0U
#endif /* DONOTCARE */

#ifndef APPLICATION_ACCESSIBLE
#define APPLICATION_ACCESSIBLE 0U /* 0x00 */
#endif /* APPLICATION_ACCESSIBLE */

#ifndef APPLICATION_RESTARTING
#define APPLICATION_RESTARTING 1U /* 0x01 */
#endif /* APPLICATION_RESTARTING */

#ifndef APPLICATION_TERMINATED
#define APPLICATION_TERMINATED 2U /* 0x02 */
#endif /* APPLICATION_TERMINATED */

#ifndef INVALID_OSAPPLICATION
#define INVALID_OSAPPLICATION ~0U
#endif /* INVALID_OSAPPLICATION */

#ifndef RESTART
#define RESTART 0U /* 0x00 */
#endif /* RESTART */

#ifndef NO_RESTART
#define NO_RESTART 1U /* 0x01 */
#endif /* NO_RESTART */


/* Limits of Range Data Types  -----------------------------------------------*/
#ifndef RTE_CORE

#endif /* RTE_CORE */

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* RTE_OS_TYPE_H */
