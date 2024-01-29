# @param {Integer[][]} matrix
# @param {Integer} target
# @return {Integer}
def num_submatrix_sum_target(matrix, target)
  m, n = matrix.size, matrix.first.size
  count = 0

  prefix_sum = Hash.new(0)
  col_sum = Array.new(n, 0)
  0.upto(m - 1) do |r|
    row_sum = 0
    0.upto(n - 1) do |c|
      x = matrix[r][c]
      col_sum[c] += x
      row_sum += x
      prefix_sum[[r, c]] = prefix_sum[[r-1, c-1]] + col_sum[c] + row_sum - x
    end
  end

  count = 0
  0.upto(m - 1) do |i|
    i.upto(m - 1) do |j|
      h = Hash.new(0)
      0.upto(n - 1) do |k|
        horizon_sum = prefix_sum[[j, k]] 
        horizon_sum -= prefix_sum[[i-1, k]] if i > 0
        delta = horizon_sum - target
        count += 1 if delta.zero?
        count += h[delta]
        h[horizon_sum] += 1
      end
    end
  end

  count
end
