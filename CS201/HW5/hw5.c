/*
 * Jason Lingel
 * CS 201 HW5
 */

#include <stdio.h>
#include <stdlib.h>
#include <limits.h>

typedef struct
{
   int time;
   int valid;
   unsigned int tag_ram;
} Line;//My lines

typedef struct
{
   Line * lines;
}Set;//sets of lines

typedef struct
{
   Set * sets;
}Cache;//The Cache



int main(int argc, char * argv[])
{

	//Check if the arguments are correct
	if(argc != 6)
	{
		fprintf(stderr, "Please us these parameters:  hw5 <S> <E> <B> <H> <M>\n");
			exit(1);
	}

	//Most of my variables.
	int S = atoi(argv[1]);
	int E = atoi(argv[2]);
	int B = atoi(argv[3]);
	int H = atoi(argv[4]);
	int M = atoi(argv[5]);
	int byte_off = 0;
	int num_bits = 0;
	int is_empty = -1;
	int hit = 0;
	int evict = 0;
	int hit_count = 0;
	int miss_count = 0;
	int eviction_count = 0;
	int LRU = 0;
	int i = 0;
	int j = 0;
	int k = 0;
	unsigned int a = 0;

	//byte offset
	i = B;
	while (i != 1)
	{
		i = i/2;
		++byte_off;
	}

	//number of bits for offest
	i = S * E;
	while (i != 1)
	{
		i = i/2;
		++num_bits;
	}

	Cache L1;//my faux L1 cache

	L1.sets = (Set *) malloc ( S * sizeof (Set));
	for (i=0; i<S; i++)
	{
		L1.sets[i].lines = (Line *) malloc (sizeof(Line));
	}


	while(j != EOF)
	{
		//read the memory traces
		j = scanf(" %x", &a);
		if(j == EOF)
		{
			break;
		}
		if(j != 1)
		{
			fprintf(stderr, "Error with input!");
			break;
		}
	
		evict = 0;

		unsigned int address_tag = a >> (num_bits + byte_off);
		unsigned int setid = a >> (byte_off);

		Set set = L1.sets[setid];
		int low = INT_MAX;

		for (k = 0; k<E; k++)
		{
			//hit?
			if (set.lines[k].tag_ram ==1)
			{
				if(set.lines[k].tag_ram == address_tag)
				{
					++hit_count;
					hit = 1;
					set.lines[k].time = LRU;
					++LRU;
				}

				else if (set.lines[k].time < low)
				{

					low = set.lines[k].time;
					evict = k;
				}
			}
			//empty?
			else if (is_empty == -1)
			{
				is_empty = k;
			}
		}
		//misses
		if(hit !=1)
		{

			++miss_count;
			//is there room
			if( is_empty > -1)
			{

				set.lines[is_empty].valid = 1;
           		 	set.lines[is_empty].tag_ram = address_tag;
            			set.lines[is_empty].time = LRU;
            			++LRU;
			}
			//No room, make some
			else if ( is_empty < 0)
         		{
            			set.lines[evict].tag_ram = address_tag;
           	 		set.lines[evict].time = LRU;
            			++LRU;
            			++eviction_count;
          		}
      		}
		is_empty = -1;
		hit = 0;

	}

	
	double b;
	int tot_cycles;

	b= ((double) miss_count)/(hit_count+miss_count) *100;

	tot_cycles = (miss_count * M) + (H * hit_count);

	

	printf(" There were:\n %d hits\n%d misses\nWith a miss rate of %d %\n with %d total cycles\n", hit_count, miss_count, b, tot_cycles);


	return 0;
}







	
