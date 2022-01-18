#include "bleTask.h"
#include "rgbLed.h"
#include "motorControl.h"
#include "FreeRTOS.h"
#include "task.h"

#include <stdint.h>
#include <string.h>
#include <stdlib.h>

#define SERCOM2_USART_RX_DMA_NOTIFICATION   0x09
#define BLUETOOTH_COMMAND_LENGTH            10

#define BL_COMMMAND_MOTOR_TASK              '1'
#define BL_COMMMAND_SOUND_TASK              '2'
#define BL_COMMMAND_LED_TASK                '3'


typedef struct BluetoothParam{
    uint8_t red;
    uint8_t green;
    uint8_t blue;
    
    uint8_t motorControl;
    uint8_t music;
} Bluetooth;

Bluetooth bluetooth;
volatile bool writeStatus = false;
//volatile bool bluetoohSerialFlag = false;
volatile bool errorStatus = false;
uint8_t blutoothCommand[BLUETOOTH_COMMAND_LENGTH];
uint8_t blutoothSerialData[BLUETOOTH_COMMAND_LENGTH];

TaskHandle_t xBleHandle;
BaseType_t  BleTxWk= pdFALSE;   //xHigherPriorityTaskWoken

void sercom2WriteCallBack(uintptr_t context){
    writeStatus = true;
}

void sercom2ReadCallBack(uintptr_t context){
    if(SERCOM2_USART_ErrorGet() != USART_ERROR_NONE){
        errorStatus = true;
    }
    else{
        xTaskNotifyFromISR( xBleHandle, SERCOM2_USART_RX_DMA_NOTIFICATION, eSetBits, &BleTxWk );
    }
}
void initBluetoothSerial(){
    SERCOM2_USART_WriteCallbackRegister(sercom2WriteCallBack, 0);
    SERCOM2_USART_ReadCallbackRegister(sercom2ReadCallBack, 0);
//    SERCOM2_USART_Read(blutoothSerialData, sizeof(blutoothSerialData));
}

uint8_t convertToHex(char in){
  if(in >= '0' && in <= '9'){
    return in - '0';
  }
  else if(in >= 'a' && in <= 'f'){
    return 10 + in - 'a';
  }
  else return 0;
}
uint8_t checkBlutoothCommand(){
    SERCOM0_USART_Write("ble\n", 4);
    memcpy(blutoothCommand, blutoothSerialData, BLUETOOTH_COMMAND_LENGTH);
    memset(blutoothSerialData, 0, sizeof(blutoothSerialData));
    SERCOM2_USART_Read(blutoothSerialData, sizeof(blutoothSerialData));
    switch(blutoothCommand[1]){
        case(BL_COMMMAND_MOTOR_TASK):
            bluetooth.motorControl =  convertToHex(blutoothCommand[7]);
            return BL_COMMMAND_MOTOR_TASK;
            break;
        case(BL_COMMMAND_SOUND_TASK):
            bluetooth.music =  convertToHex(blutoothCommand[7]);
            return BL_COMMMAND_SOUND_TASK;
            break;
        case(BL_COMMMAND_LED_TASK):
            bluetooth.red = 16*convertToHex(blutoothCommand[2])+convertToHex(blutoothCommand[3]);
            bluetooth.green = 16*convertToHex(blutoothCommand[4])+convertToHex(blutoothCommand[5]);
            bluetooth.blue = 16*convertToHex(blutoothCommand[6])+convertToHex(blutoothCommand[7]);
            return BL_COMMMAND_LED_TASK;
            break;
        default:
            return 0;
            break;
    }
    return 0;
}


void TASK_ble(void* p){
    const TickType_t xMaxBlockTime = pdMS_TO_TICKS(1000);
    BaseType_t xResult;
    uint32_t notificationValue ;
    while(1){
       SERCOM2_USART_Read(blutoothSerialData, sizeof(blutoothSerialData));
       xResult = xTaskNotifyWait( 
            0x00,                  //* Don't clear bits on entry. */
            0xffffffff,            //* Clear all bits on exit. */
            &notificationValue,    //* Stores the notified value. */
            xMaxBlockTime );
       
        if( xResult == pdPASS ){                                        // A notification was received.  
            if( ( notificationValue & SERCOM2_USART_RX_DMA_NOTIFICATION ) != 0 ){    // check which bits were set.   
                switch(checkBlutoothCommand()){
                    case BL_COMMMAND_MOTOR_TASK:
                        switch(bluetooth.motorControl){
                            case(0):
                                stopMotor();
                                setHallSensorReadDelay();
                                break;
                            case(1):
                                accelerateMotor();
                                setHallNoReasultInterval();
                                setHallSensorReadDelay();
                                break;
                            case(2):
                                decelerateMotor();
                                setHallSensorReadDelay();
                                break;
                            case(3):
                                reverseMotor();
                                setHallNoReasultInterval();
                                setHallSensorReadDelay();
                                break;
                            default:
                                break;
                        }
                        break;
                    case BL_COMMMAND_SOUND_TASK:
                        playAudio(bluetooth.music);
                        break;
                    case BL_COMMMAND_LED_TASK:
                        RGBcolorWrite(bluetooth.red, bluetooth.green, bluetooth.blue);
                        break;
                    default:
                        break;
        
                }
            }
        }
        else{                                            //* Did not receive a notification within the expected time. */
           // prvCheckForErrors();
        }
    }
}
void initBleTask(uint32_t priority){  
    initBluetoothSerial();
    xTaskCreate(TASK_ble, (signed char*)"ble_task", 256, 0, priority, &xBleHandle);    
}
