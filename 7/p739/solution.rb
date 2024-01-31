# @param {Integer[]} temperatures
# @return {Integer[]}
def daily_temperatures(temperatures)
  result, stack = [], []
  n = temperatures.size
  
  (n - 1).downto(0) do |i|
    x = temperatures[i]
    stack.pop until stack.empty? || stack[-1][0] > x

    result[i] = stack.empty? ? 0 : (stack[-1][1] - i)

    stack << [x, i]
  end

  result
end
