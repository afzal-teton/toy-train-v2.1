#include <stddef.h>                     // Defines NULL
#include <stdbool.h>                    // Defines true
#include "audio.h"
#include "definitions.h"


#define MAX_MUSIC_FILE_SIZE      65535u


//volatile AudioTrack audioTrack;


//uint32_t powerOnMusicFoileSize = 0;
uint8_t *musicFileAray[10];
uint32_t musicSizeArray[10];




//const uint16_t sine_wave[NUM_OF_SAMPLES] = {
//0x200,	0x210,	0x220,	0x230,	0x240,	0x24F,	0x25E,	0x26D,	0x27B,	0x289,
//0x297,	0x2A3,	0x2AF,	0x2BB,	0x2C5,	0x2CF,	0x2D8,	0x2E0,	0x2E8,	0x2EE,
//0x2F4,	0x2F8,	0x2FC,	0x2FE,	0x3FF,	0x3FF,	0x3FF,	0x2FE,	0x2FC,	0x2F8,
//0x2F4,	0x2EE,	0x2E8,	0x2E0,	0x2D8,	0x2CF,	0x2C5,	0x2BB,	0x2AF,	0x2A3,
//0x297,	0x289,	0x27B,	0x26D,	0x25E,	0x24F,	0x240,	0x230,	0x220,	0x210,
//0x200,	0x1F0,	0x1E0,	0x1D0,	0x1C0,	0x1B1,	0x1A2,	0x193,	0x185,	0x177,
//0x16A,	0x15D,	0x151,	0x146,	0x13B,	0x131,	0x128,	0x120,	0x118,	0x112,
//0x10D,	0x108,	0x105,	0x102,	0x101,	0x100,	0x101,	0x102,	0x105,	0x108,
//0x10D,	0x112,	0x118,	0x120,	0x128,	0x131,	0x13B,	0x146,	0x151,	0x15D,
//0x16A,	0x177,	0x185,	0x193,	0x1A2,	0x1B1,	0x1C0,	0x1D0,	0x1E0,	0x1F0,
//};

//const uint8_t sample_triangle[] = {  0x00 ,0x00 ,0x00 ,0x00 ,
//    0x00 ,0xD0, 0xE0,  0x00 ,0xD0, 0xF0,0xF0,0xF0,0xF0,0xF0,0xF0,0xF0,0xF0,0xF0,0xF0,0xF0,0xF0,
//0xF0,0xF0,0xF0,0xF0,
//};


__attribute__((__aligned__(16))) static dmac_descriptor_registers_t pTxLinkedListDesc[1];

//#define BUFFER_TX_BTCTRL    (DMAC_BTCTRL_STEPSIZE_X2 | DMAC_BTCTRL_SRCINC_Msk |     \
//                             DMAC_BTCTRL_BEATSIZE_HWORD | DMAC_BTCTRL_BLOCKACT_INT | DMAC_BTCTRL_VALID_Msk)


#define BUFFER_TX_BTCTRL    (DMAC_BTCTRL_STEPSIZE_X2 | DMAC_BTCTRL_SRCINC_Msk |     \
                             DMAC_BTCTRL_BEATSIZE_BYTE | DMAC_BTCTRL_BLOCKACT_INT | DMAC_BTCTRL_VALID_Msk)


void initAudioPeripheral(){
   musicFileAray[MUSIC_NULL] =  __nullMusic ;
   musicFileAray[MUSIC_POWER_ON] =  __powerOnMusic ;
   musicFileAray[MUSIC_POWER_OFF] =  __powerOffMusic ;
   musicFileAray[MUSIC_BLE_ON] =  __bleOnMusic ;
   musicFileAray[MUSIC_BLE_OFF] =  __bleOffMusic ;
   musicFileAray[MUSIC_HORN] =  __hornMusic ;
   musicFileAray[MUSIC_SAMPLE_ONE] =  __sampleOneMusic ;
   musicFileAray[MUSIC_SAMPLE_TWO] =  __sampleTwoMusic ;
   musicFileAray[MUSIC_BELL] =  __bellMusic ;
   musicFileAray[MUSIC_CAR_WASH] =  __carWashMusic ;

   musicSizeArray[MUSIC_NULL] = 1;
   musicSizeArray[MUSIC_POWER_ON] = sizeOfPowerOnMusic();
   musicSizeArray[MUSIC_POWER_OFF] = sizeOfPowerOffMusic();
   musicSizeArray[MUSIC_BLE_ON] = sizeOfBleOnMusic();
   musicSizeArray[MUSIC_BLE_OFF] = sizeOfBleOffMusic();
   musicSizeArray[MUSIC_HORN] = sizeOfHornMusic();
   musicSizeArray[MUSIC_SAMPLE_ONE] = sizeOfSampleOneMusic();
   musicSizeArray[MUSIC_SAMPLE_TWO] = sizeOfSampleTwoMusic();
   musicSizeArray[MUSIC_BELL] = sizeOfBellMusic();
   musicSizeArray[MUSIC_CAR_WASH] = sizeOfCarWashMusic();
   
   TC4_TimerStart();
   playAudio(MUSIC_POWER_ON);
}


void playAudio(uint8_t audio){
    DMAC_ChannelDisable(DMAC_CHANNEL_0);
    if(audio >= MUSIC_LIMIT)   return ;
//    audioTrack.audioFile = musicFileAray[audio];
//    audioTrack.fileLength =  musicSizeArray[audio];
//    audioTrack.trackCounter = 0 ;
    
    pTxLinkedListDesc[0].DMAC_BTCTRL     = (uint16_t)BUFFER_TX_BTCTRL;
    if(musicSizeArray[audio] > MAX_MUSIC_FILE_SIZE){
        pTxLinkedListDesc[0].DMAC_BTCNT      =  MAX_MUSIC_FILE_SIZE;
        pTxLinkedListDesc[0].DMAC_SRCADDR    = (uint32_t)musicFileAray[audio] + MAX_MUSIC_FILE_SIZE;
    } 
    else{
        pTxLinkedListDesc[0].DMAC_BTCNT      =  musicSizeArray[audio];
        pTxLinkedListDesc[0].DMAC_SRCADDR    = (uint32_t)musicFileAray[audio] + musicSizeArray[audio];
    }                               
    pTxLinkedListDesc[0].DMAC_DESCADDR   = (uint32_t)&pTxLinkedListDesc[0];
    pTxLinkedListDesc[0].DMAC_DSTADDR    = (uint32_t)&DAC_REGS->DAC_DATABUF;
    
    DMAC_ChannelLinkedListTransfer(DMAC_CHANNEL_0, &pTxLinkedListDesc[0]);
}
