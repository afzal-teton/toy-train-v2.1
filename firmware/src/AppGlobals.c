#include "AppGlobals.h"

volatile uint16_t adcValue = 0 ;
volatile uint8_t  global_hallReasultWaitCounter = HALL_SENSOR_IDLE_TIME;
volatile uint8_t  global_hallSensorInertiaCounter  = 0;
volatile uint16_t global_photoDiodeLastReadInterval = 0;
volatile uint16_t global_carWashWaitTime = 5000;
volatile uint16_t global_defaultMusicTimeout = 0;
