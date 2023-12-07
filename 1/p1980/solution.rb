# @param {String[]} nums
# @return {String}
def find_different_binary_string(nums)
  0.upto(nums.size - 1).each_with_object("") do |i, result|
    result << (nums[i][i] == "1" ? "0" : "1")
  end
end