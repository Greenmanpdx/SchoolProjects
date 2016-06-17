#ifndef MESSAGE_H
#define MESSAGE_H


#include "String.h"


class message
{
    public:
        message();
        message(String in_msg, String in_sender, bool in_sent);
        ~message();
        message(const message& other);
        String get_sender() { return sender; }

        void Setmsg(String val) { msg = val; }



        //message traverse(message & root);



        message * display();
        void display_all();
      //  bool operator==(const String &in, const String &old);

    protected:
        String msg;
        String sender;
        bool sent;
        //Date when;

    private:
};

#endif // MESSAGE_H
