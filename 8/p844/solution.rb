# @param {String} s
# @param {String} t
# @return {Boolean}
def backspace_compare(s, t)
  input = ->(c, stk) {  c == "#" ? stk.pop : stk << c }
  
  s1 = s.each_char.with_object([], &input)
  t1 = t.each_char.with_object([], &input)

  s1 == t1
end