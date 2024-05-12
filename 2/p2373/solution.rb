# @param {Integer[][]} grid
# @return {Integer[][]}
def largest_local(grid)
  n = grid.size

  base = [0, 1, 2].product([0, 1, 2])
  a = (0..n-3).to_a
  top_left = a.map { |i| a.map { |j| [i, j] } }
  top_left.map do |row|
    row.map do |i, j|
      base.map { |p, q| grid[i + p][j + q] }.max
    end
  end
end
