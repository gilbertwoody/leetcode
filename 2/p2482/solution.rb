# @param {Integer[][]} grid
# @return {Integer[][]}
def ones_minus_zeros(grid)
  row_sum = grid.map(&:sum)
  col_sum = :zip.to_proc[*grid].map(&:sum)

  m, n = grid.size, grid[0].size
  diff = Array.new(m) { Array.new(n) }
  0.upto(m - 1) do |i|
    0.upto(n - 1) do |j|
      diff[i][j] = 2 * row_sum[i] + 2 * col_sum[j] - (m + n)
    end
  end

  diff
end
