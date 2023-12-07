# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def partition_array(nums, k)
  nums = nums.sort
  floor = nums.first
  
  nums.drop(1).reduce(1) do |count, n|
    if n <= floor + k
      count
    else 
      floor = n
      count + 1
    end
  end
end
