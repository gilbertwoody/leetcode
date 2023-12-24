# @param {String} s
# @return {Integer}
def min_operations(s)
  count0 = 0
  0.upto(s.size - 1) do |i|
    count0 += 1 if (i.even? && s[i] == "0") || (i.odd? && s[i] == "1")
  end

  count1 = s.size - count0
  count0 < count1 ? count0 : count1
end
