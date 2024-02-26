# @param {Integer[]} nums
# @return {Integer[]}
def rearrange_array(nums)
  result = []
  p, n = 0, 1
  nums.each do |x|
    if x > 0
      result[p] = x
      p += 2
    else
      result[n] = x
      n += 2
    end
  end

  result
end
