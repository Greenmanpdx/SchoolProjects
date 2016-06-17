#include "DIY.h"
#include <cstring>
#include <iostream>
#include <fstream>


using namespace std;

steps::steps()
{
	int step_number = 0;
	int part_count = 0;
	part_number = NULL;
}

parts::parts()
{
	int part_number = 0;
	int quality = 0;
	int numb_steps = 0;
	description = NULL;
	steps = NULL;
}

DIY::DIY()
{		
	
		part_head = new node;
		node * current;
		current = part_head;
		char temp[256];
		int convert;
		int length = 0;
		part_tail = new node;
		step_head = new step_node;
		step_node *current_step;
		current_step = step_head;
						
		for(int i = 1; i < 91; i++)
		{
			current_step->next_step = new step_node;
			current_step = current_step->next_step;
			current_step->step.step_number = i;
		}

		step_tail = current_step;
		current_step = step_head;

		

	ifstream part_list("parts.txt");
	while (part_list)
	{
		


		while (part_list.eof() == false)
		{
		
			part_list.getline(temp, 25, ':');
			length = part_list.gcount() - 1;
			for (int i = 0; i < length -1; i++)
			{
				convert = convert * 10 + (temp[i] - 48);
			}
			current->part.part_number = convert;

			part_list.getline(temp, 256, ':');
			length = part_list.gcount() - 1;
			current->part.description = new char[length];
			strcpy(current->part.description, temp);

			convert = 0;
			length = 0;
			part_list.getline(temp, 256, ':');
			length = part_list.gcount();
			for (int i = 0; i < length; i++)
			{
				convert = convert * 10 + (temp[i] - 48);
			}
			current->part.quantity = convert;

			convert = 0;
			length = 0;
			part_list.getline(temp, 256, ' ');
			length = part_list.gcount() - 1;
			for (int i = 0; i < length; i++)
			{
				convert = convert * 10 + (temp[i] - 48);
			}
			current->part.numb_steps = convert;
			part_list.getline(temp, 256, ':');

			bool more = true;
			current->part.steps = new int[convert];
			
			for (int count = 0; count < current->part.numb_steps; count++)
			{
				convert = 0;
				length = 0;
				part_list.getline(temp, 2, ':');
				length = part_list.gcount() - 1;
				for (int i = 0; i < length; i++)
				{
					convert = convert * 10 + (temp[i]-48);
				}
				current->part.steps[count] = convert;
			
				while(current_step->step.step_number < convert)
				{
					if(!current_step->next_step)
					{
						current_step->next_step = new step_node;
						step_tail = current_step->next_step;
						current_step->next_step->step.step_number = current_step->step.step_number + 1;
					}
					current_step = current_step->next_step;
				}

				current_step->step.part_number = new int[current_step->step.part_count];
				current_step->step.part_number[current_step->step.part_count] = convert;
				current_step->step.part_count++;				
				
								
			}
			part_tail = current;
			current->next = new node;
			current = current->next;
			
		}
		
		


	}
	
	

}

DIY::~DIY()
{
	
	node *current;
	current = new node;
	node *temp;
	temp = new node;
	current = part_head;
	delete part_head;
	

}


int DIY::Display_Parts()
{
	node * conductor;
	conductor = new node;
	conductor = part_head;
	do
	{
		cout << "Part Number: " << conductor->part.part_number << endl;
		
		cout << "Quantity: " << conductor->part.quantity << endl;

		cout << "Used in " << conductor->part.numb_steps << " steps." << endl;

		cout << "Steps used in: "; 
		for (int i = 0; i < conductor->part.numb_steps; i++)
			cout << conductor->part.steps[i] << ", ";
		cout << endl << endl;
		
		cout << "Description: " << conductor->part.description << endl << endl;

	} while (conductor != part_tail);
	
	return 1;
}

int DIY::Display_Steps()
{

	step_node * conductor;
	conductor = new step_node;
	conductor = step_head;

	cout << "Step Number" << "\t" << "| Number of Parts" << "\t" << "| Part Numbers" << endl;

	do
	{
		
		cout << conductor->step.step_number << "\t";

		cout << "| " << conductor->step.part_count << "\t";

		cout << "| ";
		for (int x = 0;x  > conductor->step.part_count; x++)
		{
			cout << conductor->step.part_number[x] << ", ";

		}
		cout << endl;
		conductor = conductor->next_step;
	}while (conductor != step_tail);

	return 1;
}

int main()
{
	int control = 0;
	int exit = 0;
	DIY diy;
	
	while(exit == 0)
	{
		cout << "Press 1 to display steps 2 to display parts. ";
		cin >> control;
		cin.ignore(100, '\n');

		switch (control)
		{

			case 1:
				int success;
				success = diy.Display_Steps();
				if (success == 1)
					exit = 0;
				else
					cout << "Fail";
			case 2:
				if (diy.Display_Parts() == 1)
					exit = 0;
				else
					cout << "Fail";
			default:
				break;
		}	
	
	}
}
