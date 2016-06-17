#include "graph.h"

using namespace std;

node::node()
{

	next = NULL;
	dest = 0;
}

node::~node()
{
	next = NULL;
	dest = 0;
}

adj_list::adj_list()
{
	head = NULL;
	title = NULL;
}

adj_list::~adj_list()
{
	head = NULL;
	delete [] title;
}

Graph::Graph()
{
	list_size = 10;
	array = new adj_list[list_size];
}
Graph::~Graph()
{
	
	for(int i = 0; i < list_size; i++)
	{
		delete_list(array[i].head);
			

	}
	delete [] array;	
}
int Graph::delete_list(node * &root)
{
	if(!root)
		return 0;
	node * temp;
	temp = root->next;
	
	delete root;
	delete_list(temp);	
}

int Graph::make_edge(ifstream& in_file, node * &root)
{
	char temp[256] = {0};
	int k = 0;
	if(in_file.peek() == '\n')
	{
		in_file.ignore(100, '\n');
		return 0;
	}
	in_file.getline(temp, 256, ':');
	int length = in_file.gcount() -1;
//	in_file >> k;
	
		
	root = new node;
	
	int convert = 0;
	for (int i = 0; i < length; i++)
	{
		convert = convert * 10 + (temp[i] - 48);
	}

	root->dest = convert;

	make_edge(in_file, root->next);
	return 1;

}
int Graph::build_graph()
{
	ifstream in_file;
	in_file.open("paint.txt");
	char temp[30]={0};
	int length = 0;
	int d = 0;
	int convert = 0;

	while(in_file.eof() == false)
	{	
			
		array[d].head = new node;
		in_file.getline(temp, 30, ':');
		length = strlen(temp) + 1;
		array[d].title = new char[length];
		strcpy(array[d].title, temp);
		
			
		make_edge(in_file, array[d].head->next);
		in_file.peek();
		++d;
			
	}
	in_file.close();
	
}


int Graph::display_list(int dest)
{
	cout << endl  << array[dest].title << ". Steps that can be taken after this are: ";

	display(array[dest].head->next);
}

int Graph::display(node * root)
{
	if(!root)
	{
		cout << "." << endl << endl;
		return 0;
	}
	cout << array[root->dest].title << ", ";
	display(root->next);
	return 1;
}

int Graph::display_graph()
{
	cout << "Steps for painting a house" << endl << endl;

	display_next(0);	
}

int Graph::display_next(int dest)
{
	if(dest >= 10)
		return 0;
	cout << "Step " << (dest + 1) << ": " << array[dest].title << " which leads to: ";
	display(array[dest].head->next);
	
	++dest;
	display_next(dest);
	

	return 0;
	
}

