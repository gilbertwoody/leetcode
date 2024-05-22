# @param {String} s
# @return {String[][]}
def partition(s)
  table = {}
  split = lambda do |j, n|
    return [[s[..j]]] if n.zero?
    return [] if n > j

    memo = table[[j, n]]
    return memo if memo

    p1 = split[j - 1, n]
    p2 = split[j - 1, n - 1]

    p1 = p1.map { |part| part[..-2] + [part[-1] + s[j]] }
    p2 = p2.map { |part| part + [s[j]] }
    table[[j, n]] = p1 + p2
  end

  n = s.size
  result = []
  (n - 1).downto(0) do |x|
    p = split[n - 1, x]
    result += p.filter do |part|
      part.all? { |s| palindrome?(s) }
    end
  end
  result
end

def palindrome?(s)
  n = s.size / 2
  0.upto(n - 1) do |i|
    return false if s[i] != s[-(i+1)]
  end

  return true
end

