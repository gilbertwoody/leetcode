# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  count = 0
  
  until n.zero?
    n &= n - 1
    count += 1
  end

  count
  # n.to_s(2).count("1")
end
