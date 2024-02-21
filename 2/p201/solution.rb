# @param {Integer} left
# @param {Integer} right
# @return {Integer}
def range_bitwise_and(left, right)
  right &= right - 1 while right > left
  right
end
