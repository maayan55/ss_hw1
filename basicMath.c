#include "myMath.h"
#include <stdio.h>


float add(float x, float y) {
    return x+y;

}

float sub( float x , float y) {
    return x-y;
}

float mul(double x ,double y){
     return x*y;
}

float div(double x , double y){
    if (y==0) {
        printf("can not divide in 0");
        return -1;
    }
    return x/y;
}

