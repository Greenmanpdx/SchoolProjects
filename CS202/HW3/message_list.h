#ifndef MESSAGE_LIST_H
#define MESSAGE_LIST_H


#include "String.h"



class message_list
{
    public:
        message_list();
        ~message_list();

        String& Getname() { return name; }
        //void Setname(String val) { name = val; }




    protected:
        String name;

        int count;

    private:
};

#endif // MESSAGE_LIST_H
