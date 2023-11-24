# @param {Integer[]} piles
# @return {Integer}
def max_coins(piles)
  n = piles.size / 3
  piles.sort.last(2 * n)[(0..).step(2)].sum
end
