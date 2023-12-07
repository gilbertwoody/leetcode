# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def max_dot_product(nums1, nums2)
    table = Array.new(nums1.size) { Array.new(nums2.size) }
    max_till = lambda do |i, j|
      return 0 if i.negative? || j.negative?
  
      cached = table[i][j]
      return cached unless cached.nil?
  
      m1 = max_till[i-1, j]
      m2 = max_till[i, j-1]
      m3 = nums1[i] * nums2[j] 
      m4 = max_till[i-1, j-1]
      m3 += m4 unless m4.negative?
      table[i][j] = [m1, m2, m3].max
    end
  
    max_till[nums1.size - 1, nums2.size - 1]
  end