# @param {Integer[]} nums
# @return {Boolean}
def find132pattern(nums)
  size = nums.size
  return false if size < 3

  left_min = nums[0]
  right_all = nums[2..].sort

  1.upto(size - 1) do |j|
    if left_min < nums[j]
      i = right_all.bsearch_index(&left_min.method(:<))
      return true if i && right_all[i]&.<(nums[j])
    end

    left_min = nums[j] if nums[j] < left_min
    right_all.delete(nums[j + 1])
  end

  false
end
