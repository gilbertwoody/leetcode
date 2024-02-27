# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"
require_relative "tree_node"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(3, diameter_of_binary_tree(TreeNode::from_array([1,2,3,4,5])))
    assert_equal(1, diameter_of_binary_tree(TreeNode::from_array([1,2])))
  end
end
