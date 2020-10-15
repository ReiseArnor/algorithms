import random


def ordenamiento(lista):
    """Sorts a list of ints in ascending order.
    Big-O Complexity: O(n^2)"""
    for i in range(len(lista)):
        key = lista[i]
        j = i - 1

        while j >= 0 and lista[j] > key:
            lista[j + 1] = lista[j]
            j -= 1

        lista[j + 1] = key

    return lista


list_int = [random.randint(0, 100) for i in range(20)]
print("before: ", list_int)
ordenamiento(list_int)
print("after: ", list_int)
