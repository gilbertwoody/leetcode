# frozen_string_literal: true

require "minitest/autorun"
require_relative "tree_node"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple1
    node1 = TreeNode.new(3)
    node2 = TreeNode.new(2, node1)
    node1 = TreeNode.new(1, nil, node2)
    assert_equal([1,3,2], inorder_traversal(node1))

    assert_empty(inorder_traversal(nil))

    assert_equal([1], inorder_traversal(TreeNode.new(1)))
  end
end
