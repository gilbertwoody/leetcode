# @param {Integer[]} nums
# @param {Integer} goal
# @return {Integer}
def num_subarrays_with_sum(nums, goal)
  prefix = Hash.new(0)
  prefix[0] = 1
  sum = count = 0

  nums.each do |n|
    sum += n
    count += prefix[sum - goal]
    prefix[sum] += 1
  end

  count
end
