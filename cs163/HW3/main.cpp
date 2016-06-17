#include "hash.h"


int main()
{
	Hash hash;
	int control = 0;
	
	cout << "Welcome to the App finder!" << endl << endl;

	
	while(control != 5)
	{	
	cout << "Choose an option: " << endl << endl;
	cout << "1. Add an App." << endl
	     << "2. Search Apps." << endl
	     << "3. Display all Apps. " << endl 
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

			if(hash.add_app(title, keywords, description, rating, n_keywords) == 0)
				cout << "Entering App Failed!" << endl;
			}
			break;

			
		case 2:
			
			char keyword[256];
			
			cout << "Enter a keyword: " << endl;
			cin.getline(keyword, 256);
			
			int numb_matches;
			numb_matches = hash.display(keyword);

			break;
	
		case 3:
			
			hash.display_all();
			
			break;
		

			
			



		}
	}

}
