# @param {Integer[]} nums
# @return {Integer}
def length_of_lis(nums)
  table=[1]
  length_of = lambda do |j|
    memo = table[j]
    return memo if memo

    max = 0
    0.upto(j - 1) do |i|
      if nums[i] < nums[j]
        len = length_of[i]
        max = len if len > max
      end
    end

    table[j] = max + 1
  end

  (0...nums.size).map(&length_of).max
end
