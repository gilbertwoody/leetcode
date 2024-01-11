# frozen_string_literal: true

require "minitest/autorun"
require_relative "tree_node"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(4, amount_of_time(TreeNode.from_array([1,5,3,nil,4,10,6,9,2]), 3))
    assert_equal(0, amount_of_time(TreeNode.new(1), 1))
    assert_equal(5, amount_of_time(TreeNode.from_array([16,nil,20,7,12,nil,15,nil,19,nil,1,2]), 1))
  end
end
