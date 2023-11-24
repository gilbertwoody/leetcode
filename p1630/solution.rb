# @param {Integer[]} nums
# @param {Integer[]} l
# @param {Integer[]} r
# @return {Boolean[]}
def check_arithmetic_subarrays(nums, l, r)
  check_sorted = lambda do |a|
    diff = a[1] - a[0]
    
    1.upto(a.size - 1) do |i|
      return false if a[i] - a[i-1] != diff
    end
    
    true
  end

  result = []
  0.upto(l.size - 1) do |i|
    result << check_sorted[nums[l[i]..r[i]].sort]
  end

  result
end
