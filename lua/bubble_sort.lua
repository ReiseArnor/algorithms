ranlist = require "random_list"

function ordenamiento(lista)
-- Sorts a list of integers in ascending order. Big-O Complexity: O(n^2)
  local n = lista.size()

  for i = 0, n do
    for j = 0, n - i - 1 do -- O(n) * O(n) = O(n * n) = O(n^2)

      if lista[j] > lista[j + 1] then
        lista[j], lista[j + 1] = lista[j + 1], lista[j]
      end
    end
  end

  return lista
end

list_int = ranlist.ints(20)
print("before:")
for k, elemento in ipairs(list_int) do print(elemento) end
ordenamiento(list_int)
print("after:")
for k, elemento in ipairs(list_int) do print(elemento) end
