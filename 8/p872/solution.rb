# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Boolean}
def leaf_similar(root1, root2)
  leaves = lambda do |node|
    return [] if node.nil?

    l, r = node.left, node.right

    if l.nil? && r.nil?
      [node.val]
    else
      leaves[l] + leaves[r]
    end
  end

  leaves[root1] == leaves[root2]
end
