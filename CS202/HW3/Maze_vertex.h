#ifndef MAZE_VERTEX_H
#define MAZE_VERTEX_H


class Maze_vertex
{
    public:
        Maze_vertex();
        virtual ~Maze_vertex();
      //  Maze_vertex(const Maze_vertex& other);
        virtual void display();

        Maze_vertex * up;
        Maze_vertex * down;
        Maze_vertex * left;
        Maze_vertex * right;

    protected:


    private:
};

#endif // MAZE_VERTEX_H
