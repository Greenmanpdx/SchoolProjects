#include "node.h"
#include "String.h"
#include "message_list.h"

#ifndef LLL_H
#define LLL_H


class LLL: public message_list
{
    public:
        LLL();
        virtual ~LLL();
    void display_all();
    node * display();
    void add(node * other);


    protected:
        node * head;

    private:
};

#endif // LLL_H
