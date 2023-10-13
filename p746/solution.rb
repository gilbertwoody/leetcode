# @param {Integer[]} cost
# @return {Integer}
def min_cost_climbing_stairs(cost)  
  size = cost.size
  table = []
  table[size - 1] = cost[-1]
  table[size - 2] = cost[-2]

  cost_from = lambda do |i|
    return table[i] if table[i]

    table[i] = cost[i] 
    table[i] += [cost_from[i+1], cost_from[i+2]].min
  end

  [cost_from[0], cost_from[1]].min
end
