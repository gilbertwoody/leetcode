# @param {String} s
# @return {Integer}
def max_length_between_equal_characters(s)
  start = Hash.new(Float::INFINITY)
  max = -1

  s.chars.each_with_index do |c, i|
    len = i - start[c] - 1
    max = len if len > max

    start[c] = i unless start.key?(c)
  end

  max
end
