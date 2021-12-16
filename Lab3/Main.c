#include<stdio.h>
/*initialization*/
/* Input */
int ON;
double ench;
double encv;
int Emergency;
/* Output */
int MotorhOn;
int MotorvOn;
double Motorhsignal;
double Motorvsignal;
double e1 = 0;
double e1d = 0;
double e1i = 0;
double e2 = 0;
double e2d = 0;
double e2i = 0;

int main(){
/*system*/
ON = 1;
if(ON == 1){
    /*standby*/
    int motorcalibration = 0;
    int sensorcalibration = 0;
    double zeroPosh , zeroPosv;
    /*motor calibiration*/
    /* High */
    Motorhsignal = 2000;
    Motorvsignal = 2000;
    //delay(2);
    /* Low */
    Motorhsignal = 1000;
    Motorvsignal = 1000;
    /*FinishCalibrationMotor */
    int wv = 0;
    int wh = 0;
    motorcalibration = 1;
    /*sensor calibiration*/
    zeroPosh = ench;
    zeroPosv = encv;

    //delay(2);

    /*FinishCalibrationSensor */
     sensorcalibration = 1;

    /*Mainloop*/
    if(motorcalibration == 1 && sensorcalibration == 1){
    /*Startpositiontracking*/
    /*controller*/
    wh = 1000*e1 + e1i ; 
    wv = 1000*e2 + e2i ;

    }
}

return 0;
}