# @param {Integer[]} nums
# @return {Integer}
def max_array_value(nums)
  prev = 0
  (nums.size - 1).downto(0) do |i|
    if prev >= nums[i]
      prev += nums[i]
    else
      prev = nums[i]
    end
  end
  prev
end
