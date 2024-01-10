# frozen_string_literal: true

require "minitest/autorun"
require_relative "tree_node"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(0, amount_of_time(TreeNode.new(1), 1))
  end
end
