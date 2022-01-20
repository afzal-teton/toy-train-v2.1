#include "sTimerTask.h"
#include "AppGlobals.h"
#include "task.h"


void TASK_sTimer(void* p){
    while(1){  
        if(g_HallReasultWaitCounter > 0){
            g_HallReasultWaitCounter-- ;
        }
        if(g_HallSensorInertiaCounter > 0){
            g_HallSensorInertiaCounter-- ;
        }
        if(g_PhotoDiodeLastReadInterval > 0){
            g_PhotoDiodeLastReadInterval-- ;
        }
        if(g_CarWashWaitTime > 0){
            g_CarWashWaitTime-- ;
        }
        if(g_DefaultMusicTimeout > 0){
            g_DefaultMusicTimeout-- ;
        }
        vTaskDelay(1);
    }
}
void initSoftTimerTask(uint32_t priority){
        xTaskCreate(TASK_sTimer, (signed char*)"timer_task", 128, 0, priority, NULL);
}

