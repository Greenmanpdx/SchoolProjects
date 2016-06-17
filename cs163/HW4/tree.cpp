/*
 Jason Lingel
 Program 4
 BST
 CS163
 */


#include "tree.h"

const int table_size = 11;





application::application()
{
	name = NULL;
	keywords = NULL;
	description = NULL;
	rating = 0;
	number_keywords = 0;
}

application::~application()
{
	if(name)
		delete [] name;

	if(description)
		delete [] description;
	name = description = NULL;
	if(keywords)
		delete [] keywords;
	keywords = NULL;	
	rating = 0;
	number_keywords = 0;}

Keywords::Keywords()
{
	keyword = NULL;
}

Keywords::~Keywords()
{
	if(keyword)
		delete [] keyword;
	keyword = NULL;
}
Tree::Tree()
{
	root = NULL;
}
node::node()
{
	
	left = NULL;
	right = NULL;
	match = NULL;
	keyword = NULL;
	key = 0;
}

node::~node()
{
	if(keyword)
		delete [] keyword;
	keyword = NULL;
	if(match)
		delete match;
	match = NULL;
	left = NULL;
	right = NULL;
}

list_node::list_node()
{
	next = NULL;
	app = NULL;
}
list_node::~list_node()
{
	next = NULL;
	app =  NULL;
	
}

int Tree::add_app(char * title, Keywords key_array[], char * description, int rating, int number_keywords)
{
	application * app;
	app = new application;

	int name_size = 0;
	//int kw_array_size = 0;
	int kw_size = 0; 
	int desc_size= 0;
	
	name_size = strlen(title);
	app->name = new char[name_size+1];
	strcpy(app->name, title);


	app->number_keywords = number_keywords;
	app->keywords = new Keywords[number_keywords];

	for(int i = 0; i < number_keywords; i++)
	{
		kw_size = strlen(key_array[i].keyword);
		app->keywords[i].keyword = new char[kw_size + 1];
		strcpy(app->keywords[i].keyword, key_array[i].keyword);
		add_node(app->keywords[i].keyword, app);
		
		
	}

	desc_size = strlen(description);
	app->description = new char[desc_size+1];
	strcpy(app->description, description);

	app->rating = rating;

	return 1;



}

int Tree::add_node(char * keyword, application * app)
{
	
	int key = create_key(keyword);
	if(root == NULL)
	{
		node * current;
		current = new node;
		current->match = app;
		int len = 0;
		len = strlen(keyword);
		current->keyword = new char[len+1];
		strcpy(current->keyword, keyword);

		current->key = key;
		current->left = NULL;
		current->right = NULL;
		root = current;
	
		return 1;
	}
	if(root->key >= key)
		add_node(keyword, app, root->left, key);
	if(root->key < key)
		add_node(keyword, app, root->right, key);

	return 1;
}

int Tree::add_node(char * keyword, application * app, node * &root, int key)
{
		if(root == NULL)
	{
		root = new node;
		root->match = app;
		int len = 0;
		len = strlen(keyword);
		root->keyword = new char[len+1];
		strcpy(root->keyword, keyword);

		root->key = key;
		root->left = NULL;
		root->right = NULL;
		return 1;
	}
	if(root->key >= key)
		add_node(keyword, app, root->left, key);
	if(root->key < key)
		add_node(keyword, app, root->right, key);

	return 1;

}

int Tree::add_node(node * root, node * temp)
{
	if(root == NULL)
		root = temp;
	if(temp->key < root->key)
		add_node(root->left, temp);
	if(temp->key > root->key)
		add_node(root->right, temp);

}



int Tree::create_key(char * keyword)
{
	int size = strlen(keyword);
	int key= 0;
	for(int i = 0; i < size; i++)
		key = keyword[i] + key;

	return key;


}

int Tree::retrieve(char * keyword, list_node *& match_list)
{
	int key = create_key(keyword);


	int count = 0; 
	
	if(root == NULL)
		return 0;	
	if(root->key == key)
	{
		if(strcmp(root->keyword, keyword) == 0)
		{
			match_list->app = root->match;
			++count;
			match_list->next = NULL;
		}

		count = count + retrieve(keyword, match_list->next, root->left, key);
	}
	if(root->key > key)
			count = count + retrieve(keyword, match_list, root->left, key);

	if(root->key < key)
			count = count + retrieve(keyword, match_list, root->right, key);

	return count;
	
}
int	Tree::retrieve(char * keyword, list_node *& match_list, node * root, int key)
{
	int count = 0;
	
	if(root == NULL)
		return 0;	
	if(root->key == key)
	{
		if(strcmp(root->keyword, keyword) == 0)
		{
			match_list = new list_node;
			match_list->app = root->match;
			++count;
			match_list->next = NULL;
		}

		count = count + retrieve(keyword, match_list->next, root->left, key);
	}
	if(root->key > key)
			count = count + retrieve(keyword, match_list, root->left, key);

	if(root->key < key)
			count = count + retrieve(keyword, match_list, root->right, key);

	return count;

}

int Tree::display(char * keyword)
{
	list_node * match_list;
	match_list = new list_node;
	
	char * KW;
	KW = new char[strlen(keyword) + 1];
	strcpy(KW, keyword);
	int count = retrieve(KW, match_list);
	
	if(count == 0)
	{
		cout << endl;
		cout << "There are no matches" << endl << endl;
		return 0;
	}
	else
		
		cout << endl << "There are " << count << " matches." << endl;
		display(match_list);
	
	return count;

	
}

int Tree::display(list_node * match_list)
{
	if(match_list == NULL)
		return 0;
	cout << endl;
	cout << "App: " << match_list->app->name << endl
		<< "Description: " << match_list->app->description << endl
		<< "Rating: " << match_list->app->rating << endl
		<< "Keywords: ";
	
	
	for(int k = 0; k < match_list->app->number_keywords; k++)
	{
		int len = strlen(match_list->app->keywords[k].keyword);
		for(int i = 0; i < len; i++)
			cout << match_list->app->keywords[k].keyword[i];

		cout << ". ";
	}
	cout << endl << endl;
	display(match_list->next);
	return 1;
}

int Tree::display(node * here, list_node * &match_list)
{
	if(here == NULL)
		return 0;

	int count = display(here->right, match_list);
		if(match_list == NULL)
		{
			match_list = new list_node;
		}
		else
		{
			list_node * current;
			current = new list_node;
			current->next = match_list;
			match_list = current;	
		}
				
		match_list->app = here->match;
		++count;
		

	count += display(here->left, match_list);
	return count;
}

int Tree::display_all()
{	
	if(root == NULL)
		return 0;
	list_node * match_list;
	match_list = NULL;
	

	int count = display(root->right, match_list);
		if(match_list == NULL)
		{
			match_list = new list_node;
		}
		else
		{
			list_node * current;
			current = new list_node;
			current->next = match_list;
			match_list = current;	
		}
				
		match_list->app = root->match;
		++count;
		
	count += display(root->left, match_list);

	cout << endl << "There are " << count << " nodes in your tree." << endl << endl;

	display(match_list);

	list_node * current;
	current = match_list;
	while(current != NULL)
	{
		current = current->next;
		delete match_list;
		match_list = current;		
	}
	delete match_list;
	match_list = NULL;
	

	return 1;	

}

int Tree::remove(char * keyword)
{/*
	In this function I created a table of cases, depending on what gets returned will
	decide on how the children of the node will get treated.
	table
0:	previous node is null
1:	previous node exists, not a match.
2:	previoius node has no children, delete
3:	previous node has child on left, delete and move children
4:	previous node has child on right, delete and move children
5:  previous node has two children, delete and move children

These codes are used in the recursive call as well.
*/
	int L, R;
	if(root == NULL)
		return 0;
	int key = create_key(keyword);

	L = remove(keyword, root->left);//traverse left

	if(L == 2)
		delete root->left;
	if(L == 3)
	{
		node * temp_L;
		temp_L = root->left->left;
		delete root->left;
		root->left = temp_L;
	}
	if(L == 4)
	{
		node * temp_L;
		temp_L = root->left->right;
		delete root->left;
		root->left = temp_L;
	}
	if(L == 5)
	{
		node * temp_L;
		node * temp_R;
		temp_L = root->left->left;
		temp_R = root->left->right;
		root->left = temp_R;
		add_node(root, temp_L);
	}

	R = remove(keyword, root->right);
	
	if(R == 2)
	{
		delete root->right;
		root->right = NULL;
	}

	if(R == 3)
	{
		node * temp_R;
		temp_R = root->right->left;
		delete root->right;
		root->right = temp_R;
	}
	if(R == 4)
	{
		node * temp_L;
		temp_L = root->right->right;
		delete root->right;
		root->right = temp_L;
	}
	if(R == 5)
	{
		node * temp_L;
		node * temp_R;
		temp_L = root->right->left;
		temp_R = root->right->right;
		root->right = temp_L;
		add_node(root, temp_R);
	}

	if(root->key == key)
	{
		if(strcmp(root->keyword, keyword) == 0)
		{
			if(L == 0 && R == 0)
			{
				delete root;
				root = NULL;
				return 1;
			}
			if(L == 1 && R == 0)
			{
				node * temp_L;
				temp_L = root->left;
				delete root;
				root = temp_L;
				return 1;
			}
			if(L == 0 && R == 1)
			{
				node * temp_R;
				temp_R = root->right;
				delete root;
				root = temp_R;
				return 1;
			}
			if(L==1 && R ==1)
			{
				node * temp_R;
				node * temp_L;
				temp_L = root->left;
				temp_R = root->right;
				delete root;
				root = temp_R;
				add_node(root, temp_L);
				return 1;
			}
		}
	}
	return 1;
	
}


int Tree::remove(char * keyword, node * &root)
{
	int L, R;
	if(root == NULL)
		return 0;

	int key = create_key(keyword);

	L = remove(keyword, root->left);

	if(L == 2)
		delete root->left;
	if(L == 3)
	{
		node * temp_L;
		temp_L = root->left->left;
		delete root->left;
		root->left = temp_L;
	}
	if(L == 4)
	{
		node * temp_L;		
		temp_L = root->left->right;
		delete root->left;
		root->left = temp_L;
	}
	if(L == 5)
	{
		node * temp_L;
		node * temp_R;
		temp_L = root->left->left;
		temp_R = root->left->right;
		root->left = temp_R;
		add_node(root, temp_L);
	}

	R = remove(keyword, root->right);
	
	if(R == 2)
		delete root->right;

	if(R == 3)
	{
		node * temp_R;
		temp_R = root->right->left;
		delete root->right;
		root->right = temp_R;
	}
	if(R == 4)
	{
		node * temp_L;
		temp_L = root->right->right;
		delete root->right;
		root->right = temp_L;
	}
	if(R == 5)
	{
		node * temp_L;
		node * temp_R;
		temp_L = root->right->left;
		temp_R = root->right->right;
		root->right = temp_L;
		add_node(root, temp_R);
	}
	if(root->key == key)
	{
		if(strcmp(root->keyword, keyword) == 0)
		{
			if(L == 0 && R == 0)
				return 2;
			if(L == 1 && R == 0)
				return 3;
			if(L == 0 && R == 1)
				return 4;
			if(L==1 && R ==1)
				return 5;
		}
	}
	else return 1;

}




void Tree::remove_all(node * &root)
{
	if(!root)
		return;
	remove_all(root->right);
	remove_all(root->left);
	delete root;
	root = NULL;	
}


Tree::~Tree()
{
	remove_all(root);
}
