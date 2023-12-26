# @param {Integer} n
# @param {Integer} k
# @param {Integer} target
# @return {Integer}
def num_rolls_to_target(n, k, target)
  table = Array.new(n) { [] }
  rolls = lambda do |i, remaining|
    return 1 if remaining.zero? && i.negative?
    return 0 if i.negative? || remaining.negative?

    cache = table[i][remaining]
    return cache if cache

    count = 1.upto(k).sum do |d|
      rolls[i - 1, remaining - d]
    end

    table[i][remaining] = count % 1_000_000_007
  end

  rolls[n - 1, target]
end
