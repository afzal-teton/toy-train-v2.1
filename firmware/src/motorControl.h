/* 
 * File:   motorControl.h
 * Author: afzal
 *
 * Created on December 22, 2021, 12:48 PM
 */

#ifndef MOTORCONTROL_H
#define	MOTORCONTROL_H

#include<stdint.h>

#define MOTOR_FORWARD   1
#define MOTOR_REVERSE   0



#define MOTOR_SPEED_MAX 255
#define MOTOR_SPEED_MID 200
#define MOTOR_SPEED_MIN 150
#define MOTOR_SPEED_NULL 0


typedef struct MotorParams{
    uint8_t fowrard_pin ;
    uint8_t reverse_pin;
    uint8_t direction_flag;
    uint8_t speed_flag;
} Motor;


extern Motor motor ;

extern uint8_t getMotorDirection();
extern uint8_t getMotorSpeed();


extern void initMotorPeripheral();
extern void motorDirection(int8_t direction);
extern void motorSpeed (uint8_t speed);
extern void motorControl(int8_t direction, uint8_t speed);
extern void accelerateMotor();
extern void decelerateMotor();
extern void reverseMotor();
extern void stopMotor();



#endif	/* MOTORCONTROL_H */

