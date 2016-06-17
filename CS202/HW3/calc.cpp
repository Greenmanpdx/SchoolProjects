#include "calc.h"
#include <iostream>

using namespace std;


calc::calc()
{
	float a = 0.0;
	float b = 0.0;
	char z;
	float answer = 0.0;
};

calc::~calc()
{

};

void calc::calculate()
{
		cout << "Enter a number followed by a symbol + (plus), - (subtract) , * (multiply), / (divide), followed by a second number" << endl;

	cin >> a >> z >> b;

	switch(z)
	{
		case '+':
			answer = add(a,b);
			break;

		case '-':
			answer = subtract(a,b);
			break;
		case '*':
			answer = multiply(a,b);
			break;
		
		case '/':
			answer = divide(a,b);
			break;
		default:
			cout << "Invalid entry" << endl << endl;
			return;
	}

	cout << "Your answer is: " << answer << endl << endl;



};

float calc::add(float a, float b)
{
	return a + b;
};

float calc::subtract(float a, float b)

{
	return a - b;
};

float calc::multiply(float a, float b)

{
	return a * b;
};

float calc::divide(float a, float b)

{
	return a/b;
};
