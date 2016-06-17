#include "message.h"

using namespace std;

message::message()
{
    msg = NULL;
    sender = NULL;
    sent = false;
}

message::~message()
{


}

message::message(const message& other)
{
    this->msg = other.msg;
    this->sender = other.sender;
    this->sent = other.sent;
}

message::message(String in_msg, String in_sender, bool in_sent)
{
    msg = in_msg;
    sender = in_sender;
    sent = in_sent;

}




/*
message message::traverse(message & root)
{
    if(root == NULL)
        return root;
    else
        return traverse(root->next);
}*/





//bool message::operator==(const String &in, const String &old)
