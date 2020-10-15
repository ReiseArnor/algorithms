import random


def ordenamiento(lista):
    """Sorts a list of integers in ascending order. Big-O Complexity: O(n^2)"""
    n = len(lista)

    for i in range(n):
        for j in range(0, n - i - 1):  # O(n) * O(n) = O(n * n) = O(n^2)

            if lista[j] > lista[j + 1]:
                lista[j], lista[j + 1] = lista[j + 1], lista[j]

    return lista


list_int = [random.randint(0, 100) for i in range(20)]
print("before: ", list_int)
ordenamiento(list_int)
print("after: ", list_int)
