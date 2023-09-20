# @param {Integer[]} nums
# @param {Integer} x
# @return {Integer}
def min_operations(nums, x)
  sum = nums.sum 
  return -1 if sum < x

  right, size = 0, nums.size
  lsum, rsum = 0, sum
  ans = size + 1
  -1.upto(size - 1) do |left|
    lsum += nums[left] if left != -1

    while right < size && lsum + rsum > x
      rsum -= nums[right]
      right += 1
    end

    if  lsum + rsum == x
      len = left + 1 + size - right
      ans = len if len < ans
    end
  end

  return -1 if ans > size
  ans
end
