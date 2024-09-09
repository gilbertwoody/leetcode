# @param {Character[][]} board
# @return {Void} Do not return anything, modify board in-place instead.
def solve_sudoku(board)
  rows = Array.new(9) { [] }
  cols = Array.new(9) { [] }
  blocks = Array.new(3) { Array.new(3) { [] } }
  spaces = []

  fill = lambda do |r, c, digit, t = true|
    rows[r][digit] = t
    cols[c][digit] = t
    blocks[r/3][c/3][digit] = t
  end

  0.upto(8) do |r|
    0.upto(8) do |c|
      if board[r][c] == "."
        spaces << [r, c]
        next
      end

      d = Integer(board[r][c])
      fill[r, c, d]
    end
  end

  dfs = lambda do |n = 0|
    return true if n == spaces.size

    r, c = spaces[n]
    1.upto(9) do |guess|
      unless rows[r][guess] || cols[c][guess] || blocks[r/3][c/3][guess]
        fill[r, c, guess]
        board[r][c] = guess.to_s

        found = dfs[n + 1]
        return found if found

        fill[r, c, guess, false]
      end
    end

    false
  end

  dfs[]
end
