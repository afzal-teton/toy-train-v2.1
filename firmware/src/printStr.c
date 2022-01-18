#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include "printStr.h"
#include "definitions.h"


void print_int(uint16_t value, uint16_t size){
    uint8_t buff[size+1];
    itoa(value, buff, 10);
    strcat(buff, "\n");
    SERCOM0_USART_Write(buff, size+1);

}