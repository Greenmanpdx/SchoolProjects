






#include <stdio.h>
#include <stdlib.h>
//#include "hw4main.c"
void print_value(long a);

void recover()
{
	unsigned long i = 7;
	int j = 0;
	unsigned long * test = 0;

	test = (unsigned long*)&test;
	unsigned long count = (*(test+9)+1)*6; //increment of the variable sets in the stack
	unsigned long length = (*(test+9)+1)*3; //length of the array
	long list[length]; //array for switcing the order.

	//store the values in the array
	for(i=5; i<count+7; i=i+6)
	{
		list[j] = *(test+i);
		j++;
		list[j] = *(test+i+2);
		j++;
		list[j] = *(test+i+1);
		j++;	
			
	}

	//print them in the correct order
	for(j=length-1; j>0; j=j-3)
	{
		printf("foo called with args \n");
		printf("a: ");
		print_value(list[j-2]);
		printf("\nb: ");
		print_value(list[j-1]);
		printf("\nc: ");
		print_value(list[j]);
		printf("\n\n");
		

	}
	
	
}

//takes the long from recover and uses putchar to print it
void print_value(long a)
{
//	printf("%lx\n", a);
	unsigned long temp = a;
	unsigned long mask = 15;
	unsigned char this_char;
	int i =0;

	for(i=15; i>=0; i--)
	{
		temp = a;
		int j = 4 * i;
		temp = temp >> j;
		this_char = mask & temp;
		if(this_char<10)
			putchar(this_char +48);
		else
			putchar(this_char+87);
	}

	
}

