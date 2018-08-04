/**\file
 *
 * BswM Module Header File for Picea
 * The file describes the public interface of the BSWM module.
 *
 * \b Application:        BswM \n
 * \b Target:             Independent \n
 * \b Compiler:           Independent \n
 * \b Autosar-Vendor-ID:  41 \n
 * \b Module:             name: BswM.h \n
 * \b File-Revision:      version: 3 \n
 * \b Changeable-by-user: No \n
 * \b Delivery-File:      Yes \n
 * \b Module-Owner:       Picea \n
 * \b Last-Changed-by:    derived_by: pzgykx \n
 * \b Classification:     CONFIDENTIAL \n
 * \Requirements
 * \b {DSAR-SDD-BswM-1-1}{BswM0045,BswM0002,BswM0119,BswM0003,BswM0139,BswM0046,
 *                        BswM0089,BswM0090,BswM0078,BswM0091,BswM0092,BswM0079,
 *                        BswM0093,BswM0094,BswM0124,BswM0125,BswM0126,BswM0127,
 *                        BswM0080,BswM0095,BswM0096,BswM0081,BswM0097,BswM0098,
 *                        BswM0082,BswM0099,BswM0100,BswM0083,BswM0101,BswM0102,
 *                        BswM0084,BswM0103,BswM0132,BswM0133,BswM0086,BswM0107,
 *                        BswM0108,BswM0112,BswM0113,BswM0114,BswM0014,BswM0060
 *                        BswM0063,BswM0064,BswM0129,BswM0028,BswM0029,BswM0033
 *                        BswM0136}
 */

/*
 *
 *      Copyright Mecel AB
 *      Box 14044
 *      400 20 GOTHENBURG
 *      SWEDEN
 *      Phone: +46 (0)31 720 44 00
 *      E-Mail: picea(at)mecel.se
 *      Web: http://bugzilla.mecel.se
 *
 *      The copyright of the computer program(s) herein is the property of
 *      Mecel AB. The programs(s) may be used and/or copied only with the
 *      written permission of Mecel AB or in accordance with the terms and
 *      conditions stipulated in the agreement/contract under which the
 *      program(s) have been supplied.
 *
 ******************************************************************************/
#ifndef BSWM_H
#define BSWM_H

/*============================================================================*\
* PREPROCESSOR DIRECTIVES
\*============================================================================*/

/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

//#include "BswM_Lcfg.h"
#if (BSWM_POST_BUILD_VARIANT_CONFIGURED == STD_ON)
//#include "BswM_PBcfg.h"
#endif
//#include "BswM_Version.h"
//#include "BswM_GeneratedAPIs.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/

#define  BSWM_AR_RELEASE_MAJOR_VERSION			(4U)
#define  BSWM_AR_RELEASE_MINOR_VERSION			(2U)
/**
 * Vendor ID as defined in vendor list (41 for Mecel)
 */
#define BSWM_VENDOR_ID                           ((uint16)(41U))

/**
 * Module ID as defined in AUTOSAR_BasicSoftwareModules.pdf
 */
#define BSWM_MODULE_ID                           ((uint16)(42U))

/**
 * Instance ID as defined in AUTOSAR_BasicSoftwareModules.pdf
 */
#define BSWM_INSTANCE_ID                          ((uint8)(1U))

/**
 * Major version number of the vendor specific implementation of the module.
 * The numbering is vendor specific.
 */
#define BSWM_SW_MAJOR_VERSION                              (2U)

/**
 * Minor version number of the vendor specific implementation of the module.
 * The numbering is vendor specific.
 *
 */
#define BSWM_SW_MINOR_VERSION                              (7U)

/**
 * Patch level version number of the vendor specific implementation of the module.
 * The numbering is vendor specific.
 */
#define BSWM_SW_PATCH_VERSION                              (0U)

/**
 * A service was called prior to initialization
 */
#define BSWM_E_NO_INIT                                      (uint8)(0x01U)

/**
 * A null pointer was passed as an argument
 */
#define BSWM_E_NULL_POINTER                                 (uint8)(0x2U)

/**
 * A parameter was invalid (unspecific)
 */
#define BSWM_E_INVALID_PAR                                  (uint8)(0x3U)

/**
 * A requesting user was out of range
 */
#define BSWM_E_REQ_USER_OUT_OF_RANGE                        (uint8)(0x4U)

/**
 * A requested mode was out of range
 */
#define BSWM_E_PARAM_CONFIG                                 (uint8)(0x6U)

/**
 * A requested mode was out of range
 */
#define BSWM_E_PARAM_POINTER                                (uint8)(0x7U)

/**
 * A requested mode was out of range
 */
#define BSWM_E_REQ_MODE_OUT_OF_RANGE                        (uint8)(0x5U)

/**
 * Production Error
 */
#define BSWM_E_ACTION_FAILED                                (uint8)(0x0U)

/**
 * Service ID for BswM_Init
 */
#define BSWM_INIT_API_ID                                    (uint8)(0U)

/**
 * Service ID for BswM_GetVersionInfo
 */
#define BSWM_GETVERSIONINFO_API_ID                          (uint8)(1U)

/**
 * Service ID for BswM_RequestMode
 */
#define BSWM_REQUESTMODE_API_ID                             (uint8)(2U)

/**
 * Service ID for BswM_MainFunction
 */
#define BSWM_MAINFUNCTION_API_ID                            (uint8)(3U)

/**
 * Service ID for BswM_Deinit
 */
#define BSWM_DEINIT_API_ID                                  (uint8)(4U)

/**
 * Service ID for BswM_CanSM_CurrentState
 */
#define BSWM_CANSM_CURRENTSTATE_API_ID                      (uint8)(5U)

/**
 * Service ID for BswM_Dcm_CommunicationMode_CurrentState
 */
#define BSWM_DCM_COMMUNICATIONMODE_CURRENTSTATE_API_ID      (uint8)(6U)

/**
 * Service ID for BswM_LinSM_CurrentState
 */
#define BSWM_LINSM_CURRENTSTATE_API_ID                      (uint8)(9U)

/**
 * Service ID for BswM_LinSM_CurrentSchedule
 */
#define BSWM_LINSM_CURRENTSCHEDULE_API_ID                   (uint8)(10U)

/**
 * Service ID for BswM_LinTp_RequestMode
 */
#define BSWM_LINTP_REQUESTMODE_API_ID                       (uint8)(11U)

/**
 * Service ID for BswM_FrSM_CurrentState
 */
#define BSWM_FRSM_CURRENTSTATE_API_ID                       (uint8)(12U)

/**
 * Service ID for BswM_EthSM_CurrentState
 */
#define BSWM_ETHSM_CURRENTSTATE_API_ID                      (uint8)(13U)

/**
 * Service ID for BswM_ComM_CurrentMode
 */
#define BSWM_COMM_CURRENTMODE_API_ID                        (uint8)(14U)

/**
 * Service ID for BswM_ComM_CurrentPNCMode
 */
#define BSWM_COMM_CURRENT_PNC_MODE_API_ID                    (uint8)(21U)

/**
 * Service ID for BswM_WdgM_RequestPartitionReset
 */
#define BSWM_WDGM_REQUEST_PARTITION_RESET_API_ID             (uint8)(17U)

/**
 * Service ID for BswM_TriggerStartUpPhase2
 */
#define BSWM_TRIGGER_STARTUP_PHASE2_API_ID                   (uint8)(18U)

/**
 * Service ID for BswM_TriggerSlaveRTEStop
 */
#define BSWM_TRIGGER_SLAVE_RTE_STOP_API_ID                   (uint8)(19U)

/**
 * Service ID for BswM_EcuM_CurrentState
 */
#define BSWM_ECUM_CURRENTSTATE_API_ID                        (uint8)(15U)

/**
 * Service ID for BswM_EcuM_CurrentWakeup
 */
#define BSWM_ECUM_CURRENTWAKEUP_API_ID                       (uint8)(16U)

/**
 * Service ID for BswM_WdgM_RequestPartitionReset
 */
#define BSWM_WDGM_REQUESTPARTITIONRESET_API_ID               (uint8)(17U)

/**
 * Service ID for BswM_NvM_CurrentBlockMode
 */
#define BSWM_NVM_CURRENT_BLOCK_MODE_API_ID                   (uint8)(22U)

/**
 * Service ID for BswM_NvM_CurrentJobMode
 */
#define BSWM_NVM_JOBMODE_INDICATION_API_ID                   (uint8)(23U)

/**
 * BswM Initialization Status: Initialized
 */
#define BSWM_INIT                       (TRUE)

/**
 * BswM Initialization Status: Uninitialized
 */
#define BSWM_UNINIT                     (FALSE)

/**
 * BswM PDUR Status: Enable
 */
#define BSWM_PDUR_ENABLE                0x01U

/**
 * BswM PDUR Status: Disable
 */
#define BSWM_PDUR_DISABLE               0x00U

/**
 * BswM Rule for execution in main function
 */
#define BSWM_IN_MAIN                    (TRUE)

/**
 * BswM Rule for execution not in main function
 */
#define BSWM_NOT_MAIN                   (FALSE)

/**
 * BswM Rule Processing: Immediate
 */
#define BSWM_IMMEDIATE                  0x00U

/**
 * BswM Rule Process: Deferred
 */
#define BSWM_DEFERRED                   0x01U

/**
 * Requested communication mode by BswM.This corresponds to the parameter "ComMode" of the function ComM_RequestComMode
 * i.e, BSWM_FULL_COM corresponding to COMM_FULL_COMMUNICATION
 */
#define BSWM_FULL_COM                  ((ComM_ModeType)0x02U)

/**
 * Requested communication mode by BswM.This corresponds to the parameter "ComMode" of the function ComM_RequestComMode
 * i.e, BSWM_NO_COM corresponding to COMM_NO_COMMUNICATION
 */
#define BSWM_NO_COM                    ((ComM_ModeType)0x00U)


/*============================================================================*\
* EXPORTED FUNCTION-LIKE-MACROS and INLINE FUNCTIONS
\*============================================================================*/

#endif   /* #ifdef BSWM_H */

/* END OF FILE -------------------------------------------------------------- */

