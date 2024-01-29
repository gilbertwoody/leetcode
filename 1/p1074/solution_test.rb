# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(4, num_submatrix_sum_target([[0,1,0],[1,1,1],[0,1,0]], 0))
    assert_equal(5, num_submatrix_sum_target([[1,-1],[-1,1]], 0))
    assert_equal(0, num_submatrix_sum_target([[904]], 0))
    assert_equal(24, num_submatrix_sum_target([[1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1], [1, 1, 1, 1, 1]], 6))
  end
end
