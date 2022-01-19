#include "hallSensor.h"
#include "AppGlobals.h"
#include "definitions.h"

HallSensor hallSensor;


void initHallSensor( uint8_t direction, uint8_t speed){
    hallSensor.speedFlag = hall_speed_sense_pin_Get() ;
    hallSensor.directionFlag = hall_dir_sense_pin_Get();
    hallSensor.previousStatus = 0 ;
}

uint8_t  measureHallSensorValue(){
    hallSensor.directionFlag = hall_dir_sense_pin_Get();
    if(hall_speed_sense_pin_Get() != hallSensor.speedFlag){   
        setHallNoReasultInterval();
        hallSensor.speedFlag = 1 -  hallSensor.speedFlag ;
        if(g_HallSensorInertiaCounter > 0){
            return 0;
        }
        if(hallSensor.directionFlag){
            return 2;
        }
        else{
            return 1;
        }
    }
    else if(g_HallReasultWaitCounter == 0){
        hallSensor.previousStatus = 0 ;
        return 3; 
    }
    return 0;
}
void setHallSensorReadDelay(){
    g_HallSensorInertiaCounter = HALL_SENSOR_INERTIA ;
}
void setHallNoReasultInterval(){
    g_HallReasultWaitCounter = HALL_SENSOR_IDLE_TIME;
}
    

































