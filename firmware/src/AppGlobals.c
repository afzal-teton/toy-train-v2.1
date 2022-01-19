#include "AppGlobals.h"

volatile uint8_t  g_HallReasultWaitCounter = HALL_SENSOR_IDLE_TIME;
volatile uint8_t  g_HallSensorInertiaCounter  = 0;
volatile uint16_t g_PhotoDiodeLastReadInterval = 0;
volatile uint16_t g_CarWashWaitTime = 5000;
volatile uint16_t g_DefaultMusicTimeout = 0;
