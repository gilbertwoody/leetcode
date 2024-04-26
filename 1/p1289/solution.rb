# @param {Integer[][]} grid
# @return {Integer}
def min_falling_path_sum(grid)
  n = grid.size
  return grid[0][0] if n == 1

  f = lambda do |row|
    min = sec = Float::INFINITY
    mini = -1
    0.upto(n - 1) do |i|
      t = row[i]
      if t < sec
        if t < min
          sec = min
          min, mini = t, i
        else
          sec = t
        end
      end
    end

    [min, mini, sec]
  end

  row = grid[-1]
  (n - 2).downto(0) do |i|
    min, mini, sec = f[row]
    new_row = grid[i]
    0.upto(n - 1) do |j|
      new_row[j] += j == mini ? sec : min
    end
    row = new_row
  end

  grid[0].min
end
