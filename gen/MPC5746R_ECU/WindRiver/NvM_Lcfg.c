/**\file
 *
 * \brief Generated Source File for NvM
 *
 * This file describes the configuration for NvM module
 *
 * \b Application:        NvM \n
 * \b Target:             see NvM.h for details \n
 * \b Compiler:           see NvM.h for details \n
 * \b Autosar-Vendor-ID:  31 \n
 *
 * \b Module:             NvM \n
 * \b Generator:          VSTAR NvM V8.2.0-Build513 \n
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

/*============================================================================*\
 * PREPROCESSOR DIRECTIVES
\*============================================================================*/

/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/


/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/

#include "NvM.h"
#include "Rte_NvM.h"
#include "Crc.h"

/*
* Version controls for NvM_Lcfg.h file.
*/ 
#define EXPECTED_SW_MAJOR_VERSION (8U)
#define EXPECTED_SW_MINOR_VERSION (2U)
#define EXPECTED_SW_PATCH_VERSION (0U)

#if ( (NVM_LCFG_SW_MAJOR_VERSION != EXPECTED_SW_MAJOR_VERSION) || \
      (NVM_LCFG_SW_MINOR_VERSION != EXPECTED_SW_MINOR_VERSION) || \
      (NVM_LCFG_SW_PATCH_VERSION != EXPECTED_SW_PATCH_VERSION) )
   #error "The software version of the NvM_Lcfg.h file does not match the expected version."
#endif

/* LOCAL DEFINES FOR CONSTANTS --------------------------------------------*/

/*============================================================================*\
 * EXPORTED OBJECT DECLARATIONS
\*============================================================================*/

/* PRQA S 3447 ++ 
 * Data type can be other than uint8. Hence declared here
*/

#define NVM_START_SEC_CONST_8
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */


#define NVM_STOP_SEC_CONST_8
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define NVM_START_SEC_VAR_NO_INIT_8
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */

extern VAR(uint8,NVM_VAR) NvM_Cfg_Ram[NVM_BLOCK_1_DATA_LENGTH];
extern VAR(uint8,NVM_VAR) NvM_Cfg_Appl[NVM_BLOCK_2_DATA_LENGTH];
extern VAR(uint8,NVM_VAR) NvM_Cfg_BSW[NVM_BLOCK_3_DATA_LENGTH];

#define NVM_STOP_SEC_VAR_NO_INIT_8
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */

/* PRQA S 3447 -- */


/* PRQA S 0857 ++ 
 * The number of macros defined varies with each configuration and depends on the total number of blocks configured.
 * These macros define the parameters of a block descriptor container and hence cannot be removed.
 */
#define NVM_BLOCK_0_NVM_BLOCK_CRC_TYPE           (NVM_CRC00)
#define NVM_BLOCK_0_NVM_NVRAM_DEVICE_ID          ((uint8)0)
#define NVM_BLOCK_0_NVM_BLOCK_MANAGEMENT         (NVM_BLOCK_NATIVE)
#define NVM_BLOCK_0_NVM_NV_BLOCK_NUM             ((uint8)0)
#define NVM_BLOCK_0_NVM_ROM_BLOCK_NUM            ((uint8)0)
#define NVM_BLOCK_0_NVM_BLOCK_JOB_PRIORITY       ((uint8)255)
#define NVM_BLOCK_0_NVM_NV_BLOCK_LENGTH          ((uint16)0)
#define NVM_BLOCK_0_NVM_NV_BLOCK_BASE_NUMBER     ((uint16)0)
#define NVM_BLOCK_0_NVM_NV_BLOCK_IDENTIFIER      ((uint16)0)
#define NVM_BLOCK_0_NVM_MAX_NUM_OF_READ_RETRIES  ((uint8)0)
#define NVM_BLOCK_0_NVM_MAX_NUM_OF_WRITE_RETRIES ((uint8)0)
#define NVM_BLOCK_0_NVM_WRITE_VERIFICATION_DATA_SIZE ((uint16)0)
#define NVM_BLOCK_0_NVM_RAM_BLOCK_DATA_ADDRESS   (NULL_PTR)
#define NVM_BLOCK_0_NVM_ROM_BLOCK_DATA_ADDRESS   (NULL_PTR)
#define NVM_BLOCK_0_NVM_INIT_BLOCK_CALLBACK      (NULL_PTR)
#define NVM_BLOCK_0_NVM_SINGLE_BLOCK_CALLBACK    (NULL_PTR)
#define NVM_BLOCK_0_NVM_READ_RAM_BLOCK_FROM_NVM    (NULL_PTR)
#define NVM_BLOCK_0_NVM_WRITE_RAM_BLOCK_TO_NVM    (NULL_PTR)
#define NVM_BLOCK_0_NVM_DEM_EVENT_ID_STRUCT_PTR  (NULL_PTR)
#define NVM_BLOCK_0_NVM_BLOCK_USE_CRC                      (NVM_BLOCK_USE_CRC_OFF)
#define NVM_BLOCK_0_NVM_CALC_RAM_BLOCK_CRC                 (NVM_CALC_RAM_BLOCK_CRC_OFF)
#define NVM_BLOCK_0_NVM_BLOCK_WRITE_PROT                   (NVM_BLOCK_WRITE_PROT_OFF)
#define NVM_BLOCK_0_NVM_WRITE_BLOCK_ONCE                   (NVM_WRITE_BLOCK_ONCE_OFF)
#define NVM_BLOCK_0_NVM_RESISTANT_TO_CHANGED_SW            (NVM_RESISTANT_TO_CHANGED_SW_OFF)
#define NVM_BLOCK_0_NVM_SELECT_BLOCK_FOR_READALL           (NVM_SELECT_BLOCK_FOR_READALL_OFF)
#define NVM_BLOCK_0_NVM_BLOCK_USE_SYNC_MECHANISM           (NVM_BLOCK_USE_SYNC_MECHANISM_OFF)
#define NVM_BLOCK_0_NVM_SELECT_BLOCK_FOR_WRITEALL          (NVM_SELECT_BLOCK_FOR_WRITEALL_OFF)
#define NVM_BLOCK_0_NVM_WRITE_VERIFICATION                 (NVM_WRITE_VERIFICATION_OFF)
#define NVM_BLOCK_0_NVM_STATIC_BLOCK_ID_CHECK              (NVM_STATIC_BLOCK_ID_CHECK_OFF)
#define NVM_BLOCK_0_NVM_BSWM_BLOCK_STATUS_INFORMATION      (NVM_BSWM_BLOCK_STATUS_INFORMATION_OFF)
#define NVM_BLOCK_0_NVM_BLOCK_CRC_FUNCTION_PTR             (NULL_PTR)
#define NVM_BLOCK_0_NVM_BLOCK_USE_CRC_COMP_MECHANISM       (NVM_BLOCK_USE_CRC_COMP_MECHANISM_OFF)
#define NVM_BLOCK_0_NVM_BLOCK_USE_AUTO_VALIDATION          (NVM_BLOCK_USE_AUTO_VALIDATION_OFF)
#define NVM_BLOCK_0_NVM_BLOCK_USE_SET_RAM_BLOCK_STATUS     (NVM_BLOCK_USE_SET_RAM_BLOCK_STATUS_OFF)
#define NVM_BLOCK_1_NVM_BLOCK_CRC_TYPE          (NVM_CRC16)
#define NVM_BLOCK_1_NVM_NVRAM_DEVICE_ID         ((uint8)0)
#define NVM_BLOCK_1_NVM_BLOCK_MANAGEMENT        (NVM_BLOCK_REDUNDANT)
#define NVM_BLOCK_1_NVM_NV_BLOCK_NUM            ((uint8)2)
#define NVM_BLOCK_1_NVM_ROM_BLOCK_NUM           ((uint8)0)
#define NVM_BLOCK_1_NVM_BLOCK_JOB_PRIORITY      ((uint8)0)
#define NVM_BLOCK_1_NVM_NV_BLOCK_LENGTH         ((uint16)100)
#define NVM_BLOCK_1_NVM_NV_BLOCK_BASE_NUMBER    ((uint16)1)
#define NVM_BLOCK_1_NVM_NV_BLOCK_IDENTIFIER     ((uint16)1)
#define NVM_BLOCK_1_NVM_MAX_NUM_OF_READ_RETRIES     ((uint8)0)
#define NVM_BLOCK_1_NVM_MAX_NUM_OF_WRITE_RETRIES     ((uint8)0)
#define NVM_BLOCK_1_NVM_WRITE_VERIFICATION_DATA_SIZE     ((uint16)1)
#define NVM_BLOCK_1_NVM_RAM_BLOCK_DATA_ADDRESS  (&NvM_Cfg_Ram[0])
#define NVM_BLOCK_1_NVM_ROM_BLOCK_DATA_ADDRESS  (NULL_PTR)
#define NVM_BLOCK_1_NVM_INIT_BLOCK_CALLBACK     (NULL_PTR)
#define NVM_BLOCK_1_NVM_SINGLE_BLOCK_CALLBACK   (NULL_PTR)
#define NVM_BLOCK_1_NVM_READ_RAM_BLOCK_FROM_NVM     (NULL_PTR)
#define NVM_BLOCK_1_NVM_WRITE_RAM_BLOCK_TO_NVM   (NULL_PTR)
#define NVM_BLOCK_1_NVM_DEM_EVENT_ID_STRUCT_PTR  (NULL_PTR)
#define NVM_BLOCK_1_NVM_BLOCK_USE_CRC            (NVM_BLOCK_USE_CRC_ON)
#define NVM_BLOCK_1_NVM_CALC_RAM_BLOCK_CRC       (NVM_CALC_RAM_BLOCK_CRC_OFF)
#define NVM_BLOCK_1_NVM_BLOCK_WRITE_PROT         (NVM_BLOCK_WRITE_PROT_OFF)
#define NVM_BLOCK_1_NVM_WRITE_BLOCK_ONCE         (NVM_WRITE_BLOCK_ONCE_OFF)
#define NVM_BLOCK_1_NVM_RESISTANT_TO_CHANGED_SW  (NVM_RESISTANT_TO_CHANGED_SW_OFF)
#define NVM_BLOCK_1_NVM_SELECT_BLOCK_FOR_READALL (NVM_SELECT_BLOCK_FOR_READALL_OFF)
#define NVM_BLOCK_1_NVM_BLOCK_USE_SYNC_MECHANISM       (NVM_BLOCK_USE_SYNC_MECHANISM_OFF) /* [DD-NVM00511-MGC01-V1] */
#define NVM_BLOCK_1_NVM_SELECT_BLOCK_FOR_WRITEALL (NVM_SELECT_BLOCK_FOR_WRITEALL_OFF)
#define NVM_BLOCK_1_NVM_WRITE_VERIFICATION     (NVM_WRITE_VERIFICATION_OFF)
#define NVM_BLOCK_1_NVM_STATIC_BLOCK_ID_CHECK     (NVM_STATIC_BLOCK_ID_CHECK_OFF)
#define NVM_BLOCK_1_NVM_BSWM_BLOCK_STATUS_INFORMATION     (NVM_BSWM_BLOCK_STATUS_INFORMATION_OFF)
#define NVM_BLOCK_1_NVM_BLOCK_CRC_FUNCTION_PTR     (((NVM_CRC32_FUNC)&Crc_CalculateCRC16))
#define NVM_BLOCK_1_NVM_BLOCK_USE_CRC_COMP_MECHANISM         (NVM_BLOCK_USE_CRC_COMP_MECHANISM_OFF)
#define NVM_BLOCK_1_NVM_BLOCK_USE_AUTO_VALIDATION         (NVM_BLOCK_USE_AUTO_VALIDATION_OFF)
#define NVM_BLOCK_1_NVM_BLOCK_USE_SET_RAM_BLOCK_STATUS         (NVM_BLOCK_USE_SET_RAM_BLOCK_STATUS_ON)
#define NvMBlockDescriptor_Appl_NVM_BLOCK_CRC_TYPE          (NVM_CRC00)
#define NvMBlockDescriptor_Appl_NVM_NVRAM_DEVICE_ID         ((uint8)0)
#define NvMBlockDescriptor_Appl_NVM_BLOCK_MANAGEMENT        (NVM_BLOCK_NATIVE)
#define NvMBlockDescriptor_Appl_NVM_NV_BLOCK_NUM            ((uint8)1)
#define NvMBlockDescriptor_Appl_NVM_ROM_BLOCK_NUM           ((uint8)0)
#define NvMBlockDescriptor_Appl_NVM_BLOCK_JOB_PRIORITY      ((uint8)0)
#define NvMBlockDescriptor_Appl_NVM_NV_BLOCK_LENGTH         ((uint16)256)
#define NvMBlockDescriptor_Appl_NVM_NV_BLOCK_BASE_NUMBER    ((uint16)2)
#define NvMBlockDescriptor_Appl_NVM_NV_BLOCK_IDENTIFIER     ((uint16)2)
#define NvMBlockDescriptor_Appl_NVM_MAX_NUM_OF_READ_RETRIES     ((uint8)0)
#define NvMBlockDescriptor_Appl_NVM_MAX_NUM_OF_WRITE_RETRIES     ((uint8)0)
#define NvMBlockDescriptor_Appl_NVM_WRITE_VERIFICATION_DATA_SIZE     ((uint16)1)
#define NvMBlockDescriptor_Appl_NVM_RAM_BLOCK_DATA_ADDRESS  (&NvM_Cfg_Appl[0])
#define NvMBlockDescriptor_Appl_NVM_ROM_BLOCK_DATA_ADDRESS  (NULL_PTR)
#define NvMBlockDescriptor_Appl_NVM_INIT_BLOCK_CALLBACK     (NULL_PTR)
#define NvMBlockDescriptor_Appl_NVM_SINGLE_BLOCK_CALLBACK   (NULL_PTR)
#define NvMBlockDescriptor_Appl_NVM_READ_RAM_BLOCK_FROM_NVM     (NULL_PTR)
#define NvMBlockDescriptor_Appl_NVM_WRITE_RAM_BLOCK_TO_NVM   (NULL_PTR)
#define NvMBlockDescriptor_Appl_NVM_DEM_EVENT_ID_STRUCT_PTR  (NULL_PTR)
#define NvMBlockDescriptor_Appl_NVM_BLOCK_USE_CRC            (NVM_BLOCK_USE_CRC_OFF)
#define NvMBlockDescriptor_Appl_NVM_CALC_RAM_BLOCK_CRC       (NVM_CALC_RAM_BLOCK_CRC_OFF)
#define NvMBlockDescriptor_Appl_NVM_BLOCK_WRITE_PROT         (NVM_BLOCK_WRITE_PROT_OFF)
#define NvMBlockDescriptor_Appl_NVM_WRITE_BLOCK_ONCE         (NVM_WRITE_BLOCK_ONCE_OFF)
#define NvMBlockDescriptor_Appl_NVM_RESISTANT_TO_CHANGED_SW  (NVM_RESISTANT_TO_CHANGED_SW_OFF)
#define NvMBlockDescriptor_Appl_NVM_SELECT_BLOCK_FOR_READALL (NVM_SELECT_BLOCK_FOR_READALL_OFF)
#define NvMBlockDescriptor_Appl_NVM_BLOCK_USE_SYNC_MECHANISM       (NVM_BLOCK_USE_SYNC_MECHANISM_OFF) /* [DD-NVM00511-MGC01-V1] */
#define NvMBlockDescriptor_Appl_NVM_SELECT_BLOCK_FOR_WRITEALL (NVM_SELECT_BLOCK_FOR_WRITEALL_OFF)
#define NvMBlockDescriptor_Appl_NVM_WRITE_VERIFICATION     (NVM_WRITE_VERIFICATION_OFF)
#define NvMBlockDescriptor_Appl_NVM_STATIC_BLOCK_ID_CHECK     (NVM_STATIC_BLOCK_ID_CHECK_OFF)
#define NvMBlockDescriptor_Appl_NVM_BSWM_BLOCK_STATUS_INFORMATION     (NVM_BSWM_BLOCK_STATUS_INFORMATION_OFF)
#define NvMBlockDescriptor_Appl_NVM_BLOCK_CRC_FUNCTION_PTR     (NULL_PTR)
#define NvMBlockDescriptor_Appl_NVM_BLOCK_USE_CRC_COMP_MECHANISM         (NVM_BLOCK_USE_CRC_COMP_MECHANISM_OFF)
#define NvMBlockDescriptor_Appl_NVM_BLOCK_USE_AUTO_VALIDATION         (NVM_BLOCK_USE_AUTO_VALIDATION_OFF)
#define NvMBlockDescriptor_Appl_NVM_BLOCK_USE_SET_RAM_BLOCK_STATUS         (NVM_BLOCK_USE_SET_RAM_BLOCK_STATUS_ON)
#define NvMBlockDescriptor_BSW_NVM_BLOCK_CRC_TYPE          (NVM_CRC00)
#define NvMBlockDescriptor_BSW_NVM_NVRAM_DEVICE_ID         ((uint8)0)
#define NvMBlockDescriptor_BSW_NVM_BLOCK_MANAGEMENT        (NVM_BLOCK_REDUNDANT)
#define NvMBlockDescriptor_BSW_NVM_NV_BLOCK_NUM            ((uint8)2)
#define NvMBlockDescriptor_BSW_NVM_ROM_BLOCK_NUM           ((uint8)0)
#define NvMBlockDescriptor_BSW_NVM_BLOCK_JOB_PRIORITY      ((uint8)0)
#define NvMBlockDescriptor_BSW_NVM_NV_BLOCK_LENGTH         ((uint16)256)
#define NvMBlockDescriptor_BSW_NVM_NV_BLOCK_BASE_NUMBER    ((uint16)1)
#define NvMBlockDescriptor_BSW_NVM_NV_BLOCK_IDENTIFIER     ((uint16)3)
#define NvMBlockDescriptor_BSW_NVM_MAX_NUM_OF_READ_RETRIES     ((uint8)1)
#define NvMBlockDescriptor_BSW_NVM_MAX_NUM_OF_WRITE_RETRIES     ((uint8)1)
#define NvMBlockDescriptor_BSW_NVM_WRITE_VERIFICATION_DATA_SIZE     ((uint16)1)
#define NvMBlockDescriptor_BSW_NVM_RAM_BLOCK_DATA_ADDRESS  (&NvM_Cfg_BSW[0])
#define NvMBlockDescriptor_BSW_NVM_ROM_BLOCK_DATA_ADDRESS  (NULL_PTR)
#define NvMBlockDescriptor_BSW_NVM_INIT_BLOCK_CALLBACK     (NULL_PTR)
#define NvMBlockDescriptor_BSW_NVM_SINGLE_BLOCK_CALLBACK   (NULL_PTR)
#define NvMBlockDescriptor_BSW_NVM_READ_RAM_BLOCK_FROM_NVM     (NULL_PTR)
#define NvMBlockDescriptor_BSW_NVM_WRITE_RAM_BLOCK_TO_NVM   (NULL_PTR)
#define NvMBlockDescriptor_BSW_NVM_DEM_EVENT_ID_STRUCT_PTR  (NULL_PTR)
#define NvMBlockDescriptor_BSW_NVM_BLOCK_USE_CRC            (NVM_BLOCK_USE_CRC_OFF)
#define NvMBlockDescriptor_BSW_NVM_CALC_RAM_BLOCK_CRC       (NVM_CALC_RAM_BLOCK_CRC_OFF)
#define NvMBlockDescriptor_BSW_NVM_BLOCK_WRITE_PROT         (NVM_BLOCK_WRITE_PROT_OFF)
#define NvMBlockDescriptor_BSW_NVM_WRITE_BLOCK_ONCE         (NVM_WRITE_BLOCK_ONCE_OFF)
#define NvMBlockDescriptor_BSW_NVM_RESISTANT_TO_CHANGED_SW  (NVM_RESISTANT_TO_CHANGED_SW_OFF)
#define NvMBlockDescriptor_BSW_NVM_SELECT_BLOCK_FOR_READALL (NVM_SELECT_BLOCK_FOR_READALL_OFF)
#define NvMBlockDescriptor_BSW_NVM_BLOCK_USE_SYNC_MECHANISM       (NVM_BLOCK_USE_SYNC_MECHANISM_OFF) /* [DD-NVM00511-MGC01-V1] */
#define NvMBlockDescriptor_BSW_NVM_SELECT_BLOCK_FOR_WRITEALL (NVM_SELECT_BLOCK_FOR_WRITEALL_OFF)
#define NvMBlockDescriptor_BSW_NVM_WRITE_VERIFICATION     (NVM_WRITE_VERIFICATION_OFF)
#define NvMBlockDescriptor_BSW_NVM_STATIC_BLOCK_ID_CHECK     (NVM_STATIC_BLOCK_ID_CHECK_OFF)
#define NvMBlockDescriptor_BSW_NVM_BSWM_BLOCK_STATUS_INFORMATION     (NVM_BSWM_BLOCK_STATUS_INFORMATION_OFF)
#define NvMBlockDescriptor_BSW_NVM_BLOCK_CRC_FUNCTION_PTR     (NULL_PTR)
#define NvMBlockDescriptor_BSW_NVM_BLOCK_USE_CRC_COMP_MECHANISM         (NVM_BLOCK_USE_CRC_COMP_MECHANISM_OFF)
#define NvMBlockDescriptor_BSW_NVM_BLOCK_USE_AUTO_VALIDATION         (NVM_BLOCK_USE_AUTO_VALIDATION_OFF)
#define NvMBlockDescriptor_BSW_NVM_BLOCK_USE_SET_RAM_BLOCK_STATUS         (NVM_BLOCK_USE_SET_RAM_BLOCK_STATUS_ON)


/* LOCAL DEFINE MACROS (#, ##) --------------------------------------------*/
/* PRQA S 881 ++ 
   Order of evaluation of multiple ## operators is undefined - Macros
   e.g NVM_BLOCK_0_NVM_BLOCK_CRC_TYPE is defined above that preprocessor should
   evaluate it in correct way
*/
#define NVM_CONFIGURE_BLOCK(block_id) /* KW MISRA.DEFINE.SHARP MISRA.DEFINE.SHARP.MANY MISRA.DEFINE.FUNC */ \
{\
    block_id##_NVM_BLOCK_CRC_TYPE,                           \
    block_id##_NVM_BLOCK_CRC_FUNCTION_PTR,                   \
    block_id##_NVM_NVRAM_DEVICE_ID,                          \
    block_id##_NVM_BLOCK_MANAGEMENT,                         \
    block_id##_NVM_NV_BLOCK_NUM,                             \
    block_id##_NVM_ROM_BLOCK_NUM,                            \
    block_id##_NVM_BLOCK_JOB_PRIORITY,                       \
    block_id##_NVM_NV_BLOCK_LENGTH,                          \
    block_id##_NVM_NV_BLOCK_BASE_NUMBER,                     \
    block_id##_NVM_NV_BLOCK_IDENTIFIER,                      \
    block_id##_NVM_MAX_NUM_OF_READ_RETRIES, /* [DD-NVM00526-MGC01-V1] */ \
    block_id##_NVM_MAX_NUM_OF_WRITE_RETRIES, /* [DD-NVM00216-MGC01-V1] */ \
    block_id##_NVM_WRITE_VERIFICATION_DATA_SIZE, /* [DD-NVM00527-MGC01-V1] */ \
    block_id##_NVM_RAM_BLOCK_DATA_ADDRESS,                   \
    block_id##_NVM_ROM_BLOCK_DATA_ADDRESS,                   \
    block_id##_NVM_INIT_BLOCK_CALLBACK,                      \
    block_id##_NVM_SINGLE_BLOCK_CALLBACK, /* [DD-NVM00113-MGC01-V1] */ \
    block_id##_NVM_READ_RAM_BLOCK_FROM_NVM,                  \
    block_id##_NVM_WRITE_RAM_BLOCK_TO_NVM,                   \
    block_id##_NVM_DEM_EVENT_ID_STRUCT_PTR,                  \
    (uint16)(block_id##_NVM_BLOCK_USE_CRC                    \
    | block_id##_NVM_CALC_RAM_BLOCK_CRC                      \
    | block_id##_NVM_BLOCK_WRITE_PROT                        \
    | block_id##_NVM_WRITE_BLOCK_ONCE                        \
    | block_id##_NVM_RESISTANT_TO_CHANGED_SW                 \
    | block_id##_NVM_SELECT_BLOCK_FOR_READALL                \
    | block_id##_NVM_BLOCK_USE_SYNC_MECHANISM                \
    | block_id##_NVM_SELECT_BLOCK_FOR_WRITEALL               \
    | block_id##_NVM_WRITE_VERIFICATION                      \
    | block_id##_NVM_STATIC_BLOCK_ID_CHECK                   \
    | block_id##_NVM_BSWM_BLOCK_STATUS_INFORMATION           \
    | block_id##_NVM_BLOCK_USE_CRC_COMP_MECHANISM            \
    | block_id##_NVM_BLOCK_USE_AUTO_VALIDATION               \
    | block_id##_NVM_BLOCK_USE_SET_RAM_BLOCK_STATUS)         \
}
/* PRQA S 0857 -- */ 
/* PRQA S 881 -- */


/*============================================================================*\
 * LOCAL TYPEDEF DECLARATIONS
\*============================================================================*/

/* ENUMS ---------------------------------------------------------------------*/


/* STRUCTS -------------------------------------------------------------------*/


/* UNIONS --------------------------------------------------------------------*/


/* OTHER TYPEDEFS ------------------------------------------------------------*/


/*============================================================================*\
 * OBJECT DEFINITIONS
\*============================================================================*/

/****************************************************************/
/* Public CRC32 hash values for link time and post build checks */
/****************************************************************/
#define NVM_START_SEC_CONST_32
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */

CONST(uint32, NVM_CONST) NvM_LTtoPCHashValue = 0xD1831E28UL; /* Link time to pre-compile hash value */

#define NVM_STOP_SEC_CONST_32
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */

#define NVM_START_SEC_VAR_NO_INIT_8
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */
/** array of nvm mirror [DD-NVM00512-MGC01-V1] */
static VAR(uint8,NVM_VAR) NvM_Mirror[NVM_MAXIMUM_BUFFER_LENGTH]; /* [DD-NVM00513-MGC01-V1] */

#define NVM_STOP_SEC_VAR_NO_INIT_8
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */


#define NVM_START_SEC_VAR_NO_INIT_32
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */
/** Block crc value array [DD-NVM00040-MGC01-V1] [DD-NVM00544-MGC01-V1] */
static VAR(uint32,NVM_VAR) NvM_BlockCrc[4];

#define NVM_STOP_SEC_VAR_NO_INIT_32
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */
/* PRQA S 5087 ++
 * MISRA RULE C197 VIOLATION:
 */
#define NVM_START_SEC_VAR_NO_INIT_UNSPECIFIED
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */
/**
 * NvM Block Administrative Table
 * [DD-NVM00135-MGC01-V1]
 */
static VAR(NvM_AdministrativeBlockType,NVM_VAR) NvM_AdministrativeBlock[4];
/**
 * Mark end of memory area for unspecified variables with no initialisation
 */
#define NVM_STOP_SEC_VAR_NO_INIT_UNSPECIFIED
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */
/* PRQA S 5087 -- */

/**
 * Mark start of memory area for code
 */
#define NVM_START_SEC_CODE
#include "NvM_MemMap.h"/* KW MISRA.INCL.INSIDE */

/* Prototype(s) for the BswM unused function(s). */
static FUNC(void, NVM_CODE) NvM_BswM_NvM_CurrentBlockMode_Is_Not_Used(NvM_BlockIdType Block, NvM_RequestResultType CurrentBlockMode);

/* No BswM_NvM_CurrentBlockMode is configured, an empty function is used. */
static FUNC(void, NVM_CODE) NvM_BswM_NvM_CurrentBlockMode_Is_Not_Used(NvM_BlockIdType Block, NvM_RequestResultType CurrentBlockMode)
{
}

/**
 * Mark end of memory area for code
 */
#define NVM_STOP_SEC_CODE
#include "NvM_MemMap.h"/* KW MISRA.INCL.INSIDE */

/* EXPORTED OBJECTS ----------------------------------------------------------*/

/* PRQA S 5087 ++
MISRA RULE C197 VIOLATION:
*/


#define NVM_START_SEC_CONST_UNSPECIFIED
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */
/**
 * NVM Configuration block
 * [DD-NVM00442-MGC01-V1] [DD-NVM00443-MGC01-V1] [DD-NVM00138-MGC01-V1] [DD-NVM00140-MGC01-V1]
 */
 /* PRQA S 3635 ++
  * NVM_CONFIGURE_BLOCK() is a MACRO not a function
  * [DD-NVM00373-MGC01-V1] [DD-NVM00370-MGC01-V1] [DD-NVM00140-MGC01-V1] [DD-NVM00143-MGC01-V1]
  * [DD-NVM00000-MGC01-V1] [DD-NVM-0006-MGC04-V1]
  */
static CONST(NvM_BlockDescriptorType,NVM_CONST) NvM_BlockDescriptor[4]=
{
   /* [DD-NVM00393-MGC01-V1] */
   NVM_CONFIGURE_BLOCK(NVM_BLOCK_0), /* KW MISRA.CAST.PTR MISRA.CAST.FUNC_PTR */
   NVM_CONFIGURE_BLOCK(NVM_BLOCK_1), /* KW MISRA.CAST.PTR MISRA.CAST.FUNC_PTR */
   NVM_CONFIGURE_BLOCK(NvMBlockDescriptor_Appl), /* KW MISRA.CAST.PTR MISRA.CAST.FUNC_PTR */
   NVM_CONFIGURE_BLOCK(NvMBlockDescriptor_BSW) /* KW MISRA.CAST.PTR MISRA.CAST.FUNC_PTR */
};

 /* PRQA S 3635 -- */
/**
 * NVM common Configuration
 */
CONST(NvM_CommonType,NVM_CONST) NvM_Common =
{
   65535,      /* NvM CRC number of bytes */
   1,      /* NvM Config ID [DD-NVM00034-MGC01-V1] */
   4,      /* Total number of NvM Ram blocks */
   NULL_PTR,      /* NvMMultiBlockCallback [DD-NVM00260-MGC01-V1] */
   &NvM_BswM_NvM_CurrentBlockMode_Is_Not_Used,      /* No BswM_NvM_CurrentBlockMode is configured. */
   &BswM_NvM_CurrentJobMode,      /*  BswM is informed about the multiblock job. [DD-NVM00745-MGC01-V1] */
   NvM_BlockCrc,      /* NvM Ram Block CRC array */
   NvM_Mirror,      /* NvM Ram Mirror */
   NULL_PTR,      /* NvM Write verification buffer */
   1,      /* Dataset selection bits */
   0,      /* NvM Mirror Operation repeat count */
   TRUE,      /* NvM BSWM Multiblock job status flag */
   FALSE,      /* NvM Driver Mode switch flag */
   FALSE      /* NvM Dynamic configuration flag */
};
/** Dem Event Id Configuration of NvM*/
CONST(NvM_DemEventIdType,NVM_CONST) NvMDemEventId =
{
   0,  /* DEMConf_DemEventParameter_NVM_E_HARDWARE is not configured */
   0,  /* DEMConf_DemEventParameter_NVM_E_REQ_FAILED is not configured [DD-NVM00592-MGC01-V1] */
   0,  /* DEMConf_DemEventParameter_NVM_E_INTEGRITY_FAILED is not configured [DD-NVM00591-MGC01-V1] */
   0,  /* DEMConf_DemEventParameter_NVM_E_LOSS_OF_REDUNDANCY is not configured [DD-NVM00595-MGC01-V1] */
   0,  /* DEMConf_DemEventParameter_NVM_E_VERIFY_FAILED is not configured [DD-NVM00594-MGC01-V1] */
   0,  /* DEMConf_DemEventParameter_NVM_E_QUEUE_OVERFLOW is not configured [DD-NVM00722-MGC01-V1] */
   0,  /* DEMConf_DemEventParameter_NVM_E_WRITE_PROTECTED is not configured [DD-NVM00723-MGC01-V1] */
   0   /* DEMConf_DemEventParameter_NVM_E_WRONG_BLOCK_ID is not configured [DD-NVM00593-MGC01-V1] */
};

/** NvM Block Management Tables*/
CONST(NvM_BlockManagementType,NVM_CONST) NvM_BlockManagementTable =
{
   /* [DD-NVM00134-MGC01-V1] [DD-NVM-0006-MGC05-V1] */
   NvM_AdministrativeBlock,       /* Administrative table pointer */
   /* [DD-NVM00130-MGC01-V1] */
   NvM_BlockDescriptor            /* BlockDescriptor table Pointer */
};

#define NVM_STOP_SEC_CONST_UNSPECIFIED
#include "NvM_MemMap.h" /* KW MISRA.INCL.INSIDE */
/* PRQA S 5087 -- */

/* LOCAL OBJECTS -------------------------------------------------------------*/


/*============================================================================*\
 * LOCAL FUNCTION PROTOTYPES
\*============================================================================*/


/*============================================================================*\
 * LOCAL FUNCTION-LIKE-MACROS and INLINE FUNCTIONS 
\*============================================================================*/


/*============================================================================*\
 * LOCAL FUNCTIONS
\*============================================================================*/


/*============================================================================*\
 * EXPORTED FUNCTIONS
\*============================================================================*/


/* END OF FILE -------------------------------------------------------------- */
