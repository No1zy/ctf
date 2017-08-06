#include<stdio.h>

void main(){
    char buf[10];
    fgets(&buf, 100, stdin);
    system(buf);
}
