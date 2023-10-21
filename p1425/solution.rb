# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def constrained_subset_sum(nums, k)
  queue = []
  table = Array.new(nums.size, 0)

  0.upto(nums.size - 1) do |i|
    queue.shift unless queue.empty? || i - queue.first <= k

    curr = queue.empty? ? 0 : table[queue.first]
    curr += nums[i]
    table[i] = curr
    queue.pop until queue.empty? || table[queue.last] >= curr
    queue << i if curr.positive?
  end

  table.max
end
