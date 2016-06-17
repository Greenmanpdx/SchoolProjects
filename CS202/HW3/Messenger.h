
#ifndef MESSENGER_H
#define MESSENGER_H
#include <cstddef>
#include "String.h"
#include "message_list.h"
#include "message.h"
#include "node.h"
#include "LLL.h"

class Messenger
{
    public:
        Messenger();
        ~Messenger();
        void add(node * other);
        node * display();

    protected:
        LLL *texts;

    private:
};

#endif // MESSENGER_H
