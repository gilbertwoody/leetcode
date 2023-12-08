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
# @return {String}
def tree2str(root)
  if root.right.nil? 
    r = ""
    l = root.left.nil? ? "" : "(#{tree2str(root.left)})"
  else
    r = "(#{tree2str(root.right)})"
    l = root.left.nil? ? "()" : "(#{tree2str(root.left)})"
  end

  "#{root.val}#{l}#{r}"
end
