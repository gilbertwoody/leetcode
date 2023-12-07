# @param {String[]} words
# @return {Integer}
def longest_str_chain(words)
  words.sort_by!(&:size)
  lengths = Hash.new(0)
  lengths[words[0]] = 1
  pred_of = lambda { |w, i| w[...i] + w[i+1..] }
  words.drop(1).each do|w|
    a = w.each_char.with_index.map do |_, i|
      lengths[pred_of[w, i]]
    end
    lengths[w] = a.max + 1
  end
  lengths.values.max 
end