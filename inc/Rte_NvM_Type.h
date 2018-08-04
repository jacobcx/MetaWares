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
 * \b Module:             Rte_NvM_Type.h \n
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
#ifndef RTE_NVM_TYPE_H
#define RTE_NVM_TYPE_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*============================================================================*
 * PREPROCESSOR DIRECTIVES                                                    *
 *============================================================================*/

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

#include "Rte_Type.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define RTE_NVM_TYPE_SW_MAJOR_VERSION (6U)
#define RTE_NVM_TYPE_SW_MINOR_VERSION (0U)
#define RTE_NVM_TYPE_SW_PATCH_VERSION (1U)

/*============================================================================*
 * EXPORTED TYPEDEF DECLARATIONS                                              *
 *============================================================================*/

/* Mode Declaration Groups ---------------------------------------------------*/

/* Enumeration And Bit Field Data Types --------------------------------------*/
#ifndef NVM_REQ_OK
#define NVM_REQ_OK 0U /* 0x00 */
#endif /* NVM_REQ_OK */

#ifndef NVM_REQ_NOT_OK
#define NVM_REQ_NOT_OK 1U /* 0x01 */
#endif /* NVM_REQ_NOT_OK */

#ifndef NVM_REQ_PENDING
#define NVM_REQ_PENDING 2U /* 0x02 */
#endif /* NVM_REQ_PENDING */

#ifndef NVM_REQ_INTEGRITY_FAILED
#define NVM_REQ_INTEGRITY_FAILED 3U /* 0x03 */
#endif /* NVM_REQ_INTEGRITY_FAILED */

#ifndef NVM_REQ_BLOCK_SKIPPED
#define NVM_REQ_BLOCK_SKIPPED 4U /* 0x04 */
#endif /* NVM_REQ_BLOCK_SKIPPED */

#ifndef NVM_REQ_NV_INVALIDATED
#define NVM_REQ_NV_INVALIDATED 5U /* 0x05 */
#endif /* NVM_REQ_NV_INVALIDATED */

#ifndef NVM_REQ_CANCELED
#define NVM_REQ_CANCELED 6U /* 0x06 */
#endif /* NVM_REQ_CANCELED */

#ifndef NVM_REQ_REDUNDANCY_FAILED
#define NVM_REQ_REDUNDANCY_FAILED 7U /* 0x07 */
#endif /* NVM_REQ_REDUNDANCY_FAILED */

#ifndef NVM_REQ_RESTORED_FROM_ROM
#define NVM_REQ_RESTORED_FROM_ROM 8U /* 0x08 */
#endif /* NVM_REQ_RESTORED_FROM_ROM */


/* Limits of Range Data Types  -----------------------------------------------*/
#ifndef RTE_CORE

#endif /* RTE_CORE */

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* RTE_NVM_TYPE_H */
