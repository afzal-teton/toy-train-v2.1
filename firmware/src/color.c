#include "color.h"
#include "printStr.h"
#include "device.h"


#ifdef COLOR_GENERATOR_F_01


uint8_t generateColor(PDColor *PdColor){

    PdColor->red = PdColor->ambient > PdColor->red ? 0 : (PdColor->red - PdColor->ambient);
    PdColor->green = PdColor->ambient > PdColor->green ? 0 : (PdColor->green - PdColor->ambient);
    PdColor->blue = PdColor->ambient > PdColor->blue ? 0 : (PdColor->blue - PdColor->ambient);
    PdColor->white = PdColor->ambient > PdColor->white ? 0 : (PdColor->white - PdColor->ambient);
    PdColor->red = (PdColor->red*100)/PdColor->white;
    PdColor->green = (PdColor->green*100)/PdColor->white;
    PdColor->blue = (PdColor->blue*100)/PdColor->white;

//    print_int(PdColor->red, 3);
//    SERCOM0_USART_Write("::", 2);
//    print_int(PdColor->green, 3);
//    SERCOM0_USART_Write("::", 2);
//    print_int(PdColor->blue, 3);
//    SERCOM0_USART_Write("::", 2);
//    print_int(PdColor->white, 3);
//    SERCOM0_USART_Write("::", 2);
//    print_int(PdColor->ambient, 3);
//    SERCOM0_USART_Write("::", 2);
//    SERCOM0_USART_Write("....toy-train v-2.1 . ..\n", 25);
   
    if(PdColor->white < 200){
        return NO_COLOR;
    }
    else if(PdColor->green < PdColor->red && 2*PdColor->blue < PdColor->red ){
            return RED;    
    }
    else if(2*PdColor->blue < PdColor->red && 3*PdColor->blue < PdColor->green && PdColor->white > 400){        

       return YELLOW;
    }
    else if(PdColor->green > 3*PdColor->red && 2*PdColor->blue < PdColor->green && PdColor->white < 400){
       return GREEN;
    }
    else if(PdColor->blue > 2*PdColor->red && 4*PdColor->blue > 2*PdColor->green){
       return BLUE;
    }
    else if(2*PdColor->blue > PdColor->red && PdColor->blue < 2*PdColor->red && PdColor->green < 4*PdColor->red 
                                                                             && PdColor->white > 600){
       return WHITE;
    }
    return NO_COLOR;
}


#endif