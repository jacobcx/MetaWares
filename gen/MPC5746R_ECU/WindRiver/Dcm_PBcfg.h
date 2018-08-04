/**\file
 *
 * \brief Generated Source File for Dcm
 *
 * This file describes the public interface of the post-build configuration.
 *
 * \b Application:        Dcm \n
 * \b Target:             see Dcm.h for details \n
 * \b Compiler:           see Dcm.h for details \n
 * \b Autosar-Vendor-ID:  31 \n
 *
 * \b Module:             Dcm_PBcfg.h \n
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
#ifndef DCM_PBCFG_H
#define DCM_PBCFG_H

/*****************************************************************************/
/* Included standard header files                                            */
/*****************************************************************************/

#include "Dcm_PBCfg_Types.h"

/*****************************************************************************/
/* Included other header files                                               */
/*****************************************************************************/

/*****************************************************************************/
/* Public macros                                                             */
/*****************************************************************************/
#define DCM_PBCFG_SW_MAJOR_VERSION (8U)
#define DCM_PBCFG_SW_MINOR_VERSION (0U)
#define DCM_PBCFG_SW_PATCH_VERSION (1U)

/** Rx Pdu define */
#define DcmConf_DcmDslProtocolRx_DcmDslProtocolRx_Func ((PduIdType)0U)

/** Rx Pdu define */
#define DcmConf_DcmDslProtocolRx_DcmDslProtocolRx_Phys ((PduIdType)1U)

/** Main Tx confirmation Pdu define */
#define DcmConf_DcmDslProtocolTx_DcmDslProtocolTx ((PduIdType)0U)

/*****************************************************************************/
/* Public Types                                                              */
/*****************************************************************************/

/*****************************************************************************/
/* Public constant & variable prototypes                                     */
/*****************************************************************************/

extern CONST(Dcm_ConfigType, DCM_CONST) DcmConfigSet;

/*****************************************************************************/
/* Public API function prototypes                                            */
/*****************************************************************************/

#endif /* DCM_PBCFG_H */

