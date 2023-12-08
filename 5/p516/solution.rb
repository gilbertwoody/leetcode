# @param {String} s
# @return {Integer}
def longest_palindrome_subseq(s)
  n = s.size 
  table = Array.new(n) { Array.new(n) }
  longest_of = lambda do |i, j|
    return 0 if i > j
    return 1 if i == j

    cached = table[i][j]
    return cached if cached
    

    table[i][j] = if s[i] == s[j]
      2 + longest_of[i+1, j-1]
    else
      [longest_of[i+1, j], longest_of[i, j-1]].max
    end

  end

  longest_of[0, n-1]  
end
