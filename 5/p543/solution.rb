# @param {TreeNode} root
# @return {Integer}
def diameter_of_binary_tree(root)
  return 0 if root.nil?

  [diameter_of_binary_tree(root.left),
   diameter_of_binary_tree(root.right),
   depth(root.left) + depth(root.right) + 2].max

end

def depth(root)
  return -1 if root.nil?

  1 + [depth(root.left), depth(root.right)].max
end
