/* Copyright 2016 Mentor Graphics Corporation
    All Rights Reserved

 THIS WORK CONTAINS TRADE SECRET
 AND PROPRIETARY INFORMATION WHICH IS THE
 PROPERTY OF MENTOR GRAPHICS
 CORPORATION OR ITS LICENSORS AND IS
 SUBJECT TO LICENSE TERMS.
*/
/*****************************************************************************
*        File: Com_Cfg.h
*        Description: This is the AUTOSAR Com Module Configuration Header File
*                     generated for Post-Build Implementation.
*                           DO NOT EDIT THIS FILE
*        Product:  VSTAR COM
*        Assumptions: none.
*        Dependency: none.
*****************************************************************************/

#ifndef COM_CFG_H
#define COM_CFG_H

#include "Std_Types.h"

/* AUTOSAR Version Information */
#define COM_CFG_H_AR_RELEASE_MAJOR_VERSION     (4U)
#define COM_CFG_H_AR_RELEASE_MINOR_VERSION     (2U)
#define COM_CFG_H_AR_RELEASE_REVISION_VERSION  (2U)

/* Software Version Information */
#define COM_CFG_H_SW_MAJOR_VERSION             (5U)
#define COM_CFG_H_SW_MINOR_VERSION             (1U)
#define COM_CFG_H_SW_PATCH_VERSION             (0U)

/*Pre-compile options*/
#define COM_AR_VERSION                         (422U)

#define COMXF_API                              (STD_OFF)

#define COM_ENABLE_NTIMES_TM                   (STD_OFF)
#define COM_ENABLE_TX_DM                       (STD_OFF)
#define COM_ENABLE_DATA_INVALIDATION           (STD_OFF)
#define COM_ENABLE_IPDU_COUNTER                (STD_OFF)
#define COM_ENABLE_FILTERS                     (STD_OFF)
#define COM_ENABLE_FLOATING_POINT              (STD_OFF)
#define COM_ENABLE_LARGE_DATA_TYPES            (STD_OFF)
#define COM_ENABLE_DYNAMIC_SIGNALS             (STD_OFF)
#define COM_DEV_ERROR_DETECT                   (STD_OFF)
#define COM_VERSION_INFO_API                   (STD_ON)
#define COM_ENABLE_CANCEL_TRANSMIT             (STD_OFF)
#define COM_ENABLE_SIGNAL_GATEWAY              (STD_OFF)
#define COM_ENABLE_IPDU_CALLOUT                (STD_OFF)
#define COM_ENABLE_TMS                         (STD_OFF)
#define COM_ENABLE_TX_ERROR_NOTIFICATION       (STD_OFF)

#define COM_ENABLE_RETRY_FAILED_TRANSMIT       (STD_ON)

#define COM_ENABLE_MDT_FOR_CYCLIC_TRANSMISSION (STD_OFF)

#define COM_ENABLE_TRIGERRED_SIGNALS           (STD_OFF)
#define COM_ENABLE_SIGNED_DATA                 (STD_OFF)
#define COM_ENABLE_DIRECT_PACKING              (STD_OFF)
#define COM_ENABLE_TRIGGERED_ON_CHANGE         (STD_OFF)
#define COM_ENABLE_RX_DM                       (STD_OFF)
#define COM_ENABLE_MDT                         (STD_OFF)
#define COM_SIGNAL_GROUP_ARRAY_API             (STD_OFF)
#define COM_ENABLE_PDU_BUFFER_ALIGNMENT        (STD_OFF)
#define COM_ENABLE_IMMEDIATE_PDU_TRANSMIT      (STD_OFF)
#define COM_ENABLE_RISE_FALL_TRIGGER           (STD_OFF)
#define COM_ENABLE_TIMEOUT_SUBSTITUTION        (STD_OFF)

#define COM_GROUP_VECTOR_LENGTH 3U


/* Hash key for Com Pre-Compile configuration */
#define COM_PC_HASH_VALUE ((uint32)3520199059U)

#endif /* COM_CFG_H*/
/********************************** End of file *******************************/
