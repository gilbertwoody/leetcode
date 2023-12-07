# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Float}
def find_median_sorted_arrays(nums1, nums2)
  median_of(nums1, nums2)
end

def median_of(nums1, nums2) 
  nums1, nums2 = nums2, nums1 if nums1.size > nums2.size
  
  m, n = nums1.size, nums2.size
  left, right = 0, m
  half = (m + n + 1) / 2

  while left <= right
    middle1 = (left + right) / 2
    middle2 = half - middle1
    left1 = middle1.zero? ? -1_000_001 : nums1[middle1 - 1]
    left2 = middle2.zero? ? -1_000_001 : nums2[middle2 - 1]
    right1 = middle1 == m ? 1_000_001 : nums1[middle1];
    right2 = middle2 == n ? 1_000_001 : nums2[middle2];

    if left1 <= right2 && left2 <= right1
      return [left1, left2].max if (m + n).odd?
      return ([left1, left2].max + [right1, right2].min) * 1.0 / 2
    elsif left1 > right2
      right = middle1 - 1
    else
      left = middle1 + 1
    end
  end
end