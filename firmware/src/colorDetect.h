/* 
 * File:   colorDetect.h
 * Author: afzal
 *
 * Created on December 22, 2021, 12:35 PM
 */

#ifndef COLORDETECT_H
#define	COLORDETECT_H

#include <stdint.h>
#include "AppGlobals.h"



//
//typedef struct pdColors{
//    uint16_t red ;         
//    uint16_t green;       
//    uint16_t blue;   
//    uint16_t ambient;
//    uint16_t white;
//}PDColor ;
//
//extern PDColor pdColor;
//
//void PDInit();
void PDColorWrite (uint8_t red, uint8_t green, uint8_t blue);
//uint8_t generateColor();
//uint8_t PDColourRead();


#endif	

