# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
  first = second = 0
  nums.each do |n|
    if n > first
      first, second = n, first
    elsif n > second
      second = n 
    end
  end

  (first - 1) * (second - 1)
end
