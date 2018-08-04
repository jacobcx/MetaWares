/**\file
 *
 * \brief Generated Source File for Dcm
 *
 * This file describes the public interface of the pre-compile configuration.
 *
 * \b Application:        Dcm \n
 * \b Target:             see Dcm.h for details \n
 * \b Compiler:           see Dcm.h for details \n
 * \b Autosar-Vendor-ID:  31 \n
 *
 * \b Module:             Dcm_Cfg.h \n
 * \b Generator:          VSTAR Dcm V8.0.1-Build664 \n
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
#ifndef DCM_CFG_H
#define DCM_CFG_H

/*****************************************************************************/
/* Included standard header files                                            */
/*****************************************************************************/

#include "ComStack_Types.h"

/*****************************************************************************/
/* Included other header files                                               */
/*****************************************************************************/

/*****************************************************************************/
/* Public macros                                                             */
/*****************************************************************************/
#define DCM_CFG_SW_MAJOR_VERSION (8U)
#define DCM_CFG_SW_MINOR_VERSION (0U)
#define DCM_CFG_SW_PATCH_VERSION (1U)

/** [SWS_BSW_00202] : Enable / disable DET checks and callouts. */
#define DCM_DEV_ERROR_DETECT (STD_ON)

/** [SWS_BSW_00051] : Enable / disable the Dcm_GetVersionInfo API. */
#define DCM_VERSION_INFO_API (STD_ON)

/** Enable / disable paged buffer handling. */
#define DCM_PAGEDBUFFER_ENABLED (STD_OFF)

/** Enable / disable the manufacturer notifications, both indications and confirmations. */
#define DCM_MANUFACTURER_NOTIFICATIONS_ENABLED (STD_OFF)

/** Enable / disable the supplier notifications, both indications and confirmations. */
#define DCM_SUPPLIER_NOTIFICATIONS_ENABLED (STD_OFF)

/** Enable / disable if DCM shall respond on SIDs out of range. */
#define DCM_RESPOND_ALL_REQUEST (STD_ON)

/** Enable / disable UDS service 0xAF. */
#define DCM_READ_GENERIC_INFORMATION_ENABLED (STD_OFF)

/** Enable / disable the module check on Autosar version for foreign modules. */
#define DCM_VERSION_CHECK_FOREIGN_MODULE (STD_ON)

/** Enable / disable the OBD service handlers. */
#define DCM_OBD_SERVICE_HANDLERS_ENABLED (STD_OFF)

/** Enable / disable the optional DTCSettingControlOptionRecord for UDS service 0x85. */
#define DCM_OPTIONAL_DTCSCOR_ENABLED (STD_OFF)

/** Enable / disable the presence of ResetRoutineControlState API. */
#define DCM_RESET_ROUTINE_CONTROL_STATE_API_ENABLED (STD_OFF)

/*****************************************************************************/
/* Public Types                                                              */
/*****************************************************************************/

/*****************************************************************************/
/* Public constant & variable prototypes                                     */
/*****************************************************************************/

/*****************************************************************************/
/* Public pre-compile CRC32 hash value for link time and post build checks   */
/*****************************************************************************/
#define DCM_PC_HASH_VALUE (0x818FE5D2UL)

#endif /* DCM_CFG_H */

