# @param {Integer} n
# @return {Integer}
def minimum_one_bit_operations(n)
  ans, k, mask = 0, 0, 1

  while mask <= n
    ans = 2 ** (k + 1) - 1 - ans unless (n & mask).zero?
    mask <<= 1
    k += 1
  end

  ans
end
