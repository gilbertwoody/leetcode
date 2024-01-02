# @param {String[]} words
# @return {Boolean}
def make_equal(words)
  n = words.size
  words.join.chars.tally.values.all? { |c| (c % n).zero? }
end
