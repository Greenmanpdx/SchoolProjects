/*Jason Lingel
 *CS201
 *Homework 1
 */

#include <stdio.h>
#include <time.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#define MAXLINE 1000


int rungame();
int getLine(char word[]);

int main()
{
	printf("Welcome to the speed typing game.\n\n");
	printf("You will be given a series of words to type\n");
	printf("If you mistype a word you will be asked to try again\n");
	printf("After all 9 words are typed your time will be shown\n");
	printf("Good luck\n");
	

	char select;

	while(select != 'e')
	{
		printf("Type s to start, e to exit\n");
	
	
		select = getchar();
		switch(select)
		{
		
			case 's':
				rungame();
				break;

			case 'e':


			default:
				printf("Invalid entry, try again");
				break;


		}
	}
	return 0;
}


/*
Funciton Name:	rungame
Description: Starts the time, randoms the words, takes input, stops time
Arguments:	Void
Return Value: integer for error troubleshooting.
*/
int rungame()
{



	int order[9], i, a;
	char *currentWord;
	char typedWord[MAXLINE];
	
	time_t start, stop;
	
	start = time(NULL);
	
       	//creates an array of numbers 1-9	
	for (i = 0; i < 9; i++) 
	{    
		order[i] = i+1;
    
	}
	
	//shuffles the list
	for (i = 0; i < 9; i++) 
	{    

		int temp = order[i];
		int randomIndex = rand() % 9;

		order[i]           = order[randomIndex];
		order[randomIndex] = temp;
	}
	
	//assigns the words to the shuffled list
	for (i = 0; i < 9; i++)
	{
		int correct = 0;

		if(order[i] == 1)
			currentWord = "The";
		if(order[i] == 2)
			currentWord = "Quick";
		if(order[i] == 3)
			currentWord = "Brown";
		if(order[i] == 4)

			currentWord = "Fox";
		if(order[i] == 5)
			currentWord = "Jumps";
		if(order[i] == 6)
			currentWord = "Over";
		if(order[i] == 7)
			currentWord = "The";
		if(order[i] == 8)
			currentWord = "Lazy";
		if(order[i] == 9)
			currentWord = "Dog";
		
		//takes input and compares the strings
		while(correct == 0)
		{
			printf("%s\n", currentWord);

			a = getLine(typedWord);
			
			if (strcmp(currentWord, typedWord) != 0)
				printf ("Incorrect, try again\n");
			else
				correct = 1;
				
		}
	}
	stop = time(NULL);//stops the clock

	printf("Congratulations! Your time was %ld\n", (stop - start));//prints the score
	printf("Play again?\n");

	return 0;

}

/*
Funciton Name:	getLine
Description:	retrieves the input from the user
Arguments:	char word[]
Return Value: 	int for troubleshooting
*/
int getLine(char word[])
{
	char c;
	int i;
	

	for(i = 0; (c = getchar()) != EOF && c != '\n'; i++)
		word[i] = c;
	if (c == '\n')
	{
		word[i] = '\0';
		
	}
	

	return 0;
	
} 



