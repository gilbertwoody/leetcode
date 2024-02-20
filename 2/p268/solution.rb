# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  n = nums.size
  n * (n + 1) / 2 - nums.sum
end
