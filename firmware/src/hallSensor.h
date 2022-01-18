/* 
 * File:   hallSensor.h
 * Author: afzal
 *
 * Created on December 22, 2021, 1:27 PM
 */

#ifndef HALLSENSOR_H
#define	HALLSENSOR_H

#include<stdint.h>


#define HALL_SENSE_FORWRD   1
#define HALL_SENSE_REVERSE  2
#define HALL_SENSE_STOP     3


typedef struct HallSensorParam{
   uint8_t directionFlag;
   uint8_t speedFlag;
   uint8_t previousStatus ;
} HallSensor;



extern HallSensor hallSensor;

//extern unsigned long noChangeDuration;
//extern unsigned long lastCountValue;
//extern unsigned long readDelay;


extern void initHallSensor( uint8_t direction, uint8_t speed);
extern uint8_t  measureHallSensorValue();
extern void setHallSensorReadDelay();
extern void setHallNoReasultInterval();
 



#endif	/* HALLSENSOR_H */

