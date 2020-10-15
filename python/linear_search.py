import random


def busqueda(lista, objetivo):
    """Search for a number in a random list of integers.
    Big-O Complexity: O(n)"""
    match = False

    for elemento in lista:
        if elemento == objetivo:
            match = True
            break

    return match


list_int = [random.randint(0, 100) for i in range(20)]
ENCONTRADO = busqueda(list_int, 7)
print(list_int)
print("esta" if ENCONTRADO else "no esta")
