# @param {Integer[]} nums
# @return {Integer}
def first_missing_positive(nums)
  i, n = 0, nums.size
  while i < n
    j = nums[i]

    if j >= 0 && j < n && nums[i] != nums[j]
      nums[i], nums[j] = nums[j], nums[i]
    else
      i += 1
    end
  end

  1.upto(n - 1) { |x| return x if nums[x] != x }

  n + (nums[0] == n ? 1 : 0)
end
