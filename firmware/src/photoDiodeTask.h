/* 
 * File:   photoDiodeTask.h
 * Author: babu
 *
 * Created on January 13, 2022, 2:03 PM
 */

#ifndef PHOTODIODETASK_H
#define	PHOTODIODETASK_H

#include "bluetooth.h"
#include "rgbLed.h"
#include "motorControl.h"
#include "AppGlobals.h"
#include "FreeRTOS.h"
#include "definitions.h"
#include "task.h"

extern void TASK_photoDiode(void* p);
void initPhotoTask(uint32_t priority);

#endif	/* PHOTODIODETASK_H */

