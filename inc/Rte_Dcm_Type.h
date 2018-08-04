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
 * \b Module:             Rte_Dcm_Type.h \n
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
#ifndef RTE_DCM_TYPE_H
#define RTE_DCM_TYPE_H

#ifdef __cplusplus
extern "C" {
#endif /* __cplusplus */

/*============================================================================*
 * PREPROCESSOR DIRECTIVES                                                    *
 *============================================================================*/

/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

#include "Rte_Type.h"

/* EXPORTED DEFINES FOR CONSTANTS --------------------------------------------*/
#define RTE_DCM_TYPE_SW_MAJOR_VERSION (6U)
#define RTE_DCM_TYPE_SW_MINOR_VERSION (0U)
#define RTE_DCM_TYPE_SW_PATCH_VERSION (1U)

/*============================================================================*
 * EXPORTED TYPEDEF DECLARATIONS                                              *
 *============================================================================*/

/* Mode Declaration Groups ---------------------------------------------------*/
#ifndef RTE_MODETYPE_DcmCommunicationControl
#define RTE_MODETYPE_DcmCommunicationControl
typedef uint8 Rte_ModeType_DcmCommunicationControl;
#endif
#ifndef RTE_MODE_DcmCommunicationControl_DCM_ENABLE_RX_TX_NORM
#define RTE_MODE_DcmCommunicationControl_DCM_ENABLE_RX_TX_NORM 0U
#endif
#ifndef RTE_MODE_DcmCommunicationControl_DCM_ENABLE_RX_DISABLE_TX_NORM
#define RTE_MODE_DcmCommunicationControl_DCM_ENABLE_RX_DISABLE_TX_NORM 1U
#endif
#ifndef RTE_MODE_DcmCommunicationControl_DCM_DISABLE_RX_ENABLE_TX_NORM
#define RTE_MODE_DcmCommunicationControl_DCM_DISABLE_RX_ENABLE_TX_NORM 2U
#endif
#ifndef RTE_MODE_DcmCommunicationControl_DCM_DISABLE_RX_TX_NORMAL
#define RTE_MODE_DcmCommunicationControl_DCM_DISABLE_RX_TX_NORMAL 3U
#endif
#ifndef RTE_MODE_DcmCommunicationControl_DCM_ENABLE_RX_TX_NM
#define RTE_MODE_DcmCommunicationControl_DCM_ENABLE_RX_TX_NM 4U
#endif
#ifndef RTE_MODE_DcmCommunicationControl_DCM_ENABLE_RX_DISABLE_TX_NM
#define RTE_MODE_DcmCommunicationControl_DCM_ENABLE_RX_DISABLE_TX_NM 5U
#endif
#ifndef RTE_MODE_DcmCommunicationControl_DCM_DISABLE_RX_ENABLE_TX_NM
#define RTE_MODE_DcmCommunicationControl_DCM_DISABLE_RX_ENABLE_TX_NM 6U
#endif
#ifndef RTE_MODE_DcmCommunicationControl_DCM_DISABLE_RX_TX_NM
#define RTE_MODE_DcmCommunicationControl_DCM_DISABLE_RX_TX_NM 7U
#endif
#ifndef RTE_MODE_DcmCommunicationControl_DCM_ENABLE_RX_TX_NORM_NM
#define RTE_MODE_DcmCommunicationControl_DCM_ENABLE_RX_TX_NORM_NM 8U
#endif
#ifndef RTE_MODE_DcmCommunicationControl_DCM_ENABLE_RX_DISABLE_TX_NORM_NM
#define RTE_MODE_DcmCommunicationControl_DCM_ENABLE_RX_DISABLE_TX_NORM_NM 9U
#endif
#ifndef RTE_MODE_DcmCommunicationControl_DCM_DISABLE_RX_ENABLE_TX_NORM_NM
#define RTE_MODE_DcmCommunicationControl_DCM_DISABLE_RX_ENABLE_TX_NORM_NM 10U
#endif
#ifndef RTE_MODE_DcmCommunicationControl_DCM_DISABLE_RX_TX_NORM_NM
#define RTE_MODE_DcmCommunicationControl_DCM_DISABLE_RX_TX_NORM_NM 11U
#endif
#ifndef RTE_TRANSITION_DcmCommunicationControl
#define RTE_TRANSITION_DcmCommunicationControl 12U
#endif

#ifndef RTE_MODETYPE_DcmControlDTCSetting
#define RTE_MODETYPE_DcmControlDTCSetting
typedef uint8 Rte_ModeType_DcmControlDTCSetting;
#endif
#ifndef RTE_MODE_DcmControlDTCSetting_ENABLEDTCSETTING
#define RTE_MODE_DcmControlDTCSetting_ENABLEDTCSETTING 0U
#endif
#ifndef RTE_MODE_DcmControlDTCSetting_DISABLEDTCSETTING
#define RTE_MODE_DcmControlDTCSetting_DISABLEDTCSETTING 1U
#endif
#ifndef RTE_TRANSITION_DcmControlDTCSetting
#define RTE_TRANSITION_DcmControlDTCSetting 2U
#endif

#ifndef RTE_MODETYPE_DcmDiagnosticSessionControl
#define RTE_MODETYPE_DcmDiagnosticSessionControl
typedef uint8 Rte_ModeType_DcmDiagnosticSessionControl;
#endif
#ifndef RTE_MODE_DcmDiagnosticSessionControl_DEFAULT_SESSION
#define RTE_MODE_DcmDiagnosticSessionControl_DEFAULT_SESSION 1U
#endif
#ifndef RTE_MODE_DcmDiagnosticSessionControl_PROGRAMMING_SESSION
#define RTE_MODE_DcmDiagnosticSessionControl_PROGRAMMING_SESSION 2U
#endif
#ifndef RTE_MODE_DcmDiagnosticSessionControl_EXTENDED_DIAGNOSTIC_SESSION
#define RTE_MODE_DcmDiagnosticSessionControl_EXTENDED_DIAGNOSTIC_SESSION 3U
#endif
#ifndef RTE_TRANSITION_DcmDiagnosticSessionControl
#define RTE_TRANSITION_DcmDiagnosticSessionControl 255U
#endif

#ifndef RTE_MODETYPE_DcmEcuReset
#define RTE_MODETYPE_DcmEcuReset
typedef uint8 Rte_ModeType_DcmEcuReset;
#endif
#ifndef RTE_MODE_DcmEcuReset_NONE
#define RTE_MODE_DcmEcuReset_NONE 0U
#endif
#ifndef RTE_MODE_DcmEcuReset_HARD
#define RTE_MODE_DcmEcuReset_HARD 1U
#endif
#ifndef RTE_MODE_DcmEcuReset_KEYONOFF
#define RTE_MODE_DcmEcuReset_KEYONOFF 2U
#endif
#ifndef RTE_MODE_DcmEcuReset_SOFT
#define RTE_MODE_DcmEcuReset_SOFT 3U
#endif
#ifndef RTE_MODE_DcmEcuReset_JUMPTOBOOTLOADER
#define RTE_MODE_DcmEcuReset_JUMPTOBOOTLOADER 4U
#endif
#ifndef RTE_MODE_DcmEcuReset_JUMPTOSYSSUPPLIERBOOTLOADER
#define RTE_MODE_DcmEcuReset_JUMPTOSYSSUPPLIERBOOTLOADER 5U
#endif
#ifndef RTE_MODE_DcmEcuReset_EXECUTE
#define RTE_MODE_DcmEcuReset_EXECUTE 6U
#endif
#ifndef RTE_TRANSITION_DcmEcuReset
#define RTE_TRANSITION_DcmEcuReset 7U
#endif

#ifndef RTE_MODETYPE_DcmModeRapidPowerShutDown
#define RTE_MODETYPE_DcmModeRapidPowerShutDown
typedef uint8 Rte_ModeType_DcmModeRapidPowerShutDown;
#endif
#ifndef RTE_MODE_DcmModeRapidPowerShutDown_ENABLE_RAPIDPOWERSHUTDOWN
#define RTE_MODE_DcmModeRapidPowerShutDown_ENABLE_RAPIDPOWERSHUTDOWN 0U
#endif
#ifndef RTE_MODE_DcmModeRapidPowerShutDown_DISABLE_RAPIDPOWERSHUTDOWN
#define RTE_MODE_DcmModeRapidPowerShutDown_DISABLE_RAPIDPOWERSHUTDOWN 1U
#endif
#ifndef RTE_TRANSITION_DcmModeRapidPowerShutDown
#define RTE_TRANSITION_DcmModeRapidPowerShutDown 2U
#endif


/* Enumeration And Bit Field Data Types --------------------------------------*/
#ifndef DCM_RES_POS_OK
#define DCM_RES_POS_OK 0U /* 0x00 */
#endif /* DCM_RES_POS_OK */

#ifndef DCM_RES_POS_NOT_OK
#define DCM_RES_POS_NOT_OK 1U /* 0x01 */
#endif /* DCM_RES_POS_NOT_OK */

#ifndef DCM_RES_NEG_OK
#define DCM_RES_NEG_OK 2U /* 0x02 */
#endif /* DCM_RES_NEG_OK */

#ifndef DCM_RES_NEG_NOT_OK
#define DCM_RES_NEG_NOT_OK 3U /* 0x03 */
#endif /* DCM_RES_NEG_NOT_OK */

#ifndef DCM_DID_SUPPORTED
#define DCM_DID_SUPPORTED 0U /* 0x00 */
#endif /* DCM_DID_SUPPORTED */

#ifndef DCM_DID_NOT_SUPPORTED
#define DCM_DID_NOT_SUPPORTED 1U /* 0x01 */
#endif /* DCM_DID_NOT_SUPPORTED */

#ifndef DCM_E_GENERALREJECT
#define DCM_E_GENERALREJECT 16U /* 0x10 */
#endif /* DCM_E_GENERALREJECT */

#ifndef DCM_E_SERVICENOTSUPPORTED
#define DCM_E_SERVICENOTSUPPORTED 17U /* 0x11 */
#endif /* DCM_E_SERVICENOTSUPPORTED */

#ifndef DCM_E_SUBFUNCTIONNOTSUPPORTED
#define DCM_E_SUBFUNCTIONNOTSUPPORTED 18U /* 0x12 */
#endif /* DCM_E_SUBFUNCTIONNOTSUPPORTED */

#ifndef DCM_E_INCORRECTMESSAGELENGTHORINVALIDFORMAT
#define DCM_E_INCORRECTMESSAGELENGTHORINVALIDFORMAT 19U /* 0x13 */
#endif /* DCM_E_INCORRECTMESSAGELENGTHORINVALIDFORMAT */

#ifndef DCM_E_RESPONSETOOLONG
#define DCM_E_RESPONSETOOLONG 20U /* 0x14 */
#endif /* DCM_E_RESPONSETOOLONG */

#ifndef DCM_E_BUSYREPEATREQUEST
#define DCM_E_BUSYREPEATREQUEST 33U /* 0x21 */
#endif /* DCM_E_BUSYREPEATREQUEST */

#ifndef DCM_E_CONDITIONSNOTCORRECT
#define DCM_E_CONDITIONSNOTCORRECT 34U /* 0x22 */
#endif /* DCM_E_CONDITIONSNOTCORRECT */

#ifndef DCM_E_REQUESTSEQUENCEERROR
#define DCM_E_REQUESTSEQUENCEERROR 36U /* 0x24 */
#endif /* DCM_E_REQUESTSEQUENCEERROR */

#ifndef DCM_E_NORESPONSEFROMSUBNETCOMPONENT
#define DCM_E_NORESPONSEFROMSUBNETCOMPONENT 37U /* 0x25 */
#endif /* DCM_E_NORESPONSEFROMSUBNETCOMPONENT */

#ifndef DCM_E_FAILUREPREVENTSEXECUTIONOFREQUESTEDACTION
#define DCM_E_FAILUREPREVENTSEXECUTIONOFREQUESTEDACTION 38U /* 0x26 */
#endif /* DCM_E_FAILUREPREVENTSEXECUTIONOFREQUESTEDACTION */

#ifndef DCM_E_REQUESTOUTOFRANGE
#define DCM_E_REQUESTOUTOFRANGE 49U /* 0x31 */
#endif /* DCM_E_REQUESTOUTOFRANGE */

#ifndef DCM_E_SECURITYACCESSDENIED
#define DCM_E_SECURITYACCESSDENIED 51U /* 0x33 */
#endif /* DCM_E_SECURITYACCESSDENIED */

#ifndef DCM_E_INVALIDKEY
#define DCM_E_INVALIDKEY 53U /* 0x35 */
#endif /* DCM_E_INVALIDKEY */

#ifndef DCM_E_EXCEEDNUMBEROFATTEMPTS
#define DCM_E_EXCEEDNUMBEROFATTEMPTS 54U /* 0x36 */
#endif /* DCM_E_EXCEEDNUMBEROFATTEMPTS */

#ifndef DCM_E_REQUIREDTIMEDELAYNOTEXPIRED
#define DCM_E_REQUIREDTIMEDELAYNOTEXPIRED 55U /* 0x37 */
#endif /* DCM_E_REQUIREDTIMEDELAYNOTEXPIRED */

#ifndef DCM_E_UPLOADDOWNLOADNOTACCEPTED
#define DCM_E_UPLOADDOWNLOADNOTACCEPTED 112U /* 0x70 */
#endif /* DCM_E_UPLOADDOWNLOADNOTACCEPTED */

#ifndef DCM_E_TRANSFERDATASUSPENDED
#define DCM_E_TRANSFERDATASUSPENDED 113U /* 0x71 */
#endif /* DCM_E_TRANSFERDATASUSPENDED */

#ifndef DCM_E_GENERALPROGRAMMINGFAILURE
#define DCM_E_GENERALPROGRAMMINGFAILURE 114U /* 0x72 */
#endif /* DCM_E_GENERALPROGRAMMINGFAILURE */

#ifndef DCM_E_WRONGBLOCKSEQUENCECOUNTER
#define DCM_E_WRONGBLOCKSEQUENCECOUNTER 115U /* 0x73 */
#endif /* DCM_E_WRONGBLOCKSEQUENCECOUNTER */

#ifndef DCM_E_SUBFUNCTIONNOTSUPPORTEDINACTIVESESSION
#define DCM_E_SUBFUNCTIONNOTSUPPORTEDINACTIVESESSION 126U /* 0x7e */
#endif /* DCM_E_SUBFUNCTIONNOTSUPPORTEDINACTIVESESSION */

#ifndef DCM_E_SERVICENOTSUPPORTEDINACTIVESESSION
#define DCM_E_SERVICENOTSUPPORTEDINACTIVESESSION 127U /* 0x7f */
#endif /* DCM_E_SERVICENOTSUPPORTEDINACTIVESESSION */

#ifndef DCM_E_RPMTOOHIGH
#define DCM_E_RPMTOOHIGH 129U /* 0x81 */
#endif /* DCM_E_RPMTOOHIGH */

#ifndef DCM_E_RPMTOOLOW
#define DCM_E_RPMTOOLOW 130U /* 0x82 */
#endif /* DCM_E_RPMTOOLOW */

#ifndef DCM_E_ENGINEISRUNNING
#define DCM_E_ENGINEISRUNNING 131U /* 0x83 */
#endif /* DCM_E_ENGINEISRUNNING */

#ifndef DCM_E_ENGINEISNOTRUNNING
#define DCM_E_ENGINEISNOTRUNNING 132U /* 0x84 */
#endif /* DCM_E_ENGINEISNOTRUNNING */

#ifndef DCM_E_ENGINERUNTIMETOOLOW
#define DCM_E_ENGINERUNTIMETOOLOW 133U /* 0x85 */
#endif /* DCM_E_ENGINERUNTIMETOOLOW */

#ifndef DCM_E_TEMPERATURETOOHIGH
#define DCM_E_TEMPERATURETOOHIGH 134U /* 0x86 */
#endif /* DCM_E_TEMPERATURETOOHIGH */

#ifndef DCM_E_TEMPERATURETOOLOW
#define DCM_E_TEMPERATURETOOLOW 135U /* 0x87 */
#endif /* DCM_E_TEMPERATURETOOLOW */

#ifndef DCM_E_VEHICLESPEEDTOOHIGH
#define DCM_E_VEHICLESPEEDTOOHIGH 136U /* 0x88 */
#endif /* DCM_E_VEHICLESPEEDTOOHIGH */

#ifndef DCM_E_VEHICLESPEEDTOOLOW
#define DCM_E_VEHICLESPEEDTOOLOW 137U /* 0x89 */
#endif /* DCM_E_VEHICLESPEEDTOOLOW */

#ifndef DCM_E_THROTTLE_PEDALTOOHIGH
#define DCM_E_THROTTLE_PEDALTOOHIGH 138U /* 0x8a */
#endif /* DCM_E_THROTTLE_PEDALTOOHIGH */

#ifndef DCM_E_THROTTLE_PEDALTOOLOW
#define DCM_E_THROTTLE_PEDALTOOLOW 139U /* 0x8b */
#endif /* DCM_E_THROTTLE_PEDALTOOLOW */

#ifndef DCM_E_TRANSMISSIONRANGENOTINNEUTRAL
#define DCM_E_TRANSMISSIONRANGENOTINNEUTRAL 140U /* 0x8c */
#endif /* DCM_E_TRANSMISSIONRANGENOTINNEUTRAL */

#ifndef DCM_E_TRANSMISSIONRANGENOTINGEAR
#define DCM_E_TRANSMISSIONRANGENOTINGEAR 141U /* 0x8d */
#endif /* DCM_E_TRANSMISSIONRANGENOTINGEAR */

#ifndef DCM_E_BRAKESWITCH_NOTCLOSED
#define DCM_E_BRAKESWITCH_NOTCLOSED 143U /* 0x8f */
#endif /* DCM_E_BRAKESWITCH_NOTCLOSED */

#ifndef DCM_E_SHIFTERLEVERNOTINPARK
#define DCM_E_SHIFTERLEVERNOTINPARK 144U /* 0x90 */
#endif /* DCM_E_SHIFTERLEVERNOTINPARK */

#ifndef DCM_E_TORQUECONVERTERCLUTCHLOCKED
#define DCM_E_TORQUECONVERTERCLUTCHLOCKED 145U /* 0x91 */
#endif /* DCM_E_TORQUECONVERTERCLUTCHLOCKED */

#ifndef DCM_E_VOLTAGETOOHIGH
#define DCM_E_VOLTAGETOOHIGH 146U /* 0x92 */
#endif /* DCM_E_VOLTAGETOOHIGH */

#ifndef DCM_E_VOLTAGETOOLOW
#define DCM_E_VOLTAGETOOLOW 147U /* 0x93 */
#endif /* DCM_E_VOLTAGETOOLOW */

#ifndef DCM_E_VMSCNC_0
#define DCM_E_VMSCNC_0 240U /* 0xf0 */
#endif /* DCM_E_VMSCNC_0 */

#ifndef DCM_E_VMSCNC_1
#define DCM_E_VMSCNC_1 241U /* 0xf1 */
#endif /* DCM_E_VMSCNC_1 */

#ifndef DCM_E_VMSCNC_2
#define DCM_E_VMSCNC_2 242U /* 0xf2 */
#endif /* DCM_E_VMSCNC_2 */

#ifndef DCM_E_VMSCNC_3
#define DCM_E_VMSCNC_3 243U /* 0xf3 */
#endif /* DCM_E_VMSCNC_3 */

#ifndef DCM_E_VMSCNC_4
#define DCM_E_VMSCNC_4 244U /* 0xf4 */
#endif /* DCM_E_VMSCNC_4 */

#ifndef DCM_E_VMSCNC_5
#define DCM_E_VMSCNC_5 245U /* 0xf5 */
#endif /* DCM_E_VMSCNC_5 */

#ifndef DCM_E_VMSCNC_6
#define DCM_E_VMSCNC_6 246U /* 0xf6 */
#endif /* DCM_E_VMSCNC_6 */

#ifndef DCM_E_VMSCNC_7
#define DCM_E_VMSCNC_7 247U /* 0xf7 */
#endif /* DCM_E_VMSCNC_7 */

#ifndef DCM_E_VMSCNC_8
#define DCM_E_VMSCNC_8 248U /* 0xf8 */
#endif /* DCM_E_VMSCNC_8 */

#ifndef DCM_E_VMSCNC_9
#define DCM_E_VMSCNC_9 249U /* 0xf9 */
#endif /* DCM_E_VMSCNC_9 */

#ifndef DCM_E_VMSCNC_A
#define DCM_E_VMSCNC_A 250U /* 0xfa */
#endif /* DCM_E_VMSCNC_A */

#ifndef DCM_E_VMSCNC_B
#define DCM_E_VMSCNC_B 251U /* 0xfb */
#endif /* DCM_E_VMSCNC_B */

#ifndef DCM_E_VMSCNC_C
#define DCM_E_VMSCNC_C 252U /* 0xfc */
#endif /* DCM_E_VMSCNC_C */

#ifndef DCM_E_VMSCNC_D
#define DCM_E_VMSCNC_D 253U /* 0xfd */
#endif /* DCM_E_VMSCNC_D */

#ifndef DCM_E_VMSCNC_E
#define DCM_E_VMSCNC_E 254U /* 0xfe */
#endif /* DCM_E_VMSCNC_E */

#ifndef DCM_INITIAL
#define DCM_INITIAL 0U /* 0x00 */
#endif /* DCM_INITIAL */

#ifndef DCM_PENDING
#define DCM_PENDING 1U /* 0x01 */
#endif /* DCM_PENDING */

#ifndef DCM_CANCEL
#define DCM_CANCEL 2U /* 0x02 */
#endif /* DCM_CANCEL */

#ifndef DCM_FORCE_RCRRP_OK
#define DCM_FORCE_RCRRP_OK 3U /* 0x03 */
#endif /* DCM_FORCE_RCRRP_OK */

#ifndef DCM_OBD_ON_CAN
#define DCM_OBD_ON_CAN 0U /* 0x00 */
#endif /* DCM_OBD_ON_CAN */

#ifndef DCM_OBD_ON_FLEXRAY
#define DCM_OBD_ON_FLEXRAY 1U /* 0x01 */
#endif /* DCM_OBD_ON_FLEXRAY */

#ifndef DCM_OBD_ON_IP
#define DCM_OBD_ON_IP 2U /* 0x02 */
#endif /* DCM_OBD_ON_IP */

#ifndef DCM_UDS_ON_CAN
#define DCM_UDS_ON_CAN 3U /* 0x03 */
#endif /* DCM_UDS_ON_CAN */

#ifndef DCM_UDS_ON_FLEXRAY
#define DCM_UDS_ON_FLEXRAY 4U /* 0x04 */
#endif /* DCM_UDS_ON_FLEXRAY */

#ifndef DCM_UDS_ON_IP
#define DCM_UDS_ON_IP 5U /* 0x05 */
#endif /* DCM_UDS_ON_IP */

#ifndef DCM_ROE_ON_CAN
#define DCM_ROE_ON_CAN 6U /* 0x06 */
#endif /* DCM_ROE_ON_CAN */

#ifndef DCM_ROE_ON_FLEXRAY
#define DCM_ROE_ON_FLEXRAY 7U /* 0x07 */
#endif /* DCM_ROE_ON_FLEXRAY */

#ifndef DCM_ROE_ON_IP
#define DCM_ROE_ON_IP 8U /* 0x08 */
#endif /* DCM_ROE_ON_IP */

#ifndef DCM_PERIODICTRANS_ON_CAN
#define DCM_PERIODICTRANS_ON_CAN 9U /* 0x09 */
#endif /* DCM_PERIODICTRANS_ON_CAN */

#ifndef DCM_PERIODICTRANS_ON_FLEXRAY
#define DCM_PERIODICTRANS_ON_FLEXRAY 10U /* 0x0a */
#endif /* DCM_PERIODICTRANS_ON_FLEXRAY */

#ifndef DCM_PERIODICTRANS_ON_IP
#define DCM_PERIODICTRANS_ON_IP 11U /* 0x0b */
#endif /* DCM_PERIODICTRANS_ON_IP */

#ifndef DCM_NO_ACTIVE_PROTOCOL
#define DCM_NO_ACTIVE_PROTOCOL 12U /* 0x0c */
#endif /* DCM_NO_ACTIVE_PROTOCOL */

#ifndef DCM_SUPPLIER_1
#define DCM_SUPPLIER_1 240U /* 0xf0 */
#endif /* DCM_SUPPLIER_1 */

#ifndef DCM_SUPPLIER_2
#define DCM_SUPPLIER_2 241U /* 0xf1 */
#endif /* DCM_SUPPLIER_2 */

#ifndef DCM_SUPPLIER_3
#define DCM_SUPPLIER_3 242U /* 0xf2 */
#endif /* DCM_SUPPLIER_3 */

#ifndef DCM_SUPPLIER_4
#define DCM_SUPPLIER_4 243U /* 0xf3 */
#endif /* DCM_SUPPLIER_4 */

#ifndef DCM_SUPPLIER_5
#define DCM_SUPPLIER_5 244U /* 0xf4 */
#endif /* DCM_SUPPLIER_5 */

#ifndef DCM_SUPPLIER_6
#define DCM_SUPPLIER_6 245U /* 0xf5 */
#endif /* DCM_SUPPLIER_6 */

#ifndef DCM_SUPPLIER_7
#define DCM_SUPPLIER_7 246U /* 0xf6 */
#endif /* DCM_SUPPLIER_7 */

#ifndef DCM_SUPPLIER_8
#define DCM_SUPPLIER_8 247U /* 0xf7 */
#endif /* DCM_SUPPLIER_8 */

#ifndef DCM_SUPPLIER_9
#define DCM_SUPPLIER_9 248U /* 0xf8 */
#endif /* DCM_SUPPLIER_9 */

#ifndef DCM_SUPPLIER_10
#define DCM_SUPPLIER_10 249U /* 0xf9 */
#endif /* DCM_SUPPLIER_10 */

#ifndef DCM_SUPPLIER_11
#define DCM_SUPPLIER_11 250U /* 0xfa */
#endif /* DCM_SUPPLIER_11 */

#ifndef DCM_SUPPLIER_12
#define DCM_SUPPLIER_12 251U /* 0xfb */
#endif /* DCM_SUPPLIER_12 */

#ifndef DCM_SUPPLIER_13
#define DCM_SUPPLIER_13 252U /* 0xfc */
#endif /* DCM_SUPPLIER_13 */

#ifndef DCM_SUPPLIER_14
#define DCM_SUPPLIER_14 253U /* 0xfd */
#endif /* DCM_SUPPLIER_14 */

#ifndef DCM_SUPPLIER_15
#define DCM_SUPPLIER_15 254U /* 0xfe */
#endif /* DCM_SUPPLIER_15 */

#ifndef DCM_ROE_ACTIVE
#define DCM_ROE_ACTIVE 0U /* 0x00 */
#endif /* DCM_ROE_ACTIVE */

#ifndef DCM_ROE_UNACTIVE
#define DCM_ROE_UNACTIVE 1U /* 0x01 */
#endif /* DCM_ROE_UNACTIVE */

#ifndef DCM_SEC_LEV_LOCKED
#define DCM_SEC_LEV_LOCKED 0U /* 0x00 */
#endif /* DCM_SEC_LEV_LOCKED */

#ifndef SecurityLevel1
#define SecurityLevel1 1U /* 0x01 */
#endif /* SecurityLevel1 */

#ifndef DCM_DEFAULT_SESSION
#define DCM_DEFAULT_SESSION 1U /* 0x01 */
#endif /* DCM_DEFAULT_SESSION */

#ifndef DCM_PROGRAMMING_SESSION
#define DCM_PROGRAMMING_SESSION 2U /* 0x02 */
#endif /* DCM_PROGRAMMING_SESSION */

#ifndef DCM_EXTENDED_DIAGNOSTIC_SESSION
#define DCM_EXTENDED_DIAGNOSTIC_SESSION 3U /* 0x03 */
#endif /* DCM_EXTENDED_DIAGNOSTIC_SESSION */


/* Limits of Range Data Types  -----------------------------------------------*/
#ifndef RTE_CORE

#endif /* RTE_CORE */

#ifdef __cplusplus
} /* extern "C" */
#endif /* __cplusplus */

#endif /* RTE_DCM_TYPE_H */
