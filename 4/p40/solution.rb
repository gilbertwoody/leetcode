# @param {Integer[]} candidates
# @param {Integer} target
# @return {Integer[][]}
def combination_sum2(candidates, target)
  candidates.sort!

  result = []
  last = candidates.size - 1

  backtrack = lambda do |from = 0, t = target, solution = []|
    return if t < 0
    return result << solution  if t.zero?

    from.upto(last).each do |i|
      next if i > from && candidates[i] == candidates[i - 1]

      c = candidates[i]
      backtrack[i + 1, t - c, solution + [c]]
    end
  end

  backtrack[]
  result
end
