MOD = 1_000_000_007 

# @param {Integer} n
# @return {Integer}
def knight_dialer(n)
  table = Array.new(n+1) { Array.new(10) }
  jumps = [[4, 6], [6, 8], [7, 9], [4, 8], [3, 9, 0], [], [1, 7, 0], [2, 6], [1, 3], [2, 4]]

  dp = lambda do |remain, square|
    return 1 if remain.zero?

    cache = table[remain][square]
    return cache if cache

    total = jumps[square].sum do |next_square|
      dp[remain - 1, next_square]
    end
    table[remain][square] = total % MOD
  end

  total = (0..9).sum { |square| dp[n - 1, square] }
  total % MOD
end
