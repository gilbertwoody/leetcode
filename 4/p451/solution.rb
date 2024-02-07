# @param {String} s
# @return {String}
def frequency_sort(s)
  s.each_char.tally.sort_by(&:last).reverse.map { |k, v| k * v }.join
end