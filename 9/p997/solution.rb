require "set"

# @param {Integer} n
# @param {Integer[][]} trust
# @return {Integer}
def find_judge(n, trust)
  candy, citizen = (1..n).to_set, Set.new
  trusted_by = Hash.new { |h, k| h[k] = Set.new }
  trust.each do |a, b|
    trusted_by[b] << a
    citizen << a
  end

  candy -= citizen
  candy.find { |c| trusted_by[c].size == n - 1 } || -1
end
