# frozen_string_literal: true

require "minitest/autorun"
require_relative "tree_node"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(1, find_bottom_left_value(TreeNode.from_array([2,1,3])))
    assert_equal(7, find_bottom_left_value(TreeNode.from_array([1,2,3,4,nil,5,6,nil,nil,7])))
  end
end
