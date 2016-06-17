#ifndef NODE_H
#define NODE_H
#include "message.h"
#include "String.h"


class node: public message
{
    public:
        node();
        ~node();
        node(String in_msg, String in_sender, bool in_sent);
        node * display();
        void display_all();
        void connect(node * inc);
        node* operator=(const node& other);
        void delete_msg();


    protected:
        node * next;
    private:
};

#endif // NODE_H
