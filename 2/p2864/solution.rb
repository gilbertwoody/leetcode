# @param {String} s
# @return {String}
def maximum_odd_binary_number(s)
  ones = s.count("1")
  zeros = s.size - ones
  ones -= 1
  "#{'1' * ones}#{'0' * zeros}1"
end
