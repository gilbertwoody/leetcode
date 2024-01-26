# @param {Integer} m
# @param {Integer} n
# @param {Integer} max_move
# @param {Integer} start_row
# @param {Integer} start_column
# @return {Integer}
def find_paths(m, n, max_move, start_row, start_column)
  table = Array.new(m) { Array.new(n) { [] } }
  dp(start_row, start_column, max_move, m, n, table)
end

def dp(row, col, remain, m, n, table)
  return 1 if row < 0 || row == m || col < 0 || col == n
  return 0 if remain.zero?

  memo = table[row][col][remain]
  return memo if memo

  c = dp(row - 1, col, remain - 1, m, n, table)
  c += dp(row + 1, col, remain - 1, m, n, table)
  c += dp(row, col - 1, remain - 1, m, n, table)
  c += dp(row, col + 1, remain - 1, m, n, table)
  table[row][col][remain] = c % 1_000_000_007
end
