# @param {String} s
# @return {String[][]}
def partition(s)

end

def palindrome?(s)
  n = s.size / 2
  0.upto(n - 1) do |i|
    return false if s[i] != s[-(i+1)]
  end

  return true
end
