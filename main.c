#include "myMath.h"
#include <stdio.h>


void f1(double x){
    double result;
    double a=Exponent((int)x);
    double b=power(x,3);
    result=add(a,b-2);
    printf("the value of f(x)= e^x + x^3 -2 at the point %lf is %.4lf\n" , x ,result);
    
}

void f2(double x){
    double result;
    double a=mul(3,(float)x);
    double b=power(x,3);
    b=mul(2,b);
    result=add(a,b);
    printf("the value of f(x)= 3x + 2x^2 at the point %lf is %.4lf\n" , x ,result);

}

void f3(double x){
    double result;
    double a=power(x ,3);
    a=mul(4,a);
    double b=mul(-2,x);
    b=sub(5,b);
    result=div(a,b);
    printf("the value of f(x)= 4x^3/5-2x at the point %lf is %.4lf\n" , x ,result);

}

int main () {
    double x;
    printf("please insert a real number\n");
    scanf("%lf" , &x);
    f1(x);
    f2(x);
    f3(x);

    return 0;

}


