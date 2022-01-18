//#include "photoDiodeTask.h"
//#include<stdlib.h>
//#include <stdint.h>
//
//#define COLOR_SAMPLE_SIZE                   64
//#define COLOR_DATA_SET_COUNT                6
//#define COLOR_DATA_SET_ARRAY_SIZE           48
//
//#define ADC_DMA_NOTIFICATION                0x01
//
//
//uint32_t myAppObj = 0;
//volatile uint16_t adc_result_array[COLOR_SAMPLE_SIZE];
//
//
//TaskHandle_t xHandlingTask;
//BaseType_t xHigherPriorityTaskWoken = pdFALSE;
//void initPhotoTask(uint32_t priority){
//    
//    xTaskCreate(TASK_photoDiode, (signed char*)"pd_task", 256, 0, priority, &xHandlingTask);
//
//}
//
//void DmacCh0Cb(DMAC_TRANSFER_EVENT returned_evnt, uintptr_t MyDmacContext){ 
//  
//    if (DMAC_TRANSFER_EVENT_COMPLETE == returned_evnt){              
//        xTaskNotifyFromISR( xHandlingTask, ADC_DMA_NOTIFICATION, eSetBits, &xHigherPriorityTaskWoken );
//    }
//    else if (DMAC_TRANSFER_EVENT_ERROR == returned_evnt){
//
//    }
// }
//
//
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
//
//void TASK_photoDiode(void* p){
//    const TickType_t xMaxBlockTime = pdMS_TO_TICKS( 500 );
//    BaseType_t xResult;
//    uint32_t notificationValue ;
//    uint8_t m;
//    uint16_t res = 0 ;
//    ADC_Enable();
//    
//    while(1){     
//        DMAC_ChannelCallbackRegister(DMAC_CHANNEL_1, DmacCh0Cb, (uintptr_t)&myAppObj);
//        DMAC_ChannelTransfer(DMAC_CHANNEL_1, (const void *)&ADC_REGS->ADC_RESULT, (const void *)adc_result_array, sizeof(adc_result_array));
//        
//
//        /*wait for adc sample ... notification will be sent from ISR :)  ..*/
//        xResult = xTaskNotifyWait( 0x00,                  //* Don't clear bits on entry. */
//                                   0xffffffff,            //* Clear all bits on exit. */
//                                   &notificationValue,    //* Stores the notified value. */
//                                   xMaxBlockTime );
//
//
//        if( xResult == pdPASS ){                                        // A notification was received.  
//            if( ( notificationValue & ADC_DMA_NOTIFICATION ) != 0 ){    // check which bits were set.   
//                pd_blue_Set();
//                bubbleSort(adc_result_array,  COLOR_SAMPLE_SIZE);
//                res = 0;
//                m = (COLOR_SAMPLE_SIZE/2) -4;
//                for(int i= m; i< m+8; i++){
//                    res += adc_result_array[i];
//                }
//                res = res >> 3;
//                pd_blue_Clear();
//                
//               
//                
////                SERCOM0_USART_Write("res\n", 4);
////                print_int(res, 4);
////                SERCOM0_USART_Write("sorted sample ::  \n", 19);
////                for(int i=0; i<COLOR_SAMPLE_SIZE; i++){
////                   print_int( adc_result_array[i], 4);
////                   SERCOM0_USART_Write("\n", 1);
////                }               
//            }
//            //pd_blue_Set();
//            //pd_blue_Clear();
//            //vTaskDelay(1);
//
//        }
//        else{                                            //* Did not receive a notification within the expected time. */
//           // prvCheckForErrors();
//        }
//        taskYIELD();
//    }
//}
//
//


//void TASK_photoDiode(void* p){
//    
//    const TickType_t xMaxBlockTime = pdMS_TO_TICKS( 500 );
//    BaseType_t xResult;
//    uint32_t notificationValue ;
//    
//    DataSet colorDataSet[COLOR_DATA_SET_COUNT];
//    uint16_t diff[COLOR_DATA_SET_COUNT] , colorRes = 0;;
//    uint8_t  index=0;
//
//    
//
//    ADC_Enable();
//    
//    while(1){     
//        DMAC_ChannelCallbackRegister(DMAC_CHANNEL_1, DmacCh0Cb, (uintptr_t)&myAppObj);
//        DMAC_ChannelTransfer(DMAC_CHANNEL_1, (const void *)&ADC_REGS->ADC_RESULT, (const void *)adc_result_array, sizeof(adc_result_array));
//        
//
//        /*wait for adc sample ... notification will be sent from ISR :)  ..*/
//        xResult = xTaskNotifyWait( 0x00,                  //* Don't clear bits on entry. */
//                                   0xffffffff,            //* Clear all bits on exit. */
//                                   &notificationValue,    //* Stores the notified value. */
//                                   xMaxBlockTime );
//
//
//        
//        if( xResult == pdPASS ){                          // A notification was received.  
//            pd_blue_Set();
//            //pd_blue_Clear();
//            if( ( notificationValue & ADC_DMA_NOTIFICATION ) != 0 ){    // check which bits were set.   
//                //pd_blue_Clear();
//                for(int i=0; i<COLOR_DATA_SET_COUNT; i++){
//                    memset(colorDataSet[i].buff, 0, COLOR_DATA_SET_ARRAY_SIZE);
//                    colorDataSet[i].counter = -1 ;
//                }
//                for(int i=0; i<COLOR_SAMPLE_SIZE; i++){
//                    if(i<COLOR_DATA_SET_COUNT){
//                        colorDataSet[i].buff[++colorDataSet[i].counter] = adc_result_array[i];
//                    }else{
//                        index = 0;
//                        for(int j=0; j<COLOR_DATA_SET_COUNT; j++){
//                            diff[j] = abs(colorDataSet[j].buff[colorDataSet[j].counter]-adc_result_array[i]);
//                            if(j>0){
//                                index = (diff[index] < diff[j]) ?  index : j ;
//                            }
//                        }
//                        colorDataSet[index].buff[++colorDataSet[index].counter] = adc_result_array[i];
//                        print_int( colorDataSet[index].buff[colorDataSet[index].counter], 4);
//                    }
//                }
//
//                index = 0 ;
//                colorRes = 0;
//                for(int k=1; k<COLOR_DATA_SET_COUNT; k++){
//                    index = (colorDataSet[index].counter > colorDataSet[k].counter) ?  index : k ;
//                }
//                
//                SERCOM0_USART_Write("size: ", 6);
//                print_int( colorDataSet[index].counter, 2);
//                SERCOM0_USART_Write("::index: ", 9);
//                print_int( index, 2);
//                SERCOM0_USART_Write(" \n", 2);
//                
//                if(colorDataSet[index].counter >= 15){
//                    if(colorDataSet[index].counter > 15){
//                        colorDataSet[index].counter =15;
//                    }
//                }else if(colorDataSet[index].counter >= 7){
//                    if(colorDataSet[index].counter > 7){
//                        colorDataSet[index].counter = 7 ;
//                    }                    
//                }
//                
//                for(int x=0; x<=colorDataSet[index].counter; x++){
//                    colorRes += colorDataSet[index].buff[x];
//                } 
//                
//                if(colorDataSet[index].counter == 15){
//                    colorRes = colorRes >> 4 ; 
//                }
//                else if(colorRes  == 7){
//                    colorRes = colorRes >> 3 ;
//                }else{
//                    colorRes = colorRes/colorDataSet[index].counter ;
//                }
//                SERCOM0_USART_Write("color : \n", 9);
//                print_int( colorRes, 4);
//                SERCOM0_USART_Write(" \n", 2);
//            }
//            //pd_blue_Set();
//            pd_blue_Clear();
//            vTaskDelay(10);
//            
//        }
//        else{                                            //* Did not receive a notification within the expected time. */
//           // prvCheckForErrors();
//        }
//    }
//}
//
//


//
//void TASK_photoDiode(void* p){
//    uint8_t PDColorRes = 0;
//    uint8_t PDNoColorCount = 0 ;
//    uint8_t PDLastColor = 0 ;
//    
//    while(1){
//        vTaskDelay(1);
//        PDColorRes = PDColourRead();
//        if(PDColorRes){
//            if(PDColorRes == NO_COLOR){
//                if(PDNoColorCount++ > 50){
//                    PDLastColor = 0;
//                    PDColorRes = 0;
//                }
//            }
//            else{
//                PDNoColorCount = 0;
//                if(PDLastColor != PDColorRes){
//                    RGBsetColor(PDColorRes);
//                    PDLastColor = PDColorRes;
//                    global_carWashWaitTime = CAR_WASH_WAIT_TIME ;
//                    switch(PDColorRes){
//                        case RED:
//                            stopMotor();
//                            setHallSensorReadDelay();
//                            playAudio(MUSIC_HORN);
//                            break;
//                        case GREEN:
//                            accelerateMotor();
//                            setHallNoReasultInterval();
//                            setHallSensorReadDelay();
//                            playAudio(MUSIC_SAMPLE_ONE);
//                            break;
//                        case BLUE:
//                            reverseMotor();
//                            setHallNoReasultInterval();
//                            setHallSensorReadDelay();
//                            playAudio(MUSIC_BELL);
//                            global_defaultMusicTimeout = 0 ;
//                            break;
//                        case WHITE:
//                            stopMotor();
//                            setHallSensorReadDelay();
//                            playAudio(MUSIC_CAR_WASH);
//                            break;
//                        case YELLOW:
//                            decelerateMotor();
//                            setHallSensorReadDelay();
//                            playAudio(MUSIC_SAMPLE_TWO);
//                            break;
//                        default:
//                            break;
//                    }
//                }
//                else if(PDColorRes == WHITE && global_carWashWaitTime==0){                   
//                    accelerateMotor();
//                    setHallNoReasultInterval();
//                    setHallSensorReadDelay();
//                    global_carWashWaitTime = CAR_WASH_WAIT_TIME;
//                }
//            }
//            if(PDLastColor == BLUE  &&  getMotorDirection() == MOTOR_REVERSE){
//                PDNoColorCount = 0;
//                if(global_defaultMusicTimeout >= DEFAULT_MUSIC_TIMEOUT_MS){
//                    global_defaultMusicTimeout = 0 ;
//                    playAudio(MUSIC_BELL);
//                }
//            }
//        } 
//    }
//}