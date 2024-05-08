# @param {Integer[]} score
# @return {String[]}
def find_relative_ranks(score)
  sorted_score = score.sort.reverse
  h = Hash.new

  ranks = ["Gold Medal", "Silver Medal", "Bronze Medal"]
  ranks += ("4"..score.size.to_s).to_a
  sorted_score.each { h[_1] = ranks.shift }

  score.map(&h)
end
