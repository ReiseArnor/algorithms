ranlist = require "random_list"

function ordenamiento(lista)
-- Sorts a list of ints in ascending order. Big-O Complexity: O(n^2)
  for i = 1, lista.size() do
    key = lista[i]
    j = i - 1

    while j > 0 and lista[j] > key do
      lista[j + 1] = lista[j]
      j = j - 1
    end

    lista[j + 1] = key
  end

  return lista
end

list_int = ranlist.ints(20)
print("before:")
for k, elemento in ipairs(list_int) do print(elemento) end
ordenamiento(list_int)
print("after:")
for k, elemento in ipairs(list_int) do print(elemento) end
