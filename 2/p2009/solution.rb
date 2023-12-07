# @param {Integer[]} nums
# @return {Integer}
def min_operations(nums)
  sorted = nums.sort.uniq
  size = nums.size
  min = size
  
  sorted.each_with_index do |n, i|
    j = sorted.bsearch_index(&(n+size).method(:<=))
    j = sorted.size if j.nil?
    c = j - i
    op = size - c
    min = op if op < min
  end

  min
end
