# @param {String} s
# @return {Integer}
def minimum_beautiful_substrings(s)
  n = s.size
  table = Array.new(n) { Array.new(n) }

  good = lambda do |x|
    return false if x.start_with?("0")

    exp_five = lambda do |y|
      return false if y.zero?
      return true if y == 1

      q, r = y.divmod(5)
      r.zero? && exp_five[q]
    end

    exp_five[x.to_i(2)]
  end

  minimum = lambda do |i, j|
    return 0 if i > j

    cached = table[i][j]
    return cached if cached

    table[i][j] = if good[s[i..j]]
      1
    else
      min = Float::INFINITY

      (i+1).upto(j) do |k|
        p = minimum[i, k - 1] + minimum[k, j]
        min = p if p < min
      end

      min
    end
  end

  c = minimum[0, n - 1]
  c.infinite? ? -1 : c
end
