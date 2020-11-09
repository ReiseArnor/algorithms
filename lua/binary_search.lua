local ranlist = require "random_list"

function busqueda(lista, comienzo, final, objetivo)
-- Search for a number in a sorted list of integers. Big-O Complexity: O(log n)
  if comienzo > final then
      return false
  end

  local medio = (comienzo + final) // 2

  if lista[medio] == objetivo then
    return true
  elseif lista[medio] < objetivo then
    return busqueda(lista, medio + 1, final, objetivo)
  else
    return busqueda(lista, comienzo, medio - 1, objetivo)
  end
end

list_int = ranlist.ints(20)
table.sort(list_int)
ENCONTRADO = busqueda(list_int, 0, list_int.size(), 7)
for _, elemento in ipairs(list_int) do io.write(elemento, " ") end
if ENCONTRADO then print("\nel 7 esta") else print("\nel 7 no esta") end
