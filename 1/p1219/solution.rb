# @param {Integer[][]} grid
# @return {Integer}
def get_maximum_gold(grid)
  m, n = grid.size, grid[0].size
  directions = [[1, 0], [-1, 0], [0, 1], [0, -1]]
  max_from = lambda do |r, c|
    return 0 if r < 0 || r == m
    return 0 if c < 0 || c == n
    return 0 if grid[r][c].zero?

    gold = grid[r][c]
    grid[r][c] = 0
    max = directions.map { |h, v| max_from[r+h, c+v] }.max

    grid[r][c] = gold
    max + gold
  end

  max = 0
  0.upto(m - 1) do |r|
    0.upto(n - 1) do |c|
      gold = max_from[r, c]
      max = gold if gold > max
    end
  end

  return max
end
