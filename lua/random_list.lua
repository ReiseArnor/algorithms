local random_list = {}

function random_list.ints(size)
  -- Generate a random list of integers. Big-O Complexity: O(n)
  math.randomseed(os.time())
  local list = {}

  for i = 0, size do
    list[i] = math.random(0, 100) + 1
  end

  list.size = function() return size end
  return list
end

return random_list
