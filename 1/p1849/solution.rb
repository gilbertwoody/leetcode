# @param {String} s
# @return {Boolean}
def split_string(s)
  split = lambda do |prev, substr|
    return nil if substr.empty?

    current = 0
    0.upto(substr.size - 1) do |i|
      current *= 10
      current += substr[i].ord - "0".ord
      return nil if current >= prev
        
      next if current < prev - 1
      
      return current if i == substr.size - 1
      
      nxt = split[current, substr[i+1..]]
      return current if nxt == prev - 2
    end
    
    nil
  end
  
  head = 0
  0.upto(s.size - 2) do |i|
    head *= 10
    head += s[i].ord - "0".ord
    
    tail = split[head, s[i+1..]]
    
    return true if head - 1 == tail
  end

  return false
end
