/******************************************************************************
 *
 *                    Mentor Graphics Corporation
 *                        All rights reserved
 *
 ******************************************************************************
 *
 * File Name:    double.h
 *
 * Description: This file contains a double application types, prototypes
 *
 *****************************************************************************/

#ifndef DOUBLE_H
#define DOUBLE_H

/* LED states */
typedef enum
{
    OFF,
    BLINKING,
    FAST
}BlinkerState_e;

/* type for the blinker state */
typedef struct
{
        BlinkerState_e state;
        unsigned int   timeout;
}Blinker_s;

extern volatile uint32 StartupHookCounter[2];
extern volatile uint32 ShutdownHookCounter[2];

/* time value in counter tick to blink the LED fast */
#define BLINKING_FAST_TIMEOUT   10

int main (void);
void errorHandler (void);
void ErrorHook(StatusType Error);

#endif /* DOUBLE_H */
