# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def num_subarray_product_less_than_k(nums, k)
  return 0 if k <= 1

  count = 0
  p = 1
  left = 0
  0.upto(nums.size - 1) do |right|
    p *= nums[right]

    while p >= k
      p /= nums[left]
      left += 1
    end

    count += right - left + 1
  end

  count
end
