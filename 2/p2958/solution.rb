# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def max_subarray_length(nums, k)
  freq = Hash.new(0)
  left = 0
  (0...nums.size).reduce(1) do |memo, right|
    rk = nums[right]
    fq = freq[rk] += 1
    if fq > k
      until (lk = nums[left]) == rk
        freq[lk] -= 1
        left += 1
      end
      freq[rk] = k
      left += 1
    end

    len = right - left + 1
    len > memo ? len : memo
  end
end
