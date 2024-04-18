require "set"

# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  m, n = grid.size, grid[0].size
  total, overlap = 0, 0
  rm, rn = 0...m, 0...n
  0.upto(m - 1) do |r|
    0.upto(n - 1) do |c|
      if grid[r][c] == 1
        total += 1

        neighbors = [[r-1, c], [r+1, c], [r, c-1], [r, c+1]]
        neighbors.select! do |r, c|
          rm === r && rn === c && grid[r][c] == 1
        end
        overlap += neighbors.size
      end
    end
  end

  4 * total - overlap
end
