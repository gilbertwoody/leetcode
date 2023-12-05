# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(2, subarray_sum([1,1,1], 2))
    assert_equal(2, subarray_sum([1,2,3], 3))
    assert_equal(8, subarray_sum([1,1,2,2,1,1,2,2,1,1,3,1,1,2,2], 5))
    assert_equal(0, subarray_sum([1], 0))
    assert_equal(1, subarray_sum([-1,-1,1], 0))
  end
end
