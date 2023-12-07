# @param {Integer[][]} grid
# @return {Integer}
def find_max_fish(grid)
  m, n = grid.size, grid.first.size
  neighbors = lambda do |x, y|
    result = []

    result << [x - 1, y] if x >= 1
    result << [x + 1, y] if x < m - 1
    result << [x, y - 1] if y >= 1
    result << [x, y + 1] if y < n - 1

    result
  end
  
  dfs = lambda do |i, j, visited = Set.new|
    return 0 if visited.include?([i, j])
    return 0 if grid[i][j].zero?

    visited << [i, j]
    count = grid[i][j]
    neighbors[i, j].each do |x, y|
      count += dfs[x, y, visited]
    end

    visited << [i, j]
    count
  end
  
  cells = Array(0...m).product(Array(0...n))
  fishes = cells.map { |(x, y)| dfs[x, y] }
  fishes.max
end
