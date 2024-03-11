# @param {String} order
# @param {String} s
# @return {String}
def custom_sort_string(order, s)
  char_index = order.each_char.with_index.to_h
  char_index.default = 0
  s.chars.sort_by(&char_index.to_proc).join
end
