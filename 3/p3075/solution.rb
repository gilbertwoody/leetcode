# @param {Integer[]} happiness
# @param {Integer} k
# @return {Integer}
def maximum_happiness_sum(happiness, k)
  happiness.sort!

  k.times.reduce(0) do |result, delta|
    h = happiness.pop
    h -= delta
    break result if h <= 0

    result + h
  end
end
