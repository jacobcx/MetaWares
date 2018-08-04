/**
* @file    Port_PBcfg.c
* @implements Port_PBcfg.c_Artifact
*
* @version 1.0.2
* @brief   AUTOSAR Port - PORT driver configuration.
* @details This file contains the PORT driver postbuild configuration.
*
* @addtogroup  Port
* @{
*/
/*=================================================================================================
*   Project              : AUTOSAR 4.0 MCAL
*   Platform             : PA
*   Peripheral           : SIUL2
*   Dependencies         : none
*
*   Autosar Version      : 4.0.3
*   Autosar Revision     : ASR_REL_4_0_REV_0003
*   Autosar Conf.Variant :
*   SW Version           : 1.0.2
*   Build Version        : MPC574XR_MCAL_1_0_2_RTM_ASR_REL_4_0_REV_0003_20170331
*
*   (c) Copyright (c) 2006-2016 Freescale Semiconductor, Inc. 
*       Copyright 2017 NXP
*   All Rights Reserved.
=================================================================================================*/
/*=================================================================================================
=================================================================================================*/

#ifdef __cplusplus
extern "C" {
#endif

/**
* @page misra_violations MISRA-C:2004 violations
*
* @section PORT_PBCFG_REF_1
* Violates MISRA 2004 Advisory Rule 19.1, only preprocessor statements and comments before #include'. 
* MemMap.h is included after each section define in order to set the current memory section as defined by AUTOSAR.
*
* @section PORT_PBCFG_REF_2
* Violates MISRA 2004 Required Rule 19.15, Precautions shall be taken in order to prevent the
* contents of a header being included twice.
* This violation is not fixed since the inclusion of MemMap.h is as per Autosar requirement MEMMAP003.
*
* @section PORT_PBCFG_REF_3
* Violates MISRA 2004 Required Rule 1.4, The compiler/linker shall be checked to ensure that 31
* character significance and case sensitivity are supported for external identifiers. 
* The used compilers/linkers allow more than 31 characters significance for external identifiers.
*
* @section PORT_PBCFG_REF_4
* Violates MISRA 2004 Required Rule 8.10, All declarations and definitions of objects or 
* functions at file scope shall have internal linkage unless external linkage is required. 
* This warning appears when defining functions or objects that will be used by the upper layers.
*
* @section [global]
* Violates MISRA 2004 Required Rule 5.1, Identifiers (internal and external) shall not rely 
* on the significance of more than 31 characters. The used compilers use more than 31 chars for
* identifiers.
*/

/*=================================================================================================
*                                        INCLUDE FILES
* 1) system and project includes
* 2) needed interfaces from external units
* 3) internal and external interfaces from this unit
=================================================================================================*/

#include "Port.h"

#if (STD_OFF == PORT_PRECOMPILE_SUPPORT)
    

/*=================================================================================================
*                              SOURCE FILE VERSION INFORMATION
=================================================================================================*/
/**
* @brief Parameters that shall be published within the Port driver header file and also in the
*        module's description file
* @details The integration of incompatible files shall be avoided.
*
*/
#define PORT_VENDOR_ID_PBCFG_C                       43
/*
* @violates @ref PORT_PBCFG_REF_3 The compiler/linker shall be checked to ensure that 31 character
* signifiance and case sensitivity are supported for external identifiers.
*/
#define PORT_AR_RELEASE_MAJOR_VERSION_PBCFG_C        4
/*
* @violates @ref PORT_PBCFG_REF_3 The compiler/linker shall be checked to ensure that 31 character
* signifiance and case sensitivity are supported for external identifiers.
*/
#define PORT_AR_RELEASE_MINOR_VERSION_PBCFG_C        0

/** @violates @ref PORT_PBCFG_REF_3 MISRA 2004 Rule 1.4, The compiler/linker shall be checked to
*   ensure that 31 character significance and case sensitivity are supported for external
*   identifiers.
*/
#define PORT_AR_RELEASE_REVISION_VERSION_PBCFG_C     3
#define PORT_SW_MAJOR_VERSION_PBCFG_C                1
#define PORT_SW_MINOR_VERSION_PBCFG_C                0
#define PORT_SW_PATCH_VERSION_PBCFG_C                2

/*=================================================================================================
*                                     FILE VERSION CHECKS
=================================================================================================*/

/* Check if Port_PBcfg.c and Port.h are of the same vendor */
#if (PORT_VENDOR_ID_PBCFG_C != PORT_VENDOR_ID)
    #error "Port_PBcfg.c and Port.h have different vendor ids"
#endif
/* Check if Port_PBcfg.c and Port.h are of the same Autosar version */
#if ((PORT_AR_RELEASE_MAJOR_VERSION_PBCFG_C    != PORT_AR_RELEASE_MAJOR_VERSION) || \
     (PORT_AR_RELEASE_MINOR_VERSION_PBCFG_C    != PORT_AR_RELEASE_MINOR_VERSION) || \
     (PORT_AR_RELEASE_REVISION_VERSION_PBCFG_C != PORT_AR_RELEASE_REVISION_VERSION) \
    )
    #error "AutoSar Version Numbers of Port_PBcfg.c and Port.h are different"
#endif

/* Check if Port_PBcfg.c and Port.h are of the same software version */
#if ((PORT_SW_MAJOR_VERSION_PBCFG_C != PORT_SW_MAJOR_VERSION) || \
     (PORT_SW_MINOR_VERSION_PBCFG_C != PORT_SW_MINOR_VERSION) || \
     (PORT_SW_PATCH_VERSION_PBCFG_C != PORT_SW_PATCH_VERSION)    \
    )
    #error "Software Version Numbers of Port_PBcfg.c and Port.h are different"
#endif

/*=================================================================================================
*                          LOCAL TYPEDEFS (STRUCTURES, UNIONS, ENUMS)
=================================================================================================*/


/*=================================================================================================
*                                       LOCAL MACROS
=================================================================================================*/


/*=================================================================================================
*                                      LOCAL CONSTANTS
=================================================================================================*/

#define PORT_START_SEC_CONFIG_DATA_16
/** @violates @ref PORT_PBCFG_REF_2 Repeated include file MemMap.h */
#include "MemMap.h"


/*
* @violates @ref PORT_PBCFG_REF_2 Violates MISRA 2004 Required Rules 10.1,Implicit conversion changes signedness.
*/
#if (PORT_MAX_UNUSED_PADS_0_U16 != 0U)
/**
* @brief NoDefaultPadsArray is an array containing Unimplemented pads and User pads
* @violates @ref PORT_PBCFG_REF_3 The compiler/linker shall be checked to ensure that 31 character
* @violates @ref PORT_PBCFG_REF_4 Violates MISRA 2004 Required Rule 8.10
*/
static CONST(uint16, PORT_CONST) Port_au16NoUnUsedPadsArrayDefault_0[PORT_MAX_UNUSED_PADS_0_U16]=
{
(uint16)0,
(uint16)1,
(uint16)2,
(uint16)3,
(uint16)4,
(uint16)5,
(uint16)6,
(uint16)7,
(uint16)8,
(uint16)9,
(uint16)10,
(uint16)11,
(uint16)12,
(uint16)13,
(uint16)16,
(uint16)17,
(uint16)32,
(uint16)33,
(uint16)35,
(uint16)36,
(uint16)40,
(uint16)41,
(uint16)45,
(uint16)52,
(uint16)53,
(uint16)54,
(uint16)55,
(uint16)56,
(uint16)59,
(uint16)61,
(uint16)62,
(uint16)80,
(uint16)81,
(uint16)82,
(uint16)83,
(uint16)84,
(uint16)85,
(uint16)86,
(uint16)87,
(uint16)88,
(uint16)89,
(uint16)90,
(uint16)91,
(uint16)92,
(uint16)93,
(uint16)97,
(uint16)98,
(uint16)99,
(uint16)100,
(uint16)102,
(uint16)103,
(uint16)105,
(uint16)106,
(uint16)107,
(uint16)108,
(uint16)109,
(uint16)111,
(uint16)112,
(uint16)113,
(uint16)114,
(uint16)115,
(uint16)116,
(uint16)117,
(uint16)118,
(uint16)119,
(uint16)120,
(uint16)121,
(uint16)122,
(uint16)123,
(uint16)124,
(uint16)125,
(uint16)126,
(uint16)127,
(uint16)130,
(uint16)131,
(uint16)132,
(uint16)133,
(uint16)144,
(uint16)145,
(uint16)146,
(uint16)147,
(uint16)148,
(uint16)149,
(uint16)150,
(uint16)151,
(uint16)152,
(uint16)153,
(uint16)154,
(uint16)155,
(uint16)156,
(uint16)157,
(uint16)158,
(uint16)159,
(uint16)164,
(uint16)167,
(uint16)168,
(uint16)170,
(uint16)172,
(uint16)173,
(uint16)174,
(uint16)176,
(uint16)177,
(uint16)192,
(uint16)193,
(uint16)194,
(uint16)195,
(uint16)208,
(uint16)209,
(uint16)210,
(uint16)211,
(uint16)212,
(uint16)213,
(uint16)215,
(uint16)216,
(uint16)217,
(uint16)218,
(uint16)219,
(uint16)220,
(uint16)221,
(uint16)222,
(uint16)223,
(uint16)224,
(uint16)225,
(uint16)226,
(uint16)227,
(uint16)228,
(uint16)229,
(uint16)230,
(uint16)231,
(uint16)232,
(uint16)233,
(uint16)234,
(uint16)235,
(uint16)236,
(uint16)237,
(uint16)238,
(uint16)239,
(uint16)241,
(uint16)242,
(uint16)243,
(uint16)244,
(uint16)245,
(uint16)246,
(uint16)247,
(uint16)248,
(uint16)249,
(uint16)250,
(uint16)251,
(uint16)252,
(uint16)253,
(uint16)254,
(uint16)255
};
#endif

#define PORT_STOP_SEC_CONFIG_DATA_16
/**
* @violates @ref PORT_PBCFG_REF_1 only preprocessor statements and comments before '#include'
* @violates @ref PORT_PBCFG_REF_2 Repeated include file MemMap.h
*/
#include "MemMap.h"


#define PORT_START_SEC_CONFIG_DATA_UNSPECIFIED
/** @violates @ref PORT_PBCFG_REF_1 only preprocessor statements and comments before '#include' */
/** @violates @ref PORT_PBCFG_REF_2 Repeated include file MemMap.h */
#include "MemMap.h"


/**
 * @brief Default Configuration for Pins not initialized
 * @violates @ref PORT_PBCFG_REF_4 Violates MISRA 2004 Required Rule 8.10 */
static CONST(Port_Siul2_UnUsedPinConfigType, PORT_CONST) Port_UnUsedPin_0 =
{
    /**
    * @note: Configuration of Default pin
    */
    (uint32)0x00080000, (uint8)0
    
};

/**
* @brief Pin default configuration data for configPB_0
* @violates @ref PORT_PBCFG_REF_4 Violates MISRA 2004 Required Rule 8.10
*/
static CONST(Port_Siul2_PinConfigType, PORT_CONST) Port_aPinConfigDefaultPB_0[PORT_MAX_CONFIGURED_PADS_0_U16]=
{
    {(Port_InternalPinIdType)160, (uint32)0x02000000, (uint32)0x02000000, (uint8)0, (uint8)1, (boolean)TRUE, (boolean)TRUE, (boolean)TRUE},
    {(Port_InternalPinIdType)161, (uint32)0x02000000, (uint32)0x02000000, (uint8)0, (uint8)1, (boolean)TRUE, (boolean)TRUE, (boolean)TRUE},
    {(Port_InternalPinIdType)162, (uint32)0x02000000, (uint32)0x02000000, (uint8)0, (uint8)1, (boolean)TRUE, (boolean)TRUE, (boolean)TRUE},
    {(Port_InternalPinIdType)165, (uint32)0x02000000, (uint32)0x02000000, (uint8)0, (uint8)1, (boolean)TRUE, (boolean)TRUE, (boolean)TRUE},
    {(Port_InternalPinIdType)48, (uint32)0x00080000, (uint32)0x00000000, (uint8)0, (uint8)0, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)49, (uint32)0x02000008, (uint32)0x02000000, (uint8)0, (uint8)1, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)64, (uint32)0x0200000d, (uint32)0x02000000, (uint8)0, (uint8)1, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)60, (uint32)0x0200000d, (uint32)0x02000000, (uint8)0, (uint8)1, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)63, (uint32)0x00080000, (uint32)0x00000000, (uint8)0, (uint8)0, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)58, (uint32)0x0200000e, (uint32)0x02000000, (uint8)0, (uint8)1, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)50, (uint32)0x00080000, (uint32)0x00000000, (uint8)0, (uint8)0, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)51, (uint32)0x02000009, (uint32)0x02000000, (uint8)0, (uint8)1, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)37, (uint32)0x0200000e, (uint32)0x02000000, (uint8)0, (uint8)1, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)38, (uint32)0x00080000, (uint32)0x00000000, (uint8)0, (uint8)0, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)39, (uint32)0x02000008, (uint32)0x02000000, (uint8)0, (uint8)1, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)42, (uint32)0x0200000d, (uint32)0x02000000, (uint8)0, (uint8)1, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)43, (uint32)0x00080000, (uint32)0x00000000, (uint8)0, (uint8)0, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)44, (uint32)0x0200000d, (uint32)0x02000000, (uint8)0, (uint8)1, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)128, (uint32)0x00080000, (uint32)0x00000000, (uint8)0, (uint8)0, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)129, (uint32)0x02000008, (uint32)0x02000000, (uint8)0, (uint8)1, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)34, (uint32)0x0200000e, (uint32)0x02000000, (uint8)0, (uint8)1, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)110, (uint32)0x22000000, (uint32)0x02000000, (uint8)1, (uint8)1, (boolean)TRUE, (boolean)TRUE, (boolean)TRUE},
    {(Port_InternalPinIdType)57, (uint32)0x0200000e, (uint32)0x02000000, (uint8)0, (uint8)1, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)171, (uint32)0x02000000, (uint32)0x02000000, (uint8)1, (uint8)1, (boolean)TRUE, (boolean)TRUE, (boolean)TRUE},
    {(Port_InternalPinIdType)169, (uint32)0x02000000, (uint32)0x02000000, (uint8)1, (uint8)1, (boolean)TRUE, (boolean)TRUE, (boolean)TRUE},
    {(Port_InternalPinIdType)214, (uint32)0x00400000, (uint32)0x00000000, (uint8)0, (uint8)0, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)101, (uint32)0x02000003, (uint32)0x02000000, (uint8)0, (uint8)1, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE},
    {(Port_InternalPinIdType)240, (uint32)0x00400000, (uint32)0x00000000, (uint8)0, (uint8)0, (boolean)FALSE, (boolean)FALSE, (boolean)TRUE}
};

/**
* @brief Pad selection default configuration for configPB_0
* @violates @ref PORT_PBCFG_REF_4 Violates MISRA 2004 Required Rule 8.10
*/
static CONST(Port_Siul2_PadSelConfigType, PORT_CONST) Port_aPadSelConfigDefaultPB_0[PORT_NMBR_INMUX_REGS_U16]=
{
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0x00000000,
         (uint32)0x00000001,
         (uint32)0x00000001,
         (uint32)0x00000002,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000001,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0x00000000,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0x00000002,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0x00000003,
         (uint32)0x00000000,
         (uint32)0xFFFFFFFFU,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0xFFFFFFFFU,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0x00000000,
         (uint32)0xFFFFFFFFU,
         (uint32)0x00000000,
};

#define PORT_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/**
* @violates @ref PORT_PBCFG_REF_1 only preprocessor statements and comments before '#include'
* @violates @ref PORT_PBCFG_REF_2 Repeated include file MemMap.h
*/
#include "MemMap.h"
/*=================================================================================================
*                                      LOCAL VARIABLES
=================================================================================================*/


/*=================================================================================================
*                                      GLOBAL CONSTANTS
=================================================================================================*/

#define PORT_START_SEC_CONFIG_DATA_UNSPECIFIED
/** @violates @ref PORT_PBCFG_REF_1 only preprocessor statements and comments before '#include' */
/** @violates @ref PORT_PBCFG_REF_2 Repeated include file MemMap.h */
#include "MemMap.h"


/**
* @brief This table contains all the Configured Port Pin parameters and the
*        number of Port Pins configured by the tool for the post-build mode PortConfigSet
* @violates @ref PORT_PBCFG_REF_4 Violates MISRA 2004 Required Rule 8.10
*/
CONST(Port_ConfigType, PORT_CONST) PortConfigSet =
{
    PORT_MAX_CONFIGURED_PADS_0_U16,
    PORT_MAX_UNUSED_PADS_0_U16,
/**
* @violates @ref PORT_PBCFG_REF_2 Violates MISRA 2004 Required Rule 10.1, Implicit
* conversion changes signedness.
*/ 
#if (PORT_MAX_UNUSED_PADS_0_U16 != 0U)
    Port_au16NoUnUsedPadsArrayDefault_0,
#else
    NULL_PTR,
#endif
    &Port_UnUsedPin_0,
    Port_aPinConfigDefaultPB_0,
    Port_aPadSelConfigDefaultPB_0
};
#if (STD_ON == PORT_SET_PIN_MODE_API)

/**
* @brief Port INOUT settings data
*/
CONST(Port_InoutSettingType,PORT_CONST) Port_aPadFunctInoutMuxSettings[PORT_INOUT_TABLE_NUM_ENTRIES_U16] = 
{

  /* Inout settings for pad PORT0:      {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_24_IN_OUT input func */
  {0U, 32U, 24U, 8U}, 
  /* Inout settings for pad PORT1:      {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_23_IN_OUT input func */
  {1U, 32U, 23U, 8U}, 
  /* Inout settings for pad PORT2:      {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_22_IN_OUT input func */
  {2U, 32U, 22U, 8U}, 
  /* Inout settings for pad PORT3:      {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_21_IN_OUT input func */
  {3U, 32U, 21U, 8U}, 
  /* Inout settings for pad PORT4:      {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_20_IN_OUT input func */
  {4U, 32U, 20U, 8U}, 
  /* Inout settings for pad PORT5:      {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_19_IN_OUT input func */
  {5U, 32U, 19U, 8U}, 
  /* Inout settings for pad PORT6:      {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_18_IN_OUT input func */
  {6U, 32U, 18U, 8U}, 
  /* Inout settings for pad PORT7:      {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_17_IN_OUT input func */
  {7U, 32U, 17U, 8U}, 
  /* Inout settings for pad PORT8:      {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_16_IN_OUT input func */
  {8U, 32U, 16U, 8U}, 
  /* Inout settings for pad PORT9:      {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_15_IN_OUT input func */
  {9U, 32U, 15U, 8U}, 
  /* Inout settings for pad PORT10:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_14_IN_OUT input func */
  {10U, 32U, 14U, 8U}, 
  /* Inout settings for pad PORT11:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_13_IN_OUT input func */
  {11U, 32U, 13U, 8U}, 
  /* Inout settings for pad PORT12:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_12_IN_OUT input func */
  {12U, 32U, 12U, 8U}, 
  /* Inout settings for pad PORT13:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_11_IN_OUT input func */
  {13U, 32U, 11U, 8U}, 
  /* Inout settings for pad PORT32:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_25_IN_OUT input func */
  {32U, 32U, 25U, 8U}, 
  /* eTPU_B_17_IN_OUT input func */
  {32U, 33U, 49U, 8U}, 
  /* eMIOS_0_8_IN_OUT input func */
  {32U, 34U, 78U, 8U}, 
  /* Inout settings for pad PORT33:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_26_IN_OUT input func */
  {33U, 32U, 26U, 8U}, 
  /* eTPU_B_18_IN_OUT input func */
  {33U, 33U, 50U, 8U}, 
  /* eMIOS_0_9_IN_OUT input func */
  {33U, 34U, 79U, 8U}, 
  /* Inout settings for pad PORT34:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_27_IN_OUT input func */
  {34U, 32U, 27U, 8U}, 
  /* eTPU_B_19_IN_OUT input func */
  {34U, 33U, 51U, 8U}, 
  /* eMIOS_0_10_IN_OUT input func */
  {34U, 34U, 80U, 8U}, 
  /* Inout settings for pad PORT35:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_28_IN_OUT input func */
  {35U, 32U, 28U, 8U}, 
  /* eTPU_B_20_IN_OUT input func */
  {35U, 33U, 52U, 8U}, 
  /* eMIOS_0_11_IN_OUT input func */
  {35U, 34U, 81U, 8U}, 
  /* Inout settings for pad PORT36:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_29_IN_OUT input func */
  {36U, 32U, 29U, 8U}, 
  /* eTPU_B_21_IN_OUT input func */
  {36U, 33U, 53U, 8U}, 
  /* eMIOS_0_12_IN_OUT input func */
  {36U, 34U, 82U, 8U}, 
  /* Inout settings for pad PORT37:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_30_IN_OUT input func */
  {37U, 32U, 30U, 8U}, 
  /* eTPU_B_22_IN_OUT input func */
  {37U, 33U, 54U, 8U}, 
  /* eMIOS_0_13_IN_OUT input func */
  {37U, 34U, 83U, 8U}, 
  /* Inout settings for pad PORT38:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_31_IN_OUT input func */
  {38U, 32U, 31U, 8U}, 
  /* eTPU_B_23_IN_OUT input func */
  {38U, 33U, 55U, 8U}, 
  /* eMIOS_0_14_IN_OUT input func */
  {38U, 34U, 84U, 8U}, 
  /* Inout settings for pad PORT39:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_0_IN_OUT input func */
  {39U, 32U, 0U, 8U}, 
  /* eTPU_B_24_IN_OUT input func */
  {39U, 33U, 56U, 8U}, 
  /* eMIOS_0_15_IN_OUT input func */
  {39U, 34U, 85U, 8U}, 
  /* Inout settings for pad PORT40:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_1_IN_OUT input func */
  {40U, 32U, 1U, 8U}, 
  /* eTPU_B_25_IN_OUT input func */
  {40U, 33U, 57U, 8U}, 
  /* eMIOS_0_16_IN_OUT input func */
  {40U, 34U, 86U, 8U}, 
  /* Inout settings for pad PORT41:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_2_IN_OUT input func */
  {41U, 32U, 2U, 8U}, 
  /* eTPU_B_26_IN_OUT input func */
  {41U, 33U, 58U, 8U}, 
  /* eMIOS_0_17_IN_OUT input func */
  {41U, 34U, 87U, 8U}, 
  /* Inout settings for pad PORT42:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_3_IN_OUT input func */
  {42U, 32U, 3U, 8U}, 
  /* eTPU_B_27_IN_OUT input func */
  {42U, 33U, 59U, 8U}, 
  /* eMIOS_0_18_IN_OUT input func */
  {42U, 34U, 88U, 8U}, 
  /* Inout settings for pad PORT43:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_4_IN_OUT input func */
  {43U, 32U, 4U, 8U}, 
  /* eTPU_B_28_IN_OUT input func */
  {43U, 33U, 60U, 8U}, 
  /* eMIOS_0_19_IN_OUT input func */
  {43U, 34U, 89U, 8U}, 
  /* Inout settings for pad PORT44:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_5_IN_OUT input func */
  {44U, 32U, 5U, 8U}, 
  /* eTPU_B_29_IN_OUT input func */
  {44U, 33U, 61U, 8U}, 
  /* eMIOS_0_20_IN_OUT input func */
  {44U, 34U, 90U, 8U}, 
  /* Inout settings for pad PORT45:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_6_IN_OUT input func */
  {45U, 32U, 6U, 8U}, 
  /* eTPU_B_30_IN_OUT input func */
  {45U, 33U, 62U, 8U}, 
  /* eMIOS_0_21_IN_OUT input func */
  {45U, 34U, 91U, 8U}, 
  /* Inout settings for pad PORT48:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_8_IN_OUT input func */
  {48U, 32U, 8U, 8U}, 
  /* eTPU_B_0_IN_OUT input func */
  {48U, 33U, 32U, 8U}, 
  /* eMIOS_1_8_IN_OUT input func */
  {48U, 34U, 104U, 8U}, 
  /* Inout settings for pad PORT49:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_9_IN_OUT input func */
  {49U, 32U, 9U, 8U}, 
  /* eTPU_B_1_IN_OUT input func */
  {49U, 33U, 33U, 8U}, 
  /* eMIOS_1_9_IN_OUT input func */
  {49U, 34U, 105U, 8U}, 
  /* Inout settings for pad PORT50:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_10_IN_OUT input func */
  {50U, 32U, 10U, 8U}, 
  /* eTPU_B_2_IN_OUT input func */
  {50U, 33U, 34U, 8U}, 
  /* eMIOS_1_10_IN_OUT input func */
  {50U, 34U, 106U, 8U}, 
  /* Inout settings for pad PORT51:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_11_IN_OUT input func */
  {51U, 32U, 11U, 9U}, 
  /* eTPU_B_3_IN_OUT input func */
  {51U, 33U, 35U, 8U}, 
  /* eMIOS_1_11_IN_OUT input func */
  {51U, 34U, 107U, 8U}, 
  /* Inout settings for pad PORT52:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_12_IN_OUT input func */
  {52U, 32U, 12U, 9U}, 
  /* eTPU_B_4_IN_OUT input func */
  {52U, 33U, 36U, 8U}, 
  /* eMIOS_1_12_IN_OUT input func */
  {52U, 34U, 108U, 8U}, 
  /* Inout settings for pad PORT53:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_13_IN_OUT input func */
  {53U, 32U, 13U, 9U}, 
  /* eTPU_B_5_IN_OUT input func */
  {53U, 33U, 37U, 8U}, 
  /* eMIOS_1_13_IN_OUT input func */
  {53U, 34U, 109U, 8U}, 
  /* Inout settings for pad PORT54:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_14_IN_OUT input func */
  {54U, 32U, 14U, 9U}, 
  /* eTPU_B_6_IN_OUT input func */
  {54U, 33U, 38U, 8U}, 
  /* eMIOS_1_14_IN_OUT input func */
  {54U, 34U, 110U, 8U}, 
  /* Inout settings for pad PORT55:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_15_IN_OUT input func */
  {55U, 32U, 15U, 9U}, 
  /* eTPU_B_7_IN_OUT input func */
  {55U, 33U, 39U, 8U}, 
  /* eMIOS_1_15_IN_OUT input func */
  {55U, 34U, 111U, 8U}, 
  /* Inout settings for pad PORT56:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_16_IN_OUT input func */
  {56U, 32U, 16U, 9U}, 
  /* eTPU_B_8_IN_OUT input func */
  {56U, 33U, 40U, 8U}, 
  /* eMIOS_1_16_IN_OUT input func */
  {56U, 34U, 112U, 8U}, 
  /* Inout settings for pad PORT57:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_17_IN_OUT input func */
  {57U, 32U, 17U, 9U}, 
  /* eTPU_B_9_IN_OUT input func */
  {57U, 33U, 41U, 8U}, 
  /* eMIOS_1_17_IN_OUT input func */
  {57U, 34U, 113U, 8U}, 
  /* Inout settings for pad PORT58:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_18_IN_OUT input func */
  {58U, 32U, 18U, 9U}, 
  /* eTPU_B_10_IN_OUT input func */
  {58U, 33U, 42U, 8U}, 
  /* eMIOS_1_18_IN_OUT input func */
  {58U, 34U, 114U, 8U}, 
  /* Inout settings for pad PORT59:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_19_IN_OUT input func */
  {59U, 32U, 19U, 9U}, 
  /* eTPU_B_11_IN_OUT input func */
  {59U, 33U, 43U, 8U}, 
  /* eMIOS_1_19_IN_OUT input func */
  {59U, 34U, 115U, 8U}, 
  /* Inout settings for pad PORT60:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_20_IN_OUT input func */
  {60U, 32U, 20U, 9U}, 
  /* eTPU_B_12_IN_OUT input func */
  {60U, 33U, 44U, 8U}, 
  /* eMIOS_1_20_IN_OUT input func */
  {60U, 34U, 116U, 8U}, 
  /* Inout settings for pad PORT61:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_21_IN_OUT input func */
  {61U, 32U, 21U, 9U}, 
  /* eTPU_B_13_IN_OUT input func */
  {61U, 33U, 45U, 8U}, 
  /* eMIOS_1_21_IN_OUT input func */
  {61U, 34U, 117U, 8U}, 
  /* Inout settings for pad PORT62:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_22_IN_OUT input func */
  {62U, 32U, 22U, 9U}, 
  /* eTPU_B_14_IN_OUT input func */
  {62U, 33U, 46U, 8U}, 
  /* eMIOS_1_22_IN_OUT input func */
  {62U, 34U, 118U, 8U}, 
  /* Inout settings for pad PORT63:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_23_IN_OUT input func */
  {63U, 32U, 23U, 9U}, 
  /* eTPU_B_15_IN_OUT input func */
  {63U, 33U, 47U, 8U}, 
  /* eMIOS_1_23_IN_OUT input func */
  {63U, 34U, 119U, 8U}, 
  /* Inout settings for pad PORT64:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_24_IN_OUT input func */
  {64U, 32U, 24U, 9U}, 
  /* eTPU_B_16_IN_OUT input func */
  {64U, 33U, 48U, 8U}, 
  /* eMIOS_0_8_IN_OUT input func */
  {64U, 34U, 78U, 9U}, 
  /* DSPI_4_SCLK_IN_OUT input func */
  {64U, 44U, 301U, 2U}, 
  /* Inout settings for pad PORT80:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_0_IN_OUT input func */
  {80U, 33U, 32U, 9U}, 
  /* eTPU_B_16_IN_OUT input func */
  {80U, 34U, 48U, 9U}, 
  /* eMIOS_1_16_IN_OUT input func */
  {80U, 35U, 112U, 9U}, 
  /* Inout settings for pad PORT81:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_1_IN_OUT input func */
  {81U, 33U, 33U, 9U}, 
  /* eTPU_B_17_IN_OUT input func */
  {81U, 34U, 49U, 9U}, 
  /* eMIOS_1_17_IN_OUT input func */
  {81U, 35U, 113U, 9U}, 
  /* Inout settings for pad PORT82:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_18_IN_OUT input func */
  {82U, 33U, 50U, 9U}, 
  /* Inout settings for pad PORT83:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_19_IN_OUT input func */
  {83U, 33U, 51U, 9U}, 
  /* Inout settings for pad PORT84:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_20_IN_OUT input func */
  {84U, 33U, 52U, 9U}, 
  /* eMIOS_1_18_IN_OUT input func */
  {84U, 34U, 114U, 9U}, 
  /* Inout settings for pad PORT85:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_21_IN_OUT input func */
  {85U, 33U, 53U, 9U}, 
  /* eMIOS_1_19_IN_OUT input func */
  {85U, 34U, 115U, 9U}, 
  /* Inout settings for pad PORT86:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_22_IN_OUT input func */
  {86U, 33U, 54U, 9U}, 
  /* Inout settings for pad PORT87:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_23_IN_OUT input func */
  {87U, 33U, 55U, 9U}, 
  /* Inout settings for pad PORT88:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_24_IN_OUT input func */
  {88U, 33U, 56U, 9U}, 
  /* eMIOS_1_20_IN_OUT input func */
  {88U, 34U, 116U, 9U}, 
  /* Inout settings for pad PORT89:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_23_IN_OUT input func */
  {89U, 33U, 55U, 10U}, 
  /* eMIOS_1_21_IN_OUT input func */
  {89U, 34U, 117U, 9U}, 
  /* Inout settings for pad PORT90:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_24_IN_OUT input func */
  {90U, 33U, 56U, 10U}, 
  /* eMIOS_1_22_IN_OUT input func */
  {90U, 34U, 118U, 9U}, 
  /* Inout settings for pad PORT91:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_5_IN_OUT input func */
  {91U, 32U, 5U, 9U}, 
  /* eTPU_B_25_IN_OUT input func */
  {91U, 33U, 57U, 9U}, 
  /* eMIOS_1_23_IN_OUT input func */
  {91U, 34U, 119U, 9U}, 
  /* Inout settings for pad PORT92:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_6_IN_OUT input func */
  {92U, 32U, 6U, 9U}, 
  /* eTPU_B_26_IN_OUT input func */
  {92U, 33U, 58U, 9U}, 
  /* eMIOS_1_15_IN_OUT input func */
  {92U, 34U, 111U, 9U}, 
  /* Inout settings for pad PORT93:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_7_IN_OUT input func */
  {93U, 32U, 7U, 8U}, 
  /* eTPU_B_27_IN_OUT input func */
  {93U, 33U, 59U, 9U}, 
  /* eMIOS_1_14_IN_OUT input func */
  {93U, 34U, 110U, 9U}, 
  /* Inout settings for pad PORT97:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_8_IN_OUT input func */
  {97U, 32U, 8U, 9U}, 
  /* eTPU_B_28_IN_OUT input func */
  {97U, 33U, 60U, 9U}, 
  /* eMIOS_0_8_IN_OUT input func */
  {97U, 34U, 78U, 10U}, 
  /* Inout settings for pad PORT98:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_9_IN_OUT input func */
  {98U, 32U, 9U, 9U}, 
  /* eTPU_B_29_IN_OUT input func */
  {98U, 33U, 61U, 9U}, 
  /* eMIOS_0_9_IN_OUT input func */
  {98U, 34U, 79U, 9U}, 
  /* Inout settings for pad PORT99:     {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_30_IN_OUT input func */
  {99U, 33U, 62U, 9U}, 
  /* eMIOS_0_10_IN_OUT input func */
  {99U, 34U, 80U, 9U}, 
  /* Inout settings for pad PORT100:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_10_IN_OUT input func */
  {100U, 32U, 10U, 9U}, 
  /* eTPU_B_31_IN_OUT input func */
  {100U, 33U, 63U, 8U}, 
  /* eMIOS_0_11_IN_OUT input func */
  {100U, 34U, 81U, 9U}, 
  /* Inout settings for pad PORT101:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_11_IN_OUT input func */
  {101U, 32U, 11U, 10U}, 
  /* eTPU_B_0_IN_OUT input func */
  {101U, 33U, 32U, 10U}, 
  /* eMIOS_0_12_IN_OUT input func */
  {101U, 34U, 82U, 9U}, 
  /* Inout settings for pad PORT102:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_13_IN_OUT input func */
  {102U, 32U, 13U, 10U}, 
  /* eTPU_B_1_IN_OUT input func */
  {102U, 33U, 33U, 10U}, 
  /* eMIOS_0_13_IN_OUT input func */
  {102U, 34U, 83U, 9U}, 
  /* Inout settings for pad PORT103:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_14_IN_OUT input func */
  {103U, 32U, 14U, 10U}, 
  /* eTPU_B_2_IN_OUT input func */
  {103U, 33U, 34U, 9U}, 
  /* eMIOS_0_14_IN_OUT input func */
  {103U, 34U, 84U, 9U}, 
  /* Inout settings for pad PORT105:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_15_IN_OUT input func */
  {105U, 32U, 15U, 10U}, 
  /* eTPU_B_3_IN_OUT input func */
  {105U, 33U, 35U, 9U}, 
  /* eMIOS_0_15_IN_OUT input func */
  {105U, 34U, 85U, 9U}, 
  /* Inout settings for pad PORT106:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_16_IN_OUT input func */
  {106U, 32U, 16U, 10U}, 
  /* eTPU_B_4_IN_OUT input func */
  {106U, 33U, 36U, 9U}, 
  /* eMIOS_0_16_IN_OUT input func */
  {106U, 34U, 86U, 9U}, 
  /* Inout settings for pad PORT107:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_17_IN_OUT input func */
  {107U, 32U, 17U, 10U}, 
  /* eTPU_B_5_IN_OUT input func */
  {107U, 33U, 37U, 9U}, 
  /* eMIOS_0_17_IN_OUT input func */
  {107U, 34U, 87U, 9U}, 
  /* Inout settings for pad PORT108:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_18_IN_OUT input func */
  {108U, 32U, 18U, 10U}, 
  /* eTPU_B_6_IN_OUT input func */
  {108U, 33U, 38U, 9U}, 
  /* eMIOS_0_18_IN_OUT input func */
  {108U, 34U, 88U, 9U}, 
  /* Inout settings for pad PORT109:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_19_IN_OUT input func */
  {109U, 32U, 19U, 10U}, 
  /* eTPU_B_7_IN_OUT input func */
  {109U, 33U, 39U, 9U}, 
  /* eMIOS_0_19_IN_OUT input func */
  {109U, 34U, 89U, 9U}, 
  /* Inout settings for pad PORT110:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_20_IN_OUT input func */
  {110U, 32U, 20U, 10U}, 
  /* eTPU_B_8_IN_OUT input func */
  {110U, 33U, 40U, 9U}, 
  /* eMIOS_0_20_IN_OUT input func */
  {110U, 34U, 90U, 9U}, 
  /* Inout settings for pad PORT111:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_21_IN_OUT input func */
  {111U, 32U, 21U, 10U}, 
  /* eTPU_B_9_IN_OUT input func */
  {111U, 33U, 41U, 9U}, 
  /* eMIOS_0_21_IN_OUT input func */
  {111U, 34U, 91U, 9U}, 
  /* Inout settings for pad PORT112:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_22_IN_OUT input func */
  {112U, 32U, 22U, 10U}, 
  /* eTPU_B_10_IN_OUT input func */
  {112U, 33U, 42U, 9U}, 
  /* eMIOS_1_8_IN_OUT input func */
  {112U, 34U, 104U, 9U}, 
  /* Inout settings for pad PORT113:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_23_IN_OUT input func */
  {113U, 32U, 23U, 10U}, 
  /* eTPU_B_11_IN_OUT input func */
  {113U, 33U, 43U, 9U}, 
  /* eMIOS_1_9_IN_OUT input func */
  {113U, 34U, 105U, 9U}, 
  /* Inout settings for pad PORT114:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_24_IN_OUT input func */
  {114U, 32U, 24U, 10U}, 
  /* eTPU_B_12_IN_OUT input func */
  {114U, 33U, 44U, 9U}, 
  /* eMIOS_1_10_IN_OUT input func */
  {114U, 34U, 106U, 9U}, 
  /* Inout settings for pad PORT115:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_25_IN_OUT input func */
  {115U, 32U, 25U, 9U}, 
  /* eTPU_B_13_IN_OUT input func */
  {115U, 33U, 45U, 9U}, 
  /* eMIOS_1_11_IN_OUT input func */
  {115U, 34U, 107U, 9U}, 
  /* Inout settings for pad PORT116:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_26_IN_OUT input func */
  {116U, 32U, 26U, 9U}, 
  /* eTPU_B_14_IN_OUT input func */
  {116U, 33U, 46U, 9U}, 
  /* eMIOS_1_12_IN_OUT input func */
  {116U, 34U, 108U, 9U}, 
  /* Inout settings for pad PORT117:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_27_IN_OUT input func */
  {117U, 32U, 27U, 9U}, 
  /* eTPU_B_15_IN_OUT input func */
  {117U, 33U, 47U, 9U}, 
  /* eMIOS_1_13_IN_OUT input func */
  {117U, 34U, 109U, 9U}, 
  /* Inout settings for pad PORT118:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_28_IN_OUT input func */
  {118U, 32U, 28U, 9U}, 
  /* eTPU_B_16_IN_OUT input func */
  {118U, 33U, 48U, 10U}, 
  /* eMIOS_1_14_IN_OUT input func */
  {118U, 34U, 110U, 10U}, 
  /* Inout settings for pad PORT119:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_29_IN_OUT input func */
  {119U, 32U, 29U, 9U}, 
  /* eTPU_B_17_IN_OUT input func */
  {119U, 33U, 49U, 10U}, 
  /* eMIOS_1_15_IN_OUT input func */
  {119U, 34U, 111U, 10U}, 
  /* Inout settings for pad PORT120:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_30_IN_OUT input func */
  {120U, 32U, 30U, 9U}, 
  /* eTPU_B_18_IN_OUT input func */
  {120U, 33U, 50U, 10U}, 
  /* eMIOS_1_16_IN_OUT input func */
  {120U, 34U, 112U, 10U}, 
  /* Inout settings for pad PORT121:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_31_IN_OUT input func */
  {121U, 32U, 31U, 9U}, 
  /* eTPU_B_19_IN_OUT input func */
  {121U, 33U, 51U, 10U}, 
  /* eMIOS_1_17_IN_OUT input func */
  {121U, 34U, 113U, 10U}, 
  /* Inout settings for pad PORT122:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_12_IN_OUT input func */
  {122U, 32U, 12U, 10U}, 
  /* eTPU_B_20_IN_OUT input func */
  {122U, 33U, 52U, 10U}, 
  /* eMIOS_1_18_IN_OUT input func */
  {122U, 34U, 114U, 10U}, 
  /* Inout settings for pad PORT123:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_0_IN_OUT input func */
  {123U, 32U, 0U, 9U}, 
  /* eTPU_B_21_IN_OUT input func */
  {123U, 33U, 53U, 10U}, 
  /* eMIOS_1_19_IN_OUT input func */
  {123U, 34U, 115U, 10U}, 
  /* Inout settings for pad PORT124:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_1_IN_OUT input func */
  {124U, 32U, 1U, 9U}, 
  /* eTPU_B_22_IN_OUT input func */
  {124U, 33U, 54U, 10U}, 
  /* eMIOS_1_20_IN_OUT input func */
  {124U, 34U, 116U, 10U}, 
  /* Inout settings for pad PORT125:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_2_IN_OUT input func */
  {125U, 32U, 2U, 9U}, 
  /* eTPU_B_23_IN_OUT input func */
  {125U, 33U, 55U, 11U}, 
  /* eMIOS_1_21_IN_OUT input func */
  {125U, 34U, 117U, 10U}, 
  /* Inout settings for pad PORT126:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_3_IN_OUT input func */
  {126U, 32U, 3U, 9U}, 
  /* eTPU_B_24_IN_OUT input func */
  {126U, 33U, 56U, 11U}, 
  /* eMIOS_1_22_IN_OUT input func */
  {126U, 34U, 118U, 10U}, 
  /* Inout settings for pad PORT127:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_4_IN_OUT input func */
  {127U, 32U, 4U, 9U}, 
  /* eTPU_B_25_IN_OUT input func */
  {127U, 33U, 57U, 10U}, 
  /* eMIOS_1_23_IN_OUT input func */
  {127U, 34U, 119U, 10U}, 
  /* Inout settings for pad PORT128:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_5_IN_OUT input func */
  {128U, 32U, 5U, 10U}, 
  /* eTPU_B_26_IN_OUT input func */
  {128U, 33U, 58U, 10U}, 
  /* eMIOS_0_8_IN_OUT input func */
  {128U, 35U, 78U, 11U}, 
  /* Inout settings for pad PORT129:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_6_IN_OUT input func */
  {129U, 32U, 6U, 10U}, 
  /* eTPU_B_27_IN_OUT input func */
  {129U, 33U, 59U, 10U}, 
  /* eMIOS_0_9_IN_OUT input func */
  {129U, 35U, 79U, 10U}, 
  /* Inout settings for pad PORT130:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_7_IN_OUT input func */
  {130U, 32U, 7U, 9U}, 
  /* eTPU_B_28_IN_OUT input func */
  {130U, 33U, 60U, 10U}, 
  /* eMIOS_0_10_IN_OUT input func */
  {130U, 35U, 80U, 10U}, 
  /* Inout settings for pad PORT131:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_8_IN_OUT input func */
  {131U, 32U, 8U, 10U}, 
  /* eTPU_B_29_IN_OUT input func */
  {131U, 33U, 61U, 10U}, 
  /* eMIOS_0_11_IN_OUT input func */
  {131U, 35U, 81U, 10U}, 
  /* Inout settings for pad PORT132:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_9_IN_OUT input func */
  {132U, 32U, 9U, 10U}, 
  /* eTPU_B_30_IN_OUT input func */
  {132U, 33U, 62U, 10U}, 
  /* eMIOS_0_12_IN_OUT input func */
  {132U, 35U, 82U, 10U}, 
  /* eMIOS_1_22_IN_OUT input func */
  {132U, 36U, 118U, 11U}, 
  /* Inout settings for pad PORT133:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_10_IN_OUT input func */
  {133U, 32U, 10U, 10U}, 
  /* eTPU_B_31_IN_OUT input func */
  {133U, 33U, 63U, 9U}, 
  /* eMIOS_0_13_IN_OUT input func */
  {133U, 35U, 83U, 10U}, 
  /* eMIOS_1_23_IN_OUT input func */
  {133U, 36U, 119U, 11U}, 
  /* Inout settings for pad PORT144:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_25_IN_OUT input func */
  {144U, 32U, 25U, 10U}, 
  /* eTPU_B_0_IN_OUT input func */
  {144U, 33U, 32U, 11U}, 
  /* Inout settings for pad PORT145:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_26_IN_OUT input func */
  {145U, 32U, 26U, 10U}, 
  /* eTPU_B_1_IN_OUT input func */
  {145U, 33U, 33U, 11U}, 
  /* Inout settings for pad PORT146:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_2_IN_OUT input func */
  {146U, 33U, 34U, 10U}, 
  /* Inout settings for pad PORT147:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_27_IN_OUT input func */
  {147U, 32U, 27U, 10U}, 
  /* eTPU_B_3_IN_OUT input func */
  {147U, 33U, 35U, 10U}, 
  /* eMIOS_0_14_IN_OUT input func */
  {147U, 35U, 84U, 10U}, 
  /* Inout settings for pad PORT148:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_28_IN_OUT input func */
  {148U, 32U, 28U, 10U}, 
  /* eTPU_B_4_IN_OUT input func */
  {148U, 33U, 36U, 10U}, 
  /* eMIOS_0_15_IN_OUT input func */
  {148U, 35U, 85U, 10U}, 
  /* Inout settings for pad PORT149:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_29_IN_OUT input func */
  {149U, 32U, 29U, 10U}, 
  /* eTPU_B_5_IN_OUT input func */
  {149U, 33U, 37U, 10U}, 
  /* eMIOS_0_22_IN_OUT input func */
  {149U, 35U, 92U, 8U}, 
  /* Inout settings for pad PORT150:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_25_IN_OUT input func */
  {150U, 32U, 25U, 11U}, 
  /* eTPU_B_6_IN_OUT input func */
  {150U, 33U, 38U, 10U}, 
  /* Inout settings for pad PORT151:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_30_IN_OUT input func */
  {151U, 32U, 30U, 10U}, 
  /* eTPU_B_7_IN_OUT input func */
  {151U, 33U, 39U, 10U}, 
  /* eMIOS_0_23_IN_OUT input func */
  {151U, 35U, 93U, 8U}, 
  /* Inout settings for pad PORT152:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_27_IN_OUT input func */
  {152U, 32U, 27U, 11U}, 
  /* eTPU_B_8_IN_OUT input func */
  {152U, 33U, 40U, 10U}, 
  /* Inout settings for pad PORT153:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_28_IN_OUT input func */
  {153U, 32U, 28U, 11U}, 
  /* eTPU_B_9_IN_OUT input func */
  {153U, 33U, 41U, 10U}, 
  /* Inout settings for pad PORT154:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_29_IN_OUT input func */
  {154U, 32U, 29U, 11U}, 
  /* eTPU_B_10_IN_OUT input func */
  {154U, 33U, 42U, 10U}, 
  /* Inout settings for pad PORT155:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_31_IN_OUT input func */
  {155U, 32U, 31U, 10U}, 
  /* eTPU_B_11_IN_OUT input func */
  {155U, 33U, 43U, 10U}, 
  /* eMIOS_1_8_IN_OUT input func */
  {155U, 35U, 104U, 10U}, 
  /* Inout settings for pad PORT156:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_12_IN_OUT input func */
  {156U, 33U, 44U, 10U}, 
  /* eMIOS_1_9_IN_OUT input func */
  {156U, 35U, 105U, 10U}, 
  /* Inout settings for pad PORT157:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_13_IN_OUT input func */
  {157U, 33U, 45U, 10U}, 
  /* eMIOS_1_10_IN_OUT input func */
  {157U, 35U, 106U, 10U}, 
  /* Inout settings for pad PORT158:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_14_IN_OUT input func */
  {158U, 33U, 46U, 10U}, 
  /* eMIOS_1_11_IN_OUT input func */
  {158U, 35U, 107U, 10U}, 
  /* Inout settings for pad PORT159:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_15_IN_OUT input func */
  {159U, 33U, 47U, 10U}, 
  /* eMIOS_1_12_IN_OUT input func */
  {159U, 35U, 108U, 10U}, 
  /* Inout settings for pad PORT160:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_17_IN_OUT input func */
  {160U, 33U, 49U, 11U}, 
  /* eMIOS_1_13_IN_OUT input func */
  {160U, 35U, 109U, 10U}, 
  /* Inout settings for pad PORT161:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_18_IN_OUT input func */
  {161U, 33U, 50U, 11U}, 
  /* Inout settings for pad PORT162:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_19_IN_OUT input func */
  {162U, 33U, 51U, 11U}, 
  /* Inout settings for pad PORT164:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_20_IN_OUT input func */
  {164U, 33U, 52U, 11U}, 
  /* eMIOS_0_19_IN_OUT input func */
  {164U, 35U, 89U, 10U}, 
  /* Inout settings for pad PORT165:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_B_21_IN_OUT input func */
  {165U, 33U, 53U, 11U}, 
  /* Inout settings for pad PORT167:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_0_IN_OUT input func */
  {167U, 32U, 0U, 10U}, 
  /* eTPU_B_22_IN_OUT input func */
  {167U, 33U, 54U, 11U}, 
  /* eMIOS_0_20_IN_OUT input func */
  {167U, 35U, 90U, 10U}, 
  /* Inout settings for pad PORT168:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_1_IN_OUT input func */
  {168U, 32U, 1U, 10U}, 
  /* eTPU_B_23_IN_OUT input func */
  {168U, 33U, 55U, 12U}, 
  /* eMIOS_0_21_IN_OUT input func */
  {168U, 35U, 91U, 10U}, 
  /* Inout settings for pad PORT169:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_2_IN_OUT input func */
  {169U, 32U, 2U, 10U}, 
  /* eTPU_B_24_IN_OUT input func */
  {169U, 33U, 56U, 12U}, 
  /* eMIOS_0_22_IN_OUT input func */
  {169U, 35U, 92U, 9U}, 
  /* Inout settings for pad PORT170:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_3_IN_OUT input func */
  {170U, 32U, 3U, 10U}, 
  /* eTPU_B_25_IN_OUT input func */
  {170U, 33U, 57U, 11U}, 
  /* eMIOS_0_23_IN_OUT input func */
  {170U, 35U, 93U, 9U}, 
  /* Inout settings for pad PORT171:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_4_IN_OUT input func */
  {171U, 32U, 4U, 10U}, 
  /* eTPU_B_26_IN_OUT input func */
  {171U, 33U, 58U, 11U}, 
  /* eMIOS_1_16_IN_OUT input func */
  {171U, 35U, 112U, 11U}, 
  /* Inout settings for pad PORT172:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_5_IN_OUT input func */
  {172U, 32U, 5U, 11U}, 
  /* eTPU_B_27_IN_OUT input func */
  {172U, 33U, 59U, 11U}, 
  /* eMIOS_1_17_IN_OUT input func */
  {172U, 35U, 113U, 11U}, 
  /* Inout settings for pad PORT173:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_6_IN_OUT input func */
  {173U, 32U, 6U, 11U}, 
  /* eTPU_B_28_IN_OUT input func */
  {173U, 33U, 60U, 11U}, 
  /* eMIOS_1_18_IN_OUT input func */
  {173U, 35U, 114U, 11U}, 
  /* Inout settings for pad PORT174:    {MSCR, MODE, INMUX reg, PADSEL val} */
  /* eTPU_A_7_IN_OUT input func */
  {174U, 32U, 7U, 10U}, 
  /* eTPU_B_29_IN_OUT input func */
  {174U, 33U, 61U, 11U}, 
  /* eMIOS_1_19_IN_OUT input func */
  {174U, 35U, 115U, 11U}

};
/**
* @brief Port INPUT INMUX settings data
*/
CONST(Port_InMuxSettingType,PORT_CONST) Port_aPadFunctInMuxSettings[1359]=
{

  /* INMUX settings for pad not available:  */
  { NO_INPUTMUX_U16, 0U},
  /* INMUX settings for pad PORT0:      {INMUX reg, PADSEL val} */
  /* eTPU_A_24_IN input func */
  {24U, 8U}, 
  /* IGF_IN8 input func */
  {148U, 4U}, 
  /* IGF_IN24 input func */
  {164U, 4U}, 
  /* INMUX settings for pad PORT1:      {INMUX reg, PADSEL val} */
  /* SIPI_SIPI_RXN input func */
  {486U, 1U}, 
  /* eTPU_A_23_IN input func */
  {23U, 8U}, 
  /* IGF_IN7 input func */
  {147U, 4U}, 
  /* IGF_IN23 input func */
  {163U, 4U}, 
  /* DSPI_M0_SIN input func */
  {303U, 4U}, 
  /* DSPI_M0_SIN_LVDS_Neg input func */
  {303U, 1U}, 
  /* INMUX settings for pad PORT2:      {INMUX reg, PADSEL val} */
  /* eTPU_A_22_IN input func */
  {22U, 8U}, 
  /* IGF_IN6 input func */
  {146U, 5U}, 
  /* IGF_IN22 input func */
  {162U, 5U}, 
  /* LINFlex_M0_RX input func */
  {244U, 1U}, 
  /* DSPI_M0_SIN input func */
  {303U, 2U}, 
  /* DSPI_M0_SIN_LVDS_Pos input func */
  {303U, 1U}, 
  /* INMUX settings for pad PORT3:      {INMUX reg, PADSEL val} */
  /* eTPU_A_21_IN input func */
  {21U, 8U}, 
  /* IGF_IN5 input func */
  {145U, 5U}, 
  /* IGF_IN21 input func */
  {161U, 5U}, 
  /* INMUX settings for pad PORT4:      {INMUX reg, PADSEL val} */
  /* eTPU_A_20_IN input func */
  {20U, 8U}, 
  /* IGF_IN4 input func */
  {144U, 4U}, 
  /* IGF_IN20 input func */
  {160U, 4U}, 
  /* INMUX settings for pad PORT5:      {INMUX reg, PADSEL val} */
  /* eTPU_A_19_IN input func */
  {19U, 8U}, 
  /* IGF_IN3 input func */
  {143U, 4U}, 
  /* IGF_IN19 input func */
  {159U, 4U}, 
  /* DSPI_M0_SIN input func */
  {303U, 3U}, 
  /* INMUX settings for pad PORT6:      {INMUX reg, PADSEL val} */
  /* eTPU_A_18_IN input func */
  {18U, 8U}, 
  /* IGF_IN2 input func */
  {142U, 4U}, 
  /* IGF_IN18 input func */
  {158U, 4U}, 
  /* INMUX settings for pad PORT7:      {INMUX reg, PADSEL val} */
  /* eTPU_A_17_IN input func */
  {17U, 8U}, 
  /* IGF_IN1 input func */
  {141U, 4U}, 
  /* IGF_IN17 input func */
  {157U, 4U}, 
  /* INMUX settings for pad PORT8:      {INMUX reg, PADSEL val} */
  /* eTPU_A_16_IN input func */
  {16U, 8U}, 
  /* IGF_IN0 input func */
  {140U, 4U}, 
  /* IGF_IN16 input func */
  {156U, 4U}, 
  /* DSPI_M1_SIN input func */
  {304U, 1U}, 
  /* INMUX settings for pad PORT9:      {INMUX reg, PADSEL val} */
  /* eTPU_A_15_IN input func */
  {15U, 8U}, 
  /* IGF_IN15 input func */
  {155U, 1U}, 
  /* IGF_IN31 input func */
  {171U, 1U}, 
  /* INMUX settings for pad PORT10:     {INMUX reg, PADSEL val} */
  /* eTPU_A_14_IN input func */
  {14U, 8U}, 
  /* IGF_IN14 input func */
  {154U, 1U}, 
  /* IGF_IN30 input func */
  {170U, 1U}, 
  /* INMUX settings for pad PORT11:     {INMUX reg, PADSEL val} */
  /* eTPU_A_13_IN input func */
  {13U, 8U}, 
  /* IGF_IN13 input func */
  {153U, 1U}, 
  /* IGF_IN29 input func */
  {169U, 1U}, 
  /* LINFlex_M1_RX input func */
  {245U, 1U}, 
  /* DSPI_M1_SIN input func */
  {304U, 2U}, 
  /* INMUX settings for pad PORT12:     {INMUX reg, PADSEL val} */
  /* eTPU_A_12_IN input func */
  {12U, 8U}, 
  /* IGF_IN12 input func */
  {152U, 1U}, 
  /* IGF_IN28 input func */
  {168U, 1U}, 
  /* DSPI_M1_SIN input func */
  {304U, 3U}, 
  /* INMUX settings for pad PORT13:     {INMUX reg, PADSEL val} */
  /* eTPU_A_11_IN input func */
  {11U, 8U}, 
  /* IGF_IN11 input func */
  {151U, 1U}, 
  /* IGF_IN27 input func */
  {167U, 1U}, 
  /* INMUX settings for pad PORT32:     {INMUX reg, PADSEL val} */
  /* eTPU_A_25_IN input func */
  {25U, 8U}, 
  /* eTPU_B_17_IN input func */
  {49U, 8U}, 
  /* eMIOS_0_8_IN input func */
  {78U, 8U}, 
  /* IGF_IN0 input func */
  {140U, 14U}, 
  /* IGF_IN1 input func */
  {141U, 11U}, 
  /* IGF_IN9 input func */
  {149U, 4U}, 
  /* IGF_IN16 input func */
  {156U, 13U}, 
  /* IGF_IN17 input func */
  {157U, 11U}, 
  /* IGF_IN25 input func */
  {165U, 4U}, 
  /* FEC_TXCLK input func */
  {484U, 1U}, 
  /* INMUX settings for pad PORT33:     {INMUX reg, PADSEL val} */
  /* eTPU_A_26_IN input func */
  {26U, 8U}, 
  /* eTPU_B_18_IN input func */
  {50U, 8U}, 
  /* eMIOS_0_9_IN input func */
  {79U, 8U}, 
  /* IGF_IN1 input func */
  {141U, 15U}, 
  /* IGF_IN2 input func */
  {142U, 10U}, 
  /* IGF_IN10 input func */
  {150U, 4U}, 
  /* IGF_IN17 input func */
  {157U, 14U}, 
  /* IGF_IN18 input func */
  {158U, 10U}, 
  /* IGF_IN26 input func */
  {166U, 4U}, 
  /* FEC_TXCLK input func */
  {484U, 2U}, 
  /* INMUX settings for pad PORT34:     {INMUX reg, PADSEL val} */
  /* eTPU_A_27_IN input func */
  {27U, 8U}, 
  /* eTPU_B_19_IN input func */
  {51U, 8U}, 
  /* eMIOS_0_10_IN input func */
  {80U, 8U}, 
  /* IGF_IN2 input func */
  {142U, 14U}, 
  /* IGF_IN3 input func */
  {143U, 10U}, 
  /* IGF_IN11 input func */
  {151U, 4U}, 
  /* IGF_IN18 input func */
  {158U, 14U}, 
  /* IGF_IN19 input func */
  {159U, 10U}, 
  /* IGF_IN27 input func */
  {167U, 4U}, 
  /* INMUX settings for pad PORT35:     {INMUX reg, PADSEL val} */
  /* eTPU_A_28_IN input func */
  {28U, 8U}, 
  /* eTPU_B_20_IN input func */
  {52U, 8U}, 
  /* eMIOS_0_11_IN input func */
  {81U, 8U}, 
  /* IGF_IN3 input func */
  {143U, 14U}, 
  /* IGF_IN4 input func */
  {144U, 11U}, 
  /* IGF_IN12 input func */
  {152U, 4U}, 
  /* IGF_IN19 input func */
  {159U, 14U}, 
  /* IGF_IN20 input func */
  {160U, 11U}, 
  /* IGF_IN28 input func */
  {168U, 4U}, 
  /* INMUX settings for pad PORT36:     {INMUX reg, PADSEL val} */
  /* eTPU_A_29_IN input func */
  {29U, 8U}, 
  /* eTPU_B_21_IN input func */
  {53U, 8U}, 
  /* eMIOS_0_12_IN input func */
  {82U, 8U}, 
  /* IGF_IN4 input func */
  {144U, 15U}, 
  /* IGF_IN5 input func */
  {145U, 11U}, 
  /* IGF_IN13 input func */
  {153U, 4U}, 
  /* IGF_IN20 input func */
  {160U, 15U}, 
  /* IGF_IN21 input func */
  {161U, 11U}, 
  /* IGF_IN29 input func */
  {169U, 4U}, 
  /* INMUX settings for pad PORT37:     {INMUX reg, PADSEL val} */
  /* eTPU_A_30_IN input func */
  {30U, 8U}, 
  /* eTPU_B_22_IN input func */
  {54U, 8U}, 
  /* eMIOS_0_13_IN input func */
  {83U, 8U}, 
  /* IGF_IN5 input func */
  {145U, 15U}, 
  /* IGF_IN6 input func */
  {146U, 11U}, 
  /* IGF_IN14 input func */
  {154U, 4U}, 
  /* IGF_IN21 input func */
  {161U, 15U}, 
  /* IGF_IN22 input func */
  {162U, 11U}, 
  /* IGF_IN30 input func */
  {170U, 4U}, 
  /* INMUX settings for pad PORT38:     {INMUX reg, PADSEL val} */
  /* eTPU_A_31_IN input func */
  {31U, 8U}, 
  /* eTPU_B_23_IN input func */
  {55U, 8U}, 
  /* eMIOS_0_14_IN input func */
  {84U, 8U}, 
  /* IGF_IN6 input func */
  {146U, 15U}, 
  /* IGF_IN7 input func */
  {147U, 9U}, 
  /* IGF_IN15 input func */
  {155U, 4U}, 
  /* IGF_IN22 input func */
  {162U, 15U}, 
  /* IGF_IN23 input func */
  {163U, 9U}, 
  /* IGF_IN31 input func */
  {171U, 4U}, 
  /* FlexCAN_2_RX input func */
  {190U, 1U}, 
  /* INMUX settings for pad PORT39:     {INMUX reg, PADSEL val} */
  /* eTPU_A_0_IN input func */
  {0U, 8U}, 
  /* eTPU_B_24_IN input func */
  {56U, 8U}, 
  /* eTPU_A_TCRCLK_A input func */
  {64U, 1U}, 
  /* eMIOS_0_15_IN input func */
  {85U, 8U}, 
  /* IGF_IN0 input func */
  {140U, 1U}, 
  /* IGF_IN7 input func */
  {147U, 14U}, 
  /* IGF_IN8 input func */
  {148U, 10U}, 
  /* IGF_IN16 input func */
  {156U, 1U}, 
  /* IGF_IN23 input func */
  {163U, 14U}, 
  /* IGF_IN24 input func */
  {164U, 10U}, 
  /* LINFlex_M1_RX input func */
  {245U, 3U}, 
  /* INMUX settings for pad PORT40:     {INMUX reg, PADSEL val} */
  /* eTPU_A_1_IN input func */
  {1U, 8U}, 
  /* eTPU_B_25_IN input func */
  {57U, 8U}, 
  /* eTPU_A_TCRCLK_A input func */
  {64U, 2U}, 
  /* eMIOS_0_16_IN input func */
  {86U, 8U}, 
  /* IGF_IN1 input func */
  {141U, 1U}, 
  /* IGF_IN8 input func */
  {148U, 15U}, 
  /* IGF_IN9 input func */
  {149U, 11U}, 
  /* IGF_IN17 input func */
  {157U, 1U}, 
  /* IGF_IN24 input func */
  {164U, 15U}, 
  /* IGF_IN25 input func */
  {165U, 11U}, 
  /* INMUX settings for pad PORT41:     {INMUX reg, PADSEL val} */
  /* eTPU_A_2_IN input func */
  {2U, 8U}, 
  /* eTPU_B_26_IN input func */
  {58U, 8U}, 
  /* eMIOS_0_17_IN input func */
  {87U, 8U}, 
  /* IGF_IN2 input func */
  {142U, 1U}, 
  /* IGF_IN9 input func */
  {149U, 15U}, 
  /* IGF_IN10 input func */
  {150U, 10U}, 
  /* IGF_IN18 input func */
  {158U, 1U}, 
  /* IGF_IN25 input func */
  {165U, 15U}, 
  /* IGF_IN26 input func */
  {166U, 10U}, 
  /* LINFlex_M0_RX input func */
  {244U, 2U}, 
  /* DSPI_3_SIN input func */
  {297U, 1U}, 
  /* INMUX settings for pad PORT42:     {INMUX reg, PADSEL val} */
  /* eTPU_A_3_IN input func */
  {3U, 8U}, 
  /* eTPU_B_27_IN input func */
  {59U, 8U}, 
  /* eMIOS_0_18_IN input func */
  {88U, 8U}, 
  /* IGF_IN3 input func */
  {143U, 1U}, 
  /* IGF_IN10 input func */
  {150U, 13U}, 
  /* IGF_IN11 input func */
  {151U, 11U}, 
  /* IGF_IN19 input func */
  {159U, 1U}, 
  /* IGF_IN26 input func */
  {166U, 13U}, 
  /* IGF_IN27 input func */
  {167U, 11U}, 
  /* INMUX settings for pad PORT43:     {INMUX reg, PADSEL val} */
  /* eTPU_A_4_IN input func */
  {4U, 8U}, 
  /* eTPU_B_28_IN input func */
  {60U, 8U}, 
  /* eMIOS_0_19_IN input func */
  {89U, 8U}, 
  /* IGF_IN4 input func */
  {144U, 1U}, 
  /* IGF_IN11 input func */
  {151U, 15U}, 
  /* IGF_IN12 input func */
  {152U, 11U}, 
  /* IGF_IN20 input func */
  {160U, 1U}, 
  /* IGF_IN27 input func */
  {167U, 15U}, 
  /* IGF_IN28 input func */
  {168U, 11U}, 
  /* DSPI_3_SIN input func */
  {297U, 2U}, 
  /* INMUX settings for pad PORT44:     {INMUX reg, PADSEL val} */
  /* eTPU_A_5_IN input func */
  {5U, 8U}, 
  /* eTPU_B_29_IN input func */
  {61U, 8U}, 
  /* eMIOS_0_20_IN input func */
  {90U, 8U}, 
  /* IGF_IN5 input func */
  {145U, 1U}, 
  /* IGF_IN12 input func */
  {152U, 15U}, 
  /* IGF_IN13 input func */
  {153U, 11U}, 
  /* IGF_IN21 input func */
  {161U, 1U}, 
  /* IGF_IN28 input func */
  {168U, 15U}, 
  /* IGF_IN29 input func */
  {169U, 11U}, 
  /* INMUX settings for pad PORT45:     {INMUX reg, PADSEL val} */
  /* eTPU_A_6_IN input func */
  {6U, 8U}, 
  /* eTPU_B_30_IN input func */
  {62U, 8U}, 
  /* eMIOS_0_21_IN input func */
  {91U, 8U}, 
  /* IGF_IN6 input func */
  {146U, 1U}, 
  /* IGF_IN13 input func */
  {153U, 15U}, 
  /* IGF_IN14 input func */
  {154U, 10U}, 
  /* IGF_IN22 input func */
  {162U, 1U}, 
  /* IGF_IN29 input func */
  {169U, 15U}, 
  /* IGF_IN30 input func */
  {170U, 10U}, 
  /* INMUX settings for pad PORT48:     {INMUX reg, PADSEL val} */
  /* eTPU_A_8_IN input func */
  {8U, 8U}, 
  /* eTPU_B_0_IN input func */
  {32U, 8U}, 
  /* eTPU_B_TCRCLK_B input func */
  {65U, 1U}, 
  /* eMIOS_1_8_IN input func */
  {104U, 8U}, 
  /* IGF_IN0 input func */
  {140U, 7U}, 
  /* IGF_IN8 input func */
  {148U, 1U}, 
  /* IGF_IN16 input func */
  {156U, 7U}, 
  /* IGF_IN24 input func */
  {164U, 1U}, 
  /* SIUL2_IRQ0 input func */
  {172U, 1U}, 
  /* FlexCAN_1_RX input func */
  {189U, 1U}, 
  /* LINFlex_1_RX input func */
  {241U, 1U}, 
  /* INMUX settings for pad PORT49:     {INMUX reg, PADSEL val} */
  /* eTPU_A_9_IN input func */
  {9U, 8U}, 
  /* eTPU_B_1_IN input func */
  {33U, 8U}, 
  /* eTPU_B_TCRCLK_B input func */
  {65U, 2U}, 
  /* eMIOS_1_9_IN input func */
  {105U, 8U}, 
  /* IGF_IN1 input func */
  {141U, 7U}, 
  /* IGF_IN9 input func */
  {149U, 1U}, 
  /* IGF_IN17 input func */
  {157U, 7U}, 
  /* IGF_IN25 input func */
  {165U, 1U}, 
  /* SIUL2_IRQ1 input func */
  {173U, 1U}, 
  /* INMUX settings for pad PORT50:     {INMUX reg, PADSEL val} */
  /* eTPU_A_10_IN input func */
  {10U, 8U}, 
  /* eTPU_B_2_IN input func */
  {34U, 8U}, 
  /* eMIOS_1_10_IN input func */
  {106U, 8U}, 
  /* IGF_IN2 input func */
  {142U, 7U}, 
  /* IGF_IN10 input func */
  {150U, 1U}, 
  /* IGF_IN18 input func */
  {158U, 7U}, 
  /* IGF_IN26 input func */
  {166U, 1U}, 
  /* SIUL2_IRQ2 input func */
  {174U, 1U}, 
  /* LINFlex_3_RX input func */
  {243U, 1U}, 
  /* INMUX settings for pad PORT51:     {INMUX reg, PADSEL val} */
  /* eTPU_A_11_IN input func */
  {11U, 9U}, 
  /* eTPU_B_3_IN input func */
  {35U, 8U}, 
  /* eMIOS_1_11_IN input func */
  {107U, 8U}, 
  /* IGF_IN3 input func */
  {143U, 7U}, 
  /* IGF_IN11 input func */
  {151U, 2U}, 
  /* IGF_IN19 input func */
  {159U, 7U}, 
  /* IGF_IN27 input func */
  {167U, 2U}, 
  /* SIUL2_IRQ6 input func */
  {178U, 1U}, 
  /* SAR_0_NRML_TRIG input func */
  {480U, 48U}, 
  /* SAR_1_NRML_TRIG input func */
  {481U, 48U}, 
  /* SAR_2_NRML_TRIG input func */
  {482U, 48U}, 
  /* SAR_3_NRML_TRIG input func */
  {483U, 48U}, 
  /* INMUX settings for pad PORT52:     {INMUX reg, PADSEL val} */
  /* eTPU_A_12_IN input func */
  {12U, 9U}, 
  /* eTPU_B_4_IN input func */
  {36U, 8U}, 
  /* eMIOS_1_12_IN input func */
  {108U, 8U}, 
  /* IGF_IN4 input func */
  {144U, 7U}, 
  /* IGF_IN12 input func */
  {152U, 2U}, 
  /* IGF_IN20 input func */
  {160U, 7U}, 
  /* IGF_IN28 input func */
  {168U, 2U}, 
  /* SIUL2_IRQ7 input func */
  {179U, 1U}, 
  /* SAR_0_NRML_TRIG input func */
  {480U, 49U}, 
  /* SAR_1_NRML_TRIG input func */
  {481U, 49U}, 
  /* SAR_2_NRML_TRIG input func */
  {482U, 49U}, 
  /* SAR_3_NRML_TRIG input func */
  {483U, 49U}, 
  /* INMUX settings for pad PORT53:     {INMUX reg, PADSEL val} */
  /* eTPU_A_13_IN input func */
  {13U, 9U}, 
  /* eTPU_B_5_IN input func */
  {37U, 8U}, 
  /* eMIOS_1_13_IN input func */
  {109U, 8U}, 
  /* IGF_IN5 input func */
  {145U, 8U}, 
  /* IGF_IN13 input func */
  {153U, 2U}, 
  /* IGF_IN21 input func */
  {161U, 8U}, 
  /* IGF_IN29 input func */
  {169U, 2U}, 
  /* INMUX settings for pad PORT54:     {INMUX reg, PADSEL val} */
  /* eTPU_A_14_IN input func */
  {14U, 9U}, 
  /* eTPU_B_6_IN input func */
  {38U, 8U}, 
  /* eMIOS_1_14_IN input func */
  {110U, 8U}, 
  /* IGF_IN6 input func */
  {146U, 8U}, 
  /* IGF_IN14 input func */
  {154U, 2U}, 
  /* IGF_IN22 input func */
  {162U, 8U}, 
  /* IGF_IN30 input func */
  {170U, 2U}, 
  /* INMUX settings for pad PORT55:     {INMUX reg, PADSEL val} */
  /* eTPU_A_15_IN input func */
  {15U, 9U}, 
  /* eTPU_B_7_IN input func */
  {39U, 8U}, 
  /* eMIOS_1_15_IN input func */
  {111U, 8U}, 
  /* IGF_IN7 input func */
  {147U, 7U}, 
  /* IGF_IN15 input func */
  {155U, 2U}, 
  /* IGF_IN23 input func */
  {163U, 7U}, 
  /* IGF_IN31 input func */
  {171U, 2U}, 
  /* FlexCAN_3_RX input func */
  {191U, 1U}, 
  /* LINFlex_2_RX input func */
  {242U, 1U}, 
  /* INMUX settings for pad PORT56:     {INMUX reg, PADSEL val} */
  /* eTPU_A_16_IN input func */
  {16U, 9U}, 
  /* eTPU_B_8_IN input func */
  {40U, 8U}, 
  /* eMIOS_1_16_IN input func */
  {112U, 8U}, 
  /* IGF_IN0 input func */
  {140U, 5U}, 
  /* IGF_IN8 input func */
  {148U, 7U}, 
  /* IGF_IN16 input func */
  {156U, 5U}, 
  /* IGF_IN24 input func */
  {164U, 7U}, 
  /* INMUX settings for pad PORT57:     {INMUX reg, PADSEL val} */
  /* eTPU_A_17_IN input func */
  {17U, 9U}, 
  /* eTPU_B_9_IN input func */
  {41U, 8U}, 
  /* eMIOS_1_17_IN input func */
  {113U, 8U}, 
  /* IGF_IN1 input func */
  {141U, 5U}, 
  /* IGF_IN9 input func */
  {149U, 8U}, 
  /* IGF_IN17 input func */
  {157U, 5U}, 
  /* IGF_IN25 input func */
  {165U, 8U}, 
  /* INMUX settings for pad PORT58:     {INMUX reg, PADSEL val} */
  /* eTPU_A_18_IN input func */
  {18U, 9U}, 
  /* eTPU_B_10_IN input func */
  {42U, 8U}, 
  /* eMIOS_1_18_IN input func */
  {114U, 8U}, 
  /* IGF_IN2 input func */
  {142U, 5U}, 
  /* IGF_IN10 input func */
  {150U, 7U}, 
  /* IGF_IN18 input func */
  {158U, 5U}, 
  /* IGF_IN26 input func */
  {166U, 7U}, 
  /* SIUL2_IRQ10 input func */
  {182U, 1U}, 
  /* INMUX settings for pad PORT59:     {INMUX reg, PADSEL val} */
  /* eTPU_A_19_IN input func */
  {19U, 9U}, 
  /* eTPU_B_11_IN input func */
  {43U, 8U}, 
  /* eMIOS_1_19_IN input func */
  {115U, 8U}, 
  /* IGF_IN3 input func */
  {143U, 5U}, 
  /* IGF_IN11 input func */
  {151U, 8U}, 
  /* IGF_IN19 input func */
  {159U, 5U}, 
  /* IGF_IN27 input func */
  {167U, 8U}, 
  /* INMUX settings for pad PORT60:     {INMUX reg, PADSEL val} */
  /* eTPU_A_20_IN input func */
  {20U, 9U}, 
  /* eTPU_B_12_IN input func */
  {44U, 8U}, 
  /* eMIOS_1_20_IN input func */
  {116U, 8U}, 
  /* IGF_IN4 input func */
  {144U, 5U}, 
  /* IGF_IN12 input func */
  {152U, 8U}, 
  /* IGF_IN20 input func */
  {160U, 5U}, 
  /* IGF_IN28 input func */
  {168U, 8U}, 
  /* INMUX settings for pad PORT61:     {INMUX reg, PADSEL val} */
  /* eTPU_A_21_IN input func */
  {21U, 9U}, 
  /* eTPU_B_13_IN input func */
  {45U, 8U}, 
  /* eMIOS_1_21_IN input func */
  {117U, 8U}, 
  /* IGF_IN5 input func */
  {145U, 6U}, 
  /* IGF_IN13 input func */
  {153U, 8U}, 
  /* IGF_IN21 input func */
  {161U, 6U}, 
  /* IGF_IN29 input func */
  {169U, 8U}, 
  /* SIUL2_IRQ8 input func */
  {180U, 1U}, 
  /* FlexCAN_0_RX input func */
  {188U, 1U}, 
  /* LINFlex_0_RX input func */
  {240U, 1U}, 
  /* SAR_0_NRML_TRIG input func */
  {480U, 50U}, 
  /* SAR_1_NRML_TRIG input func */
  {481U, 50U}, 
  /* SAR_2_NRML_TRIG input func */
  {482U, 50U}, 
  /* SAR_3_NRML_TRIG input func */
  {483U, 50U}, 
  /* INMUX settings for pad PORT62:     {INMUX reg, PADSEL val} */
  /* eTPU_A_22_IN input func */
  {22U, 9U}, 
  /* eTPU_B_14_IN input func */
  {46U, 8U}, 
  /* eMIOS_1_22_IN input func */
  {118U, 8U}, 
  /* IGF_IN6 input func */
  {146U, 6U}, 
  /* IGF_IN14 input func */
  {154U, 7U}, 
  /* IGF_IN22 input func */
  {162U, 6U}, 
  /* IGF_IN30 input func */
  {170U, 7U}, 
  /* SIUL2_IRQ9 input func */
  {181U, 1U}, 
  /* SAR_0_NRML_TRIG input func */
  {480U, 51U}, 
  /* SAR_1_NRML_TRIG input func */
  {481U, 51U}, 
  /* SAR_2_NRML_TRIG input func */
  {482U, 51U}, 
  /* SAR_3_NRML_TRIG input func */
  {483U, 51U}, 
  /* INMUX settings for pad PORT63:     {INMUX reg, PADSEL val} */
  /* eTPU_A_23_IN input func */
  {23U, 9U}, 
  /* eTPU_B_15_IN input func */
  {47U, 8U}, 
  /* eMIOS_1_23_IN input func */
  {119U, 8U}, 
  /* IGF_IN7 input func */
  {147U, 5U}, 
  /* IGF_IN15 input func */
  {155U, 7U}, 
  /* IGF_IN23 input func */
  {163U, 5U}, 
  /* IGF_IN31 input func */
  {171U, 7U}, 
  /* DSPI_4_SIN input func */
  {300U, 3U}, 
  /* INMUX settings for pad PORT64:     {INMUX reg, PADSEL val} */
  /* eTPU_A_24_IN input func */
  {24U, 9U}, 
  /* eTPU_B_16_IN input func */
  {48U, 8U}, 
  /* eMIOS_0_8_IN input func */
  {78U, 9U}, 
  /* IGF_IN0 input func */
  {140U, 11U}, 
  /* IGF_IN8 input func */
  {148U, 5U}, 
  /* IGF_IN16 input func */
  {156U, 11U}, 
  /* IGF_IN24 input func */
  {164U, 5U}, 
  /* DSPI_4_SCLK_IN input func */
  {301U, 2U}, 
  /* INMUX settings for pad PORT80:     {INMUX reg, PADSEL val} */
  /* eTPU_B_0_IN input func */
  {32U, 9U}, 
  /* eTPU_B_16_IN input func */
  {48U, 9U}, 
  /* eTPU_B_TCRCLK_B input func */
  {65U, 3U}, 
  /* eMIOS_1_16_IN input func */
  {112U, 9U}, 
  /* IGF_IN0 input func */
  {140U, 8U}, 
  /* IGF_IN8 input func */
  {148U, 17U}, 
  /* IGF_IN16 input func */
  {156U, 8U}, 
  /* IGF_IN24 input func */
  {164U, 17U}, 
  /* INMUX settings for pad PORT81:     {INMUX reg, PADSEL val} */
  /* eTPU_B_1_IN input func */
  {33U, 9U}, 
  /* eTPU_B_17_IN input func */
  {49U, 9U}, 
  /* eTPU_B_TCRCLK_B input func */
  {65U, 4U}, 
  /* eMIOS_1_17_IN input func */
  {113U, 9U}, 
  /* IGF_IN1 input func */
  {141U, 8U}, 
  /* IGF_IN9 input func */
  {149U, 17U}, 
  /* IGF_IN17 input func */
  {157U, 8U}, 
  /* IGF_IN25 input func */
  {165U, 17U}, 
  /* FlexCAN_2_RX input func */
  {190U, 2U}, 
  /* LINFlex_2_RX input func */
  {242U, 2U}, 
  /* INMUX settings for pad PORT82:     {INMUX reg, PADSEL val} */
  /* eTPU_B_18_IN input func */
  {50U, 9U}, 
  /* IGF_IN2 input func */
  {142U, 11U}, 
  /* IGF_IN18 input func */
  {158U, 11U}, 
  /* INMUX settings for pad PORT83:     {INMUX reg, PADSEL val} */
  /* eTPU_B_19_IN input func */
  {51U, 9U}, 
  /* IGF_IN3 input func */
  {143U, 11U}, 
  /* IGF_IN19 input func */
  {159U, 11U}, 
  /* LINFlex_3_RX input func */
  {243U, 2U}, 
  /* INMUX settings for pad PORT84:     {INMUX reg, PADSEL val} */
  /* eTPU_B_20_IN input func */
  {52U, 9U}, 
  /* eMIOS_1_18_IN input func */
  {114U, 9U}, 
  /* IGF_IN4 input func */
  {144U, 12U}, 
  /* IGF_IN10 input func */
  {150U, 15U}, 
  /* IGF_IN20 input func */
  {160U, 12U}, 
  /* IGF_IN26 input func */
  {166U, 15U}, 
  /* INMUX settings for pad PORT85:     {INMUX reg, PADSEL val} */
  /* eTPU_B_21_IN input func */
  {53U, 9U}, 
  /* eMIOS_1_19_IN input func */
  {115U, 9U}, 
  /* IGF_IN5 input func */
  {145U, 12U}, 
  /* IGF_IN11 input func */
  {151U, 18U}, 
  /* IGF_IN21 input func */
  {161U, 12U}, 
  /* IGF_IN27 input func */
  {167U, 18U}, 
  /* FlexCAN_0_RX input func */
  {188U, 2U}, 
  /* LINFlex_2_RX input func */
  {241U, 2U}, 
  /* INMUX settings for pad PORT86:     {INMUX reg, PADSEL val} */
  /* eTPU_B_22_IN input func */
  {54U, 9U}, 
  /* IGF_IN6 input func */
  {146U, 12U}, 
  /* IGF_IN22 input func */
  {162U, 12U}, 
  /* INMUX settings for pad PORT87:     {INMUX reg, PADSEL val} */
  /* eTPU_B_23_IN input func */
  {55U, 9U}, 
  /* IGF_IN7 input func */
  {147U, 10U}, 
  /* IGF_IN23 input func */
  {163U, 10U}, 
  /* FlexCAN_1_RX input func */
  {189U, 2U}, 
  /* INMUX settings for pad PORT88:     {INMUX reg, PADSEL val} */
  /* eTPU_B_24_IN input func */
  {56U, 9U}, 
  /* eMIOS_1_20_IN input func */
  {116U, 9U}, 
  /* IGF_IN8 input func */
  {148U, 11U}, 
  /* IGF_IN12 input func */
  {152U, 18U}, 
  /* IGF_IN24 input func */
  {164U, 11U}, 
  /* IGF_IN28 input func */
  {168U, 18U}, 
  /* INMUX settings for pad PORT89:     {INMUX reg, PADSEL val} */
  /* eTPU_B_23_IN input func */
  {55U, 10U}, 
  /* eMIOS_1_21_IN input func */
  {117U, 9U}, 
  /* IGF_IN7 input func */
  {147U, 11U}, 
  /* IGF_IN13 input func */
  {153U, 18U}, 
  /* IGF_IN23 input func */
  {163U, 11U}, 
  /* IGF_IN29 input func */
  {169U, 18U}, 
  /* INMUX settings for pad PORT90:     {INMUX reg, PADSEL val} */
  /* eTPU_B_24_IN input func */
  {56U, 10U}, 
  /* eMIOS_1_22_IN input func */
  {118U, 9U}, 
  /* IGF_IN8 input func */
  {148U, 12U}, 
  /* IGF_IN14 input func */
  {154U, 15U}, 
  /* IGF_IN24 input func */
  {164U, 12U}, 
  /* IGF_IN30 input func */
  {170U, 15U}, 
  /* INMUX settings for pad PORT91:     {INMUX reg, PADSEL val} */
  /* eTPU_A_5_IN input func */
  {5U, 9U}, 
  /* eTPU_B_25_IN input func */
  {57U, 9U}, 
  /* eMIOS_1_23_IN input func */
  {119U, 9U}, 
  /* IGF_IN5 input func */
  {145U, 2U}, 
  /* IGF_IN9 input func */
  {149U, 12U}, 
  /* IGF_IN15 input func */
  {155U, 14U}, 
  /* IGF_IN21 input func */
  {161U, 2U}, 
  /* IGF_IN25 input func */
  {165U, 12U}, 
  /* IGF_IN31 input func */
  {171U, 14U}, 
  /* FlexCAN_0_RX input func */
  {188U, 3U}, 
  /* FlexCAN_1_RX input func */
  {189U, 4U}, 
  /* LINFlex_0_RX input func */
  {240U, 2U}, 
  /* INMUX settings for pad PORT92:     {INMUX reg, PADSEL val} */
  /* eTPU_A_6_IN input func */
  {6U, 9U}, 
  /* eTPU_B_26_IN input func */
  {58U, 9U}, 
  /* eMIOS_1_15_IN input func */
  {111U, 9U}, 
  /* IGF_IN6 input func */
  {146U, 2U}, 
  /* IGF_IN7 input func */
  {147U, 17U}, 
  /* IGF_IN10 input func */
  {150U, 18U}, 
  /* IGF_IN22 input func */
  {162U, 2U}, 
  /* IGF_IN23 input func */
  {163U, 17U}, 
  /* IGF_IN26 input func */
  {166U, 18U}, 
  /* INMUX settings for pad PORT93:     {INMUX reg, PADSEL val} */
  /* eTPU_A_7_IN input func */
  {7U, 8U}, 
  /* eTPU_B_27_IN input func */
  {59U, 9U}, 
  /* eMIOS_1_14_IN input func */
  {110U, 9U}, 
  /* IGF_IN6 input func */
  {146U, 18U}, 
  /* IGF_IN7 input func */
  {147U, 1U}, 
  /* IGF_IN11 input func */
  {151U, 12U}, 
  /* IGF_IN22 input func */
  {162U, 18U}, 
  /* IGF_IN23 input func */
  {163U, 1U}, 
  /* IGF_IN27 input func */
  {167U, 12U}, 
  /* FlexCAN_0_RX input func */
  {188U, 4U}, 
  /* LINFlex_2_RX input func */
  {242U, 3U}, 
  /* INMUX settings for pad PORT97:     {INMUX reg, PADSEL val} */
  /* eTPU_A_8_IN input func */
  {8U, 9U}, 
  /* eTPU_B_28_IN input func */
  {60U, 9U}, 
  /* eMIOS_0_8_IN input func */
  {78U, 10U}, 
  /* IGF_IN0 input func */
  {140U, 15U}, 
  /* IGF_IN8 input func */
  {148U, 2U}, 
  /* IGF_IN12 input func */
  {152U, 12U}, 
  /* IGF_IN16 input func */
  {156U, 14U}, 
  /* IGF_IN24 input func */
  {164U, 2U}, 
  /* IGF_IN28 input func */
  {168U, 12U}, 
  /* FlexCAN_2_RX input func */
  {190U, 3U}, 
  /* SENT_0_1 input func */
  {201U, 1U}, 
  /* LINFlex_0_RX input func */
  {240U, 3U}, 
  /* INMUX settings for pad PORT98:     {INMUX reg, PADSEL val} */
  /* eTPU_A_9_IN input func */
  {9U, 9U}, 
  /* eTPU_B_29_IN input func */
  {61U, 9U}, 
  /* eMIOS_0_9_IN input func */
  {79U, 9U}, 
  /* IGF_IN1 input func */
  {141U, 16U}, 
  /* IGF_IN9 input func */
  {149U, 2U}, 
  /* IGF_IN13 input func */
  {153U, 12U}, 
  /* IGF_IN17 input func */
  {157U, 15U}, 
  /* IGF_IN25 input func */
  {165U, 2U}, 
  /* IGF_IN29 input func */
  {169U, 12U}, 
  /* SENT_1_1 input func */
  {204U, 1U}, 
  /* INMUX settings for pad PORT99:     {INMUX reg, PADSEL val} */
  /* eTPU_B_30_IN input func */
  {62U, 9U}, 
  /* eMIOS_0_10_IN input func */
  {80U, 9U}, 
  /* IGF_IN2 input func */
  {142U, 15U}, 
  /* IGF_IN14 input func */
  {154U, 11U}, 
  /* IGF_IN18 input func */
  {158U, 15U}, 
  /* IGF_IN30 input func */
  {170U, 11U}, 
  /* SENT_0_2 input func */
  {202U, 1U}, 
  /* INMUX settings for pad PORT100:    {INMUX reg, PADSEL val} */
  /* eTPU_A_10_IN input func */
  {10U, 9U}, 
  /* eTPU_B_31_IN input func */
  {63U, 8U}, 
  /* eMIOS_0_11_IN input func */
  {81U, 9U}, 
  /* IGF_IN3 input func */
  {143U, 15U}, 
  /* IGF_IN10 input func */
  {150U, 2U}, 
  /* IGF_IN15 input func */
  {155U, 10U}, 
  /* IGF_IN19 input func */
  {159U, 15U}, 
  /* IGF_IN26 input func */
  {166U, 2U}, 
  /* IGF_IN31 input func */
  {171U, 10U}, 
  /* SENT_1_2 input func */
  {205U, 1U}, 
  /* INMUX settings for pad PORT101:    {INMUX reg, PADSEL val} */
  /* eTPU_A_11_IN input func */
  {11U, 10U}, 
  /* eTPU_B_0_IN input func */
  {32U, 10U}, 
  /* eTPU_B_TCRCLK_B input func */
  {65U, 5U}, 
  /* eMIOS_0_12_IN input func */
  {82U, 9U}, 
  /* IGF_IN0 input func */
  {140U, 9U}, 
  /* IGF_IN4 input func */
  {144U, 19U}, 
  /* IGF_IN11 input func */
  {151U, 3U}, 
  /* IGF_IN16 input func */
  {156U, 9U}, 
  /* IGF_IN20 input func */
  {160U, 19U}, 
  /* IGF_IN27 input func */
  {167U, 3U}, 
  /* FlexCAN_1_RX input func */
  {189U, 3U}, 
  /* SENT_0_0 input func */
  {200U, 1U}, 
  /* LINFlex_1_RX input func */
  {241U, 3U}, 
  /* INMUX settings for pad PORT102:    {INMUX reg, PADSEL val} */
  /* eTPU_A_13_IN input func */
  {13U, 10U}, 
  /* eTPU_B_1_IN input func */
  {33U, 10U}, 
  /* eTPU_B_TCRCLK_B input func */
  {65U, 6U}, 
  /* eMIOS_0_13_IN input func */
  {83U, 9U}, 
  /* IGF_IN1 input func */
  {141U, 9U}, 
  /* IGF_IN5 input func */
  {145U, 16U}, 
  /* IGF_IN13 input func */
  {153U, 3U}, 
  /* IGF_IN17 input func */
  {157U, 9U}, 
  /* IGF_IN21 input func */
  {161U, 16U}, 
  /* IGF_IN29 input func */
  {169U, 3U}, 
  /* SENT_1_0 input func */
  {203U, 1U}, 
  /* INMUX settings for pad PORT103:    {INMUX reg, PADSEL val} */
  /* eTPU_A_14_IN input func */
  {14U, 10U}, 
  /* eTPU_B_2_IN input func */
  {34U, 9U}, 
  /* eMIOS_0_14_IN input func */
  {84U, 9U}, 
  /* IGF_IN2 input func */
  {142U, 8U}, 
  /* IGF_IN6 input func */
  {146U, 16U}, 
  /* IGF_IN14 input func */
  {154U, 3U}, 
  /* IGF_IN18 input func */
  {158U, 8U}, 
  /* IGF_IN22 input func */
  {162U, 16U}, 
  /* IGF_IN30 input func */
  {170U, 3U}, 
  /* INMUX settings for pad PORT105:    {INMUX reg, PADSEL val} */
  /* eTPU_A_15_IN input func */
  {15U, 10U}, 
  /* eTPU_B_3_IN input func */
  {35U, 9U}, 
  /* eMIOS_0_15_IN input func */
  {85U, 9U}, 
  /* IGF_IN3 input func */
  {143U, 8U}, 
  /* IGF_IN7 input func */
  {147U, 15U}, 
  /* IGF_IN15 input func */
  {155U, 3U}, 
  /* IGF_IN19 input func */
  {159U, 8U}, 
  /* IGF_IN23 input func */
  {163U, 15U}, 
  /* IGF_IN31 input func */
  {171U, 3U}, 
  /* FlexCAN_3_RX input func */
  {191U, 3U}, 
  /* INMUX settings for pad PORT106:    {INMUX reg, PADSEL val} */
  /* eTPU_A_16_IN input func */
  {16U, 10U}, 
  /* eTPU_B_4_IN input func */
  {36U, 9U}, 
  /* eMIOS_0_16_IN input func */
  {86U, 9U}, 
  /* IGF_IN0 input func */
  {140U, 6U}, 
  /* IGF_IN4 input func */
  {144U, 8U}, 
  /* IGF_IN8 input func */
  {148U, 16U}, 
  /* IGF_IN16 input func */
  {156U, 6U}, 
  /* IGF_IN20 input func */
  {160U, 8U}, 
  /* IGF_IN24 input func */
  {164U, 16U}, 
  /* INMUX settings for pad PORT107:    {INMUX reg, PADSEL val} */
  /* eTPU_A_17_IN input func */
  {17U, 10U}, 
  /* eTPU_B_5_IN input func */
  {37U, 9U}, 
  /* eMIOS_0_17_IN input func */
  {87U, 9U}, 
  /* IGF_IN1 input func */
  {141U, 6U}, 
  /* IGF_IN5 input func */
  {145U, 9U}, 
  /* IGF_IN9 input func */
  {149U, 16U}, 
  /* IGF_IN17 input func */
  {157U, 6U}, 
  /* IGF_IN21 input func */
  {161U, 9U}, 
  /* IGF_IN25 input func */
  {165U, 16U}, 
  /* INMUX settings for pad PORT108:    {INMUX reg, PADSEL val} */
  /* eTPU_A_18_IN input func */
  {18U, 10U}, 
  /* eTPU_B_6_IN input func */
  {38U, 9U}, 
  /* eMIOS_0_18_IN input func */
  {88U, 9U}, 
  /* IGF_IN2 input func */
  {142U, 6U}, 
  /* IGF_IN6 input func */
  {146U, 9U}, 
  /* IGF_IN10 input func */
  {150U, 14U}, 
  /* IGF_IN18 input func */
  {158U, 6U}, 
  /* IGF_IN22 input func */
  {162U, 9U}, 
  /* IGF_IN26 input func */
  {166U, 14U}, 
  /* INMUX settings for pad PORT109:    {INMUX reg, PADSEL val} */
  /* eTPU_A_19_IN input func */
  {19U, 10U}, 
  /* eTPU_B_7_IN input func */
  {39U, 9U}, 
  /* eMIOS_0_19_IN input func */
  {89U, 9U}, 
  /* IGF_IN3 input func */
  {143U, 6U}, 
  /* IGF_IN7 input func */
  {147U, 8U}, 
  /* IGF_IN11 input func */
  {151U, 16U}, 
  /* IGF_IN19 input func */
  {159U, 6U}, 
  /* IGF_IN23 input func */
  {163U, 8U}, 
  /* IGF_IN27 input func */
  {167U, 16U}, 
  /* INMUX settings for pad PORT110:    {INMUX reg, PADSEL val} */
  /* eTPU_A_20_IN input func */
  {20U, 10U}, 
  /* eTPU_B_8_IN input func */
  {40U, 9U}, 
  /* eMIOS_0_20_IN input func */
  {90U, 9U}, 
  /* IGF_IN4 input func */
  {144U, 6U}, 
  /* IGF_IN8 input func */
  {148U, 8U}, 
  /* IGF_IN12 input func */
  {152U, 16U}, 
  /* IGF_IN20 input func */
  {160U, 6U}, 
  /* IGF_IN24 input func */
  {164U, 8U}, 
  /* IGF_IN28 input func */
  {168U, 16U}, 
  /* INMUX settings for pad PORT111:    {INMUX reg, PADSEL val} */
  /* eTPU_A_21_IN input func */
  {21U, 10U}, 
  /* eTPU_B_9_IN input func */
  {41U, 9U}, 
  /* eMIOS_0_21_IN input func */
  {91U, 9U}, 
  /* IGF_IN5 input func */
  {145U, 7U}, 
  /* IGF_IN9 input func */
  {149U, 9U}, 
  /* IGF_IN13 input func */
  {153U, 16U}, 
  /* IGF_IN21 input func */
  {161U, 7U}, 
  /* IGF_IN25 input func */
  {165U, 9U}, 
  /* IGF_IN29 input func */
  {169U, 16U}, 
  /* INMUX settings for pad PORT112:    {INMUX reg, PADSEL val} */
  /* eTPU_A_22_IN input func */
  {22U, 10U}, 
  /* eTPU_B_10_IN input func */
  {42U, 9U}, 
  /* eMIOS_1_8_IN input func */
  {104U, 9U}, 
  /* IGF_IN0 input func */
  {140U, 17U}, 
  /* IGF_IN6 input func */
  {146U, 7U}, 
  /* IGF_IN10 input func */
  {150U, 8U}, 
  /* IGF_IN16 input func */
  {156U, 16U}, 
  /* IGF_IN22 input func */
  {162U, 7U}, 
  /* IGF_IN26 input func */
  {166U, 8U}, 
  /* INMUX settings for pad PORT113:    {INMUX reg, PADSEL val} */
  /* eTPU_A_23_IN input func */
  {23U, 10U}, 
  /* eTPU_B_11_IN input func */
  {43U, 9U}, 
  /* eMIOS_1_9_IN input func */
  {105U, 9U}, 
  /* IGF_IN1 input func */
  {141U, 18U}, 
  /* IGF_IN7 input func */
  {147U, 6U}, 
  /* IGF_IN11 input func */
  {151U, 9U}, 
  /* IGF_IN17 input func */
  {157U, 17U}, 
  /* IGF_IN23 input func */
  {163U, 6U}, 
  /* IGF_IN27 input func */
  {167U, 9U}, 
  /* INMUX settings for pad PORT114:    {INMUX reg, PADSEL val} */
  /* eTPU_A_24_IN input func */
  {24U, 10U}, 
  /* eTPU_B_12_IN input func */
  {44U, 9U}, 
  /* eMIOS_1_10_IN input func */
  {106U, 9U}, 
  /* IGF_IN2 input func */
  {142U, 17U}, 
  /* IGF_IN8 input func */
  {148U, 6U}, 
  /* IGF_IN12 input func */
  {152U, 9U}, 
  /* IGF_IN18 input func */
  {158U, 17U}, 
  /* IGF_IN24 input func */
  {164U, 6U}, 
  /* IGF_IN28 input func */
  {168U, 9U}, 
  /* INMUX settings for pad PORT115:    {INMUX reg, PADSEL val} */
  /* eTPU_A_25_IN input func */
  {25U, 9U}, 
  /* eTPU_B_13_IN input func */
  {45U, 9U}, 
  /* eMIOS_1_11_IN input func */
  {107U, 9U}, 
  /* IGF_IN3 input func */
  {143U, 16U}, 
  /* IGF_IN9 input func */
  {149U, 5U}, 
  /* IGF_IN13 input func */
  {153U, 9U}, 
  /* IGF_IN19 input func */
  {159U, 16U}, 
  /* IGF_IN25 input func */
  {165U, 5U}, 
  /* IGF_IN29 input func */
  {169U, 9U}, 
  /* INMUX settings for pad PORT116:    {INMUX reg, PADSEL val} */
  /* eTPU_A_26_IN input func */
  {26U, 9U}, 
  /* eTPU_B_14_IN input func */
  {46U, 9U}, 
  /* eMIOS_1_12_IN input func */
  {108U, 9U}, 
  /* IGF_IN4 input func */
  {144U, 17U}, 
  /* IGF_IN10 input func */
  {150U, 5U}, 
  /* IGF_IN14 input func */
  {154U, 8U}, 
  /* IGF_IN20 input func */
  {160U, 17U}, 
  /* IGF_IN26 input func */
  {166U, 5U}, 
  /* IGF_IN30 input func */
  {170U, 8U}, 
  /* INMUX settings for pad PORT117:    {INMUX reg, PADSEL val} */
  /* eTPU_A_27_IN input func */
  {27U, 9U}, 
  /* eTPU_B_15_IN input func */
  {47U, 9U}, 
  /* eMIOS_1_13_IN input func */
  {109U, 9U}, 
  /* IGF_IN5 input func */
  {145U, 18U}, 
  /* IGF_IN11 input func */
  {151U, 5U}, 
  /* IGF_IN15 input func */
  {155U, 8U}, 
  /* IGF_IN21 input func */
  {161U, 18U}, 
  /* IGF_IN27 input func */
  {167U, 5U}, 
  /* IGF_IN31 input func */
  {171U, 8U}, 
  /* INMUX settings for pad PORT118:    {INMUX reg, PADSEL val} */
  /* eTPU_A_28_IN input func */
  {28U, 9U}, 
  /* eTPU_B_16_IN input func */
  {48U, 10U}, 
  /* eMIOS_1_14_IN input func */
  {110U, 10U}, 
  /* IGF_IN0 input func */
  {140U, 13U}, 
  /* IGF_IN6 input func */
  {146U, 19U}, 
  /* IGF_IN12 input func */
  {152U, 5U}, 
  /* IGF_IN16 input func */
  {156U, 12U}, 
  /* IGF_IN22 input func */
  {162U, 19U}, 
  /* IGF_IN28 input func */
  {168U, 5U}, 
  /* INMUX settings for pad PORT119:    {INMUX reg, PADSEL val} */
  /* eTPU_A_29_IN input func */
  {29U, 9U}, 
  /* eTPU_B_17_IN input func */
  {49U, 10U}, 
  /* eMIOS_1_15_IN input func */
  {111U, 10U}, 
  /* IGF_IN1 input func */
  {141U, 13U}, 
  /* IGF_IN7 input func */
  {147U, 18U}, 
  /* IGF_IN13 input func */
  {153U, 5U}, 
  /* IGF_IN17 input func */
  {157U, 12U}, 
  /* IGF_IN23 input func */
  {163U, 18U}, 
  /* IGF_IN29 input func */
  {169U, 5U}, 
  /* LINFlex_3_RX input func */
  {243U, 3U}, 
  /* INMUX settings for pad PORT120:    {INMUX reg, PADSEL val} */
  /* eTPU_A_30_IN input func */
  {30U, 9U}, 
  /* eTPU_B_18_IN input func */
  {50U, 10U}, 
  /* eMIOS_1_16_IN input func */
  {112U, 10U}, 
  /* IGF_IN2 input func */
  {142U, 12U}, 
  /* IGF_IN8 input func */
  {148U, 18U}, 
  /* IGF_IN14 input func */
  {154U, 5U}, 
  /* IGF_IN18 input func */
  {158U, 12U}, 
  /* IGF_IN24 input func */
  {164U, 18U}, 
  /* IGF_IN30 input func */
  {170U, 5U}, 
  /* INMUX settings for pad PORT121:    {INMUX reg, PADSEL val} */
  /* eTPU_A_31_IN input func */
  {31U, 9U}, 
  /* eTPU_B_19_IN input func */
  {51U, 10U}, 
  /* eMIOS_1_17_IN input func */
  {113U, 10U}, 
  /* IGF_IN3 input func */
  {143U, 12U}, 
  /* IGF_IN9 input func */
  {149U, 18U}, 
  /* IGF_IN15 input func */
  {155U, 5U}, 
  /* IGF_IN19 input func */
  {159U, 12U}, 
  /* IGF_IN25 input func */
  {165U, 18U}, 
  /* IGF_IN31 input func */
  {171U, 5U}, 
  /* INMUX settings for pad PORT122:    {INMUX reg, PADSEL val} */
  /* eTPU_A_12_IN input func */
  {12U, 10U}, 
  /* eTPU_B_20_IN input func */
  {52U, 10U}, 
  /* eMIOS_1_18_IN input func */
  {114U, 10U}, 
  /* IGF_IN4 input func */
  {144U, 13U}, 
  /* IGF_IN10 input func */
  {150U, 16U}, 
  /* IGF_IN12 input func */
  {152U, 3U}, 
  /* IGF_IN20 input func */
  {160U, 13U}, 
  /* IGF_IN26 input func */
  {166U, 16U}, 
  /* IGF_IN28 input func */
  {168U, 3U}, 
  /* INMUX settings for pad PORT123:    {INMUX reg, PADSEL val} */
  /* eTPU_A_0_IN input func */
  {0U, 9U}, 
  /* eTPU_B_21_IN input func */
  {53U, 10U}, 
  /* eTPU_A_TCRCLK_A input func */
  {64U, 3U}, 
  /* eMIOS_1_19_IN input func */
  {115U, 10U}, 
  /* IGF_IN0 input func */
  {140U, 2U}, 
  /* IGF_IN5 input func */
  {145U, 13U}, 
  /* IGF_IN11 input func */
  {151U, 19U}, 
  /* IGF_IN16 input func */
  {156U, 2U}, 
  /* IGF_IN21 input func */
  {161U, 13U}, 
  /* IGF_IN27 input func */
  {167U, 19U}, 
  /* LINFlex_M0_RX input func */
  {244U, 3U}, 
  /* INMUX settings for pad PORT124:    {INMUX reg, PADSEL val} */
  /* eTPU_A_1_IN input func */
  {1U, 9U}, 
  /* eTPU_B_22_IN input func */
  {54U, 10U}, 
  /* eTPU_A_TCRCLK_A input func */
  {64U, 4U}, 
  /* eMIOS_1_20_IN input func */
  {116U, 10U}, 
  /* IGF_IN1 input func */
  {141U, 2U}, 
  /* IGF_IN6 input func */
  {146U, 13U}, 
  /* IGF_IN12 input func */
  {152U, 19U}, 
  /* IGF_IN17 input func */
  {157U, 2U}, 
  /* IGF_IN22 input func */
  {162U, 13U}, 
  /* IGF_IN28 input func */
  {168U, 19U}, 
  /* INMUX settings for pad PORT125:    {INMUX reg, PADSEL val} */
  /* eTPU_A_2_IN input func */
  {2U, 9U}, 
  /* eTPU_B_23_IN input func */
  {55U, 11U}, 
  /* eMIOS_1_21_IN input func */
  {117U, 10U}, 
  /* IGF_IN2 input func */
  {142U, 2U}, 
  /* IGF_IN7 input func */
  {147U, 12U}, 
  /* IGF_IN13 input func */
  {153U, 19U}, 
  /* IGF_IN18 input func */
  {158U, 2U}, 
  /* IGF_IN23 input func */
  {163U, 12U}, 
  /* IGF_IN29 input func */
  {169U, 19U}, 
  /* INMUX settings for pad PORT126:    {INMUX reg, PADSEL val} */
  /* eTPU_A_3_IN input func */
  {3U, 9U}, 
  /* eTPU_B_24_IN input func */
  {56U, 11U}, 
  /* eMIOS_1_22_IN input func */
  {118U, 10U}, 
  /* IGF_IN3 input func */
  {143U, 2U}, 
  /* IGF_IN8 input func */
  {148U, 13U}, 
  /* IGF_IN14 input func */
  {154U, 16U}, 
  /* IGF_IN19 input func */
  {159U, 2U}, 
  /* IGF_IN24 input func */
  {164U, 13U}, 
  /* IGF_IN30 input func */
  {170U, 16U}, 
  /* LINFlex_M1_RX input func */
  {245U, 4U}, 
  /* INMUX settings for pad PORT127:    {INMUX reg, PADSEL val} */
  /* eTPU_A_4_IN input func */
  {4U, 9U}, 
  /* eTPU_B_25_IN input func */
  {57U, 10U}, 
  /* eMIOS_1_23_IN input func */
  {119U, 10U}, 
  /* IGF_IN4 input func */
  {144U, 2U}, 
  /* IGF_IN9 input func */
  {149U, 13U}, 
  /* IGF_IN15 input func */
  {155U, 15U}, 
  /* IGF_IN20 input func */
  {160U, 2U}, 
  /* IGF_IN25 input func */
  {165U, 13U}, 
  /* IGF_IN31 input func */
  {171U, 15U}, 
  /* INMUX settings for pad PORT128:    {INMUX reg, PADSEL val} */
  /* eTPU_A_5_IN input func */
  {5U, 10U}, 
  /* eTPU_B_26_IN input func */
  {58U, 10U}, 
  /* eMIOS_0_8_IN input func */
  {78U, 11U}, 
  /* IGF_IN0 input func */
  {140U, 16U}, 
  /* IGF_IN5 input func */
  {145U, 3U}, 
  /* IGF_IN10 input func */
  {150U, 11U}, 
  /* IGF_IN16 input func */
  {156U, 15U}, 
  /* IGF_IN21 input func */
  {161U, 3U}, 
  /* IGF_IN26 input func */
  {166U, 11U}, 
  /* FlexCAN_3_RX input func */
  {191U, 2U}, 
  /* INMUX settings for pad PORT129:    {INMUX reg, PADSEL val} */
  /* eTPU_A_6_IN input func */
  {6U, 10U}, 
  /* eTPU_B_27_IN input func */
  {59U, 10U}, 
  /* eMIOS_0_9_IN input func */
  {79U, 10U}, 
  /* IGF_IN1 input func */
  {141U, 17U}, 
  /* IGF_IN6 input func */
  {146U, 3U}, 
  /* IGF_IN11 input func */
  {151U, 13U}, 
  /* IGF_IN17 input func */
  {157U, 16U}, 
  /* IGF_IN22 input func */
  {162U, 3U}, 
  /* IGF_IN27 input func */
  {167U, 13U}, 
  /* INMUX settings for pad PORT130:    {INMUX reg, PADSEL val} */
  /* eTPU_A_7_IN input func */
  {7U, 9U}, 
  /* eTPU_B_28_IN input func */
  {60U, 10U}, 
  /* eMIOS_0_10_IN input func */
  {80U, 10U}, 
  /* IGF_IN2 input func */
  {142U, 16U}, 
  /* IGF_IN7 input func */
  {147U, 2U}, 
  /* IGF_IN12 input func */
  {152U, 13U}, 
  /* IGF_IN18 input func */
  {158U, 16U}, 
  /* IGF_IN23 input func */
  {163U, 2U}, 
  /* IGF_IN28 input func */
  {168U, 13U}, 
  /* INMUX settings for pad PORT131:    {INMUX reg, PADSEL val} */
  /* eTPU_A_8_IN input func */
  {8U, 10U}, 
  /* eTPU_B_29_IN input func */
  {61U, 10U}, 
  /* eMIOS_0_11_IN input func */
  {81U, 10U}, 
  /* IGF_IN3 input func */
  {143U, 18U}, 
  /* IGF_IN8 input func */
  {148U, 3U}, 
  /* IGF_IN13 input func */
  {153U, 13U}, 
  /* IGF_IN19 input func */
  {159U, 18U}, 
  /* IGF_IN24 input func */
  {164U, 3U}, 
  /* IGF_IN29 input func */
  {169U, 13U}, 
  /* INMUX settings for pad PORT132:    {INMUX reg, PADSEL val} */
  /* eTPU_A_9_IN input func */
  {9U, 10U}, 
  /* eTPU_B_30_IN input func */
  {62U, 10U}, 
  /* eMIOS_0_12_IN input func */
  {82U, 10U}, 
  /* eMIOS_1_22_IN input func */
  {118U, 11U}, 
  /* IGF_IN4 input func */
  {144U, 16U}, 
  /* IGF_IN9 input func */
  {149U, 3U}, 
  /* IGF_IN14 input func */
  {154U, 12U}, 
  /* IGF_IN20 input func */
  {160U, 16U}, 
  /* IGF_IN25 input func */
  {165U, 3U}, 
  /* IGF_IN30 input func */
  {170U, 12U}, 
  /* INMUX settings for pad PORT133:    {INMUX reg, PADSEL val} */
  /* eTPU_A_10_IN input func */
  {10U, 10U}, 
  /* eTPU_B_31_IN input func */
  {63U, 9U}, 
  /* eMIOS_0_13_IN input func */
  {83U, 10U}, 
  /* eMIOS_1_23_IN input func */
  {119U, 11U}, 
  /* IGF_IN5 input func */
  {145U, 17U}, 
  /* IGF_IN10 input func */
  {150U, 3U}, 
  /* IGF_IN15 input func */
  {155U, 11U}, 
  /* IGF_IN21 input func */
  {161U, 17U}, 
  /* IGF_IN26 input func */
  {166U, 3U}, 
  /* IGF_IN31 input func */
  {171U, 11U}, 
  /* INMUX settings for pad PORT144:    {INMUX reg, PADSEL val} */
  /* eTPU_A_25_IN input func */
  {25U, 10U}, 
  /* eTPU_B_0_IN input func */
  {32U, 11U}, 
  /* eTPU_B_TCRCLK_B input func */
  {65U, 7U}, 
  /* IGF_IN0 input func */
  {140U, 10U}, 
  /* IGF_IN9 input func */
  {149U, 6U}, 
  /* IGF_IN16 input func */
  {156U, 10U}, 
  /* IGF_IN25 input func */
  {165U, 6U}, 
  /* INMUX settings for pad PORT145:    {INMUX reg, PADSEL val} */
  /* eTPU_A_26_IN input func */
  {26U, 10U}, 
  /* eTPU_B_1_IN input func */
  {33U, 11U}, 
  /* eTPU_B_TCRCLK_B input func */
  {65U, 8U}, 
  /* IGF_IN1 input func */
  {141U, 10U}, 
  /* IGF_IN10 input func */
  {150U, 6U}, 
  /* IGF_IN17 input func */
  {157U, 10U}, 
  /* IGF_IN26 input func */
  {166U, 6U}, 
  /* INMUX settings for pad PORT146:    {INMUX reg, PADSEL val} */
  /* eTPU_B_2_IN input func */
  {34U, 10U}, 
  /* IGF_IN2 input func */
  {142U, 9U}, 
  /* IGF_IN18 input func */
  {158U, 9U}, 
  /* INMUX settings for pad PORT147:    {INMUX reg, PADSEL val} */
  /* eTPU_A_27_IN input func */
  {27U, 10U}, 
  /* eTPU_B_3_IN input func */
  {35U, 10U}, 
  /* eMIOS_0_14_IN input func */
  {84U, 10U}, 
  /* IGF_IN3 input func */
  {143U, 9U}, 
  /* IGF_IN6 input func */
  {146U, 17U}, 
  /* IGF_IN11 input func */
  {151U, 6U}, 
  /* IGF_IN19 input func */
  {159U, 9U}, 
  /* IGF_IN22 input func */
  {162U, 17U}, 
  /* IGF_IN27 input func */
  {167U, 6U}, 
  /* INMUX settings for pad PORT148:    {INMUX reg, PADSEL val} */
  /* eTPU_A_28_IN input func */
  {28U, 10U}, 
  /* eTPU_B_4_IN input func */
  {36U, 10U}, 
  /* eMIOS_0_15_IN input func */
  {85U, 10U}, 
  /* IGF_IN4 input func */
  {144U, 9U}, 
  /* IGF_IN7 input func */
  {147U, 16U}, 
  /* IGF_IN12 input func */
  {152U, 6U}, 
  /* IGF_IN20 input func */
  {160U, 9U}, 
  /* IGF_IN23 input func */
  {163U, 16U}, 
  /* IGF_IN28 input func */
  {168U, 6U}, 
  /* INMUX settings for pad PORT149:    {INMUX reg, PADSEL val} */
  /* eTPU_A_29_IN input func */
  {29U, 10U}, 
  /* eTPU_B_5_IN input func */
  {37U, 10U}, 
  /* eMIOS_0_22_IN input func */
  {92U, 8U}, 
  /* IGF_IN5 input func */
  {145U, 10U}, 
  /* IGF_IN13 input func */
  {153U, 6U}, 
  /* IGF_IN14 input func */
  {154U, 13U}, 
  /* IGF_IN21 input func */
  {161U, 10U}, 
  /* IGF_IN29 input func */
  {169U, 6U}, 
  /* IGF_IN30 input func */
  {170U, 13U}, 
  /* INMUX settings for pad PORT150:    {INMUX reg, PADSEL val} */
  /* eTPU_A_25_IN input func */
  {25U, 11U}, 
  /* eTPU_B_6_IN input func */
  {38U, 10U}, 
  /* IGF_IN6 input func */
  {146U, 10U}, 
  /* IGF_IN9 input func */
  {149U, 7U}, 
  /* IGF_IN22 input func */
  {162U, 10U}, 
  /* IGF_IN25 input func */
  {165U, 7U}, 
  /* INMUX settings for pad PORT151:    {INMUX reg, PADSEL val} */
  /* eTPU_A_30_IN input func */
  {30U, 10U}, 
  /* eTPU_B_7_IN input func */
  {39U, 10U}, 
  /* eMIOS_0_23_IN input func */
  {93U, 8U}, 
  /* IGF_IN4 input func */
  {144U, 10U}, 
  /* IGF_IN14 input func */
  {154U, 6U}, 
  /* IGF_IN15 input func */
  {155U, 12U}, 
  /* IGF_IN20 input func */
  {160U, 10U}, 
  /* IGF_IN30 input func */
  {170U, 6U}, 
  /* IGF_IN31 input func */
  {171U, 12U}, 
  /* SIUL2_IRQ0 input func */
  {172U, 2U}, 
  /* SAR_0_NRML_TRIG input func */
  {480U, 52U}, 
  /* SAR_1_NRML_TRIG input func */
  {481U, 52U}, 
  /* SAR_2_NRML_TRIG input func */
  {482U, 52U}, 
  /* SAR_3_NRML_TRIG input func */
  {483U, 52U}, 
  /* INMUX settings for pad PORT152:    {INMUX reg, PADSEL val} */
  /* eTPU_A_27_IN input func */
  {27U, 11U}, 
  /* eTPU_B_8_IN input func */
  {40U, 10U}, 
  /* IGF_IN8 input func */
  {148U, 9U}, 
  /* IGF_IN11 input func */
  {151U, 7U}, 
  /* IGF_IN24 input func */
  {164U, 9U}, 
  /* IGF_IN27 input func */
  {167U, 7U}, 
  /* SIUL2_IRQ1 input func */
  {173U, 2U}, 
  /* SAR_0_NRML_TRIG input func */
  {480U, 53U}, 
  /* SAR_1_NRML_TRIG input func */
  {481U, 53U}, 
  /* SAR_2_NRML_TRIG input func */
  {482U, 53U}, 
  /* SAR_3_NRML_TRIG input func */
  {483U, 53U}, 
  /* INMUX settings for pad PORT153:    {INMUX reg, PADSEL val} */
  /* eTPU_A_28_IN input func */
  {28U, 11U}, 
  /* eTPU_B_9_IN input func */
  {41U, 10U}, 
  /* IGF_IN9 input func */
  {149U, 10U}, 
  /* IGF_IN12 input func */
  {152U, 7U}, 
  /* IGF_IN25 input func */
  {165U, 10U}, 
  /* IGF_IN28 input func */
  {168U, 7U}, 
  /* SIUL2_IRQ2 input func */
  {174U, 2U}, 
  /* INMUX settings for pad PORT154:    {INMUX reg, PADSEL val} */
  /* eTPU_A_29_IN input func */
  {29U, 11U}, 
  /* eTPU_B_10_IN input func */
  {42U, 10U}, 
  /* IGF_IN10 input func */
  {150U, 9U}, 
  /* IGF_IN13 input func */
  {153U, 7U}, 
  /* IGF_IN26 input func */
  {166U, 9U}, 
  /* IGF_IN29 input func */
  {169U, 7U}, 
  /* SIUL2_IRQ3 input func */
  {175U, 1U}, 
  /* SAR_0_NRML_TRIG input func */
  {480U, 54U}, 
  /* SAR_1_NRML_TRIG input func */
  {481U, 54U}, 
  /* SAR_2_NRML_TRIG input func */
  {482U, 54U}, 
  /* SAR_3_NRML_TRIG input func */
  {483U, 54U}, 
  /* INMUX settings for pad PORT155:    {INMUX reg, PADSEL val} */
  /* eTPU_A_31_IN input func */
  {31U, 10U}, 
  /* eTPU_B_11_IN input func */
  {43U, 10U}, 
  /* eMIOS_1_8_IN input func */
  {104U, 10U}, 
  /* IGF_IN0 input func */
  {140U, 18U}, 
  /* IGF_IN11 input func */
  {151U, 10U}, 
  /* IGF_IN15 input func */
  {155U, 6U}, 
  /* IGF_IN16 input func */
  {156U, 17U}, 
  /* IGF_IN27 input func */
  {167U, 10U}, 
  /* IGF_IN31 input func */
  {171U, 6U}, 
  /* SIUL2_IRQ4 input func */
  {176U, 1U}, 
  /* SAR_0_NRML_TRIG input func */
  {480U, 55U}, 
  /* SAR_1_NRML_TRIG input func */
  {481U, 55U}, 
  /* SAR_2_NRML_TRIG input func */
  {482U, 55U}, 
  /* SAR_3_NRML_TRIG input func */
  {483U, 55U}, 
  /* INMUX settings for pad PORT156:    {INMUX reg, PADSEL val} */
  /* eTPU_B_12_IN input func */
  {44U, 10U}, 
  /* eMIOS_1_9_IN input func */
  {105U, 10U}, 
  /* IGF_IN1 input func */
  {141U, 19U}, 
  /* IGF_IN12 input func */
  {152U, 10U}, 
  /* IGF_IN17 input func */
  {157U, 18U}, 
  /* IGF_IN28 input func */
  {168U, 10U}, 
  /* SIUL2_IRQ5 input func */
  {177U, 1U}, 
  /* INMUX settings for pad PORT157:    {INMUX reg, PADSEL val} */
  /* eTPU_B_13_IN input func */
  {45U, 10U}, 
  /* eMIOS_1_10_IN input func */
  {106U, 10U}, 
  /* IGF_IN2 input func */
  {142U, 18U}, 
  /* IGF_IN13 input func */
  {153U, 10U}, 
  /* IGF_IN18 input func */
  {158U, 18U}, 
  /* IGF_IN29 input func */
  {169U, 10U}, 
  /* SIUL2_IRQ6 input func */
  {178U, 2U}, 
  /* INMUX settings for pad PORT158:    {INMUX reg, PADSEL val} */
  /* eTPU_B_14_IN input func */
  {46U, 10U}, 
  /* eMIOS_1_11_IN input func */
  {107U, 10U}, 
  /* IGF_IN3 input func */
  {143U, 17U}, 
  /* IGF_IN14 input func */
  {154U, 9U}, 
  /* IGF_IN19 input func */
  {159U, 17U}, 
  /* IGF_IN30 input func */
  {170U, 9U}, 
  /* SIUL2_IRQ7 input func */
  {179U, 2U}, 
  /* INMUX settings for pad PORT159:    {INMUX reg, PADSEL val} */
  /* eTPU_B_15_IN input func */
  {47U, 10U}, 
  /* eMIOS_1_12_IN input func */
  {108U, 10U}, 
  /* IGF_IN4 input func */
  {144U, 18U}, 
  /* IGF_IN15 input func */
  {155U, 9U}, 
  /* IGF_IN20 input func */
  {160U, 18U}, 
  /* IGF_IN31 input func */
  {171U, 9U}, 
  /* INMUX settings for pad PORT160:    {INMUX reg, PADSEL val} */
  /* eTPU_B_17_IN input func */
  {49U, 11U}, 
  /* eMIOS_1_13_IN input func */
  {109U, 10U}, 
  /* IGF_IN1 input func */
  {141U, 14U}, 
  /* IGF_IN5 input func */
  {145U, 19U}, 
  /* IGF_IN17 input func */
  {157U, 13U}, 
  /* IGF_IN21 input func */
  {161U, 19U}, 
  /* INMUX settings for pad PORT161:    {INMUX reg, PADSEL val} */
  /* eTPU_B_18_IN input func */
  {50U, 11U}, 
  /* IGF_IN2 input func */
  {142U, 13U}, 
  /* IGF_IN18 input func */
  {158U, 13U}, 
  /* INMUX settings for pad PORT162:    {INMUX reg, PADSEL val} */
  /* eTPU_B_19_IN input func */
  {51U, 11U}, 
  /* IGF_IN3 input func */
  {143U, 13U}, 
  /* IGF_IN19 input func */
  {159U, 13U}, 
  /* INMUX settings for pad PORT164:    {INMUX reg, PADSEL val} */
  /* eTPU_B_20_IN input func */
  {52U, 11U}, 
  /* eMIOS_0_19_IN input func */
  {89U, 10U}, 
  /* IGF_IN4 input func */
  {144U, 14U}, 
  /* IGF_IN11 input func */
  {151U, 17U}, 
  /* IGF_IN20 input func */
  {160U, 14U}, 
  /* IGF_IN27 input func */
  {167U, 17U}, 
  /* INMUX settings for pad PORT165:    {INMUX reg, PADSEL val} */
  /* eTPU_B_21_IN input func */
  {53U, 11U}, 
  /* IGF_IN5 input func */
  {145U, 14U}, 
  /* IGF_IN21 input func */
  {161U, 14U}, 
  /* INMUX settings for pad PORT167:    {INMUX reg, PADSEL val} */
  /* eTPU_A_0_IN input func */
  {0U, 10U}, 
  /* eTPU_B_22_IN input func */
  {54U, 11U}, 
  /* eTPU_A_TCRCLK_A input func */
  {64U, 5U}, 
  /* eMIOS_0_20_IN input func */
  {90U, 10U}, 
  /* IGF_IN0 input func */
  {140U, 3U}, 
  /* IGF_IN6 input func */
  {146U, 14U}, 
  /* IGF_IN12 input func */
  {152U, 17U}, 
  /* IGF_IN16 input func */
  {156U, 3U}, 
  /* IGF_IN22 input func */
  {162U, 14U}, 
  /* IGF_IN28 input func */
  {168U, 17U}, 
  /* INMUX settings for pad PORT168:    {INMUX reg, PADSEL val} */
  /* eTPU_A_1_IN input func */
  {1U, 10U}, 
  /* eTPU_B_23_IN input func */
  {55U, 12U}, 
  /* eTPU_A_TCRCLK_A input func */
  {64U, 6U}, 
  /* eMIOS_0_21_IN input func */
  {91U, 10U}, 
  /* IGF_IN1 input func */
  {141U, 3U}, 
  /* IGF_IN7 input func */
  {147U, 13U}, 
  /* IGF_IN13 input func */
  {153U, 17U}, 
  /* IGF_IN17 input func */
  {157U, 3U}, 
  /* IGF_IN23 input func */
  {163U, 13U}, 
  /* IGF_IN29 input func */
  {169U, 17U}, 
  /* DSPI_2_SIN input func */
  {291U, 1U}, 
  /* INMUX settings for pad PORT169:    {INMUX reg, PADSEL val} */
  /* eTPU_A_2_IN input func */
  {2U, 10U}, 
  /* eTPU_B_24_IN input func */
  {56U, 12U}, 
  /* eMIOS_0_22_IN input func */
  {92U, 9U}, 
  /* IGF_IN2 input func */
  {142U, 3U}, 
  /* IGF_IN8 input func */
  {148U, 14U}, 
  /* IGF_IN14 input func */
  {154U, 14U}, 
  /* IGF_IN18 input func */
  {158U, 3U}, 
  /* IGF_IN24 input func */
  {164U, 14U}, 
  /* IGF_IN30 input func */
  {170U, 14U}, 
  /* INMUX settings for pad PORT170:    {INMUX reg, PADSEL val} */
  /* eTPU_A_3_IN input func */
  {3U, 10U}, 
  /* eTPU_B_25_IN input func */
  {57U, 11U}, 
  /* eMIOS_0_23_IN input func */
  {93U, 9U}, 
  /* IGF_IN3 input func */
  {143U, 3U}, 
  /* IGF_IN9 input func */
  {149U, 14U}, 
  /* IGF_IN15 input func */
  {155U, 13U}, 
  /* IGF_IN19 input func */
  {159U, 3U}, 
  /* IGF_IN25 input func */
  {165U, 14U}, 
  /* IGF_IN31 input func */
  {171U, 13U}, 
  /* INMUX settings for pad PORT171:    {INMUX reg, PADSEL val} */
  /* eTPU_A_4_IN input func */
  {4U, 10U}, 
  /* eTPU_B_26_IN input func */
  {58U, 11U}, 
  /* eMIOS_1_16_IN input func */
  {112U, 11U}, 
  /* IGF_IN4 input func */
  {144U, 3U}, 
  /* IGF_IN8 input func */
  {148U, 19U}, 
  /* IGF_IN10 input func */
  {150U, 12U}, 
  /* IGF_IN20 input func */
  {160U, 3U}, 
  /* IGF_IN24 input func */
  {164U, 19U}, 
  /* IGF_IN26 input func */
  {166U, 12U}, 
  /* INMUX settings for pad PORT172:    {INMUX reg, PADSEL val} */
  /* eTPU_A_5_IN input func */
  {5U, 11U}, 
  /* eTPU_B_27_IN input func */
  {59U, 11U}, 
  /* eMIOS_1_17_IN input func */
  {113U, 11U}, 
  /* IGF_IN5 input func */
  {145U, 4U}, 
  /* IGF_IN9 input func */
  {149U, 19U}, 
  /* IGF_IN11 input func */
  {151U, 14U}, 
  /* IGF_IN21 input func */
  {161U, 4U}, 
  /* IGF_IN25 input func */
  {165U, 19U}, 
  /* IGF_IN27 input func */
  {167U, 14U}, 
  /* SIUL2_IRQ5 input func */
  {177U, 2U}, 
  /* INMUX settings for pad PORT173:    {INMUX reg, PADSEL val} */
  /* eTPU_A_6_IN input func */
  {6U, 11U}, 
  /* eTPU_B_28_IN input func */
  {60U, 11U}, 
  /* eMIOS_1_18_IN input func */
  {114U, 11U}, 
  /* IGF_IN6 input func */
  {146U, 4U}, 
  /* IGF_IN10 input func */
  {150U, 17U}, 
  /* IGF_IN12 input func */
  {152U, 14U}, 
  /* IGF_IN22 input func */
  {162U, 4U}, 
  /* IGF_IN26 input func */
  {166U, 17U}, 
  /* IGF_IN28 input func */
  {168U, 14U}, 
  /* SIUL2_IRQ4 input func */
  {176U, 2U}, 
  /* DSPI_2_SIN input func */
  {291U, 2U}, 
  /* INMUX settings for pad PORT174:    {INMUX reg, PADSEL val} */
  /* eTPU_A_7_IN input func */
  {7U, 10U}, 
  /* eTPU_B_29_IN input func */
  {61U, 11U}, 
  /* eMIOS_1_19_IN input func */
  {115U, 11U}, 
  /* IGF_IN7 input func */
  {147U, 3U}, 
  /* IGF_IN11 input func */
  {151U, 20U}, 
  /* IGF_IN13 input func */
  {153U, 14U}, 
  /* IGF_IN23 input func */
  {163U, 3U}, 
  /* IGF_IN27 input func */
  {167U, 20U}, 
  /* IGF_IN29 input func */
  {169U, 14U}, 
  /* SIUL2_IRQ3 input func */
  {175U, 2U}, 
  /* INMUX settings for pad PORT192:    {INMUX reg, PADSEL val} */
  /* eTPU_A_10 input func */
  {10U, 11U}, 
  /* eTPU_B_24 input func */
  {56U, 13U}, 
  /* IGF_IN8 input func */
  {148U, 20U}, 
  /* IGF_IN10 input func */
  {150U, 19U}, 
  /* IGF_IN24 input func */
  {164U, 20U}, 
  /* IGF_IN26 input func */
  {166U, 19U}, 
  /* INMUX settings for pad PORT193:    {INMUX reg, PADSEL val} */
  /* SIUL2_IRQ3 input func */
  {175U, 3U}, 
  /* SENT_0_0 input func */
  {200U, 2U}, 
  /* eTPU_A_9 input func */
  {9U, 11U}, 
  /* eTPU_B_13 input func */
  {45U, 11U}, 
  /* eMIOS_1_23 input func */
  {119U, 12U}, 
  /* IGF_IN9 input func */
  {149U, 20U}, 
  /* IGF_IN13 input func */
  {153U, 20U}, 
  /* IGF_IN15 input func */
  {155U, 16U}, 
  /* IGF_IN25 input func */
  {165U, 20U}, 
  /* IGF_IN27 input func */
  {167U, 21U}, 
  /* IGF_IN31 input func */
  {171U, 16U}, 
  /* INMUX settings for pad PORT194:    {INMUX reg, PADSEL val} */
  /* SIUL2_IRQ2 input func */
  {174U, 3U}, 
  /* SENT_0_1 input func */
  {201U, 2U}, 
  /* eTPU_A_8 input func */
  {8U, 11U}, 
  /* eTPU_B_12 input func */
  {44U, 11U}, 
  /* eMIOS_0_23 input func */
  {93U, 10U}, 
  /* IGF_IN8 input func */
  {148U, 21U}, 
  /* IGF_IN12 input func */
  {152U, 20U}, 
  /* IGF_IN15 input func */
  {155U, 17U}, 
  /* IGF_IN24 input func */
  {164U, 21U}, 
  /* IGF_IN28 input func */
  {168U, 20U}, 
  /* IGF_IN31 input func */
  {171U, 17U}, 
  /* INMUX settings for pad PORT195:    {INMUX reg, PADSEL val} */
  /* SIUL2_IRQ1 input func */
  {173U, 3U}, 
  /* SENT_0_2 input func */
  {202U, 2U}, 
  /* eTPU_A_7 input func */
  {7U, 11U}, 
  /* eTPU_B_31 input func */
  {63U, 10U}, 
  /* eMIOS_0_22 input func */
  {92U, 10U}, 
  /* IGF_IN7 input func */
  {147U, 19U}, 
  /* IGF_IN14 input func */
  {154U, 17U}, 
  /* IGF_IN15 input func */
  {155U, 18U}, 
  /* IGF_IN23 input func */
  {163U, 19U}, 
  /* IGF_IN30 input func */
  {170U, 17U}, 
  /* IGF_IN31 input func */
  {171U, 18U}, 
  /* INMUX settings for pad PORT208:    {INMUX reg, PADSEL val} */
  /* eTPU_A_23 input func */
  {23U, 11U}, 
  /* eTPU_B_4 input func */
  {36U, 11U}, 
  /* IGF_IN4 input func */
  {144U, 20U}, 
  /* IGF_IN7 input func */
  {147U, 20U}, 
  /* IGF_IN20 input func */
  {160U, 20U}, 
  /* IGF_IN23 input func */
  {163U, 20U}, 
  /* INMUX settings for pad PORT209:    {INMUX reg, PADSEL val} */
  /* eTPU_B_3 input func */
  {35U, 12U}, 
  /* eMIOS_0_18 input func */
  {88U, 10U}, 
  /* IGF_IN3 input func */
  {143U, 19U}, 
  /* IGF_IN10 input func */
  {150U, 20U}, 
  /* IGF_IN19 input func */
  {159U, 19U}, 
  /* IGF_IN26 input func */
  {166U, 20U}, 
  /* INMUX settings for pad PORT210:    {INMUX reg, PADSEL val} */
  /* eTPU_A_22 input func */
  {22U, 11U}, 
  /* eTPU_B_2 input func */
  {34U, 11U}, 
  /* IGF_IN2 input func */
  {142U, 19U}, 
  /* IGF_IN6 input func */
  {146U, 20U}, 
  /* IGF_IN18 input func */
  {158U, 19U}, 
  /* IGF_IN22 input func */
  {162U, 20U}, 
  /* INMUX settings for pad PORT211:    {INMUX reg, PADSEL val} */
  /* eTPU_A_21 input func */
  {21U, 11U}, 
  /* eTPU_B_1 input func */
  {33U, 12U}, 
  /* eTPU_B_TCRCLK_B input func */
  {65U, 9U}, 
  /* IGF_IN1 input func */
  {141U, 20U}, 
  /* IGF_IN5 input func */
  {145U, 20U}, 
  /* IGF_IN17 input func */
  {157U, 19U}, 
  /* IGF_IN21 input func */
  {161U, 20U}, 
  /* INMUX settings for pad PORT212:    {INMUX reg, PADSEL val} */
  /* eTPU_A_20 input func */
  {20U, 11U}, 
  /* eTPU_B_0 input func */
  {32U, 12U}, 
  /* eTPU_B_TCRCLK_B input func */
  {65U, 10U}, 
  /* IGF_IN0 input func */
  {140U, 19U}, 
  /* IGF_IN4 input func */
  {144U, 21U}, 
  /* IGF_IN16 input func */
  {156U, 18U}, 
  /* IGF_IN20 input func */
  {160U, 21U}, 
  /* INMUX settings for pad PORT213:    {INMUX reg, PADSEL val} */
  /* eTPU_A_19 input func */
  {19U, 11U}, 
  /* eTPU_B_13 input func */
  {45U, 12U}, 
  /* IGF_IN3 input func */
  {143U, 20U}, 
  /* IGF_IN13 input func */
  {153U, 21U}, 
  /* IGF_IN19 input func */
  {159U, 20U}, 
  /* IGF_IN29 input func */
  {169U, 20U}, 
  /* INMUX settings for pad PORT214:    {INMUX reg, PADSEL val} */
  /* eTPU_A_18 input func */
  {18U, 11U}, 
  /* eTPU_B_14 input func */
  {46U, 11U}, 
  /* IGF_IN2 input func */
  {142U, 20U}, 
  /* IGF_IN14 input func */
  {154U, 18U}, 
  /* IGF_IN18 input func */
  {158U, 20U}, 
  /* IGF_IN30 input func */
  {170U, 18U}, 
  /* INMUX settings for pad PORT215:    {INMUX reg, PADSEL val} */
  /* eTPU_A_17 input func */
  {17U, 11U}, 
  /* eTPU_B_15 input func */
  {47U, 11U}, 
  /* IGF_IN1 input func */
  {141U, 21U}, 
  /* IGF_IN15 input func */
  {155U, 19U}, 
  /* IGF_IN17 input func */
  {157U, 20U}, 
  /* IGF_IN31 input func */
  {171U, 19U}, 
  /* INMUX settings for pad PORT216:    {INMUX reg, PADSEL val} */
  /* eTPU_A_16 input func */
  {16U, 11U}, 
  /* eTPU_B_16 input func */
  {48U, 11U}, 
  /* IGF_IN0 input func */
  {140U, 20U}, 
  /* IGF_IN16 input func */
  {156U, 19U}, 
  /* INMUX settings for pad PORT217:    {INMUX reg, PADSEL val} */
  /* eTPU_A_15 input func */
  {15U, 11U}, 
  /* eTPU_B_17 input func */
  {49U, 12U}, 
  /* IGF_IN1 input func */
  {141U, 22U}, 
  /* IGF_IN15 input func */
  {155U, 20U}, 
  /* IGF_IN17 input func */
  {157U, 21U}, 
  /* IGF_IN31 input func */
  {171U, 20U}, 
  /* INMUX settings for pad PORT218:    {INMUX reg, PADSEL val} */
  /* SENT_1_0 input func */
  {203U, 2U}, 
  /* eTPU_A_14 input func */
  {14U, 11U}, 
  /* eTPU_B_18 input func */
  {50U, 12U}, 
  /* eMIOS_1_20 input func */
  {116U, 11U}, 
  /* IGF_IN2 input func */
  {142U, 21U}, 
  /* IGF_IN12 input func */
  {152U, 21U}, 
  /* IGF_IN14 input func */
  {154U, 19U}, 
  /* IGF_IN18 input func */
  {158U, 21U}, 
  /* IGF_IN28 input func */
  {168U, 21U}, 
  /* IGF_IN30 input func */
  {170U, 19U}, 
  /* INMUX settings for pad PORT219:    {INMUX reg, PADSEL val} */
  /* eTPU_B_19 input func */
  {51U, 12U}, 
  /* IGF_IN3 input func */
  {143U, 21U}, 
  /* IGF_IN19 input func */
  {159U, 21U}, 
  /* INMUX settings for pad PORT220:    {INMUX reg, PADSEL val} */
  /* SIUL2_IRQ7 input func */
  {179U, 3U}, 
  /* eTPU_B_20 input func */
  {52U, 12U}, 
  /* IGF_IN4 input func */
  {144U, 22U}, 
  /* IGF_IN20 input func */
  {160U, 22U}, 
  /* INMUX settings for pad PORT221:    {INMUX reg, PADSEL val} */
  /* SIUL2_IRQ6 input func */
  {178U, 3U}, 
  /* SENT_1_1 input func */
  {204U, 2U}, 
  /* eTPU_A_13 input func */
  {13U, 11U}, 
  /* eTPU_B_15 input func */
  {47U, 12U}, 
  /* eMIOS_1_21 input func */
  {117U, 11U}, 
  /* IGF_IN13 input func */
  {153U, 22U}, 
  /* IGF_IN15 input func */
  {155U, 21U}, 
  /* IGF_IN29 input func */
  {169U, 21U}, 
  /* IGF_IN31 input func */
  {171U, 21U}, 
  /* INMUX settings for pad PORT222:    {INMUX reg, PADSEL val} */
  /* SIUL2_IRQ5 input func */
  {177U, 3U}, 
  /* SENT_1_2 input func */
  {205U, 2U}, 
  /* eTPU_A_12 input func */
  {12U, 11U}, 
  /* eTPU_B_14 input func */
  {46U, 12U}, 
  /* eMIOS_1_22 input func */
  {118U, 12U}, 
  /* IGF_IN12 input func */
  {152U, 22U}, 
  /* IGF_IN14 input func */
  {154U, 20U}, 
  /* IGF_IN28 input func */
  {168U, 22U}, 
  /* IGF_IN30 input func */
  {170U, 20U}, 
  /* INMUX settings for pad PORT223:    {INMUX reg, PADSEL val} */
  /* SIUL2_IRQ4 input func */
  {176U, 3U}, 
  /* eTPU_A_11 input func */
  {11U, 11U}, 
  /* eTPU_B_23 input func */
  {55U, 13U}, 
  /* IGF_IN7 input func */
  {147U, 21U}, 
  /* IGF_IN11 input func */
  {151U, 21U}, 
  /* IGF_IN23 input func */
  {163U, 21U}, 
  /* IGF_IN27 input func */
  {167U, 22U}, 
  /* INMUX settings for pad PORT224:    {INMUX reg, PADSEL val} */
  /* eTPU_B_20 input func */
  {52U, 13U}, 
  /* eMIOS_0_8 input func */
  {78U, 12U}, 
  /* SENT_0_0 input func */
  {200U, 3U}, 
  /* IGF_IN0 input func */
  {140U, 21U}, 
  /* IGF_IN4 input func */
  {144U, 23U}, 
  /* IGF_IN16 input func */
  {156U, 20U}, 
  /* IGF_IN20 input func */
  {160U, 23U}, 
  /* INMUX settings for pad PORT225:    {INMUX reg, PADSEL val} */
  /* eTPU_B_19 input func */
  {51U, 13U}, 
  /* eMIOS_0_9 input func */
  {79U, 11U}, 
  /* SENT_0_1 input func */
  {201U, 3U}, 
  /* IGF_IN1 input func */
  {141U, 23U}, 
  /* IGF_IN3 input func */
  {143U, 22U}, 
  /* IGF_IN17 input func */
  {157U, 22U}, 
  /* IGF_IN19 input func */
  {159U, 22U}, 
  /* INMUX settings for pad PORT226:    {INMUX reg, PADSEL val} */
  /* eTPU_A_31 input func */
  {31U, 11U}, 
  /* eTPU_B_18 input func */
  {50U, 13U}, 
  /* eMIOS_0_10 input func */
  {80U, 11U}, 
  /* SENT_0_2 input func */
  {202U, 3U}, 
  /* IGF_IN2 input func */
  {142U, 22U}, 
  /* IGF_IN15 input func */
  {155U, 22U}, 
  /* IGF_IN18 input func */
  {158U, 22U}, 
  /* IGF_IN31 input func */
  {171U, 22U}, 
  /* INMUX settings for pad PORT227:    {INMUX reg, PADSEL val} */
  /* eTPU_A_30 input func */
  {30U, 11U}, 
  /* eTPU_B_17 input func */
  {49U, 13U}, 
  /* IGF_IN1 input func */
  {141U, 24U}, 
  /* IGF_IN14 input func */
  {154U, 21U}, 
  /* IGF_IN17 input func */
  {157U, 23U}, 
  /* IGF_IN30 input func */
  {170U, 21U}, 
  /* INMUX settings for pad PORT228:    {INMUX reg, PADSEL val} */
  /* eTPU_B_16 input func */
  {48U, 12U}, 
  /* eMIOS_0_11 input func */
  {81U, 11U}, 
  /* IGF_IN0 input func */
  {140U, 22U}, 
  /* IGF_IN3 input func */
  {143U, 23U}, 
  /* IGF_IN16 input func */
  {156U, 21U}, 
  /* IGF_IN19 input func */
  {159U, 23U}, 
  /* INMUX settings for pad PORT229:    {INMUX reg, PADSEL val} */
  /* eTPU_A_29 input func */
  {29U, 12U}, 
  /* eTPU_B_15 input func */
  {47U, 13U}, 
  /* IGF_IN13 input func */
  {153U, 23U}, 
  /* IGF_IN15 input func */
  {155U, 23U}, 
  /* IGF_IN29 input func */
  {169U, 22U}, 
  /* IGF_IN31 input func */
  {171U, 23U}, 
  /* INMUX settings for pad PORT230:    {INMUX reg, PADSEL val} */
  /* eTPU_B_14 input func */
  {46U, 13U}, 
  /* eMIOS_0_12 input func */
  {82U, 11U}, 
  /* IGF_IN4 input func */
  {144U, 24U}, 
  /* IGF_IN14 input func */
  {154U, 22U}, 
  /* IGF_IN20 input func */
  {160U, 24U}, 
  /* IGF_IN30 input func */
  {170U, 22U}, 
  /* INMUX settings for pad PORT231:    {INMUX reg, PADSEL val} */
  /* eTPU_B_13 input func */
  {45U, 13U}, 
  /* eMIOS_0_13 input func */
  {83U, 11U}, 
  /* IGF_IN5 input func */
  {145U, 21U}, 
  /* IGF_IN13 input func */
  {153U, 24U}, 
  /* IGF_IN21 input func */
  {161U, 21U}, 
  /* IGF_IN29 input func */
  {169U, 23U}, 
  /* INMUX settings for pad PORT232:    {INMUX reg, PADSEL val} */
  /* eTPU_A_28 input func */
  {28U, 12U}, 
  /* eTPU_B_12 input func */
  {44U, 12U}, 
  /* IGF_IN12 input func */
  {152U, 23U}, 
  /* IGF_IN28 input func */
  {168U, 23U}, 
  /* INMUX settings for pad PORT233:    {INMUX reg, PADSEL val} */
  /* eTPU_A_27 input func */
  {27U, 12U}, 
  /* eTPU_B_11 input func */
  {43U, 11U}, 
  /* eMIOS_0_14 input func */
  {84U, 11U}, 
  /* IGF_IN6 input func */
  {146U, 21U}, 
  /* IGF_IN11 input func */
  {151U, 22U}, 
  /* IGF_IN22 input func */
  {162U, 21U}, 
  /* IGF_IN27 input func */
  {167U, 23U}, 
  /* INMUX settings for pad PORT234:    {INMUX reg, PADSEL val} */
  /* eTPU_B_10 input func */
  {42U, 11U}, 
  /* eMIOS_0_15 input func */
  {85U, 11U}, 
  /* IGF_IN7 input func */
  {147U, 22U}, 
  /* IGF_IN10 input func */
  {150U, 21U}, 
  /* IGF_IN23 input func */
  {163U, 22U}, 
  /* IGF_IN26 input func */
  {166U, 21U}, 
  /* INMUX settings for pad PORT235:    {INMUX reg, PADSEL val} */
  /* eTPU_A_26 input func */
  {26U, 11U}, 
  /* eTPU_B_9 input func */
  {41U, 11U}, 
  /* IGF_IN9 input func */
  {149U, 21U}, 
  /* IGF_IN10 input func */
  {150U, 22U}, 
  /* IGF_IN25 input func */
  {165U, 21U}, 
  /* IGF_IN26 input func */
  {166U, 22U}, 
  /* INMUX settings for pad PORT236:    {INMUX reg, PADSEL val} */
  /* eTPU_A_25 input func */
  {25U, 12U}, 
  /* eTPU_B_8 input func */
  {40U, 11U}, 
  /* IGF_IN8 input func */
  {148U, 22U}, 
  /* IGF_IN9 input func */
  {149U, 22U}, 
  /* IGF_IN24 input func */
  {164U, 22U}, 
  /* IGF_IN25 input func */
  {165U, 22U}, 
  /* INMUX settings for pad PORT237:    {INMUX reg, PADSEL val} */
  /* eTPU_B_7 input func */
  {39U, 11U}, 
  /* eMIOS_0_16 input func */
  {86U, 10U}, 
  /* IGF_IN7 input func */
  {147U, 23U}, 
  /* IGF_IN8 input func */
  {148U, 23U}, 
  /* IGF_IN23 input func */
  {163U, 23U}, 
  /* IGF_IN24 input func */
  {164U, 23U}, 
  /* INMUX settings for pad PORT238:    {INMUX reg, PADSEL val} */
  /* eTPU_A_24 input func */
  {24U, 11U}, 
  /* eTPU_B_6 input func */
  {38U, 11U}, 
  /* IGF_IN6 input func */
  {146U, 22U}, 
  /* IGF_IN8 input func */
  {148U, 24U}, 
  /* IGF_IN22 input func */
  {162U, 22U}, 
  /* IGF_IN24 input func */
  {164U, 24U}, 
  /* INMUX settings for pad PORT239:    {INMUX reg, PADSEL val} */
  /* eTPU_B_5 input func */
  {37U, 11U}, 
  /* eMIOS_0_17 input func */
  {87U, 10U}, 
  /* IGF_IN5 input func */
  {145U, 22U}, 
  /* IGF_IN9 input func */
  {149U, 23U}, 
  /* IGF_IN21 input func */
  {161U, 22U}, 
  /* IGF_IN25 input func */
  {165U, 23U}, 
  /* INMUX settings for pad PORT240:    {INMUX reg, PADSEL val} */
  /* eTPU_A_4 input func */
  {4U, 11U}, 
  /* eTPU_B_4 input func */
  {36U, 12U}, 
  /* eMIOS_0_16 input func */
  {86U, 11U}, 
  /* IGF_IN4 input func */
  {144U, 25U}, 
  /* IGF_IN8 input func */
  {148U, 25U}, 
  /* IGF_IN20 input func */
  {160U, 25U}, 
  /* IGF_IN24 input func */
  {164U, 25U}, 
  /* INMUX settings for pad PORT241:    {INMUX reg, PADSEL val} */
  /* eTPU_A_3 input func */
  {3U, 11U}, 
  /* eTPU_B_3 input func */
  {35U, 13U}, 
  /* eMIOS_0_17 input func */
  {87U, 11U}, 
  /* IGF_IN3 input func */
  {143U, 24U}, 
  /* IGF_IN9 input func */
  {149U, 24U}, 
  /* IGF_IN19 input func */
  {159U, 24U}, 
  /* IGF_IN25 input func */
  {165U, 24U}, 
  /* INMUX settings for pad PORT242:    {INMUX reg, PADSEL val} */
  /* eTPU_A_2 input func */
  {2U, 11U}, 
  /* eTPU_B_2 input func */
  {34U, 12U}, 
  /* eMIOS_0_18 input func */
  {88U, 11U}, 
  /* IGF_IN2 input func */
  {142U, 23U}, 
  /* IGF_IN10 input func */
  {150U, 23U}, 
  /* IGF_IN18 input func */
  {158U, 23U}, 
  /* IGF_IN26 input func */
  {166U, 23U}, 
  /* INMUX settings for pad PORT243:    {INMUX reg, PADSEL val} */
  /* eTPU_A_1 input func */
  {1U, 11U}, 
  /* eTPU_B_1 input func */
  {33U, 13U}, 
  /* eTPU_A_TCRCLK_A input func */
  {64U, 7U}, 
  /* eTPU_B_TCRCLK_B input func */
  {65U, 11U}, 
  /* eMIOS_0_19 input func */
  {89U, 11U}, 
  /* IGF_IN1 input func */
  {141U, 25U}, 
  /* IGF_IN11 input func */
  {151U, 23U}, 
  /* IGF_IN17 input func */
  {157U, 24U}, 
  /* IGF_IN27 input func */
  {167U, 24U}, 
  /* INMUX settings for pad PORT244:    {INMUX reg, PADSEL val} */
  /* eTPU_A_0 input func */
  {0U, 11U}, 
  /* eTPU_B_0 input func */
  {32U, 13U}, 
  /* eTPU_A_TCRCLK_A input func */
  {64U, 8U}, 
  /* eTPU_B_TCRCLK_B input func */
  {65U, 12U}, 
  /* eMIOS_0_20 input func */
  {90U, 11U}, 
  /* IGF_IN0 input func */
  {140U, 23U}, 
  /* IGF_IN12 input func */
  {152U, 24U}, 
  /* IGF_IN16 input func */
  {156U, 22U}, 
  /* IGF_IN28 input func */
  {168U, 24U}, 
  /* INMUX settings for pad PORT245:    {INMUX reg, PADSEL val} */
  /* eTPU_B_31 input func */
  {63U, 11U}, 
  /* eMIOS_0_21 input func */
  {91U, 11U}, 
  /* IGF_IN13 input func */
  {153U, 25U}, 
  /* IGF_IN15 input func */
  {155U, 24U}, 
  /* IGF_IN29 input func */
  {169U, 24U}, 
  /* IGF_IN31 input func */
  {171U, 24U}, 
  /* INMUX settings for pad PORT246:    {INMUX reg, PADSEL val} */
  /* eTPU_B_30 input func */
  {62U, 11U}, 
  /* eMIOS_0_22 input func */
  {92U, 11U}, 
  /* IGF_IN14 input func */
  {154U, 23U}, 
  /* IGF_IN30 input func */
  {170U, 23U}, 
  /* INMUX settings for pad PORT247:    {INMUX reg, PADSEL val} */
  /* eTPU_B_29 input func */
  {61U, 12U}, 
  /* eMIOS_0_23 input func */
  {93U, 11U}, 
  /* IGF_IN13 input func */
  {153U, 26U}, 
  /* IGF_IN15 input func */
  {155U, 25U}, 
  /* IGF_IN29 input func */
  {169U, 25U}, 
  /* IGF_IN31 input func */
  {171U, 25U}, 
  /* INMUX settings for pad PORT248:    {INMUX reg, PADSEL val} */
  /* eTPU_B_28 input func */
  {60U, 12U}, 
  /* eMIOS_1_8 input func */
  {104U, 11U}, 
  /* SENT_1_0 input func */
  {203U, 3U}, 
  /* IGF_IN0 input func */
  {140U, 24U}, 
  /* IGF_IN12 input func */
  {152U, 25U}, 
  /* IGF_IN16 input func */
  {156U, 23U}, 
  /* IGF_IN28 input func */
  {168U, 25U}, 
  /* INMUX settings for pad PORT249:    {INMUX reg, PADSEL val} */
  /* eTPU_B_27 input func */
  {59U, 12U}, 
  /* eMIOS_1_9 input func */
  {105U, 11U}, 
  /* SENT_1_1 input func */
  {204U, 3U}, 
  /* IGF_IN1 input func */
  {141U, 26U}, 
  /* IGF_IN11 input func */
  {151U, 24U}, 
  /* IGF_IN17 input func */
  {157U, 25U}, 
  /* IGF_IN27 input func */
  {167U, 25U}, 
  /* INMUX settings for pad PORT250:    {INMUX reg, PADSEL val} */
  /* eTPU_B_26 input func */
  {58U, 12U}, 
  /* eMIOS_1_10 input func */
  {106U, 11U}, 
  /* SENT_1_2 input func */
  {205U, 3U}, 
  /* IGF_IN2 input func */
  {142U, 24U}, 
  /* IGF_IN10 input func */
  {150U, 24U}, 
  /* IGF_IN18 input func */
  {158U, 24U}, 
  /* IGF_IN26 input func */
  {166U, 24U}, 
  /* INMUX settings for pad PORT251:    {INMUX reg, PADSEL val} */
  /* eTPU_B_25 input func */
  {57U, 12U}, 
  /* eMIOS_1_11 input func */
  {107U, 11U}, 
  /* IGF_IN3 input func */
  {143U, 25U}, 
  /* IGF_IN9 input func */
  {149U, 25U}, 
  /* IGF_IN19 input func */
  {159U, 25U}, 
  /* IGF_IN25 input func */
  {165U, 25U}, 
  /* INMUX settings for pad PORT252:    {INMUX reg, PADSEL val} */
  /* eTPU_B_24 input func */
  {56U, 14U}, 
  /* eMIOS_1_12 input func */
  {108U, 11U}, 
  /* IGF_IN4 input func */
  {144U, 26U}, 
  /* IGF_IN8 input func */
  {148U, 26U}, 
  /* IGF_IN20 input func */
  {160U, 26U}, 
  /* IGF_IN24 input func */
  {164U, 26U}, 
  /* INMUX settings for pad PORT253:    {INMUX reg, PADSEL val} */
  /* eTPU_B_23 input func */
  {55U, 14U}, 
  /* eMIOS_1_13 input func */
  {109U, 11U}, 
  /* IGF_IN5 input func */
  {145U, 23U}, 
  /* IGF_IN7 input func */
  {147U, 24U}, 
  /* IGF_IN21 input func */
  {161U, 23U}, 
  /* IGF_IN23 input func */
  {163U, 24U}, 
  /* INMUX settings for pad PORT254:    {INMUX reg, PADSEL val} */
  /* eTPU_B_22 input func */
  {54U, 12U}, 
  /* eMIOS_1_14 input func */
  {110U, 11U}, 
  /* IGF_IN6 input func */
  {146U, 23U}, 
  /* IGF_IN22 input func */
  {162U, 23U}, 
  /* INMUX settings for pad PORT255:    {INMUX reg, PADSEL val} */
  /* eTPU_B_21 input func */
  {53U, 12U}, 
  /* eMIOS_1_15 input func */
  {111U, 11U}, 
  /* IGF_IN5 input func */
  {145U, 24U}, 
  /* IGF_IN7 input func */
  {147U, 25U}, 
  /* IGF_IN21 input func */
  {161U, 24U}, 
  /* IGF_IN23 input func */
  {163U, 25U}

};
#endif

#define PORT_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/**
* @violates @ref PORT_PBCFG_REF_1 only preprocessor statements and comments before '#include'
* @violates @ref PORT_PBCFG_REF_2 Repeated include file MemMap.h
*/
#include "MemMap.h"

#define PORT_START_SEC_CONFIG_DATA_16
/** @violates @ref PORT_PBCFG_REF_1 only preprocessor statements and comments before '#include' */
/** @violates @ref PORT_PBCFG_REF_2 Repeated include file MemMap.h */
#include "MemMap.h"

#if (STD_ON == PORT_SET_PIN_MODE_API)

/**
* @brief Port Pin description data
*/
CONST (uint16, PORT_CONST) Port_au16PinDescription[45][16] =
{


/*  Mode PORT_GPIO_MODE: */
{
/* Pads   0 ...  15 : PORT0_GPIO |
PORT1_GPIO |
PORT2_GPIO |
PORT3_GPIO |
PORT4_GPIO |
PORT5_GPIO |
PORT6_GPIO |
PORT7_GPIO |
PORT8_GPIO |
PORT9_GPIO |
PORT10_GPIO |
PORT11_GPIO |
PORT12_GPIO |
PORT13_GPIO */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  16 ...  31 : PORT16_GPIO |
PORT17_GPIO */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1)
          ),
/* Pads  32 ...  47 : PORT32_GPIO |
PORT33_GPIO |
PORT34_GPIO |
PORT35_GPIO |
PORT36_GPIO |
PORT37_GPIO |
PORT38_GPIO |
PORT39_GPIO |
PORT40_GPIO |
PORT41_GPIO |
PORT42_GPIO |
PORT43_GPIO |
PORT44_GPIO |
PORT45_GPIO */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT48_GPIO |
PORT49_GPIO |
PORT50_GPIO |
PORT51_GPIO |
PORT52_GPIO |
PORT53_GPIO |
PORT54_GPIO |
PORT55_GPIO |
PORT56_GPIO |
PORT57_GPIO |
PORT58_GPIO |
PORT59_GPIO |
PORT60_GPIO |
PORT61_GPIO |
PORT62_GPIO |
PORT63_GPIO */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads  64 ...  79 : PORT64_GPIO */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads  80 ...  95 : PORT80_GPIO |
PORT81_GPIO |
PORT82_GPIO |
PORT83_GPIO |
PORT84_GPIO |
PORT85_GPIO |
PORT86_GPIO |
PORT87_GPIO |
PORT88_GPIO |
PORT89_GPIO |
PORT90_GPIO |
PORT91_GPIO |
PORT92_GPIO |
PORT93_GPIO */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_GPIO |
PORT98_GPIO |
PORT99_GPIO |
PORT100_GPIO |
PORT101_GPIO |
PORT102_GPIO |
PORT103_GPIO |
PORT105_GPIO |
PORT106_GPIO |
PORT107_GPIO |
PORT108_GPIO |
PORT109_GPIO |
PORT110_GPIO |
PORT111_GPIO */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 112 ... 127 : PORT112_GPIO |
PORT113_GPIO |
PORT114_GPIO |
PORT115_GPIO |
PORT116_GPIO |
PORT117_GPIO |
PORT118_GPIO |
PORT119_GPIO |
PORT120_GPIO |
PORT121_GPIO |
PORT122_GPIO |
PORT123_GPIO |
PORT124_GPIO |
PORT125_GPIO |
PORT126_GPIO |
PORT127_GPIO */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 : PORT128_GPIO |
PORT129_GPIO |
PORT130_GPIO |
PORT131_GPIO |
PORT132_GPIO |
PORT133_GPIO */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT144_GPIO |
PORT145_GPIO |
PORT146_GPIO |
PORT147_GPIO |
PORT148_GPIO |
PORT149_GPIO |
PORT150_GPIO |
PORT151_GPIO |
PORT152_GPIO |
PORT153_GPIO |
PORT154_GPIO |
PORT155_GPIO |
PORT156_GPIO |
PORT157_GPIO |
PORT158_GPIO |
PORT159_GPIO */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 160 ... 175 : PORT160_GPIO |
PORT161_GPIO |
PORT162_GPIO |
PORT164_GPIO |
PORT165_GPIO |
PORT167_GPIO |
PORT168_GPIO |
PORT169_GPIO |
PORT170_GPIO |
PORT171_GPIO |
PORT172_GPIO |
PORT173_GPIO |
PORT174_GPIO */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_ALT1_FUNC_MODE: */
{
/* Pads   0 ...  15 : PORT0_eTPU_A_24_OUT |
PORT1_eTPU_A_23_OUT |
PORT2_eTPU_A_22_OUT |
PORT3_eTPU_A_21_OUT |
PORT4_eTPU_A_20_OUT |
PORT5_eTPU_A_19_OUT |
PORT6_eTPU_A_18_OUT |
PORT7_eTPU_A_17_OUT |
PORT8_eTPU_A_16_OUT |
PORT9_eTPU_A_15_OUT |
PORT10_eTPU_A_14_OUT |
PORT11_eTPU_A_13_OUT |
PORT12_eTPU_A_12_OUT |
PORT13_eTPU_A_11_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_eTPU_A_25_OUT |
PORT33_eTPU_A_26_OUT |
PORT34_eTPU_A_27_OUT |
PORT35_eTPU_A_28_OUT |
PORT36_eTPU_A_29_OUT |
PORT37_eTPU_A_30_OUT |
PORT38_eTPU_A_31_OUT |
PORT39_eTPU_A_0_OUT |
PORT40_eTPU_A_1_OUT |
PORT41_eTPU_A_2_OUT |
PORT42_eTPU_A_3_OUT |
PORT43_eTPU_A_4_OUT |
PORT44_eTPU_A_5_OUT |
PORT45_eTPU_A_6_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT48_eTPU_A_8_OUT |
PORT49_eTPU_A_9_OUT |
PORT50_eTPU_A_10_OUT |
PORT51_eTPU_A_11_OUT |
PORT52_eTPU_A_12_OUT |
PORT53_eTPU_A_13_OUT |
PORT54_eTPU_A_14_OUT |
PORT55_eTPU_A_15_OUT |
PORT56_eTPU_A_16_OUT |
PORT57_eTPU_A_17_OUT |
PORT58_eTPU_A_18_OUT |
PORT59_eTPU_A_19_OUT |
PORT60_eTPU_A_20_OUT |
PORT61_eTPU_A_21_OUT |
PORT62_eTPU_A_22_OUT |
PORT63_eTPU_A_23_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads  64 ...  79 : PORT64_eTPU_A_24_OUT */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads  80 ...  95 : PORT91_eTPU_A_5_OUT |
PORT92_eTPU_A_6_OUT |
PORT93_eTPU_A_7_OUT */
  (uint16)( SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_eTPU_A_8_OUT |
PORT98_eTPU_A_9_OUT |
PORT100_eTPU_A_10_OUT |
PORT101_eTPU_A_11_OUT |
PORT102_eTPU_A_13_OUT |
PORT103_eTPU_A_14_OUT |
PORT105_eTPU_A_15_OUT |
PORT106_eTPU_A_16_OUT |
PORT107_eTPU_A_17_OUT |
PORT108_eTPU_A_18_OUT |
PORT109_eTPU_A_19_OUT |
PORT110_eTPU_A_20_OUT |
PORT111_eTPU_A_21_OUT */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 112 ... 127 : PORT112_eTPU_A_22_OUT |
PORT113_eTPU_A_23_OUT |
PORT114_eTPU_A_24_OUT |
PORT115_eTPU_A_25_OUT |
PORT116_eTPU_A_26_OUT |
PORT117_eTPU_A_27_OUT |
PORT118_eTPU_A_28_OUT |
PORT119_eTPU_A_29_OUT |
PORT120_eTPU_A_30_OUT |
PORT121_eTPU_A_31_OUT |
PORT122_eTPU_A_12_OUT |
PORT123_eTPU_A_0_OUT |
PORT124_eTPU_A_1_OUT |
PORT125_eTPU_A_2_OUT |
PORT126_eTPU_A_3_OUT |
PORT127_eTPU_A_4_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 : PORT128_eTPU_A_5_OUT |
PORT129_eTPU_A_6_OUT |
PORT130_eTPU_A_7_OUT |
PORT131_eTPU_A_8_OUT |
PORT132_eTPU_A_9_OUT |
PORT133_eTPU_A_10_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT144_eTPU_A_25_OUT |
PORT145_eTPU_A_26_OUT |
PORT147_eTPU_A_27_OUT |
PORT148_eTPU_A_28_OUT |
PORT149_eTPU_A_29_OUT |
PORT150_eTPU_A_25_OUT |
PORT151_eTPU_A_30_OUT |
PORT152_eTPU_A_27_OUT |
PORT153_eTPU_A_28_OUT |
PORT154_eTPU_A_29_OUT |
PORT155_eTPU_A_31_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11)
          ),
/* Pads 160 ... 175 : PORT167_eTPU_A_0_OUT |
PORT168_eTPU_A_1_OUT |
PORT169_eTPU_A_2_OUT |
PORT170_eTPU_A_3_OUT |
PORT171_eTPU_A_4_OUT |
PORT172_eTPU_A_5_OUT |
PORT173_eTPU_A_6_OUT |
PORT174_eTPU_A_7_OUT */
  (uint16)( SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_ALT2_FUNC_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_eTPU_B_17_OUT |
PORT33_eTPU_B_18_OUT |
PORT34_eTPU_B_19_OUT |
PORT35_eTPU_B_20_OUT |
PORT36_eTPU_B_21_OUT |
PORT37_eTPU_B_22_OUT |
PORT38_eTPU_B_23_OUT |
PORT39_eTPU_B_24_OUT |
PORT40_eTPU_B_25_OUT |
PORT41_eTPU_B_26_OUT |
PORT42_eTPU_B_27_OUT |
PORT43_eTPU_B_28_OUT |
PORT44_eTPU_B_29_OUT |
PORT45_eTPU_B_30_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT48_eTPU_B_0_OUT |
PORT49_eTPU_B_1_OUT |
PORT50_eTPU_B_2_OUT |
PORT51_eTPU_B_3_OUT |
PORT52_eTPU_B_4_OUT |
PORT53_eTPU_B_5_OUT |
PORT54_eTPU_B_6_OUT |
PORT55_eTPU_B_7_OUT |
PORT56_eTPU_B_8_OUT |
PORT57_eTPU_B_9_OUT |
PORT58_eTPU_B_10_OUT |
PORT59_eTPU_B_11_OUT |
PORT60_eTPU_B_12_OUT |
PORT61_eTPU_B_13_OUT |
PORT62_eTPU_B_14_OUT |
PORT63_eTPU_B_15_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads  64 ...  79 : PORT64_eTPU_B_16_OUT */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads  80 ...  95 : PORT80_eTPU_B_0_OUT |
PORT81_eTPU_B_1_OUT |
PORT82_eTPU_B_18_OUT |
PORT83_eTPU_B_19_OUT |
PORT84_eTPU_B_20_OUT |
PORT85_eTPU_B_21_OUT |
PORT86_eTPU_B_22_OUT |
PORT87_eTPU_B_23_OUT |
PORT88_eTPU_B_24_OUT |
PORT89_eTPU_B_23_OUT |
PORT90_eTPU_B_24_OUT |
PORT91_eTPU_B_25_OUT |
PORT92_eTPU_B_26_OUT |
PORT93_eTPU_B_27_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_eTPU_B_28_OUT |
PORT98_eTPU_B_29_OUT |
PORT99_eTPU_B_30_OUT |
PORT100_eTPU_B_31_OUT |
PORT101_eTPU_B_0_OUT |
PORT102_eTPU_B_1_OUT |
PORT103_eTPU_B_2_OUT |
PORT105_eTPU_B_3_OUT |
PORT106_eTPU_B_4_OUT |
PORT107_eTPU_B_5_OUT |
PORT108_eTPU_B_6_OUT |
PORT109_eTPU_B_7_OUT |
PORT110_eTPU_B_8_OUT |
PORT111_eTPU_B_9_OUT */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 112 ... 127 : PORT112_eTPU_B_10_OUT |
PORT113_eTPU_B_11_OUT |
PORT114_eTPU_B_12_OUT |
PORT115_eTPU_B_13_OUT |
PORT116_eTPU_B_14_OUT |
PORT117_eTPU_B_15_OUT |
PORT118_eTPU_B_16_OUT |
PORT119_eTPU_B_17_OUT |
PORT120_eTPU_B_18_OUT |
PORT121_eTPU_B_19_OUT |
PORT122_eTPU_B_20_OUT |
PORT123_eTPU_B_21_OUT |
PORT124_eTPU_B_22_OUT |
PORT125_eTPU_B_23_OUT |
PORT126_eTPU_B_24_OUT |
PORT127_eTPU_B_25_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 : PORT128_eTPU_B_26_OUT |
PORT129_eTPU_B_27_OUT |
PORT130_eTPU_B_28_OUT |
PORT131_eTPU_B_29_OUT |
PORT132_eTPU_B_30_OUT |
PORT133_eTPU_B_31_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT144_eTPU_B_0_OUT |
PORT145_eTPU_B_1_OUT |
PORT146_eTPU_B_2_OUT |
PORT147_eTPU_B_3_OUT |
PORT148_eTPU_B_4_OUT |
PORT149_eTPU_B_5_OUT |
PORT150_eTPU_B_6_OUT |
PORT151_eTPU_B_7_OUT |
PORT152_eTPU_B_8_OUT |
PORT153_eTPU_B_9_OUT |
PORT154_eTPU_B_10_OUT |
PORT155_eTPU_B_11_OUT |
PORT156_eTPU_B_12_OUT |
PORT157_eTPU_B_13_OUT |
PORT158_eTPU_B_14_OUT |
PORT159_eTPU_B_15_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 160 ... 175 : PORT160_eTPU_B_17_OUT |
PORT161_eTPU_B_18_OUT |
PORT162_eTPU_B_19_OUT |
PORT164_eTPU_B_20_OUT |
PORT165_eTPU_B_21_OUT |
PORT167_eTPU_B_22_OUT |
PORT168_eTPU_B_23_OUT |
PORT169_eTPU_B_24_OUT |
PORT170_eTPU_B_25_OUT |
PORT171_eTPU_B_26_OUT |
PORT172_eTPU_B_27_OUT |
PORT173_eTPU_B_28_OUT |
PORT174_eTPU_B_29_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_ALT3_FUNC_MODE: */
{
/* Pads   0 ...  15 : PORT2_DSPI_M0_CS3 */
  (uint16)( SHL_PAD_U16(2)
          ),
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_eMIOS_0_8_OUT |
PORT33_eMIOS_0_9_OUT |
PORT34_eMIOS_0_10_OUT |
PORT35_eMIOS_0_11_OUT |
PORT36_eMIOS_0_12_OUT |
PORT37_eMIOS_0_13_OUT |
PORT38_eMIOS_0_14_OUT |
PORT39_eMIOS_0_15_OUT |
PORT40_eMIOS_0_16_OUT |
PORT41_eMIOS_0_17_OUT |
PORT42_eMIOS_0_18_OUT |
PORT43_eMIOS_0_19_OUT |
PORT44_eMIOS_0_20_OUT |
PORT45_eMIOS_0_21_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT48_eMIOS_1_8_OUT |
PORT49_eMIOS_1_9_OUT |
PORT50_eMIOS_1_10_OUT |
PORT51_eMIOS_1_11_OUT |
PORT52_eMIOS_1_12_OUT |
PORT53_eMIOS_1_13_OUT |
PORT54_eMIOS_1_14_OUT |
PORT55_eMIOS_1_15_OUT |
PORT56_eMIOS_1_16_OUT |
PORT57_eMIOS_1_17_OUT |
PORT58_eMIOS_1_18_OUT |
PORT59_eMIOS_1_19_OUT |
PORT60_eMIOS_1_20_OUT |
PORT61_eMIOS_1_21_OUT |
PORT62_eMIOS_1_22_OUT |
PORT63_eMIOS_1_23_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads  64 ...  79 : PORT64_eMIOS_0_8_OUT */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads  80 ...  95 : PORT80_eTPU_B_16_OUT |
PORT81_eTPU_B_17_OUT |
PORT84_eMIOS_1_18_OUT |
PORT85_eMIOS_1_19_OUT |
PORT88_eMIOS_1_20_OUT |
PORT89_eMIOS_1_21_OUT |
PORT90_eMIOS_1_22_OUT |
PORT91_eMIOS_1_23_OUT |
PORT92_eMIOS_1_15_OUT |
PORT93_eMIOS_1_14_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_eMIOS_0_8_OUT |
PORT98_eMIOS_0_9_OUT |
PORT99_eMIOS_0_10_OUT |
PORT100_eMIOS_0_11_OUT |
PORT101_eMIOS_0_12_OUT |
PORT102_eMIOS_0_13_OUT |
PORT103_eMIOS_0_14_OUT |
PORT105_eMIOS_0_15_OUT |
PORT106_eMIOS_0_16_OUT |
PORT107_eMIOS_0_17_OUT |
PORT108_eMIOS_0_18_OUT |
PORT109_eMIOS_0_19_OUT |
PORT110_eMIOS_0_20_OUT |
PORT111_eMIOS_0_21_OUT */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 112 ... 127 : PORT112_eMIOS_1_8_OUT |
PORT113_eMIOS_1_9_OUT |
PORT114_eMIOS_1_10_OUT |
PORT115_eMIOS_1_11_OUT |
PORT116_eMIOS_1_12_OUT |
PORT117_eMIOS_1_13_OUT |
PORT118_eMIOS_1_14_OUT |
PORT119_eMIOS_1_15_OUT |
PORT120_eMIOS_1_16_OUT |
PORT121_eMIOS_1_17_OUT |
PORT122_eMIOS_1_18_OUT |
PORT123_eMIOS_1_19_OUT |
PORT124_eMIOS_1_20_OUT |
PORT125_eMIOS_1_21_OUT |
PORT126_eMIOS_1_22_OUT |
PORT127_eMIOS_1_23_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 : PORT144_DCI_EVTO_0 |
PORT145_DCI_EVTO_1 |
PORT151_DCI_EVTO_0 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(7)
          ),
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_ALT4_FUNC_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads 48 ... 63 */
  (uint16)0x0000,
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads  80 ...  95 : PORT80_eMIOS_1_16_OUT |
PORT81_eMIOS_1_17_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1)
          ),
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 : PORT128_eMIOS_0_8_OUT |
PORT129_eMIOS_0_9_OUT |
PORT130_eMIOS_0_10_OUT |
PORT131_eMIOS_0_11_OUT |
PORT132_eMIOS_0_12_OUT |
PORT133_eMIOS_0_13_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT147_eMIOS_0_14_OUT |
PORT148_eMIOS_0_15_OUT |
PORT149_eMIOS_0_22_OUT |
PORT151_eMIOS_0_23_OUT |
PORT155_eMIOS_1_8_OUT |
PORT156_eMIOS_1_9_OUT |
PORT157_eMIOS_1_10_OUT |
PORT158_eMIOS_1_11_OUT |
PORT159_eMIOS_1_12_OUT */
  (uint16)( SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(7) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 160 ... 175 : PORT160_eMIOS_1_13_OUT |
PORT164_eMIOS_0_19_OUT |
PORT167_eMIOS_0_20_OUT |
PORT168_eMIOS_0_21_OUT |
PORT169_eMIOS_0_22_OUT |
PORT170_eMIOS_0_23_OUT |
PORT171_eMIOS_1_16_OUT |
PORT172_eMIOS_1_17_OUT |
PORT173_eMIOS_1_18_OUT |
PORT174_eMIOS_1_19_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(4) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_ALT5_FUNC_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_REACM_RCH0_A |
PORT33_REACM_RCH0_B |
PORT34_REACM_RCH0_C |
PORT35_REACM_RCH1_A |
PORT36_REACM_RCH1_B |
PORT37_REACM_RCH1_C |
PORT38_REACM_RCH2_A |
PORT39_REACM_RCH2_B |
PORT40_REACM_RCH2_C |
PORT41_REACM_RCH3_A |
PORT42_REACM_RCH3_B |
PORT43_REACM_RCH3_C |
PORT44_REACM_RCH4_B |
PORT45_REACM_RCH4_C */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT48_REACM_RCH0_A |
PORT49_REACM_RCH4_A |
PORT50_REACM_RCH7_A |
PORT51_REACM_RCH6_A |
PORT52_REACM_RCH1_A |
PORT53_REACM_RCH8_A |
PORT54_REACM_RCH9_A |
PORT55_REACM_RCH2_A |
PORT56_REACM_RCH3_A |
PORT58_REACM_RCH5_A |
PORT61_REACM_RCH5_B |
PORT62_REACM_RCH5_C */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(10) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads  80 ...  95 : PORT80_REACM_RCH9_B |
PORT81_REACM_RCH9_C |
PORT84_REACM_RCH5_A |
PORT85_REACM_RCH5_B |
PORT89_REACM_RCH5_C |
PORT91_REACM_RCH4_A |
PORT92_REACM_RCH4_B |
PORT93_REACM_RCH4_C */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(9) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_REACM_RCH6_A |
PORT98_REACM_RCH6_B |
PORT99_REACM_RCH8_A |
PORT100_REACM_RCH8_B |
PORT101_REACM_RCH6_C |
PORT102_REACM_RCH4_A |
PORT103_REACM_RCH8_C |
PORT105_REACM_RCH6_B |
PORT106_REACM_RCH6_C |
PORT107_REACM_RCH3_A |
PORT108_REACM_RCH3_B |
PORT109_REACM_RCH3_C |
PORT110_REACM_RCH9_A |
PORT111_REACM_RCH9_B */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 112 ... 127 : PORT112_REACM_RCH4_B |
PORT113_REACM_RCH9_C |
PORT115_REACM_RCH4_C |
PORT119_REACM_RCH5_A |
PORT123_REACM_RCH0_A |
PORT124_REACM_RCH0_B |
PORT125_REACM_RCH0_C |
PORT126_REACM_RCH1_A |
PORT127_REACM_RCH1_B */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(3) |
SHL_PAD_U16(7) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 : PORT128_REACM_RCH1_C |
PORT129_REACM_RCH2_A |
PORT130_REACM_RCH2_B |
PORT131_REACM_RCH2_C |
PORT132_eMIOS_1_22_OUT |
PORT133_eMIOS_1_23_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT148_REACM_RCH0_C |
PORT151_REACM_RCH2_B |
PORT155_REACM_RCH5_B */
  (uint16)( SHL_PAD_U16(4) |
SHL_PAD_U16(7) |
SHL_PAD_U16(11)
          ),
/* Pads 160 ... 175 : PORT160_REACM_RCH7_A |
PORT161_REACM_RCH7_B |
PORT162_REACM_RCH7_C |
PORT165_REACM_RCH8_A |
PORT167_REACM_RCH8_B |
PORT168_REACM_RCH8_C |
PORT170_REACM_RCH7_C |
PORT171_REACM_RCH7_B |
PORT172_REACM_RCH7_A |
PORT173_REACM_RCH6_A |
PORT174_REACM_RCH9_A */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(5) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_ALT6_FUNC_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads 48 ... 63 */
  (uint16)0x0000,
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads  80 ...  95 : PORT80_SAR_3_EXT_ADDR0_3 |
PORT81_SAR_3_EXT_ADDR1_3 |
PORT82_SAR_3_EXT_ADDR2_3 |
PORT92_SAR_3_EXT_ADDR2_3 |
PORT93_SAR_3_EXT_ADDR1_3 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 */
  (uint16)0x0000,
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_ALT7_FUNC_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads  48 ...  63 : PORT62_CGM_CLKOUT */
  (uint16)( SHL_PAD_U16(14)
          ),
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads  96 ... 111 : PORT97_SAR_3_EXT_ADDR0_3 */
  (uint16)( SHL_PAD_U16(1)
          ),
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 : PORT145_CGM_CLKOUT */
  (uint16)( SHL_PAD_U16(1)
          ),
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_ALT8_FUNC_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT39_FlexCAN_2_TX */
  (uint16)( SHL_PAD_U16(7)
          ),
/* Pads  48 ...  63 : PORT49_FlexCAN_1_TX |
PORT56_FlexCAN_3_TX |
PORT62_FlexCAN_0_TX */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(8) |
SHL_PAD_U16(14)
          ),
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads  80 ...  95 : PORT80_FlexCAN_2_TX |
PORT84_FlexCAN_0_TX |
PORT86_FlexCAN_1_TX |
PORT90_FlexCAN_1_TX |
PORT92_FlexCAN_0_TX */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(4) |
SHL_PAD_U16(6) |
SHL_PAD_U16(10) |
SHL_PAD_U16(12)
          ),
/* Pads  96 ... 111 : PORT98_FlexCAN_2_TX |
PORT102_FlexCAN_1_TX |
PORT107_FlexCAN_3_TX */
  (uint16)( SHL_PAD_U16(2) |
SHL_PAD_U16(6) |
SHL_PAD_U16(11)
          ),
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 : PORT129_FlexCAN_3_TX */
  (uint16)( SHL_PAD_U16(1)
          ),
/* Pads 144 ... 159 */
  (uint16)0x0000,
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_ALT9_FUNC_MODE: */
{
/* Pads   0 ...  15 : PORT1_LINFlex_M0_TX |
PORT12_LINFlex_M1_TX */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(12)
          ),
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT38_LINFlex_M1_TX |
PORT40_LINFlex_M0_TX */
  (uint16)( SHL_PAD_U16(6) |
SHL_PAD_U16(8)
          ),
/* Pads  48 ...  63 : PORT49_LINFlex_1_TX |
PORT51_LINFlex_3_TX |
PORT56_LINFlex_2_TX |
PORT62_LINFlex_0_TX */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(3) |
SHL_PAD_U16(8) |
SHL_PAD_U16(14)
          ),
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads  80 ...  95 : PORT80_LINFlex_2_TX |
PORT82_LINFlex_3_TX |
PORT84_LINFlex_1_TX |
PORT90_LINFlex_0_TX |
PORT92_LINFlex_2_TX */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(2) |
SHL_PAD_U16(4) |
SHL_PAD_U16(10) |
SHL_PAD_U16(12)
          ),
/* Pads  96 ... 111 : PORT98_LINFlex_0_TX |
PORT102_LINFlex_1_TX */
  (uint16)( SHL_PAD_U16(2) |
SHL_PAD_U16(6)
          ),
/* Pads 112 ... 127 : PORT120_LINFlex_3_TX |
PORT124_LINFlex_M0_TX |
PORT127_LINFlex_M1_TX */
  (uint16)( SHL_PAD_U16(8) |
SHL_PAD_U16(12) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 */
  (uint16)0x0000,
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_ONLY_INPUT_MODE: */
{
/* Pads   0 ...  15 : PORT2_SIPI_SIPI_RXP |
PORT4_SIPI_SIPI_CLK_IN */
  (uint16)( SHL_PAD_U16(2) |
SHL_PAD_U16(4)
          ),
/* Pads  16 ...  31 : PORT17_DCI_TDI */
  (uint16)( SHL_PAD_U16(1)
          ),
/* Pads  32 ...  47 : PORT32_DSPI_3_SS |
PORT37_FEC_COL |
PORT39_FEC_RXD0 |
PORT40_FEC_RXD1 |
PORT41_FEC_RXD2 |
PORT42_FEC_CRS_DV |
PORT42_FEC_RXD3 |
PORT43_FEC_RXER |
PORT44_DSPI_3_SCLK_IN |
PORT44_FEC_RXCLK |
PORT45_FEC_RXDV */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(5) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT49_BCTU_INJ_TRIG28 |
PORT58_BCTU_INJ_TRIG29 |
PORT59_DSPI_4_SS |
PORT61_FEC_MDIO_IN */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(13)
          ),
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads  96 ... 111 : PORT105_DSPI_1_SS |
PORT107_DSPI_1_SIN |
PORT109_DSPI_1_SCLK_IN */
  (uint16)( SHL_PAD_U16(9) |
SHL_PAD_U16(11) |
SHL_PAD_U16(13)
          ),
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 : PORT147_DCI_EVTI_1_0 |
PORT148_DCI_EVTI_0_0 |
PORT148_SIUL2_NMI |
PORT149_DCI_EVTI_0_1 |
PORT153_BCTU_INJ_TRIG30 |
PORT156_BCTU_INJ_TRIG31 |
PORT158_DSPI_0_SCLK_IN |
PORT158_FCCU_ERRORIN */
  (uint16)( SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(9) |
SHL_PAD_U16(12) |
SHL_PAD_U16(14) |
SHL_PAD_U16(14)
          ),
/* Pads 160 ... 175 : PORT161_DSPI_0_SIN |
PORT165_DSPI_0_SS |
PORT167_DSPI_2_SCLK_IN |
PORT171_DSPI_2_SS */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(5) |
SHL_PAD_U16(7) |
SHL_PAD_U16(11)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 : PORT192_GPI |
PORT193_GPI |
PORT194_GPI |
PORT195_GPI */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3)
          ),
/* Pads 208 ... 223 : PORT208_GPI |
PORT209_GPI |
PORT210_GPI |
PORT211_GPI |
PORT212_GPI |
PORT213_GPI |
PORT213_SAR_3_EXTMUX0 |
PORT214_GPI |
PORT214_SAR_3_EXTMUX1 |
PORT215_GPI |
PORT215_SAR_3_EXTMUX2 |
PORT216_GPI |
PORT216_SAR_3_EXTMUX3 |
PORT217_GPI |
PORT218_GPI |
PORT219_GPI |
PORT220_GPI |
PORT221_GPI |
PORT222_GPI |
PORT223_GPI */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 224 ... 239 : PORT224_GPI |
PORT225_GPI |
PORT226_GPI |
PORT227_GPI |
PORT228_GPI |
PORT229_GPI |
PORT230_GPI |
PORT231_GPI |
PORT232_GPI |
PORT233_GPI |
PORT234_GPI |
PORT235_GPI |
PORT236_GPI |
PORT237_GPI |
PORT238_GPI |
PORT239_GPI */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 240 ... 255 : PORT240_GPI |
PORT241_GPI |
PORT242_GPI |
PORT243_GPI |
PORT244_GPI |
PORT245_GPI |
PORT246_GPI |
PORT247_GPI |
PORT248_GPI |
PORT249_GPI |
PORT250_GPI |
PORT251_GPI |
PORT252_GPI |
PORT253_GPI |
PORT254_GPI |
PORT255_GPI */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          )
}
,
/*  Mode PORT_ALT11_FUNC_MODE: */
{
/* Pads   0 ...  15 : PORT4_SIPI_SIPI_CLK_OUT |
PORT5_SIPI_SIPI_TXN |
PORT6_SIPI_SIPI_TXP */
  (uint16)( SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6)
          ),
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads 48 ... 63 */
  (uint16)0x0000,
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 */
  (uint16)0x0000,
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_ALT12_FUNC_MODE: */
{
/* Pads   0 ...  15 : PORT3_DSPI_M0_SCLK |
PORT5_DSPI_M0_SOUT |
PORT6_DSPI_M0_SOUT |
PORT7_DSPI_M1_SOUT |
PORT8_DSPI_M1_SOUT |
PORT9_DSPI_M1_SCLK |
PORT10_DSPI_M1_SCLK */
  (uint16)( SHL_PAD_U16(3) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10)
          ),
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT34_FEC_TXEN |
PORT35_FEC_TXD3 |
PORT36_FEC_TXD2 |
PORT37_FEC_TXD1 |
PORT38_FEC_TXD0 */
  (uint16)( SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6)
          ),
/* Pads  48 ...  63 : PORT56_FEC_MDC |
PORT61_FEC_MDIO */
  (uint16)( SHL_PAD_U16(8) |
SHL_PAD_U16(13)
          ),
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 */
  (uint16)0x0000,
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_ALT13_FUNC_MODE: */
{
/* Pads   0 ...  15 : PORT3_DSPI_M0_SCLK_LVDS_Neg |
PORT4_DSPI_M0_SCLK_LVDS_Pos |
PORT5_DSPI_M0_SOUT_LVDS_Neg |
PORT6_DSPI_M0_SOUT_LVDS_Pos |
PORT7_DSPI_M1_SOUT_LVDS_Neg |
PORT8_DSPI_M1_SOUT_LVDS_Pos |
PORT9_DSPI_M1_SCLK_LVDS_Neg |
PORT10_DSPI_M1_SCLK_LVDS_Pos */
  (uint16)( SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10)
          ),
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT42_DSPI_3_SOUT |
PORT44_DSPI_3_SCLK */
  (uint16)( SHL_PAD_U16(10) |
SHL_PAD_U16(12)
          ),
/* Pads  48 ...  63 : PORT60_DSPI_4_SOUT */
  (uint16)( SHL_PAD_U16(12)
          ),
/* Pads  64 ...  79 : PORT64_DSPI_4_SCLK_OUT */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads  96 ... 111 : PORT108_DSPI_1_SOUT |
PORT109_DSPI_1_SCLK */
  (uint16)( SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 */
  (uint16)0x0000,
/* Pads 160 ... 175 : PORT160_DSPI_0_CS3 |
PORT162_DSPI_0_SOUT |
PORT167_DSPI_2_SCLK |
PORT170_DSPI_2_SOUT |
PORT172_DSPI_1_SCLK */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(2) |
SHL_PAD_U16(7) |
SHL_PAD_U16(10) |
SHL_PAD_U16(12)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_ALT14_FUNC_MODE: */
{
/* Pads   0 ...  15 : PORT0_DSPI_M0_CS0 |
PORT1_DSPI_M0_CS1 |
PORT3_DSPI_M0_CS2 |
PORT4_DSPI_M0_SCLK |
PORT5_DSPI_M0_CS3 |
PORT8_DSPI_M1_CS3 |
PORT10_DSPI_M1_CS2 |
PORT11_DSPI_M1_CS3 |
PORT12_DSPI_M1_CS1 |
PORT13_DSPI_M1_CS0 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(8) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_DSPI_3_CS0 |
PORT33_DSPI_3_CS1 |
PORT34_DSPI_3_CS2 |
PORT35_DSPI_3_CS3 |
PORT36_DSPI_3_CS4 |
PORT37_DSPI_3_CS5 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads  48 ...  63 : PORT52_DSPI_4_CS5 |
PORT53_DSPI_4_CS4 |
PORT54_DSPI_4_CS3 |
PORT57_DSPI_4_CS2 |
PORT58_DSPI_4_CS1 |
PORT59_DSPI_4_CS0 */
  (uint16)( SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11)
          ),
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads  96 ... 111 : PORT105_DSPI_1_CS0 |
PORT106_DSPI_1_CS1 */
  (uint16)( SHL_PAD_U16(9) |
SHL_PAD_U16(10)
          ),
/* Pads 112 ... 127 : PORT112_DSPI_1_CS2 |
PORT115_DSPI_1_CS3 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(3)
          ),
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 : PORT155_DSPI_0_CS1 |
PORT156_DSPI_0_CS5 |
PORT157_DSPI_0_CS4 |
PORT158_DSPI_0_SCLK */
  (uint16)( SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 160 ... 175 : PORT164_DSPI_0_CS2 |
PORT165_DSPI_0_CS0 |
PORT169_DSPI_2_CS4 |
PORT171_DSPI_2_CS0 |
PORT172_DSPI_2_CS1 |
PORT173_DSPI_2_CS2 |
PORT174_DSPI_2_CS3 */
  (uint16)( SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(9) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_ALT15_FUNC_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_MC_CGL_FEC_REF_CLK */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads 48 ... 63 */
  (uint16)0x0000,
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 : PORT149_RGM_RSTOUT */
  (uint16)( SHL_PAD_U16(5)
          ),
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_ANALOG_INPUT_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads 48 ... 63 */
  (uint16)0x0000,
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 */
  (uint16)0x0000,
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 : PORT192_SAR_ADC_1_28 |
PORT192_SAR_ADC_3_19 |
PORT193_SAR_ADC_1_29 |
PORT193_SAR_ADC_2_30 |
PORT194_SAR_ADC_1_30 |
PORT194_SAR_ADC_2_31 |
PORT195_SAR_ADC_1_31 |
PORT195_SAR_ADC_3_20 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(3)
          ),
/* Pads 208 ... 223 : PORT208_SAR_ADC_1_12 |
PORT208_SAR_ADC_3_9 |
PORT209_SAR_ADC_1_13 |
PORT209_SAR_ADC_2_23 |
PORT209_SAR_ADC_3_10 |
PORT210_SAR_ADC_1_14 |
PORT210_SAR_ADC_2_24 |
PORT211_SAR_ADC_1_15 |
PORT211_SAR_ADC_2_25 |
PORT212_SAR_ADC_1_16 |
PORT212_SAR_ADC_3_11 |
PORT213_SAR_ADC_1_17 |
PORT213_SAR_ADC_3_12 |
PORT214_SAR_ADC_1_18 |
PORT214_SAR_ADC_3_13 |
PORT215_SAR_ADC_1_19 |
PORT215_SAR_ADC_3_14 |
PORT216_SAR_ADC_1_20 |
PORT216_SAR_ADC_3_15 |
PORT217_SAR_ADC_1_21 |
PORT217_SAR_ADC_2_26 |
PORT218_SAR_ADC_1_22 |
PORT218_SAR_ADC_2_27 |
PORT219_SAR_ADC_1_23 |
PORT219_SAR_ADC_3_16 |
PORT220_SAR_ADC_1_24 |
PORT220_SAR_ADC_3_17 |
PORT221_SAR_ADC_1_25 |
PORT221_SAR_ADC_2_28 |
PORT222_SAR_ADC_1_26 |
PORT222_SAR_ADC_2_29 |
PORT223_SAR_ADC_1_27 |
PORT223_SAR_ADC_3_18 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(1) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15) |
SHL_PAD_U16(15)
          ),
/* Pads 224 ... 239 : PORT224_SIGMA_DELTA_ADC_2_0 |
PORT224_SAR_ADC_0_16 |
PORT224_SAR_ADC_2_16 |
PORT225_SIGMA_DELTA_ADC_2_1 |
PORT225_SAR_ADC_0_17 |
PORT225_SAR_ADC_2_17 |
PORT226_SIGMA_DELTA_ADC_2_2 |
PORT226_SAR_ADC_0_18 |
PORT226_SAR_ADC_2_18 |
PORT227_SIGMA_DELTA_2_3 |
PORT227_SAR_ADC_0_19 |
PORT227_SAR_ADC_3_0 |
PORT228_SAR_ADC_0_20 |
PORT228_SAR_ADC_1_0 |
PORT228_SAR_ADC_2_19 |
PORT229_SAR_ADC_0_21 |
PORT229_SAR_ADC_1_1 |
PORT229_SAR_ADC_3_1 |
PORT230_SAR_ADC_0_22 |
PORT230_SAR_ADC_1_2 |
PORT230_SAR_ADC_3_2 |
PORT231_SAR_ADC_0_23 |
PORT231_SAR_ADC_1_3 |
PORT231_SAR_ADC_2_20 |
PORT232_SAR_ADC_0_24 |
PORT232_SAR_ADC_1_4 |
PORT232_SAR_ADC_3_3 |
PORT233_SAR_ADC_0_25 |
PORT233_SAR_ADC_1_5 |
PORT233_SAR_ADC_3_4 |
PORT234_SAR_ADC_0_26 |
PORT234_SAR_ADC_1_6 |
PORT234_SAR_ADC_2_21 |
PORT235_SAR_ADC_0_27 |
PORT235_SAR_ADC_1_7 |
PORT235_SAR_ADC_3_5 |
PORT236_SAR_ADC_0_28 |
PORT236_SAR_ADC_1_8 |
PORT236_SAR_ADC_3_6 |
PORT237_SAR_ADC_0_29 |
PORT237_SAR_ADC_1_9 |
PORT237_SAR_ADC_3_7 |
PORT238_SAR_ADC_0_30 |
PORT238_SAR_ADC_1_10 |
PORT238_SAR_ADC_3_8 |
PORT239_SAR_ADC_0_31 |
PORT239_SAR_ADC_1_11 |
PORT239_SAR_ADC_2_22 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(0) |
SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(1) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(2) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(3) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(4) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(5) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(6) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(7) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(8) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(9) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(10) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(11) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(12) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(13) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(14) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15) |
SHL_PAD_U16(15) |
SHL_PAD_U16(15)
          ),
/* Pads 240 ... 255 : PORT240_SIGMA_DELTA_ADC_0_0 |
PORT240_SAR_ADC_0_0 |
PORT240_SAR_ADC_2_0 |
PORT241_SIGMA_DELTA_ADC_0_1 |
PORT241_SAR_ADC_0_1 |
PORT241_SAR_ADC_2_1 |
PORT242_SIGMA_DELTA_ADC_0_2 |
PORT242_SAR_ADC_0_2 |
PORT242_SAR_ADC_2_2 |
PORT243_SIGMA_DELTA_ADC_0_3 |
PORT243_SAR_ADC_0_3 |
PORT243_SAR_ADC_2_3 |
PORT244_SIGMA_DELTA_ADC_0_4 |
PORT244_SAR_ADC_0_4 |
PORT244_SAR_ADC_2_4 |
PORT245_SIGMA_DELTA_ADC_0_5 |
PORT245_SAR_ADC_0_5 |
PORT245_SAR_ADC_2_5 |
PORT246_SIGMA_DELTA_ADC_0_6 |
PORT246_SAR_ADC_0_6 |
PORT246_SAR_ADC_2_6 |
PORT247_SIGMA_DELTA_ADC_0_7 |
PORT247_SAR_ADC_0_7 |
PORT247_SAR_ADC_2_7 |
PORT248_SIGMA_DELTA_ADC_1_0 |
PORT248_SAR_ADC_0_8 |
PORT248_SAR_ADC_2_8 |
PORT249_SIGMA_DELTA_ADC_1_1 |
PORT249_SAR_ADC_0_9 |
PORT249_SAR_ADC_2_9 |
PORT250_SIGMA_DELTA_ADC_1_2 |
PORT250_SAR_ADC_0_10 |
PORT250_SAR_ADC_2_10 |
PORT251_SIGMA_DELTA_ADC_1_3 |
PORT251_SAR_ADC_0_11 |
PORT251_SAR_ADC_2_11 |
PORT252_SIGMA_DELTA_ADC_1_4 |
PORT252_SAR_ADC_0_12 |
PORT252_SAR_ADC_2_12 |
PORT253_SIGMA_DELTA_ADC_1_5 |
PORT253_SAR_ADC_0_13 |
PORT253_SAR_ADC_2_13 |
PORT254_SIGMA_DELTA_ADC_1_6 |
PORT254_SAR_ADC_0_14 |
PORT254_SAR_ADC_2_14 |
PORT255_SIGMA_DELTA_ADC_1_7 |
PORT255_SAR_ADC_0_15 |
PORT255_SAR_ADC_2_15 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(0) |
SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(1) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(2) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(3) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(4) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(5) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(6) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(7) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(8) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(9) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(10) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(11) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(12) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(13) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(14) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15) |
SHL_PAD_U16(15) |
SHL_PAD_U16(15)
          )
}
,
/*  Mode PORT_ONLY_OUTPUT_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads  16 ...  31 : PORT16_DCI_TDO */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads 48 ... 63 */
  (uint16)0x0000,
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 : PORT112_FCCU_ERROR0 |
PORT115_FCCU_ERROR1 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(3)
          ),
/* Pads 128 ... 143 : PORT128_FCCU_ERROR0 |
PORT129_FCCU_ERROR1 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1)
          ),
/* Pads 144 ... 159 : PORT144_FCCU_ERROR1 |
PORT145_FCCU_ERROR0 |
PORT155_FCCU_ERROR0 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(11)
          ),
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INPUT1_MODE: */
{
/* Pads   0 ...  15 : PORT0_eTPU_A_24_IN |
PORT1_SIPI_SIPI_RXN |
PORT2_eTPU_A_22_IN |
PORT3_eTPU_A_21_IN |
PORT4_eTPU_A_20_IN |
PORT5_eTPU_A_19_IN |
PORT6_eTPU_A_18_IN |
PORT7_eTPU_A_17_IN |
PORT8_eTPU_A_16_IN |
PORT9_eTPU_A_15_IN |
PORT10_eTPU_A_14_IN |
PORT11_eTPU_A_13_IN |
PORT12_eTPU_A_12_IN |
PORT13_eTPU_A_11_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_eTPU_A_25_IN |
PORT33_eTPU_A_26_IN |
PORT34_eTPU_A_27_IN |
PORT35_eTPU_A_28_IN |
PORT36_eTPU_A_29_IN |
PORT37_eTPU_A_30_IN |
PORT38_eTPU_A_31_IN |
PORT39_eTPU_A_0_IN |
PORT40_eTPU_A_1_IN |
PORT41_eTPU_A_2_IN |
PORT42_eTPU_A_3_IN |
PORT43_eTPU_A_4_IN |
PORT44_eTPU_A_5_IN |
PORT45_eTPU_A_6_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT48_eTPU_A_8_IN |
PORT49_eTPU_A_9_IN |
PORT50_eTPU_A_10_IN |
PORT51_eTPU_A_11_IN |
PORT52_eTPU_A_12_IN |
PORT53_eTPU_A_13_IN |
PORT54_eTPU_A_14_IN |
PORT55_eTPU_A_15_IN |
PORT56_eTPU_A_16_IN |
PORT57_eTPU_A_17_IN |
PORT58_eTPU_A_18_IN |
PORT59_eTPU_A_19_IN |
PORT60_eTPU_A_20_IN |
PORT61_eTPU_A_21_IN |
PORT62_eTPU_A_22_IN |
PORT63_eTPU_A_23_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads  64 ...  79 : PORT64_eTPU_A_24_IN */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads  80 ...  95 : PORT80_eTPU_B_0_IN |
PORT81_eTPU_B_1_IN |
PORT82_eTPU_B_18_IN |
PORT83_eTPU_B_19_IN |
PORT84_eTPU_B_20_IN |
PORT85_eTPU_B_21_IN |
PORT86_eTPU_B_22_IN |
PORT87_eTPU_B_23_IN |
PORT88_eTPU_B_24_IN |
PORT89_eTPU_B_23_IN |
PORT90_eTPU_B_24_IN |
PORT91_eTPU_A_5_IN |
PORT92_eTPU_A_6_IN |
PORT93_eTPU_A_7_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_eTPU_A_8_IN |
PORT98_eTPU_A_9_IN |
PORT99_eTPU_B_30_IN |
PORT100_eTPU_A_10_IN |
PORT101_eTPU_A_11_IN |
PORT102_eTPU_A_13_IN |
PORT103_eTPU_A_14_IN |
PORT105_eTPU_A_15_IN |
PORT106_eTPU_A_16_IN |
PORT107_eTPU_A_17_IN |
PORT108_eTPU_A_18_IN |
PORT109_eTPU_A_19_IN |
PORT110_eTPU_A_20_IN |
PORT111_eTPU_A_21_IN */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 112 ... 127 : PORT112_eTPU_A_22_IN |
PORT113_eTPU_A_23_IN |
PORT114_eTPU_A_24_IN |
PORT115_eTPU_A_25_IN |
PORT116_eTPU_A_26_IN |
PORT117_eTPU_A_27_IN |
PORT118_eTPU_A_28_IN |
PORT119_eTPU_A_29_IN |
PORT120_eTPU_A_30_IN |
PORT121_eTPU_A_31_IN |
PORT122_eTPU_A_12_IN |
PORT123_eTPU_A_0_IN |
PORT124_eTPU_A_1_IN |
PORT125_eTPU_A_2_IN |
PORT126_eTPU_A_3_IN |
PORT127_eTPU_A_4_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 : PORT128_eTPU_A_5_IN |
PORT129_eTPU_A_6_IN |
PORT130_eTPU_A_7_IN |
PORT131_eTPU_A_8_IN |
PORT132_eTPU_A_9_IN |
PORT133_eTPU_A_10_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT144_eTPU_A_25_IN |
PORT145_eTPU_A_26_IN |
PORT146_eTPU_B_2_IN |
PORT147_eTPU_A_27_IN |
PORT148_eTPU_A_28_IN |
PORT149_eTPU_A_29_IN |
PORT150_eTPU_A_25_IN |
PORT151_eTPU_A_30_IN |
PORT152_eTPU_A_27_IN |
PORT153_eTPU_A_28_IN |
PORT154_eTPU_A_29_IN |
PORT155_eTPU_A_31_IN |
PORT156_eTPU_B_12_IN |
PORT157_eTPU_B_13_IN |
PORT158_eTPU_B_14_IN |
PORT159_eTPU_B_15_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 160 ... 175 : PORT160_eTPU_B_17_IN |
PORT161_eTPU_B_18_IN |
PORT162_eTPU_B_19_IN |
PORT164_eTPU_B_20_IN |
PORT165_eTPU_B_21_IN |
PORT167_eTPU_A_0_IN |
PORT168_eTPU_A_1_IN |
PORT169_eTPU_A_2_IN |
PORT170_eTPU_A_3_IN |
PORT171_eTPU_A_4_IN |
PORT172_eTPU_A_5_IN |
PORT173_eTPU_A_6_IN |
PORT174_eTPU_A_7_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 : PORT192_eTPU_A_10 |
PORT193_SIUL2_IRQ3 |
PORT194_SIUL2_IRQ2 |
PORT195_SIUL2_IRQ1 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3)
          ),
/* Pads 208 ... 223 : PORT208_eTPU_A_23 |
PORT209_eTPU_B_3 |
PORT210_eTPU_A_22 |
PORT211_eTPU_A_21 |
PORT212_eTPU_A_20 |
PORT213_eTPU_A_19 |
PORT214_eTPU_A_18 |
PORT215_eTPU_A_17 |
PORT216_eTPU_A_16 |
PORT217_eTPU_A_15 |
PORT218_SENT_1_0 |
PORT219_eTPU_B_19 |
PORT220_SIUL2_IRQ7 |
PORT221_SIUL2_IRQ6 |
PORT222_SIUL2_IRQ5 |
PORT223_SIUL2_IRQ4 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 224 ... 239 : PORT224_eTPU_B_20 |
PORT225_eTPU_B_19 |
PORT226_eTPU_A_31 |
PORT227_eTPU_A_30 |
PORT228_eTPU_B_16 |
PORT229_eTPU_A_29 |
PORT230_eTPU_B_14 |
PORT231_eTPU_B_13 |
PORT232_eTPU_A_28 |
PORT233_eTPU_A_27 |
PORT234_eTPU_B_10 |
PORT235_eTPU_A_26 |
PORT236_eTPU_A_25 |
PORT237_eTPU_B_7 |
PORT238_eTPU_A_24 |
PORT239_eTPU_B_5 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 240 ... 255 : PORT240_eTPU_A_4 |
PORT241_eTPU_A_3 |
PORT242_eTPU_A_2 |
PORT243_eTPU_A_1 |
PORT244_eTPU_A_0 |
PORT245_eTPU_B_31 |
PORT246_eTPU_B_30 |
PORT247_eTPU_B_29 |
PORT248_eTPU_B_28 |
PORT249_eTPU_B_27 |
PORT250_eTPU_B_26 |
PORT251_eTPU_B_25 |
PORT252_eTPU_B_24 |
PORT253_eTPU_B_23 |
PORT254_eTPU_B_22 |
PORT255_eTPU_B_21 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          )
}
,
/*  Mode PORT_INPUT2_MODE: */
{
/* Pads   0 ...  15 : PORT0_IGF_IN8 |
PORT1_eTPU_A_23_IN |
PORT2_IGF_IN6 |
PORT3_IGF_IN5 |
PORT4_IGF_IN4 |
PORT5_IGF_IN3 |
PORT6_IGF_IN2 |
PORT7_IGF_IN1 |
PORT8_IGF_IN0 |
PORT9_IGF_IN15 |
PORT10_IGF_IN14 |
PORT11_IGF_IN13 |
PORT12_IGF_IN12 |
PORT13_IGF_IN11 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_eTPU_B_17_IN |
PORT33_eTPU_B_18_IN |
PORT34_eTPU_B_19_IN |
PORT35_eTPU_B_20_IN |
PORT36_eTPU_B_21_IN |
PORT37_eTPU_B_22_IN |
PORT38_eTPU_B_23_IN |
PORT39_eTPU_B_24_IN |
PORT40_eTPU_B_25_IN |
PORT41_eTPU_B_26_IN |
PORT42_eTPU_B_27_IN |
PORT43_eTPU_B_28_IN |
PORT44_eTPU_B_29_IN |
PORT45_eTPU_B_30_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT48_eTPU_B_0_IN |
PORT49_eTPU_B_1_IN |
PORT50_eTPU_B_2_IN |
PORT51_eTPU_B_3_IN |
PORT52_eTPU_B_4_IN |
PORT53_eTPU_B_5_IN |
PORT54_eTPU_B_6_IN |
PORT55_eTPU_B_7_IN |
PORT56_eTPU_B_8_IN |
PORT57_eTPU_B_9_IN |
PORT58_eTPU_B_10_IN |
PORT59_eTPU_B_11_IN |
PORT60_eTPU_B_12_IN |
PORT61_eTPU_B_13_IN |
PORT62_eTPU_B_14_IN |
PORT63_eTPU_B_15_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads  64 ...  79 : PORT64_eTPU_B_16_IN */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads  80 ...  95 : PORT80_eTPU_B_16_IN |
PORT81_eTPU_B_17_IN |
PORT82_IGF_IN2 |
PORT83_IGF_IN3 |
PORT84_eMIOS_1_18_IN |
PORT85_eMIOS_1_19_IN |
PORT86_IGF_IN6 |
PORT87_IGF_IN7 |
PORT88_eMIOS_1_20_IN |
PORT89_eMIOS_1_21_IN |
PORT90_eMIOS_1_22_IN |
PORT91_eTPU_B_25_IN |
PORT92_eTPU_B_26_IN |
PORT93_eTPU_B_27_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_eTPU_B_28_IN |
PORT98_eTPU_B_29_IN |
PORT99_eMIOS_0_10_IN |
PORT100_eTPU_B_31_IN |
PORT101_eTPU_B_0_IN |
PORT102_eTPU_B_1_IN |
PORT103_eTPU_B_2_IN |
PORT105_eTPU_B_3_IN |
PORT106_eTPU_B_4_IN |
PORT107_eTPU_B_5_IN |
PORT108_eTPU_B_6_IN |
PORT109_eTPU_B_7_IN |
PORT110_eTPU_B_8_IN |
PORT111_eTPU_B_9_IN */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 112 ... 127 : PORT112_eTPU_B_10_IN |
PORT113_eTPU_B_11_IN |
PORT114_eTPU_B_12_IN |
PORT115_eTPU_B_13_IN |
PORT116_eTPU_B_14_IN |
PORT117_eTPU_B_15_IN |
PORT118_eTPU_B_16_IN |
PORT119_eTPU_B_17_IN |
PORT120_eTPU_B_18_IN |
PORT121_eTPU_B_19_IN |
PORT122_eTPU_B_20_IN |
PORT123_eTPU_B_21_IN |
PORT124_eTPU_B_22_IN |
PORT125_eTPU_B_23_IN |
PORT126_eTPU_B_24_IN |
PORT127_eTPU_B_25_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 : PORT128_eTPU_B_26_IN |
PORT129_eTPU_B_27_IN |
PORT130_eTPU_B_28_IN |
PORT131_eTPU_B_29_IN |
PORT132_eTPU_B_30_IN |
PORT133_eTPU_B_31_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT144_eTPU_B_0_IN |
PORT145_eTPU_B_1_IN |
PORT146_IGF_IN2 |
PORT147_eTPU_B_3_IN |
PORT148_eTPU_B_4_IN |
PORT149_eTPU_B_5_IN |
PORT150_eTPU_B_6_IN |
PORT151_eTPU_B_7_IN |
PORT152_eTPU_B_8_IN |
PORT153_eTPU_B_9_IN |
PORT154_eTPU_B_10_IN |
PORT155_eTPU_B_11_IN |
PORT156_eMIOS_1_9_IN |
PORT157_eMIOS_1_10_IN |
PORT158_eMIOS_1_11_IN |
PORT159_eMIOS_1_12_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 160 ... 175 : PORT160_eMIOS_1_13_IN |
PORT161_IGF_IN2 |
PORT162_IGF_IN3 |
PORT164_eMIOS_0_19_IN |
PORT165_IGF_IN5 |
PORT167_eTPU_B_22_IN |
PORT168_eTPU_B_23_IN |
PORT169_eTPU_B_24_IN |
PORT170_eTPU_B_25_IN |
PORT171_eTPU_B_26_IN |
PORT172_eTPU_B_27_IN |
PORT173_eTPU_B_28_IN |
PORT174_eTPU_B_29_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 : PORT192_eTPU_B_24 |
PORT193_SENT_0_0 |
PORT194_SENT_0_1 |
PORT195_SENT_0_2 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3)
          ),
/* Pads 208 ... 223 : PORT208_eTPU_B_4 |
PORT209_eMIOS_0_18 |
PORT210_eTPU_B_2 |
PORT211_eTPU_B_1 |
PORT212_eTPU_B_0 |
PORT213_eTPU_B_13 |
PORT214_eTPU_B_14 |
PORT215_eTPU_B_15 |
PORT216_eTPU_B_16 |
PORT217_eTPU_B_17 |
PORT218_eTPU_A_14 |
PORT219_IGF_IN3 |
PORT220_eTPU_B_20 |
PORT221_SENT_1_1 |
PORT222_SENT_1_2 |
PORT223_eTPU_A_11 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 224 ... 239 : PORT224_eMIOS_0_8 |
PORT225_eMIOS_0_9 |
PORT226_eTPU_B_18 |
PORT227_eTPU_B_17 |
PORT228_eMIOS_0_11 |
PORT229_eTPU_B_15 |
PORT230_eMIOS_0_12 |
PORT231_eMIOS_0_13 |
PORT232_eTPU_B_12 |
PORT233_eTPU_B_11 |
PORT234_eMIOS_0_15 |
PORT235_eTPU_B_9 |
PORT236_eTPU_B_8 |
PORT237_eMIOS_0_16 |
PORT238_eTPU_B_6 |
PORT239_eMIOS_0_17 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 240 ... 255 : PORT240_eTPU_B_4 |
PORT241_eTPU_B_3 |
PORT242_eTPU_B_2 |
PORT243_eTPU_B_1 |
PORT244_eTPU_B_0 |
PORT245_eMIOS_0_21 |
PORT246_eMIOS_0_22 |
PORT247_eMIOS_0_23 |
PORT248_eMIOS_1_8 |
PORT249_eMIOS_1_9 |
PORT250_eMIOS_1_10 |
PORT251_eMIOS_1_11 |
PORT252_eMIOS_1_12 |
PORT253_eMIOS_1_13 |
PORT254_eMIOS_1_14 |
PORT255_eMIOS_1_15 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          )
}
,
/*  Mode PORT_INPUT3_MODE: */
{
/* Pads   0 ...  15 : PORT0_IGF_IN24 |
PORT1_IGF_IN7 |
PORT2_IGF_IN22 |
PORT3_IGF_IN21 |
PORT4_IGF_IN20 |
PORT5_IGF_IN19 |
PORT6_IGF_IN18 |
PORT7_IGF_IN17 |
PORT8_IGF_IN16 |
PORT9_IGF_IN31 |
PORT10_IGF_IN30 |
PORT11_IGF_IN29 |
PORT12_IGF_IN28 |
PORT13_IGF_IN27 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_eMIOS_0_8_IN |
PORT33_eMIOS_0_9_IN |
PORT34_eMIOS_0_10_IN |
PORT35_eMIOS_0_11_IN |
PORT36_eMIOS_0_12_IN |
PORT37_eMIOS_0_13_IN |
PORT38_eMIOS_0_14_IN |
PORT39_eTPU_A_TCRCLK_A |
PORT40_eTPU_A_TCRCLK_A |
PORT41_eMIOS_0_17_IN |
PORT42_eMIOS_0_18_IN |
PORT43_eMIOS_0_19_IN |
PORT44_eMIOS_0_20_IN |
PORT45_eMIOS_0_21_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT48_eTPU_B_TCRCLK_B |
PORT49_eTPU_B_TCRCLK_B |
PORT50_eMIOS_1_10_IN |
PORT51_eMIOS_1_11_IN |
PORT52_eMIOS_1_12_IN |
PORT53_eMIOS_1_13_IN |
PORT54_eMIOS_1_14_IN |
PORT55_eMIOS_1_15_IN |
PORT56_eMIOS_1_16_IN |
PORT57_eMIOS_1_17_IN |
PORT58_eMIOS_1_18_IN |
PORT59_eMIOS_1_19_IN |
PORT60_eMIOS_1_20_IN |
PORT61_eMIOS_1_21_IN |
PORT62_eMIOS_1_22_IN |
PORT63_eMIOS_1_23_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads  64 ...  79 : PORT64_eMIOS_0_8_IN */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads  80 ...  95 : PORT80_eTPU_B_TCRCLK_B |
PORT81_eTPU_B_TCRCLK_B |
PORT82_IGF_IN18 |
PORT83_IGF_IN19 |
PORT84_IGF_IN4 |
PORT85_IGF_IN5 |
PORT86_IGF_IN22 |
PORT87_IGF_IN23 |
PORT88_IGF_IN8 |
PORT89_IGF_IN7 |
PORT90_IGF_IN8 |
PORT91_eMIOS_1_23_IN |
PORT92_eMIOS_1_15_IN |
PORT93_eMIOS_1_14_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_eMIOS_0_8_IN |
PORT98_eMIOS_0_9_IN |
PORT99_IGF_IN2 |
PORT100_eMIOS_0_11_IN |
PORT101_eTPU_B_TCRCLK_B |
PORT102_eTPU_B_TCRCLK_B |
PORT103_eMIOS_0_14_IN |
PORT105_eMIOS_0_15_IN |
PORT106_eMIOS_0_16_IN |
PORT107_eMIOS_0_17_IN |
PORT108_eMIOS_0_18_IN |
PORT109_eMIOS_0_19_IN |
PORT110_eMIOS_0_20_IN |
PORT111_eMIOS_0_21_IN */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 112 ... 127 : PORT112_eMIOS_1_8_IN |
PORT113_eMIOS_1_9_IN |
PORT114_eMIOS_1_10_IN |
PORT115_eMIOS_1_11_IN |
PORT116_eMIOS_1_12_IN |
PORT117_eMIOS_1_13_IN |
PORT118_eMIOS_1_14_IN |
PORT119_eMIOS_1_15_IN |
PORT120_eMIOS_1_16_IN |
PORT121_eMIOS_1_17_IN |
PORT122_eMIOS_1_18_IN |
PORT123_eTPU_A_TCRCLK_A |
PORT124_eTPU_A_TCRCLK_A |
PORT125_eMIOS_1_21_IN |
PORT126_eMIOS_1_22_IN |
PORT127_eMIOS_1_23_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 : PORT128_eMIOS_0_8_IN |
PORT129_eMIOS_0_9_IN |
PORT130_eMIOS_0_10_IN |
PORT131_eMIOS_0_11_IN |
PORT132_eMIOS_0_12_IN |
PORT133_eMIOS_0_13_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT144_eTPU_B_TCRCLK_B |
PORT145_eTPU_B_TCRCLK_B |
PORT146_IGF_IN18 |
PORT147_eMIOS_0_14_IN |
PORT148_eMIOS_0_15_IN |
PORT149_eMIOS_0_22_IN |
PORT150_IGF_IN6 |
PORT151_eMIOS_0_23_IN |
PORT152_IGF_IN8 |
PORT153_IGF_IN9 |
PORT154_IGF_IN10 |
PORT155_eMIOS_1_8_IN |
PORT156_IGF_IN1 |
PORT157_IGF_IN2 |
PORT158_IGF_IN3 |
PORT159_IGF_IN4 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 160 ... 175 : PORT160_IGF_IN1 |
PORT161_IGF_IN18 |
PORT162_IGF_IN19 |
PORT164_IGF_IN4 |
PORT165_IGF_IN21 |
PORT167_eTPU_A_TCRCLK_A |
PORT168_eTPU_A_TCRCLK_A |
PORT169_eMIOS_0_22_IN |
PORT170_eMIOS_0_23_IN |
PORT171_eMIOS_1_16_IN |
PORT172_eMIOS_1_17_IN |
PORT173_eMIOS_1_18_IN |
PORT174_eMIOS_1_19_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 : PORT192_IGF_IN8 |
PORT193_eTPU_A_9 |
PORT194_eTPU_A_8 |
PORT195_eTPU_A_7 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3)
          ),
/* Pads 208 ... 223 : PORT208_IGF_IN4 |
PORT209_IGF_IN3 |
PORT210_IGF_IN2 |
PORT211_eTPU_B_TCRCLK_B |
PORT212_eTPU_B_TCRCLK_B |
PORT213_IGF_IN3 |
PORT214_IGF_IN2 |
PORT215_IGF_IN1 |
PORT216_IGF_IN0 |
PORT217_IGF_IN1 |
PORT218_eTPU_B_18 |
PORT219_IGF_IN19 |
PORT220_IGF_IN4 |
PORT221_eTPU_A_13 |
PORT222_eTPU_A_12 |
PORT223_eTPU_B_23 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 224 ... 239 : PORT224_SENT_0_0 |
PORT225_SENT_0_1 |
PORT226_eMIOS_0_10 |
PORT227_IGF_IN1 |
PORT228_IGF_IN0 |
PORT229_IGF_IN13 |
PORT230_IGF_IN4 |
PORT231_IGF_IN5 |
PORT232_IGF_IN12 |
PORT233_eMIOS_0_14 |
PORT234_IGF_IN7 |
PORT235_IGF_IN9 |
PORT236_IGF_IN8 |
PORT237_IGF_IN7 |
PORT238_IGF_IN6 |
PORT239_IGF_IN5 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 240 ... 255 : PORT240_eMIOS_0_16 |
PORT241_eMIOS_0_17 |
PORT242_eMIOS_0_18 |
PORT243_eTPU_A_TCRCLK_A |
PORT244_eTPU_A_TCRCLK_A |
PORT245_IGF_IN13 |
PORT246_IGF_IN14 |
PORT247_IGF_IN13 |
PORT248_SENT_1_0 |
PORT249_SENT_1_1 |
PORT250_SENT_1_2 |
PORT251_IGF_IN3 |
PORT252_IGF_IN4 |
PORT253_IGF_IN5 |
PORT254_IGF_IN6 |
PORT255_IGF_IN5 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          )
}
,
/*  Mode PORT_INPUT4_MODE: */
{
/* Pads   0 ...  15 : PORT1_IGF_IN23 |
PORT2_LINFlex_M0_RX |
PORT5_DSPI_M0_SIN |
PORT8_DSPI_M1_SIN |
PORT11_LINFlex_M1_RX |
PORT12_DSPI_M1_SIN */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(5) |
SHL_PAD_U16(8) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12)
          ),
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_IGF_IN0 |
PORT33_IGF_IN1 |
PORT34_IGF_IN2 |
PORT35_IGF_IN3 |
PORT36_IGF_IN4 |
PORT37_IGF_IN5 |
PORT38_IGF_IN6 |
PORT39_eMIOS_0_15_IN |
PORT40_eMIOS_0_16_IN |
PORT41_IGF_IN2 |
PORT42_IGF_IN3 |
PORT43_IGF_IN4 |
PORT44_IGF_IN5 |
PORT45_IGF_IN6 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT48_eMIOS_1_8_IN |
PORT49_eMIOS_1_9_IN |
PORT50_IGF_IN2 |
PORT51_IGF_IN3 |
PORT52_IGF_IN4 |
PORT53_IGF_IN5 |
PORT54_IGF_IN6 |
PORT55_IGF_IN7 |
PORT56_IGF_IN0 |
PORT57_IGF_IN1 |
PORT58_IGF_IN2 |
PORT59_IGF_IN3 |
PORT60_IGF_IN4 |
PORT61_IGF_IN5 |
PORT62_IGF_IN6 |
PORT63_IGF_IN7 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads  64 ...  79 : PORT64_IGF_IN0 */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads  80 ...  95 : PORT80_eMIOS_1_16_IN |
PORT81_eMIOS_1_17_IN |
PORT83_LINFlex_3_RX |
PORT84_IGF_IN10 |
PORT85_IGF_IN11 |
PORT87_FlexCAN_1_RX |
PORT88_IGF_IN12 |
PORT89_IGF_IN13 |
PORT90_IGF_IN14 |
PORT91_IGF_IN5 |
PORT92_IGF_IN6 |
PORT93_IGF_IN6 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_IGF_IN0 |
PORT98_IGF_IN1 |
PORT99_IGF_IN14 |
PORT100_IGF_IN3 |
PORT101_eMIOS_0_12_IN |
PORT102_eMIOS_0_13_IN |
PORT103_IGF_IN2 |
PORT105_IGF_IN3 |
PORT106_IGF_IN0 |
PORT107_IGF_IN1 |
PORT108_IGF_IN2 |
PORT109_IGF_IN3 |
PORT110_IGF_IN4 |
PORT111_IGF_IN5 */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 112 ... 127 : PORT112_IGF_IN0 |
PORT113_IGF_IN1 |
PORT114_IGF_IN2 |
PORT115_IGF_IN3 |
PORT116_IGF_IN4 |
PORT117_IGF_IN5 |
PORT118_IGF_IN0 |
PORT119_IGF_IN1 |
PORT120_IGF_IN2 |
PORT121_IGF_IN3 |
PORT122_IGF_IN4 |
PORT123_eMIOS_1_19_IN |
PORT124_eMIOS_1_20_IN |
PORT125_IGF_IN2 |
PORT126_IGF_IN3 |
PORT127_IGF_IN4 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 : PORT128_IGF_IN0 |
PORT129_IGF_IN1 |
PORT130_IGF_IN2 |
PORT131_IGF_IN3 |
PORT132_eMIOS_1_22_IN |
PORT133_eMIOS_1_23_IN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT144_IGF_IN0 |
PORT145_IGF_IN1 |
PORT147_IGF_IN3 |
PORT148_IGF_IN4 |
PORT149_IGF_IN5 |
PORT150_IGF_IN9 |
PORT151_IGF_IN4 |
PORT152_IGF_IN11 |
PORT153_IGF_IN12 |
PORT154_IGF_IN13 |
PORT155_IGF_IN0 |
PORT156_IGF_IN12 |
PORT157_IGF_IN13 |
PORT158_IGF_IN14 |
PORT159_IGF_IN15 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 160 ... 175 : PORT160_IGF_IN5 |
PORT164_IGF_IN11 |
PORT167_eMIOS_0_20_IN |
PORT168_eMIOS_0_21_IN |
PORT169_IGF_IN2 |
PORT170_IGF_IN3 |
PORT171_IGF_IN4 |
PORT172_IGF_IN5 |
PORT173_IGF_IN6 |
PORT174_IGF_IN7 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(4) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 : PORT192_IGF_IN10 |
PORT193_eTPU_B_13 |
PORT194_eTPU_B_12 |
PORT195_eTPU_B_31 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3)
          ),
/* Pads 208 ... 223 : PORT208_IGF_IN7 |
PORT209_IGF_IN10 |
PORT210_IGF_IN6 |
PORT211_IGF_IN1 |
PORT212_IGF_IN0 |
PORT213_IGF_IN13 |
PORT214_IGF_IN14 |
PORT215_IGF_IN15 |
PORT216_IGF_IN16 |
PORT217_IGF_IN15 |
PORT218_eMIOS_1_20 |
PORT220_IGF_IN20 |
PORT221_eTPU_B_15 |
PORT222_eTPU_B_14 |
PORT223_IGF_IN7 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 224 ... 239 : PORT224_IGF_IN0 |
PORT225_IGF_IN1 |
PORT226_SENT_0_2 |
PORT227_IGF_IN14 |
PORT228_IGF_IN3 |
PORT229_IGF_IN15 |
PORT230_IGF_IN14 |
PORT231_IGF_IN13 |
PORT232_IGF_IN28 |
PORT233_IGF_IN6 |
PORT234_IGF_IN10 |
PORT235_IGF_IN10 |
PORT236_IGF_IN9 |
PORT237_IGF_IN8 |
PORT238_IGF_IN8 |
PORT239_IGF_IN9 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 240 ... 255 : PORT240_IGF_IN4 |
PORT241_IGF_IN3 |
PORT242_IGF_IN2 |
PORT243_eTPU_B_TCRCLK_B |
PORT244_eTPU_B_TCRCLK_B |
PORT245_IGF_IN15 |
PORT246_IGF_IN30 |
PORT247_IGF_IN15 |
PORT248_IGF_IN0 |
PORT249_IGF_IN1 |
PORT250_IGF_IN2 |
PORT251_IGF_IN9 |
PORT252_IGF_IN8 |
PORT253_IGF_IN7 |
PORT254_IGF_IN22 |
PORT255_IGF_IN7 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          )
}
,
/*  Mode PORT_INPUT5_MODE: */
{
/* Pads   0 ...  15 : PORT1_DSPI_M0_SIN |
PORT2_DSPI_M0_SIN |
PORT11_DSPI_M1_SIN */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(11)
          ),
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_IGF_IN1 |
PORT33_IGF_IN2 |
PORT34_IGF_IN3 |
PORT35_IGF_IN4 |
PORT36_IGF_IN5 |
PORT37_IGF_IN6 |
PORT38_IGF_IN7 |
PORT39_IGF_IN0 |
PORT40_IGF_IN1 |
PORT41_IGF_IN9 |
PORT42_IGF_IN10 |
PORT43_IGF_IN11 |
PORT44_IGF_IN12 |
PORT45_IGF_IN13 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT48_IGF_IN0 |
PORT49_IGF_IN1 |
PORT50_IGF_IN10 |
PORT51_IGF_IN11 |
PORT52_IGF_IN12 |
PORT53_IGF_IN13 |
PORT54_IGF_IN14 |
PORT55_IGF_IN15 |
PORT56_IGF_IN8 |
PORT57_IGF_IN9 |
PORT58_IGF_IN10 |
PORT59_IGF_IN11 |
PORT60_IGF_IN12 |
PORT61_IGF_IN13 |
PORT62_IGF_IN14 |
PORT63_IGF_IN15 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads  64 ...  79 : PORT64_IGF_IN8 */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads  80 ...  95 : PORT80_IGF_IN0 |
PORT81_IGF_IN1 |
PORT84_IGF_IN20 |
PORT85_IGF_IN21 |
PORT88_IGF_IN24 |
PORT89_IGF_IN23 |
PORT90_IGF_IN24 |
PORT91_IGF_IN9 |
PORT92_IGF_IN7 |
PORT93_IGF_IN7 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_IGF_IN8 |
PORT98_IGF_IN9 |
PORT99_IGF_IN18 |
PORT100_IGF_IN10 |
PORT101_IGF_IN0 |
PORT102_IGF_IN1 |
PORT103_IGF_IN6 |
PORT105_IGF_IN7 |
PORT106_IGF_IN4 |
PORT107_IGF_IN5 |
PORT108_IGF_IN6 |
PORT109_IGF_IN7 |
PORT110_IGF_IN8 |
PORT111_IGF_IN9 */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 112 ... 127 : PORT112_IGF_IN6 |
PORT113_IGF_IN7 |
PORT114_IGF_IN8 |
PORT115_IGF_IN9 |
PORT116_IGF_IN10 |
PORT117_IGF_IN11 |
PORT118_IGF_IN6 |
PORT119_IGF_IN7 |
PORT120_IGF_IN8 |
PORT121_IGF_IN9 |
PORT122_IGF_IN10 |
PORT123_IGF_IN0 |
PORT124_IGF_IN1 |
PORT125_IGF_IN7 |
PORT126_IGF_IN8 |
PORT127_IGF_IN9 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 : PORT128_IGF_IN5 |
PORT129_IGF_IN6 |
PORT130_IGF_IN7 |
PORT131_IGF_IN8 |
PORT132_IGF_IN4 |
PORT133_IGF_IN5 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT144_IGF_IN9 |
PORT145_IGF_IN10 |
PORT147_IGF_IN6 |
PORT148_IGF_IN7 |
PORT149_IGF_IN13 |
PORT150_IGF_IN22 |
PORT151_IGF_IN14 |
PORT152_IGF_IN24 |
PORT153_IGF_IN25 |
PORT154_IGF_IN26 |
PORT155_IGF_IN11 |
PORT156_IGF_IN17 |
PORT157_IGF_IN18 |
PORT158_IGF_IN19 |
PORT159_IGF_IN20 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 160 ... 175 : PORT160_IGF_IN17 |
PORT164_IGF_IN20 |
PORT167_IGF_IN0 |
PORT168_IGF_IN1 |
PORT169_IGF_IN8 |
PORT170_IGF_IN9 |
PORT171_IGF_IN8 |
PORT172_IGF_IN9 |
PORT173_IGF_IN10 |
PORT174_IGF_IN11 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(4) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 : PORT192_IGF_IN24 |
PORT193_eMIOS_1_23 |
PORT194_eMIOS_0_23 |
PORT195_eMIOS_0_22 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3)
          ),
/* Pads 208 ... 223 : PORT208_IGF_IN20 |
PORT209_IGF_IN19 |
PORT210_IGF_IN18 |
PORT211_IGF_IN5 |
PORT212_IGF_IN4 |
PORT213_IGF_IN19 |
PORT214_IGF_IN18 |
PORT215_IGF_IN17 |
PORT217_IGF_IN17 |
PORT218_IGF_IN2 |
PORT221_eMIOS_1_21 |
PORT222_eMIOS_1_22 |
PORT223_IGF_IN11 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 224 ... 239 : PORT224_IGF_IN4 |
PORT225_IGF_IN3 |
PORT226_IGF_IN2 |
PORT227_IGF_IN17 |
PORT228_IGF_IN16 |
PORT229_IGF_IN29 |
PORT230_IGF_IN20 |
PORT231_IGF_IN21 |
PORT233_IGF_IN11 |
PORT234_IGF_IN23 |
PORT235_IGF_IN25 |
PORT236_IGF_IN24 |
PORT237_IGF_IN23 |
PORT238_IGF_IN22 |
PORT239_IGF_IN21 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 240 ... 255 : PORT240_IGF_IN8 |
PORT241_IGF_IN9 |
PORT242_IGF_IN10 |
PORT243_eMIOS_0_19 |
PORT244_eMIOS_0_20 |
PORT245_IGF_IN29 |
PORT247_IGF_IN29 |
PORT248_IGF_IN12 |
PORT249_IGF_IN11 |
PORT250_IGF_IN10 |
PORT251_IGF_IN19 |
PORT252_IGF_IN20 |
PORT253_IGF_IN21 |
PORT255_IGF_IN21 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(15)
          )
}
,
/*  Mode PORT_INPUT6_MODE: */
{
/* Pads   0 ...  15 : PORT1_DSPI_M0_SIN_LVDS_Neg |
PORT2_DSPI_M0_SIN_LVDS_Pos */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2)
          ),
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_IGF_IN9 |
PORT33_IGF_IN10 |
PORT34_IGF_IN11 |
PORT35_IGF_IN12 |
PORT36_IGF_IN13 |
PORT37_IGF_IN14 |
PORT38_IGF_IN15 |
PORT39_IGF_IN7 |
PORT40_IGF_IN8 |
PORT41_IGF_IN10 |
PORT42_IGF_IN11 |
PORT43_IGF_IN12 |
PORT44_IGF_IN13 |
PORT45_IGF_IN14 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT48_IGF_IN8 |
PORT49_IGF_IN9 |
PORT50_IGF_IN18 |
PORT51_IGF_IN19 |
PORT52_IGF_IN20 |
PORT53_IGF_IN21 |
PORT54_IGF_IN22 |
PORT55_IGF_IN23 |
PORT56_IGF_IN16 |
PORT57_IGF_IN17 |
PORT58_IGF_IN18 |
PORT59_IGF_IN19 |
PORT60_IGF_IN20 |
PORT61_IGF_IN21 |
PORT62_IGF_IN22 |
PORT63_IGF_IN23 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads  64 ...  79 : PORT64_IGF_IN16 */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads  80 ...  95 : PORT80_IGF_IN8 |
PORT81_IGF_IN9 |
PORT84_IGF_IN26 |
PORT85_IGF_IN27 |
PORT88_IGF_IN28 |
PORT89_IGF_IN29 |
PORT90_IGF_IN30 |
PORT91_IGF_IN15 |
PORT92_IGF_IN10 |
PORT93_IGF_IN11 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_IGF_IN12 |
PORT98_IGF_IN13 |
PORT99_IGF_IN30 |
PORT100_IGF_IN15 |
PORT101_IGF_IN4 |
PORT102_IGF_IN5 |
PORT103_IGF_IN14 |
PORT105_IGF_IN15 |
PORT106_IGF_IN8 |
PORT107_IGF_IN9 |
PORT108_IGF_IN10 |
PORT109_IGF_IN11 |
PORT110_IGF_IN12 |
PORT111_IGF_IN13 */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 112 ... 127 : PORT112_IGF_IN10 |
PORT113_IGF_IN11 |
PORT114_IGF_IN12 |
PORT115_IGF_IN13 |
PORT116_IGF_IN14 |
PORT117_IGF_IN15 |
PORT118_IGF_IN12 |
PORT119_IGF_IN13 |
PORT120_IGF_IN14 |
PORT121_IGF_IN15 |
PORT122_IGF_IN12 |
PORT123_IGF_IN5 |
PORT124_IGF_IN6 |
PORT125_IGF_IN13 |
PORT126_IGF_IN14 |
PORT127_IGF_IN15 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 : PORT128_IGF_IN10 |
PORT129_IGF_IN11 |
PORT130_IGF_IN12 |
PORT131_IGF_IN13 |
PORT132_IGF_IN9 |
PORT133_IGF_IN10 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT144_IGF_IN16 |
PORT145_IGF_IN17 |
PORT147_IGF_IN11 |
PORT148_IGF_IN12 |
PORT149_IGF_IN14 |
PORT150_IGF_IN25 |
PORT151_IGF_IN15 |
PORT152_IGF_IN27 |
PORT153_IGF_IN28 |
PORT154_IGF_IN29 |
PORT155_IGF_IN15 |
PORT156_IGF_IN28 |
PORT157_IGF_IN29 |
PORT158_IGF_IN30 |
PORT159_IGF_IN31 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 160 ... 175 : PORT160_IGF_IN21 |
PORT164_IGF_IN27 |
PORT167_IGF_IN6 |
PORT168_IGF_IN7 |
PORT169_IGF_IN14 |
PORT170_IGF_IN15 |
PORT171_IGF_IN10 |
PORT172_IGF_IN11 |
PORT173_IGF_IN12 |
PORT174_IGF_IN13 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(4) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 : PORT192_IGF_IN26 |
PORT193_IGF_IN9 |
PORT194_IGF_IN8 |
PORT195_IGF_IN7 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3)
          ),
/* Pads 208 ... 223 : PORT208_IGF_IN23 |
PORT209_IGF_IN26 |
PORT210_IGF_IN22 |
PORT211_IGF_IN17 |
PORT212_IGF_IN16 |
PORT213_IGF_IN29 |
PORT214_IGF_IN30 |
PORT215_IGF_IN31 |
PORT217_IGF_IN31 |
PORT218_IGF_IN12 |
PORT221_IGF_IN13 |
PORT222_IGF_IN12 |
PORT223_IGF_IN23 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 224 ... 239 : PORT224_IGF_IN16 |
PORT225_IGF_IN17 |
PORT226_IGF_IN15 |
PORT227_IGF_IN30 |
PORT228_IGF_IN19 |
PORT229_IGF_IN31 |
PORT230_IGF_IN30 |
PORT231_IGF_IN29 |
PORT233_IGF_IN22 |
PORT234_IGF_IN26 |
PORT235_IGF_IN26 |
PORT236_IGF_IN25 |
PORT237_IGF_IN24 |
PORT238_IGF_IN24 |
PORT239_IGF_IN25 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 240 ... 255 : PORT240_IGF_IN20 |
PORT241_IGF_IN19 |
PORT242_IGF_IN18 |
PORT243_IGF_IN1 |
PORT244_IGF_IN0 |
PORT245_IGF_IN31 |
PORT247_IGF_IN31 |
PORT248_IGF_IN16 |
PORT249_IGF_IN17 |
PORT250_IGF_IN18 |
PORT251_IGF_IN25 |
PORT252_IGF_IN24 |
PORT253_IGF_IN23 |
PORT255_IGF_IN23 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(15)
          )
}
,
/*  Mode PORT_INPUT7_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_IGF_IN16 |
PORT33_IGF_IN17 |
PORT34_IGF_IN18 |
PORT35_IGF_IN19 |
PORT36_IGF_IN20 |
PORT37_IGF_IN21 |
PORT38_IGF_IN22 |
PORT39_IGF_IN8 |
PORT40_IGF_IN9 |
PORT41_IGF_IN18 |
PORT42_IGF_IN19 |
PORT43_IGF_IN20 |
PORT44_IGF_IN21 |
PORT45_IGF_IN22 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT48_IGF_IN16 |
PORT49_IGF_IN17 |
PORT50_IGF_IN26 |
PORT51_IGF_IN27 |
PORT52_IGF_IN28 |
PORT53_IGF_IN29 |
PORT54_IGF_IN30 |
PORT55_IGF_IN31 |
PORT56_IGF_IN24 |
PORT57_IGF_IN25 |
PORT58_IGF_IN26 |
PORT59_IGF_IN27 |
PORT60_IGF_IN28 |
PORT61_IGF_IN29 |
PORT62_IGF_IN30 |
PORT63_IGF_IN31 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads  64 ...  79 : PORT64_IGF_IN24 */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads  80 ...  95 : PORT80_IGF_IN16 |
PORT81_IGF_IN17 |
PORT85_FlexCAN_0_RX |
PORT91_IGF_IN21 |
PORT92_IGF_IN22 |
PORT93_IGF_IN22 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(5) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_IGF_IN16 |
PORT98_IGF_IN17 |
PORT99_SENT_0_2 |
PORT100_IGF_IN19 |
PORT101_IGF_IN11 |
PORT102_IGF_IN13 |
PORT103_IGF_IN18 |
PORT105_IGF_IN19 |
PORT106_IGF_IN16 |
PORT107_IGF_IN17 |
PORT108_IGF_IN18 |
PORT109_IGF_IN19 |
PORT110_IGF_IN20 |
PORT111_IGF_IN21 */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 112 ... 127 : PORT112_IGF_IN16 |
PORT113_IGF_IN17 |
PORT114_IGF_IN18 |
PORT115_IGF_IN19 |
PORT116_IGF_IN20 |
PORT117_IGF_IN21 |
PORT118_IGF_IN16 |
PORT119_IGF_IN17 |
PORT120_IGF_IN18 |
PORT121_IGF_IN19 |
PORT122_IGF_IN20 |
PORT123_IGF_IN11 |
PORT124_IGF_IN12 |
PORT125_IGF_IN18 |
PORT126_IGF_IN19 |
PORT127_IGF_IN20 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 : PORT128_IGF_IN16 |
PORT129_IGF_IN17 |
PORT130_IGF_IN18 |
PORT131_IGF_IN19 |
PORT132_IGF_IN14 |
PORT133_IGF_IN15 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT144_IGF_IN25 |
PORT145_IGF_IN26 |
PORT147_IGF_IN19 |
PORT148_IGF_IN20 |
PORT149_IGF_IN21 |
PORT151_IGF_IN20 |
PORT152_SIUL2_IRQ1 |
PORT153_SIUL2_IRQ2 |
PORT154_SIUL2_IRQ3 |
PORT155_IGF_IN16 |
PORT156_SIUL2_IRQ5 |
PORT157_SIUL2_IRQ6 |
PORT158_SIUL2_IRQ7 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 160 ... 175 : PORT167_IGF_IN12 |
PORT168_IGF_IN13 |
PORT169_IGF_IN18 |
PORT170_IGF_IN19 |
PORT171_IGF_IN20 |
PORT172_IGF_IN21 |
PORT173_IGF_IN22 |
PORT174_IGF_IN23 */
  (uint16)( SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 : PORT193_IGF_IN13 |
PORT194_IGF_IN12 |
PORT195_IGF_IN14 */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3)
          ),
/* Pads 208 ... 223 : PORT211_IGF_IN21 |
PORT212_IGF_IN20 |
PORT218_IGF_IN14 |
PORT221_IGF_IN15 |
PORT222_IGF_IN14 |
PORT223_IGF_IN27 */
  (uint16)( SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(10) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 224 ... 239 : PORT224_IGF_IN20 |
PORT225_IGF_IN19 |
PORT226_IGF_IN18 |
PORT233_IGF_IN27 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(9)
          ),
/* Pads 240 ... 255 : PORT240_IGF_IN24 |
PORT241_IGF_IN25 |
PORT242_IGF_IN26 |
PORT243_IGF_IN11 |
PORT244_IGF_IN12 |
PORT248_IGF_IN28 |
PORT249_IGF_IN27 |
PORT250_IGF_IN26 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10)
          )
}
,
/*  Mode PORT_INPUT8_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_IGF_IN17 |
PORT33_IGF_IN18 |
PORT34_IGF_IN19 |
PORT35_IGF_IN20 |
PORT36_IGF_IN21 |
PORT37_IGF_IN22 |
PORT38_IGF_IN23 |
PORT39_IGF_IN16 |
PORT40_IGF_IN17 |
PORT41_IGF_IN25 |
PORT42_IGF_IN26 |
PORT43_IGF_IN27 |
PORT44_IGF_IN28 |
PORT45_IGF_IN29 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT48_IGF_IN24 |
PORT49_IGF_IN25 |
PORT50_SIUL2_IRQ2 |
PORT51_SIUL2_IRQ6 |
PORT52_SIUL2_IRQ7 |
PORT55_FlexCAN_3_RX |
PORT58_SIUL2_IRQ10 |
PORT61_SIUL2_IRQ8 |
PORT62_SIUL2_IRQ9 |
PORT63_DSPI_4_SIN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(7) |
SHL_PAD_U16(10) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads  64 ...  79 : PORT64_DSPI_4_SCLK_IN */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads  80 ...  95 : PORT80_IGF_IN24 |
PORT81_IGF_IN25 |
PORT85_LINFlex_2_RX |
PORT91_IGF_IN25 |
PORT92_IGF_IN23 |
PORT93_IGF_IN23 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(5) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_IGF_IN24 |
PORT98_IGF_IN25 |
PORT100_IGF_IN26 |
PORT101_IGF_IN16 |
PORT102_IGF_IN17 |
PORT103_IGF_IN22 |
PORT105_IGF_IN23 |
PORT106_IGF_IN20 |
PORT107_IGF_IN21 |
PORT108_IGF_IN22 |
PORT109_IGF_IN23 |
PORT110_IGF_IN24 |
PORT111_IGF_IN25 */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 112 ... 127 : PORT112_IGF_IN22 |
PORT113_IGF_IN23 |
PORT114_IGF_IN24 |
PORT115_IGF_IN25 |
PORT116_IGF_IN26 |
PORT117_IGF_IN27 |
PORT118_IGF_IN22 |
PORT119_IGF_IN23 |
PORT120_IGF_IN24 |
PORT121_IGF_IN25 |
PORT122_IGF_IN26 |
PORT123_IGF_IN16 |
PORT124_IGF_IN17 |
PORT125_IGF_IN23 |
PORT126_IGF_IN24 |
PORT127_IGF_IN25 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 : PORT128_IGF_IN21 |
PORT129_IGF_IN22 |
PORT130_IGF_IN23 |
PORT131_IGF_IN24 |
PORT132_IGF_IN20 |
PORT133_IGF_IN21 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT147_IGF_IN22 |
PORT148_IGF_IN23 |
PORT149_IGF_IN29 |
PORT151_IGF_IN30 |
PORT152_SAR_0_NRML_TRIG |
PORT154_SAR_0_NRML_TRIG |
PORT155_IGF_IN27 */
  (uint16)( SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11)
          ),
/* Pads 160 ... 175 : PORT167_IGF_IN16 |
PORT168_IGF_IN17 |
PORT169_IGF_IN24 |
PORT170_IGF_IN25 |
PORT171_IGF_IN24 |
PORT172_IGF_IN25 |
PORT173_IGF_IN26 |
PORT174_IGF_IN27 */
  (uint16)( SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 : PORT193_IGF_IN15 |
PORT194_IGF_IN15 |
PORT195_IGF_IN15 */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3)
          ),
/* Pads 208 ... 223 : PORT218_IGF_IN18 |
PORT221_IGF_IN29 |
PORT222_IGF_IN28 */
  (uint16)( SHL_PAD_U16(10) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 224 ... 239 : PORT226_IGF_IN31 */
  (uint16)( SHL_PAD_U16(2)
          ),
/* Pads 240 ... 255 : PORT243_IGF_IN17 |
PORT244_IGF_IN16 */
  (uint16)( SHL_PAD_U16(3) |
SHL_PAD_U16(4)
          )
}
,
/*  Mode PORT_INPUT9_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_IGF_IN25 |
PORT33_IGF_IN26 |
PORT34_IGF_IN27 |
PORT35_IGF_IN28 |
PORT36_IGF_IN29 |
PORT37_IGF_IN30 |
PORT38_IGF_IN31 |
PORT39_IGF_IN23 |
PORT40_IGF_IN24 |
PORT41_IGF_IN26 |
PORT42_IGF_IN27 |
PORT43_IGF_IN28 |
PORT44_IGF_IN29 |
PORT45_IGF_IN30 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT48_SIUL2_IRQ0 |
PORT49_SIUL2_IRQ1 |
PORT50_LINFlex_3_RX |
PORT51_SAR_0_NRML_TRIG |
PORT52_SAR_0_NRML_TRIG |
PORT55_LINFlex_2_RX |
PORT61_FlexCAN_0_RX |
PORT62_SAR_0_NRML_TRIG */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(7) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads  80 ...  95 : PORT81_FlexCAN_2_RX |
PORT91_IGF_IN31 |
PORT92_IGF_IN26 |
PORT93_IGF_IN27 */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_IGF_IN28 |
PORT98_IGF_IN29 |
PORT100_IGF_IN31 |
PORT101_IGF_IN20 |
PORT102_IGF_IN21 |
PORT103_IGF_IN30 |
PORT105_IGF_IN31 |
PORT106_IGF_IN24 |
PORT107_IGF_IN25 |
PORT108_IGF_IN26 |
PORT109_IGF_IN27 |
PORT110_IGF_IN28 |
PORT111_IGF_IN29 */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 112 ... 127 : PORT112_IGF_IN26 |
PORT113_IGF_IN27 |
PORT114_IGF_IN28 |
PORT115_IGF_IN29 |
PORT116_IGF_IN30 |
PORT117_IGF_IN31 |
PORT118_IGF_IN28 |
PORT119_IGF_IN29 |
PORT120_IGF_IN30 |
PORT121_IGF_IN31 |
PORT122_IGF_IN28 |
PORT123_IGF_IN21 |
PORT124_IGF_IN22 |
PORT125_IGF_IN29 |
PORT126_IGF_IN30 |
PORT127_IGF_IN31 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 : PORT128_IGF_IN26 |
PORT129_IGF_IN27 |
PORT130_IGF_IN28 |
PORT131_IGF_IN29 |
PORT132_IGF_IN25 |
PORT133_IGF_IN26 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT147_IGF_IN27 |
PORT148_IGF_IN28 |
PORT149_IGF_IN30 |
PORT151_IGF_IN31 |
PORT152_SAR_1_NRML_TRIG |
PORT154_SAR_1_NRML_TRIG |
PORT155_IGF_IN31 */
  (uint16)( SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11)
          ),
/* Pads 160 ... 175 : PORT167_IGF_IN22 |
PORT168_IGF_IN23 |
PORT169_IGF_IN30 |
PORT170_IGF_IN31 |
PORT171_IGF_IN26 |
PORT172_IGF_IN27 |
PORT173_IGF_IN28 |
PORT174_IGF_IN29 */
  (uint16)( SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 : PORT193_IGF_IN25 |
PORT194_IGF_IN24 |
PORT195_IGF_IN23 */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3)
          ),
/* Pads 208 ... 223 : PORT218_IGF_IN28 |
PORT221_IGF_IN31 |
PORT222_IGF_IN30 */
  (uint16)( SHL_PAD_U16(10) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 : PORT243_IGF_IN27 |
PORT244_IGF_IN28 */
  (uint16)( SHL_PAD_U16(3) |
SHL_PAD_U16(4)
          )
}
,
/*  Mode PORT_INPUT10_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_FEC_TXCLK |
PORT33_FEC_TXCLK |
PORT38_FlexCAN_2_RX |
PORT39_IGF_IN24 |
PORT40_IGF_IN25 |
PORT41_LINFlex_M0_RX |
PORT43_DSPI_3_SIN */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(11)
          ),
/* Pads  48 ...  63 : PORT48_FlexCAN_1_RX |
PORT51_SAR_1_NRML_TRIG |
PORT52_SAR_1_NRML_TRIG |
PORT61_LINFlex_0_RX |
PORT62_SAR_1_NRML_TRIG */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads  80 ...  95 : PORT81_LINFlex_2_RX |
PORT91_FlexCAN_0_RX |
PORT93_FlexCAN_0_RX */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(11) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_FlexCAN_2_RX |
PORT98_SENT_1_1 |
PORT100_SENT_1_2 |
PORT101_IGF_IN27 |
PORT102_IGF_IN29 |
PORT105_FlexCAN_3_RX */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(9)
          ),
/* Pads 112 ... 127 : PORT119_LINFlex_3_RX |
PORT123_IGF_IN27 |
PORT124_IGF_IN28 |
PORT126_LINFlex_M1_RX */
  (uint16)( SHL_PAD_U16(7) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(14)
          ),
/* Pads 128 ... 143 : PORT128_FlexCAN_3_RX |
PORT132_IGF_IN30 |
PORT133_IGF_IN31 */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT151_SIUL2_IRQ0 |
PORT152_SAR_2_NRML_TRIG |
PORT154_SAR_2_NRML_TRIG |
PORT155_SIUL2_IRQ4 */
  (uint16)( SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11)
          ),
/* Pads 160 ... 175 : PORT167_IGF_IN28 |
PORT168_IGF_IN29 |
PORT172_SIUL2_IRQ5 |
PORT173_SIUL2_IRQ4 |
PORT174_SIUL2_IRQ3 */
  (uint16)( SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 : PORT193_IGF_IN27 |
PORT194_IGF_IN28 |
PORT195_IGF_IN30 */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3)
          ),
/* Pads 208 ... 223 : PORT218_IGF_IN30 */
  (uint16)( SHL_PAD_U16(10)
          ),
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INPUT11_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT39_LINFlex_M1_RX |
PORT41_DSPI_3_SIN */
  (uint16)( SHL_PAD_U16(7) |
SHL_PAD_U16(9)
          ),
/* Pads  48 ...  63 : PORT48_LINFlex_1_RX |
PORT51_SAR_2_NRML_TRIG |
PORT52_SAR_2_NRML_TRIG |
PORT61_SAR_0_NRML_TRIG |
PORT62_SAR_2_NRML_TRIG */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads  80 ...  95 : PORT91_FlexCAN_1_RX |
PORT93_LINFlex_2_RX */
  (uint16)( SHL_PAD_U16(11) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_SENT_0_1 |
PORT101_FlexCAN_1_RX |
PORT102_SENT_1_0 */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6)
          ),
/* Pads 112 ... 127 : PORT123_LINFlex_M0_RX */
  (uint16)( SHL_PAD_U16(11)
          ),
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 : PORT151_SAR_0_NRML_TRIG |
PORT152_SAR_3_NRML_TRIG |
PORT154_SAR_3_NRML_TRIG |
PORT155_SAR_0_NRML_TRIG */
  (uint16)( SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11)
          ),
/* Pads 160 ... 175 : PORT168_DSPI_2_SIN |
PORT173_DSPI_2_SIN */
  (uint16)( SHL_PAD_U16(8) |
SHL_PAD_U16(13)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 : PORT193_IGF_IN31 |
PORT194_IGF_IN31 |
PORT195_IGF_IN31 */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3)
          ),
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INPUT12_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads  48 ...  63 : PORT51_SAR_3_NRML_TRIG |
PORT52_SAR_3_NRML_TRIG |
PORT61_SAR_1_NRML_TRIG |
PORT62_SAR_3_NRML_TRIG */
  (uint16)( SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads  80 ...  95 : PORT91_LINFlex_0_RX */
  (uint16)( SHL_PAD_U16(11)
          ),
/* Pads  96 ... 111 : PORT97_LINFlex_0_RX |
PORT101_SENT_0_0 */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(5)
          ),
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 : PORT151_SAR_1_NRML_TRIG |
PORT155_SAR_1_NRML_TRIG */
  (uint16)( SHL_PAD_U16(7) |
SHL_PAD_U16(11)
          ),
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INPUT13_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads  48 ...  63 : PORT61_SAR_2_NRML_TRIG */
  (uint16)( SHL_PAD_U16(13)
          ),
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads  96 ... 111 : PORT101_LINFlex_1_RX */
  (uint16)( SHL_PAD_U16(5)
          ),
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 : PORT151_SAR_2_NRML_TRIG |
PORT155_SAR_2_NRML_TRIG */
  (uint16)( SHL_PAD_U16(7) |
SHL_PAD_U16(11)
          ),
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INPUT14_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads  48 ...  63 : PORT61_SAR_3_NRML_TRIG */
  (uint16)( SHL_PAD_U16(13)
          ),
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 : PORT151_SAR_3_NRML_TRIG |
PORT155_SAR_3_NRML_TRIG */
  (uint16)( SHL_PAD_U16(7) |
SHL_PAD_U16(11)
          ),
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INOUT1_MODE: */
{
/* Pads   0 ...  15 : PORT0_eTPU_A_24_IN_OUT |
PORT1_eTPU_A_23_IN_OUT |
PORT2_eTPU_A_22_IN_OUT |
PORT3_eTPU_A_21_IN_OUT |
PORT4_eTPU_A_20_IN_OUT |
PORT5_eTPU_A_19_IN_OUT |
PORT6_eTPU_A_18_IN_OUT |
PORT7_eTPU_A_17_IN_OUT |
PORT8_eTPU_A_16_IN_OUT |
PORT9_eTPU_A_15_IN_OUT |
PORT10_eTPU_A_14_IN_OUT |
PORT11_eTPU_A_13_IN_OUT |
PORT12_eTPU_A_12_IN_OUT |
PORT13_eTPU_A_11_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_eTPU_A_25_IN_OUT |
PORT33_eTPU_A_26_IN_OUT |
PORT34_eTPU_A_27_IN_OUT |
PORT35_eTPU_A_28_IN_OUT |
PORT36_eTPU_A_29_IN_OUT |
PORT37_eTPU_A_30_IN_OUT |
PORT38_eTPU_A_31_IN_OUT |
PORT39_eTPU_A_0_IN_OUT |
PORT40_eTPU_A_1_IN_OUT |
PORT41_eTPU_A_2_IN_OUT |
PORT42_eTPU_A_3_IN_OUT |
PORT43_eTPU_A_4_IN_OUT |
PORT44_eTPU_A_5_IN_OUT |
PORT45_eTPU_A_6_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT48_eTPU_A_8_IN_OUT |
PORT49_eTPU_A_9_IN_OUT |
PORT50_eTPU_A_10_IN_OUT |
PORT51_eTPU_A_11_IN_OUT |
PORT52_eTPU_A_12_IN_OUT |
PORT53_eTPU_A_13_IN_OUT |
PORT54_eTPU_A_14_IN_OUT |
PORT55_eTPU_A_15_IN_OUT |
PORT56_eTPU_A_16_IN_OUT |
PORT57_eTPU_A_17_IN_OUT |
PORT58_eTPU_A_18_IN_OUT |
PORT59_eTPU_A_19_IN_OUT |
PORT60_eTPU_A_20_IN_OUT |
PORT61_eTPU_A_21_IN_OUT |
PORT62_eTPU_A_22_IN_OUT |
PORT63_eTPU_A_23_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads  64 ...  79 : PORT64_eTPU_A_24_IN_OUT */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads  80 ...  95 : PORT91_eTPU_A_5_IN_OUT |
PORT92_eTPU_A_6_IN_OUT |
PORT93_eTPU_A_7_IN_OUT */
  (uint16)( SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_eTPU_A_8_IN_OUT |
PORT98_eTPU_A_9_IN_OUT |
PORT100_eTPU_A_10_IN_OUT |
PORT101_eTPU_A_11_IN_OUT |
PORT102_eTPU_A_13_IN_OUT |
PORT103_eTPU_A_14_IN_OUT |
PORT105_eTPU_A_15_IN_OUT |
PORT106_eTPU_A_16_IN_OUT |
PORT107_eTPU_A_17_IN_OUT |
PORT108_eTPU_A_18_IN_OUT |
PORT109_eTPU_A_19_IN_OUT |
PORT110_eTPU_A_20_IN_OUT |
PORT111_eTPU_A_21_IN_OUT */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 112 ... 127 : PORT112_eTPU_A_22_IN_OUT |
PORT113_eTPU_A_23_IN_OUT |
PORT114_eTPU_A_24_IN_OUT |
PORT115_eTPU_A_25_IN_OUT |
PORT116_eTPU_A_26_IN_OUT |
PORT117_eTPU_A_27_IN_OUT |
PORT118_eTPU_A_28_IN_OUT |
PORT119_eTPU_A_29_IN_OUT |
PORT120_eTPU_A_30_IN_OUT |
PORT121_eTPU_A_31_IN_OUT |
PORT122_eTPU_A_12_IN_OUT |
PORT123_eTPU_A_0_IN_OUT |
PORT124_eTPU_A_1_IN_OUT |
PORT125_eTPU_A_2_IN_OUT |
PORT126_eTPU_A_3_IN_OUT |
PORT127_eTPU_A_4_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 : PORT128_eTPU_A_5_IN_OUT |
PORT129_eTPU_A_6_IN_OUT |
PORT130_eTPU_A_7_IN_OUT |
PORT131_eTPU_A_8_IN_OUT |
PORT132_eTPU_A_9_IN_OUT |
PORT133_eTPU_A_10_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT144_eTPU_A_25_IN_OUT |
PORT145_eTPU_A_26_IN_OUT |
PORT147_eTPU_A_27_IN_OUT |
PORT148_eTPU_A_28_IN_OUT |
PORT149_eTPU_A_29_IN_OUT |
PORT150_eTPU_A_25_IN_OUT |
PORT151_eTPU_A_30_IN_OUT |
PORT152_eTPU_A_27_IN_OUT |
PORT153_eTPU_A_28_IN_OUT |
PORT154_eTPU_A_29_IN_OUT |
PORT155_eTPU_A_31_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11)
          ),
/* Pads 160 ... 175 : PORT167_eTPU_A_0_IN_OUT |
PORT168_eTPU_A_1_IN_OUT |
PORT169_eTPU_A_2_IN_OUT |
PORT170_eTPU_A_3_IN_OUT |
PORT171_eTPU_A_4_IN_OUT |
PORT172_eTPU_A_5_IN_OUT |
PORT173_eTPU_A_6_IN_OUT |
PORT174_eTPU_A_7_IN_OUT */
  (uint16)( SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INOUT2_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_eTPU_B_17_IN_OUT |
PORT33_eTPU_B_18_IN_OUT |
PORT34_eTPU_B_19_IN_OUT |
PORT35_eTPU_B_20_IN_OUT |
PORT36_eTPU_B_21_IN_OUT |
PORT37_eTPU_B_22_IN_OUT |
PORT38_eTPU_B_23_IN_OUT |
PORT39_eTPU_B_24_IN_OUT |
PORT40_eTPU_B_25_IN_OUT |
PORT41_eTPU_B_26_IN_OUT |
PORT42_eTPU_B_27_IN_OUT |
PORT43_eTPU_B_28_IN_OUT |
PORT44_eTPU_B_29_IN_OUT |
PORT45_eTPU_B_30_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT48_eTPU_B_0_IN_OUT |
PORT49_eTPU_B_1_IN_OUT |
PORT50_eTPU_B_2_IN_OUT |
PORT51_eTPU_B_3_IN_OUT |
PORT52_eTPU_B_4_IN_OUT |
PORT53_eTPU_B_5_IN_OUT |
PORT54_eTPU_B_6_IN_OUT |
PORT55_eTPU_B_7_IN_OUT |
PORT56_eTPU_B_8_IN_OUT |
PORT57_eTPU_B_9_IN_OUT |
PORT58_eTPU_B_10_IN_OUT |
PORT59_eTPU_B_11_IN_OUT |
PORT60_eTPU_B_12_IN_OUT |
PORT61_eTPU_B_13_IN_OUT |
PORT62_eTPU_B_14_IN_OUT |
PORT63_eTPU_B_15_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads  64 ...  79 : PORT64_eTPU_B_16_IN_OUT */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads  80 ...  95 : PORT80_eTPU_B_0_IN_OUT |
PORT81_eTPU_B_1_IN_OUT |
PORT82_eTPU_B_18_IN_OUT |
PORT83_eTPU_B_19_IN_OUT |
PORT84_eTPU_B_20_IN_OUT |
PORT85_eTPU_B_21_IN_OUT |
PORT86_eTPU_B_22_IN_OUT |
PORT87_eTPU_B_23_IN_OUT |
PORT88_eTPU_B_24_IN_OUT |
PORT89_eTPU_B_23_IN_OUT |
PORT90_eTPU_B_24_IN_OUT |
PORT91_eTPU_B_25_IN_OUT |
PORT92_eTPU_B_26_IN_OUT |
PORT93_eTPU_B_27_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_eTPU_B_28_IN_OUT |
PORT98_eTPU_B_29_IN_OUT |
PORT99_eTPU_B_30_IN_OUT |
PORT100_eTPU_B_31_IN_OUT |
PORT101_eTPU_B_0_IN_OUT |
PORT102_eTPU_B_1_IN_OUT |
PORT103_eTPU_B_2_IN_OUT |
PORT105_eTPU_B_3_IN_OUT |
PORT106_eTPU_B_4_IN_OUT |
PORT107_eTPU_B_5_IN_OUT |
PORT108_eTPU_B_6_IN_OUT |
PORT109_eTPU_B_7_IN_OUT |
PORT110_eTPU_B_8_IN_OUT |
PORT111_eTPU_B_9_IN_OUT */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 112 ... 127 : PORT112_eTPU_B_10_IN_OUT |
PORT113_eTPU_B_11_IN_OUT |
PORT114_eTPU_B_12_IN_OUT |
PORT115_eTPU_B_13_IN_OUT |
PORT116_eTPU_B_14_IN_OUT |
PORT117_eTPU_B_15_IN_OUT |
PORT118_eTPU_B_16_IN_OUT |
PORT119_eTPU_B_17_IN_OUT |
PORT120_eTPU_B_18_IN_OUT |
PORT121_eTPU_B_19_IN_OUT |
PORT122_eTPU_B_20_IN_OUT |
PORT123_eTPU_B_21_IN_OUT |
PORT124_eTPU_B_22_IN_OUT |
PORT125_eTPU_B_23_IN_OUT |
PORT126_eTPU_B_24_IN_OUT |
PORT127_eTPU_B_25_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 : PORT128_eTPU_B_26_IN_OUT |
PORT129_eTPU_B_27_IN_OUT |
PORT130_eTPU_B_28_IN_OUT |
PORT131_eTPU_B_29_IN_OUT |
PORT132_eTPU_B_30_IN_OUT |
PORT133_eTPU_B_31_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT144_eTPU_B_0_IN_OUT |
PORT145_eTPU_B_1_IN_OUT |
PORT146_eTPU_B_2_IN_OUT |
PORT147_eTPU_B_3_IN_OUT |
PORT148_eTPU_B_4_IN_OUT |
PORT149_eTPU_B_5_IN_OUT |
PORT150_eTPU_B_6_IN_OUT |
PORT151_eTPU_B_7_IN_OUT |
PORT152_eTPU_B_8_IN_OUT |
PORT153_eTPU_B_9_IN_OUT |
PORT154_eTPU_B_10_IN_OUT |
PORT155_eTPU_B_11_IN_OUT |
PORT156_eTPU_B_12_IN_OUT |
PORT157_eTPU_B_13_IN_OUT |
PORT158_eTPU_B_14_IN_OUT |
PORT159_eTPU_B_15_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 160 ... 175 : PORT160_eTPU_B_17_IN_OUT |
PORT161_eTPU_B_18_IN_OUT |
PORT162_eTPU_B_19_IN_OUT |
PORT164_eTPU_B_20_IN_OUT |
PORT165_eTPU_B_21_IN_OUT |
PORT167_eTPU_B_22_IN_OUT |
PORT168_eTPU_B_23_IN_OUT |
PORT169_eTPU_B_24_IN_OUT |
PORT170_eTPU_B_25_IN_OUT |
PORT171_eTPU_B_26_IN_OUT |
PORT172_eTPU_B_27_IN_OUT |
PORT173_eTPU_B_28_IN_OUT |
PORT174_eTPU_B_29_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INOUT3_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads  32 ...  47 : PORT32_eMIOS_0_8_IN_OUT |
PORT33_eMIOS_0_9_IN_OUT |
PORT34_eMIOS_0_10_IN_OUT |
PORT35_eMIOS_0_11_IN_OUT |
PORT36_eMIOS_0_12_IN_OUT |
PORT37_eMIOS_0_13_IN_OUT |
PORT38_eMIOS_0_14_IN_OUT |
PORT39_eMIOS_0_15_IN_OUT |
PORT40_eMIOS_0_16_IN_OUT |
PORT41_eMIOS_0_17_IN_OUT |
PORT42_eMIOS_0_18_IN_OUT |
PORT43_eMIOS_0_19_IN_OUT |
PORT44_eMIOS_0_20_IN_OUT |
PORT45_eMIOS_0_21_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  48 ...  63 : PORT48_eMIOS_1_8_IN_OUT |
PORT49_eMIOS_1_9_IN_OUT |
PORT50_eMIOS_1_10_IN_OUT |
PORT51_eMIOS_1_11_IN_OUT |
PORT52_eMIOS_1_12_IN_OUT |
PORT53_eMIOS_1_13_IN_OUT |
PORT54_eMIOS_1_14_IN_OUT |
PORT55_eMIOS_1_15_IN_OUT |
PORT56_eMIOS_1_16_IN_OUT |
PORT57_eMIOS_1_17_IN_OUT |
PORT58_eMIOS_1_18_IN_OUT |
PORT59_eMIOS_1_19_IN_OUT |
PORT60_eMIOS_1_20_IN_OUT |
PORT61_eMIOS_1_21_IN_OUT |
PORT62_eMIOS_1_22_IN_OUT |
PORT63_eMIOS_1_23_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads  64 ...  79 : PORT64_eMIOS_0_8_IN_OUT */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads  80 ...  95 : PORT80_eTPU_B_16_IN_OUT |
PORT81_eTPU_B_17_IN_OUT |
PORT84_eMIOS_1_18_IN_OUT |
PORT85_eMIOS_1_19_IN_OUT |
PORT88_eMIOS_1_20_IN_OUT |
PORT89_eMIOS_1_21_IN_OUT |
PORT90_eMIOS_1_22_IN_OUT |
PORT91_eMIOS_1_23_IN_OUT |
PORT92_eMIOS_1_15_IN_OUT |
PORT93_eMIOS_1_14_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13)
          ),
/* Pads  96 ... 111 : PORT97_eMIOS_0_8_IN_OUT |
PORT98_eMIOS_0_9_IN_OUT |
PORT99_eMIOS_0_10_IN_OUT |
PORT100_eMIOS_0_11_IN_OUT |
PORT101_eMIOS_0_12_IN_OUT |
PORT102_eMIOS_0_13_IN_OUT |
PORT103_eMIOS_0_14_IN_OUT |
PORT105_eMIOS_0_15_IN_OUT |
PORT106_eMIOS_0_16_IN_OUT |
PORT107_eMIOS_0_17_IN_OUT |
PORT108_eMIOS_0_18_IN_OUT |
PORT109_eMIOS_0_19_IN_OUT |
PORT110_eMIOS_0_20_IN_OUT |
PORT111_eMIOS_0_21_IN_OUT */
  (uint16)( SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 112 ... 127 : PORT112_eMIOS_1_8_IN_OUT |
PORT113_eMIOS_1_9_IN_OUT |
PORT114_eMIOS_1_10_IN_OUT |
PORT115_eMIOS_1_11_IN_OUT |
PORT116_eMIOS_1_12_IN_OUT |
PORT117_eMIOS_1_13_IN_OUT |
PORT118_eMIOS_1_14_IN_OUT |
PORT119_eMIOS_1_15_IN_OUT |
PORT120_eMIOS_1_16_IN_OUT |
PORT121_eMIOS_1_17_IN_OUT |
PORT122_eMIOS_1_18_IN_OUT |
PORT123_eMIOS_1_19_IN_OUT |
PORT124_eMIOS_1_20_IN_OUT |
PORT125_eMIOS_1_21_IN_OUT |
PORT126_eMIOS_1_22_IN_OUT |
PORT127_eMIOS_1_23_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(6) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 */
  (uint16)0x0000,
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INOUT4_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads 48 ... 63 */
  (uint16)0x0000,
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads  80 ...  95 : PORT80_eMIOS_1_16_IN_OUT |
PORT81_eMIOS_1_17_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1)
          ),
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 : PORT128_eMIOS_0_8_IN_OUT |
PORT129_eMIOS_0_9_IN_OUT |
PORT130_eMIOS_0_10_IN_OUT |
PORT131_eMIOS_0_11_IN_OUT |
PORT132_eMIOS_0_12_IN_OUT |
PORT133_eMIOS_0_13_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(1) |
SHL_PAD_U16(2) |
SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 : PORT147_eMIOS_0_14_IN_OUT |
PORT148_eMIOS_0_15_IN_OUT |
PORT149_eMIOS_0_22_IN_OUT |
PORT151_eMIOS_0_23_IN_OUT |
PORT155_eMIOS_1_8_IN_OUT |
PORT156_eMIOS_1_9_IN_OUT |
PORT157_eMIOS_1_10_IN_OUT |
PORT158_eMIOS_1_11_IN_OUT |
PORT159_eMIOS_1_12_IN_OUT */
  (uint16)( SHL_PAD_U16(3) |
SHL_PAD_U16(4) |
SHL_PAD_U16(5) |
SHL_PAD_U16(7) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14) |
SHL_PAD_U16(15)
          ),
/* Pads 160 ... 175 : PORT160_eMIOS_1_13_IN_OUT |
PORT164_eMIOS_0_19_IN_OUT |
PORT167_eMIOS_0_20_IN_OUT |
PORT168_eMIOS_0_21_IN_OUT |
PORT169_eMIOS_0_22_IN_OUT |
PORT170_eMIOS_0_23_IN_OUT |
PORT171_eMIOS_1_16_IN_OUT |
PORT172_eMIOS_1_17_IN_OUT |
PORT173_eMIOS_1_18_IN_OUT |
PORT174_eMIOS_1_19_IN_OUT */
  (uint16)( SHL_PAD_U16(0) |
SHL_PAD_U16(4) |
SHL_PAD_U16(7) |
SHL_PAD_U16(8) |
SHL_PAD_U16(9) |
SHL_PAD_U16(10) |
SHL_PAD_U16(11) |
SHL_PAD_U16(12) |
SHL_PAD_U16(13) |
SHL_PAD_U16(14)
          ),
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INOUT5_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads 48 ... 63 */
  (uint16)0x0000,
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 : PORT132_eMIOS_1_22_IN_OUT |
PORT133_eMIOS_1_23_IN_OUT */
  (uint16)( SHL_PAD_U16(4) |
SHL_PAD_U16(5)
          ),
/* Pads 144 ... 159 */
  (uint16)0x0000,
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INOUT6_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads 48 ... 63 */
  (uint16)0x0000,
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 */
  (uint16)0x0000,
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INOUT7_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads 48 ... 63 */
  (uint16)0x0000,
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 */
  (uint16)0x0000,
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INOUT8_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads 48 ... 63 */
  (uint16)0x0000,
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 */
  (uint16)0x0000,
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INOUT9_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads 48 ... 63 */
  (uint16)0x0000,
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 */
  (uint16)0x0000,
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INOUT10_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads 48 ... 63 */
  (uint16)0x0000,
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 */
  (uint16)0x0000,
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INOUT11_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads 48 ... 63 */
  (uint16)0x0000,
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 */
  (uint16)0x0000,
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INOUT12_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads 48 ... 63 */
  (uint16)0x0000,
/* Pads 64 ... 79 */
  (uint16)0x0000,
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 */
  (uint16)0x0000,
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}
,
/*  Mode PORT_INOUT13_MODE: */
{
/* Pads 0 ... 15 */
  (uint16)0x0000,
/* Pads 16 ... 31 */
  (uint16)0x0000,
/* Pads 32 ... 47 */
  (uint16)0x0000,
/* Pads 48 ... 63 */
  (uint16)0x0000,
/* Pads  64 ...  79 : PORT64_DSPI_4_SCLK_IN_OUT */
  (uint16)( SHL_PAD_U16(0)
          ),
/* Pads 80 ... 95 */
  (uint16)0x0000,
/* Pads 96 ... 111 */
  (uint16)0x0000,
/* Pads 112 ... 127 */
  (uint16)0x0000,
/* Pads 128 ... 143 */
  (uint16)0x0000,
/* Pads 144 ... 159 */
  (uint16)0x0000,
/* Pads 160 ... 175 */
  (uint16)0x0000,
/* Pads 176 ... 191 */
  (uint16)0x0000,
/* Pads 192 ... 207 */
  (uint16)0x0000,
/* Pads 208 ... 223 */
  (uint16)0x0000,
/* Pads 224 ... 239 */
  (uint16)0x0000,
/* Pads 240 ... 255 */
  (uint16)0x0000
}


};
/**
* @brief Port index to address the INPUT INDEX data
*/
CONST(uint16,PORT_CONST) Port_au16PadFunctInMuxIndex[256]=
{

  /* Index to address the input settings for pad 0*/
  (uint16)1, 
  /* Index to address the input settings for pad 1*/
  (uint16)4, 
  /* Index to address the input settings for pad 2*/
  (uint16)10, 
  /* Index to address the input settings for pad 3*/
  (uint16)16, 
  /* Index to address the input settings for pad 4*/
  (uint16)19, 
  /* Index to address the input settings for pad 5*/
  (uint16)22, 
  /* Index to address the input settings for pad 6*/
  (uint16)26, 
  /* Index to address the input settings for pad 7*/
  (uint16)29, 
  /* Index to address the input settings for pad 8*/
  (uint16)32, 
  /* Index to address the input settings for pad 9*/
  (uint16)36, 
  /* Index to address the input settings for pad 10*/
  (uint16)39, 
  /* Index to address the input settings for pad 11*/
  (uint16)42, 
  /* Index to address the input settings for pad 12*/
  (uint16)47, 
  /* Index to address the input settings for pad 13*/
  (uint16)51, 
  /* Index to address the input settings for pad 14*/
  (uint16)0, 
  /* Index to address the input settings for pad 15*/
  (uint16)0, 
  /* Index to address the input settings for pad 16*/
  (uint16)0, 
  /* Index to address the input settings for pad 17*/
  (uint16)0, 
  /* Index to address the input settings for pad 18*/
  (uint16)0, 
  /* Index to address the input settings for pad 19*/
  (uint16)0, 
  /* Index to address the input settings for pad 20*/
  (uint16)0, 
  /* Index to address the input settings for pad 21*/
  (uint16)0, 
  /* Index to address the input settings for pad 22*/
  (uint16)0, 
  /* Index to address the input settings for pad 23*/
  (uint16)0, 
  /* Index to address the input settings for pad 24*/
  (uint16)0, 
  /* Index to address the input settings for pad 25*/
  (uint16)0, 
  /* Index to address the input settings for pad 26*/
  (uint16)0, 
  /* Index to address the input settings for pad 27*/
  (uint16)0, 
  /* Index to address the input settings for pad 28*/
  (uint16)0, 
  /* Index to address the input settings for pad 29*/
  (uint16)0, 
  /* Index to address the input settings for pad 30*/
  (uint16)0, 
  /* Index to address the input settings for pad 31*/
  (uint16)0, 
  /* Index to address the input settings for pad 32*/
  (uint16)54, 
  /* Index to address the input settings for pad 33*/
  (uint16)64, 
  /* Index to address the input settings for pad 34*/
  (uint16)74, 
  /* Index to address the input settings for pad 35*/
  (uint16)83, 
  /* Index to address the input settings for pad 36*/
  (uint16)92, 
  /* Index to address the input settings for pad 37*/
  (uint16)101, 
  /* Index to address the input settings for pad 38*/
  (uint16)110, 
  /* Index to address the input settings for pad 39*/
  (uint16)120, 
  /* Index to address the input settings for pad 40*/
  (uint16)131, 
  /* Index to address the input settings for pad 41*/
  (uint16)141, 
  /* Index to address the input settings for pad 42*/
  (uint16)152, 
  /* Index to address the input settings for pad 43*/
  (uint16)161, 
  /* Index to address the input settings for pad 44*/
  (uint16)171, 
  /* Index to address the input settings for pad 45*/
  (uint16)180, 
  /* Index to address the input settings for pad 46*/
  (uint16)0, 
  /* Index to address the input settings for pad 47*/
  (uint16)0, 
  /* Index to address the input settings for pad 48*/
  (uint16)189, 
  /* Index to address the input settings for pad 49*/
  (uint16)200, 
  /* Index to address the input settings for pad 50*/
  (uint16)209, 
  /* Index to address the input settings for pad 51*/
  (uint16)218, 
  /* Index to address the input settings for pad 52*/
  (uint16)230, 
  /* Index to address the input settings for pad 53*/
  (uint16)242, 
  /* Index to address the input settings for pad 54*/
  (uint16)249, 
  /* Index to address the input settings for pad 55*/
  (uint16)256, 
  /* Index to address the input settings for pad 56*/
  (uint16)265, 
  /* Index to address the input settings for pad 57*/
  (uint16)272, 
  /* Index to address the input settings for pad 58*/
  (uint16)279, 
  /* Index to address the input settings for pad 59*/
  (uint16)287, 
  /* Index to address the input settings for pad 60*/
  (uint16)294, 
  /* Index to address the input settings for pad 61*/
  (uint16)301, 
  /* Index to address the input settings for pad 62*/
  (uint16)315, 
  /* Index to address the input settings for pad 63*/
  (uint16)327, 
  /* Index to address the input settings for pad 64*/
  (uint16)335, 
  /* Index to address the input settings for pad 65*/
  (uint16)0, 
  /* Index to address the input settings for pad 66*/
  (uint16)0, 
  /* Index to address the input settings for pad 67*/
  (uint16)0, 
  /* Index to address the input settings for pad 68*/
  (uint16)0, 
  /* Index to address the input settings for pad 69*/
  (uint16)0, 
  /* Index to address the input settings for pad 70*/
  (uint16)0, 
  /* Index to address the input settings for pad 71*/
  (uint16)0, 
  /* Index to address the input settings for pad 72*/
  (uint16)0, 
  /* Index to address the input settings for pad 73*/
  (uint16)0, 
  /* Index to address the input settings for pad 74*/
  (uint16)0, 
  /* Index to address the input settings for pad 75*/
  (uint16)0, 
  /* Index to address the input settings for pad 76*/
  (uint16)0, 
  /* Index to address the input settings for pad 77*/
  (uint16)0, 
  /* Index to address the input settings for pad 78*/
  (uint16)0, 
  /* Index to address the input settings for pad 79*/
  (uint16)0, 
  /* Index to address the input settings for pad 80*/
  (uint16)343, 
  /* Index to address the input settings for pad 81*/
  (uint16)351, 
  /* Index to address the input settings for pad 82*/
  (uint16)361, 
  /* Index to address the input settings for pad 83*/
  (uint16)364, 
  /* Index to address the input settings for pad 84*/
  (uint16)368, 
  /* Index to address the input settings for pad 85*/
  (uint16)374, 
  /* Index to address the input settings for pad 86*/
  (uint16)382, 
  /* Index to address the input settings for pad 87*/
  (uint16)385, 
  /* Index to address the input settings for pad 88*/
  (uint16)389, 
  /* Index to address the input settings for pad 89*/
  (uint16)395, 
  /* Index to address the input settings for pad 90*/
  (uint16)401, 
  /* Index to address the input settings for pad 91*/
  (uint16)407, 
  /* Index to address the input settings for pad 92*/
  (uint16)419, 
  /* Index to address the input settings for pad 93*/
  (uint16)428, 
  /* Index to address the input settings for pad 94*/
  (uint16)0, 
  /* Index to address the input settings for pad 95*/
  (uint16)0, 
  /* Index to address the input settings for pad 96*/
  (uint16)0, 
  /* Index to address the input settings for pad 97*/
  (uint16)439, 
  /* Index to address the input settings for pad 98*/
  (uint16)451, 
  /* Index to address the input settings for pad 99*/
  (uint16)461, 
  /* Index to address the input settings for pad 100*/
  (uint16)468, 
  /* Index to address the input settings for pad 101*/
  (uint16)478, 
  /* Index to address the input settings for pad 102*/
  (uint16)491, 
  /* Index to address the input settings for pad 103*/
  (uint16)502, 
  /* Index to address the input settings for pad 104*/
  (uint16)0, 
  /* Index to address the input settings for pad 105*/
  (uint16)511, 
  /* Index to address the input settings for pad 106*/
  (uint16)521, 
  /* Index to address the input settings for pad 107*/
  (uint16)530, 
  /* Index to address the input settings for pad 108*/
  (uint16)539, 
  /* Index to address the input settings for pad 109*/
  (uint16)548, 
  /* Index to address the input settings for pad 110*/
  (uint16)557, 
  /* Index to address the input settings for pad 111*/
  (uint16)566, 
  /* Index to address the input settings for pad 112*/
  (uint16)575, 
  /* Index to address the input settings for pad 113*/
  (uint16)584, 
  /* Index to address the input settings for pad 114*/
  (uint16)593, 
  /* Index to address the input settings for pad 115*/
  (uint16)602, 
  /* Index to address the input settings for pad 116*/
  (uint16)611, 
  /* Index to address the input settings for pad 117*/
  (uint16)620, 
  /* Index to address the input settings for pad 118*/
  (uint16)629, 
  /* Index to address the input settings for pad 119*/
  (uint16)638, 
  /* Index to address the input settings for pad 120*/
  (uint16)648, 
  /* Index to address the input settings for pad 121*/
  (uint16)657, 
  /* Index to address the input settings for pad 122*/
  (uint16)666, 
  /* Index to address the input settings for pad 123*/
  (uint16)675, 
  /* Index to address the input settings for pad 124*/
  (uint16)686, 
  /* Index to address the input settings for pad 125*/
  (uint16)696, 
  /* Index to address the input settings for pad 126*/
  (uint16)705, 
  /* Index to address the input settings for pad 127*/
  (uint16)715, 
  /* Index to address the input settings for pad 128*/
  (uint16)724, 
  /* Index to address the input settings for pad 129*/
  (uint16)734, 
  /* Index to address the input settings for pad 130*/
  (uint16)743, 
  /* Index to address the input settings for pad 131*/
  (uint16)752, 
  /* Index to address the input settings for pad 132*/
  (uint16)761, 
  /* Index to address the input settings for pad 133*/
  (uint16)771, 
  /* Index to address the input settings for pad 134*/
  (uint16)0, 
  /* Index to address the input settings for pad 135*/
  (uint16)0, 
  /* Index to address the input settings for pad 136*/
  (uint16)0, 
  /* Index to address the input settings for pad 137*/
  (uint16)0, 
  /* Index to address the input settings for pad 138*/
  (uint16)0, 
  /* Index to address the input settings for pad 139*/
  (uint16)0, 
  /* Index to address the input settings for pad 140*/
  (uint16)0, 
  /* Index to address the input settings for pad 141*/
  (uint16)0, 
  /* Index to address the input settings for pad 142*/
  (uint16)0, 
  /* Index to address the input settings for pad 143*/
  (uint16)0, 
  /* Index to address the input settings for pad 144*/
  (uint16)781, 
  /* Index to address the input settings for pad 145*/
  (uint16)788, 
  /* Index to address the input settings for pad 146*/
  (uint16)795, 
  /* Index to address the input settings for pad 147*/
  (uint16)798, 
  /* Index to address the input settings for pad 148*/
  (uint16)807, 
  /* Index to address the input settings for pad 149*/
  (uint16)816, 
  /* Index to address the input settings for pad 150*/
  (uint16)825, 
  /* Index to address the input settings for pad 151*/
  (uint16)831, 
  /* Index to address the input settings for pad 152*/
  (uint16)845, 
  /* Index to address the input settings for pad 153*/
  (uint16)856, 
  /* Index to address the input settings for pad 154*/
  (uint16)863, 
  /* Index to address the input settings for pad 155*/
  (uint16)874, 
  /* Index to address the input settings for pad 156*/
  (uint16)888, 
  /* Index to address the input settings for pad 157*/
  (uint16)895, 
  /* Index to address the input settings for pad 158*/
  (uint16)902, 
  /* Index to address the input settings for pad 159*/
  (uint16)909, 
  /* Index to address the input settings for pad 160*/
  (uint16)915, 
  /* Index to address the input settings for pad 161*/
  (uint16)921, 
  /* Index to address the input settings for pad 162*/
  (uint16)924, 
  /* Index to address the input settings for pad 163*/
  (uint16)0, 
  /* Index to address the input settings for pad 164*/
  (uint16)927, 
  /* Index to address the input settings for pad 165*/
  (uint16)933, 
  /* Index to address the input settings for pad 166*/
  (uint16)0, 
  /* Index to address the input settings for pad 167*/
  (uint16)936, 
  /* Index to address the input settings for pad 168*/
  (uint16)946, 
  /* Index to address the input settings for pad 169*/
  (uint16)957, 
  /* Index to address the input settings for pad 170*/
  (uint16)966, 
  /* Index to address the input settings for pad 171*/
  (uint16)975, 
  /* Index to address the input settings for pad 172*/
  (uint16)984, 
  /* Index to address the input settings for pad 173*/
  (uint16)994, 
  /* Index to address the input settings for pad 174*/
  (uint16)1005, 
  /* Index to address the input settings for pad 175*/
  (uint16)0, 
  /* Index to address the input settings for pad 176*/
  (uint16)0, 
  /* Index to address the input settings for pad 177*/
  (uint16)0, 
  /* Index to address the input settings for pad 178*/
  (uint16)0, 
  /* Index to address the input settings for pad 179*/
  (uint16)0, 
  /* Index to address the input settings for pad 180*/
  (uint16)0, 
  /* Index to address the input settings for pad 181*/
  (uint16)0, 
  /* Index to address the input settings for pad 182*/
  (uint16)0, 
  /* Index to address the input settings for pad 183*/
  (uint16)0, 
  /* Index to address the input settings for pad 184*/
  (uint16)0, 
  /* Index to address the input settings for pad 185*/
  (uint16)0, 
  /* Index to address the input settings for pad 186*/
  (uint16)0, 
  /* Index to address the input settings for pad 187*/
  (uint16)0, 
  /* Index to address the input settings for pad 188*/
  (uint16)0, 
  /* Index to address the input settings for pad 189*/
  (uint16)0, 
  /* Index to address the input settings for pad 190*/
  (uint16)0, 
  /* Index to address the input settings for pad 191*/
  (uint16)0, 
  /* Index to address the input settings for pad 192*/
  (uint16)1015, 
  /* Index to address the input settings for pad 193*/
  (uint16)1021, 
  /* Index to address the input settings for pad 194*/
  (uint16)1032, 
  /* Index to address the input settings for pad 195*/
  (uint16)1043, 
  /* Index to address the input settings for pad 196*/
  (uint16)0, 
  /* Index to address the input settings for pad 197*/
  (uint16)0, 
  /* Index to address the input settings for pad 198*/
  (uint16)0, 
  /* Index to address the input settings for pad 199*/
  (uint16)0, 
  /* Index to address the input settings for pad 200*/
  (uint16)0, 
  /* Index to address the input settings for pad 201*/
  (uint16)0, 
  /* Index to address the input settings for pad 202*/
  (uint16)0, 
  /* Index to address the input settings for pad 203*/
  (uint16)0, 
  /* Index to address the input settings for pad 204*/
  (uint16)0, 
  /* Index to address the input settings for pad 205*/
  (uint16)0, 
  /* Index to address the input settings for pad 206*/
  (uint16)0, 
  /* Index to address the input settings for pad 207*/
  (uint16)0, 
  /* Index to address the input settings for pad 208*/
  (uint16)1054, 
  /* Index to address the input settings for pad 209*/
  (uint16)1060, 
  /* Index to address the input settings for pad 210*/
  (uint16)1066, 
  /* Index to address the input settings for pad 211*/
  (uint16)1072, 
  /* Index to address the input settings for pad 212*/
  (uint16)1079, 
  /* Index to address the input settings for pad 213*/
  (uint16)1086, 
  /* Index to address the input settings for pad 214*/
  (uint16)1092, 
  /* Index to address the input settings for pad 215*/
  (uint16)1098, 
  /* Index to address the input settings for pad 216*/
  (uint16)1104, 
  /* Index to address the input settings for pad 217*/
  (uint16)1108, 
  /* Index to address the input settings for pad 218*/
  (uint16)1114, 
  /* Index to address the input settings for pad 219*/
  (uint16)1124, 
  /* Index to address the input settings for pad 220*/
  (uint16)1127, 
  /* Index to address the input settings for pad 221*/
  (uint16)1131, 
  /* Index to address the input settings for pad 222*/
  (uint16)1140, 
  /* Index to address the input settings for pad 223*/
  (uint16)1149, 
  /* Index to address the input settings for pad 224*/
  (uint16)1156, 
  /* Index to address the input settings for pad 225*/
  (uint16)1163, 
  /* Index to address the input settings for pad 226*/
  (uint16)1170, 
  /* Index to address the input settings for pad 227*/
  (uint16)1178, 
  /* Index to address the input settings for pad 228*/
  (uint16)1184, 
  /* Index to address the input settings for pad 229*/
  (uint16)1190, 
  /* Index to address the input settings for pad 230*/
  (uint16)1196, 
  /* Index to address the input settings for pad 231*/
  (uint16)1202, 
  /* Index to address the input settings for pad 232*/
  (uint16)1208, 
  /* Index to address the input settings for pad 233*/
  (uint16)1212, 
  /* Index to address the input settings for pad 234*/
  (uint16)1219, 
  /* Index to address the input settings for pad 235*/
  (uint16)1225, 
  /* Index to address the input settings for pad 236*/
  (uint16)1231, 
  /* Index to address the input settings for pad 237*/
  (uint16)1237, 
  /* Index to address the input settings for pad 238*/
  (uint16)1243, 
  /* Index to address the input settings for pad 239*/
  (uint16)1249, 
  /* Index to address the input settings for pad 240*/
  (uint16)1255, 
  /* Index to address the input settings for pad 241*/
  (uint16)1262, 
  /* Index to address the input settings for pad 242*/
  (uint16)1269, 
  /* Index to address the input settings for pad 243*/
  (uint16)1276, 
  /* Index to address the input settings for pad 244*/
  (uint16)1285, 
  /* Index to address the input settings for pad 245*/
  (uint16)1294, 
  /* Index to address the input settings for pad 246*/
  (uint16)1300, 
  /* Index to address the input settings for pad 247*/
  (uint16)1304, 
  /* Index to address the input settings for pad 248*/
  (uint16)1310, 
  /* Index to address the input settings for pad 249*/
  (uint16)1317, 
  /* Index to address the input settings for pad 250*/
  (uint16)1324, 
  /* Index to address the input settings for pad 251*/
  (uint16)1331, 
  /* Index to address the input settings for pad 252*/
  (uint16)1337, 
  /* Index to address the input settings for pad 253*/
  (uint16)1343, 
  /* Index to address the input settings for pad 254*/
  (uint16)1349, 
  /* Index to address the input settings for pad 255*/
  (uint16)1353

};
#endif

#define PORT_STOP_SEC_CONFIG_DATA_16
/**
* @violates @ref PORT_PBCFG_REF_1 only preprocessor statements and comments before '#include'
* @violates @ref PORT_PBCFG_REF_2 Repeated include file MemMap.h
*/
#include "MemMap.h"
/*=================================================================================================
*                                      GLOBAL VARIABLES
=================================================================================================*/


/*=================================================================================================
*                                   LOCAL FUNCTION PROTOTYPES
=================================================================================================*/


/*=================================================================================================
*                                       LOCAL FUNCTIONS
=================================================================================================*/


/*=================================================================================================
*                                       GLOBAL FUNCTIONS
=================================================================================================*/


#endif    /* PORT_PRECOMPILE_SUPPORT*/

#ifdef __cplusplus
}
#endif
/** @} */

/* End of File */
