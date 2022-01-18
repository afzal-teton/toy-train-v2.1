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



#define BLE_TASK_PRIORITY              4
#define PHOTO_SENSOR_TASK_PRIORITY     1
#define HALL_SENSOR_TASK_PRIORITY      2


#endif	/* RTOSTASK_H */

