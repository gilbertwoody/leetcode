# @param {Integer[]} nums
# @return {Integer[][]}
def subsets(nums)
  return [[]] if nums.empty?

  set = subsets(nums.drop(1))
  set + set.map { |s| s + [nums[0]] }
end
