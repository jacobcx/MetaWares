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
#define SCHEDULE_TABLE_LENGHT   (OSMAXALLOWEDVALUE_MasterCounter100 + OSTICKSPERBASE_MasterCounter100)

/* global variable
 * Binded to the MasterBlinkerSettings resource */
static volatile Blinker_s   masterBlinkerStatus;

/*
 * ISR occurred when the button is pushed
 */
ISR(MasterButton)
{
    /* PRQA S 0303 1 */ /* Register assignment */
    HANDLE_BUTTON_ISR();                    /* hardware specific handling */
    /* notify the task */
    if(E_OK != SetEvent(MasterController,MasterButtonIsPressed)) { errorHandler(); }

}
/*****************************************************************************/

TASK(MasterController)
{
    /* Initialize the global variable */
    /* this call not strictly required due the MasterBlinker task is not running */
    if(E_OK != GetResource( MasterBlinkerSettings )) { errorHandler(); }
#ifndef NO_EXTERNAL_BUTTON_AVAILABLE	
    masterBlinkerStatus.state = OFF;
    masterBlinkerStatus.timeout = 0;
#else
    masterBlinkerStatus.state = FAST;
    masterBlinkerStatus.timeout = BLINKING_FAST_TIMEOUT;
#endif
    if(E_OK != ReleaseResource( MasterBlinkerSettings )) { errorHandler(); }

    /* Cross core action */
    if(E_OK != ActivateTask(SlaveFastBlinker)) { errorHandler(); }

    /* Cross core action */
	/* start the schedule table */
    if(E_OK != StartScheduleTableAbs(SlaveBlinkerScheduleTable,0)) { errorHandler(); }

	/* enter into the never ending loop */
    while(1)
    {
        if(E_OK != ClearEvent(MasterButtonIsPressed)) { errorHandler(); } /* clear the event before wait */
        if(E_OK != WaitEvent(MasterButtonIsPressed)) { errorHandler(); } /* wait for the button */

        /* button is pushed, lock the resource */
        if(E_OK != GetResource( MasterBlinkerSettings )) { errorHandler(); }
        switch(masterBlinkerStatus.state)
        {
            case OFF:
            {
                masterBlinkerStatus.state = BLINKING;
            }break;
		    case BLINKING:
            {
                masterBlinkerStatus.state = FAST;
                masterBlinkerStatus.timeout = BLINKING_FAST_TIMEOUT;
            }break;
            case FAST:
            {
                masterBlinkerStatus.timeout = BLINKING_FAST_TIMEOUT;
            }break;

            default: /* problem detected */
            {
                errorHandler();
            }break;
        }
        if(E_OK != ReleaseResource(MasterBlinkerSettings)) { errorHandler(); }

    } /* end of while(1) */
}
/*****************************************************************************/

/*
 * Triggered by expiry point of the schedule table
 */
TASK(MasterBlinker)
{
    if(E_OK != GetResource( MasterBlinkerSettings )) { errorHandler(); }
    switch(masterBlinkerStatus.state)
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
            if(masterBlinkerStatus.timeout > 0)
            {
                /* PRQA S 0303 1 */ /* Register assignment */
                TOOGLE_LED();
                /* Set an alarm to clear the LED*/
                /* The alam time is the half of the schedule table length */
                /* Indirect cross core action (alarm of this core activates a task on other core) */
                if(E_OK != SetAbsAlarm(MasterBlinkerAlarm,SCHEDULE_TABLE_LENGHT/2,0)) { errorHandler(); }
                masterBlinkerStatus.timeout-- ;
            }
            else
            {
                masterBlinkerStatus.state = BLINKING;
            }
        }break;
        default:
            ShutdownOS(0);
            break;
    }
    if(E_OK != ReleaseResource( MasterBlinkerSettings )) { errorHandler(); }
    if(E_OK != TerminateTask()) { errorHandler(); }
}

/*****************************************************************************/

/*
 * Triggered by Alarm
 * Clears the LED
 */
TASK(MasterFastBlinker)
{
    /* PRQA S 0303 1 */ /* Register assignment */
    TOOGLE_LED();
    if(E_OK != TerminateTask()) { errorHandler(); }
}

FUNC (void, AUTOMATIC) StartupHook_MasterCoreApp(void)
{
    HardwareInitMaster();
}

FUNC (void, AUTOMATIC) ShutdownHook_MasterCoreApp(VAR(StatusType,AUTOMATIC) Fatalerror)
{

}

/*****************************************************************************/
/*****************************  END OF FILE **********************************/
/*****************************************************************************/
