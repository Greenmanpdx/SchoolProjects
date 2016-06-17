#include "1_vertex.h"
#include <cstddef>
#include <iostream>

using namespace std;

one_vertex::one_vertex()
{
    left = NULL;
    right = NULL;
    up = NULL;
}

one_vertex::~one_vertex()
{
    delete left;
    delete right;
    delete up;
}



void one_vertex::display()
{
    char direction = 'O';

    while(direction == 'O')
    {
        cout << "Exits are Left, Up, Right. Press the first letter of the direction you want to go" << endl;

        cin >> direction;
	tolower(direction);

        switch(direction)
        {
            case 'u':
                up->display();
                return;
            case 'l':
                left->display();
                return;
            case 'r':
                right->display();
                return;
            default:
                cout << "There are no exits in that direction" << endl;
                direction = 'O';
                break;

        }
    }
    return;
}

//Vertex 2

two_vertex::two_vertex()
{
    down = NULL;
    right = NULL;
    up = NULL;
}

two_vertex::~two_vertex()
{
    delete down;
    delete right;
    delete up;
}



 void two_vertex::display()
{
    char direction = 'O';

    while(direction == 'O')
    {
        cout << "Exits are Right, Up, Down. Press the first letter of the direction you want to go" << endl;

        cin >> direction;
	tolower(direction);

        switch(direction)
        {
            case 'u':
                up->display();
                return;
            case 'r':
                right->display();
                return;
            case 'd':
                down->display();
                return;
            default:
                cout << "There are no exits in that direction" << endl;
                direction = 'O';
                break;

        }
    }
    return;
}

//Vertex 3

three_vertex::three_vertex()
{
    left = NULL;
    right = NULL;
    down = NULL;
}

three_vertex::~three_vertex()
{
    delete left;
    delete right;
    delete down;
}



 void three_vertex::display()
{
    char direction = 'O';

    while(direction == 'O')
    {
        cout << "Exits are Right, Left, Down. Press the first letter of the direction you want to go" << endl;

        cin >> direction;
	tolower(direction);

        switch(direction)
        {
            case 'r':
                right->display();
                return;
            case 'l':
                left->display();
                return;
            case 'd':
                down->display();
                return;
            default:
                cout << "There are no exits in that direction" << endl;
                direction = 'O';
                break;

        }
    }
    return;
}

//vertex 4
four_vertex::four_vertex()
{
    left = NULL;
    down = NULL;
    up = NULL;
}

four_vertex::~four_vertex()
{
    delete left;
    delete down;
    delete up;
}



 void four_vertex::display()
{
    char direction = 'O';

    while(direction == 'O')
    {
        cout << "Exits are Left, Up, Down. Press the first letter of the direction you want to go" << endl;

        cin >> direction;
	tolower(direction);


        switch(direction)
        {
            case 'u':
                up->display();
                return;
            case 'l':
                left->display();
                return;
            case 'd':
                down->display();
                return;
            default:
                cout << "There are no exits in that direction" << endl;
                direction = 'O';
                break;

        }
    }
    return;
}

//vertex 5
five_vertex::five_vertex()
{
    left = NULL;
    right = NULL;

}

five_vertex::~five_vertex()
{
    delete left;
    delete right;

}



 void five_vertex::display()
{
    char direction = 'O';

    while(direction == 'O')
    {
        cout << "Exits are Left, Right. Press the first letter of the direction you want to go" << endl;

        cin >> direction;
	tolower(direction);

        switch(direction)
        {
            case 'r':
                right->display();
                return;
            case 'l':
                left->display();
                return;

            default:
                cout << "There are no exits in that direction" << endl;
                direction = 'O';
                break;

        }
    }
    return;
}

//vertex 6
six_vertex::six_vertex()
{
    left = NULL;
    up = NULL;

}

six_vertex::~six_vertex()
{
    delete left;
    delete up;

}



 void six_vertex::display()
{
    char direction = 'O';

    while(direction == 'O')
    {
        cout << "Exits are Left, up. Press the first letter of the direction you want to go" << endl;

        cin >> direction;
	tolower(direction);

        switch(direction)
        {
            case 'u':
                up->display();
                return;
            case 'l':
                left->display();
                return;

            default:
                cout << "There are no exits in that direction" << endl;
                direction = 'O';
                break;

        }
    }
    return;
}

//vertex 7
seven_vertex::seven_vertex()
{
    left = NULL;
    down = NULL;

}

seven_vertex::~seven_vertex()
{
    delete left;
    delete down;

}



 void seven_vertex::display()
{
    char direction = 'O';

    while(direction == 'O')
    {
        cout << "Exits are Left, down. Press the first letter of the direction you want to go" << endl;

        cin >> direction;
	tolower(direction);

        switch(direction)
        {
            case 'd':
                down->display();
                return;
            case 'l':
                left->display();
                return;

            default:
                cout << "There are no exits in that direction" << endl;
                direction = 'O';
                break;

        }
    }
    return;
}

//vertex 8

eight_vertex::eight_vertex()
{
    right = NULL;
    up = NULL;

}

eight_vertex::~eight_vertex()
{
    delete right;
    delete up;

}



 void eight_vertex::display()
{
    char direction = 'O';

    while(direction == 'O')
    {
        cout << "Exits are right, up. Press the first letter of the direction you want to go" << endl;

        cin >> direction;
	tolower(direction);

        switch(direction)
        {
            case 'u':
                up->display();
                return;
            case 'r':
                right->display();
                return;

            default:
                cout << "There are no exits in that direction" << endl;
                direction = 'O';
                break;

        }
    }
    return;
}

//vertex 9

nine_vertex::nine_vertex()
{
    down = NULL;
    up = NULL;

}

nine_vertex::~nine_vertex()
{
    delete down;
    delete up;

}



 void nine_vertex::display()
{
    char direction = 'O';

    while(direction == 'O')
    {
        cout << "Exits are down, up. Press the first letter of the direction you want to go" << endl;

        cin >> direction;
	tolower(direction);

        switch(direction)
        {
            case 'u':
                up->display();
                return;
            case 'd':
                down->display();
                return;

            default:
                cout << "There are no exits in that direction" << endl;
                direction = 'O';
                break;

        }
    }
    return;
}

//vertex A

A_vertex::A_vertex()
{
    down = NULL;
    right = NULL;

}

A_vertex::~A_vertex()
{
    delete down;
    delete right;

}



 void A_vertex::display()
{
    char direction = 'O';

    while(direction == 'O')
    {
        cout << "Exits are down, right. Press the first letter of the direction you want to go" << endl;

        cin >> direction;
	tolower(direction);

        switch(direction)
        {
            case 'r':
                right->display();
                return;
            case 'd':
                down->display();
                return;

            default:
                cout << "There are no exits in that direction" << endl;
                direction = 'O';
                break;

        }
    }
    return;
}

//vertex B

B_vertex::B_vertex()
{
    left = NULL;


}

B_vertex::~B_vertex()
{
    delete left;


}



 void B_vertex::display()
{
    char direction = 'O';

    while(direction == 'O')
    {
        cout << "Exits are left. Press the first letter of the direction you want to go" << endl;

        cin >> direction;
	tolower(direction);

        switch(direction)
        {

            case 'l':
                left->display();
                return;

            default:
                cout << "There are no exits in that direction" << endl;
                direction = 'O';
                break;

        }
    }
    return;
}

//vertex C
C_vertex::C_vertex()
{
    up = NULL;


}

C_vertex::~C_vertex()
{
    delete up;


}



 void C_vertex::display()
{
    char direction = 'O';

    while(direction == 'O')
    {
        cout << "Exits are Up. Press the first letter of the direction you want to go" << endl;

        cin >> direction;
	tolower(direction);

        switch(direction)
        {

            case 'u':
                up->display();
                return;

            default:
                cout << "There are no exits in that direction" << endl;
                direction = 'O';
                break;

        }
    }
    return;
}

//vertex D

D_vertex::D_vertex()
{
    right = NULL;


}

D_vertex::~D_vertex()
{
    delete right;


}



 void D_vertex::display()
{
    char direction = 'O';

    while(direction == 'O')
    {
        cout << "Exits are Right. Press the first letter of the direction you want to go" << endl;

        cin >> direction;
	tolower(direction);

        switch(direction)
        {

            case 'r':
                right->display();
                return;

            default:
                cout << "There are no exits in that direction" << endl;
                direction = 'O';
                break;

        }
    }
    return;
}

//vertex E

E_vertex::E_vertex()
{
    down = NULL;


}

E_vertex::~E_vertex()
{
    delete down;


}



 void E_vertex::display()
{
    char direction = 'O';

    while(direction == 'O')
    {
        cout << "Exits are Down. Press the first letter of the direction you want to go" << endl;

        cin >> direction;
	tolower(direction);

        switch(direction)
        {

            case 'd':
                down->display();
                return;

            default:
                cout << "There are no exits in that direction" << endl;
                direction = 'O';
                break;

        }
    }
    return;
}


//vertex F, the finish line

 F_vertex::F_vertex()
{



}

F_vertex::~F_vertex()
{


}



 void F_vertex::display()
{


        cout << "You have reached the exit. Congratulations" << endl;
    return;

}
