# @param {String[]} word1
# @param {String[]} word2
# @return {Boolean}
def array_strings_are_equal(word1, word2)
  m = n = x = y = 0
  
  loop do
    return true if m == word1.size && n == word2.size
    
    return false if m == word1.size
    return false if n == word2.size
    return false if word1[m][x] != word2[n][y]
    
    x += 1
    y += 1

    if x >= word1[m].size
      x = 0
      m += 1
    end

    if y >= word2[n].size
      y = 0
      n += 1
    end
  end

end
