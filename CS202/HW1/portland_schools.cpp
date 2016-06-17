#include "location.h"
#include <iostream>
#include <fstream>
#include <cctype>
#include <cstring>
#include <cstdlib>
#include <iostream>
using namespace std;



void boundary(int s, int d);

int main()
{



    ifstream infile;

    infile.open("census.txt");

    map portland(infile);



    infile.close();


    ifstream in_file;
    in_file.open("schools.txt");
    dll portland_schools(in_file);

    in_file.close();
    int select = 0;
    do
    {
        cout << "Welcome to the school boundary proposal program." << endl
        <<"1. Start boundary proposal." << endl
        <<"2. Show neighborhood data." << endl
        <<"3. List schools" << endl
	<<"4. Exit" << endl;

        cin >> select;
        switch (select)
        {
            case 1:
                int s, d;
                cout << "Enter economic/socio mix." << endl
                    << "1. Eat the rich." << endl
                    << "2. You gotta keep em separated.." << endl;
                    cin >> s;
                cout << endl << endl
                    << "Enter desired deviation from maximum enrollment. " << endl
                    << "1. +10%" << endl
                    << "2. +20%" << endl
                    << "3. -10%" << endl
                    << "4. -20%" << endl;
                cin >> d;
                boundary(s, d);
                break;
            case 2:
                portland.display();
                break;

            case 3:
                portland_schools.display_all();
                break;

            case 4:
                break;
            default:
                cout << "Invalid command" << endl;
                break;

        }
	}while(select != 4);
}

void boundary(int s, int d)
{
    if(s == 1)
    {
        cout << "Suggestion: burn the town down and start over." << endl << endl;
    }

    if(s == 2)
    {
        cout << "Suggestion: You're a racist jerk, we don't need your kind here." << endl << endl;
    }
}

