/**\file
 *
 * \brief Generated Source File for Dcm
 *
 * This file contains the implementation of the post-build configuration.
 *
 * \b Application:        Dcm \n
 * \b Target:             see Dcm.h for details \n
 * \b Compiler:           see Dcm.h for details \n
 * \b Autosar-Vendor-ID:  31 \n
 *
 * \b Module:             Dcm_PBcfg.c \n
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
/*****************************************************************************/
/* Included standard header files                                            */
/*****************************************************************************/
/*****************************************************************************/
/* Included other header files                                               */
/*****************************************************************************/
#include "Rte_Dcm.h"
#include "Dcm_Int.h"
#include "PduR_Dcm.h"

/*****************************************************************************/
/* Private macros                                                            */
/*****************************************************************************/
/* Version controls for all Dcm header files. */
#define EXPECTED_SW_MAJOR_VERSION (8U)
#define EXPECTED_SW_MINOR_VERSION (0U)
#define EXPECTED_SW_PATCH_VERSION (1U)

#if ( (DCM_INT_SW_MAJOR_VERSION != EXPECTED_SW_MAJOR_VERSION) || \
      (DCM_INT_SW_MINOR_VERSION != EXPECTED_SW_MINOR_VERSION) || \
      (DCM_INT_SW_PATCH_VERSION != EXPECTED_SW_PATCH_VERSION) )
   #error "The software version of the Dcm_Int.h file does not match the expected version."
#endif

#if ( (DCM_CFG_SW_MAJOR_VERSION != EXPECTED_SW_MAJOR_VERSION) || \
      (DCM_CFG_SW_MINOR_VERSION != EXPECTED_SW_MINOR_VERSION) || \
      (DCM_CFG_SW_PATCH_VERSION != EXPECTED_SW_PATCH_VERSION) )
   #error "The software version of the Dcm_Cfg.h file does not match the expected version."
#endif

#if ( (DCM_PBCFG_SW_MAJOR_VERSION != EXPECTED_SW_MAJOR_VERSION) || \
      (DCM_PBCFG_SW_MINOR_VERSION != EXPECTED_SW_MINOR_VERSION) || \
      (DCM_PBCFG_SW_PATCH_VERSION != EXPECTED_SW_PATCH_VERSION) )
   #error "The software version of the Dcm_PBcfg.h file does not match the expected version."
#endif

#if ( (DCM_SW_MAJOR_VERSION != EXPECTED_SW_MAJOR_VERSION) || \
      (DCM_SW_MINOR_VERSION != EXPECTED_SW_MINOR_VERSION) || \
      (DCM_SW_PATCH_VERSION != EXPECTED_SW_PATCH_VERSION) )
   #error "The software version of the Dcm.h file does not match the expected version."
#endif

#if ( (DCM_TYPES_SW_MAJOR_VERSION != EXPECTED_SW_MAJOR_VERSION) || \
      (DCM_TYPES_SW_MINOR_VERSION != EXPECTED_SW_MINOR_VERSION) || \
      (DCM_TYPES_SW_PATCH_VERSION != EXPECTED_SW_PATCH_VERSION) )
   #error "The software version of the Dcm_Types.h file does not match the expected version."
#endif

#if (STD_ON == DCM_VERSION_CHECK_FOREIGN_MODULE)
   #if ( (PDUR_AR_RELEASE_MAJOR_VERSION != DCM_AR_RELEASE_MAJOR_VERSION) || \
         (PDUR_AR_RELEASE_MINOR_VERSION != DCM_AR_RELEASE_MINOR_VERSION) )
      #error "The AUTOSAR release version of the PduR module does not match the expected version."
   #endif
#endif

/*****************************************************************************/
/* Private constants & variables                                             */
/*****************************************************************************/

#define DCM_START_SEC_POSTBUILD_VAR_NO_INIT_8
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

static VAR(uint8, DCM_VAR)   dcmCfgBuffer_0[256]; /* DcmDslBuffer */
static VAR(uint8, DCM_VAR)   dcmCfgBuffer_1[3]; /* 2nd request buffer (DcmDslBuffer) */

#define DCM_STOP_SEC_POSTBUILD_VAR_NO_INIT_8
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_POSTBUILD_VAR_NO_INIT_UNSPECIFIED
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

static VAR(Dcm_Cfg_BufferStatusType, DCM_VAR) dcmCfgBufferStatus[2];

static VAR(PduInfoType, DCM_VAR)  dcmCfgBufferPduInfo[2];

#define DCM_STOP_SEC_POSTBUILD_VAR_NO_INIT_UNSPECIFIED
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_POSTBUILD_VAR_NO_INIT_BOOLEAN
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

static VAR(boolean, DCM_VAR) dcmCfgTxChannelBusy[1];

#define DCM_STOP_SEC_POSTBUILD_VAR_NO_INIT_BOOLEAN
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_POSTBUILD_VAR_NO_INIT_UNSPECIFIED
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

static VAR(Dcm_Cfg_ChannelStateType, DCM_VAR) dcmCfgChannelState[2];

static VAR(Dcm_Cfg_ChannelCommModeType, DCM_VAR) dcmCfgChannelCommMode[1];

static VAR(Dcm_Cfg_RxChannelPointerType, DCM_VAR) dcmCfgRxChannelPointers[1];

static VAR(Dcm_Cfg_BufferPointerType, DCM_VAR) dcmCfgActiveTxBufferPointers[1];

#define DCM_STOP_SEC_POSTBUILD_VAR_NO_INIT_UNSPECIFIED
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CALIB_8
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

static CONST(uint8, DCM_CONST) dcmCfgServiceSupport_0[8] =
{
   0x00, 0x00, 0x11, 0x02, 0x84, 0x40, 0x00, 0x40
};


#define DCM_STOP_SEC_CALIB_8
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_POSTBUILD_CONST_32
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

static CONST(uint32, DCM_CONST) PBtoPCHashValue = 0x818FE5D2UL; /* Post build to pre-compile hash value */
static CONST(uint32, DCM_CONST) PBtoLTHashValue = 0xE70E3BF5UL; /* Post build to link time hash value */

#define DCM_STOP_SEC_POSTBUILD_CONST_32
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_POSTBUILD_CONST_UNSPECIFIED
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

static CONST(Dcm_Cfg_BufferType, DCM_CONST) dcmCfgBuffers[2] =
{
   {
      /* SHORT-NAME: DcmDslBuffer */
      0, /* identifier */
      256, /* size */
      dcmCfgBuffer_0, /* ptr */
      &dcmCfgBufferStatus[0], /* p_status */
      &dcmCfgBufferPduInfo[0] /* pdu_info */
   },
   {
      /* SHORT-NAME: 2nd request buffer (DcmDslBuffer) */
      1, /* identifier */
      256, /* size */
      dcmCfgBuffer_1, /* ptr */
      &dcmCfgBufferStatus[1], /* p_status */
      &dcmCfgBufferPduInfo[1] /* pdu_info */
   }
};


static CONST(Dcm_Cfg_ProtocolType, DCM_CONST) dcmCfgProtocols[1] =
{
   {
      /*SHORT-NAME: DcmDslProtocolRow */
      DCM_UDS_ON_CAN, /* Identifier */
      0, /* Priority */
      0, /* SID Table ID */
      TRUE, /* If NRC 0x78 shall be sent before transition to boot */
      50, /* Preempt Timeout */
      0, /* P2 Server adjustment */
      0 /* P2 Star Server adjustment */
   }
};

static CONST(Dcm_Cfg_TxChannelType, DCM_CONST) dcmCfgTxChannels[1] =
{
   {
      /* SHORT-NAME: DcmDslProtocolTx */
      0,    /* PduRConf_PduRSrcPdu_PduRSrcPdu_UDS_Tx */
      DcmConf_DcmDslProtocolTx_DcmDslProtocolTx,    /* conf_pdu_id */
      &dcmCfgBuffers[0],    /* p_buffer */
      &dcmCfgActiveTxBufferPointers[0], /* pp_active_buffer */
      &dcmCfgRxChannelPointers[0], /* pp_rx_channel */
      &dcmCfgTxChannelBusy[0] /* p_busy */
   }
};

static CONST(Dcm_Cfg_RxChannelType, DCM_CONST) dcmCfgRxChannels[2] =
{
   {
      /* SHORT-NAME: DcmDslProtocolRx_Func */
      DcmConf_DcmDslProtocolRx_DcmDslProtocolRx_Func, /* pdu_id */
      0, /* NetworkId (ComMConf_ComMChannel_CanCluster)*/
      0x0000U, /* tester_source_addr */
      0, /* roe_pdu_id (no ROE connected) */
      FALSE, /* is_roe */
      &dcmCfgBuffers[0], /* p_buffer */
      &dcmCfgBuffers[1], /* p_2ndReqBuffer */
      &dcmCfgProtocols[0], /* p_protocol (DcmDslProtocolRow) */
      &dcmCfgTxChannels[0], /* p_txchannel (DcmDslProtocolTx) */
      DCM_FUNCTIONAL_TYPE, /* AdressType */
      &dcmCfgChannelState[0], /* pdcmCfgChannelState */
      &dcmCfgChannelCommMode[0], /* p_commMode */
      NULL_PTR /* p_periodic */
   },
   {
      /* SHORT-NAME: DcmDslProtocolRx_Phys */
      DcmConf_DcmDslProtocolRx_DcmDslProtocolRx_Phys, /* pdu_id */
      0, /* NetworkId (ComMConf_ComMChannel_CanCluster)*/
      0x0000U, /* tester_source_addr */
      0, /* roe_pdu_id (no ROE connected) */
      FALSE, /* is_roe */
      &dcmCfgBuffers[0], /* p_buffer */
      &dcmCfgBuffers[1], /* p_2ndReqBuffer */
      &dcmCfgProtocols[0], /* p_protocol (DcmDslProtocolRow) */
      &dcmCfgTxChannels[0], /* p_txchannel (DcmDslProtocolTx) */
      DCM_PHYSICAL_TYPE, /* AdressType */
      &dcmCfgChannelState[1], /* pdcmCfgChannelState */
      &dcmCfgChannelCommMode[0], /* p_commMode */
      NULL_PTR /* p_periodic */
   }
};

static CONST(Dcm_Cfg_ServiceTableSupport, DCM_CONST) dcmCfgServiceSupportTable[1] =
{
   {0, &dcmCfgServiceSupport_0[0]}
};


/*****************************************************************************/
/* Public constants & variables                                              */
/*****************************************************************************/
CONST(Dcm_ConfigType, DCM_CONST) DcmConfigSet =
{
   (PduIdType)1U, /* first_periodic_tx_confirmation_id_value (no periodic channels configured) */
   (PduIdType)1U, /* first_roe_tx_confirmation_id_value (no ROE channels configured) */
   (PduIdType)1U, /* first_invalid_tx_confirmation_id_value */
   2, /* num_rx_channels */
   &dcmCfgRxChannels[0], /* p_rx_channels */
   &dcmCfgTxChannels[0], /* p_tx_channels */
   NULL_PTR, /* p_periodic_tx_lookup_table */
   10, /* MaxNumResponsePending */
   NULL_PTR, /* Supported Pids for Service 01 */
   NULL_PTR, /* Supported Pids for Service 02 */
   NULL_PTR, /* p_req_ctrl_support */
   NULL_PTR, /* p_vehicle_info_type_support */
   &dcmCfgServiceSupportTable[0], /* Supported services */
   &PBtoPCHashValue, /* Pointer to the pre-compile CRC32 hash value */
   &PBtoLTHashValue /* Pointer to the link time CRC32 hash value */
};


#define DCM_STOP_SEC_POSTBUILD_CONST_UNSPECIFIED
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

