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
def smallest_from_leaf(root)
  a = "a".ord

  paths = lambda do |root|
    return [] if root.nil?

    c = (root.val + a).chr
    l, r = root.left, root.right
    return [c] if l.nil? && r.nil?

    (paths[l] + paths[r]).map { |p| p + c }
  end

  paths[root].min
end
