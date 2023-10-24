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
# @return {Integer[]}
def largest_values(root)
  res = []
  dfs(root, 0, res)
  res
end

def dfs(node, d, res)
  return if node.nil?

  res[d] = node.val unless res[d]&.>= node.val

  dfs(node.left, d+1, res)
  dfs(node.right, d+1, res)
end
