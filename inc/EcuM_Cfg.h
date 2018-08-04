/*============================================================================*/
/* Project      = AUTOSAR Renesas X1x MCAL Components                         */
/* Module       = EcuM_Cfg.h                                                  */
/*============================================================================*/
/*                                  COPYRIGHT                                 */
/*============================================================================*/
/* Copyright(c) 2013 Renesas Electronics Corporation                          */
/*============================================================================*/
/* Purpose:                                                                   */
/* Header file information for application.                                   */
/*                                                                            */
/*============================================================================*/
/*                                                                            */
/* Unless otherwise agreed upon in writing between your company and           */
/* Renesas Electronics Corporation the following shall apply!                 */
/*                                                                            */
/* Warranty Disclaimer                                                        */
/*                                                                            */
/* There is no warranty of any kind whatsoever granted by Renesas. Any        */
/* warranty is expressly disclaimed and excluded by Renesas, either expressed */
/* or implied, including but not limited to those for non-infringement of     */
/* intellectual property, merchantability and/or fitness for the particular   */
/* purpose.                                                                   */
/*                                                                            */
/* Renesas shall not have any obligation to maintain, service or provide bug  */
/* fixes for the supplied Product(s) and/or the Application.                  */
/*                                                                            */
/* Each User is solely responsible for determining the appropriateness of     */
/* using the Product(s) and assumes all risks associated with its exercise    */
/* of rights under this Agreement, including, but not limited to the risks    */
/* and costs of program errors, compliance with applicable laws, damage to    */
/* or loss of data, programs or equipment, and unavailability or              */
/* interruption of operations.                                                */
/*                                                                            */
/* Limitation of Liability                                                    */
/*                                                                            */
/* In no event shall Renesas be liable to the User for any incidental,        */
/* consequential, indirect, or punitive damage (including but not limited     */
/* to lost profits) regardless of whether such liability is based on breach   */
/* of contract, tort, strict liability, breach of warranties, failure of      */
/* essential purpose or otherwise and even if advised of the possibility of   */
/* such damages. Renesas shall not be liable for any services or products     */
/* provided by third party vendors, developers or consultants identified or   */
/* referred to the User by Renesas in connection with the Product(s) and/or   */
/* the Application.                                                           */
/*                                                                            */
/*============================================================================*/
/* Environment:                                                               */
/*              Devices:        X1x                                           */
/*============================================================================*/

/*******************************************************************************
**                      Revision Control History                              **
*******************************************************************************/
/*
 * V1.0.0:  21-Mar-2013    : Initial Version
 *
 * V1.0.1:  07-Aug-2013    : As per CR 225, Copyright and Device name are
 *                           updated as part of merge activity.
 *
 * V1.0.2:  15-Oct-2013    : As per CR 264, macro
 *                           'EcuMConf_EcuMWakeupSource_EcuMWakeupSource0' is
 *                           added.
 */
/******************************************************************************/
/*******************************************************************************
**                         Input File                                         **
*******************************************************************************/

/*******************************************************************************
**                              Macros                                        **
*******************************************************************************/
#define  EcuMConf_EcuMWakeupSource_CanTrcv_WAKEUP_SOURCE (EcuM_WakeupSourceType)32ul
#define  EcuMConf_EcuMWakeupSource_EcuMWakeupSource0 \
                                                    (EcuM_WakeupSourceType)32ul
#define  EcuMConf_EcuMWakeupSource_EcuMWakeupSource_LinCluster1 \
                                                    (EcuM_WakeupSourceType)32ul
#define  EcuMConf_EcuMWakeupSource_EcuMWakeupSource_1 \
                                                    (EcuM_WakeupSourceType)32ul
#define  EcuMConf_EcuMWakeupSource_EcuMWakeupSource_2 \
                                                    (EcuM_WakeupSourceType)64ul
#define  EcuMConf_EcuMWakeupSource_EcuMWakeupSource_3 \
                                                   (EcuM_WakeupSourceType)128ul
#define  EcuMConf_EcuMWakeupSource_EcuMWakeupSource_4 \
                                                   (EcuM_WakeupSourceType)256ul
#define  EcuMConf_EcuMWakeupSource_EcuMWakeupSource_5 \
                                                   (EcuM_WakeupSourceType)512ul
#define  EcuMConf_EcuMWakeupSource_EcuMWakeupSource_6 \
                                                  (EcuM_WakeupSourceType)1024ul
#define  EcuMConf_EcuMWakeupSource_EcuMWakeupSource_7 \
                                                  (EcuM_WakeupSourceType)2048ul
#define  EcuMConf_EcuMWakeupSource_EcuMWakeupSource_8 \
                                                  (EcuM_WakeupSourceType)4096ul


/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
