# @param {String} s
# @return {Integer}
def minimum_length(s)
  shrink = lambda do |i, j|
    return 1 if i == j

    if s[i] == s[j]
      return 0 if j == i + 1

      if s[i] == s[i+1]
        shrink[i+1, j]
      elsif s[j - 1] == s[j]
        shrink[i, j-1]
      else
        shrink[i+1, j-1]
      end
    else
      j - i + 1
    end
  end

  shrink[0, s.size - 1]
end
