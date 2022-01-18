#include "hallSensor.h"
#include "AppGlobals.h"
//#include "peripheral/port/plib_port.h"
#include "definitions.h"

HallSensor hallSensor;


void initHallSensor( uint8_t direction, uint8_t speed){
    hallSensor.speedFlag = hall_speed_sense_pin_Get() ;
    hallSensor.directionFlag = hall_dir_sense_pin_Get();
    hallSensor.previousStatus = 0 ;
}

uint8_t  measureHallSensorValue(){
    hallSensor.directionFlag = hall_dir_sense_pin_Get();
    
//    if(hallSensor.directionFlag == 0){
//            SERCOM0_USART_Write("res: 0 \n", 8);
//    }else   SERCOM0_USART_Write("res: 1 \n", 8);
//    
    
    if(hall_speed_sense_pin_Get() != hallSensor.speedFlag){   
        setHallNoReasultInterval();
        hallSensor.speedFlag = 1 -  hallSensor.speedFlag ;
        if(global_hallSensorInertiaCounter > 0){
            return 0;
        }
        if(hallSensor.directionFlag){
            return 2;
        }
        else{
            return 1;
        }
    }
    else if(global_hallReasultWaitCounter == 0){
        hallSensor.previousStatus = 0 ;
        return 3; 
    }
    return 0;
}
void setHallSensorReadDelay(){
    global_hallSensorInertiaCounter = HALL_SENSOR_INERTIA ;
}
void setHallNoReasultInterval(){
    global_hallReasultWaitCounter = HALL_SENSOR_IDLE_TIME;
}
    

































