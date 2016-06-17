#include <iostream>
#include <fstream>
#include <cctype>
#include <cstring>
#include <cstdlib>

using namespace std;

/*The base location class*/

class location
{
	public:

		location();
		location(float vert_coord, float horz_coord);
		~location();
		int sector();


	protected:

		float lattitude;
		float longitude;
};

/*
class household: public location
{
	public:
		friend class neighborhood;
		household();
		household(int ages_4, int ages_10, int ages_13, int ages_18, int ages_26, int ages_60, int ages_retired, int medians_income, char races, float lattitude, float longitude);
		~household();


	protected:



		int age_4, age_10, age_13, age_18, age_26, age_60, age_retired, median_income;
		char race;

};*/

class neighborhood: public location
{
	public:

		neighborhood();
	//	void add(const household & house_to_add);
		void add(int ages_4, int ages_10, int ages_13, int ages_18, int ages_60, int ages_retired, int medians_income, char races);

	//	~neighborhood();


	protected:
		int num_households, total_income;
		location center;
		int age_4, age_10, age_13, age_18, age_60, age_retired, median_income, caucasian, african, native, asian, hispanic;
		float per_caucasian, per_african, per_native, per_asian, per_hispanic;


};


class edge
{
	friend class map;
	friend class vertex;
	public:
		edge();
		edge(int d);
		~edge();

		edge * get_next();
		//edge * new_edge(int to_connect);
		void edge_delete();
		void add_edge(int d);
    void display_connect(edge *& head);




	private:
		float distance;
		int dest;
		edge * next;
};

class vertex: public neighborhood
{
	friend class map;
	public:
		vertex();
		vertex(double vert, double horz);
		void add_edge(edge *& head, int sector);
		void vertex_delete();
	//	void add


		void display(int l);

			~vertex();

	protected:

		edge * head;

};


class map
{

	public:

		map();
		map(ifstream &infile);
	//	void add_household(household house_to_add);


		void display();
		~map();



	protected:


		int size;
		vertex * section;
		void display_all();


};
class school: public location
{
	public:
		school();
		~school();

		school(const school & source );
		school(char * in_name, int in_classrooms, int in_max_students, int in_age_group);
		void display();

	protected:
		int classrooms, max_students, age_group;
		char * name;

};

class node: public school
{
	public:
		node();
		node(const school & source);

		void set_back(node *& in_back);
		void set_forward(node *& current);
		node * & go_back();
		node * & go_forward();
		bool if_back() const;
		bool if_forward() const;
		~node();

	protected:
		node * back;
		node * forward;
};



class dll
{

	public:
		dll();
		dll(ifstream & in_file);
		void add(const school & to_add);

		void display_all();
		~dll();
		node * find_end();
		node * find_end(node * current);


	protected:
                void add_node(node *&  current, const school & to_add);
				node * root;
};
