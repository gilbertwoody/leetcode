# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal([5,1,1,1], smallest_missing_value_subtree([-1,0,0,2], [1,2,3,4]))
    assert_equal([7,1,1,4,2,1], smallest_missing_value_subtree([-1,0,1,0,3,3], [5,4,6,2,1,3]))
    assert_equal([1,1,1,1,1,1,1], smallest_missing_value_subtree([-1,2,3,0,2,4,1], [2,3,4,5,6,7,8]))
  end
end
