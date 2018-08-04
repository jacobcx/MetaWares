/**\file
 *
 * \brief Generated Source File for Dcm
 *
 * This file contains the implementation of the link time configuration.
 *
 * \b Application:        Dcm \n
 * \b Target:             see Dcm.h for details \n
 * \b Compiler:           see Dcm.h for details \n
 * \b Autosar-Vendor-ID:  31 \n
 *
 * \b Module:             Dcm_Lcfg.c \n
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
#include "SchM_Dcm.h"
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

#if ( (DCM_LCFG_SW_MAJOR_VERSION != EXPECTED_SW_MAJOR_VERSION) || \
      (DCM_LCFG_SW_MINOR_VERSION != EXPECTED_SW_MINOR_VERSION) || \
      (DCM_LCFG_SW_PATCH_VERSION != EXPECTED_SW_PATCH_VERSION) )
   #error "The software version of the Dcm_Lcfg.h file does not match the expected version."
#endif

#if ( (DCM_LCFG_TYPES_SW_MAJOR_VERSION != EXPECTED_SW_MAJOR_VERSION) || \
      (DCM_LCFG_TYPES_SW_MINOR_VERSION != EXPECTED_SW_MINOR_VERSION) || \
      (DCM_LCFG_TYPES_SW_PATCH_VERSION != EXPECTED_SW_PATCH_VERSION) )
   #error "The software version of the Dcm_LCfg_Types.h file does not match the expected version."
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

#if (STD_ON == DCM_VERSION_CHECK_FOREIGN_MODULE)
   #if ( (SCHM_AR_RELEASE_MAJOR_VERSION != DCM_AR_RELEASE_MAJOR_VERSION) || \
         (SCHM_AR_RELEASE_MINOR_VERSION != DCM_AR_RELEASE_MINOR_VERSION) )
      #error "The AUTOSAR release version of the SchM module does not match the expected version."
   #endif
#endif

/*****************************************************************************/
/* Private function prototypes                                               */
/*****************************************************************************/

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */


static FUNC(Std_ReturnType, DCM_APPL_CODE) DcmDspDataRead0xF186_ReadDataWrapper(Dcm_OpStatusType OpStatus, P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data);
static FUNC(Std_ReturnType, DCM_APPL_CODE) DcmDspData_ReadDataWrapper(Dcm_OpStatusType OpStatus, P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data);

static FUNC(Std_ReturnType, DCM_APPL_CODE) DcmDspData_WriteDataWrapper(P2CONST(uint8, AUTOMATIC, DCM_APPL_DATA) Data, uint16 DataLength, Dcm_OpStatusType OpStatus, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) ErrorCode);
static FUNC(Std_ReturnType, DCM_APPL_CODE) SecurityAccess_DcmDspSecurityRow_GetSeed(P2CONST(uint8, AUTOMATIC, DCM_APPL_DATA) SecurityAccessDataRecord, 
                                                                                  Dcm_OpStatusType OpStatus,
                                                                                  P2VAR(uint8, AUTOMATIC, DCM_APPL_DATA) Seed,
                                                                                  P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, RTE_APPL_DATA) ErrorCode );


#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

/*****************************************************************************/
/* Private constants & variables                                             */
/*****************************************************************************/
#define DCM_START_SEC_CONST_8
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

CONST(uint8, DCM_CONST) Dcm_ResponseOnEvent_EVENT_STARTED = (uint8)0U;

CONST(uint8, DCM_CONST) Dcm_ResponseOnEvent_EVENT_STOPPED = (uint8)0U;

CONST(uint8, DCM_CONST) Dcm_ResponseOnEvent_EVENT_CLEARED = (uint8)0U;

#define DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_VAR_NO_INIT_UNSPECIFIED
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

static VAR(Dcm_Cfg_RequestedDidInfoType, DCM_VAR) requestedDids[10];

/**
 * \brief Type for the data used by the schedulable entity functions for services.
 */
typedef struct
{
   P2VAR(Dcm_MsgContextType, AUTOMATIC, DCM_APPL_DATA) p_msg_context; /**< Data pointer to be sent to the service handler function. */
   boolean service_fct_active; /**< States it the service handler function is executing or not. */
   Dcm_OpStatusType op_status; /**< OpStatus to be sent to the service handler function. */
} ServiceFunctionDataType;

/**
 * \brief Data used by the schedulable entity functions for services.
 */
static VAR(ServiceFunctionDataType, DCM_VAR) ServiceFunctionData;

#define DCM_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CONST_8
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

static CONST(uint8, DCM_CONST) dcmCfgSessionLevels[2][3] =
{
   { 0x02U, 0x01U, 0x03U},
   { 0x01U, 0x03U, 0x00U}
};

#define DCM_STOP_SEC_CONST_8
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

static CONST(Dcm_Cfg_SessionType, DCM_CONST) dcmCfgSessions[3] =
{
   {
      /* SHORT-NAME: DEFAULT_SESSION */
      0x01U, /* Session level */
      5, /* p2_server_max */
      500, /* p2_star_server_max */
      50, /* client_p2_server_max */
      500, /* client_p2_star_server_max */
      DCM_NO_BOOT /* jump to bootloaer */
   },
   {
      /* SHORT-NAME: PROGRAMMING_SESSION */
      0x02U, /* Session level */
      5, /* p2_server_max */
      500, /* p2_star_server_max */
      50, /* client_p2_server_max */
      500, /* client_p2_star_server_max */
      DCM_NO_BOOT /* jump to bootloaer */
   },
   {
      /* SHORT-NAME: EXTENDED_DIAGNOSTIC_SESSION */
      0x03U, /* Session level */
      5, /* p2_server_max */
      500, /* p2_star_server_max */
      50, /* client_p2_server_max */
      500, /* client_p2_star_server_max */
      DCM_NO_BOOT /* jump to bootloaer */
   }
};


static CONST(Dcm_Cfg_SecurityType, DCM_CONST) dcmCfgSecurities[1] =
{
   {
      /* SHORT-NAME: DcmDspSecurityRow */
      0x01U, /* Level */
      &SecurityAccess_DcmDspSecurityRow_GetSeed, /* GetSeed */ /* KW STRONG.TYPE.ASSIGN.INIT */
      &Rte_Call_SecurityAccess_DcmDspSecurityRow_CompareKey, /* CompareKey */ /* KW STRONG.TYPE.ASSIGN.INIT */
      5, /* NumMaxAttDelay */
      1000, /* DelayInvKey */
      2, /* NumSeed */
      2, /* NumKey */
      0 /* ADRSize */
   }
};


static CONST(Dcm_Cfg_DidReadType, DCM_CONST) dcmCfgReadDids[2] =
{
   {
      /* 0x2345 */
      NULL_PTR, /* ConditionCheckRead */ /* KW STRONG.TYPE.ASSIGN.INIT */
      NULL_PTR, /* ReadDataLength */ /* KW STRONG.TYPE.ASSIGN.INIT */
      &DcmDspData_ReadDataWrapper, /* ReadData */ /* KW STRONG.TYPE.ASSIGN.INIT */
      NULL_PTR, /* Security level vector */
      dcmCfgSessionLevels[0], /* Session level vector */
      NULL_PTR /* modeRuleFnc */
   },
   {
      /* 0xF186 */
      NULL_PTR, /* ConditionCheckRead */
      NULL_PTR, /* ReadDataLength */
      &DcmDspDataRead0xF186_ReadDataWrapper, /* ReadData */
      NULL_PTR, /* Security level vector */
      NULL_PTR, /* Session level vector */
      NULL_PTR /* modeRuleFnc */
   }

};

static CONST(Dcm_Cfg_DidWriteType, DCM_CONST) dcmCfgWriteDids[1] =
{
   {
      /* 0x2345 */
      &DcmDspData_WriteDataWrapper, /* WriteData */ /* KW STRONG.TYPE.ASSIGN.INIT */
      NULL_PTR, /* Security level vector */
      dcmCfgSessionLevels[0], /* Session level vector */
      NULL_PTR /* modeRuleFnc */
   }
};


static CONST(Dcm_Cfg_DidType, DCM_CONST) dcmCfgDids[2] =
{
   {
      /* SHORT-NAME: ActiveDiagnosticSessionDataIdentifier */
      0xF186U, /* identifier */
      1, /* size */
      0, /* scaling info size */
      NULL_PTR, /* DID Write */
      &dcmCfgReadDids[1], /* DID Read */
      NULL_PTR, /* DID Control */
      NULL_PTR, /* GetScalingInformation */
      E_OK /* Support SYNC calls only */
   },
   {
      /* SHORT-NAME: DcmDspDid_0x2345 */
      0x2345U, /* identifier */
      1, /* size */
      0, /* scaling info size */
      &dcmCfgWriteDids[0], /* DID Write */
      &dcmCfgReadDids[0], /* DID Read */
      NULL_PTR, /* DID Control */
      NULL_PTR, /* GetScalingInformation */ /* KW STRONG.TYPE.ASSIGN.INIT */
      E_OK, /* Support SYNC calls only */
      TRUE /* Fixed length */
   }
};

/* SHORT-NAME: DcmDsdService_0x10  SubServices */
static CONST(Dcm_Cfg_SubServiceType, DCM_CONST) dcmCfgSubService_0_0x10[3] =
{
   {
      /* SHORT-NAME: DcmDsdSubService_DefaultSession */
      0x01U, /* Id */
      NULL_PTR, /* pSecurityLevels */
      NULL_PTR, /* pSessionLevels */
      NULL_PTR, /* ModeRuleFnc */
      NULL_PTR /* SubServiceFnc */
   },
   {
      /* SHORT-NAME: DcmDsdSubService_ProgrammingSession */
      0x02U, /* Id */
      NULL_PTR, /* pSecurityLevels */
      NULL_PTR, /* pSessionLevels */
      NULL_PTR, /* ModeRuleFnc */
      NULL_PTR /* SubServiceFnc */
   },
   {
      /* SHORT-NAME: DcmDsdSubService_ExtendedSession */
      0x03U, /* Id */
      NULL_PTR, /* pSecurityLevels */
      NULL_PTR, /* pSessionLevels */
      NULL_PTR, /* ModeRuleFnc */
      NULL_PTR /* SubServiceFnc */
   }
};

/* SHORT-NAME: DcmDsdService_0x19  SubServices */
static CONST(Dcm_Cfg_SubServiceType, DCM_CONST) dcmCfgSubService_0_0x19[3] =
{
   {
      /* SHORT-NAME: DcmDsdSubService_0x02 */
      0x02U, /* Id */
      NULL_PTR, /* pSecurityLevels */
      NULL_PTR, /* pSessionLevels */
      NULL_PTR, /* ModeRuleFnc */
      NULL_PTR /* SubServiceFnc */
   },
   {
      /* SHORT-NAME: DcmDsdSubService_0x06 */
      0x06U, /* Id */
      NULL_PTR, /* pSecurityLevels */
      NULL_PTR, /* pSessionLevels */
      NULL_PTR, /* ModeRuleFnc */
      NULL_PTR /* SubServiceFnc */
   },
   {
      /* SHORT-NAME: DcmDsdSubService_0x13 */
      0x13U, /* Id */
      NULL_PTR, /* pSecurityLevels */
      NULL_PTR, /* pSessionLevels */
      NULL_PTR, /* ModeRuleFnc */
      NULL_PTR /* SubServiceFnc */
   }
};

/* SHORT-NAME: DcmDsdService_0x27  SubServices */
static CONST(Dcm_Cfg_SubServiceType, DCM_CONST) dcmCfgSubService_0_0x27[2] =
{
   {
      /* SHORT-NAME: DcmDsdSubService_SeedLevel0 */
      0x01U, /* Id */
      NULL_PTR, /* pSecurityLevels */
      dcmCfgSessionLevels[1], /* pSessionLevels */
      NULL_PTR, /* ModeRuleFnc */
      NULL_PTR /* SubServiceFnc */
   },
   {
      /* SHORT-NAME: DcmDsdSubService_KeyLevel0 */
      0x02U, /* Id */
      NULL_PTR, /* pSecurityLevels */
      dcmCfgSessionLevels[1], /* pSessionLevels */
      NULL_PTR, /* ModeRuleFnc */
      NULL_PTR /* SubServiceFnc */
   }
};

/* SHORT-NAME: DcmDsdService_0x3E  SubServices */
static CONST(Dcm_Cfg_SubServiceType, DCM_CONST) dcmCfgSubService_0_0x3E[1] =
{
   {
      /* SHORT-NAME: DcmDsdSubService */
      0x00U, /* Id */
      NULL_PTR, /* pSecurityLevels */
      NULL_PTR, /* pSessionLevels */
      NULL_PTR, /* ModeRuleFnc */
      NULL_PTR /* SubServiceFnc */
   }
};


/* SHORT-NAME: DcmDsdServiceTable */
static CONST(Dcm_Cfg_ServiceType, DCM_CONST) dcmCfgService_0[7] =
{
   {
      /* SHORT-NAME: DcmDsdService_0x10 */
      0x10U, /* Id */
      &SchM_ActMainFunction_Dcm_IntTrP_Dcm_DiagnosticSessionControl, /* Service trigger */
      TRUE, /* possible_suppress_bit */
      NULL_PTR, /* pSecurityLevels */
      dcmCfgSessionLevels[0], /* pSessionLevels */
      3, /* NumSubServices */
      &dcmCfgSubService_0_0x10[0], /* pSubServices */
      NULL_PTR /* modeRuleFnc */
   },
   {
      /* SHORT-NAME: DcmDsdService_0x14 */
      0x14U, /* Id */
      &SchM_ActMainFunction_Dcm_IntTrP_Dcm_ClearDiagnosticInformation, /* Service trigger */
      FALSE, /* possible_suppress_bit */
      NULL_PTR, /* pSecurityLevels */
      dcmCfgSessionLevels[0], /* pSessionLevels */
      0, /* NumSubServices */
      NULL_PTR, /* pSubServices */
      NULL_PTR /* modeRuleFnc */
   },
   {
      /* SHORT-NAME: DcmDsdService_0x19 */
      0x19U, /* Id */
      &SchM_ActMainFunction_Dcm_IntTrP_Dcm_ReadDTCInformation, /* Service trigger */
      TRUE, /* possible_suppress_bit */
      NULL_PTR, /* pSecurityLevels */
      dcmCfgSessionLevels[0], /* pSessionLevels */
      3, /* NumSubServices */
      &dcmCfgSubService_0_0x19[0], /* pSubServices */
      NULL_PTR /* modeRuleFnc */
   },
   {
      /* SHORT-NAME: DcmDsdService_0x22 */
      0x22U, /* Id */
      &SchM_ActMainFunction_Dcm_IntTrP_Dcm_ReadDataByIdentifier, /* Service trigger */
      FALSE, /* possible_suppress_bit */
      NULL_PTR, /* pSecurityLevels */
      dcmCfgSessionLevels[0], /* pSessionLevels */
      0, /* NumSubServices */
      NULL_PTR, /* pSubServices */
      NULL_PTR /* modeRuleFnc */
   },
   {
      /* SHORT-NAME: DcmDsdService_0x27 */
      0x27U, /* Id */
      &SchM_ActMainFunction_Dcm_IntTrP_Dcm_SecurityAccess, /* Service trigger */
      TRUE, /* possible_suppress_bit */
      NULL_PTR, /* pSecurityLevels */
      dcmCfgSessionLevels[1], /* pSessionLevels */
      2, /* NumSubServices */
      &dcmCfgSubService_0_0x27[0], /* pSubServices */
      NULL_PTR /* modeRuleFnc */
   },
   {
      /* SHORT-NAME: DcmDsdService_0x2E */
      0x2EU, /* Id */
      &SchM_ActMainFunction_Dcm_IntTrP_Dcm_WriteDataByIdentifier, /* Service trigger */
      FALSE, /* possible_suppress_bit */
      NULL_PTR, /* pSecurityLevels */
      dcmCfgSessionLevels[0], /* pSessionLevels */
      0, /* NumSubServices */
      NULL_PTR, /* pSubServices */
      NULL_PTR /* modeRuleFnc */
   },
   {
      /* SHORT-NAME: DcmDsdService_0x3E */
      0x3EU, /* Id */
      &SchM_ActMainFunction_Dcm_IntTrP_Dcm_TesterPresent, /* Service trigger */
      TRUE, /* possible_suppress_bit */
      NULL_PTR, /* pSecurityLevels */
      dcmCfgSessionLevels[0], /* pSessionLevels */
      1, /* NumSubServices */
      &dcmCfgSubService_0_0x3E[0], /* pSubServices */
      NULL_PTR /* modeRuleFnc */
   }
};


static CONST(Dcm_Cfg_ServiceTableType, DCM_CONST) dcmCfgServiceTables[1] =
{
   {
      /* DcmDsdServiceTable */
      0, /* Identifier */
      7, /* NumServices */
      dcmCfgService_0 /* pService */
   }
};

static CONST(Dcm_Cfg_DDidInitInfoType, DCM_CONST) DDidInitInfo =
{
   DDID_CLEAR_ALWAYS, /* DDIDs Init Policy */
   DDPRID_CLEAR_ALWAYS, /* DDPRIDs Init Policy */
   0, /* ddprid_nvm_hash_rom */
   NULL_PTR, /* p_ddprid_nvm_hash_ram */
};

CONST(Dcm_LinkTimeConfigType, DCM_CONST) Dcm_LCfg =
{
   0xFFFFU, /* maximum number of data records can be retrieved during on schedule. Default value is 0xffff. */
   DCM_E_UNCONNECTED, /* The Xxx_StartProtocol and Manufacturer/Supplier Indications functions do not need to be connected to a SW-C */
   0xFFU, /* Power down time, 0xFF => Not available */
   1000, /**< The minimum delay after boot before CompareKey will be accepted */
   500, /* S3Server */
   FALSE, /* resp_on_second_declined_request */
   {0, 0, 0}, /* periodic_transmission_rates: slow, medium and fast */
   0,  /* PagedBufferTimeout */
   NULL_PTR,   /* Response data */
   0,   /* size of dddid_sourceBuffer */
   NULL_PTR,   /* Store a portion of data of a DDDid */
   3,   /* num_sessions */
   &dcmCfgSessions[0],   /* sessions */
   1, /* num_securities */
   &dcmCfgSecurities[0],   /* securities */
   1, /* num_service_tables */
   &dcmCfgServiceTables[0],   /* service_tables */
   10, /* max_did_to_read */
   &requestedDids[0],   /* p_requested_dids */
   2, /* num_dids */
   &dcmCfgDids[0],   /* dids */
   0, /* num_periodic_dynamic_dids */
   NULL_PTR,   /* periodicDynamicDids */
   NULL_PTR, /* requested_periodicDids */
   TRUE, /* check_per_source_did */
   0, /* num_did_ranges */
   NULL_PTR, /* p_did_ranges */
   0, /* num_pids */
   NULL_PTR, /* p_pids */
   0, /* num_req_ctrl */
   NULL_PTR,   /* p_req_ctrl */
   NULL_PTR, /**< p_roe */
   0, /* num_vehicle_info */
   NULL_PTR,   /* p_vehicle_info */
   0, /* NumRoutineControl */
   NULL_PTR, /* RoutineCtrl */
   255, /* num_freezeframe_records */
   NULL_PTR, /* p_freezeframe_records */
   240, /* num_extendeddata_records */
   NULL_PTR, /* p_extendeddata_records */
   0, /* index_obdedr_start */
   0, /* num_cb_req_service */
   NULL_PTR, /* p_cb_req_services */
   NULL_PTR, /* p_write_memory */
   NULL_PTR, /* p_read_memory */
   NULL_PTR, /* p_software_download */
   NULL_PTR, /* p_routine_state */
   &DDidInitInfo, /* p_ddid_init_info */
   NULL_PTR, /* p_get_periodic_data_trigger */
   NULL_PTR /* p_transmit_periodic_data_trigger */
};
#define DCM_STOP_SEC_CONST_UNSPECIFIED
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define DCM_START_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

/*****************************************************************************/
/* Private function                                                          */
/*****************************************************************************/

static FUNC(Std_ReturnType, DCM_APPL_CODE)SecurityAccess_DcmDspSecurityRow_GetSeed(P2CONST(uint8, AUTOMATIC, DCM_APPL_DATA) SecurityAccessDataRecord, Dcm_OpStatusType OpStatus,
                                P2VAR(uint8, AUTOMATIC, DCM_APPL_DATA) Seed, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, RTE_APPL_DATA) ErrorCode )
{
   return Rte_Call_SecurityAccess_DcmDspSecurityRow_GetSeed(OpStatus, Seed, ErrorCode);
}

static FUNC(Std_ReturnType, DCM_APPL_CODE) DcmDspDataRead0xF186_ReadDataWrapper(Dcm_OpStatusType OpStatus, P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data)
{
   return Dcm_GetSesCtrlType(Data);
}

static FUNC(Std_ReturnType, DCM_APPL_CODE) DcmDspData_ReadDataWrapper(Dcm_OpStatusType OpStatus, P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data) /* KW MISRA.PPARAM.NEEDS.CONST METRICS.E.Cyclomatic_complexity__VG_ METRICS.E.Number_of_statements */
{
   return Read_DID_0x2345(Data);
}

static FUNC(Std_ReturnType, DCM_APPL_CODE) DcmDspData_WriteDataWrapper(P2CONST(uint8, AUTOMATIC, DCM_APPL_DATA) Data, uint16 DataLength, Dcm_OpStatusType OpStatus, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) ErrorCode) /* KW MISRA.PPARAM.NEEDS.CONST METRICS.E.Cyclomatic_complexity__VG_ METRICS.E.Number_of_statements */
{
   return Write_DID_0x2345(Data, ErrorCode);
}

FUNC(Std_ReturnType, DCM_APPL_CODE) Dcm_FreezeCurrentStateWrapper(uint16 index, Dcm_OpStatusType OpStatus, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) ErrorCode)
{
   Std_ReturnType retVal = E_NOT_OK;
   *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;

   return retVal;
}

FUNC(Std_ReturnType, DCM_APPL_CODE) Dcm_ReturnControlToECUWrapper(uint16 index, Dcm_OpStatusType OpStatus, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) ErrorCode)
{
   Std_ReturnType retVal = E_NOT_OK;
   *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;

   return retVal;
}

FUNC(Std_ReturnType, DCM_APPL_CODE) Dcm_ResetToDefaultWrapper(uint16 index, Dcm_OpStatusType OpStatus, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) ErrorCode)
{
   Std_ReturnType retVal = E_NOT_OK;
   *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;

   return retVal;
}

FUNC(Std_ReturnType, DCM_APPL_CODE) Dcm_ShortTermAdjustmentWrapper(uint16 index, P2CONST(uint8, AUTOMATIC, DCM_APPL_DATA) ControlStateInfo, uint16 DataLength, Dcm_OpStatusType OpStatus, P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, DCM_APPL_DATA) ErrorCode)
{
   Std_ReturnType retVal = E_NOT_OK;
   *ErrorCode = DCM_E_CONDITIONSNOTCORRECT;

   return retVal;
}

/*****************************************************************************/
/* Public API function                                                       */
/*****************************************************************************/

/* This function maps session control types to session control modes. */
FUNC(Rte_ModeType_DcmDiagnosticSessionControl, DCM_CODE) Dcm_SesCtrlTypeToSessionMode(Dcm_SesCtrlType session)
{
    Rte_ModeType_DcmDiagnosticSessionControl retValue = RTE_MODE_DcmDiagnosticSessionControl_DEFAULT_SESSION;

    switch (session)
    {
       case DCM_DEFAULT_SESSION:
       {
          retValue =  RTE_MODE_DcmDiagnosticSessionControl_DEFAULT_SESSION; /* KW STRONG.TYPE.ASSIGN.CONST */
          break;
       }
       case DCM_PROGRAMMING_SESSION:
       {
          retValue =  RTE_MODE_DcmDiagnosticSessionControl_PROGRAMMING_SESSION; /* KW STRONG.TYPE.ASSIGN.CONST */
          break;
       }
       case DCM_EXTENDED_DIAGNOSTIC_SESSION:
       {
          retValue =  RTE_MODE_DcmDiagnosticSessionControl_EXTENDED_DIAGNOSTIC_SESSION; /* KW STRONG.TYPE.ASSIGN.CONST */
          break;
       }
       default:
       {
          /* Shall not be here. */
          DCM_ASSERT_PARAM(SID_MAINFUNCTION, FALSE)
          break;
       }
    }

    return retValue;
}

FUNC(void, DCM_CODE) Dcm_DspRoe_GenInit(void)
{
   /* Empty function since ROE is not enabled. */
}

FUNC(void, DCM_CODE) Dcm_DspRoe_GenMainFunction(void)
{
   /* Empty function since ROE is not enabled. */
}

FUNC(void, DCM_CODE) Dcm_DspRoe_GenConfirmation(boolean ProcessingFinished)
{
   /* Empty function since ROE is not enabled. */
}

FUNC(void, DCM_CODE) Dcm_DspRoe_GenSessionChange(Dcm_SesCtrlType OldSession, Dcm_SesCtrlType NewSession)
{
   /* Empty function since ROE is not enabled. */
}

FUNC(void, DCM_CODE) SchM_ActMainFunction_Dcm_IntTrP_ResponseOnOneEvent(void)
{
   /* SchM function added in Dcm internally to not get linker error since Roe is not configured */
}

FUNC(void, DCM_CODE) SchM_Enter_Dcm_EaRoeQueue(void)
{
   /* SchM function added in Dcm internally to not get linker error since Roe is not configured */
}

FUNC(void, DCM_CODE) SchM_Exit_Dcm_EaRoeQueue(void)
{
   /* SchM function added in Dcm internally to not get linker error since Roe is not configured */
}

FUNC(boolean, DCM_CODE) Dcm_NvMRoeInit(void)
{
   return TRUE;
}

FUNC(void, DCM_CODE) Dcm_NvMRoeBlockChanged(void)
{
}

FUNC(void, DCM_CODE) Dcm_NvMSetRamBlockStatus(void)
{
   /* Nothing to be done since DDPRIDs are not configured. */
}

FUNC(void, DCM_CODE) Dcm_InitServiceData(void)
{
   ServiceFunctionData.service_fct_active = FALSE;
}

FUNC(void, DCM_CODE) Dcm_SetServiceData(Dcm_OpStatusType OpStatus, P2VAR(Dcm_MsgContextType, AUTOMATIC, DCM_APPL_DATA) pMsgContext)
{
   ServiceFunctionData.service_fct_active = TRUE;
   ServiceFunctionData.op_status = OpStatus;
   ServiceFunctionData.p_msg_context = pMsgContext;
}

FUNC(boolean, DCM_CODE) Dcm_ServiceFctActive(void)
{
   return ServiceFunctionData.service_fct_active;
}

FUNC(void, DCM_CODE) Dcm_SE_Dcm_ClearDiagnosticInformation(void)
{
   Dcm_NegativeResponseCodeType ErrorCode = DCM_INT_NRC_POSITIVERESPONSE;
   CONST(Std_ReturnType, AUTOMATIC) stdRetVal = Dcm_ClearDiagnosticInformation(ServiceFunctionData.op_status, ServiceFunctionData.p_msg_context, &ErrorCode);
   Dcm_DsdSetServiceHandlerResult(stdRetVal, ErrorCode);

   ServiceFunctionData.service_fct_active = FALSE;
}

FUNC(void, DCM_CODE) Dcm_SE_Dcm_DiagnosticSessionControl(void)
{
   Dcm_NegativeResponseCodeType ErrorCode = DCM_INT_NRC_POSITIVERESPONSE;
   CONST(Std_ReturnType, AUTOMATIC) stdRetVal = Dcm_DiagnosticSessionControl(ServiceFunctionData.op_status, ServiceFunctionData.p_msg_context, &ErrorCode);
   Dcm_DsdSetServiceHandlerResult(stdRetVal, ErrorCode);

   ServiceFunctionData.service_fct_active = FALSE;
}

FUNC(void, DCM_CODE) Dcm_SE_Dcm_ReadDTCInformation(void)
{
   Dcm_NegativeResponseCodeType ErrorCode = DCM_INT_NRC_POSITIVERESPONSE;
   CONST(Std_ReturnType, AUTOMATIC) stdRetVal = Dcm_ReadDTCInformation(ServiceFunctionData.op_status, ServiceFunctionData.p_msg_context, &ErrorCode);
   Dcm_DsdSetServiceHandlerResult(stdRetVal, ErrorCode);

   ServiceFunctionData.service_fct_active = FALSE;
}

FUNC(void, DCM_CODE) Dcm_SE_Dcm_ReadDataByIdentifier(void)
{
   Dcm_NegativeResponseCodeType ErrorCode = DCM_INT_NRC_POSITIVERESPONSE;
   CONST(Std_ReturnType, AUTOMATIC) stdRetVal = Dcm_ReadDataByIdentifier(ServiceFunctionData.op_status, ServiceFunctionData.p_msg_context, &ErrorCode);
   Dcm_DsdSetServiceHandlerResult(stdRetVal, ErrorCode);

   ServiceFunctionData.service_fct_active = FALSE;
}

FUNC(void, DCM_CODE) Dcm_SE_Dcm_SecurityAccess(void)
{
   Dcm_NegativeResponseCodeType ErrorCode = DCM_INT_NRC_POSITIVERESPONSE;
   CONST(Std_ReturnType, AUTOMATIC) stdRetVal = Dcm_SecurityAccess(ServiceFunctionData.op_status, ServiceFunctionData.p_msg_context, &ErrorCode);
   Dcm_DsdSetServiceHandlerResult(stdRetVal, ErrorCode);

   ServiceFunctionData.service_fct_active = FALSE;
}

FUNC(void, DCM_CODE) Dcm_SE_Dcm_TesterPresent(void)
{
   Dcm_NegativeResponseCodeType ErrorCode = DCM_INT_NRC_POSITIVERESPONSE;
   CONST(Std_ReturnType, AUTOMATIC) stdRetVal = Dcm_TesterPresent(ServiceFunctionData.op_status, ServiceFunctionData.p_msg_context, &ErrorCode);
   Dcm_DsdSetServiceHandlerResult(stdRetVal, ErrorCode);

   ServiceFunctionData.service_fct_active = FALSE;
}

FUNC(void, DCM_CODE) Dcm_SE_Dcm_WriteDataByIdentifier(void)
{
   Dcm_NegativeResponseCodeType ErrorCode = DCM_INT_NRC_POSITIVERESPONSE;
   CONST(Std_ReturnType, AUTOMATIC) stdRetVal = Dcm_WriteDataByIdentifier(ServiceFunctionData.op_status, ServiceFunctionData.p_msg_context, &ErrorCode);
   Dcm_DsdSetServiceHandlerResult(stdRetVal, ErrorCode);

   ServiceFunctionData.service_fct_active = FALSE;
}

#define DCM_STOP_SEC_CODE
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

/*****************************************************************************/
/* Public CRC32 hash values for link time and post build checks              */
/*****************************************************************************/
#define DCM_START_SEC_CONST_32
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

CONST(uint32, DCM_CONST) Dcm_LTtoPCHashValue = 0x818FE5D2UL; /* Link time to pre-compile hash value */
CONST(uint32, DCM_CONST) Dcm_LTHashValue     = 0xE70E3BF5UL; /* Link time hash value */

#define DCM_STOP_SEC_CONST_32
#include "Dcm_MemMap.h" /* KW MISRA.INCL.INSIDE */

