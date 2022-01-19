#include <stdlib.h>
#include <string.h>
#include <stdint.h>


#include "colorDetect.h"
#include "AppGlobals.h"
#include "definitions.h"
#include "rgbLed.h"

//
//uint8_t lastColor = 0; 
//uint32_t colorCount = 0;
//
////uint16_t red = 0;         
////uint16_t green = 0;       
////uint16_t blue = 0;   
////uint16_t ambient = 0;
////uint16_t white = 0;
//
//
//PDColor pdColor ;
//
////------------------- Initialize Color Sensor starts ------------------//
//void PDInit(){
//
//}
////------------------- Initialize Color Sensor ends ------------------//
//
////------------------- Color Sensing function starts ------------------//
//void PDColorWrite (uint8_t red, uint8_t green, uint8_t blue){
//    red ?   pd_red_Clear()  : pd_red_Set();
//    blue ?  pd_blue_Clear() : pd_blue_Set() ;
//    green ? pd_green_Clear() : pd_green_Set() ;
//}
////
//uint8_t generateColor(){
//    
////    char b_red[5]="";
////    char b_green[5]="";
////    char b_blue[5]="";
////    char b_white[5]="";
////    char b_ambient[5]="";
////    char buff[30]="";
////    
////    memset(b_red, 0, sizeof(b_red));
////    memset(b_green, 0, sizeof(b_green));
////    memset(b_blue, 0, sizeof(b_blue));
////    memset(b_white, 0, sizeof(b_white));
////    memset(b_ambient, 0, sizeof(b_ambient));
////    memset(buff, 0, sizeof(buff));
//    
//    
//    pdColor.red = pdColor.ambient > pdColor.red ? 0 : (pdColor.red - pdColor.ambient);
//    pdColor.green = pdColor.ambient > pdColor.green ? 0 : (pdColor.green - pdColor.ambient);
//    pdColor.blue = pdColor.ambient > pdColor.blue ? 0 : (pdColor.blue - pdColor.ambient);
//    pdColor.white = pdColor.ambient > pdColor.white ? 0 : (pdColor.white - pdColor.ambient);
//    pdColor.red = (pdColor.red*100)/pdColor.white;
//    pdColor.green = (pdColor.green*100)/pdColor.white;
//    pdColor.blue = (pdColor.blue*100)/pdColor.white;
//    
//    RGBcolorWrite(   pdColor.red,    pdColor.green,    pdColor.blue);
////    itoa((int)pdColor.red,b_red,10);            
////    itoa((int)pdColor.green,b_green,10);       
////    itoa((int)pdColor.blue,b_blue,10);        
////    itoa((int)pdColor.white,b_white,10);        
////    itoa((int)pdColor.ambient,b_ambient,10);    
////    
////    memcpy(b_red, buff, sizeof(b_red));
////    strcat(buff, b_green);
////    strcat(buff, ",");
////    
////    strcat(buff, b_blue);
////    strcat(buff, ",");
////    strcat(buff, b_white);
////    strcat(buff, ",");
////    strcat(buff, b_ambient);
////    strcat(buff, "\n");
////     
////     
////    SERCOM2_USART_Write(buff, sizeof(buff));
//    
//    
//    
//    
//    
//    
//    
//    if(pdColor.white < 200)
//    {
//        return NO_COLOR;
//    }
//    else if(pdColor.green < pdColor.red && 2*pdColor.blue < pdColor.red )
//    {
//        if(lastColor == RED)
//        {
//            colorCount++;
//        }
//        else
//        {
//            colorCount = 0;
//        }
//        if(colorCount > 5)
//        {
//            return RED;
//        }
//        lastColor = RED;
//    }
//    else if(2*pdColor.blue < pdColor.red && 3*pdColor.blue < pdColor.green && pdColor.white > 400)
//    {        
//        if(lastColor == YELLOW)
//        {
//            colorCount++;
//        }
//        else
//        {
//            colorCount = 0;
//        }
//        if(colorCount > 5)
//        {
//            return YELLOW;
//        }
//        lastColor = YELLOW;
//    }
//    else if(pdColor.green > 3*pdColor.red && 2*pdColor.blue < pdColor.green && pdColor.white < 400)
//    {
//        if(lastColor == GREEN)
//        {
//            colorCount++;
//        }
//        else
//        {
//            colorCount = 0;
//        }
//        if(colorCount > 5)
//        {
//            return GREEN;
//        }
//        lastColor = GREEN;
//    }
//    else if(pdColor.blue > 2*pdColor.red && 4*pdColor.blue > 2*pdColor.green)
//    {
//        if(lastColor == BLUE)
//        {
//            colorCount++;
//        }
//        else
//        {
//            colorCount = 0;
//        }
//        if(colorCount > 5)
//        {
//            return BLUE;
//        }
//        lastColor = BLUE;
//    }
//    else if(2*pdColor.blue > pdColor.red && pdColor.blue < 2*pdColor.red && pdColor.green < 4*pdColor.red && pdColor.white > 600)
//    {
//        if(lastColor == WHITE)
//        {
//            colorCount++;
//        }
//        else
//        {
//            colorCount = 0;
//        }
//        if(colorCount > 5)
//        {
//            return WHITE;
//        }
//        lastColor = WHITE;
//    }
//    return NO_COLOR;
//}
//
//uint8_t PDColourRead(){
//    uint16_t adcV = 1024;//adcValue;
//    uint8_t adc_buff[8];
//    memset(adc_buff, 0, sizeof(adc_buff));
//    itoa((int)adcV, adc_buff,10); 
//    strcat(adc_buff, "\r\n");
//     
//     
//   // SERCOM2_USART_Write(adc_buff, 6);
//    
//    static readCount = 0 ;
//    switch(readCount){
//            case(0):
//                PDColorWrite(OFF, OFF, OFF);
//                break;
//            case(1):
//                pdColor.ambient = adcV ;
//                PDColorWrite(ON, OFF, OFF);
//                break;
//            case(2):
//                pdColor.red = adcV;
//                PDColorWrite(OFF, ON, OFF);
//                break;
//            case(3):
//                pdColor.green = adcV;
//                PDColorWrite(OFF, OFF, ON);
//                break;
//            case(4):
//                pdColor.blue = adcV;
//                PDColorWrite(ON, ON, ON);
//                break;
//            case(5):
//                pdColor.white = adcV;
//                PDColorWrite(OFF, OFF, OFF);
//                break;
//            default:
//                PDColorWrite(OFF, OFF, OFF);
//            break;
//     }
//     if(readCount == 5){
//        readCount = 0;
//        return generateColor();
//     }
//    readCount++;
//    return 0;
//}
//------------------- Color Sensing function ends ------------------//