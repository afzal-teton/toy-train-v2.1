#include "hallSensorTask.h"
#include "definitions.h"
#include "FreeRTOS.h"
#include "task.h"

#include "motorControl.h"

#define HALL_SENSE_FORWRD   1
#define HALL_SENSE_REVERSE  2
#define HALL_SENSE_STOP     3

typedef struct HallSensorParam{
   uint8_t directionFlag;
   uint8_t speedFlag;
   uint8_t previousStatus ;
} HallSensor;

HallSensor hallSensor;

TaskHandle_t xHallSensorTaskHandler;

void hallInit(){
    hallSensor.speedFlag = hall_speed_sense_pin_Get() ;
    hallSensor.directionFlag = hall_dir_sense_pin_Get();
    hallSensor.previousStatus = 0 ;
}

static void TASK_hallSensor(void* p){
    while(1){
        hallSensor.directionFlag = hall_dir_sense_pin_Get(); 
        if(hall_speed_sense_pin_Get() != hallSensor.speedFlag){   
            setHallNoReasultInterval();
            hallSensor.speedFlag = 1 -  hallSensor.speedFlag ;
            if(0){
                return 0;
            }
            if(hallSensor.directionFlag){    //HALL_SENSE_REVERSE
                if(hallSensor.previousStatus != HALL_SENSE_REVERSE){
                    hallSensor.previousStatus = HALL_SENSE_REVERSE;
                }
                else if(motor.speed_flag == MOTOR_SPEED_NULL){
                    motorControl(MOTOR_REVERSE, MOTOR_SPEED_MIN);       
                }
                else if(motor.direction_flag == MOTOR_FORWARD){
                    stopMotor();    
                }
            }
            else{    //HALL_SENSE_FORWRD 
                if(hallSensor.previousStatus != HALL_SENSE_FORWRD){
                    hallSensor.previousStatus = HALL_SENSE_FORWRD;
                }
                else if(motor.speed_flag == MOTOR_SPEED_NULL){
                    motorControl(MOTOR_FORWARD, MOTOR_SPEED_MIN);        
                }
                else if(motor.direction_flag == MOTOR_REVERSE){
                    stopMotor();  
                };
            }
        }
        else if(0){  //HALL_SENSE_STOP
            hallSensor.previousStatus = 0 ;
            if(motor.speed_flag != MOTOR_SPEED_NULL){
                stopMotor();                                   
            } 
        }
        vTaskDelay(1);
    }
}

void initHallSensorTask(uint32_t priority){  
    hallInit();
    xTaskCreate(TASK_hallSensor, (signed char*)"ble_task", 256, 0, priority, &xHallSensorTaskHandler);    
}