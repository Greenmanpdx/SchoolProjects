#include <stdio.h>
#include <stdlib.h>




int main(int argc, char *argv[])
{
	long size;
	
	if(argc != 2)
	{
		printf("usage: %s filename", argv[0]);
	
	}
	else
	{
		
		

	
		FILE *file = fopen(argv[1], "r");
		

		char *buffer = NULL;
		fseek(file, 0, SEEK_END);
		size = ftell (file);
		rewind (file);
		buffer = (char *) malloc(sizeof(char)*size+1); // create the buffer with null terminator
		
		fread(buffer, 1, size, file);
		buffer[size+1] = '\0';
		
		int i;

		//Swapping characters 1 and 3
		for(i = 0; i < size; i = i + 4)
		{	
			char * temp_ptr;
			temp_ptr =  (buffer + i);
			
			char temp_1;
			temp_1 = *temp_ptr;
			*temp_ptr = *(temp_ptr +2);
			 *(temp_ptr +2) = temp_1;
			

		}
		
		//swapping bit 7 with bit 3 and 6 with 2 of each character
		for(i = 0; i < size; i++)
		{
			if((((*(buffer + i) & (1 << 7)) >> 7) ^ ((*(buffer + i) & (1 << 3)) >> 3)) )//Test if the bits are the diferent
		
			{
				*(buffer + i) ^= ( 1<<7 );//swap bits
				*(buffer + i) ^= ( 1<<3 );
			}

			if((((*(buffer + i) & (1 << 6)) >> 6) ^ ((*(buffer + i) & (1 << 2)) >> 2)) )
	
			{
				*(buffer + i) ^= ( 1<<6 );
				*(buffer + i) ^= ( 1<<2 );
			}

		}
		
		for(i = 0; i < size; i = i +4)
		{
			*(buffer+(i+1)) =*(buffer+(i+1)) ^ 'n';
			*(buffer+(i+3)) = *(buffer+(i+3)) ^ 'n';
		}

		printf("%s\n",buffer);	

		fclose(file);
		free(buffer);
	}






return 0;

}
