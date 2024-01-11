# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Integer}
def max_ancestor_diff(root)
  diff = 0 
  maxmin = lambda do |node, max, min|
    return nil if node.nil?
  
    val = node.val
    
    max = val if val > max
    min = val if val < min

    d = max - min
    diff = d if d > diff 
    
    maxmin[node.left, max, min]
    maxmin[node.right, max, min]
  end

  maxmin[root, -1, 100_001]
  diff
end
