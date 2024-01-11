# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end

require "set"

# @param {TreeNode} root
# @param {Integer} start
# @return {Integer}
def amount_of_time(root, start)
  max_distance = nil
  dfs = lambda do |node|
    return 0 if node.nil? 
    
    l, r = dfs[node.left], dfs[node.right]
    if node.val == start
      max_distance = (l > r ? l : r)
      -1
    elsif  l >= 0 && r >= 0
      1 + (l > r ? l : r)
    else
      d = l.abs + r.abs
      max_distance = d if d > max_distance
      (l.negative? ? l : r) - 1
    end
  end

  dfs[root]
  max_distance
end
