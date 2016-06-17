#include "Messenger.h"
#include "String.h"
#include <cstddef>
using namespace std;


Messenger::Messenger()
{
    texts = new LLL[10];
}

Messenger::~Messenger()
{
    //dtor
}

void Messenger::add(node * other)
{
    	bool sent = false;
    for(int i = 0; i < 10; ++i)
    {
       		 String temp = texts[i].Getname();
       	if( temp.is_null() )
        {
            texts[i].add(other);
	 	sent = true;
            break;
        }
        String sender = other->get_sender();
        if( sender == temp)
        {
            texts[i].add(other);
		sent = true;
            break;
        }

    }
	if(sent == false)
		cout << "Message box full, see admin" << endl;
}

node * Messenger::display()
{
    int select;

	if(texts[0].Getname().is_null())	
	{
		cout << "You have no messages" << endl;
		return NULL;
	}

    cout << "Choose a contact" << endl;
    for(int i = 0; i<10; ++i)
    {   String temp = texts[i].Getname();
        if( temp.is_null())
	{
		break;
	}
        cout << (i+1) << ": " << temp << endl;

    }
     cin >> select;

     return texts[select-1].display();





}
