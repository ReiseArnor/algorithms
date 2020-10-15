#include <vector>
#include <iostream>
using namespace std;

vector<int> ordenamiento(vector<int> lista)
// Sorts a list of ints in ascending order. Big-O Complexity: O(n^2)
{
    for (int i(1); i < lista.size(); i++)
    {
        int key = lista.at(i);
        int j = i - 1;

        while (j >= 0 && lista.at(j) > key)
        {
            lista.at(j + 1) = lista.at(j);
            --j;
        }

        lista.at(j + 1) = key;
    }

    return lista;
}

int main()
{
    vector<int> in;
    vector<int> out;

    srand(time(0));
    for(int i(0); i < 20; i++)
    {
        in.push_back((rand() % 100) + 1);
    }

    out = ordenamiento(in);

    cout << "input: " ;
    for (int n : in) { cout << n << " "; }
    cout << "\n";

    cout << "output: " ;
    for (int n : out) { cout << n << " "; }
    cout << "\n";

    return 0;
}
