/******************************************************************************
 *
 *                    Mentor Graphics Corporation
 *                        All rights reserved
 *
 ******************************************************************************
 *
 * File Name:    sample.c
 *
 * Description: This file contains a sample application for the Os HW dependent
 *              parts
 *
 *****************************************************************************/
/* Configuration of xPC56xxMB with XPC564XB/C
 * MotherBoard jumper settings:
 * J11 - 0
 * J10 - 1
 * KEY_EN - 3 - ON
 * LED_EN - 1 - ON
 *
 * Master
 * button - KEY3 - KEY_EN 3 (J9 5-6) jumper ON - PE2 - EIRQ[21]
 * LED    - PE6
 *
 * Slave
 * button - KEY4 - J9 Pin 8 wire to PJ8 pin 5 - PE4 - EIRQ[9]
 * LED    - PE7
 */
#ifndef TARGETPLATFORM_H
#define TARGETPLATFORM_H

#include "MPC5746R.h"
#ifdef __ghs__
#include <ppc_ghs.h>
#else
extern int __mfspr_w( const unsigned int) __attribute__((intrinsic_function(2016, 0, "mfspr") ));
#define __MFSPR(x) __mfspr_w(x)
#endif 

extern void BoardInit(void);
extern void HardwareInitMaster(void);
extern void HardwareInitSlave(void);

#define HANDLE_BUTTON_ISR()

#define TOOGLE_LED()
#define TOOGLE_LED_0()
#define TOOGLE_LED_1()

#endif /* TARGETPLATFORM_H */
