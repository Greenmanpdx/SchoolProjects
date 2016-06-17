#include <iostream>
#include <fstream>
#include "Maze_vertex.h"
#include "1_vertex.h"

using namespace std;

void connect_left(Maze_vertex *maze[][10], int i, int j);
void connect_up(Maze_vertex * maze[][10], int i, int j);
void run_maze(Maze_vertex * maze[][10]);

int main()
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
    return 0;
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
