/**
*   @file    Adc_CfgDefines.h
*   @version 1.0.2
*
*   @brief   AUTOSAR Adc - Module configuration interface for Adc driver.
*   @details Contains the module configuration interface for Adc driver.
*
*   @addtogroup ADC
*   @{
*/
/*==================================================================================================
*   Project              : AUTOSAR 4.0 MCAL
*   Platform             : PA
*   Peripheral           : ADCDIG
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

#ifndef ADC_CFG_DEFINES_H
#define ADC_CFG_DEFINES_H

#ifdef __cplusplus
extern "C"{
#endif

/**
* @page misra_violations MISRA-C:2004 violations
*
* @section Adc_CfgDefines_h_REF_1
* Violates MISRA 2004 Advisory Rule 19.7,
* A function shall be used in preference to a function-like macro.
* Middle layer between AUTOSAR and hardware needs a way to map HLD
* functions to IPV functions.
*
* @section Adc_CfgDefines_h_REF_2
* Violates MISRA 2004 Required Rule 1.4, The compiler/linker shall be checked to ensure
* that 31 character significance and case sensitivity are supported for external identifiers.
* The defines are validated. 
*
* @section [global]
* Violates MISRA 2004 Required Rule 5.1, Identifiers (internal and external) shall not rely 
* on the significance of more than 31 characters. All compilers used support more than 31 chars for
* identifiers.
*/

/*==================================================================================================
*                                        INCLUDE FILES
* 1) system and project includes
* 2) needed interfaces from external units
* 3) internal and external interfaces from this unit
==================================================================================================*/

/*==================================================================================================
*                              SOURCE FILE VERSION INFORMATION
==================================================================================================*/
#define ADC_VENDOR_ID_CFG_DEFINES                       43
#define ADC_AR_RELEASE_MAJOR_VERSION_CFG_DEFINES        4
#define ADC_AR_RELEASE_MINOR_VERSION_CFG_DEFINES        0
/** @violates @ref Adc_CfgDefines_h_REF_2 MISRA-C:2004 Rule 1.4: Identifier clash.*/
#define ADC_AR_RELEASE_REVISION_VERSION_CFG_DEFINES     3
#define ADC_SW_MAJOR_VERSION_CFG_DEFINES                1
#define ADC_SW_MINOR_VERSION_CFG_DEFINES                0
#define ADC_SW_PATCH_VERSION_CFG_DEFINES                2

/*==================================================================================================
*                                     FILE VERSION CHECKS
==================================================================================================*/


/*==================================================================================================
*                                          CONSTANTS
==================================================================================================*/


/*==================================================================================================
*                                      DEFINES AND MACROS
==================================================================================================*/

/**
* @brief          ADC unit 0 available
*/
#define ADC_UNIT_0  0U

/**
* @brief          ADC unit 1 available
*/
#define ADC_UNIT_1  1U

/**
* @brief          ADC unit 2 available
*/
#define ADC_UNIT_2  2U

/**
* @brief          ADC unit 3 available
*/
#define ADC_UNIT_3  3U



/**
* @brief          MHT functionality not activated.
*/
#define ADC_MULTIPLE_HARDWARE_TRIGGERS      (STD_OFF)

/** 
* @brief          This switch is used to enable the hardware trigger non autosar API.
*/
#define ADC_ENABLE_CTUTRIG_NONAUTO_API      (STD_OFF)

/**
* @brief           Ctu trigger mode is disable
*/
#define ADC_CTU_TRIGGER_MODE_SUPPORTED    (STD_ON)
/** 
* @brief           Add/Remove One time setting of Conversion time regsisters from Init() function.
*/
#define ADC_SET_ONCE_REGISTERS_SUPPORTED    (STD_OFF)

/** 
* @brief           Adds/removes ((STD_ON)/(STD_OFF)) the services Adc_EnableHardwareTrigger() and Adc_DisableHardwareTrigger() from the code.
*/
#define ADC_HW_TRIGGER_API                  (STD_OFF)

/** 
* @brief           Set mode api enabled/disabled ((STD_ON)/(STD_OFF)).
*/
#define ADC_SET_MODE_API                    (STD_OFF)

/** 
* @brief           Enables or disables limit checking feature in the ADC driver.
*/
#define ADC_ENABLE_LIMIT_CHECK              (STD_ON)

/** 
* @brief           Group notification mechanism is/isn't ((STD_ON)/(STD_OFF)) available at runtime.
*/
#define ADC_GRP_NOTIF_CAPABILITY            (STD_ON)

/** 
* @brief           Type of prioritization mechanism ADC_PRIORITY_HW, ADC_PRIORITY_HW_SW and ADC_PRIORITY_NONE.
*/
#define ADC_PRIORITY_HW                     0U
#define ADC_PRIORITY_HW_SW                  1U
#define ADC_PRIORITY_NONE                   2U

/** 
* @brief           Priority implementation.
*/
#define ADC_PRIORITY_IMPLEMENTATION         (ADC_PRIORITY_NONE)

/** 
* @brief           Type of alignment mechanism ADC_ALIGN_RIGHT, ADC_ALIGN_LEFT.
*/
#define ADC_ALIGN_RIGHT                     0U
#define ADC_ALIGN_LEFT                      1U

/** 
* @brief           Result Alignment.
*/
#define ADC_RESULT_ALIGNMENT                (ADC_ALIGN_RIGHT)

/** 
* @brief           Adc transfer type.
*/
#define ADC_DMA                             0U
#define ADC_INTERRUPT                       1U

/** 
* @brief         This is a timeout value which is used to wait till
*                  - the conversion is not aborted.
*                  - ADC hardware is not entered in power down state.
*                  - ADC hardware is not entered in idle state.
*/
#define ADC_TIMEOUT_COUNTER                 (0x0000ffffUL)

/** 
* @brief           Specifies for reducing the number of interrupts for streaming groups
*/
#define ADC_ENABLE_DOUBLE_BUFFERING  (STD_OFF)

/** 
* @brief           Specifies to optimize converstions for hw triggered, one shot group.
*/
#define ADC_OPTIMIZE_ONESHOT_HW_TRIGGER      (STD_OFF)

/** 
* @brief            Support for User mode.
*                   STD_ON: the Adc driver can be executed from both supervisor and user mode. 
*                   STD_OFF: the Adc driver can be executed only from supervisor mode. 
*/
#define ADC_ENABLE_USER_MODE_SUPPORT     (STD_OFF)


/** 
* @brief           Extended/External channels available/unavailable (STD_ON/STD_OFF).
*/
#define ADC_EXTENDED_CH_AVAILABLE  (STD_ON)
#define ADC_EXTERNAL_CH_AVAILABLE  (STD_ON)

/** 
* @brief           Extra CEOCFR register available/unavailable (STD_ON/STD_OFF).
*/
#define ADC_CEOCFR1_AVAILABLE  (STD_ON)
#define ADC_CEOCFR2_AVAILABLE  (STD_ON)

/**
* @brief          Maximum CEOCFR registers across all derviative, used for the array size.
*/
#define ADC_CEOCFR_REGS                      3U

#define ADC_CEOCFR0_INDEX             0U
#define ADC_CEOCFR1_INDEX             1U
#define ADC_CEOCFR2_INDEX             2U

/** 
* @brief           Extra CIMR register available/unavailable (STD_ON/STD_OFF).
*/
#define ADC_CIMR1_AVAILABLE  (STD_ON)
#define ADC_CIMR2_AVAILABLE  (STD_ON)

/**
* @brief          Maximum CIMR registers across all derviative, used for the array size.
*/
#define ADC_CIMR_REGS                      3U

#define ADC_CIMR0_INDEX             0U
#define ADC_CIMR1_INDEX             1U
#define ADC_CIMR2_INDEX             2U

/** 
* @brief           Extra DMAR register available/unavailable (STD_ON/STD_OFF).
*/
#define ADC_DMAR1_AVAILABLE  (STD_ON)
#define ADC_DMAR2_AVAILABLE  (STD_ON)

/**
* @brief          Maximum DMAR registers across all derviative, used for the array size.
*/
#define ADC_DMAR_REGS                      3U

#define ADC_DMAR0_INDEX             0U
#define ADC_DMAR1_INDEX             1U
#define ADC_DMAR2_INDEX             2U

/**
* @brief          Maximum DMAR registers across all derviative, used for the array size.
*/
#define ADC_THRHLR_REGS                  4U
/** 
* @brief           Extra PSR register available/unavailable (STD_ON/STD_OFF).
*/
#define ADC_PSR1_AVAILABLE  (STD_ON)
#define ADC_PSR2_AVAILABLE  (STD_ON)

/**
* @brief          Maximum PSR registers across all derviative, used for the array size.
*/
#define ADC_PSR_REGS                      3U

#define ADC_PSR0_INDEX             0U
#define ADC_PSR1_INDEX             1U
#define ADC_PSR2_INDEX             2U

/** 
* @brief           Extra CTR register available/unavailable (STD_ON/STD_OFF).
*/
#define ADC_CTR1_AVAILABLE  (STD_ON)
#define ADC_CTR2_AVAILABLE  (STD_ON)

/**
* @brief          maximum Ctr registers across all derviative, used for the array size.
*/
#define ADC_CTR_REGS                      3U

#define ADC_CTR0_INDEX             0U
#define ADC_CTR1_INDEX             1U
#define ADC_CTR2_INDEX             2U


/** 
* @brief           Extra NCMR register available/unavailable (STD_ON/STD_OFF).
*/
#define ADC_NCMR1_AVAILABLE  (STD_ON)
#define ADC_NCMR2_AVAILABLE  (STD_ON)

/**
* @brief          Maximum NCMR registers across all derviative, used for the array size.
*/
#define ADC_NCMR_REGS                      3U

#define ADC_NCMR0_INDEX             0U
#define ADC_NCMR1_INDEX             1U
#define ADC_NCMR2_INDEX             2U

/** 
* @brief           Extra JCMR register available/unavailable (STD_ON/STD_OFF).
*/
#define ADC_JCMR1_AVAILABLE  (STD_ON)
#define ADC_JCMR2_AVAILABLE  (STD_ON)

/**
* @brief          Maximum JCMR registers across all derviative, used for the array size.
*/
#define ADC_JCMR_REGS                      3U

#define ADC_JCMR0_INDEX             0U
#define ADC_JCMR1_INDEX             1U
#define ADC_JCMR2_INDEX             2U

/** 
* @brief           DSDR register available.
*/
#define ADC_DSDR_AVAILABLE  (STD_ON)

/** 
* @brief           Extra CWSELR register available/unavailable (STD_ON/STD_OFF).
*/
#define ADC_CWSELR1_AVAILABLE  (STD_ON)
#define ADC_CWSELR2_AVAILABLE  (STD_ON)
#define ADC_CWSELR3_AVAILABLE  (STD_ON)
#define ADC_CWSELR4_AVAILABLE  (STD_ON)
#define ADC_CWSELR5_AVAILABLE  (STD_OFF)
#define ADC_CWSELR6_AVAILABLE  (STD_OFF)
#define ADC_CWSELR7_AVAILABLE  (STD_OFF)
#define ADC_CWSELR8_AVAILABLE  (STD_ON)
#define ADC_CWSELR9_AVAILABLE  (STD_ON)
#define ADC_CWSELR10_AVAILABLE (STD_ON)
#define ADC_CWSELR11_AVAILABLE (STD_ON)

/**
* @brief          Maximum CWSELR registers across all derviative, used for the array size.
*/
#define ADC_CWSELR_REGS                      12U

#define ADC_CWSELR0_INDEX             0U
#define ADC_CWSELR1_INDEX             1U
#define ADC_CWSELR2_INDEX             2U
#define ADC_CWSELR3_INDEX             3U
#define ADC_CWSELR4_INDEX             4U
#define ADC_CWSELR5_INDEX             5U
#define ADC_CWSELR6_INDEX             6U
#define ADC_CWSELR7_INDEX             7U
#define ADC_CWSELR8_INDEX             8U
#define ADC_CWSELR9_INDEX             9U
#define ADC_CWSELR10_INDEX             10U
#define ADC_CWSELR11_INDEX             11U

/** 
* @brief           Extra CWENR register available/unavailable (STD_ON/STD_OFF).
*/
#define ADC_CWENR1_AVAILABLE  (STD_ON)
#define ADC_CWENR2_AVAILABLE  (STD_ON)

/**
* @brief          Maximum CWENR registers across all derviative, used for the array size.
*/
#define ADC_CWENR_REGS                      3U

#define ADC_CWENR0_INDEX             0U
#define ADC_CWENR1_INDEX             1U
#define ADC_CWENR2_INDEX             2U

/** 
* @brief           Extra AWORR register available/unavailable (STD_ON/STD_OFF).
*/
#define ADC_AWORR1_AVAILABLE  (STD_ON)
#define ADC_AWORR2_AVAILABLE  (STD_ON)

/**
* @brief          Maximum AWORR registers across all derviative, used for the array size.
*/
#define ADC_AWORR_REGS                      3U

#define ADC_AWORR0_INDEX             0U
#define ADC_AWORR1_INDEX             1U
#define ADC_AWORR2_INDEX             2U

/**
* @brief          Maximum CTU event configuration.
*/
#define ADC_MAX_CTU_EVTCFGREGS             (32U)

/**
* @brief          Adc 10 bit resolution available.
*/
#define ADC_UNIT_10_BITS_AVAILABLE         (STD_OFF)

/** 
* @brief           BCTU available/unavailable (STD_ON/STD_OFF).
*/
#define ADC_BCTU_AVAILABLE   (STD_ON)

/** 
* @brief           CTUV2 available/unavailable (STD_ON/STD_OFF).
*/
#define ADC_CTUV2_AVAILABLE  (STD_OFF)

/**
* @brief         Manimum number of internal trigger sources coming from ETPU and EMIOS
*/
#define ADC_MIN_INTERNAL_TRIGGERS                 68U


/**
 * @brief   Max number of ADCDig Hw units
 */
#define ADC_MAX_HW_UNITS         4U

/**
 * @brief   Define the number of maximum channels
 */
#define ADC_MAXIMUM_HW_CHANNELS  96U

/**
 * @brief   Define the number of maximum hardware unit configured
 */
#define ADC_MAX_HW_UNITS_CFG                      (1U)

/** 
* @brief           Add/Remove non autosar Adc_EnableChannel() and Adc_DisableChannel() api.
*/
#define ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API      (STD_OFF)

/** 
* @brief           Get injected conversion status api enabled/disabled (STD_ON/STD_OFF).
*/
#define ADC_GET_INJECTED_CONVERSION_STATUS_API    (STD_OFF)

/** 
* @brief          Add/Remove non autosar Adc_SetClockMode().
*/
#define ADC_DUAL_CLOCK_MODE    (STD_OFF)

/** 
* @brief          Add/remove ((STD_ON)/(STD_OFF)) the service Adc_Calibration() from the code.
*/
#define ADC_CALIBRATION         (STD_OFF)

/** 
* @brief          Add/remove ((STD_ON)/(STD_OFF)) the service Adc_SetChannel() from the code.
*/
#define ADC_SETCHANNEL_API      (STD_OFF)

/** 
* @brief          Extra group notification mechanism is/isn't ((STD_ON)/(STD_OFF)) available at runtime.
*/
#define ADC_ENABLE_INITIAL_NOTIFICATION      (STD_OFF)

/** 
* @brief          Add/remove ((STD_ON)/(STD_OFF)) the service Adc_SelfTest() from the code.
*/
#define ADC_SELF_TEST         (STD_OFF)

/** 
* @brief           ADC Configure Threshold enabled/disabled (STD_ON/STD_OFF).
*/
#define ADC_ENABLE_CONFIGURE_THRESHOLD_NONAUTO_API    (STD_OFF)

/**
* @brief  Switch to enable/disable the API for the PR-MCAL-3312, PR-MCAL-3313, PR-MCAL-3314, PR-MCAL-3315 and PR-MCAL-3316.
*/
#define ADC_CTUV2_ENABLE_TRIGGER_CONFIGURATION_APIS   (STD_OFF)

/** 
* @brief  Switch to enable/disable the API for the CPR-MCAL-726, CPR-MCAL-727, CPR-MCAL-728.
*/
#define ADC_ENABLE_CTU_CONTROL_MODE_API               (STD_OFF)

/** 
* @brief  Switch to enable/disable the production error reporting.
*/
#define ADC_DISABLE_DEM_REPORT_ERROR_STATUS           (STD_ON)


/**
* @brief IRQ definition, the implementation for PR-MCAL-3134
*/
#define ADC_UNIT_0_ISR_USED






/** 
* @brief           max queue depth configured across all configset.
*/
#define ADC_QUEUE_MAX_DEPTH_MAX             (1U)

/** 
* @brief           max number of groups configured across all configset.
*/
#define ADC_MAX_GROUPS                      1U

/** 
* @brief           Max number of groups configured per each hardware unit.
*/
#define ADC_MAX_GROUPS_PER_HW_UNIT         1U

/** 
* @brief           Indicate that common interrupt source is used or not for BCTU.
*/
#define ADC_BCTU_COMMON_ISR_HANDLER         (STD_ON)

/** 
* @brief           Define the HW queue size depending on the MHT groups existence.
* @details         If there are MHT groups in the configuration the HW queue size will be the total number of MHT
*                  groups defined. If there are no MHT groups in the current configuration, then only one hardware
*                  group can be added to the HW queue, thus the queue size will be only 1.
*/
#define ADC_HW_QUEUE                        1U

/** 
* @brief           Maximum number of channels across all hardware units.
*/
#define ADC_MAX_CHANNEL_PER_HW_UNIT         1

#define ADC_USER_MODE_REG_PROT_ENABLED      (STD_OFF)


/** 
* @brief          Development error detection enabled/disabled ((STD_ON)/(STD_OFF)).
*/
#define ADC_DEV_ERROR_DETECT                (STD_OFF)

/** 
* @brief          Add/remove ((STD_ON)/(STD_OFF)) the service Adc_GetVersionInfo() from the code.
*/
#define ADC_VERSION_INFO_API                (STD_ON)

/** 
* @brief          Add/remove ((STD_ON)/(STD_OFF)) the service Adc_DeInit() from the code.
*/
#define ADC_DEINIT_API                      (STD_ON)

/** 
* @brief          Add/remove ((STD_ON)/(STD_OFF)) the services Adc_StartGroupConversion()and Adc_StopGroupConversion() from the code.
*/
#define ADC_ENABLE_START_STOP_GROUP_API     (STD_ON)

/** 
* @brief          Add/Remove the services Adc_ReadGroup() from the code.
*/
#define ADC_READ_GROUP_API                  (STD_ON)

/** 
* @brief          Add/Remove One time setting of Presampling regsisters from Init() function.
*/
#define ADC_SET_ADC_PRESAMPLE_ONCE          (STD_OFF)

/** 
* @brief          Add/Remove One time setting of Conversion time regsisters from Init() function.
*/
#define ADC_SET_ADC_CONV_TIME_ONCE          (STD_OFF)

/** 
* @brief           This switch is used to enable the queue.
*/
#define ADC_ENABLE_QUEUING                  (STD_ON)

/** 
* @brief           This switch is used to enable the non autosar ADC performance optimization feature.
*/
#define ADC_BYPASS_CONSISTENCY_LOOP         (STD_OFF)




/** 
* @brief           Software injected conversion use
*/
#define ADC_SOFTWARE_INJECTED_CONVERSIONS_USED          (STD_OFF)

/** 
* @brief           Software injected conversion use
*/
#define ADC_HARDWARE_NORMAL_CONVERSIONS_USED            (STD_OFF)

/** 
* @brief          Maximum number of hardware triggers configred for all groups
*/
#define  ADC_MAX_HADRWARE_TRIGGERS       (1U)

/** 
* @brief           Symbolic names of ADC Hardware units.
*/
#define  AdcHwUnit                      (0)

/** 
* @brief           ADC Hardware unit macro for register access.
*
* @violates @ref Adc_CfgDefines_h_REF_1 Use of function like macro.
*/
#define ADC_HW_UNITS(unit)                  (Adc_pCfgPtr->Misc.au8Adc_HwUnit[(unit)])

/**
* @brief          Adc channel id.
* @violates @ref Adc_CfgDefines_h_REF_1 Use of function like macro.
*/
#define ADC_ID_CHANNEL_U8(Id)            (Id)

/**
* @brief          macros to simplify access to structures.
* @details        Streaming number of samples
* @violates @ref Adc_CfgDefines_h_REF_1 Function-like macro defined
*/
#define ADC_STREAMING_NUM_SAMPLES(num)      (num)

/**
* @brief          Configured hardware unit of the group.
*/
#if (ADC_MAX_HW_UNITS == 1U)
/** @violates @ref Adc_CfgDefines_h_REF_1 Function-like macro defined */
  #define Adc_GroupUnit(group)              0U
#else
/** @violates @ref Adc_CfgDefines_h_REF_1 Function-like macro defined */
  #define Adc_GroupUnit(group)              (Adc_CfgPtr->pGroups[(group)].HwUnit)
#endif /* (ADC_MAX_HW_UNITS == 1U) */

/**
* @brief          Adc group priority.
* @violates @ref Adc_CfgDefines_h_REF_1 Function-like macro defined
*/
#define ADC_GROUP_PRIORITY(Priority)        ((Adc_GroupPriorityType)(Priority))

/**
* @brief          Adc hardware trigger source configured for the group.
* @violates @ref Adc_CfgDefines_h_REF_1 Function-like macro defined
*/
#define Adc_GroupTriggerSource(group,pos)   (Adc_pCfgPtr->pGroups[(group)].pHwResource[(pos)])

/**
* @brief          Maximum boundary for the Adc_QueueIndexType.
*/
#define ADC_QUEUE_INDEX_TYPE_MAXIMUM          65535U

/** 
* @brief           AUTOSAR Symbolic names of channels on all HW units.
*/

#define AdcChannel                       0


/** 
* @brief           Symbolic names of groups.
*/

#define AdcGroup                       0

/** 
* @brief           Symbolic names of groups - ecuc 2108 compliant.
*/

/** @violates @ref Adc_CfgDefines_h_REF_2 MISRA-C:2004 Rule 1.4: Identifier clash.*/
#define AdcConf_AdcGroup_AdcGroup                       0

/** 
* @brief           Number of channels in respective groups.
*/

#define ADC_CFGSET1_GROUP_0_CHANNELS      1
/** 
* @brief           Adc non autosar Enable/Disable invalid group index.
*/
#if (ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON)
#define ADC_ENABLE_CH_DISABLE_CH_INVALID_GROUP_INDEX   ((Adc_GroupType)0xFFFF)
#endif /* ADC_ENABLE_CH_DISABLE_CH_NONAUTO_API == STD_ON */

/** 
* @brief The maximum of continous channels segment of group
*/
#define ADC_MAX_CHANNEL_SEGMENTS_U8     (1U)


/** 
* @brief           Number of BCTU_SFTRG register.
*/
#define BCTU_NUMB_SFTRG_REG             (1U)

/** 
* @brief           Number of BCTU_LISTCHR register.
*/
#define BCTU_NUMB_LISTCHR_REG           (32U)

/** 
* @brief           Number of BCTU_TRGCFG register.
*/
#define BCTU_NUMB_TRGCFG_REG            (32U)
/*==================================================================================================
*                                             ENUMS
==================================================================================================*/


/*==================================================================================================
*                                STRUCTURES AND OTHER TYPEDEFS
==================================================================================================*/


/*==================================================================================================
*                                GLOBAL VARIABLE DECLARATIONS
==================================================================================================*/


/*==================================================================================================
*                                    FUNCTION PROTOTYPES
==================================================================================================*/

#ifdef __cplusplus
}
#endif

#endif /* ADC_CFG_DEFINES_H */

/** @} */
