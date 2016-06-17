#include <iostream>
#ifndef STRING_H
#define STRING_H
using namespace std;

class String
{
    public:
        String();
        String(char * incoming);
        ~String();
        String& operator=(const String& other);
        String& operator=(char * other);
        String& operator+(const String& other);
        String& operator+=(const String& other);
        bool operator==(const String& other);
	bool is_null();

        friend istream & operator>>(istream& in, String& other);
        friend ostream & operator<<(ostream& out, String& other);

    protected:

    private:
        char * line;
};

#endif // STRING_H
