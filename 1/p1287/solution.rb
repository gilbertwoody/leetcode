# @param {Integer[]} arr
# @return {Integer}
def find_special_integer(arr)
  size = arr.size 
  return arr[0] if size <= 3
  
  limit = (arr.size * 0.25 + 1).floor
  count = 1
  arr.each_cons(2) do |a, b|
    if b == a
      count += 1

      return b if count >= limit
    else
      count = 1
    end
  end
end
