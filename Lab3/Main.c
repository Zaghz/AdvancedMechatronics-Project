#include<stdio.h>
#include <time.h>
/*initialization*/
/* Input */
int ON;
double ench;
double encv;
int Emergency;
double desh; //desired horizontal angle
double desv; //desired vertical angle
/* Output */
int MotorhOn;
int MotorvOn;
double Motorhsignal;
double Motorvsignal;
double e1 = 0;
double e1i = 0;
double e2 = 0;
double e2i = 0;
int x;
int i =1;
int wv;
int wh;
int motorcalibration ;
int sensorcalibration ;
double zeroPosh , zeroPosv;

void delay(int number_of_seconds)
{
    // Converting time into milli_seconds
    int milli_seconds = 1000 * number_of_seconds;
  
    // Storing start time
    clock_t start_time = clock();
  
    // looping till required time is not achieved
    while (clock() < start_time + milli_seconds)
        ;
}
int main(){
/*system*/
printf("Enter a desired horizontal angle: ");
scanf("%d", &desh);
printf("Enter a desired vertical angle: ");
scanf("%d", &desv);
ON = 1;
if(ON == 1){
    /*standby*/
    motorcalibration = 0;
    sensorcalibration = 0;
    /*motor calibiration*/
    /* High */
    Motorhsignal = 2000;
    Motorvsignal = 2000;
    delay(2);
    /* Low */
    Motorhsignal = 1000;
    Motorvsignal = 1000;
    /*FinishCalibrationMotor */
    wv = 0;
    wh = 0;
    motorcalibration = 1;
    /*sensor calibiration*/
    zeroPosh = ench;
    zeroPosv = encv;

    delay(2);

    /*FinishCalibrationSensor */
     sensorcalibration = 1;

    /*Mainloop*/
    if(motorcalibration == 1 && sensorcalibration == 1){
    /*Startpositiontracking*/
    /*controller*/
    while (x==1){  
    e1 =  desh - ench;
    e2 =  desv - encv;
    e1i = (e1 + e1i)/i;
    e2i = (e2 + e2i)/i;
    wh = 1000*e1 + e1i ; 
    wv = 1000*e2 + e2i ;
    i = i+1;
    }

    }
}

return 0;
}