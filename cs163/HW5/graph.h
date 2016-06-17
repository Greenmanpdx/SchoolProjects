/*
 Jason Lingel
 Program 
 adjacency list
 CS163
 */


#include <cstring>
#include <iostream>
#include <fstream>

using namespace std;

struct node
{
	
	node * next;
	int dest;
	node ();
	~node();
};

struct adj_list
{
	node * head;
	char * title;
	adj_list();
	~adj_list();
};

class Graph
{
	private:
	int list_size;
	adj_list * array;

	public:

	Graph();
	~Graph();
	int delete_list(node * &root);

	int build_graph();

	int display_list(int dest);

	int display(node * root);
	
	int display_graph();

	int make_edge(ifstream& in_file, node * &root);

	int display_next(int dest);
	
	

};

