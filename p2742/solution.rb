# @param {Integer[]} cost
# @param {Integer[]} time
# @return {Integer}
def paint_walls(cost, time)
  n = cost.size
  table = Array.new(n) { [] }
  cost_of = lambda do |i, remain|
    return 0 if remain <= 0
    return Float::INFINITY if i >= n 
    
    c = table[i][remain]
    return c if c

    c1 = cost[i] + cost_of[i + 1, remain - time[i] - 1]
    c2 = cost_of[i+1, remain]
    table[i][remain] = c1 < c2 ? c1 : c2
  end

  cost_of[0, n]
end
