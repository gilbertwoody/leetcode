# @param {Integer[]} nums
# @return {Integer}
def min_operations(nums)
  counts = nums.tally.values
  return -1 if counts.any?(1)

  counts.sum do |n|
    q, r = n.divmod(3)
    q += r.zero? ? 0 : 1
  end
end
