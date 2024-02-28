# @param {TreeNode} root
# @return {Integer}
def find_bottom_left_value(root)
  heads = []
  traverse = lambda do |node, d|
    return if node.nil?

    heads[d] = node.val if heads[d].nil?
    traverse[node.left, d + 1]
    traverse[node.right, d + 1]
    heads
  end

  traverse[root, 0]
  heads[-1]
end
