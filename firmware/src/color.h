/* 
 * File:   color.h
 * Author: babu
 *
 * Created on January 19, 2022, 10:28 AM
 */

#ifndef COLOR_H
#define	COLOR_H

#include<stdint.h>

#define RED              1
#define GREEN            2
#define BLUE             3
#define WHITE            4
#define YELLOW           5
#define NO_COLOR         6


#define COLOR_GENERATOR_F_01
//#define COLOR_GENERATOR_F_02

typedef struct pdColors{
    uint16_t red ;         
    uint16_t green;       
    uint16_t blue;   
    uint16_t ambient;
    uint16_t white;
}PDColor ;



#endif	/* COLOR_H */

