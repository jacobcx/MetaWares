
/******************************************************************************/

/*******************************************************************************
**                         Input File                                         **
*******************************************************************************/
#ifndef DET_H
#define DET_H

/*******************************************************************************
**                      Include Section                                       **
*******************************************************************************/
#include "Std_Types.h"

/*******************************************************************************
**                      Version Information                                  **
*******************************************************************************/
/* AUTOSAR release version information */
#define DET_AR_RELEASE_MAJOR_VERSION    4
#define DET_AR_RELEASE_MINOR_VERSION    2
#define DET_AR_RELEASE_REVISION_VERSION 2

/* Module Software version information */
#define DET_SW_MAJOR_VERSION    4
#define DET_SW_MINOR_VERSION    0
#define DET_SW_PATCH_VERSION    0

/*******************************************************************************
**                      Global Symbols                                        **
*******************************************************************************/


/*******************************************************************************
**                      Global Data Types                                     **
*******************************************************************************/

/* Defining the structure to store the parameters of Det Report Error
   function */
typedef struct STag_tDet_Error
{ /* It will store the ModuleId of the reporting module */
  uint16 ModuleId;

  /* It will store the index based InstanceId of the reporting module */
  uint8 InstanceId;

  /* It will store the ApiId of the reporting function */
  uint8 ApiId;

  /* It will store the ErrorId of the reporting error */
  uint8 ErrorId;

}tDet_Error;


/*******************************************************************************
**                      Function Prototypes                                   **
*******************************************************************************/

extern Std_ReturnType Det_ReportError(uint16 ModuleId, uint8 InstanceId,
                                                    uint8 ApiId, uint8 ErrorId);

#endif /* DET_H */

/*******************************************************************************
**                      End of File                                           **
*******************************************************************************/
