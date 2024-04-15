# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"
require_relative "tree_node"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(25, sum_numbers(TreeNode.from_array([1,2,3])))
    assert_equal(1026, sum_numbers(TreeNode.from_array([4,9,0,5,1])))
  end
end
