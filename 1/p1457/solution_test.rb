# frozen_string_literal: true

require "minitest/autorun"
require_relative "tree_node"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(2, pseudo_palindromic_paths(TreeNode.from_array([2,3,1,3,1,nil,1])))
    assert_equal(1, pseudo_palindromic_paths(TreeNode.from_array([2,1,1,1,3,nil,nil,nil,nil,nil,1])))
    assert_equal(1, pseudo_palindromic_paths(TreeNode.from_array([9])))
  end
end
