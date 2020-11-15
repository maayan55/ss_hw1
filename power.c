#include "myMath.h"

#define E 2.71828182846;

 double Exponent(int x) {
     double e = E;
     double result= power(e,x);
     return result;

 }

 double power(double x , int y){
     double result=1;
     int i;
     for(i=0;i<y;i++) {
         result= result*x;
     }
     return result;
 }


