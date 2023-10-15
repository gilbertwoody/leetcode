# @param {Integer} steps
# @param {Integer} arr_len
# @return {Integer}
def num_ways(steps, arr_len)
  table = Array.new(steps+1) { [] }

  ways_of = lambda do |remain, i|
    return (i.zero? ? 1 : 0) if remain.zero?
    
    ways = table[remain][i]
    return ways if ways
    
    ways = ways_of[remain - 1, i]
    ways += ways_of[remain - 1, i + 1] if i < arr_len - 1
    ways += ways_of[remain - 1, i - 1] if i > 0
    table[remain][i] = ways % 1_000_000_007
  end

  ways_of[steps, 0]
end