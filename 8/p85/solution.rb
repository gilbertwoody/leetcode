# @param {Character[][]} matrix
# @return {Integer}
def maximal_rectangle(matrix)
  nr, nc = matrix.size, matrix[0].size
  heights = Array.new(nc + 1, 0)

  max = 0
  matrix.each do |row|
    0.upto(nc - 1) do |i|
      heights[i] = row[i] == "0" ? 0 : heights[i] + 1
    end

    stack = []
    0.upto(nc) do |i|
      until stack.empty? || heights[i] > heights[stack[-1]]
        h = heights[stack.pop]
        w = stack.empty? ? i : i - stack[-1] - 1
        area = h * w
        max = area if area > max
      end

      stack << i
    end
  end

  return max
end
