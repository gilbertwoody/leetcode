# @param {Integer[]} tickets
# @param {Integer} k
# @return {Integer}
def time_required_to_buy(tickets, k)
  q = (0...tickets.size).to_a
  time = 0

  loop do
    time += 1
    hd = q.shift
    t = tickets[hd] -= 1

    if t == 0
      break if hd == k
    else
      q << hd
    end
  end

  time
end
