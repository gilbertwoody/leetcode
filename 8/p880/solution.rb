# @param {String} s
# @param {Integer} k
# @return {String}
def decode_at_index(s, k)
 
  n, j = s.each_char.with_index.reduce(0) do |count, (c, i)|
    t = Integer(c, exception: false)
    count = t.nil? ? (count + 1) : t * count
    break [count, i] if count >= k

    count
  end
  
  s[0..j].reverse.each_char do |c|
    t = Integer(c, exception: false)
    if t.nil?
      return c if k.modulo(n).zero?

      n -= 1
    else
      n /= t
      k %= n
    end
  end
end
