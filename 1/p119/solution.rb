# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
  return [1] if row_index.zero?

  prev = [0] + get_row(row_index - 1) + [0]
  prev.each_cons(2).map(&:sum)
end
