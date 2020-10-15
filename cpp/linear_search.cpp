#include <random>
#include <iostream>
#include <vector>
using namespace std;

bool busqueda(vector<int> lista, int objetivo)
// Search for a number in a random list of integers. Big-O Complexity: O(n)
{
    bool match = false;

    for(int elemento : lista)
    {
        if(elemento == objetivo)
        {
            match = true;
            break;
        }
    }

    return match;
}

int main()
{
    vector<int> list_int;
    srand(time(0));
    for(int i(0); i < 20; i++)
    {
        list_int.push_back((rand() % 100) + 1);
    }

    bool ENCONTRADO = busqueda(list_int, 7);
    for (int elemento : list_int) { cout << elemento << " "; }
    ENCONTRADO ? cout << "\n esta \n": cout << "\n no esta \n";

    return 0;
}
