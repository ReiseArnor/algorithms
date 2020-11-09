local ranlist = require "random_list"

function busqueda(lista, objetivo)
-- Search for a number in a random list of integers. Big-O Complexity: O(n)
  match = false

  for _, elemento in ipairs(lista) do
    if elemento == objetivo then
      match = true
      break
    end
  end

  return match
end

list_int = ranlist.ints(20)
ENCONTRADO = busqueda(list_int, 7)
for _, elemento in ipairs(list_int) do io.write(elemento, " ") end
if ENCONTRADO then print("\nel 7 esta") else print("\nel 7 no esta") end
