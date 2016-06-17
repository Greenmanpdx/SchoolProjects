/*
 Jason Lingel
 Program 4
 BST
 CS163
 */


#include <cstring>
#include <iostream>

using namespace std;

struct Keywords
{
	Keywords();
	~Keywords();
	char * keyword;
	
};

struct application
{
	application();
	~application();
	char * name;
	Keywords * keywords;
	char * description;
	int rating;
	int number_keywords;
};

struct node
{
	node();
	~node();
	node * left;
	node * right;
	application * match;
	char * keyword;
	int key;
};

struct list_node
{
	list_node();
	~list_node();
	list_node * next;
	application * app;
};







class Tree
{
	public:
		Tree();
		~Tree();

/*
Funciton Name:	create_key
Description:	creates a number from adding the acii values of a keyword
Arguments:		char keyword
Return Value:	integer
*/
	int	create_key(char * keyword);

/*
Funciton Name:	add_app
Description:	adds a record for an application, then adds nodes in the BST for each keyword.
Arguments:		char name, Keywords array, char description, int rating, int number of keywords.
Return Value: integer for successful.
*/
	int	add_app(char * name, Keywords key_array[], char * description, int rating, int number_keywords);

	/*
Funciton Name:	add_node
Description:	called by add_app, takes a keyword and puts a node in the BST
Arguments:		char keyword, pointer to an application
Return Value:	int for succsessful.
*/
	int	add_node(char * keyword, application * app);

/*
Funciton Name: add_node
Description:	overloaded version
Arguments:		recursive call for add_node
Return Value:	int for success
*/
	int add_node(char * keyword, application * app, node * &root, int key);

/*
Funciton Name:	add_node
Description:	overloaded for moving nodes after its parent has been deleted.
Arguments:		node root and node temp
Return Value:	int for success
*/
	int add_node(node * root, node * temp);

/*
Funciton Name:	retrieve
Description:	creates a linear linked list of apps with matching keywords	
Arguments:		char keyword, node temp
Return Value:	int for number of matches
*/
	int	retrieve(char * keyword, list_node *& match_list);

/*
Funciton Name:	retrieve
Description:	overloaded version for recursive call
Arguments:		char keyword, list_node first match, node root, int key
Return Value:	int for number of matches
*/
	int	retrieve(char * keyword, list_node *& first_match, node * root, int key);

/*
Funciton Name:	display
Description:	calls retrieve thendisplays the number of matches then calls overloaded display	
Arguments:		char keyword
Return Value:	number of matches
*/
	int	display(char * keyword);

/*
Funciton Name:	display
Description:	creates LLL for display all
Arguments:		node root, list_node match_list
Return Value:	int number of matches	
*/
	int display(node * root, list_node * &match_list);

/*
Funciton Name:	display
Description:	displays a LLL
Arguments:		list_node match_list
Return Value:	int for successs
*/	
	int display(list_node * match_list);

/*
Funciton Name:	display_all
Description:	used to display all of the BST
Arguments:		none
Return Value:	int for successs
*/
	int	display_all();

	/*
Funciton Name:	remove
Description:	creates and acts on a table of codes to handle removal of individual nodes	
Arguments:		 char keyword
Return Value:	int if successsful
*/
	int remove( char * keyword);

/*
Funciton Name:	remove
Description:	overloaded for recursive call
Arguments:		char keyword, node root
Return Value:	int for code
*/

	int remove(char * keyword, node * &root);

/*
Funciton Name:	remove_all
Description:	deletes the BST
Arguments:		node root
Return Value:	void
*/		
	
	
	void remove_all(node * &root);


	private:
		
		
		node * root;//root of the bst
		
};
