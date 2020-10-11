import random


def busqueda(lista, comienzo, final, objetivo):
    """Search for a number in a sorted list of integers.
    Big-O Complexity: O(log n)"""
    if comienzo > final:
        return False

    medio = (comienzo + final) // 2

    if lista[medio] == objetivo:
        return True
    elif lista[medio] < objetivo:
        return busqueda(lista, medio + 1, final, objetivo)
    else:
        return busqueda(lista, comienzo, medio - 1, objetivo)


list_int = sorted([random.randint(0, 100) for i in range(20)])
ENCONTRADO = busqueda(list_int, 0, len(list_int), 7)
print(list_int)
print("esta" if ENCONTRADO else "no esta")
