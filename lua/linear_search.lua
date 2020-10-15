local ranlist = require "random_list"

function busqueda(lista, objetivo)
-- Search for a number in a random list of integers. Big-O Complexity: O(n)
  match = false

  for k, elemento in ipairs(lista) do
    if elemento == objetivo then
      match = true
      break
    end
  end

  return match
end

list_int = ranlist.ints(20)
ENCONTRADO = busqueda(list_int, 7)
for k, elemento in ipairs(list_int) do print(elemento) end
if ENCONTRADO == true then print("esta") else print("no esta") end
