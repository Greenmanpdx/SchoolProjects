#include "LLL.h"
#include "String.h"
#include <cstddef>
using namespace std;

LLL::LLL() : head(NULL)
{

}

LLL::~LLL()
{
    delete head;

}

void LLL::display_all()
{
    if(head)
    {
        head->display_all();
    }

}

node * LLL::display()
{
    if(head)
        return head->display();
}

void LLL::add(node * other)
{
    if(!head)
    {
        head = new node;
        head = other;
        name = other->get_sender();
    }
    else
    {



        other->connect(head);
                head = other;

    }

}
