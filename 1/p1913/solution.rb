# @param {Integer[]} nums
# @return {Integer}
def max_product_difference(nums)
  max1 = max2 = 0
  min1 = min2 = 10_001
  
  nums.each do |n|    
    if n > max1
      max1, max2 = n, max1 
    elsif n > max2
      max2 = n
    end

    if n < min1
      min1, min2 = n, min1
    elsif n < min2
      min2 = n
    end
  end

  max1 * max2 - min1 * min2
end
