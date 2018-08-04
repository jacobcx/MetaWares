/**
*   @file    SchM_Gpt.h
*   @version 1.0.2
*
*   @brief   AUTOSAR Rte - module interface
*   @details This file contains the functions prototypes and data types of the AUTOSAR Rte.
*            This file contains sample code only. It is not part of the production code deliverables.
*
*   @addtogroup RTE_MODULE
*   @{
*/
/*==================================================================================================
*   Project              : AUTOSAR 4.0 MCAL
*   Platform             : PA
*   Peripheral           : 
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

#ifndef SCHM_GPT_H
#define SCHM_GPT_H

#ifdef __cplusplus
extern "C" {
#endif
/*==================================================================================================
*                                         INCLUDE FILES
* 1) system and project includes
* 2) needed interfaces from external units
* 3) internal and external interfaces from this unit
==================================================================================================*/

/*==================================================================================================
*                               SOURCE FILE VERSION INFORMATION
==================================================================================================*/


/*==================================================================================================
*                                      FILE VERSION CHECKS
==================================================================================================*/


/*==================================================================================================
*                                           CONSTANTS
==================================================================================================*/

/*==================================================================================================
*                                       DEFINES AND MACROS
==================================================================================================*/

/*==================================================================================================
*                                             ENUMS
==================================================================================================*/

/*==================================================================================================
*                                 STRUCTURES AND OTHER TYPEDEFS
==================================================================================================*/

/*==================================================================================================
*                                 GLOBAL VARIABLE DECLARATIONS
==================================================================================================*/

/*==================================================================================================
*                                     FUNCTION PROTOTYPES
==================================================================================================*/
#ifdef MCAL_TESTING_ENVIRONMENT
/** 
@brief   This function checks that all entered exclusive areas were also exited. 
@details This function checks that all entered exclusive areas were also exited. The check
         is done by verifying that all reentry_guard_* static variables are back to the
         zero value.
    
@param[in]     void       No input parameters
@return        void       This function does not return a value. Test asserts are used instead. 

@pre  None
@post None

@remarks Covers 
@remarks Implements 
*/
FUNC(void, RTE_CODE) SchM_Check_gpt(void);
#endif /*MCAL_TESTING_ENVIRONMENT*/

extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_00(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_01(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_02(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_03(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_04(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_05(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_06(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_07(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_08(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_09(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_10(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_11(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_12(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_13(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_14(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_15(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_16(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_17(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_18(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_19(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_20(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_21(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_22(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_23(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_24(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_25(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_26(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_27(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_28(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_29(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_30(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_31(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_32(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_33(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_34(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_35(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_36(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_37(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_38(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_39(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_40(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_41(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_42(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_43(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_44(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_45(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_46(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_47(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_48(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_49(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_50(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_51(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_52(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_53(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_54(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_55(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_56(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_57(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_58(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_59(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_60(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_61(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_62(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_63(void);
extern FUNC(void, RTE_CODE) SchM_Enter_Gpt_GPT_EXCLUSIVE_AREA_64(void);

extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_00(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_01(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_02(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_03(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_04(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_05(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_06(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_07(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_08(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_09(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_10(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_11(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_12(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_13(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_14(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_15(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_16(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_17(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_18(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_19(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_20(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_21(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_22(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_23(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_24(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_25(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_26(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_27(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_28(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_29(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_30(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_31(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_32(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_33(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_34(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_35(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_36(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_37(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_38(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_39(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_40(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_41(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_42(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_43(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_44(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_45(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_46(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_47(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_48(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_49(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_50(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_51(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_52(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_53(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_54(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_55(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_56(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_57(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_58(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_59(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_60(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_61(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_62(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_63(void);
extern FUNC(void, RTE_CODE) SchM_Exit_Gpt_GPT_EXCLUSIVE_AREA_64(void);


#ifdef __cplusplus
}
#endif

#endif /* SCHM_GPT_H */

/** @} */
