# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert(validate_binary_tree_nodes(4, [1,-1,3,-1], [2,-1,-1,-1]))
    refute(validate_binary_tree_nodes(4, [1,-1,3,-1], [2,3,-1,-1]))
    refute(validate_binary_tree_nodes(2, [1,0], [-1,-1]))
    refute(validate_binary_tree_nodes(3, [1,-1,-1], [-1,-1,1]))
    assert(true)
  end
end
