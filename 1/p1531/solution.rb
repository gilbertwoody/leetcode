# @param {String} s
# @param {Integer} k
# @return {Integer}
def get_length_of_optimal_compression(s, k)
  s = s.each_char.map { |c| c.ord - "a".ord }

  table = Array.new(s.size) do 
    Array.new(k+1) do 
      Array.new(27) { [] }
    end
  end

  optimal_length = lambda do |start, remain, last, last_count|
    return Float::INFINITY if remain.negative?
    return 0 if start + remain >= s.size

    memo = table[start][remain][last][last_count]
    return memo if memo

    result = if s[start] == last
      len = optimal_length[start + 1, remain, last, last_count + 1]
      len += 1 if last_count == 1 || last_count == 9 || last_count == 99
      len
    else
      reserv = 1 + optimal_length[start + 1, remain, s[start], 1]
      remove = optimal_length[start + 1, remain - 1, last, last_count]
      reserv < remove ? reserv : remove
    end

    table[start][remain][last][last_count] = result 

  end
  
  optimal_length[0, k, 26, 0]
end
