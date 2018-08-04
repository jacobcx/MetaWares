/**\file
 *
 * \brief Generated Source File for Dem
 *
 * This file describes the pre-compile time configuration parameters
 *
 * \b Application:        Dem \n
 * \b Target:             see Dem.h for details \n
 * \b Compiler:           see Dem.h for details \n
 * \b Autosar-Vendor-ID:  31 \n
 *
 * \b Module:             Dem_Cfg.h \n
 * \b Generator:          VSTAR Dem V6.1.0-Build575 \n
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
#ifndef DEM_CFG_H
#define DEM_CFG_H

/*============================================================================*\
 * PREPROCESSOR DIRECTIVES
\*============================================================================*/

/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/


/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/
#include "Std_Types.h"


/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/

#define DEM_CFG_SW_MAJOR_VERSION (6U)
#define DEM_CFG_SW_MINOR_VERSION (1U)
#define DEM_CFG_SW_PATCH_VERSION (0U)

#define DEM_VERSION_CHECK_FOREIGN_MODULE           (STD_ON)
#define DEM_DEV_ERROR_DETECT           (STD_ON) /* [SWS_BSW_00202] */
#define DEM_VERSION_INFO_API           (STD_ON) /* [SWS_BSW_00051] */
#define DEM_OBD_SUPPORT                (STD_OFF)
#define DEM_OBD_PERMANENT_SUPPORT      (STD_OFF)

#define DEM_PTO_SUPPORT                (STD_OFF)
#define DEM_ENABLE_CONDITION_SUPPORT   (STD_OFF)
#define DEM_STORAGE_CONDITION_SUPPORT  (STD_OFF)
#define DEM_REPLACEMENT_EVENT_SUPPORT  (STD_OFF)
#define DEM_OP_CYCLE_NVM_SUPPORT       (STD_ON)
#define DEM_ESEXT_TF_NVM_SUPPORT       (STD_ON)
#define DEM_ESEXT_TFSLC_AGING_SUPPORT  (STD_OFF)
#define DEM_TRIGGER_DCM                (STD_OFF)
#define DEM_TRIGGER_FIM                (STD_OFF)
#define DEM_TRIGGER_DLT                (STD_OFF)
#define DEM_PRESTORE_FF_SUPPORT        (STD_OFF)
#define DEM_PRESTORE_OBD_FF_SUPPORT    (STD_OFF)
#define DEM_AGING_REQUIRES_TESTED_CYCLE   (STD_ON)

#define DEM_TRIGGER_ON_TEST_FAILED_PC     (0U)
#define DEM_TRIGGER_ON_FDC_THRESHOLD_PC   (2U)
#define DEM_ED_CAPTURE                    (DEM_TRIGGER_ON_TEST_FAILED_PC)

#define DEM_SELECT_OLDEST_CONFIRMED            (0U)
#define DEM_SELECT_OLDEST_PENDING_OR_CONFIRMED (1U)
#define DEM_OBD_FF_SELECTION                   (DEM_SELECT_OLDEST_PENDING_OR_CONFIRMED)

#define DEM_CLRRESP_NONVOLATILE_FINISH  (0U)
#define DEM_CLRRESP_NONVOLATILE_TRIGGER (1U)
#define DEM_CLRRESP_VOLATILE            (2U)
#define DEM_CLEAR_DTC_BEHAVIOR          (DEM_CLRRESP_VOLATILE)

#define DEM_DISPLACEMENT_FULL (2U)
#define DEM_DISPLACEMENT_NONE (0U)
#define DEM_DISPLACEMENT_PRIO_AGE (3U)
#define DEM_DISPLACEMENT_PRIO_OCC (1U)
#define DEM_EVENT_DISPLACEMENT_STRATEGY (DEM_DISPLACEMENT_NONE)

#define DEM_EVCOMB_DISABLED (0U)
#define DEM_EVCOMB_ONSTORAGE (1U)
#define DEM_EVENT_COMBINATION_ALT (DEM_EVCOMB_DISABLED)

#define DEM_NUMBER_OF_FF_PER_EVENT     ((uint8)1U)
#define DEM_NUMBER_OF_PRESTORE_FF      ((uint8)0U)
#define DEM_NUMBER_OF_PRESTORE_OBD_FF  ((uint8)0U)
#define DEM_NUMBER_OF_NV_BLOCKS        ((uint16)14U)
#define DEM_MAX_NUMBER_EVENT_ENTRY_PRM (10U)
#define DEM_MAX_NUMBER_EVENT_ENTRY_SEC (0U)
#define DEM_DTC_STATUS_AVAILABILITY_MASK ((Dem_UdsStatusByteType)255U)
#define DEM_IMMEDIATE_NV_STORAGE_LIMIT ((uint8)1U)
#define DEM_WIR_ARRAY_LENGTH           ((uint8)1U)

/* Vendor-specific */
#define DEM_TYPE_OF_DTC_SUPPORTED              ((Dem_DTCTranslationFormatType)0x01U)
#define DEM_DB_COUNTER_BASED                   (STD_ON)
#define DEM_DB_TIME_BASED                      (STD_OFF)
#define DEM_NVM_SUPPORT                        (STD_OFF)
#define DEM_OCCCTR_TF                          (STD_ON)
#define DEM_OCCCTR_CDTC                        (STD_OFF)
#define DEM_EXTENDED_FIM                       (STD_OFF)
#define DEM_DISABLE_RECORD_0_FOR_UDS_SERVICES  (STD_OFF)
#define DEM_IMMEDIATE_IND_ON_HEALED_DTC        (STD_OFF)
#define DEM_USE_EXTERNAL_DISTANCE_INFORMATION  (STD_OFF)

/* EXPORTED DEFINE MACROS (#, ##) -------------------------------------------- */


/*============================================================================*\
 * EXPORTED TYPEDEF DECLARATIONS
\*============================================================================*/

/* ENUMS --------------------------------------------------------------------- */


/* STRUCTS ------------------------------------------------------------------- */


/* UNIONS -------------------------------------------------------------------- */


/* OTHER TYPEDEFS ------------------------------------------------------------ */


/*============================================================================*\
 * EXPORTED OBJECT DECLARATIONS
\*============================================================================*/

/*============================================================================*\
 * EXPORTED FUNCTIONS PROTOTYPES
\*============================================================================*/

/*============================================================================*\
 * EXPORTED FUNCTION-LIKE-MACROS and INLINE FUNCTIONS
\*============================================================================*/

/*============================================================================*\
 * Public pre-compile CRC32 hash value for link time and post build checks
\*============================================================================*/
#define DEM_PC_HASH_VALUE (0x31ECAA46UL)

#endif   /* #ifdef DEM_CFG_H */
/* END OF FILE -------------------------------------------------------------- */

