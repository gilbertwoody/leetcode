# @param {Integer} n
# @param {Integer} k
# @return {Integer}
def k_inverse_pairs(n, k)
  table = Array.new(n+1) { [] }
  dp(n, k, table)
end
  
def dp(n, k, table)
  return 1 if k.zero?
  return 0 if n <= 0 || k < 0

  memo = table[n][k]
  return memo if memo
  
  p = dp(n - 1, k, table) + dp(n, k - 1, table) - dp(n - 1, k - n, table)
  table[n][k] = p % 1_000_000_007
end
