# @param {Integer[]} nums
# @return {Integer[]}
def get_sum_absolute_differences(nums)
  n = nums.size 
  
  prefix_sum = Array.new(n)
  suffix_sum = Array.new(n)
  ps = ss = 0
  0.upto(n - 1) do |i|
    prefix_sum[i] = ps
    suffix_sum[-(i+1)] = ss
    ps += nums[i]
    ss += nums[-(i+1)]
  end

  result = []
  0.upto(n - 1) do |i|
    sum = suffix_sum[i] - prefix_sum[i] 
    sum += (2*i + 1 - n) * nums[i]
    result[i] = sum
  end
  result
end
