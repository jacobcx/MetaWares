/******************************************************************************
 *
 *              Copyright 2014 Mentor Graphics Corporation
 *                        All rights reserved
 *
 *  THIS WORK CONTAINS TRADE SECRET AND PROPRIETARY INFORMATION WHICH IS
 *  THE PROPERTY OF MENTOR GRAPHICS CORPORATION OR ITS LICENSORS AND IS
 *  SUBJECT TO LICENSE TERMS.
 *
 ******************************************************************************
 *
 * This file is automatically generated by Configuration tool.
 * Do not edit manually.
 * VSC Version: 2.5.4
 *
 *==============================================================================
 *
 * Module:       Communication Manager
 *
 * File Name:    ComM_Cfg.h
 *
 * Description:  Communiction Manager Pre-Compile Configuration Header File.
 *
 ******************************************************************************/
/* [ComM456] */
#ifndef COMM_CFG_H
#define COMM_CFG_H

/*=============================== INCLUSIONS ================================*/

#include "Std_Types.h"

/*============================ TYPE DEFINITIONS =============================*/

/*============================== VERSION INFO ===============================*/

/* AUTOSAR specification major version */
#define COMM_CFG_AR_RELEASE_MAJOR_VERSION    (4U)

/* AUTOSAR specification minor version */
#define COMM_CFG_AR_RELEASE_MINOR_VERSION    (2U)

/* AUTOSAR specification patch version */
#define COMM_CFG_AR_RELEASE_REVISION_VERSION (2U)

/* Software major version */
#define COMM_CFG_SW_MAJOR_VERSION            (5U)

/* Software minor version */
#define COMM_CFG_SW_MINOR_VERSION            (1U)

/* Software patch version */
#define COMM_CFG_SW_PATCH_VERSION            (1U)

/*============================ MACRO DEFINITIONS ============================*/

/************* ComMGeneral : Original Configuration Parameters ***************/

/* [ComM511] - Enables or disables the development error detection and
 * notification mechanism. */
#define COMM_DEV_ERROR_DETECT           (STD_OFF)

/* Enables or disables the Mode Limitation Functionality. */
#define COMM_MODE_LIMITATION_ENABLED    (STD_OFF)

/* [ComM695_Conf] - Enables or disables the Synchronous Wake Up Functionality. */
#define COMM_SYNCHRONOUS_WAKE_UP        (STD_ON)

/* Enables or disables the Version Info API. */
#define COMM_VERSION_INFO_API           (STD_ON)

/* Enables or disables the Wake Up Inhibition Functionality. */
#define COMM_WAKEUP_INHIBITION_ENABLED  (STD_OFF)

/* [ComM839_Conf] - Enables or disables the PNC Support. */
#define COMM_PNC_SUPPORT                (STD_OFF)

/* [ComM887_Conf] - Enables or disables the PNC Gateway Functionality. */
#define COMM_PNC_GATEWAY_ENABLED        (STD_OFF)

/* [ComM839_Conf] - Enables or disables the NvM Support. */
#define COMM_NVM_SUPPORT                (STD_OFF)

/********** ComMGeneral : Vendor Specific Configuration Parameters ***********/

/* Switch for CAN availability. */
#define COMM_CAN_ENABLED                (STD_ON)

/* Switch for LIN availability. */
#define COMM_LIN_ENABLED                (STD_ON)

/* Switch for FLEXRAY availability. */
#define COMM_FR_ENABLED                 (STD_OFF)

/* Switch for ETHERNET availability. */
#define COMM_ETH_ENABLED                (STD_OFF)

/* Switch for Network Management FULL availability. */
#define COMM_NM_VARIANT_FULL            (STD_OFF)

/* Switch for Network Management LIGHT availability. */
#define COMM_NM_VARIANT_LIGHT           (STD_OFF)

/* Switch for Network Management NONE availability. */
#define COMM_NM_VARIANT_NONE            (STD_ON)

/* Switch for Network Management PASSIVE availability. */
#define COMM_NM_VARIANT_PASSIVE         (STD_OFF)

/* Switch for delaying the report of PNC_Requested state by BswM_ComM_CurrentPncMode()
 * until all ComMChannels of the PNC enter to FULL_COMMUNICATION state. */
#define COMM_DELAY_PNC_REQUESTED        (STD_OFF)

/* Switch for report current mode to ComMUsers which are connected to ComMChannel
 * through PNC as well. */
#define COMM_REPORT_MODE_SWITCH_TO_USERS_OF_PNC                       (STD_ON)

/* Switch for ComM_RequestComMode returns with COMM_E_MODE_LIMITATION in case of
 * Wakeup Inhibition if this parameter is true. */
#define COMM_REPORT_E_MODE_LIMITATION_WHEN_WAKEUP_INHIBITION_ENABLED  (STD_OFF)

/***************************** Build information *****************************/

/* PC Configuration Hash Value */
#define COMM_PC_HASH_VALUE ((uint32)1712421427U)

/*===================== EXTERNAL VARIABLE DECLARATIONS ======================*/

/*===================== EXTERNAL FUNCTION DECLARATIONS ======================*/

#endif /* COMM_CFG_H */
/*========================= END OF FILE ComM_Cfg.h ==========================*/
