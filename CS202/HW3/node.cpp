#include "node.h"


using namespace std;

node::node(): message()
{
    next = NULL;
}

node::node(String in_msg, String in_sender, bool in_sent): message(in_msg, in_sender, in_sent)
{
    next = NULL;
}
node::~node()
{
    //dtor
}

node * node::display()
{
        char selection;
        cout << "Sender: ";
        cout << sender;
        cout << endl;
        cout << "Message: ";
        cout << msg;
        cout << endl << endl
             << "Enter ";
        if(sent == false)
             cout << "r for reply, ";

        cout << "n for next, e for exit: ";
        cin >> selection;

        switch(selection)
        {
            case 'r':
                return this;
            case 'n':
                if(next)
                    return next->display();
                else
                {
                    cout << "End of messages." << endl;
                    return NULL;
                }
            case 'd':
                //delete_msg();
                return display();
            case 'e':
                return NULL;
            default:
                cout << "Invalid entry" << endl;
                return display();




        }


}

void node::display_all()
{
        cout << "Sender: ";
        cout << sender;
        cout << endl;
        cout << "Message: ";
        cout << msg;
        cout << endl;
        if(next)
            next->display_all();
}

node* node::operator=(const node & other)
{
    this->msg = other.msg;
    this->sender = other.sender;
    this->sent = other.sent;
    this->next = other.next;
    return this;
}

void node::delete_msg()
{
    //node * current;

}

void node::connect(node * inc)
{
	next = inc;

}
