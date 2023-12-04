# @param {String} num
# @return {String}
def largest_good_integer(num)
  max = -1
  num.each_char.each_cons(3) do |a, b, c|
    d = a.to_i
    max = d if a == b && b == c && d > max    
  end

  return "" if max == -1
  return "#{max}" * 3
end
