/* 
 * File:   AppGlobals.h
 * Author: afzal
 *
 * Created on December 22, 2021, 12:13 PM
 */

#ifndef APPGLOBALS_H
#define	APPGLOBALS_H

#include<stdint.h>

#define ON               1
#define OFF              0

#define RED              1
#define GREEN            2
#define BLUE             3
#define WHITE            4
#define YELLOW           5
#define NO_COLOR         6

#define HALL_SENSOR_IDLE_TIME                               200
#define HALL_SENSOR_INERTIA                                 200
#define PHOTO_DIODE_INTERVAL_FROM_LAST_READ_10MS            10000

#define CAR_WASH_WAIT_TIME                                  5000


#define MUSIC_NULL          0
#define MUSIC_POWER_ON      1     
#define MUSIC_POWER_OFF     2
#define MUSIC_BLE_ON        3
#define MUSIC_BLE_OFF       4
#define MUSIC_HORN          5
#define MUSIC_SAMPLE_ONE    6
#define MUSIC_SAMPLE_TWO    7
#define MUSIC_BELL          8
#define MUSIC_CAR_WASH      9
#define MUSIC_LIMIT         10
#define DEFAULT_MUSIC_TIMEOUT_MS 1000



extern volatile uint16_t adcValue ;   
extern volatile uint8_t global_hallReasultWaitCounter ;
extern volatile uint8_t global_hallSensorInertiaCounter ;
extern volatile uint16_t global_photoDiodeLastReadInterval ;
extern volatile uint16_t global_carWashWaitTime ;
extern volatile uint16_t global_defaultMusicTimeout;
   
    



#endif	/* APPGLOBALS_H */

