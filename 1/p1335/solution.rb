# @param {Integer[]} job_difficulty
# @param {Integer} d
# @return {Integer}
def min_difficulty(job_difficulty, d)
  n = job_difficulty.size
  return -1 if d > n

  table = Array.new(n) { [] }
  min_of = lambda do |start, remain|
    return 0 if start == n && remain.zero?
    return Float::INFINITY if start == n || remain.zero?

    memo = table[start][remain]
    return memo if memo

    max, min = -1, Float::INFINITY
    start.upto(n - remain) do |i|
      day_diff = job_difficulty[i]
      max = day_diff if day_diff > max

      diff = max + min_of[i + 1, remain - 1]
      min = diff if diff < min
    end

    table[start][remain] = min
  end

  diff = min_of[0, d]
  diff.infinite? ? -1 : diff
end
