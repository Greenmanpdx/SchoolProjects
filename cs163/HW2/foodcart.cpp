/*
This is the class cpp.
*/
#include "foodcart.h"

using namespace std;
/*
Funciton Name: Queue
Description: constructor for Queue class
Arguments: None
Return Value: None
*/
Queue::Queue()
{
	rear = new queue_node;
	rear->next = NULL;

}
/*
Funciton Name: enqueue
Description: Adds a customer and order to the queue
Arguments: Name of customer, length of their name, Order and length of order string
Return Value: int for testing
*/
int Queue::enqueue(char * name, int name_length, char * order, int order_length)
{
	time_t current_time;//Time stamp when an order is placed

	if(!rear)
		return 0;

	if(rear->next == NULL)
	{
		current_time = time(NULL);

		rear->customer.name = new char[name_length];
		strcpy(rear->customer.name, name);
		
		rear->customer.order = new char[order_length];
		strcpy(rear->customer.order, order);
		
		rear->customer.time_in = current_time; 
		
		rear->next = rear;
		
		return 1;
	

	}

	if(rear->next == rear)
	{
		queue_node * last;	
		
		time(&current_time);

		last = new queue_node;
		last->next = rear;

		rear->next = last;
		rear = last;

		rear->customer.name = new char[name_length];
		strcpy(rear->customer.name, name);
		
		rear->customer.order = new char[order_length];
		strcpy(rear->customer.order, order);

		rear->customer.time_in = current_time; 
		
		return 1;

	}

	else
	{

		current_time = time(NULL);
		queue_node * last;
		last = new queue_node;
		
		last->next = rear->next;
		rear->next = last;
		rear = last;
		
		rear->customer.name = new char[name_length];
		strcpy(rear->customer.name, name);
		
		rear->customer.order = new char[order_length];
		strcpy(rear->customer.order, order);

		rear->customer.time_in = current_time; 
		
		return 1;

	}


}
/*
Funciton Name: dequeue
Description: Removes the customer/order from the front of the queue
Arguments: None
Return Value: returns the time it took for the customer to get their order as a double
*/
double Queue::dequeue()
{
	time_t now;//Time stamp for when the order is filled
	double order_time;//time it took to get the order in seconds

	if(rear->next ==  NULL)
		return 0;
	
	if(rear->next == rear)
	{
		
		time(&now);
		order_time = difftime(now, rear->customer.time_in);
		delete rear;
		rear = new queue_node;
		rear->next = NULL;

		return order_time;		
	}

	if(rear->next->next == rear)
	{
		time(&now);
		order_time = difftime(now, rear->customer.time_in);
		queue_node * first;
		first = rear->next;
		rear->next = rear;
		delete first;
		return order_time;
	}
	else
	{
		time(&now);
		order_time = difftime(now, rear->customer.time_in);
		
		queue_node * first;
		
		first = rear->next;
		rear->next = first->next;
		
		delete first;
		return order_time;

	}

}


/*
Funciton Name: display
Description: displayes the current state of the queue
Arguments: None
Return Value: int for testing
*/
int Queue::display()
{
	cout << "The current queue looks like: " << endl << endl;
	
	if(rear->next == NULL)
		cout << "There are no orders waiting" << endl;
	else
	{
		queue_node * current;
		current = rear->next;
		do
		{
			time_t now;
			time(&now);
			double seconds;
			seconds = difftime(now, current->customer.time_in);
			cout << "Customer: " << current->customer.name << endl
			 << "Order: " << current->customer.order << endl
			 << "Waiting for: " << (seconds/60) << "minutes" << endl << endl;
			current = current->next;
		
		
		}while(current != rear->next);
	}	
}

/*
Funciton Name: ~Queue
Description: destructor for the Queue class
Arguments: None
Return Value: None
*/
Queue::~Queue()
{
	queue_node * temp1;
	queue_node * temp2;
	if(rear->next != NULL)
	{
		temp2 = rear->next;
		while(temp2->next != rear)
		{
	  		temp1 = temp2->next;
			delete temp2;
			temp2 = temp1;
		}
	}
	delete rear;
}

/*
Funciton Name: head_node
Description: Constructor for the head_node, creates as array of Statistics
Arguments: none
Return Value: none
*/
head_node::head_node()
{
	stats = new Statistics [5];
	head_previous = NULL;
	
}

/*
Funciton Name: head_node
Description: overloaded constructor to satisfy dynamically allocating the array.
Arguments: int size
Return Value: none
*/
head_node::head_node(int size)
{
	stats = new Statistics [size];
	
	head_previous = NULL;

}

/*
Funciton Name: Stack 
Description:constructor for the stack
Arguments:None
Return Value: None
*/
Stack::Stack()
{	
	int size = 5;
	head = new head_node(size);
	top = 0;
	count =1;		
}

/*
Funciton Name: Stack
Description: Overloaded constructor for the stack
Arguments: int size
Return Value:none
*/
Stack::Stack(int size)
{
	head = new head_node(size);
	top = 0;
	count = 1;
}

/*
Funciton Name: ~Stack
Description: Destructor for the stack
Arguments: none
Return Value: none
*/
Stack::~Stack()
{
	head_node * temp;

	while(temp)
	{
		temp = head->head_previous;
		delete head;
		head = temp;
		
	}
	
}


/*
Funciton Name: push
Description: Adds to the stack
Arguments: average_time and high time
Return Value: int for testing
*/
int Stack::push(double average_time, double high)
{	
	if(top < 4)
	{
		head->stats[top].high_time = high;

		head->stats[top].average_time = average_time;

		++top;

		return 1;		
	}
	
	if(top == 5)
	{
		head_node * temp;
		temp = new head_node;
		temp->head_previous = head;
		head = temp;
		top = 0;
		++count;

		head->stats[top].high_time = high;

		head->stats[top].average_time = average_time;
		++top;

		return 1;	
		
	}
	else return 0;
}

/*
Funciton Name: pop
Description: Takes the top off the stack
Arguments: void
Return Value: int for testing
*/
int Stack::pop(void)
{
	if(top == 0)
	{
		if(count == 1)
			return 0;
		head_node *temp;
		temp = head;
		head = head->head_previous;
		delete temp;
		
		top = 5;
		--count;
		return 1;
	}
	else
	{	
		head->stats[top].high_time = 0;
		head->stats[top].average_time = 0;
		--top;
		return 1;
	}	
		
	

}

/*
Funciton Name: peek
Description: Looks at the top of the stack
Arguments: none
Return Value: The highest wait time 
*/
double Stack::peek(void)
{
	if(count == 1 && top == 0)
		return 0;
	else
	
		return head->stats[top-1].high_time;
	

}

/*
Funciton Name: peek
Description: overloaded peek function so that the average wait time can be passed
Arguments: average
Return Value: the highest wait time
*/
double Stack::peek(double average)
{
	if(count == 1 && top == 0)
		return 0;
	else
	{
		average = head->stats[top-1].average_time;
		return head->stats[top-1].high_time;
	}
}

/*
Funciton Name: Service
Description: constructor for the Service Class
Arguments: none
Return Value: none
*/
Service::Service()
{
	total_customers = 0;//Total of customers through out the life of the program
	total_time = 0.0;//The total wait time from all customers
	average_time = 0.0;//The average wait time per customer

}

/*
Funciton Name: ~Service
Description: destructor for service
Arguments: None
Return Value: None
*/
Service::~Service()
{

}

/*
Funciton Name: add_order
Description: Takes user inputs and calls the enqueue function
Arguments: queue
Return Value:int for testing
*/
int Service::add_order(Queue &queue)
{	
		char * name;
		char * order;
		char temp_name[256];
		char temp_order[256];
		int name_length, order_length;
		int ordered;

		cin.ignore();
		cout << "Enter the cusotmer's name" << endl;
		cin.getline(temp_name, 256);
		name_length = strlen(temp_name);
		name = new char[name_length];
		strcpy(name, temp_name);
				
				
		cout << endl << "Enter the customer's order" << endl;

		cin.getline(temp_order, 256);
		order_length = strlen(temp_order);
		order = new char[order_length];
		strcpy(order, temp_order);

		ordered = queue.enqueue(name, name_length, order, order_length);		  ++total_customers;

		return ordered;
}

/*
Funciton Name: order_up
Description: for when a customer's order is picked up. calls dequeue, peek, push and pop
Arguments: queue and stack
Return Value: time customer waited for order in seconds
*/
 double Service::order_up(Queue &queue, Stack &stack)
{
	double order_time = 0.0;//Time it took customer to get their order
	double current_high = 0.0;//Highest wait time of the day
	order_time = queue.dequeue();
	if(order_time == 0.0)
		return 0;

	
	total_time = total_time + order_time;
	average_time = (total_time/total_customers);
	current_high = stack.peek();
	if(current_high < order_time)
	{	
		
		stack.push(average_time,order_time);
		
	}
	else
	{
		stack.pop();
		stack.push(average_time, current_high);
	
	}
	return order_time;
}

/*
Funciton Name: view_orders
Description:calls the display function
Arguments: queue
Return Value: in for testing
*/
int Service::view_orders(Queue &queue)
{
	return queue.display();
	
}

/*
Funciton Name: view_stats
Description: Peeks at the top of the stack and displays the stats.
Arguments: stack
Return Value: int for testing.
*/
int Service::view_stats(Stack &stack)
{
	double highest_time;
	//double average_time;
	
	if(total_customers < 1)
		return 0;
			
	highest_time = stack.peek(average_time);
	cout << "Longest wait time: " << (highest_time/60) << endl;
	cout << "Average wait time: " << (average_time/60) << endl << endl;
	
	
}

/*
Funciton Name: close_shop
Description: Ends the programs and displays statistics for the day
Arguments: stack
Return Value: int for testing
*/
int Service::close_shop(Stack &stack)
{
	cout << "Total Customers Today: " << total_customers << endl
	     << "Time open: " << (total_time/60) << " minutes" << endl;
	view_stats(stack);
	cout << "Have a nice day" << endl << endl;
}



