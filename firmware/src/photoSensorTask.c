#include "photoSensorTask.h"
#include "rgbLed.h"
#include "sort.h"
#include "color.h"

#include "printStr.h"
#include <stdlib.h>
#include <stdint.h>


#define COLOR_SAMPLE_SIZE                   64
#define COLOR_DATA_SET_COUNT                6
#define COLOR_DATA_SET_ARRAY_SIZE           48

#define ADC_DMA_NOTIFICATION                0x01





TaskHandle_t xHandlerPhotoTask;
BaseType_t xHigherPriorityTaskWoken = pdFALSE;

uint32_t myAppObj = 0;
volatile uint16_t adc_result_array[COLOR_SAMPLE_SIZE];



PDColor pdColor  ;




void DmacCh0Cb(DMAC_TRANSFER_EVENT returned_evnt, uintptr_t MyDmacContext){ 
  
    if (DMAC_TRANSFER_EVENT_COMPLETE == returned_evnt){              
        xTaskNotifyFromISR( xHandlerPhotoTask, ADC_DMA_NOTIFICATION, eSetBits, &xHigherPriorityTaskWoken );
    }
    else if (DMAC_TRANSFER_EVENT_ERROR == returned_evnt){

    }
}

void PDColorWrite (uint8_t red, uint8_t green, uint8_t blue){
    red ?   pd_red_Clear()   : pd_red_Set();
    blue ?  pd_blue_Clear()  : pd_blue_Set() ;
    green ? pd_green_Clear() : pd_green_Set() ;
}

uint8_t getColor(){
    static uint8_t lastColor = 0;
    static uint8_t colorCounter = 0 ;
    uint8_t resColor = generateColor(&pdColor);
RGBsetColor(resColor);
    if(lastColor != resColor){
        colorCounter = 0 ;
        lastColor = resColor;
    }else{
        colorCounter++;
        if(colorCounter >= 3){
            colorCounter-- ;
            return resColor;
        }
    } 
    return NO_COLOR;
}
void handleColor(uint8_t PDColorRes){
    static uint8_t PDNoColorCount = 0 ;
    static uint8_t PDLastColor = 0 ;
    if(PDColorRes == NO_COLOR){
        if(PDNoColorCount++ > 50){
                PDLastColor = 0;
                PDNoColorCount = 0;
        }
    }
    else{
        PDNoColorCount = 0;
        if(PDLastColor != PDColorRes){
            //RGBsetColor(PDColorRes);
            PDLastColor = PDColorRes;
            g_CarWashWaitTime = CAR_WASH_WAIT_TIME ;
            switch(PDColorRes){
                case RED:
                    stopMotor();
//                    setHallSensorReadDelay();
                    playAudio(MUSIC_HORN);
                    break;
                case GREEN:
                    accelerateMotor();
//                    setHallNoReasultInterval();
//                    setHallSensorReadDelay();
                    playAudio(MUSIC_SAMPLE_ONE);
                    break;
                case BLUE:
                    reverseMotor();
//                    setHallNoReasultInterval();
//                    setHallSensorReadDelay();
                    playAudio(MUSIC_BELL);
                    g_DefaultMusicTimeout = 0 ;
                    break;
                case WHITE:
                    stopMotor();
//                    setHallSensorReadDelay();
                    playAudio(MUSIC_CAR_WASH);
                    break;
                case YELLOW:
                    decelerateMotor();
//                    setHallSensorReadDelay();
                    playAudio(MUSIC_SAMPLE_TWO);
                    break;
                default:
                    break;
            }
        }
        else if(PDColorRes == WHITE && g_CarWashWaitTime==0){                   
            accelerateMotor();
//            setHallNoReasultInterval();
//            setHallSensorReadDelay();
            g_CarWashWaitTime = CAR_WASH_WAIT_TIME;
        }
    }
    if(PDLastColor == BLUE  &&  getMotorDirection() == MOTOR_REVERSE){
        PDNoColorCount = 0;
        if(g_DefaultMusicTimeout >= DEFAULT_MUSIC_TIMEOUT_MS){
            g_DefaultMusicTimeout = 0 ;
            playAudio(MUSIC_BELL);
        }
    }
}
void TASK_photoSensor(void* p){
    const TickType_t xMaxBlockTime = pdMS_TO_TICKS( 1000 );
    BaseType_t xResult;
    uint32_t notificationValue ;
    uint8_t m;
    uint16_t res = 0 ;
    uint8_t samplingCycle = 0, resColor ;
    
    while(1){ 
        samplingCycle = samplingCycle > 5 ? 0 : samplingCycle ;
        switch(samplingCycle){
            case (0):
                PDColorWrite(OFF, OFF, OFF);
                break;
            case(1):
                pdColor.ambient = res ;
                PDColorWrite(OFF, ON, OFF);
                break;
            case(2):
                pdColor.green = res;
                PDColorWrite(ON, OFF, OFF);
                break;
            case(3):
                pdColor.red = res;
                PDColorWrite(OFF, OFF, ON);
                break;
            case(4):
                pdColor.blue = res;
                PDColorWrite(ON, ON, ON);
                break;
            case(5):
                pdColor.white = res;
                PDColorWrite(OFF, OFF, OFF);
                resColor = getColor();
                //RGBsetColor(resColor);
                handleColor(resColor);
                break;
            default:
                PDColorWrite(OFF, OFF, OFF);
            break;
        }
        samplingCycle++;
        
        ADC_Enable();
        DMAC_ChannelCallbackRegister(DMAC_CHANNEL_1, DmacCh0Cb, (uintptr_t)&myAppObj);
        DMAC_ChannelTransfer(DMAC_CHANNEL_1, (const void *)&ADC_REGS->ADC_RESULT, (const void *)adc_result_array, sizeof(adc_result_array));
      

        /*wait for adc sample ... notification will be sent from ISR :)  ..*/
        xResult = xTaskNotifyWait( 0x00,                  //* Don't clear bits on entry. */
                                   0xffffffff,            //* Clear all bits on exit. */
                                   &notificationValue,    //* Stores the notified value. */
                                   xMaxBlockTime );

        ADC_Disable();
        DMAC_ChannelDisable(DMAC_CHANNEL_1);
        
        if( xResult == pdPASS ){                                        // A notification was received.  
            if( ( notificationValue & ADC_DMA_NOTIFICATION ) != 0 ){    // check which bits were set.   
 //               pd_blue_Set();
                bubbleSort(adc_result_array,  COLOR_SAMPLE_SIZE);
                res = 0;
                m = (COLOR_SAMPLE_SIZE/2) -4;
                for(int i= m; i< m+8; i++){
                    res += adc_result_array[i];
                }           
                res = res >> 3;
 //               print_int(res, 4);
 //               pd_blue_Clear();                                        
            }
        }
        else{                                            //* Did not receive a notification within the expected time. */
            SERCOM0_USART_Write("ADCnFail\n", 9);
            DMAC_ChannelDisable(DMAC_CHANNEL_1);
            ADC_Disable();
            ADC_Enable();
            samplingCycle-- ;
        }             
    }
}
void initPhotoTask(uint32_t priority){
    
    xTaskCreate(TASK_photoSensor, (signed char*)"pd_task", 512, 0, priority, &xHandlerPhotoTask);

}

