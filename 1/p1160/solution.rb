# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
  max_count = chars.each_char.tally
  max_count.default = 0
  words.sum do |w|  
    count = w.each_char.tally
    good = count.all? do |ch, count|
      count <= max_count[ch]
    end
    good ? w.size : 0
  end
end
