# @param {Integer[]} height
# @return {Integer}
def trap(height)
  n = height.size
  return 0 if n < 3

  left_max, right_max = Array.new(n), Array.new(n)

  lmax = 0
  0.upto(n-1) do |i|
    lmax = height[i] if height[i] > lmax
    left_max[i] = lmax
  end

  rmax = 0
  -1.downto(-n) do |i|
    rmax = height[i] if height[i] > rmax
    right_max[i] = rmax
  end

  0.upto(n-1).reduce(0) do |memo, i|
    memo + [left_max[i], right_max[i]].min - height[i]
  end
end
