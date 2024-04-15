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
# @return {Integer}
def sum_numbers(root)
  return root.val if root.left.nil? && root.right.nil?

  tree_numbers = lambda do |tree|
      if tree.left.nil? && tree.right.nil?
         [tree.val.to_s]
      else
          left = tree.left ? tree_numbers[tree.left] : []
          right = tree.right ? tree_numbers[tree.right] : []

          (left + right).map { |n| tree.val.to_s + n }
      end
  end

  tree_numbers[root].map(&:to_i).sum
end
