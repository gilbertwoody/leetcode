# @param {Integer[]} nums
# @return {Integer}
def largest_perimeter(nums)
  largest = -1

  nums.sort!
  prefix_sum = [0]
  nums.each do |x|
    prefix_sum << prefix_sum[-1] + x
  end

  nums.size.downto(3) do |i|
    return prefix_sum[i] if prefix_sum[i] < 2 * prefix_sum[i-1]
  end

  return -1
end
