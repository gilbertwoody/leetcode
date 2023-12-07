# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def subarray_sum(nums, k)
  prefix_sum = Hash.new(0)
  prefix_sum[0] = 1
  y = count = 0
    
  nums.each do |n|
    y += n
    x = y - k
    count += prefix_sum[x] if prefix_sum.key?(x)
    prefix_sum[y] +=1 
  end

  count
end
