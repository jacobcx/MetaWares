/**
 *   @file    Icu_DmaNotification.c
 *   @version 1.0.2
 *
 *   @brief   AUTOSAR Icu - contains the data exported by the Icu module
 *   @details Contains the information that will be exported by the module, as requested by Autosar.
 *
 *   @addtogroup ICU_MODULE
 *   @{
 */
/*==================================================================================================
 *   Project              : AUTOSAR 4.0 MCAL
 *   Platform             : PA
 *   Peripheral           : eMIOS SIUL2
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
 ==================================================================================================*/
/*==================================================================================================
==================================================================================================*/

#ifdef __cplusplus
extern "C"{
#endif

/**
 *@page misra_violations MISRA-C:2004 violations
 *
 *@section Icu_DmaNotification_c_1
 *          Violates MISRA 2004 Advisory Rule 19.1, only preprocessor statements and comments
 *          before "#include". This violation  is not  fixed since  the inclusion  of MemMap.h
 *          is as  per Autosar  requirement MEMMAP003.
 *
 *@section Icu_DmaNotification_c_2
 *          Violates MISRA 2004 Required Rule 19.15, Precautions shall be taken in order to prevent the
 *          contents of a header file being included twice
 *          This is not a violation since all header files are protected against multiple inclusions
 *
 * @section Icu_DmaNotification_c_3
 *          Violates MISRA 2004 Required Rule 8.10, external ... could be made static
 *          The respective code could not be made static because of layers architecture design of
 *          the driver.
 *
 * @section Icu_DmaNotification_c_4
 *          Violates MISRA 2004 Required Rule 1.4, The compiler/linker shall be checked to ensure 31
 *          character significance and case sensitivity are supported for external identifiers.
 *          This is not a violation since all the compilers used interpret the identifiers correctly.
 *
 * @section [global]
 *          Violates MISRA 2004 Required Rule 5.1, Identifiers (internal and external) shall not rely
 *          on the significance of more than 31 characters. The used compilers use more than 31 chars
 *          for identifiers.
 */
 /*==================================================================================================
 *                                         INCLUDE FILES
 * 1) system and project includes
 * 2) needed interfaces from external units
 * 3) internal and external interfaces from this unit
 *==================================================================================================*/
#include "Icu.h"
#include "Icu_Irq.h"
/*==================================================================================================
 *                              SOURCE FILE VERSION INFORMATION
 *==================================================================================================*/

#define ICU_VENDOR_ID_DMANOTIF_C                  43

#define ICU_AR_RELEASE_MAJOR_VERSION_DMANOTIF_C   4
#define ICU_AR_RELEASE_MINOR_VERSION_DMANOTIF_C   0
/*
 * @violates @ref Icu_DmaNotification_c_4 Identifier clash
 */
#define ICU_AR_RELEASE_REVISION_VERSION_DMANOTIF_C      3

#define ICU_SW_MAJOR_VERSION_DMANOTIF_C           1
#define ICU_SW_MINOR_VERSION_DMANOTIF_C           0
#define ICU_SW_PATCH_VERSION_DMANOTIF_C           2

/*==================================================================================================
 *                                      FILE VERSION CHECKS
 *==================================================================================================*/

/* Check Icu_DmaNotification.c against Icu.h file versions */
#if (ICU_VENDOR_ID_DMANOTIF_C!= ICU_VENDOR_ID)
    #error "Icu_DmaNotification.c and Icu.h have different vendor IDs"
#endif

#if ((ICU_AR_RELEASE_MAJOR_VERSION_DMANOTIF_C!= ICU_AR_RELEASE_MAJOR_VERSION) || \
     (ICU_AR_RELEASE_MINOR_VERSION_DMANOTIF_C!= ICU_AR_RELEASE_MINOR_VERSION) || \
     (ICU_AR_RELEASE_REVISION_VERSION_DMANOTIF_C!= ICU_AR_RELEASE_REVISION_VERSION))
  #error "AutoSar Version Numbers of Icu_DmaNotification.c and Icu.h are different"
#endif

#if ((ICU_SW_MAJOR_VERSION_DMANOTIF_C!= ICU_SW_MAJOR_VERSION) || \
     (ICU_SW_MINOR_VERSION_DMANOTIF_C!= ICU_SW_MINOR_VERSION) || \
     (ICU_SW_PATCH_VERSION_DMANOTIF_C!= ICU_SW_PATCH_VERSION))
       #error "Software Version Numbers of Icu_DmaNotification.c  and Icu.h are different"
#endif

/* Check Icu_DmaNotification.c against Icu_Irq.h file versions */
#if (ICU_VENDOR_ID_DMANOTIF_C!= ICU_IRQ_VENDOR_ID)
    #error "Icu_DmaNotification.c and Icu_Irq.h have different vendor IDs"
#endif

#if ((ICU_AR_RELEASE_MAJOR_VERSION_DMANOTIF_C!= ICU_IRQ_AR_RELEASE_MAJOR_VERSION) || \
     (ICU_AR_RELEASE_MINOR_VERSION_DMANOTIF_C!= ICU_IRQ_AR_RELEASE_MINOR_VERSION) || \
     (ICU_AR_RELEASE_REVISION_VERSION_DMANOTIF_C!= ICU_IRQ_AR_RELEASE_REVISION_VERSION))
  #error "AutoSar Version Numbers of Icu_DmaNotification.c and Icu_Irq.h are different"
#endif

#if ((ICU_SW_MAJOR_VERSION_DMANOTIF_C!= ICU_IRQ_SW_MAJOR_VERSION) || \
     (ICU_SW_MINOR_VERSION_DMANOTIF_C!= ICU_IRQ_SW_MINOR_VERSION) || \
     (ICU_SW_PATCH_VERSION_DMANOTIF_C!= ICU_IRQ_SW_PATCH_VERSION))
       #error "Software Version Numbers of Icu_DmaNotification.c  and Icu_Irq.h are different"
#endif

/*==================================================================================================
 *                          LOCAL TYPEDEFS (STRUCTURES, UNIONS, ENUMS)
 *==================================================================================================*/


/*==================================================================================================
 *                                       LOCAL MACROS
 *==================================================================================================*/


/*==================================================================================================
 *                                      LOCAL CONSTANTS
 *==================================================================================================*/


/*==================================================================================================
 *                                       LOCAL VARIABLES
 *==================================================================================================*/


/*==================================================================================================
 *                                       GLOBAL CONSTANTS
 *==================================================================================================*/

/*==================================================================================================
 *                                       GLOBAL VARIABLES
 *==================================================================================================*/


/*==================================================================================================
 *                                   LOCAL FUNCTION PROTOTYPES
 *==================================================================================================*/


/*==================================================================================================
 *                                       LOCAL FUNCTIONS
 *==================================================================================================*/

/*==================================================================================================
 *                                       GLOBAL FUNCTIONS
 *==================================================================================================*/

#define ICU_START_SEC_CODE
/*
 * @violates @ref Icu_DmaNotification_c_1 Violates MISRA 2004 Advisory Rule 19.1, only preprocessor statements and
 *           comments before "#include"
 * @violates @ref Icu_DmaNotification_c_2 precautions to prevent the contents of a header file being included twice
 */
#include "MemMap.h"
#if ((ICU_SIGNALMEASUREMENT_USES_DMA == STD_ON) || (ICU_TIMESTAMP_USES_DMA == STD_ON))

#endif
#define ICU_STOP_SEC_CODE
/*
  * @violates @ref Icu_DmaNotification_c_1 Violates MISRA 2004 Advisory Rule 19.1, only preprocessor statements and
  *           comments before "#include"
  * @violates @ref Icu_DmaNotification_c_2 precautions to prevent the contents of a header file being included twice
  */
#include "MemMap.h"

#ifdef __cplusplus
}
#endif

/** @} */
