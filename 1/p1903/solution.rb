# @param {String} num
# @return {String}
def largest_odd_number(num)
  k = num.rindex(/1|3|5|7|9/)
  return "" if k.nil?

  num[..k]
end
