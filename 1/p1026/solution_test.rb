# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"
require_relative "tree_node"

class SolutionTest < Minitest::Test
  def test_simple
    # assert_equal(7, max_ancestor_diff(TreeNode.from_array([8,3,10,1,6,nil,14,nil,nil,4,7,13])))
    assert_equal(3, max_ancestor_diff(TreeNode.from_array([1,nil,2,nil,0,3])))
  end
end
