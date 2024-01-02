# @param {Integer[]} costs
# @param {Integer} coins
# @return {Integer}
def max_ice_cream(costs, coins)
  costs.sort!
  count = i = 0
  while i < costs.size
    break if coins < costs[i]

    count += 1
    coins -= costs[i]
    i += 1
  end

  count
end
