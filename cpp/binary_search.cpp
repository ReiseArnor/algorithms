#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

bool busqueda(vector<int> lista, int comienzo, int final, int objetivo)
// Search for a number in a sorted list of integers. Big-O Complexity: O(log n)
{
    if (comienzo > final)
        return false;

    int medio = (comienzo + final) / 2;

    if (lista.at(medio) == objetivo)
        return true;
    else if (lista.at(medio) < objetivo)
        return busqueda(lista, medio + 1, final, objetivo);
    else
        return busqueda(lista, comienzo, medio - 1, objetivo);
}

int main(int argc, char const *argv[])
{
    vector<int> list_int;
    srand(time(0));

    for(int i(0); i < 20; i++)
    {
        list_int.push_back((rand() % 100) + 1);
    }

    sort(list_int.begin(), list_int.end());

    bool ENCONTRADO = busqueda(list_int, 0, list_int.size(), 7);
    for (int elemento : list_int) { cout << elemento << " "; }
    ENCONTRADO ? cout << "\n esta \n" : cout << "\n no esta \n";
    return 0;
}
