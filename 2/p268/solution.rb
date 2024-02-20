# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  # Method 0: Using XOR
  # (0..nums.size).chain(nums).reduce(&:^)
  
  # Method 1: Sum formula
  n = nums.size
  n * (n + 1) / 2 - nums.sum
end
