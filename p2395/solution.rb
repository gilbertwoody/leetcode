require "set"

# @param {Integer[]} nums
# @return {Boolean}
def find_subarrays(nums)
  known = Set.new
  nums.each_cons(2) do |a, b|
    sum = a + b
    return true if known.include?(sum)

    known << sum 
  end
  false
end
