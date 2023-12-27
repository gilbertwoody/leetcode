# @param {Integer[]} parents
# @param {Integer[]} nums
# @return {Integer[]}
def smallest_missing_value_subtree(parents, nums)
  n = parents.size
  result = Array.new(n, 1)
  return result unless nums.include?(1)

  children = Array.new(n) { [] }

  1.upto(n - 1) do |child|
    children[parents[child]] << child
  end

  known = Set.new
  dfs = lambda do |i|
    unless known.include?(nums[i])
      known << nums[i]
      children[i].each(&dfs)
    end
  end

  node = nums.index(1)
  missing = 1
  while node != -1
    dfs[node]
    missing += 1 while known.include?(missing)

    result[node] = missing
    node = parents[node]
  end

  result
end
