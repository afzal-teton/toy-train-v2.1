/* 
 * File:   photoSensorTask.h
 * Author: babu
 *
 * Created on January 18, 2022, 2:06 PM
 */

#ifndef PHOTOSENSORTASK_H
#define	PHOTOSENSORTASK_H

#include "bluetooth.h"
#include "rgbLed.h"
#include "motorControl.h"
#include "AppGlobals.h"
#include "FreeRTOS.h"
#include "definitions.h"
#include "task.h"


void initPhotoTask(uint32_t priority);

#endif	/* PHOTOSENSORTASK_H */

