# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def count_subarrays(nums, k)
  max = nums.max
  freq_to_index = Hash.new(-1)
  freq = 0
  nums.each_with_index.reduce(0) do |memo , (x, i)|
    if x == max
      freq += 1
      freq_to_index[freq] = i
    end

    memo + freq_to_index[freq - k + 1] + 1
  end
end
