# @param {Integer[]} nums
# @return {Integer[]}
def largest_divisible_subset(nums)
  n = nums.size
  dp = Array.new(n, 1)

  nums.sort!
  max_i, max_size = 0, 1

  1.upto(n - 1) do |j|
    0.upto(j-1) do |i|
      if nums[j] % nums[i] == 0
        dp[j] = [dp[j], dp[i] + 1].max
      end
    end
    max_i, max_size = j, dp[j] if dp[j] > max_size
  end

  result = []
  max_i.downto(0) do |i|
    if dp[i] == max_size && nums[max_i] % nums[i] == 0
      result << nums[i]
      max_size -= 1
      max_i = i
    end
  end

  result
end
