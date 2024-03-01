# @param {Integer[]} arr
# @param {Integer} k
# @return {Integer}
def max_sum_after_partitioning(arr, k)
  dp = lambda do |i, table = [0, arr[0]]|
    return table[i+1] if table[i+1]

    up = k < i + 1 ? k : i + 1
    max = arr[i]
    sums = (1..up).map do |n|
      a = arr[i - n + 1]
      max = a if a > max

      dp[i - n, table] + n * max
    end

    table[i+1] = sums.max
  end

  dp[arr.size - 1]
end
