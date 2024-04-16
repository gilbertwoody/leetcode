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
# @param {Integer} val
# @param {Integer} depth
# @return {TreeNode}
def add_one_row(root, val, depth)
  return TreeNode.new(val, root) if depth == 1

  nodes_of_level = Hash.new { |h, k| h[k] = [] }
  traverse = lambda do |root, d = 1|
    return if root.nil? || d >= depth

    nodes_of_level[d] << root
    traverse[root.left, d + 1]
    traverse[root.right, d + 1]
  end

  traverse[root]

  nodes_of_level[depth - 1].each do |node|
    node.left = TreeNode.new(val, node.left)
    node.right = TreeNode.new(val, nil, node.right)
  end

  root
end
