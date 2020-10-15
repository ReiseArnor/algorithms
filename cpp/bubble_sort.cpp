#include <iostream>
#include <vector>
using namespace std;

vector<int> ordenamiento(vector<int> lista)
// Sorts a list of integers in ascending order. Big-O Complexity: O(n^2)
{
    for(int i(0); i < lista.size(); i++)
        for(int j(0); j < lista.size() - i - 1; j++)
            if(lista.at(j) > lista.at(j + 1))
            {
                int current = lista.at(j);
                lista.at(j) = lista.at(j + 1);
                lista.at(j + 1) = current;
            }
                
    
    return lista;
}

int main()
{
    vector<int> list_int;
    vector<int> new_list;
    srand(time(0));
    for(int i(0); i < 20; i++)
    {
        list_int.push_back((rand() % 100) + 1);
    }

    cout << "before: ";
    for (int elemento : list_int) { cout << elemento << " "; }
    new_list = ordenamiento(list_int);
    cout << "\nafter: ";
    for (int elemento : new_list) { cout << elemento << " "; }
    cout << "\n";
    return 0;
}
