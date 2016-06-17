#include <cstring>
#include <iostream>

using namespace std;

struct Keywords
{
	Keywords();
	char * keyword;
	
};

struct application
{
	application();
	char * name;
	Keywords * keywords;
	char * description;
	int rating;
	int number_keywords;
};

struct node
{
	node * next;
	application * match;
	char * keyword;
};

struct Hash_Table
{
	node * head;
	Hash_Table();

};





class Hash
{
	public:
		Hash();
		~Hash();
	int	create_key(char * keyword);
	int	add_app(char * name, Keywords key_array[], char * description, int rating, int number_keywords);
	int	add_node(char * keyword, application * app);
	int	retrieve(char * keyword, node *& first_match);
	int	display(char * keyword);
	void	display_all();
	


	private:
		
		
		Hash_Table * hash_table;
		
};
