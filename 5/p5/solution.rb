# @param {String} s
# @return {String}
def longest_palindrome(s)
  n = s.size
  table = Array.new(n) { Array.new }
  f, t = longest_of(s, 0, n - 1, table)
  s[f..t]
end

def longest_of(s, from, to, table)
  return [from, to] if from >= to
    
  memo = table[from][to]
  return memo if memo

  f1, t1 = longest_of(s, from + 1, to - 1, table)
  table[from][to] = if f1 == from + 1 && t1 == to - 1 && s[from] == s[to]
    [from, to]
  else
    f2, t2 = r2 = longest_of(s, from + 1, to, table)
    f3, t3 = r3 = longest_of(s, from, to - 1, table)
    (t2 - f2 > t3 - f3) ? r2 : r3
  end
end
