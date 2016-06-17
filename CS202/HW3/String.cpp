#include "String.h"
#include <cstring>
#include <cstddef>

using namespace std;

String::String()
{
    line = NULL;
}

String::~String()
{
    //delete line;
}
String::String(char * incoming)
{
    if(incoming == NULL)
        this->line = NULL;
    else
    {
        this->line = new char[strlen(incoming)+1];
        strcpy(this->line, incoming);
    }
}

String& String::operator=(const String& rhs)
{
    if (this == &rhs) return *this; // handle self assignment
    //assignment operator
   
    this->line = new char [strlen(rhs.line)+1];
    strcpy(this->line, rhs.line);
    return* this;
}

String& String::operator=(char * other)
{
    if(other==NULL)
        this->line = NULL;
    else
    {
        this->line = new char [strlen(other)+1];
        strcpy(this->line, other);
        return *this;
    }

}

String& String::operator+=(const String& other)
{
    strcat(this->line, other.line);
    return *this;
}

String& String::operator+(const String& other)
{
   strcat(this->line, other.line);
    return *this;
}

bool String::operator==(const String& other)
{
    	if(this->is_null())
	{
		if(!other.line)
        		return true;
		else
			return false;
	}
    return !strcmp(this->line, other.line);
}

istream& operator>>(istream& in, String& other)
{
    char temp[500];

    in.getline(temp, 500);
    other.line = new char[strlen(temp)+1];
    strcpy(other.line, temp);
    return in;


}

ostream& operator<<(ostream& cout, String& other)
{

        cout << other.line;
	return cout;
}

bool String::is_null()
{
	if(this->line)
		return false;
	else
		return true;
}
