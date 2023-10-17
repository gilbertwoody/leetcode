require "set"

# @param {Integer} n
# @param {Integer[]} left_child
# @param {Integer[]} right_child
# @return {Boolean}
def validate_binary_tree_nodes(n, left_child, right_child)
  children = Set.new
  adj = Hash.new { |h, k| h[k] = [] }
  
  0.upto(n-1) do |i|
    l = left_child[i]
    unless l == -1
      adj[i] << l
      children << l
    end
    
    r = right_child[i]
    unless r == -1
      adj[i] << r
      children << r
    end
  end

  return false if children.size != n - 1
  root = ((0...n).to_set - children).first

  visited = Set.new
  visiting = []
  dfs = proc do |i|
    return false if visiting.include?(i)  
    
    unless visited.include?(i) 
      visiting << i
      adj[i].each(&dfs)
      visiting.pop
      visited << i
    end
  end

  dfs[root]
  adj.values.sum { |a| a.count } == n - 1
end
