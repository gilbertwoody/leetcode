# @param {Integer[]} nums
# @return {Integer}
def largest_perimeter(nums)
  largest = -1

  nums.sort!
  prefix_sum = [0]
  nums.each do |x|
    prefix_sum << prefix_sum[-1] + x
  end

  prefix_sum.shift
  1.upto(nums.size - 2) do |i|
    sum = prefix_sum[i]
    j = nums.rindex { |element| element < sum }
    if j > i
      meter = sum + nums[j]
      largest = meter if meter > largest
    end
  end

  largest
end
