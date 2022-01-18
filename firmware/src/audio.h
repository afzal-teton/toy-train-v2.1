/* 
 * File:   audio.h
 * Author: afzal
 *
 * Created on December 30, 2021, 10:25 AM
 */

#ifndef AUDIO_H
#define	AUDIO_H

#include <stdint.h>
#include "music.h"



typedef struct audioTrack{
    const uint8_t *audioFile;
    uint32_t fileLength;
    uint32_t trackCounter ;
} AudioTrack;


void initAudioPeripheral();
void playAudio(uint8_t audio);

#endif	

