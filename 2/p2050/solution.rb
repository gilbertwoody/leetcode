require "set"

# @param {Integer} n
# @param {Integer[][]} relations
# @param {Integer[]} time
# @return {Integer}
def minimum_time(n, relations, time)
  children = Set.new
  adj = Hash.new {|h, k| h[k] = [] }
  relations.each do |u, v|
    children << v
    adj[u] << v
  end

  table = []
  time.prepend(0)
  max_from = lambda do |i|
    return time[i] if adj[i].empty?
    
    max = table[i]
    return max unless max.nil?

    table[i] = adj[i].map(&max_from).max + time[i]
  end
  
  root = (1..n).to_set - children
  adj[0] = root
  max_from[0]
end
