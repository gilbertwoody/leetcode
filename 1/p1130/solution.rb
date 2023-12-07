# @param {Integer[]} arr
# @return {Integer}
def mct_from_leaf_values(arr)
  n = arr.size
  table = Array.new(n) { Array.new(n) }

  min_cost = lambda do |i, j|
    return arr[i]*arr[j] if j == i + 1

    cache = table[i][j]
    return cache if cache

    min = Float::INFINITY
    i.upto(j-1) do |k|
      lmax = arr[i..k].max
      rmax = arr[k+1..j].max
      cost = lmax * rmax
      cost += min_cost[i, k] if k > i
      cost += min_cost[k+1, j] if j > k + 1
      min = cost if cost < min
    end
    table[i][j] = min
  end

  min_cost[0, n - 1]
end
