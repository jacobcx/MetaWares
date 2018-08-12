/**\file
 *
 * \brief Generated Source File for Ea
 *
 * None
 *
 * \b Application:        Ea \n
 * \b Target:             see Ea.h for details \n
 * \b Compiler:           see Ea.h for details \n
 * \b Autosar-Vendor-ID:  31 \n
 *
 * \b Module:             Ea \n
 * \b Generator:          VSTAR Ea V7.2.0-Build418 \n
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
/*============================================================================*
* PREPROCESSOR DIRECTIVES
\*============================================================================*/
/* INCLUDE DIRECTIVES FOR STANDARD HEADERS -----------------------------------*/
/* INCLUDE DIRECTIVES FOR OTHER HEADERS --------------------------------------*/
#include "Ea.h" 
#include "Ea_Types.h" 
#include "Ea_Lcfg.h" 

#define EXPECTED_SW_MAJOR_VERSION (7U)
#define EXPECTED_SW_MINOR_VERSION (2U)
#define EXPECTED_SW_PATCH_VERSION (0U)

#if ( (EA_LCFG_SW_MAJOR_VERSION != EXPECTED_SW_MAJOR_VERSION) || \
      (EA_LCFG_SW_MINOR_VERSION != EXPECTED_SW_MINOR_VERSION) || \
      (EA_LCFG_SW_PATCH_VERSION != EXPECTED_SW_PATCH_VERSION) )
   #error "The software version of the Ea_Lcfg.h file does not match the expected version."
#endif


/*****************************************************************************/
/* Private function prototypes                                               */
/*****************************************************************************/
#define EA_START_SEC_CODE
#include "Ea_MemMap.h"/* KW MISRA.INCL.INSIDE */
static FUNC(Std_ReturnType, EA_CODE)Eep_31_AT25256B_ReadWrapper(VAR(uint32, AUTOMATIC) EepromAddress, P2VAR(uint8, AUTOMATIC,EA_APPL_DATA) DataBufferPtr, VAR(uint32, AUTOMATIC) Length);
static FUNC(Std_ReturnType, EA_CODE)Eep_31_AT25256B_WriteWrapper(VAR(uint32, AUTOMATIC) EepromAddress, P2CONST(uint8, AUTOMATIC,EA_APPL_DATA) DataBufferPtr, VAR(uint32, AUTOMATIC) Length);
static FUNC(Std_ReturnType, EA_CODE)Eep_31_AT25256B_EraseWrapper(VAR(uint32, AUTOMATIC) EepromAddress, VAR(uint32, AUTOMATIC) Length);
#define EA_STOP_SEC_CODE
#include "Ea_MemMap.h"/* KW MISRA.INCL.INSIDE */
/****************************************************************/
/* Public CRC32 hash values for link time and post build checks */
/****************************************************************/
#define EA_START_SEC_CONST_32
#include "Ea_MemMap.h"/* KW MISRA.INCL.INSIDE */

CONST(uint32, EA_CONST) Ea_LTtoPCHashValue = 0xA03BE7B8UL; /* Link time to pre-compile hash value */

#define EA_STOP_SEC_CONST_32
#include "Ea_MemMap.h"/* KW MISRA.INCL.INSIDE */
/* LOCAL DEFINES FOR CONSTANTS -----------------------------------------------*/

#define EA_BLOCK_NUMBER_2                ((uint16)2)
#define EA_BLOCK_SIZE_2                  ((uint16)100)
#define EA_DEVICE_INDEX_2                ((uint8)0)
#define EA_PHYSICAL_BLOCK_NUMBER_2       ((uint16)1)
#define EA_BLOCK_AMOUNTS_2               ((uint8)1)
#define EA_IMMEDIATE_DATA_2              (FALSE)

#define EA_BLOCK_NUMBER_2                ((uint16)2)
#define EA_BLOCK_SIZE_2                  ((uint16)100)
#define EA_DEVICE_INDEX_2                ((uint8)0)
#define EA_PHYSICAL_BLOCK_NUMBER_2       ((uint16)3)
#define EA_BLOCK_AMOUNTS_2               ((uint8)1)
#define EA_IMMEDIATE_DATA_2              (FALSE)

#define EA_BLOCK_NUMBER_4                ((uint16)4)
#define EA_BLOCK_SIZE_4                  ((uint16)256)
#define EA_DEVICE_INDEX_4                ((uint8)0)
#define EA_PHYSICAL_BLOCK_NUMBER_4       ((uint16)5)
#define EA_BLOCK_AMOUNTS_4               ((uint8)1)
#define EA_IMMEDIATE_DATA_4              (FALSE)

/******************************************************************************/ 

/* EXPORTED OBJECTS ----------------------------------------------------------*/ 

#define EA_START_SEC_CONST_UNSPECIFIED
#include "Ea_MemMap.h"/* KW MISRA.INCL.INSIDE */
/**
* EA_BlockConfiguration container parameters are in table below for every 
* configured block
* \b Requirements -->
* \b reqtrace{DSAR-SDD-EA-38-2}{EA040,EA119,EA128,EA129,EA130,EA131,
EA068,EA006,EA043,EA126,EA127,EA070}
*/
CONST(EA_BlockConfigurationType, EA_CONST) EA_BlockDescriptor[EA_TOTAL_BLOCK_NUMBERS] = 
{
   {
      EA_BLOCK_NUMBER_2,
      EA_BLOCK_SIZE_2,
      EA_DEVICE_INDEX_2,
      EA_PHYSICAL_BLOCK_NUMBER_2,
      EA_BLOCK_AMOUNTS_2,
      EA_IMMEDIATE_DATA_2
   },
   {
      EA_BLOCK_NUMBER_2,
      EA_BLOCK_SIZE_2,
      EA_DEVICE_INDEX_2,
      EA_PHYSICAL_BLOCK_NUMBER_2,
      EA_BLOCK_AMOUNTS_2,
      EA_IMMEDIATE_DATA_2
   },
   {
      EA_BLOCK_NUMBER_4,
      EA_BLOCK_SIZE_4,
      EA_DEVICE_INDEX_4,
      EA_PHYSICAL_BLOCK_NUMBER_4,
      EA_BLOCK_AMOUNTS_4,
      EA_IMMEDIATE_DATA_4
   }
};

/**
 * EA_General contains block independent configuration parameters 
*/
CONST(EA_General_Type, EA_CONST) EA_General=
{
   &NvM_JobErrorNotification,             /* Job error notification */

   &NvM_JobEndNotification             /* Job end notification */

};


CONST(Ea_SetModeFctPtrType,EA_CONST) Ea_SetModeFctPtr[EA_NUMBER_OF_EEP_DEVICES] =
{
   &Eep_31_AT25256B_SetMode
};

CONST(Ea_ReadFctPtrType,EA_CONST) Ea_ReadFctPtr[EA_NUMBER_OF_EEP_DEVICES] =
{
   &Eep_31_AT25256B_ReadWrapper
};

CONST(Ea_WriteFctPtrType,EA_CONST) Ea_WriteFctPtr[EA_NUMBER_OF_EEP_DEVICES] =
{
   &Eep_31_AT25256B_WriteWrapper
};

CONST(Ea_CancelFctPtrType,EA_CONST) Ea_CancelFctPtr[EA_NUMBER_OF_EEP_DEVICES] =
{
   &Eep_31_AT25256B_Cancel
};

CONST(Ea_GetStatusFctPtrType,EA_CONST) Ea_GetStatusFctPtr[EA_NUMBER_OF_EEP_DEVICES] =
{
   &Eep_31_AT25256B_GetStatus
};

CONST(Ea_GetJobResultFctPtrType,EA_CONST) Ea_GetJobResultFctPtr[EA_NUMBER_OF_EEP_DEVICES] =
{
   &Eep_31_AT25256B_GetJobResult
};

CONST(Ea_EraseFctPtrType,EA_CONST) Ea_EraseFctPtr[EA_NUMBER_OF_EEP_DEVICES] =
{
   &Eep_31_AT25256B_EraseWrapper
};

#define EA_STOP_SEC_CONST_UNSPECIFIED
#include "Ea_MemMap.h"/* KW MISRA.INCL.INSIDE */
#define EA_START_SEC_CODE
#include "Ea_MemMap.h"/* KW MISRA.INCL.INSIDE */
/* Wrapper Function for Eep_Read,Eep_Write and Eep_Erase.These Wrapper functions
 * will select the curresponding AddressType and LengthType while invoking Read,Write or Erase
 */
static FUNC(Std_ReturnType, EA_CODE)Eep_31_AT25256B_ReadWrapper
(
   VAR(uint32, AUTOMATIC) EepromAddress,
   P2VAR(uint8, AUTOMATIC,EA_APPL_DATA) DataBufferPtr,
   VAR(uint32, AUTOMATIC) Length
)
{
   return Eep_31_AT25256B_Read((Eep_31_AT25256B_AddressType) EepromAddress, DataBufferPtr, (Eep_31_AT25256B_LengthType) Length);
}
static FUNC(Std_ReturnType, EA_CODE)Eep_31_AT25256B_WriteWrapper
(
   VAR(uint32, AUTOMATIC) EepromAddress,
   P2CONST(uint8, AUTOMATIC,EA_APPL_DATA) DataBufferPtr,
   VAR(uint32, AUTOMATIC) Length
)
{
   return Eep_31_AT25256B_Write((Eep_31_AT25256B_AddressType) EepromAddress, DataBufferPtr, (Eep_31_AT25256B_LengthType) Length);
}
static FUNC(Std_ReturnType, EA_CODE)Eep_31_AT25256B_EraseWrapper
(
   VAR(uint32, AUTOMATIC) EepromAddress,
   VAR(uint32, AUTOMATIC) Length
)
{
   return Eep_31_AT25256B_Erase((Eep_31_AT25256B_AddressType) EepromAddress, (Eep_31_AT25256B_LengthType) Length);
}
#define EA_STOP_SEC_CODE
#include "Ea_MemMap.h"/* KW MISRA.INCL.INSIDE */
/* END OF FILE -------------------------------------------------------------- */
