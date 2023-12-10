# @param {Integer[][]} matrix
# @return {Integer[][]}
def transpose(matrix)
  m, n = matrix.size, matrix[0].size
  Array.new(n) do |i| 
    Array.new(m)  { |j| matrix[j][i] } 
  end
end
