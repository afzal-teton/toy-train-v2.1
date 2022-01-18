#include "rgbLed.h"
#include "definitions.h"


void initRGBPeripheral(){
    TC3_Compare8bitMatch0Set(0);
    TCC2_PWM16bitDutySet(TCC2_CHANNEL0, 0);
    TCC2_PWM16bitDutySet(TCC2_CHANNEL1, 0);
    TCC2_PWMStart();
    TC3_CompareStart();
}

void RGBcolorWrite (uint8_t red, uint8_t green, uint8_t blue){
    TC3_Compare8bitMatch0Set(blue);
    TCC2_PWM16bitDutySet(TCC2_CHANNEL0, green*8);
    TCC2_PWM16bitDutySet(TCC2_CHANNEL1, red*8);
}
void RGBsetColor(uint8_t color){
  switch (color) {
    case RED:
      RGBcolorWrite(255,0,0);
      break;
    case GREEN:
      RGBcolorWrite(0,255,0);
      break;
    case BLUE:
      RGBcolorWrite(0,0,255);
      break;
    case WHITE:
      RGBcolorWrite(255,255,255);
      break;
    case YELLOW:
      RGBcolorWrite(255,200,0);
      break;
    default:
      RGBcolorWrite(0,0,0);
      break;
  }
}
