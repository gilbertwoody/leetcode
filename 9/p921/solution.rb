# @param {String} s
# @return {Integer}
def min_add_to_make_valid(s)
  stack = []
  s.each_char do |ch|
    if ch == '(' || stack.empty? || stack[-1] == ')'
      stack << ch
    else
      stack.pop
    end
  end
  stack.size
end
