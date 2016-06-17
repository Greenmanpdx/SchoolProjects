/*This is the main for the food cart app. It takes all the user inputs and calls the service functions.

*/
#include "foodcart.h"

using namespace std;

int main()
{
	int selection = 1;//user input
	Queue queue;//creates a instance of Queue
	Stack stack(5);//creates a stack array
	Service service;//starts the service class
    while(selection != 6)
	{
		cout << "Welcome to the Foodcart App" << endl << endl 
<< "Make a selection" << endl << "1. New customer" << endl << "2. Order Up" << endl << "3. View orders" << endl << "4. View stats" << endl << "5. Close shop" << endl;
	
		cin >> selection;

		switch(selection)
		{
			case 1:
							
				if(service.add_order(queue) == 1)
					cout << "Order added successfully. " << endl;	
				else
					
					cout << "Error entering order" << endl;

				queue.display();
					
				break;
			case 2:
				double minutes;
				cin.ignore();
				minutes = service.order_up(queue, stack);
				if(minutes == 0)
				
					cout << "There were no orders" << endl;
				
				
				
				else
					cout << "Order time was " << (minutes/60) << " minutes" << endl;

				queue.display();
				
				break;

			case 3:

				service.view_orders(queue);
				break;

			case 4:
				service.view_stats(stack);
				break;

			case 5:
				service.close_shop(stack);
				selection = 6;
				break;

		}
	}


}
