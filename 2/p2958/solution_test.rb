# frozen_string_literal: true

require "minitest/autorun"
require_relative "solution"

class SolutionTest < Minitest::Test
  def test_simple
    assert_equal(6, max_subarray_length([1,2,3,1,2,3,1,2], 2))
    assert_equal(2, max_subarray_length([1,2,1,2,1,2,1,2], 1))
    assert_equal(4, max_subarray_length([5,5,5,5,5,5,5], 4))
  end
end
