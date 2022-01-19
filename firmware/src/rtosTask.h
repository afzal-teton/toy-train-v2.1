/* 
 * File:   rtosTask.h
 * Author: babu
 *
 * Created on January 18, 2022, 11:54 AM
 */

#ifndef RTOSTASK_H
#define	RTOSTASK_H


#include "photoSensorTask.h"
#include "bleTask.h"
#include "hallSensorTask.h"
#include "sTimerTask.h"



#define BLE_TASK_PRIORITY              3
#define PHOTO_SENSOR_TASK_PRIORITY     2
#define HALL_SENSOR_TASK_PRIORITY      2
#define SOFT_TIMER_PRIORITY            4


#endif	/* RTOSTASK_H */

