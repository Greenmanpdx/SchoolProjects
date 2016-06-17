/*
CS202 Program 3
Jason Lingel


*/



#include <iostream>
#include <fstream>

#include    "LLL.h"
#include    "message.h"
#include    "message_list.h"
#include    "Messenger.h"
#include    "node.h"
#include    "String.h"
#include 	"calc.h"
#include	"Maze_vertex.h"
#include	"1_vertex.h"

using namespace std;


void cellphone(Messenger & sent);
void calculator();
void maze();
void read(Messenger & sent);
void send(Messenger & sent);
void sent_in(Messenger & sent);
void view_sent(Messenger & sent);
void reply(Messenger & sent, message * current);
void connect_left(Maze_vertex *maze[][10], int i, int j);
void connect_up(Maze_vertex * maze[][10], int i, int j);
void run_maze(Maze_vertex * maze[][10]);
void maze();



int main()
{

    Messenger sent;
    sent_in(sent);


    char selection = ' ';
    while(selection != 'e')
    {
    cout << "Cell Phone Demo" << endl << endl;
    cout << "Enter Selection" << endl;
    cout << "1. Text Messages" << endl <<
            "2. Calculator"  << endl <<
            "3. Maze Game" << endl <<
            "e. Exit" << endl << endl;

    cin >> selection;
    cin.ignore();

    switch(selection)
    {
        case '1':

            cellphone(sent);
            break;

        case '2':

            calculator();
            break;

        case '3':

            maze();
            break;

        default:
            cout << "Invalid value" << endl << endl;
            break;

        }

        return 0;
    }

}


void cellphone(Messenger & sent)
{
    char selection;

    do
    {
        cout << endl << "Messenger" << endl
            << "1. Read messages" << endl
            << "2. Send message" << endl
            << "3. View Sent" << endl
            << "4. Go back"<< endl << endl;

        cin >> selection;
	cin.ignore();

        switch(selection)
        {
            case '1':
                read(sent);
                break;
            case '2':
                send(sent);
                break;
            case '3':
		sent.display();
                break;
	    case '4':
		break;

        }
    }while(selection!='4');

    

}

void calculator()
{
	cout << "Calculator" << endl;
	char select = '1';
	float a, b;

	calc calculate;

	while(select != '2')
	{
		cout << "Select " << endl << "1. Calculate" << endl << "2. Exit" << endl;
		cin >> select;

		switch(select)
		{

			case '1':
				calculate.calculate();
				break;

			case '2':
				break;
		
			default:
				cout << "Error, invalid option" << endl;
		}
				
				

	}

}

void sent_in(Messenger& sent)
{
    String in_name;
    String in_msg;
    node * text;
    char temp[500];

    bool was_sent = true;
    ifstream infile;

    infile.open("sent.txt");

    while(!infile.eof())
    {
        infile.getline(temp, 500,':');
        in_name = temp;

        infile.getline(temp, 500);
        in_msg = temp;
        text = new node(in_msg, in_name, was_sent);
        sent.add(text);
	infile.peek();

    }

    infile.close();

}

void send(Messenger & sent)
{
    String in_name;
    String in_msg;

    bool was_sent = true;
    node * text;
    cout << " Enter name of recipient:";

    cin >> in_name;


    cout << endl << "Enter msg (max 500 characters)";

    cin >> in_msg;

    text =  new node(in_msg, in_name, was_sent);
    sent.add(text);



}





void read(Messenger & sent)
{
    Messenger recieved;

    String in_name;
    String in_msg;
    node * text;
    bool not_sent = false;
    char temp[500];


    fstream infile;

    infile.open("recieved.txt");

    while(!infile.eof())
    {
        infile.getline(temp, 256, ':');
        in_name = temp;

        infile.getline(temp, 500);
        in_msg = temp;
        text = new node(in_msg, in_name, not_sent);
        recieved.add(text);

    }
    message * current;
    infile.close();
    current = recieved.display();
	if(current)
            reply(sent, current);
}

void reply(Messenger & sent, message * current)
{
    String in_name;
    String in_msg;
    bool was_sent = true;
    node * text;
    in_name = current->get_sender();
    cout << endl << "Enter msg (max 500 characters)";

    cin >> in_msg;

    text = new node(in_msg, in_name, was_sent);
    sent.add(text);

}


void maze()
{
    Maze_vertex * maze[10][10];

    ifstream infile;

    infile.open("maze.txt");

    char temp;
    for(int j = 0; j<10; ++j)
    {
        for(int i = 0; i<10; ++i)
        {
            if(infile.peek() == '\n')
                infile.ignore();
            infile.get(temp);

            switch(temp)
            {
                case '1':
                    maze[i][j] = new one_vertex;
                    if(i>0)
                        connect_left(maze, i, j);
                    if(j>0)
                        connect_up(maze, i, j);
                        break;
                case '2':
                    maze[i][j] = new two_vertex;
                    if(j>0)
                        connect_up(maze, i, j);
                        break;


                case '3':
                    maze[i][j] = new three_vertex;
                    if(i>0)
                        connect_left(maze, i, j);
                        break;

                case '4':
                    maze[i][j] = new four_vertex;
                    if(i>0)
                        connect_left(maze, i, j);
                    if(j>0)
                        connect_up(maze, i, j);
                        break;

                case '5':
                    maze[i][j] = new five_vertex;
                    if(i>0)
                        connect_left(maze, i, j);
                        break;


                case '6':
                    maze[i][j] = new six_vertex;
                    if(i>0)
                        connect_left(maze, i, j);
                    if(j>0)
                        connect_up(maze, i, j);
                        break;

                case '7':
                    maze[i][j] = new seven_vertex;
                    if(i>0)
                        connect_left(maze, i, j);
                        break;

                case '8':
                    maze[i][j] = new eight_vertex;
                    if(j>0)
                        connect_up(maze, i, j);
                        break;

                case '9':
                    maze[i][j] = new nine_vertex;
                    if(j>0)
                        connect_up(maze, i, j);
                        break;

                case 'A':
                    maze[i][j] = new A_vertex;
                    break;

                case 'B':
                    maze[i][j] = new B_vertex;
                    if(i>0)
                        connect_left(maze, i, j);
                        break;

                case 'C':
                    maze[i][j] = new C_vertex;
                    if(j>0)
                        connect_up(maze, i, j);
                        break;

                case 'D':
                    maze[i][j] = new D_vertex;
                    break;

                case 'E':
                    maze[i][j] = new E_vertex;
                    break;

                case 'F':
                    maze[i][j] = new F_vertex;
                    break;


            }

        }
    }

    infile.close();

    run_maze(maze);
    
}

void connect_left(Maze_vertex *maze[][10], int i, int j)
{
    maze[i][j]->left = maze[i-1][j];
    maze[i-1][j]->right = maze[i][j];
}

void connect_up(Maze_vertex *maze[][10], int i, int j)
{
    maze[i][j]->up = maze[i][j-1];
    maze[i][j-1]->down =  maze[i][j];
}

void run_maze(Maze_vertex * maze[][10])
{
    maze[0][0]->display();
    cout << "The End" << endl;
}
