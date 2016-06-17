#include <iostream>
#include <fstream>
#include <cctype>
#include <cstring>
#include <cstdlib>
#include "location.h"
#include <iostream>
#include <math.h>

using namespace std;

location::location()
{

}

location::location(float vert_coord, float horz_coord)
{
	lattitude = vert_coord;
	longitude = horz_coord;
}
location::~location()
{

}
int location::sector()
{

    double lat_inc = (0.059321);
	double long_inc = (0.0609794);
	double lat_min = 45.461094;
	double long_min = -122.771385;

	int section = 0;

	section = floor((lattitude - lat_min)/lat_inc)+(floor((longitude - long_min)/long_inc)*5);

	return section;

}



neighborhood::neighborhood():location()
{
	num_households = 0;
//	center(0.0,0.0);
	age_4 = 0;
	age_10 = 0;
	age_13 = 0;
	age_18 = 0;
	age_60 = 0;
	age_retired =0;
	median_income = 0;
	caucasian = 0;
	african = 0;
	native = 0;
	asian = 0;
	hispanic = 0;


}


void neighborhood::add(int ages_4, int ages_10, int ages_13, int ages_18, int ages_60, int ages_retired, int medians_income, char races)
{
    age_4 += ages_4;
    age_10 += ages_10;
    age_13 += ages_13;
    age_18 += ages_18;
    age_60 += ages_60;
    age_retired += ages_retired;
    median_income += medians_income;
    ++num_households;

    if(races == 'c')
	{
		++caucasian;
		per_caucasian = caucasian/num_households;
	}
	if(races == 'b')
	{
		++african;
		per_african = african/num_households;
	}
	if(races == 'n')
	{
		++native;
		per_native = native/num_households;
	}
	if(races == 'a')
	{
		++asian;
		per_asian = asian/num_households;
	}
	if(races == 'h')
	{
		++hispanic;
		per_hispanic = hispanic/num_households;
	}

}

vertex::vertex()
{
	head = NULL;
}

/*vertex::vertex(double vert, double horz)
{
	center(vert, horz);


}
*/

void vertex::display(int l)
{
        if(num_households == 0)
        {
            cout << "Neighborhood " << (l+1) << " is not populated" << endl;
            return;
        }
	cout << "Neighborhood " << (l+1) << endl
        << "Households in neighborhood: " << num_households << endl
		<< "Preschool: " << age_4 << endl
	      << "Elementary School: " << age_10 << endl
	      << "Middle School: " << age_13 << endl
	      << "High School: " << age_18 << endl

	      << "Working age: " << age_60 << endl
	      << "Retired age: " << age_retired << endl
	      << "Median income: " << median_income << endl
	      << "Race distribution" << endl
	      << "Caucasion: " << per_caucasian << "%" << endl
	      << "African: " << per_african << "%" << endl
	      << "Native American: " << per_native << "%" << endl
	      << "Asian: " << per_asian << "%" << endl
	      << "Hispanic " << per_hispanic << endl
		<< "This neighborhood is connected to these neighborhoods. " << endl;
		head->display_connect(head);



}

void edge::display_connect(edge *& head)
{
	if(head)
	{
		cout << "Neighborhood: "<< head->dest << endl;
		head->next->display_connect(head->next);

	}
	cout << endl << endl;
}

vertex::~vertex()
{
	delete head;
}

edge::edge()
{
	dest = 0;
	next = NULL;
	distance = 1;

}

edge::edge(int d)
{
	dest = d;
	next = NULL;
	distance = 1;
}


edge::~edge()
{
	delete next;

}

edge * edge::get_next(){return next;}



map::map()
{
	size = 25;

	section = new vertex[size];


}
void vertex::add_edge(edge *& head, int sector)
{
    if(head == NULL)
    {
        head = new edge(sector);
        return;
    }
    edge * temp;
    temp = new edge(sector);
    temp->next = head;
    head = temp;

}

map::map(ifstream  &infile)
{
	size = 25;
	char buffer[13] ={0};
	section = new vertex[size];

	for(int i = 0; i<size; ++i)
	{
		int a = i%5;

		if(a > 0)
		    	section[i].add_edge(section[i].head, i);
		if(a < 4)
			section[i].add_edge(section[i].head, i+2);
		if(i>4)
			section[i].add_edge(section[i].head, i-4);
		if(i<20)
			section[i].add_edge(section[i].head, i+6);



	}



	//input loop
	infile.peek();
	while(!infile.eof())
	{
		int age_4, age_10, age_13, age_18, age_60, age_retired, median_income = 0;
		char race;
		float latt, longit;



		infile.getline(buffer, 14, ':');
		latt = atof(buffer);
		if(latt == 0.0)
            return;

		infile.getline(buffer, 14, ':');
		longit = atof(buffer);

		infile.getline(buffer, 3, ':');
		age_4 = atoi(buffer);

		infile.getline(buffer, 3, ':');
		age_10 = atoi(buffer);

		infile.getline(buffer, 3, ':');
		age_13 = atoi(buffer);

		infile.getline(buffer, 3, ':');
		age_18 = atoi(buffer);

		infile.getline(buffer, 3, ':');
		age_60 = atoi(buffer);

		infile.getline(buffer, 3, ':');
		age_retired = atoi(buffer);

		infile.getline(buffer, 10, ':');
		median_income = atoi(buffer);

		infile.get(race);
		//infile.ignore();

        location * current;
		current = new location(latt, longit);
	
		section[current->sector()].add(age_4, age_10, age_13, age_18, age_60, age_retired, median_income, race);
	delete current;
        infile.peek();
	}

}



map::~map()
{
	delete [] section;
}



void map::display()
{
	for(int i=0; i<25; i++)
		section[i].display(i);
}

school::school()
{
	int classrooms = 0;
	int max_students = 0;
	int age_group = 0;

}
school::school(const school & source)
{
   name = new char[strlen(source.name)+1];
    strcpy(name, source.name);
    classrooms = source.classrooms;
    max_students = source.max_students;
    age_group = source.age_group;
}

school::school(char * in_name, int in_classrooms, int in_max_students, int in_age_group)
{
    name = new char[strlen(in_name)+1];
	strcpy(name, in_name);
      classrooms = in_classrooms;
    max_students = in_max_students;
    age_group = in_age_group;
}

school::~school()
{
    delete [] name;
	name = NULL;
}

void school::display()
{
	cout << name << " ";
	if(age_group == 10)
		cout << "Elementary ages 5-10" << endl;
	if(age_group == 13)
		cout << "Middle School ages 11-13" << endl;
	if(age_group == 18)
		cout << "High School ages 14-18" << endl;


	cout << "Number of classrooms: " << classrooms << endl
		<<" Max students: " << max_students << endl << endl;

}



node::node()
{
	back = NULL;
	forward = NULL;

}

node::node(const school &source):school(source)
{

		forward = NULL;

        back = NULL;
}

node::~node()
{
    back = NULL;
    forward =  NULL;
    //delete forward;

}

void node::set_back(node *& in_back)
{
	this->back = in_back;

}

void node::set_forward(node *& in_forward)
{
        this->forward = in_forward;
}

node * & node::go_back()
{
	return back;
}

node * & node::go_forward()
{
	//node * current;
	//current = this->forward;
	return forward;
}

bool node::if_back() const
{
	if(this->back)
		return true;
	else
		return false;
}

bool node::if_forward() const
{
	if(this->forward)
		return true;
	else
		return false;
}


dll::dll()
{
	root = NULL;

}

dll::dll(ifstream & infile)
{
	char buffer[100];
	int length;
	root = NULL;

	while(infile.eof() == false)
	{
		char * name;
		int classrooms, max_students, age_group;



		infile.getline(buffer, 100, ':');
		length = strlen(buffer);
		name = new char[length+1];
		strcpy(name, buffer);

		infile.getline(buffer, 5, ':');
		classrooms = atoi(buffer);

		infile.getline(buffer, 5, ':');
		max_students = atoi(buffer);

		infile.getline(buffer, 5);
		age_group = atoi(buffer);

		school current(name, classrooms, max_students, age_group);
		add(current);

		delete [] name;

		infile.peek();


	}
}

void dll::add(const school & to_add)
{
    if(!root)
           root = new node(to_add);
    else{
        node * temp;
		temp = new node(to_add);
		temp->set_forward(root);
        root->set_back(temp);
        root = temp;
    }

}



void dll::display_all()
{
	node * current;
	current = root;

	while(current !=NULL)
	{
		current->display();
		current = current->go_forward();
	}

}

dll::~dll()
{
	node * current = root;
	while(current)
	{
		current = current->go_forward();
		delete root;
		root = current;
	}

}





