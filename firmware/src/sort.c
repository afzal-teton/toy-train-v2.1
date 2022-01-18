#include "sort.h"

void swap(uint16_t *xp, uint16_t *yp) 
{ 
    uint16_t temp = *xp; 
    *xp = *yp; 
    *yp = temp; 
} 

void bubbleSort(uint16_t arr[], int n)
{
   int i, j;
   bool swapped;
   for (i = 0; i < n-1; i++)
   {
     swapped = false;
     for (j = 0; j < n-i-1; j++)
     {
        if (arr[j] > arr[j+1])
        {
           swap(&arr[j], &arr[j+1]);
           swapped = true;
        }
     }
     if (swapped == false)
        break;
   }
}