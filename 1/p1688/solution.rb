# @param {Integer} n
# @return {Integer}
def number_of_matches(n)
  result = 0
  
  until n == 1
    m = n
    n /= 2
    result += n
    n += 1 if m.odd?
  end
  
  result    
end
