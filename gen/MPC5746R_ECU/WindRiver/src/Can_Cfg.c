/**
*   @file    Can_Cfg.c
*   @version 1.0.2
*
*   @brief   AUTOSAR Can - module interface
*   @details Configuration Structures for PreCompile.
*
*   @addtogroup CAN_DRIVER
*   @{
*/
/*==================================================================================================
*   Project              : AUTOSAR 4.0 MCAL
*   Platform             : PA
*   Peripheral           : FLEXCAN
*   Dependencies         : 
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
* @page misra_violations MISRA-C:2004 violations
*
* @section [global]
* Violates MISRA 2004 Required Rule 5.1, Identifiers (internal and external) shall not rely 
* on the significance of more than 31 characters. The used compilers use more than 31 chars for
* identifiers.
*
* @section Can_Cfg_c_REF_1
* Violates MISRA 2004 Advisory Rule 19.1,#include preceded by non preproc directives.
* This violation is not fixed since the inclusion of MemMap.h is as per Autosar requirement MEMMAP003.
*
* @section Can_Cfg_c_REF_2
* Violates MISRA 2004 Required Rule 19.15, Repeated include file MemMap.h
* There are different kinds of execution code sections.
*
* @section Can_Cfg_c_REF_3
* Violates MISRA 2004 Required Rule 1.4, Identifier clash
* This violation is due to the requirement that request to have a file version check.
*
* @section Can_Cfg_c_REF_5
* Violates MISRA 2004 Required Rule 11.1, cast from unsigned long to pointer.
* This macro compute the address of any register by using the hardware ofsset of the controller. The address calculated as an unsigned int
* is passed to  a macro for initializing the pointer with that address. (ex: see REG_WRITE32 macro).
*
* @section Can_Cfg_c_REF_4
* Violates MISRA 2004 Required Rule 8.10, external ... could be made static
* The respective code could not be made static because of layers architecture design of the driver.
*
*/


/*==================================================================================================
*                                        INCLUDE FILES
* 1) system and project includes
* 2) needed interfaces from external units
* 3) internal and external interfaces from this unit
==================================================================================================*/
#include "Can.h"
#include "Can_IPW.h"

/**
* @file           Can_Cfg.c
*/



/*==================================================================================================
*                              SOURCE FILE VERSION INFORMATION
==================================================================================================*/
#define CAN_VENDOR_ID_PCCFG_C                   43
/* @violates @ref Can_Cfg_c_REF_3 Violates MISRA 2004 Rule 1.4, Identifier clash */
#define CAN_AR_RELEASE_MAJOR_VERSION_PCCFG_C     4
/* @violates @ref Can_Cfg_c_REF_3 Violates MISRA 2004 Rule 1.4, Identifier clash */
#define CAN_AR_RELEASE_MINOR_VERSION_PCCFG_C     0
/* @violates @ref Can_Cfg_c_REF_3 Violates MISRA 2004 Rule 1.4, Identifier clash */
#define CAN_AR_RELEASE_REVISION_VERSION_PCCFG_C  3
#define CAN_SW_MAJOR_VERSION_PCCFG_C             1
#define CAN_SW_MINOR_VERSION_PCCFG_C             0
#define CAN_SW_PATCH_VERSION_PCCFG_C             2

/*==================================================================================================
*                                     FILE VERSION CHECKS
==================================================================================================*/



/* Check if current file and Can configuration header file are of the same vendor */
#if (CAN_VENDOR_ID_PCCFG_C != CAN_VENDOR_ID)
#error "Can.h and Can_Cfg.h have different vendor ids"
#endif
/* Check if current file and CAN header file are of the same Autosar version */
#if ((CAN_AR_RELEASE_MAJOR_VERSION_PCCFG_C != CAN_AR_RELEASE_MAJOR_VERSION) || \
     (CAN_AR_RELEASE_MINOR_VERSION_PCCFG_C != CAN_AR_RELEASE_MINOR_VERSION) || \
     (CAN_AR_RELEASE_REVISION_VERSION_PCCFG_C != CAN_AR_RELEASE_REVISION_VERSION))
  #error "AutoSar Version Numbers of Can_Cfg.c and Can.h are different"
#endif
/* Check if current file and CAN header file are of the same Software version */
#if ((CAN_SW_MAJOR_VERSION_PCCFG_C != CAN_SW_MAJOR_VERSION) || \
     (CAN_SW_MINOR_VERSION_PCCFG_C != CAN_SW_MINOR_VERSION) || \
     (CAN_SW_PATCH_VERSION_PCCFG_C != CAN_SW_PATCH_VERSION))
       #error "Software Version Numbers of Can_Cfg.c and Can.h are different"
#endif

/* Check if current file and Can_IPW configuration header file are of the same vendor */
#if (CAN_VENDOR_ID_PCCFG_C  != CAN_IPW_VENDOR_ID_H)
#error "Can.h and Can_Cfg.h have different vendor ids"
#endif
/* Check if current file and CAN_IPW header file are of the same Autosar version */
#if ((CAN_AR_RELEASE_MAJOR_VERSION_PCCFG_C != CAN_IPW_AR_RELEASE_MAJOR_VERSION_H) || \
     (CAN_AR_RELEASE_MINOR_VERSION_PCCFG_C != CAN_IPW_AR_RELEASE_MINOR_VERSION_H) || \
     (CAN_AR_RELEASE_REVISION_VERSION_PCCFG_C != CAN_IPW_AR_RELEASE_REVISION_VERSION_H))
  #error "AutoSar Version Numbers of Can_Cfg.c and Can.h are different"
#endif
/* Check if current file and CAN_IPW header file are of the same Software version */
#if ((CAN_SW_MAJOR_VERSION_PCCFG_C != CAN_IPW_SW_MAJOR_VERSION_H) || \
     (CAN_SW_MINOR_VERSION_PCCFG_C != CAN_IPW_SW_MINOR_VERSION_H) || \
     (CAN_SW_PATCH_VERSION_PCCFG_C != CAN_IPW_SW_PATCH_VERSION_H))
       #error "Software Version Numbers of Can_Cfg.c and Can.h are different"
#endif

#if (CAN_PRECOMPILE_SUPPORT == STD_ON)
/*==================================================================================================
*                                   GLOBAL FUNCTION PROTOTYPES
==================================================================================================*/
#define CAN_START_SEC_CONFIG_DATA_UNSPECIFIED
/* @violates @ref Can_Cfg_c_REF_2 MISRA 2004 Rule 19.15, Repeated include file MemMap.h  */
#include "MemMap.h"

/**
* @brief    Prototype of User Notifications
*/

/*==================================================================================================
*                          LOCAL TYPEDEFS (STRUCTURES, UNIONS, ENUMS)
==================================================================================================*/


/*==================================================================================================
*                                       LOCAL MACROS
==================================================================================================*/


/*==================================================================================================
*                                      LOCAL CONSTANTS
==================================================================================================*/

/*==================================================================================================
*                                      LOCAL VARIABLES
==================================================================================================*/


/*==================================================================================================*/
/**
* @brief          Filter Masks
* @details        Filter Masks
*
*/
static CONST(Can_IdType, CAN_CONST) Can_FilterMasks_PC[CAN_MAXFILTERCOUNT_0] =
{
    /* FilterMasks_PC[0], "CanFilterMask" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[1], "CanFilterMask1" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[2], "CanFilterMask2" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[3], "CanFilterMask3" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[4], "CanFilterMask4" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[5], "CanFilterMask5" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[6], "CanFilterMask6" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[7], "CanFilterMask7" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[8], "CanFilterMask8" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[9], "CanFilterMask9" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[10], "CanFilterMask10" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[11], "CanFilterMask11" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[12], "CanFilterMask12" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[13], "CanFilterMask13" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[14], "CanFilterMask14" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[15], "CanFilterMask15" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[16], "CanFilterMask16" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[17], "CanFilterMask17" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[18], "CanFilterMask18" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[19], "CanFilterMask19" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[20], "CanFilterMask20" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[21], "CanFilterMask21" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[22], "CanFilterMask22" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[23], "CanFilterMask23" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[24], "CanFilterMask24" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[25], "CanFilterMask25" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[26], "CanFilterMask26" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[27], "CanFilterMask27" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[28], "CanFilterMask28" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[29], "CanFilterMask29" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[30], "CanFilterMask30" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[31], "CanFilterMask31" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[32], "CanFilterMask32" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[33], "CanFilterMask33" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[34], "CanFilterMask34" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[35], "CanFilterMask35" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[36], "CanFilterMask36" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[37], "CanFilterMask37" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[38], "CanFilterMask38" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[39], "CanFilterMask39" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[40], "CanFilterMask40" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[41], "CanFilterMask41" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[42], "CanFilterMask42" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[43], "CanFilterMask43" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[44], "CanFilterMask44" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[45], "CanFilterMask45" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[46], "CanFilterMask46" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[47], "CanFilterMask47" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[48], "CanFilterMask48" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[49], "CanFilterMask49" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[50], "CanFilterMask50" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[51], "CanFilterMask51" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[52], "CanFilterMask52" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[53], "CanFilterMask53" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[54], "CanFilterMask54" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[55], "CanFilterMask55" */
    (Can_IdType)0x1fffff4fU,
    /* FilterMasks_PC[56], "CanFilterMask56" */
    (Can_IdType)0x1fffffffU,
    /* FilterMasks_PC[57], "CanFilterMask57" */
    (Can_IdType)0x7ffU,
    /* FilterMasks_PC[58], "CanFilterMask58" */
    (Can_IdType)0x7ffU,
    /* FilterMasks_PC[59], "CanFilterMask" */
    (Can_IdType)0x7ffU
};

/*==================================================================================================*/
/**
* @brief          Configuration of FlexCan controller
* @details        Configuration of FlexCan controller
*
*/
static CONST(Can_ControllerBaudrateConfigType, CAN_CONST) ControllerBaudrateConfigs_PC_0[CAN_CFGSET0_MAX_BAUDRATE_FC_B_0] = 
{
    /*
    =================================================
    Clock Size = 4.0E7 Hz  - Clock from MCU.Clock Prescaler = 8 (1..256)
    CanBitRate = 500 Kbps (1bps..1Mbps)
    Number CANTimeQuantas per bit = 10 (8..25)
    CTRL Register Fields:
    PSEG1 =3(0..7)
    PSEG2 =5(1..7)
    PROPSEG =1(0..7)
    RJW =3(0..3)
    =================================================
    */
    /* Configuration for CanController ID0 == FlexCAN_B */
    {
        /* ===== Control Register - CTRL ===== */
        /* CTRL[PRESDIV] - Clock Prescaler */
        (uint32)(
                  ((uint32)7 << FLEXCAN_CTRL_PRESDIV_SHIFT_U8) |
                  /* CTRL[RJW] - Resynchronization Jump Width */
                  ((uint32)2<< FLEXCAN_CTRL_RJW_SHIFT_U8) |
                  /* CTRL[PSEG1] - Segment 1 */
                  ((uint32)2U << FLEXCAN_CTRL_PSEG1_SHIFT_U8) |
                  /* CTRL[PSEG2] - Segment 2 */
                  ((uint32)4U << FLEXCAN_CTRL_PSEG2_SHIFT_U8) |
                  /* CTRL[PROPSEG] - Propagation segment */
                  (uint32)0
                ),
        
        (uint8)12U, /* CTRL2[TASD] Tx Arbitration Start Delay */
        
        #if (CAN_DUAL_CLOCK_MODE == STD_ON)
        0U,
        #endif /* CAN_DUAL_CLOCK_MODE == STD_ON */
        
        (uint16)500 ,  /* 500kbps baud rate */
        
        #if (CAN_FD_MODE_ENABLE == STD_ON)
        {
            /* False */
            /**/
            (uint32)0U, /*CAN FD Deactivated*/
            (uint32)0U,
            (uint32)0U,
            (uint32)0U, /*TRCV DELAY*/
            (uint32)0U /* The node dos not exist, BRS deactivated */
            #if ( (CAN_CONTROLLER_FD_ISO_CANFD == STD_ON) || (CAN_CONTROLLER_FD_PREXCEN == STD_ON) || (CAN_CONTROLLER_FD_EDFLTDIS == STD_ON))
            ,(uint32)0U
            #endif /* ( (CAN_CONTROLLER_FD_ISO_CANFD == STD_ON) || (CAN_CONTROLLER_FD_PREXCEN == STD_ON) || (CAN_CONTROLLER_FD_EDFLTDIS == STD_ON)) */
        },
        #endif 
        
        #if (CAN_CBT_ENABLE == STD_ON)
        {
            (uint32)0U,
            (uint32)0U,
            (uint32)0U
        },
        #endif
        
        #if (CAN_SET_BAUDRATE_API == STD_ON)
        (uint16)0
        #endif
    }
};

static CONST(Can_ControllerBaudrateConfigType, CAN_CONST) ControllerBaudrateConfigs_PC_1[CAN_CFGSET0_MAX_BAUDRATE_FC_D_1] = 
{
    /*
    =================================================
    Clock Size = 4.0E7 Hz  - Clock from MCU.Clock Prescaler = 8 (1..256)
    CanBitRate = 500 Kbps (1bps..1Mbps)
    Number CANTimeQuantas per bit = 10 (8..25)
    CTRL Register Fields:
    PSEG1 =5(0..7)
    PSEG2 =3(1..7)
    PROPSEG =1(0..7)
    RJW =3(0..3)
    =================================================
    */
    /* Configuration for CanController ID1 == FlexCAN_D */
    {
        /* ===== Control Register - CTRL ===== */
        /* CTRL[PRESDIV] - Clock Prescaler */
        (uint32)(
                  ((uint32)7 << FLEXCAN_CTRL_PRESDIV_SHIFT_U8) |
                  /* CTRL[RJW] - Resynchronization Jump Width */
                  ((uint32)2<< FLEXCAN_CTRL_RJW_SHIFT_U8) |
                  /* CTRL[PSEG1] - Segment 1 */
                  ((uint32)4U << FLEXCAN_CTRL_PSEG1_SHIFT_U8) |
                  /* CTRL[PSEG2] - Segment 2 */
                  ((uint32)2U << FLEXCAN_CTRL_PSEG2_SHIFT_U8) |
                  /* CTRL[PROPSEG] - Propagation segment */
                  (uint32)0
                ),
        
        (uint8)12U, /* CTRL2[TASD] Tx Arbitration Start Delay */
        
        #if (CAN_DUAL_CLOCK_MODE == STD_ON)
        0U,
        #endif /* CAN_DUAL_CLOCK_MODE == STD_ON */
        
        (uint16)500 ,  /* 500kbps baud rate */
        
        #if (CAN_FD_MODE_ENABLE == STD_ON)
        {
            /* False */
            /**/
            (uint32)0U, /*CAN FD Deactivated*/
            (uint32)0U,
            (uint32)0U,
            (uint32)0U, /*TRCV DELAY*/
            (uint32)0U /* The node dos not exist, BRS deactivated */
            #if ( (CAN_CONTROLLER_FD_ISO_CANFD == STD_ON) || (CAN_CONTROLLER_FD_PREXCEN == STD_ON) || (CAN_CONTROLLER_FD_EDFLTDIS == STD_ON))
            ,(uint32)0U
            #endif /* ( (CAN_CONTROLLER_FD_ISO_CANFD == STD_ON) || (CAN_CONTROLLER_FD_PREXCEN == STD_ON) || (CAN_CONTROLLER_FD_EDFLTDIS == STD_ON)) */
        },
        #endif 
        
        #if (CAN_CBT_ENABLE == STD_ON)
        {
            (uint32)0U,
            (uint32)0U,
            (uint32)0U
        },
        #endif
        
        #if (CAN_SET_BAUDRATE_API == STD_ON)
        (uint16)0
        #endif
    }
};

/*==================================================================================================*/
/**
* @brief          Configuration of FlexCan controller
* @details        Configuration of FlexCan controller
*
*/
/* Compiler_Warning: this warning due to behavior of compiler depend on configs. */ 
static CONST(CanStatic_ControllerBaudrateConfigType, CAN_CONST) StaticControllerBaudrateCfgSet_PC_0[CAN_CFGSET0_MAX_BAUDRATE_FC_B_0] = 
{
    /* Configuration for CanController ID0 == FlexCAN_B */
    {
        /* ===== Control Register - CTRL ===== */
        (uint32)(
                  ((uint32)0<< FLEXCAN_CTRL_LPB_SHIFT_U8) | /* CTRL[LPB] - Loop-back mode */
                  ((uint32)0<< FLEXCAN_CTRL_SMP_SHIFT_U8) | /* CTRL[SMP] - Sampling mode */
                  ((uint32)1<< FLEXCAN_CTRL_BOFFREC_SHIFT_U8) | /* CTRL[BOFF_REC] - Bus off recovery */
                  ((uint32)1<< FLEXCAN_CTRL_LBUF_SHIFT_U8) | /* CTRL[LBUF] - Lowest Buffer Transmitted First */
                  ((uint32)0<< FLEXCAN_CTRL_LOM_SHIFT_U8) /* CTRL[LOM] - Listen only mode */
                )
        
        #if (CAN_DUAL_CLOCK_MODE == STD_ON)
        ,0U
        #endif /* CAN_DUAL_CLOCK_MODE == STD_ON */
    }
};

/* Compiler_Warning: this warning due to behavior of compiler depend on configs. */ 
static CONST(CanStatic_ControllerBaudrateConfigType, CAN_CONST) StaticControllerBaudrateCfgSet_PC_1[CAN_CFGSET0_MAX_BAUDRATE_FC_D_1] = 
{
    /* Configuration for CanController ID1 == FlexCAN_D */
    {
        /* ===== Control Register - CTRL ===== */
        (uint32)(
                  ((uint32)0<< FLEXCAN_CTRL_LPB_SHIFT_U8) | /* CTRL[LPB] - Loop-back mode */
                  ((uint32)0<< FLEXCAN_CTRL_SMP_SHIFT_U8) | /* CTRL[SMP] - Sampling mode */
                  ((uint32)1<< FLEXCAN_CTRL_BOFFREC_SHIFT_U8) | /* CTRL[BOFF_REC] - Bus off recovery */
                  ((uint32)1<< FLEXCAN_CTRL_LBUF_SHIFT_U8) | /* CTRL[LBUF] - Lowest Buffer Transmitted First */
                  ((uint32)0<< FLEXCAN_CTRL_LOM_SHIFT_U8) /* CTRL[LOM] - Listen only mode */
                )
        
        #if (CAN_DUAL_CLOCK_MODE == STD_ON)
        ,0U
        #endif /* CAN_DUAL_CLOCK_MODE == STD_ON */
    }
};


/*==================================================================================================*/
/**
* @brief          Information about message buffers
* @details        (CAN100)Several TX hardware objects with unique HTHs may be configured. The CanIf module provides the HTH as parameter of the TX request. See Figure 7-2 for a possible configuration.
*
*/
static CONST(Can_MBConfigObjectType, CAN_CONST) MessageBufferConfigs_PC[CAN_MAXMBCOUNT_0] =
{
    /* CanHardwareObject Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0xff3101U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x0U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0080U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)0U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject1 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff7110U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x1U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0090U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)1U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject2 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6a10U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x2U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x00a0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)2U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject3 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6aa0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x3U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x00b0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)3U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject4 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6ab0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x4U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x00c0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)4U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject5 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6ac0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x5U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x00d0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)5U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject6 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6b10U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x6U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x00e0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)6U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject7 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6ba0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x7U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x00f0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)7U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject8 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6bb0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x8U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0100U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)8U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject9 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6bc0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x9U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0110U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)9U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject10 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6c10U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0xaU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0120U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)10U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject11 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6ca0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0xbU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0130U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)11U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject12 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6cb0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0xcU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0140U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)12U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject13 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6cc0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0xdU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0150U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)13U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject14 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6110U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0xeU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0160U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)14U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject15 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff61a0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0xfU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0170U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)15U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject16 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff61b0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x10U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0180U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)16U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject17 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff61c0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x11U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0190U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)17U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject18 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6210U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x12U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x01a0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)18U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject19 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff62a0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x13U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x01b0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)19U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject20 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff62b0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x14U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x01c0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)20U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject21 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff62c0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x15U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x01d0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)21U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject22 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6310U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x16U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x01e0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)22U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject23 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff63a0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x17U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x01f0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)23U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject24 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff63b0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x18U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0200U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)24U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject25 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff63c0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x19U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0210U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)25U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject26 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff64c0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x1aU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0220U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)26U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject27 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6510U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x1bU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0230U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)27U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject28 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6610U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x1cU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0240U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)28U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject29 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff65b0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x1dU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0250U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)29U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject30 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff65a0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x1eU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0260U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)30U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject31 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff66b0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x1fU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0270U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)31U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject32 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff65c0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x20U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0280U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)32U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject33 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff64b0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x21U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0290U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)33U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject34 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6710U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x22U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x02a0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)34U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject35 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff67a0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x23U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x02b0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)35U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject36 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff66c0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x24U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x02c0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)36U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject37 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff68a0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x25U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x02d0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)37U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject38 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff67c0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x26U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x02e0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)38U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject39 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6810U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x27U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x02f0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)39U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject40 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff68b0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x28U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0300U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)40U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject41 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff6910U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x29U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0310U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)41U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject42 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff69a0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x2aU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0320U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)42U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject43 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff68c0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x2bU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0330U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)43U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject44 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff69b0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x2cU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0340U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)44U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject45 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff1110U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x2dU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0350U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)45U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject46 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff69c0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x2eU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0360U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)46U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject47 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff1120U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x2fU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0370U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)47U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject48 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff67b0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x30U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0380U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)48U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject49 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff3120U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x31U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0390U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)49U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject50 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff2110U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x32U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x03a0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)50U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject51 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff3110U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x33U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x03b0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)51U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject52 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff2120U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x34U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x03c0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)52U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject53 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0xcffa7b4U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x35U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x03d0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)53U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject54 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff66a0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x36U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x03e0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)54U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject55 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)55U,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x18ff64a0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x37U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x03f0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)55U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject56_UDS_Func_Rx Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_STANDARD,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x7dfU,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x38U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0400U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)56U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject56_UDS_Phys_Rx Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)CAN_MAXMASKCOUNT,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_STANDARD,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_RECEIVE,
        /* MessageId */
        (Can_IdType)0x700U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x39U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0410U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)57U    /* The index of MB in message buffer memory */
    },

    /* CanIfBufferCfg0 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)0U,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_TRANSMIT,
        /* MessageId */
        (Can_IdType)0x0U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x3aU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0420U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)58U    /* The index of MB in message buffer memory */
    },

    /* CanIfBufferCfg1 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)0U,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_TRANSMIT,
        /* MessageId */
        (Can_IdType)0x1U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x3bU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0430U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)59U    /* The index of MB in message buffer memory */
    },

    /* CanIfBufferCfg2 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)0U,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_TRANSMIT,
        /* MessageId */
        (Can_IdType)0x2U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x3cU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0440U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)60U    /* The index of MB in message buffer memory */
    },

    /* CanIfBufferCfg3 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)0U,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_TRANSMIT,
        /* MessageId */
        (Can_IdType)0x3U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x3dU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0450U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)61U    /* The index of MB in message buffer memory */
    },

    /* CanIfBufferCfg4 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)0U,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_TRANSMIT,
        /* MessageId */
        (Can_IdType)0x4U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x3eU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0460U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)62U    /* The index of MB in message buffer memory */
    },

    /* CanIfBufferCfg5 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)0U,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_TRANSMIT,
        /* MessageId */
        (Can_IdType)0x5U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x3fU,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0470U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)63U    /* The index of MB in message buffer memory */
    },

    /* CanIfBufferCfg6 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)0U,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_TRANSMIT,
        /* MessageId */
        (Can_IdType)0x6U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x40U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0480U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)64U    /* The index of MB in message buffer memory */
    },

    /* CanIfBufferCfg7 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)0U,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_EXTENDED,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_TRANSMIT,
        /* MessageId */
        (Can_IdType)0x7U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x41U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0490U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)65U    /* The index of MB in message buffer memory */
    },

    /* CanIfBufferCfg8 Message Buffer of Can Controller ID = 0U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)0U,
        /* ControllerId  - based on the order from CanController list */
        (uint8)0U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_STANDARD,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_TRANSMIT,
        /* MessageId */
        (Can_IdType)0x42U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x42U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x04a0U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)66U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject56_Tx_CAND Message Buffer of Can Controller ID = 1U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)0U,
        /* ControllerId  - based on the order from CanController list */
        (uint8)1U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_STANDARD,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_TRANSMIT,
        /* MessageId */
        (Can_IdType)0x40U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x43U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0080U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)0U    /* The index of MB in message buffer memory */
    },

    /* CanHardwareObject56_Tx2_CAND Message Buffer of Can Controller ID = 1U*/
    {
        /* uIdMaskIndex */
        (Can_HwHandleType)0U,
        /* ControllerId  - based on the order from CanController list */
        (uint8)1U,
        /* ID type: EXTENDED, STANDARD, MIXED */
        (CanIdType)CAN_STANDARD,
        /* Receive/Transmit MB configuration */
        (Can_ObjType)CAN_TRANSMIT,
        /* MessageId */
        (Can_IdType)0x65U,
        /* Local priority bits used for arbitration */
        (uint8)0x0U,
        /* Hardware Object ID */
        (Can_HwHandleType)0x44U,
        /* Read/Write period reference used when polling mode is selected for the controller */
        (uint8)0U,/* HOH reference is from CanMainFunctionRWPeriods */
        
        
        
        (uint16)0x0090U,       /* Address of Message Buffer  */
        (uint8)8U,    /* Payload lenth of Message Buffer */
        (uint8)1U    /* The index of MB in message buffer memory */
    }
};

/*==================================================================================================*/
/**
* @brief          Description of individual FlexCan controllers on chip
* @details        Description of individual FlexCan controllers on chip
*
*/
static CONST(Can_ControlerDescriptorType, CAN_CONST) ControlerDescriptors_PC[CAN_MAXCONTROLLERCOUNT_0] =
{
    /* ControlerDescriptor of CanController_0*/
    {
        (uint8)67U, /* No. of Message Buffers for current controller - u8MaxMBCount */
        (uint8)1U, /* No. of BaudRate configured for current controller - u8MaxBaudRateCount */
        (uint8)0U, /* Default BaudRate configured for current controller */
        ControllerBaudrateConfigs_PC_0, /* pControllerBaudrateConfigsPtr */
        #if (CAN_RXFIFO_ENABLE == STD_ON)
        (uint32)0U,/*Rx Fifo Global mask value*/
        (uint8)0U,/* Number of MBs used by Rx Fifo */
        NULL_PTR, /* Pointer to RxFifo Overflow notification function. */
        NULL_PTR, /* Pointer to RxFifo Warning notification function. */
        #endif /* (CAN_RXFIFO_ENABLE == STD_ON) */
        #if (CAN_FD_MODE_ENABLE == STD_ON)
        /* Message Buffer Data Size for three RAM regions */
        (uint32)(
                  0U
                ),
        #endif
        /* ===== Controller Options ===== */
        (uint32)(
                  /* RX Fifo Disabled */ 
                  /* Error interrupt */ 
                  0U
                )
    },/* ControlerDescriptors CanController_0 end */

    /* ControlerDescriptor of CanController_1*/
    {
        (uint8)2U, /* No. of Message Buffers for current controller - u8MaxMBCount */
        (uint8)1U, /* No. of BaudRate configured for current controller - u8MaxBaudRateCount */
        (uint8)0U, /* Default BaudRate configured for current controller */
        ControllerBaudrateConfigs_PC_1, /* pControllerBaudrateConfigsPtr */
        #if (CAN_RXFIFO_ENABLE == STD_ON)
        (uint32)0U,/*Rx Fifo Global mask value*/
        (uint8)0U,/* Number of MBs used by Rx Fifo */
        NULL_PTR, /* Pointer to RxFifo Overflow notification function. */
        NULL_PTR, /* Pointer to RxFifo Warning notification function. */
        #endif /* (CAN_RXFIFO_ENABLE == STD_ON) */
        #if (CAN_FD_MODE_ENABLE == STD_ON)
        /* Message Buffer Data Size for three RAM regions */
        (uint32)(
                  0U
                ),
        #endif
        /* ===== Controller Options ===== */
        (uint32)(
                  /* RX Fifo Disabled */ 
                  /* Error interrupt */ 
                  0U
                )
    }
};

/*==================================================================================================*/
/**
* @brief          Description of individual FlexCan controllers on chip
* @details        Description of individual FlexCan controllers on chip
*
*/
static CONST(CanStatic_ControlerDescriptorType, CAN_CONST) StaticControlerDescriptors_PC[CAN_MAXCONTROLLERCOUNT_0] =
{
    /* ControlerDescriptor of CanController_0 */
    {
        (uint8)FLEXCAN_B_OFFSET, /* Can Controller Offset on chip: Can_A=offset 0, Can_B=offset 1, .. -u8ControllerOffset */
        StaticControllerBaudrateCfgSet_PC_0, /* pControllerBaudrateConfigsPtr - pControllerBaudrateConfigsPtr */
        
        #if ((CAN_ERROR_NOTIFICATION_ENABLE == STD_ON) && (CPU_BYTE_ORDER==HIGH_BYTE_FIRST))
        NULL_PTR, /* Pointer to Error interrupt notification function (ESR[ERR_INT]). - Can_ErrorNotification */
        #elif(CPU_BYTE_ORDER==LOW_BYTE_FIRST) /* (CAN_ERROR_NOTIFICATION_ENABLE == STD_ON) */
        NULL_PTR, /* Pointer to Error interrupt notification function (ESR[ERR_INT]). */
        #endif
        
        #if (CAN_MIX_MB_SUPPORT == STD_ON)
        /* Maximum MBs supported for this controller. - u8NumberOfMB */
        (uint8) 96U,
        #endif /* (CAN_MIX_MB_SUPPORT == STD_ON) */
        
        /* ===== Controller Options ===== */
        (uint32)(
                  CAN_CONTROLLERCONFIG_RXPOL_EN_U32 | /* RxPoll Enabled */
                  CAN_CONTROLLERCONFIG_TXPOL_EN_U32 | /* TxPoll Enabled */
                  CAN_CONTROLLERCONFIG_BOPOL_EN_U32 /* BusOffPoll Enabled */
                )
    },/* ControlerDescriptors CanController_0 end */

    /* ControlerDescriptor of CanController_1 */
    {
        (uint8)FLEXCAN_D_OFFSET, /* Can Controller Offset on chip: Can_A=offset 0, Can_B=offset 1, .. -u8ControllerOffset */
        StaticControllerBaudrateCfgSet_PC_1, /* pControllerBaudrateConfigsPtr - pControllerBaudrateConfigsPtr */
        
        #if ((CAN_ERROR_NOTIFICATION_ENABLE == STD_ON) && (CPU_BYTE_ORDER==HIGH_BYTE_FIRST))
        NULL_PTR, /* Pointer to Error interrupt notification function (ESR[ERR_INT]). - Can_ErrorNotification */
        #elif(CPU_BYTE_ORDER==LOW_BYTE_FIRST) /* (CAN_ERROR_NOTIFICATION_ENABLE == STD_ON) */
        NULL_PTR, /* Pointer to Error interrupt notification function (ESR[ERR_INT]). */
        #endif
        
        #if (CAN_MIX_MB_SUPPORT == STD_ON)
        /* Maximum MBs supported for this controller. - u8NumberOfMB */
        (uint8) 64U,
        #endif /* (CAN_MIX_MB_SUPPORT == STD_ON) */
        
        /* ===== Controller Options ===== */
        (uint32)(
                  CAN_CONTROLLERCONFIG_RXPOL_EN_U32 | /* RxPoll Enabled */
                  CAN_CONTROLLERCONFIG_TXPOL_EN_U32 | /* TxPoll Enabled */
                  CAN_CONTROLLERCONFIG_BOPOL_EN_U32 /* BusOffPoll Enabled */
                )
    }
};

/*==================================================================================================*/
/**
* @brief          Top level structure containing all Can driver configurations
* @details        Top level structure containing all Can driver configurations
*
*/
/* @violates @ref Can_Cfg_c_REF_4 Violates MISRA 2004 Required Rule 8.10*/
CONST(Can_ConfigType, CAN_CONST) Can_ConfigSet_PC =
{
    Can_FilterMasks_PC, /*  - pFilterMasks */
    /* MessageBufferConfigContainer - MBConfigContainer */
    {
        MessageBufferConfigs_PC, /* pMessageBufferConfigsPtr */
        (Can_HwHandleType)69U, /* uMessageBufferConfigCount */
    },
    
    ControlerDescriptors_PC, /* FlexCAN controller description */
    
    #if (CAN_RXFIFO_ENABLE == STD_ON)
    /* Can_RxFiFoTableIdConfigType */
    NULL_PTR, /* Rx fifo disabled */
    #endif  /* (CAN_RXFIFO_ENABLE == STD_ON) */
    
    (uint32)69U, /*Maximum Object IDs configured - u32CanMaxObjectId*/
    /* The index of the first HTH configured */
    (Can_HwHandleType)58U,
    /*Controller ID mapping - u8ControllerIdMapping*/
    {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 1U, 1U },
    
    /*Can Object Type mapping - eObjectTypeMapping*/
    {
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_RECEIVE,
        (Can_ObjType)CAN_TRANSMIT,
        (Can_ObjType)CAN_TRANSMIT,
        (Can_ObjType)CAN_TRANSMIT,
        (Can_ObjType)CAN_TRANSMIT,
        (Can_ObjType)CAN_TRANSMIT,
        (Can_ObjType)CAN_TRANSMIT,
        (Can_ObjType)CAN_TRANSMIT,
        (Can_ObjType)CAN_TRANSMIT,
        (Can_ObjType)CAN_TRANSMIT,
        (Can_ObjType)CAN_TRANSMIT,
        (Can_ObjType)CAN_TRANSMIT
    }
};

/*==================================================================================================*/
/**
* @brief          Top level structure containing all Can driver configurations
* @details        Top level structure containing all Can driver configurations
*
*/
/* @violates @ref Can_Cfg_c_REF_4 Violates MISRA 2004 Required Rule 8.10*/
CONST(CanStatic_ConfigType, CAN_CONST) CanStatic_ConfigSet =
{
    /* Number of CAN controllers configured -u8ControllersConfigured*/
    (uint8) 2U,
    /* FlexCAN controller description - ControlerDescriptors*/
    StaticControlerDescriptors_PC
};
/*==================================================================================================
*                                      GLOBAL CONSTANTS
==================================================================================================*/

/*==================================================================================================
*                                      GLOBAL VARIABLES
==================================================================================================*/

/*==================================================================================================
*                                   LOCAL FUNCTION PROTOTYPES
==================================================================================================*/


/*==================================================================================================
*                                       LOCAL FUNCTIONS
==================================================================================================*/

/*==================================================================================================
*                                       GLOBAL FUNCTIONS
==================================================================================================*/

/*
@file Can_Cfg.c
@note Violates MISRA 2004 Advisory Rule 19.1, #include preceded by non preproc directives. - See @ref Can_Cfg_c_REF_1
@note Violates MISRA 2004 Required Rule 19.15, Repeated include file MemMap.h - See @ref Can_Cfg_c_REF_2
*/
#define CAN_STOP_SEC_CONFIG_DATA_UNSPECIFIED
/* @violates @ref Can_Cfg_c_REF_2 MISRA 2004 Rule 19.15, Repeated include file MemMap.h  */
/* @violates @ref Can_Cfg_c_REF_1 MISRA 2004  Rule 19.1, #include preceded by non preproc directives.*/
#include "MemMap.h"

#endif /*CAN_PRECOMPILE_SUPPORT == STD_ON*/

#ifdef __cplusplus
}
#endif

/** @} */
