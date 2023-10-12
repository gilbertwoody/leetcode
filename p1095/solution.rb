# This is MountainArray's API interface.
# You should not implement it, or speculate about its implementation
# class MountainArray
#    def get(index):
#       
#    end
#
#    def length()
#		
#	 end
# end

# @param {int} int
# @param {MountainArray} mountain_arr
# @return {int}
def findInMountainArray(target, mountain_arr)
  last = mountain_arr.length - 1

  left, right = 0, last
  found_right = -1
  pivot = while left <= right
    mid = (left + right) / 2
    case mid 
    in 0 then  left = mid + 1
    in ^last then right = mid - 1
    else 
      a = mountain_arr.get(mid - 1)
      b = mountain_arr.get(mid)
      c = mountain_arr.get(mid + 1)
  
      if b > a && b > c 
        return -1 if target > b
        return mid if target == b
  
        break mid
      elsif a > b
        found_right = mid if target == b
  
        right = mid - 1
      else
        return mid if target == b
  
        left = mid + 1
      end
    end
  end

  bisearch = lambda do |from, to, pred|
    while from <= to
      mid = (from + to) / 2
      a = mountain_arr.get(mid)
      
      return mid if a == target
  
      target, off = (pred[a] ? ["to", -1] : ["from", 1])
      binding.eval("#{target} = #{mid + off}")
    end
    -1
  end

  found_left = bisearch[0, pivot, target.method(:<)]
  return found_left unless found_left == -1

  return found_right unless found_right == -1
  bisearch[pivot, last, target.method(:>)]

end
