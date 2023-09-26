require "set"

# @param {String} s
# @return {String}
def remove_duplicate_letters(s)
  tally = s.each_char.tally
  seen = Set.new
  stack = []

  s.each_char do |ch|
    unless seen.include?(ch)
      until stack.empty? || (last = stack.last) <= ch
        break if tally[last].zero?
        
        seen.delete(last)
        stack.pop
      end
      
      seen << ch
      stack << ch
    end

    tally[ch] -= 1
  end

  stack.join
end
