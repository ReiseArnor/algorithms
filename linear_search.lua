function busqueda(lista, objetivo)
-- Search for a number in a random list of integers. Big-O Complexity: O(n)
  match = false

  for elemento = 0, lista.size(), 1 do
    if lista[elemento] == objetivo then
      match = true
      break
    end
  end

  return match
end

function random_list(size)
  -- Generate a random list of integers. Big-O Complexity: O(n)
  math.randomseed(os.time())
  list = {}

  for i = 0, size do
    list[i] = math.random(0, 100)
  end

  -- added a function to know the size of the array
  list.size = function() return size end
  return list
end

list_int = random_list(20)
ENCONTRADO = busqueda(list_int, 7)
for elemento = 0, list_int.size(), 1 do print(list_int[elemento]) end
if ENCONTRADO == true then print("esta") else print("no esta") end
