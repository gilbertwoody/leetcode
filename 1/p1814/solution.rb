# @param {Integer[]} nums
# @return {Integer}
def count_nice_pairs(nums)
  nums.map! do |x| 
    x - x.to_s.reverse.to_i
  end

  h = Hash.new(0)
  ans = 0
  nums.each do |x|
    ans += h[x]
    ans %= 1_000_000_007
    h[x] += 1
  end

  ans
end
