require "set"

# @param {Character[][]} board
# @param {String} word
# @return {Boolean}
def exist(board, word)
  m, n, sz = [board, board[0], word].map(&:size)
  visiting = Array.new(m) { Array.new(n) }
  check = lambda do |i, j, k|
    return false if word[k] != board[i][j]
    return true if k == sz - 1

    visiting[i][j] = true
    p = [i, j]
    visiting << p
    neighbors = [[i-1, j], [i+1, j], [i, j-1], [i, j+1]]
    neighbors.reject! { |x, y| x < 0 || x >= m || y < 0 || y >= n }
    neighbors.reject! { |x, y| visiting[x][y] }

    return true if neighbors.any? { |x, y| check[x, y, k + 1] }

    visiting[i][j] = false
  end


  0.upto(m-1) do |x|
    0.upto(n-1) do |y|
      return true if check[x, y, 0]
    end
  end

  false
end
