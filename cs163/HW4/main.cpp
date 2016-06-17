/*
 Jason Lingel
 Program 4
 BST
 CS163
 */


#include "tree.h"

main()
{

	Tree tree;
		int control = 0;
	
	cout << "Welcome to the App finder!" << endl << endl;

	
	while(control != 6)
	{	
	cout << "Choose an option: " << endl << endl;
	cout << "1. Add an App." << endl
	     << "2. Search Apps." << endl
	     << "3. Display all Apps. " << endl 
	     << "4. Remove Keywords. " << endl
	     << "5. Exit. " << endl << endl;

	cin >> control;
	cin.ignore();

		switch(control)
		{
		case 1:
			{
			int n_keywords = 0;

			char title[256];
			char description[256];
			Keywords keywords[5];
			for(int i = 0; i<5; i++)
				keywords[i].keyword = NULL;
			
			int rating;
			char another;

			cout << "Enter the title: " << endl;
			cin.getline(title, 256);
			
			cout << endl << "Enter a short description (limit 256 characters): " << endl;
			cin.getline(description, 256);

			cout << endl << "Enter a keyword: " << endl;
			keywords[0].keyword = new char[256];
			cin.getline(keywords[0].keyword, 256);
			++n_keywords;

			cout << "Type y to enter another(max 5) or n to continue:" << endl;
			cin >> another;
			cin.ignore();



			while(another == 'y')
			{
				if(n_keywords == 5)
				{
					cout << "You have reached the max amount of keywords." << endl;
					break;
				}
				cout << endl << "Enter a keyword: " << endl;
				keywords[n_keywords].keyword = new char[256];
				cin.getline(keywords[n_keywords].keyword, 256);
				++n_keywords;

				cout << "Type y to enter another(max 5):" << endl;
				cin >> another;
				cin.ignore();
				
			}

				cout << "Enter a rating from 1-5: " << endl;
				cin >> rating;
				cin.ignore();

			if(tree.add_app(title, keywords, description, rating, n_keywords) == 0)
				cout << "Entering App Failed!" << endl;

			
			}
			break;

			
		case 2:
			
			char keyword[256];
			
			cout << "Enter a keyword: " << endl;
			cin.getline(keyword, 256);
			
			int numb_matches;
			numb_matches = tree.display(keyword);

			break;
	
		case 3:
			
			tree.display_all();
			
			break;
		case 4:
			cout << "Enter keyword to remove: " << endl;
			char key_temp[256];
			cin.getline(key_temp, 256);
			char * key;
			key = new char[strlen(key_temp) + 1];
			strcpy(key, key_temp);

			int test_removed;
			test_removed = tree.remove(key);
			if(test_removed == 1)
				cout << endl << "Removal successful." << endl;
			
			break;	
		case 5:
			
			control = 6;
			
		default:
			cout << endl << "Invalid response." << endl;
			break;



		}
	}

return 0;
}
