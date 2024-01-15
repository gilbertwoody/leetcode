require "set"

# @param {Integer[][]} matches
# @return {Integer[][]}
def find_winners(matches)
  winners, losers = Set.new, Hash.new(0)    
  matches.each do |w, l|
    winners << w
    losers[l] += 1
  end
  
  winners -= losers.keys.to_set
  losers = losers.filter_map { |k, v| k if v == 1 }.to_a.sort
  [winners.to_a.sort, losers]
end
