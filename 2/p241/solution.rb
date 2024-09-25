# @param {String} expression
# @return {Integer[]}
def diff_ways_to_compute(expression)
  ways = lambda do |exp, table = {}|
    return table[exp] if table.key?(exp)
    operator_index = []
    n = exp.size
    0.upto(n - 1) do |i|
      operator_index << i if ['+', '-', '*'].include?(exp[i])
    end

    table[exp] =
    if operator_index.size < 2
      [eval(exp)]
    else
      result = []
      operator_index.each do |i|
        l = ways[exp[...i], table]
        r = ways[exp[i+1..], table]
        op = exp[i]
        partial = l.product(r).map { |x, y| eval("#{x}#{op}#{y}") }
        result += partial
      end

      result
    end
  end

  ways[expression]
end

