# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer[][]}
def divide_array(nums, k)
  nums.sort!
  result = []
  
  (0...n).step(3) do |i|
    x, y, z = nums[i, 3]
    return [] if z - x > k

    result << [x, y, z]
  end

  result
end
