# @param {Integer[][]} grid
# @return {Integer}
def cherry_pickup(grid)
  m, n = grid.size, grid[0].size
  table = Array.new(70) { Array.new(70) { [] } }
  dp = lambda do |i, j, row|
    return grid[m-1][i] + grid[m-1][j] if row == m - 1

    memo = table[i][j][row]
    return memo if memo

    ii = [i-1, i, i+1].reject { |x| x < 0 || x >= n }
    jj = [j-1, j, j+1].reject { |x| x < 0 || x >= n }

    comb = ii.product(jj).reject { |x, y| x == y }
    pickups = comb.map { |x, y| dp[x, y, row+1] }
    table[i][j][row] = grid[row][i] + grid[row][j] + pickups.max
  end

  dp[0, n - 1, 0]
end
