# @param {Integer} low
# @param {Integer} high
# @return {Integer[]}
def sequential_digits(low, high)
  seq = (2..9).flat_map do |n|
    m = 9 - n
    x = (1..n).to_a.join.to_i
    delta = ("1" * n).to_i
    (0..m).map { |t| x + delta * t }
  end

  i = seq.bsearch_index { |item| item >= low }
  return [] if i.nil?

  j = seq.bsearch_index { |item| item > high }
  j = seq.size if j.nil?

  seq[i...j]
end
