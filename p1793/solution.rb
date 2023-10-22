# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def maximum_score(nums, k)
  n = nums.size
  left = right = k
  ans = min = nums[k] 

  while left > 0 || right < n - 1
    l = left > 0 ? nums[left - 1] : 0
    r = right < n - 1 ? nums[right + 1] : 0
    if l < r
      min = r if r < min
      right += 1
    else
      min = l if l < min
      left -= 1
    end
    score = min * (right - left + 1)
    ans = score if score > ans
  end

  ans
end
