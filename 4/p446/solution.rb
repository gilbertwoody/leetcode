# @param {Integer[]} nums
# @return {Integer}
def number_of_arithmetic_slices(nums)
  memo = Hash.new(0)
  n = nums.size
  result = 0
  
  1.upto(n - 2) do |j|
    y = nums[j]
    0.upto(j - 1) do |i|
      x = nums[i]
      diff = x - y
      cnt = memo[[i, diff]]
      memo[[j, diff]] += cnt + 1
      result += cnt
    end
  end
  
  y = nums[n - 1]
  0.upto(n - 2) do |i|
    x = nums[i]
    diff = x - y
    cnt = memo[[i, diff]]
    result += cnt
  end

  result
end
