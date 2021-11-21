#include <stdio.h>

int main(){
    int a;
    scanf("%d",&a);
    while (a<0)
    {
        if(a<0){
            printf("Please enter a positive number\n");
        }
        scanf("%d",&a);
    }
        printf("You entered %d\n",a);
    while (a>0)
    {
        printf("Count Down %d\n",a);
        a--;
    }
    return 0;
}