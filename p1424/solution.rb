# @param {Integer[][]} nums
# @return {Integer[]}
def find_diagonal_order(nums)
  tuples = []
  0.upto(nums.size - 1) do |i|  
    0.upto(nums[i].size - 1) do |j|
      tuples << [i, j, nums[i][j]]
    end
  end
  tuples.sort! do |(r1, c1), (r2, c2)|
    cmp = r1 + c1 <=> r2 + c2
    cmp.zero? ? r2 <=> r1 : cmp
  end
  tuples.map { |*, x| x }
end
