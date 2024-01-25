# @param {String} text1
# @param {String} text2
# @return {Integer}
def longest_common_subsequence(text1, text2)
  table = Array.new(text1.size) { [] }
  
  dp(text1, text2, table)
end

def dp(s1, s2, table, i = s1.size - 1, j = s2.size - 1)
  return 0 if i < 0 || j < 0

  memo = table[i][j]
  return memo if memo

  table[i][j] = if s1[i] == s2[j]
    dp(s1, s2, table, i - 1, j - 1) + 1
  else
    a = dp(s1, s2, table, i - 1, j)
    b = dp(s1, s2, table, i, j - 1)
    a > b ? a : b
  end
end
