# @param {TreeNode} root
# @return {Boolean}
def is_even_odd_tree(root)
  prev_val_of_level = Hash.new { |h, k| h[k] = k.even? ? 0 : 1_000_001 }

  traverse = proc do |node, d = 0|
    unless node.nil?
      val, prev = node.val, prev_val_of_level[d]

      return false if d.even? && (val <= prev || val.even?)
      return false if d.odd? && (val >= prev || val.odd?)

      prev_val_of_level[d] = val
      traverse[node.left, d + 1]
      traverse[node.right, d + 1]

      true
    end
  end

  traverse[root]
end
