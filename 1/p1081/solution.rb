require "set"

# @param {String} s
# @return {String}
def smallest_subsequence(s)
  tally = s.each_char.tally    
  seen = Set.new
  stack = []

  s.each_char do |ch|
    unless seen.include?(ch)
      until stack.empty? || (last = stack.last) < ch
        break if tally[last].zero?

        stack.pop
        seen.delete(last)
      end
      stack << ch
      seen << ch
    end
    tally[ch] -= 1
  end

  stack.join
end
