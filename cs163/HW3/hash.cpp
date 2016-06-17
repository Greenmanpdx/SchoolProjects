#include "hash.h"

const int table_size = 11;

Hash_Table::Hash_Table()
{
	head = NULL;
}

Hash::Hash()
{
	
	hash_table = new Hash_Table[table_size];
	
	
}

application::application()
{
	name = NULL;
	keywords = NULL;
	description = NULL;
	rating = 0;
	number_keywords = 0;
}

Keywords::Keywords()
{
	keyword = NULL;
}

int Hash::add_app(char * title, Keywords key_array[], char * description, int rating, int number_keywords)
{
	application * app;
	app = new application;

	int name_size = 0;
	int kw_array_size = 0;
	int kw_size = 0; 
	int desc_size= 0;
	
	name_size = strlen(title);
	app->name = new char[name_size+1];
	strcpy(app->name, title);


	app->number_keywords = number_keywords;
	app->keywords = new Keywords[kw_array_size];

	for(int i = 0; i < number_keywords; i++)
	{
		kw_size = strlen(key_array[i].keyword);
		app->keywords[i].keyword = new char[kw_size+1];
		strcpy(app->keywords[i].keyword, key_array[i].keyword);
		add_node(app->keywords[i].keyword, app);
		
	}

	desc_size = strlen(description);
	app->description = new char[desc_size+1];
	strcpy(app->description, description);

	app->rating = rating;

	return 1;



}

int Hash::add_node(char * keyword, application * app)
{
	int key = create_key(keyword);

		node * current;
		current = new node;
		current->match = app;
		current->next = hash_table[key].head;
		hash_table[key].head = current;
		int size = strlen(keyword);
		current->keyword = new char[size+1];
		strcpy(current->keyword, keyword);

	return 1;
	
	
}

int Hash::create_key(char * keyword)
{
	int size = strlen(keyword);
	int key= 1;
	for(int i = 0; i < size; i++)
		key = keyword[i] * key;

	return key % table_size;


}

int Hash::retrieve(char * keyword, node *& first_match)
{
	int key = create_key(keyword);
	int numb_matches = 0;
	if(hash_table[key].head == NULL)
		return numb_matches;


	node * match_list;
	match_list = new node;
	node * current;
	current = hash_table[key].head;
			if(strcmp(current->keyword, keyword) == 0)
	{
			match_list->match = current->match;
			++numb_matches;
	

		first_match = match_list;
		current = current->next;

		while(current)
		{
			if(strcmp(current->keyword, keyword) == 0)
			{
				match_list->next = new node;
				match_list = match_list->next;
				match_list->match = current->match;
				++numb_matches;
			}
		
			current = current->next;

			if(current == NULL)
				return numb_matches;
		}

	}
	return numb_matches;
	
}

int Hash::display(char * keyword)
{
	int key = create_key(keyword);
	int numb_matches = 0;
	application * match;
	int kw_array_size = 0;

	node * first_match;

	numb_matches = retrieve(keyword, first_match);

	if(numb_matches == 0)
		return 0;

	node * current;
	current = first_match;
	cout << "There were " << numb_matches << " apps with that keyword" << endl << endl;
	while(current)
	{		
			cout << "Hash: " << key << endl;
			cout << "App: " << current->match->name << endl;

			cout << "Description: " << current->match->description << endl;
			
			kw_array_size = current->match->number_keywords;
			for(int i = 0; i < kw_array_size -1; i++)
			{
				cout << "Keyword: " << current->match->keywords[i].keyword << endl;
			}

			cout << "Rating: " << current->match->rating << endl << endl;
			
		
		current = current->next;

		if(current == NULL)
			return numb_matches;

	}
	return numb_matches;


}

void Hash::display_all()
{	
	int kw_array_size = 0;
	for(int i = 0; i < table_size; i++)
	{
		if(hash_table[i].head != NULL)
		{
			node * current;
			current = hash_table[i].head;
			while(current)
			{
				cout << "Hash: "<< i << endl;
				cout << "App: " << current->match->name << endl;

				cout << "Description: " << current->match->description << endl;
					
				kw_array_size = current->match->number_keywords;
				for(int k = 0; k < kw_array_size -1; k++)
				{
					cout << "Keyword: " << current->match->keywords[k].keyword << endl;
				}

				cout << "Rating: " << current->match->rating << endl << endl;
			
		
				current = current->next;

			}
		}
	}
}

Hash::~Hash()
{
	for(int i = 0; i < table_size; i++)
	{	
		if(hash_table[i].head != NULL)
		{
			while(hash_table[i].head->next !=NULL)
			{
				node * current;
				current = hash_table[i].head->next;
				while(current)
				{
					if(current->next == NULL)
						delete current;
					else
						current = current->next;
				}
				

			}
			delete hash_table[i].head;
		}
	}
}
