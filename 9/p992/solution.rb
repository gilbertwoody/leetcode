# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def subarrays_with_k_distinct(nums, k)
  counter1 = Hash.new(0)
  counter2 = Hash.new(0)
  result = 0
  left = [0, 0]

  advance = lambda do |counter, which, pred|
    while counter.keys.size.send(pred, k)
      n = nums[left[which]]
      counter[n] -= 1
      counter.delete(n) if counter[n].zero?

      left[which] += 1
    end
  end

  0.upto(nums.size - 1) do |right|
    n = nums[right]
    counter1[n] += 1
    counter2[n] += 1

    advance[counter1, 0, :>]
    advance[counter2, 1, :>=]

    result += left[1] - left[0]
  end

  result
end
