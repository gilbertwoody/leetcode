# @param {String} corridor
# @return {Integer}
def number_of_ways(corridor)
  plants = []
  ns = c = 0
  s = ""

  corridor.each_char do |ch|
    if ch == "S"
      ns += 1

      if c < 2 
        c += 1
      else
        plants << s unless s.empty?
        s = ""
        c = 1
      end
    else
      s << "P" if c == 2
    end
  end

  return 0 if ns.odd? || ns.zero?
  
  plants.map { |s| s.size + 1 }.reduce(1) do |p, n|
    p * n % 1_000_000_007
  end
end
