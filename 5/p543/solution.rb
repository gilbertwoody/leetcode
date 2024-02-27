# @param {TreeNode} root
# @return {Integer}
def diameter_of_binary_tree(root)
  max = -1
  depth = lambda do |node|
    return -1 if node.nil?

    l = depth[node.left]
    r = depth[node.right]
    p = l + r + 2
    max = p if p > max

    1 + [l, r].max
  end

  depth[root]
  max
end
