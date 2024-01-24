# Definition for a binary tree node.
class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val = 0, left = nil, right = nil)
      @val = val
      @left = left
      @right = right
  end

  def self.from_array(a)
    root = TreeNode.new(a[0])
    q = [root]
    (1..a.size - 1).step(2) do |i|
      parent = q.pop
      unless a[i].nil?
        node = TreeNode.new(a[i])
        parent.left = node
        q.prepend(node)
      end
      
      unless a[i+1].nil?
        node = TreeNode.new(a[i+1])
        parent.right = node
        q.prepend(node)
      end
    end

    root
  end
end
