# @param {TreeNode} root
# @param {Integer} low
# @param {Integer} high
# @return {Integer}
def range_sum_bst(root, low, high)
  return 0 if root.nil?

  if root.val < low 
    range_sum_bst(root.right, low, high) 
  elsif root.val > high
    range_sum_bst(root.left, low, high)
  else
    l = range_sum_bst(root.right, low, high) 
    r = range_sum_bst(root.left, low, high) 
    root.val + l + r
  end
end
