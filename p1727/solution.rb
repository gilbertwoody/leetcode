require "set"

# @param {Integer[][]} matrix
# @return {Integer}
def largest_submatrix(matrix)
  m, n = matrix.size, matrix.first.size  
  prev_heights = []
  max = 0

  0.upto(m - 1) do |row|
    heights = []
    seen = Set.new

    prev_heights.each do |height, col|
      if matrix[row][col] == 1
        heights << [height + 1, col]
        seen << col
      end
    end

    unseen = (0...n).to_set - seen
    unseen.each do |col|
      heights << [1, col] unless matrix[row][col].zero?
    end

    heights.each_with_index do |(h, _), i|
      erea = h * (i + 1)
      max = erea if erea > max
    end

    prev_heights = heights
  end

  max
end
