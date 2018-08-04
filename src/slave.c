/******************************************************************************
 *
 *                    Mentor Graphics Corporation
 *                        All rights reserved
 *
 ******************************************************************************
 *
 * File Name:    master.c
 *
 * Description: This file contains a master application for the Os
 *
 *****************************************************************************/

#include "Os.h"

/* Platform specific part */
#include "TargetPlatform.h"
#include "double.h"

/* Schedule table of the periodic task */
#define SCHEDULE_TABLE_LENGHT   (OSMAXALLOWEDVALUE_SlaveCounter100 + OSTICKSPERBASE_SlaveCounter100)

/* global variable
 * Binded to the SlaveBlinkerSettings resource */
static volatile Blinker_s   slaveBlinkerStatus;

/*
 * ISR occurred when the button is pushed
 */
ISR(SlaveButton)
{
    /* PRQA S 0303 1 */ /* Register assignment */
    HANDLE_BUTTON_ISR();                    /* hardware specific handling */
    /* notify the task */
    if(E_OK != SetEvent(SlaveController,SlaveButtonIsPressed)) { errorHandler(); }

}
/*****************************************************************************/

TASK(SlaveController)
{
    /* Initialize the global variable */
    /* this call not strictly required due the SlaveBlinker task is not running */
    if(E_OK != GetResource( SlaveBlinkerSettings )) { errorHandler(); }
#ifndef NO_EXTERNAL_BUTTON_AVAILABLE	
    slaveBlinkerStatus.state = OFF;
    slaveBlinkerStatus.timeout = 0;
#else
    slaveBlinkerStatus.state = FAST;
    slaveBlinkerStatus.timeout = BLINKING_FAST_TIMEOUT;
#endif
    if(E_OK != ReleaseResource( SlaveBlinkerSettings )) { errorHandler(); }

    /* Cross core action */
    if(E_OK != ActivateTask(MasterFastBlinker)) { errorHandler(); }

    /* Wait spinlock */

    /* Cross core action */
    /* start the schedule table */
    if(E_OK != StartScheduleTableAbs(MasterBlinkerScheduleTable,0)) { errorHandler(); }

    /* enter into the never ending loop */
    while(1)
    {
        if(E_OK != ClearEvent(SlaveButtonIsPressed)) { errorHandler(); } /* clear the event before wait */
        if(E_OK != WaitEvent(SlaveButtonIsPressed)) { errorHandler(); } /* wait for the button */

        /* button is pushed, lock the resource */
        if(E_OK != GetResource( SlaveBlinkerSettings )) { errorHandler(); }
        switch(slaveBlinkerStatus.state)
        {
            case OFF:
            {
                slaveBlinkerStatus.state = BLINKING;
            }break;
            case BLINKING:
            {
                slaveBlinkerStatus.state = FAST;
                slaveBlinkerStatus.timeout = BLINKING_FAST_TIMEOUT;
            }break;
            case FAST:
            {
                slaveBlinkerStatus.timeout = BLINKING_FAST_TIMEOUT;
            }break;

            default: /* problem detected */
            {
                errorHandler();
            }break;
        }
        if(E_OK != ReleaseResource(SlaveBlinkerSettings)) { errorHandler(); }

    } /* end of while(1) */
}
/*****************************************************************************/

/*
 * Triggered by expiry point of the schedule table
 */
TASK(SlaveBlinker)
{
    if(E_OK != GetResource( SlaveBlinkerSettings )) { errorHandler(); }
    switch(slaveBlinkerStatus.state)
    {
        case OFF:
        {
            /* do nothing */
        }break;
        case BLINKING:
        {
            /* Toggle the led */
            /* PRQA S 0303 1 */ /* Register assignment */
            TOOGLE_LED();
        }break;
        case FAST:
        {
            if(slaveBlinkerStatus.timeout > 0)
            {
                /* PRQA S 0303 1 */ /* Register assignment */
                TOOGLE_LED();
                /* Set an alarm to clear the LED*/
                /* The alam time is the half of the schedule table length */
                /* Indirect cross core action (alarm of this core activates a task on other core) */
                if(E_OK != SetAbsAlarm(SlaveBlinkerAlarm,SCHEDULE_TABLE_LENGHT/2,0)) { errorHandler(); }
                slaveBlinkerStatus.timeout-- ;
            }
            else
            {
                slaveBlinkerStatus.state = BLINKING;
            }
        }break;
        default:
            ShutdownOS(0);
            break;
    }
    if(E_OK != ReleaseResource( SlaveBlinkerSettings )) { errorHandler(); }
    if(E_OK != TerminateTask()) { errorHandler(); }
}

/*****************************************************************************/

/*
 * Triggered by Alarm
 * Clears the LED
 */
TASK(SlaveFastBlinker)
{
    /* PRQA S 0303 1 */ /* Register assignment */
    TOOGLE_LED();
    if(E_OK != TerminateTask()) { errorHandler(); }
}

FUNC (void, AUTOMATIC) StartupHook_SlaveCoreApp(void)
{
    HardwareInitSlave();
}

FUNC (void, AUTOMATIC) ShutdownHook_SlaveCoreApp(VAR(StatusType,AUTOMATIC) Fatalerror)
{

}

/*****************************************************************************/
/*****************************  END OF FILE **********************************/
/*****************************************************************************/
