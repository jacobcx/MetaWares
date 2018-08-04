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
 * \b Module:             Rte_Dem_Type.h \n
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
#ifndef RTE_DEM_TYPE_H
#define RTE_DEM_TYPE_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*============================================================================*
 * PREPROCESSOR DIRECTIVES                                                    *
 *============================================================================*/

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

#include "Rte_Type.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define RTE_DEM_TYPE_SW_MAJOR_VERSION (6U)
#define RTE_DEM_TYPE_SW_MINOR_VERSION (0U)
#define RTE_DEM_TYPE_SW_PATCH_VERSION (1U)

/*============================================================================*
 * EXPORTED TYPEDEF DECLARATIONS                                              *
 *============================================================================*/

/* Mode Declaration Groups ---------------------------------------------------*/

/* Enumeration And Bit Field Data Types --------------------------------------*/
#ifndef DEM_DTC_FORMAT_OBD
#define DEM_DTC_FORMAT_OBD 0U /* 0x00 */
#endif /* DEM_DTC_FORMAT_OBD */

#ifndef DEM_DTC_FORMAT_UDS
#define DEM_DTC_FORMAT_UDS 11U /* 0x0b */
#endif /* DEM_DTC_FORMAT_UDS */

#ifndef DEM_DTC_FORMAT_J1939
#define DEM_DTC_FORMAT_J1939 22U /* 0x16 */
#endif /* DEM_DTC_FORMAT_J1939 */

#ifndef DEM_DTC_KIND_ALL_DTCS
#define DEM_DTC_KIND_ALL_DTCS 1U /* 0x01 */
#endif /* DEM_DTC_KIND_ALL_DTCS */

#ifndef DEM_DTC_KIND_EMISSION_REL_DTCS
#define DEM_DTC_KIND_EMISSION_REL_DTCS 2U /* 0x02 */
#endif /* DEM_DTC_KIND_EMISSION_REL_DTCS */

#ifndef DEM_DTC_ORIGIN_PRIMARY_MEMORY
#define DEM_DTC_ORIGIN_PRIMARY_MEMORY 1U /* 0x01 */
#endif /* DEM_DTC_ORIGIN_PRIMARY_MEMORY */

#ifndef DEM_DTC_ORIGIN_MIRROR_MEMORY
#define DEM_DTC_ORIGIN_MIRROR_MEMORY 2U /* 0x02 */
#endif /* DEM_DTC_ORIGIN_MIRROR_MEMORY */

#ifndef DEM_DTC_ORIGIN_PERMANENT_MEMORY
#define DEM_DTC_ORIGIN_PERMANENT_MEMORY 3U /* 0x03 */
#endif /* DEM_DTC_ORIGIN_PERMANENT_MEMORY */

#ifndef DEM_DTC_ORIGIN_SECONDARY_MEMORY
#define DEM_DTC_ORIGIN_SECONDARY_MEMORY 4U /* 0x04 */
#endif /* DEM_DTC_ORIGIN_SECONDARY_MEMORY */

#ifndef DEM_EVENT_STATUS_PASSED
#define DEM_EVENT_STATUS_PASSED 0U /* 0x00 */
#endif /* DEM_EVENT_STATUS_PASSED */

#ifndef DEM_EVENT_STATUS_FAILED
#define DEM_EVENT_STATUS_FAILED 1U /* 0x01 */
#endif /* DEM_EVENT_STATUS_FAILED */

#ifndef DEM_EVENT_STATUS_PREPASSED
#define DEM_EVENT_STATUS_PREPASSED 2U /* 0x02 */
#endif /* DEM_EVENT_STATUS_PREPASSED */

#ifndef DEM_EVENT_STATUS_PREFAILED
#define DEM_EVENT_STATUS_PREFAILED 3U /* 0x03 */
#endif /* DEM_EVENT_STATUS_PREFAILED */

#ifndef DEM_EVENT_STATUS_FDC_THRESHOLD_REACHED
#define DEM_EVENT_STATUS_FDC_THRESHOLD_REACHED 4U /* 0x04 */
#endif /* DEM_EVENT_STATUS_FDC_THRESHOLD_REACHED */

#ifndef DEM_INDICATOR_OFF
#define DEM_INDICATOR_OFF 0U /* 0x00 */
#endif /* DEM_INDICATOR_OFF */

#ifndef DEM_INDICATOR_CONTINUOUS
#define DEM_INDICATOR_CONTINUOUS 1U /* 0x01 */
#endif /* DEM_INDICATOR_CONTINUOUS */

#ifndef DEM_INDICATOR_BLINKING
#define DEM_INDICATOR_BLINKING 2U /* 0x02 */
#endif /* DEM_INDICATOR_BLINKING */

#ifndef DEM_INDICATOR_BLINK_CONT
#define DEM_INDICATOR_BLINK_CONT 3U /* 0x03 */
#endif /* DEM_INDICATOR_BLINK_CONT */

#ifndef DEM_INDICATOR_SLOW_FLASH
#define DEM_INDICATOR_SLOW_FLASH 4U /* 0x04 */
#endif /* DEM_INDICATOR_SLOW_FLASH */

#ifndef DEM_INDICATOR_FAST_FLASH
#define DEM_INDICATOR_FAST_FLASH 5U /* 0x05 */
#endif /* DEM_INDICATOR_FAST_FLASH */

#ifndef DEM_INDICATOR_ON_DEMAND
#define DEM_INDICATOR_ON_DEMAND 6U /* 0x06 */
#endif /* DEM_INDICATOR_ON_DEMAND */

#ifndef DEM_INDICATOR_SHORT
#define DEM_INDICATOR_SHORT 7U /* 0x07 */
#endif /* DEM_INDICATOR_SHORT */

#ifndef DEM_INIT_MONITOR_CLEAR
#define DEM_INIT_MONITOR_CLEAR 1U /* 0x01 */
#endif /* DEM_INIT_MONITOR_CLEAR */

#ifndef DEM_INIT_MONITOR_RESTART
#define DEM_INIT_MONITOR_RESTART 2U /* 0x02 */
#endif /* DEM_INIT_MONITOR_RESTART */

#ifndef DEM_INIT_MONITOR_REENABLED
#define DEM_INIT_MONITOR_REENABLED 3U /* 0x03 */
#endif /* DEM_INIT_MONITOR_REENABLED */

#ifndef DEM_INIT_MONITOR_STORAGE_REENABLED
#define DEM_INIT_MONITOR_STORAGE_REENABLED 4U /* 0x04 */
#endif /* DEM_INIT_MONITOR_STORAGE_REENABLED */

#ifndef DEM_CYCLE_STATE_START
#define DEM_CYCLE_STATE_START 0U /* 0x00 */
#endif /* DEM_CYCLE_STATE_START */

#ifndef DEM_CYCLE_STATE_END
#define DEM_CYCLE_STATE_END 1U /* 0x01 */
#endif /* DEM_CYCLE_STATE_END */

#ifndef DEM_UDS_STATUS_TF
#define DEM_UDS_STATUS_TF 1U /* 0x01 */
#endif /* DEM_UDS_STATUS_TF */

#ifndef DEM_UDS_STATUS_TFTOC
#define DEM_UDS_STATUS_TFTOC 2U /* 0x02 */
#endif /* DEM_UDS_STATUS_TFTOC */

#ifndef DEM_UDS_STATUS_PDTC
#define DEM_UDS_STATUS_PDTC 4U /* 0x04 */
#endif /* DEM_UDS_STATUS_PDTC */

#ifndef DEM_UDS_STATUS_CDTC
#define DEM_UDS_STATUS_CDTC 8U /* 0x08 */
#endif /* DEM_UDS_STATUS_CDTC */

#ifndef DEM_UDS_STATUS_TNCSLC
#define DEM_UDS_STATUS_TNCSLC 16U /* 0x10 */
#endif /* DEM_UDS_STATUS_TNCSLC */

#ifndef DEM_UDS_STATUS_TFSLC
#define DEM_UDS_STATUS_TFSLC 32U /* 0x20 */
#endif /* DEM_UDS_STATUS_TFSLC */

#ifndef DEM_UDS_STATUS_TNCTOC
#define DEM_UDS_STATUS_TNCTOC 64U /* 0x40 */
#endif /* DEM_UDS_STATUS_TNCTOC */

#ifndef DEM_UDS_STATUS_WIR
#define DEM_UDS_STATUS_WIR 128U /* 0x80 */
#endif /* DEM_UDS_STATUS_WIR */


/* Limits of Range Data Types  -----------------------------------------------*/
#ifndef RTE_CORE

#endif /* RTE_CORE */

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* RTE_DEM_TYPE_H */
