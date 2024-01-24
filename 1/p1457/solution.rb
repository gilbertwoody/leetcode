# @param {TreeNode} root
# @return {Integer}
def pseudo_palindromic_paths (root)
  count_leaves = lambda do |node, counter={}|
    return 0 if node.nil?
    
    counter = counter.merge(node.val=>1) { |k, old, new| old + new }
    
    if node.left.nil? && node.right.nil?
      t = counter.values.tally
      t.select { _1.odd? }.values.sum > 1 ? 0 : 1
    else
      l = count_leaves[node.left, counter]  
      r = count_leaves[node.right, counter]
      l + r
    end
  end

  count_leaves[root]
end
