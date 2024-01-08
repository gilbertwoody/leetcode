# @param {Integer[]} nums
# @return {Integer}
def number_of_arithmetic_slices(nums)
  total = 0
  count = 0
  nums.each_cons(3) do |a, b, c|
    if b * 2 == a + c
      count += 1
    else
      total += count * (count + 1) / 2
      count = 0
    end
  end

  total += count * (count + 1) / 2
end
