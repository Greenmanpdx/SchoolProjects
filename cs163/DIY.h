struct parts
{
	int part_number;
	char * description;
	int quantity;
	int numb_steps;
	int * steps;
	parts();

};

struct node
{
	parts part;
	node * next;
};

struct steps
{
	steps();
	int step_number;
	int part_count;
	int * part_number;
		
};

struct step_node
{
	steps step;
	step_node * next_step;
};


class DIY 
{
public:
	DIY(); 
	~DIY();
	int Display_Parts(); //display all parts, in order of part number
	int Display_Steps(); //display all steps and the parts needed for each step
	
	int Next_Step(int step_number, parts parts_list[], int & num_parts);
private:
	node * part_head;
	node * part_tail;
	step_node * step_head;
	step_node * step_tail;
};
