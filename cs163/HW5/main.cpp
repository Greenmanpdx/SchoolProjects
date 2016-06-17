#include "graph.h"

using namespace std;

main()
{
	Graph graph;

	graph.build_graph();

	int selection = 0;
	int select = 0;

	do 
	{

		cout << "Welcome to The Paint Place organizational menu. " << endl << endl 
		<< "Please select an option: " << endl
		<< "1. Display task " << endl
		<< "2. Display all tasks" << endl
		<< "3. Exit" << endl << endl;

		cin >> selection;

		switch(selection)
		{
			case 1:
				cout 	<< "Select a task" << endl
					<< "1. Initial Inspection" << endl
					<< "2. Make estimate" << endl
					<< "3. Accept Job" << endl
					<< "4. Plan PHase" << endl
					<< "5. Sand Walls" << endl
					<< "6. Wash Walls" << endl
					<< "7. Prime" << endl
					<< "8. Paint" << endl
					<< "9. Inspection" << endl
					<< "10. Final Sign Off" << endl << endl;
				cin >> select;
				--select;
				graph.display_list(select);
				break;
		
			case 2:
				graph.display_graph();
				break;

			case 3:
				cout << "Have a nice day!" << endl;
				selection = 4;
		}
	}while(selection != 4);

}
