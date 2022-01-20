#include "hallSensor.h"
#include "AppGlobals.h"
#include "definitions.h"

HallSensor hallSensor;


void initHallSensor( uint8_t direction, uint8_t speed){
    hallSensor.lastSpeed = hall_speed_sense_pin_Get() ;
    hallSensor.lastDirection = hall_dir_sense_pin_Get();
    hallSensor.previousStatus = 0 ;
}

uint8_t  measureHallSensorValue(){
    hallSensor.lastDirection = hall_dir_sense_pin_Get();
    if(hall_speed_sense_pin_Get() != hallSensor.lastSpeed){   
        setHallNoReasultInterval();
        hallSensor.lastSpeed = 1 -  hallSensor.lastSpeed ;
        if(g_HallSensorInertiaCounter > 0){
            return 0;
        }
        if(hallSensor.lastDirection){
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
    

































