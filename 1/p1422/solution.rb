# @param {String} s
# @return {Integer}
def max_score(s)
  prefix_zeros = []
  postfix_ones = []
  
  count0 = count1 = 0
  0.upto(s.size - 1) do |i|
    count0 += 1 if s[i] == "0"
    prefix_zeros << count0

    count1 += 1 if s[-(i+1)] == "1"
    postfix_ones << count1
  end

  max = 0
  0.upto(s.size - 2) do |i|
    sum = prefix_zeros[i] + postfix_ones[-(i+2)]
    max = sum if sum > max
  end

  max
end
