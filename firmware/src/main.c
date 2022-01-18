// *****************************************************************************
// *****************************************************************************
// Section: Included Files
// *****************************************************************************
// *****************************************************************************

#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include <stdlib.h>                     // Defines EXIT_FAILURE
#include <string.h>
#include "definitions.h"                // SYS function prototypes
#include "rgbLed.h"

#include "audio.h"


#include "rtosTask.h"
// *****************************************************************************
// *****************************************************************************
// Section: Main Entry Point
// *****************************************************************************
// *****************************************************************************


int main ( void ){
    SYS_Initialize ( NULL );


    //WDT_Enable();
    SERCOM0_USART_Write("....toy-train v-2.1 . ..\n", 25);
    
    initRGBPeripheral();
    initMotorPeripheral();
    initAudioPeripheral();
    
    initBleTask(BLE_TASK_PRIORITY);
    initPhotoTask(PHOTO_SENSOR_TASK_PRIORITY);
    initHallSensorTask(HALL_SENSOR_TASK_PRIORITY);
    
    vTaskStartScheduler();

    while ( true ) {
        
    }
    return ( EXIT_FAILURE );
}


/*******************************************************************************
 End of File
*/
