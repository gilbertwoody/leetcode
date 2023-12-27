# @param {String} colors
# @param {Integer[]} needed_time
# @return {Integer}
def min_cost(colors, needed_time)
  max = total = needed_time[0]
  1.upto(colors.size - 1) do |i|
    cost = needed_time[i]
    total += cost

    if colors[i] == colors[i - 1]
      max = cost if cost > max
    else
      total -= max
      max = cost
    end
  end

  total - max
end
