# @param {String} s1
# @param {String} s2
# @return {Integer}
def minimum_delete_sum(s1, s2)
  m, n = s1.size, s2.size
  table = Array.new(m) { Array.new(n) }

  # result for input s1[i..], s2[j..]
  dp = lambda do |i, j|
    return s1[i..].each_char.sum(&:ord) if j >= n
    return s2[j..].each_char.sum(&:ord) if i >= m

    cached = table[i][j]
    return cached if cached

    table[i][j] = if s1[i] == s2[j]
      dp[i+1, j+1]
    else
      cost1 = dp[i+1, j] + s1[i].ord
      cost2 = dp[i, j+1] + s2[j].ord
      (cost1 < cost2) ? cost1 : cost2
    end
  end

  dp[0, 0]
end
