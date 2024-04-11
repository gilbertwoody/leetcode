# @param {String} num
# @param {Integer} k
# @return {String}
def remove_kdigits(num, k)
  stack = []
  num.each_char do |ch|
    until k.zero? || stack.empty? || stack.last <= ch
      stack.pop
      k -= 1
    end
    stack << ch
  end

  n = stack.size
  stack = stack.take(n - k).drop_while { |ch| ch == "0" }
  stack.empty? ? "0" : stack.join
end
