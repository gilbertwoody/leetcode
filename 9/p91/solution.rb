# @param {String} s
# @return {Integer}
def num_decodings(s)
  ways_of = lambda do |i, table=[]|
    return 1 if i.negative?
    return 0 if i.zero? && s[i].to_i.zero?

    cached = table[i]
    return cached if cached

    ways = 0
    ways += ways_of[i-1, table] unless s[i] == "0"

    if i >= 1
      if s[i-1] == "1" || (s[i-1] == "2" && s[i] <= "6")
        ways += ways_of[i-2, table]
      end
    end

    table[i] = ways
  end

  ways_of[s.size - 1]
end
