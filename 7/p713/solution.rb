# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def num_subarray_product_less_than_k(nums, k)
  return 0 if k <= 1

  p = 1
  left = 0
  (0...nums.size).reduce(0) do |memo, right|
    p *= nums[right]

    while p >= k
      p /= nums[left]
      left += 1
    end

    memo + right - left + 1
  end
end
