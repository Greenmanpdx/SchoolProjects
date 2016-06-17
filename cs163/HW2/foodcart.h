#include<time.h>
#include <cstring>
#include <iostream>
#include <cmath>


struct Customers
{
	char * name;// customer name
	char * order;//customer order
	time_t time_in;//time stamp
	

};

struct queue_node
{
	Customers customer;
	queue_node * next;
};



class Queue
{
	private:
		
		
		queue_node * rear;
		friend class Service;	

	public:
		Queue();
		~Queue();

		int enqueue(char * name, int name_length, char * order, int order_length);
		double dequeue();
		int search(const char * name, time_t time_ordered);
		int display();
		
		

};

struct Statistics
{
	double high_time;//highest wait time
	double average_time;//average wait time
};

struct head_node
{
	Statistics * stats;
	head_node * head_previous;
	
	head_node();
	head_node(int size);
};
	

class Stack
{
	private:
		
	int top;//used to increment the stack array
	head_node * head;
	int count;//counts the number of nodes of arrays created
	friend class Service;	
		

	public:
		

		Stack();
		Stack(int size);
		~Stack();


		int push(double average_time, double high);
		int pop(void);
		
		double peek(void);
		double peek(double average);

		

};



class Service
{
	private:
		int total_customers;//total customers throughout the day
		double total_time;//total customer waiting time in seconds

		friend class Queue;
		double average_time;//average waiting time in seconds
		

	public:
		Service();
		~Service();

		int add_order(Queue &queue);
		double order_up(Queue &queue, Stack &stack);
		
		int view_orders(Queue &queue);
		int view_stats(Stack &stack);
		int close_shop(Stack &stack);
};

