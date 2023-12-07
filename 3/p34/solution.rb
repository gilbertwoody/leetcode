# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def search_range(nums, target)
  return [-1, -1] if nums.empty?
  
  left, right = 0, nums.size - 1
  starting = ending = -1
  
  while left <= right
    mid = (left + right) / 2

    if nums[mid] == target
      if mid.zero? || nums[mid - 1] < target
        starting = mid
        break
      else
        right = mid - 1
      end
    elsif nums[mid] > target
      right = mid - 1
    else
      left = mid + 1
    end
  end

  unless starting == -1  
    left = starting
    right = nums.size - 1

    while left <= right
      mid = (left + right) / 2
  
      if nums[mid] == target
        if mid == nums.size - 1 || nums[mid + 1] > target
          ending = mid
          break
        else
          left = mid + 1
        end
      elsif nums[mid] > target
        right = mid - 1
      else
        left = mid + 1
      end
    end


  end

  [starting, ending]
end
