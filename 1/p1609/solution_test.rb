# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"
require_relative "tree_node"

class SolutionTest < Minitest::Test
  def test_simple
    assert(is_even_odd_tree(TreeNode.from_array([1,10,4,3,nil,7,9,12,8,6,nil,nil,2])))
    refute(is_even_odd_tree(TreeNode.from_array([5,4,2,3,3,7])))
    refute(is_even_odd_tree(TreeNode.from_array([5,9,1,3,5,7])))
  end
end
