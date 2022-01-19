#include "hallSensorTask.h"
#include "definitions.h"
#include "FreeRTOS.h"
#include "task.h"
#include "AppGlobals.h"
#include "hallSensor.h"
#include "motorControl.h"

#define HALL_SENSE_FORWRD   1
#define HALL_SENSE_REVERSE  2
#define HALL_SENSE_STOP     3


TaskHandle_t xHallSensorTaskHandler;


static void TASK_hallSensor(void* p){
    uint8_t hallSensorRes = 0 ;
    
    hallSensor.speedFlag = hall_speed_sense_pin_Get() ;
    hallSensor.directionFlag = hall_dir_sense_pin_Get();
    hallSensor.previousStatus = 0 ; 
    
    while(1){
        hallSensorRes = measureHallSensorValue();
        switch(hallSensorRes){
            case(HALL_SENSE_FORWRD):
                if(hallSensor.previousStatus != HALL_SENSE_FORWRD){
                    hallSensor.previousStatus = HALL_SENSE_FORWRD;
                }
                else if(motor.speed_flag == MOTOR_SPEED_NULL){
                    motorControl(MOTOR_FORWARD, MOTOR_SPEED_MIN);        
                }
                else if(motor.direction_flag == MOTOR_REVERSE){
                    stopMotor();  
                }
                break;
            case(HALL_SENSE_REVERSE):
                if(hallSensor.previousStatus != HALL_SENSE_REVERSE){
                    hallSensor.previousStatus = HALL_SENSE_REVERSE;
                }
                else if(motor.speed_flag == MOTOR_SPEED_NULL){
                    motorControl(MOTOR_REVERSE,MOTOR_SPEED_MIN);       
                }
                else if(motor.direction_flag == MOTOR_FORWARD){
                    stopMotor();    
                }
                break;
            case(HALL_SENSE_STOP):
                if(motor.speed_flag != MOTOR_SPEED_NULL){
                    stopMotor();                                   
                }
                break;
            default:
                break;
        }
    }
}

void initHallSensorTask(uint32_t priority){  
    xTaskCreate(TASK_hallSensor, (signed char*)"ble_task", 256, 0, priority, &xHallSensorTaskHandler);    
}