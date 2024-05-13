# @param {Integer[][]} grid
# @return {Integer}
def matrix_score(grid)
  m, n = grid.size, grid[0].size

  toggle_row = lambda do |row|
    0.upto(n-1) do |c|
      grid[row][c] = grid[row][c].zero? ? 1 : 0
    end
  end

  toggle_col = lambda do |col|
    0.upto(m - 1) do |r|
      grid[r][col] = grid[r][col].zero? ? 1 : 0
    end
  end

  0.upto(m - 1) do |i|
    toggle_row[i] if grid[i][0] == 0
  end

  0.upto(n - 1) do |c|
    count = 0
    0.upto(m - 1) do |r|
      count += 1 if grid[r][c].zero?
    end
    toggle_col[c] if 2 * count > m
  end

  grid.sum { |row| row.join.to_i(2) }
end
