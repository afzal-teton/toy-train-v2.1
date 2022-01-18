#include "photoSensorTask.h"
#include "rgbLed.h"
#include "sort.h"
#include "printStr.h"
#include <stdlib.h>
#include <stdint.h>


#define RED              1
#define GREEN            2
#define BLUE             3
#define WHITE            4
#define YELLOW           5
#define NO_COLOR         6

#define COLOR_SAMPLE_SIZE                   64
#define COLOR_DATA_SET_COUNT                6
#define COLOR_DATA_SET_ARRAY_SIZE           48

#define ADC_DMA_NOTIFICATION                0x01





TaskHandle_t xHandlerPhotoTask;
BaseType_t xHigherPriorityTaskWoken = pdFALSE;

uint32_t myAppObj = 0;
volatile uint16_t adc_result_array[COLOR_SAMPLE_SIZE];


typedef struct pdColors{
    uint16_t red ;         
    uint16_t green;       
    uint16_t blue;   
    uint16_t ambient;
    uint16_t white;
}PDColor ;

PDColor pdColor ;
uint8_t PDNoColorCount = 0 ;
uint8_t PDLastColor = 0 ;
uint8_t lastColor = 0 ;
uint8_t colorCount = 0 ;

void DmacCh0Cb(DMAC_TRANSFER_EVENT returned_evnt, uintptr_t MyDmacContext){ 
  
    if (DMAC_TRANSFER_EVENT_COMPLETE == returned_evnt){              
        xTaskNotifyFromISR( xHandlerPhotoTask, ADC_DMA_NOTIFICATION, eSetBits, &xHigherPriorityTaskWoken );
    }
    else if (DMAC_TRANSFER_EVENT_ERROR == returned_evnt){

    }
 }
//void swap(uint16_t *xp, uint16_t *yp) 
//{ 
//    uint16_t temp = *xp; 
//    *xp = *yp; 
//    *yp = temp; 
//} 
//
//void bubbleSort(uint16_t arr[], int n)
//{
//   int i, j;
//   bool swapped;
//   for (i = 0; i < n-1; i++)
//   {
//     swapped = false;
//     for (j = 0; j < n-i-1; j++)
//     {
//        if (arr[j] > arr[j+1])
//        {
//           swap(&arr[j], &arr[j+1]);
//           swapped = true;
//        }
//     }
//     if (swapped == false)
//        break;
//   }
//}

uint8_t generateColor(){

    pdColor.red = pdColor.ambient > pdColor.red ? 0 : (pdColor.red - pdColor.ambient);
    pdColor.green = pdColor.ambient > pdColor.green ? 0 : (pdColor.green - pdColor.ambient);
    pdColor.blue = pdColor.ambient > pdColor.blue ? 0 : (pdColor.blue - pdColor.ambient);
    pdColor.white = pdColor.ambient > pdColor.white ? 0 : (pdColor.white - pdColor.ambient);
    pdColor.red = (pdColor.red*100)/pdColor.white;
    pdColor.green = (pdColor.green*100)/pdColor.white;
    pdColor.blue = (pdColor.blue*100)/pdColor.white;

   
    if(pdColor.white < 200)
    {
        return NO_COLOR;
    }
    else if(pdColor.green < pdColor.red && 2*pdColor.blue < pdColor.red )
    {
        if(lastColor == RED)
        {
            colorCount++;
        }
        else
        {
            colorCount = 0;
        }
        if(colorCount > 5)
        {
            return RED;
        }
        lastColor = RED;
    }
    else if(2*pdColor.blue < pdColor.red && 3*pdColor.blue < pdColor.green && pdColor.white > 400)
    {        
        if(lastColor == YELLOW)
        {
            colorCount++;
        }
        else
        {
            colorCount = 0;
        }
        if(colorCount > 5)
        {
            return YELLOW;
        }
        lastColor = YELLOW;
    }
    else if(pdColor.green > 3*pdColor.red && 2*pdColor.blue < pdColor.green && pdColor.white < 400)
    {
        if(lastColor == GREEN)
        {
            colorCount++;
        }
        else
        {
            colorCount = 0;
        }
        if(colorCount > 5)
        {
            return GREEN;
        }
        lastColor = GREEN;
    }
    else if(pdColor.blue > 2*pdColor.red && 4*pdColor.blue > 2*pdColor.green)
    {
        if(lastColor == BLUE)
        {
            colorCount++;
        }
        else
        {
            colorCount = 0;
        }
        if(colorCount > 5)
        {
            return BLUE;
        }
        lastColor = BLUE;
    }
    else if(2*pdColor.blue > pdColor.red && pdColor.blue < 2*pdColor.red && pdColor.green < 4*pdColor.red && pdColor.white > 600)
    {
        if(lastColor == WHITE)
        {
            colorCount++;
        }
        else
        {
            colorCount = 0;
        }
        if(colorCount > 5)
        {
            return WHITE;
        }
        lastColor = WHITE;
    }
    return NO_COLOR;
}
void handleColor(uint8_t PDColorRes){
    if(PDColorRes == NO_COLOR){
        if(PDNoColorCount++ > 50){
                PDLastColor = 0;
                PDColorRes = 0;
        }
    }
    else{
        PDNoColorCount = 0;
        if(PDLastColor != PDColorRes){
            RGBsetColor(PDColorRes);
            PDLastColor = PDColorRes;
            global_carWashWaitTime = CAR_WASH_WAIT_TIME ;
            switch(PDColorRes){
                case RED:
                    stopMotor();
                    setHallSensorReadDelay();
                    playAudio(MUSIC_HORN);
                    break;
                case GREEN:
                    accelerateMotor();
                    setHallNoReasultInterval();
                    setHallSensorReadDelay();
                    playAudio(MUSIC_SAMPLE_ONE);
                    break;
                case BLUE:
                    reverseMotor();
                    setHallNoReasultInterval();
                    setHallSensorReadDelay();
                    playAudio(MUSIC_BELL);
                    global_defaultMusicTimeout = 0 ;
                    break;
                case WHITE:
                    stopMotor();
                    setHallSensorReadDelay();
                    playAudio(MUSIC_CAR_WASH);
                    break;
                case YELLOW:
                    decelerateMotor();
                    setHallSensorReadDelay();
                    playAudio(MUSIC_SAMPLE_TWO);
                    break;
                default:
                    break;
            }
        }
        else if(PDColorRes == WHITE && global_carWashWaitTime==0){                   
            accelerateMotor();
            setHallNoReasultInterval();
            setHallSensorReadDelay();
            global_carWashWaitTime = CAR_WASH_WAIT_TIME;
        }
    }
    if(PDLastColor == BLUE  &&  getMotorDirection() == MOTOR_REVERSE){
        PDNoColorCount = 0;
        if(global_defaultMusicTimeout >= DEFAULT_MUSIC_TIMEOUT_MS){
            global_defaultMusicTimeout = 0 ;
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
    
    ADC_Enable();
    while(1){ 
        samplingCycle = samplingCycle > 5 ? 0 : samplingCycle ;
        switch(samplingCycle){
            case (0):
                PDColorWrite(OFF, OFF, OFF);
                break;
            case(1):
                pdColor.ambient = res ;
                PDColorWrite(ON, OFF, OFF);
                break;
            case(2):
                pdColor.red = res;
                PDColorWrite(OFF, ON, OFF);
                break;
            case(3):
                pdColor.green = res;
                PDColorWrite(OFF, OFF, ON);
                break;
            case(4):
                pdColor.blue = res;
                PDColorWrite(ON, ON, ON);
                break;
            case(5):
                pdColor.white = res;
                PDColorWrite(OFF, OFF, OFF);
                resColor = generateColor();
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

        DMAC_ChannelDisable(DMAC_CHANNEL_1);
        ADC_Disable();
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
        }
 //       vTaskDelay(1);              
    }
}
void initPhotoTask(uint32_t priority){
    
    xTaskCreate(TASK_photoSensor, (signed char*)"pd_task", 512, 0, priority, &xHandlerPhotoTask);

}

