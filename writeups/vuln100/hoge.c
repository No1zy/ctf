#include<stdio.h>
#include<string.h>
void main(int c)
{
	char buf[] = "AAA";
	//char *buf[2];
	//read(1,buf,sizeof(buf));
	int len = strlen(buf);
	printf("buf is %dbyte\n",len);
	printf("Hi,%.*s. bye.", sizeof(buf)-1, buf);
}
