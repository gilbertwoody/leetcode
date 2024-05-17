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
# @param {Integer} target
# @return {TreeNode}
def remove_leaf_nodes(root, target)

  remove = lambda do |node, parent, left|
    if node.left.nil? and node.right.nil?
      if node.val == target
        if left
          parent.left = nil
        else
          parent.right = nil
        end
        return false
      else
        return true
      end
    end

    l = remove[node.left, node, true]
    r = remove[node.right, node, false]

    return l && r
  end

  p = TreeNode.new(0, root)
  loop do
    r = remove[p.left, p, true]
    break if r || p.left.nil?
  end

  return p.left
end
