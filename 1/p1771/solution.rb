# @param {String} word1
# @param {String} word2
# @return {Integer}
def longest_palindrome(word1, word2)
  sz1, sz2 = word1.size, word2.size 
  n, s = sz1 + sz2, word1 + word2
  l_index, r_index = {}, {}

  (sz1 - 1).downto(0) do |i|
    l_index[word1[i]] = i
  end

  0.upto(sz2 - 1) do |i|
    r_index[word2[i]] = i + sz1
  end

  chars = l_index.keys.to_set & r_index.keys.to_set
  return 0 if chars.empty?

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

  max_sub = chars.reduce(0) do |max, c|
    l, r = l_index[c], r_index[c]
    len = longest_of[l+1, r-1]
    len > max ? len : max
  end

  max_sub + 2
end
