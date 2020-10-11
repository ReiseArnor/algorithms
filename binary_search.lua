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

function random_list(size)
  -- Generate a random list of integers. Big-O Complexity: O(n)
  math.randomseed(os.time())
  local list = {}

  for i = 0, size do
    list[i] = math.random(0, 100) + 1
  end

  list.size = function() return size end
  return list
end

list_int = random_list(20)
table.sort(list_int)
ENCONTRADO = busqueda(list_int, 0, list_int.size(), 7)
for k, elemento in ipairs(list_int) do print(elemento) end
if ENCONTRADO == true then print("esta") else print("no esta") end
